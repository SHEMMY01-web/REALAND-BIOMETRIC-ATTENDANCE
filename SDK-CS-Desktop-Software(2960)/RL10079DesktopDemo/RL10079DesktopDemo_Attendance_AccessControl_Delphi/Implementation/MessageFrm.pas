unit MessageFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Activex, Riss_Devices_TLB;

type
  TMessageForm = class(TForm)
    gb3: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbMessageType: TComboBox;
    cbbDN: TComboBox;
    dtpBeginTime: TDateTimePicker;
    btnPowerGet: TButton;
    btnPowerSet: TButton;
    chkEnable: TCheckBox;
    lbl1: TLabel;
    edtMessageID: TEdit;
    dtpBeginDate: TDateTimePicker;
    Label1: TLabel;
    dtpEndDate: TDateTimePicker;
    dtpEndTime: TDateTimePicker;
    Label13: TLabel;
    cbbSoundType: TComboBox;
    Label2: TLabel;
    edtContent: TEdit;
    procedure btnPowerGetClick(Sender: TObject);
    procedure btnPowerSetClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MessageForm: TMessageForm;
  procedure ShowMessageFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowMessageFrm;
begin
  MessageForm := TMessageForm.Create(Application);
  try
    MessageForm.ShowModal;
  finally
    MessageForm.Free;
  end;
end;

procedure TMessageForm.btnPowerGetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  idBytes: PSafeArray;
  contentBytes: PSafeArray;
  messageBytes: PSafeArray;
  bEnable,bType,bSound: Byte;
  bBeginYear,bBeginMonth,bBeginDay,bBeginHour,bBeginMinute: Byte;
  bEndYear,bEndMonth,bEndDay,bEndHour,bEndMinute: Byte;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get message
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DeviceMessage),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Message,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      idBytes := CreateSafeArray(8);
      contentBytes := CreateSafeArray(MessageContentLength * 2 - 1);
      messageBytes := CreateSafeArray(MaxDeviceMessageLength - 1);
      iIndex := cbbDN.ItemIndex * MaxDeviceMessageLength;
      ArrayCopy(extraData,iIndex,messageBytes,0,MaxDeviceMessageLength);
      ArrayCopy(messageBytes,16,idBytes,0,idBytes.rgsabound[0].cElements);
      ArrayCopy(messageBytes,24,contentBytes,0,contentBytes.rgsabound[0].cElements);
      GetArrayValue(messageBytes,0, bEnable);
      GetArrayValue(messageBytes,1, bType);
      GetArrayValue(messageBytes,2, bSound);
      GetArrayValue(messageBytes,6, bBeginYear);
      GetArrayValue(messageBytes,7, bBeginMonth);
      GetArrayValue(messageBytes,8, bBeginDay);
      GetArrayValue(messageBytes,9, bBeginHour);
      GetArrayValue(messageBytes,10, bBeginMinute);
      GetArrayValue(messageBytes,11, bEndYear);
      GetArrayValue(messageBytes,12, bEndMonth);
      GetArrayValue(messageBytes,13, bEndDay);
      GetArrayValue(messageBytes,14, bEndHour);
      GetArrayValue(messageBytes,15, bEndMinute);

      chkEnable.Checked := bEnable > 0;
      cbbMessageType.ItemIndex := bType;
      cbbSoundType.ItemIndex := bSound;
      dtpBeginTime.Time := EncodeTime(bBeginHour,bBeginMinute,0,0);
      dtpBeginDate.Date := EncodeDate(bBeginYear + 2000,bBeginMonth,bBeginDay);
      dtpEndTime.Time := EncodeTime(bEndHour,bEndMinute,0,0);
      dtpEndDate.Date := EncodeDate(bEndYear + 2000,bEndMonth,bEndDay);
      edtMessageID.Text := gDeviceTools.GetStringByNum(idBytes,0,NumberType_UInt64Bit);
      edtContent.Text := StringReplace(gDeviceTools.GetString(contentBytes),#0,'',[rfReplaceAll]);
    end
    else begin
      ShowMessage('Get message: Fail');
    end;

    //Setting device communication status to idle
    deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceIdle),NumberType_Int32Bit);
    bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
    if not bRet then
    begin
      ShowMessage('Setting device communication status to idle: Fail');
    end;        
  end
  else begin
    ShowMessage('Setting device communication status to busy: Fail.');
  end;
