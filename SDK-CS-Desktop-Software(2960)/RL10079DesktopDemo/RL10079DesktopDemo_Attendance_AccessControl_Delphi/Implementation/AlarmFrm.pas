unit AlarmFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Activex, Riss_Devices_TLB;

type
  TAlarmForm = class(TForm)
    gb3: TGroupBox;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    cbbAlarmCycle: TComboBox;
    cbbAlarmDN: TComboBox;
    dtpAlarmTime: TDateTimePicker;
    btnAlarmGet: TButton;
    btnAlarmSet: TButton;
    lbl1: TLabel;
    edtAlarmDelay: TEdit;
    procedure btnAlarmGetClick(Sender: TObject);
    procedure btnAlarmSetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AlarmForm: TAlarmForm;
  procedure ShowAlarmFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowAlarmFrm;
begin
  AlarmForm := TAlarmForm.Create(Application);
  try
    AlarmForm.ShowModal;
  finally
    AlarmForm.Free;
  end;
end;

procedure TAlarmForm.btnAlarmGetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bHour,bMinute,bCycle,bDelay: Byte;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get alarm
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DeviceAlarmClock),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Bell,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      iIndex := cbbAlarmDN.ItemIndex * BellLength;
      GetArrayValue(extraData,iIndex, bHour);
      GetArrayValue(extraData,iIndex + 1, bMinute);
      GetArrayValue(extraData,iIndex + 2, bCycle);
      GetArrayValue(extraData,iIndex + 3, bDelay);
      dtpAlarmTime.Time := EncodeTime(bHour,bMinute,0,0);
      cbbAlarmCycle.ItemIndex := bCycle;
      edtAlarmDelay.Text := IntToStr(bDelay);
    end
    else begin
      ShowMessage('Get alarm: Fail');
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

procedure TAlarmForm.btnAlarmSetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iIndex: Integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get alarm
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DeviceAlarmClock),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Bell,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set alarm
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(DeviceAlarmClock),NumberType_Int32Bit);
      iIndex := cbbAlarmDN.ItemIndex * BellLength;
      SetArrayValue(extraData,iIndex + 0, StrToInt(FormatDateTime('hh',dtpAlarmTime.Time)));
      SetArrayValue(extraData,iIndex + 1, StrToInt(FormatDateTime('nn',dtpAlarmTime.Time)));
      SetArrayValue(extraData,iIndex + 2, cbbAlarmCycle.ItemIndex);
      SetArrayValue(extraData,iIndex + 3, StrToInt(edtAlarmDelay.Text));
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Bell,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set alarm: Success')
      else
        ShowMessage('Set alarm: Fail');
    end
    else begin
      ShowMessage('Get alarm: Fail');
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

end.