end;

procedure TMessageForm.btnPowerSetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;                    
  bRet: Boolean;
  idBytes: PSafeArray;
  contentBytes: PSafeArray;
  bEnable: Byte;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get message
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DeviceMessage),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Message,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set message
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(DeviceMessage),NumberType_Int32Bit);
      iIndex := cbbDN.ItemIndex * MaxDeviceMessageLength;
      if chkEnable.Checked then
        bEnable := 1
      else
        bEnable := 0;
      SetArrayValue(extraData,iIndex + 0, bEnable);
      SetArrayValue(extraData,iIndex + 1, cbbMessageType.ItemIndex);
      SetArrayValue(extraData,iIndex + 2, cbbSoundType.ItemIndex);
      SetArrayValue(extraData,iIndex + 3, 0);
      SetArrayValue(extraData,iIndex + 4, 0);
      SetArrayValue(extraData,iIndex + 5, 0);
      SetArrayValue(extraData,iIndex + 6, StrToInt(FormatDateTime('yyyy',dtpBeginDate.Date)) - 2000);
      SetArrayValue(extraData,iIndex + 7, StrToInt(FormatDateTime('mm',dtpBeginDate.Date)));
      SetArrayValue(extraData,iIndex + 8, StrToInt(FormatDateTime('dd',dtpBeginDate.Date)));
      SetArrayValue(extraData,iIndex + 9, StrToInt(FormatDateTime('hh',dtpBeginTime.Time)));
      SetArrayValue(extraData,iIndex + 10, StrToInt(FormatDateTime('nn',dtpBeginTime.Time)));
      SetArrayValue(extraData,iIndex + 11, StrToInt(FormatDateTime('yyyy',dtpEndDate.Date)) - 2000);
      SetArrayValue(extraData,iIndex + 12, StrToInt(FormatDateTime('mm',dtpEndDate.Date)));
      SetArrayValue(extraData,iIndex + 13, StrToInt(FormatDateTime('dd',dtpEndDate.Date)));
      SetArrayValue(extraData,iIndex + 14, StrToInt(FormatDateTime('hh',dtpEndTime.Time)));
      SetArrayValue(extraData,iIndex + 15, StrToInt(FormatDateTime('nn',dtpEndTime.Time)));
      idBytes := gDeviceTools.GetBytesByNum(Trim(edtMessageID.Text),NumberType_UInt64Bit);
      ArrayCopy(idBytes,0,extraData,cbbDN.ItemIndex * MaxDeviceMessageLength + 16, idBytes.rgsabound[0].cElements);
      contentBytes := gDeviceTools.GetBytes(Trim(edtContent.Text));
      ArrayCopy(contentBytes,0,extraData,cbbDN.ItemIndex * MaxDeviceMessageLength + 24,contentBytes.rgsabound[0].cElements);
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Message,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set message: Success')
      else
        ShowMessage('Set message: Fail');
    end
    else begin
      ShowMessage('Get message: Fail');
    end;

    //Setting device communication status to idle
    deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceIdle),NumberType_Int32Bit);
    bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
    if not bRet then
    begin
      ShowMessage('Setting device communication status to idle: Fail');
    end;        
  end
  else begin
    ShowMessage('Setting device communication status to busy: Fail.');
  end;
end;

procedure TMessageForm.FormCreate(Sender: TObject);
begin
  inherited;
  dtpBeginDate.DateTime := Now;
  dtpEndDate.DateTime := Now + 1;
end;

end.
