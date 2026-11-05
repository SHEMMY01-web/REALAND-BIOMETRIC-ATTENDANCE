unit SystemFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Activex, Riss_Devices_TLB;

type
  TSystemForm = class(TForm)
    gb1: TGroupBox;
    lbl1: TLabel;
    cbbParam: TComboBox;
    lbl2: TLabel;
    edtParamValue: TEdit;
    btnParamValueGet: TButton;
    btnParamValueSet: TButton;
    gb2: TGroupBox;
    lbl3: TLabel;
    edtTime: TEdit;
    btnGetTime: TButton;
    btnSetTime: TButton;
    gb3: TGroupBox;
    lbl4: TLabel;
    cbbPowerType: TComboBox;
    lbl5: TLabel;
    cbbDN: TComboBox;
    lbl6: TLabel;
    dtpPowerTime: TDateTimePicker;
    chkPowerTimeOff: TCheckBox;
    btnPowerGet: TButton;
    btnPowerSet: TButton;
    gb4: TGroupBox;
    lbl7: TLabel;
    edtUserCount: TEdit;
    Label1: TLabel;
    edtAdminCount: TEdit;
    Label2: TLabel;
    edtFingerCount: TEdit;
    Label3: TLabel;
    edtPwdCount: TEdit;
    Label4: TLabel;
    edtCardCount: TEdit;
    Label5: TLabel;
    edtGLogCount: TEdit;
    Label6: TLabel;
    edtSLogCount: TEdit;
    Label7: TLabel;
    edtHisGLogCount: TEdit;
    Label8: TLabel;
    edtHisSLogCount: TEdit;
    btnSystemGet: TButton;
    gb5: TGroupBox;
    gb6: TGroupBox;
    Label9: TLabel;
    edtWelcome: TEdit;
    Label10: TLabel;
    edtStandby: TEdit;
    btnGetWelcome: TButton;
    btnGetStandby: TButton;
    Label11: TLabel;
    Label12: TLabel;
    edtFirmwareVersion: TEdit;
    edtModel: TEdit;
    btnGetFirmwareVersion: TButton;
    btnGetModel: TButton;
    GroupBox1: TGroupBox;
    Label13: TLabel;
    btnUploadSoundType: TButton;
    cbbSoundType: TComboBox;
    btnGetMacAddress: TButton;
    btnReset: TButton;
    btnSetWelcome: TButton;
    btnSetStandby: TButton;
    dlgOpen: TOpenDialog;
    procedure btnSetTimeClick(Sender: TObject);
    procedure btnGetTimeClick(Sender: TObject);
    procedure btnParamValueSetClick(Sender: TObject);
    procedure btnParamValueGetClick(Sender: TObject);
    procedure btnPowerGetClick(Sender: TObject);
    procedure btnPowerSetClick(Sender: TObject);
    procedure btnSystemGetClick(Sender: TObject);
    procedure btnResetClick(Sender: TObject);
    procedure btnGetMacAddressClick(Sender: TObject);
    procedure btnGetWelcomeClick(Sender: TObject);
    procedure btnGetStandbyClick(Sender: TObject);
    procedure btnSetWelcomeClick(Sender: TObject);
    procedure btnSetStandbyClick(Sender: TObject);
    procedure btnGetFirmwareVersionClick(Sender: TObject);
    procedure btnGetModelClick(Sender: TObject);
    procedure btnUploadSoundTypeClick(Sender: TObject);
  private
    { Private declarations }
    dataChunk: integer;
    function UploadSound(var soundBuffer: PSafeArray): Boolean;
    function CheckWaveFormat(var Buffer: PSafeArray; var offSet: Integer): Boolean;
  public
    { Public declarations }
  end;

var
  SystemForm: TSystemForm;
  procedure ShowSystemFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowSystemFrm;
begin
  SystemForm := TSystemForm.Create(Application);
  try
    SystemForm.ShowModal;
  finally
    SystemForm.Free;
  end;
end;

procedure TSystemForm.btnSetTimeClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Synchronize the device time
  extraProperty := CreateSafeArray(2);
  deviceStatus := CreateSafeArray(2); 
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_DeviceTime,extraProperty,gIDevice,deviceStatus);
  if bRet then
    ShowMessage('Synchronize the device time: Success')
  else
    ShowMessage('Synchronize the device time: Fail');
end;

procedure TSystemForm.btnGetTimeClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bYear,bMonth,bDay,bHour,bMinute,bSecond: Byte;
begin
  //Get the device time
  extraProperty := CreateSafeArray(2);
  deviceStatus := CreateSafeArray(2); 
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_DeviceTime,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    GetArrayValue(deviceStatus,0,bYear);
    GetArrayValue(deviceStatus,1,bMonth);
    GetArrayValue(deviceStatus,2,bDay);
    GetArrayValue(deviceStatus,3,bHour);
    GetArrayValue(deviceStatus,4,bMinute);
    GetArrayValue(deviceStatus,5,bSecond);  
    edtTime.Text := IntToStr(bYear + 2000) + '-' + IntToStr(bMonth) + '-' + IntToStr(bDay)+ ' ' + IntToStr(bHour)+ ':' + IntToStr(bMinute)+ ':' + IntToStr(bSecond);
  end
  else begin
    ShowMessage('Get the device time: Fail');
  end;
end;

procedure TSystemForm.btnParamValueSetClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  paramValue: PSafeArray;
  paramIndex: PSafeArray;
  bRet: Boolean;
begin
  //System Parameters Set
  extraProperty := CreateSafeArray(2);
  case cbbParam.ItemIndex of
    26..29: begin
      paramValue := gDeviceTools.GetBytesByNum(gDeviceTools.ConvertNumberToIPAddress(StrToInt(Trim(edtParamValue.Text))),NumberType_Int32Bit);
    end;
  else paramValue := gDeviceTools.GetBytesByNum(Trim(edtParamValue.Text),NumberType_Int32Bit);
  end;
  paramIndex := gDeviceTools.GetBytesByNum(IntToStr(cbbParam.ItemIndex),NumberType_Int32Bit);

  extraData := CreateSafeArray(paramIndex.rgsabound[0].cElements * 2 - 1);
  ArrayCopy(paramIndex,0,extraData,0,paramIndex.rgsabound[0].cElements);
  ArrayCopy(paramValue,0,extraData,paramIndex.rgsabound[0].cElements,paramValue.rgsabound[0].cElements);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,extraData);
  if bRet then
    ShowMessage('System Parameters Set: Success')
  else
    ShowMessage('System Parameters Set: Fail');
end;

procedure TSystemForm.btnParamValueGetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  paramValue: integer;
begin
  //System Parameters get
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(cbbParam.ItemIndex),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    paramValue := StrToInt(gDeviceTools.GetStringByNum(deviceStatus,0,NumberType_Int32Bit));
    case cbbParam.ItemIndex of
      26..29: begin
        edtParamValue.Text := gDeviceTools.ConvertNumberToIPAddress(paramValue);
      end;
    else edtParamValue.Text := IntToStr(paramValue);
    end; 
  end
  else begin
    ShowMessage('System Parameters get: Fail');
  end;
end;

procedure TSystemForm.btnPowerGetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bHour,bMinute,bEnable: Byte;
  iIndex: Integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get power time
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DevicePowerTimer),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PowerOnOffTime,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      iIndex := (cbbPowerType.ItemIndex + 1) * PowerTimeCount * PowerTimeLength + cbbDN.ItemIndex * PowerTimeLength;
      GetArrayValue(extraData,iIndex, bHour);
      GetArrayValue(extraData,iIndex + 1, bMinute);
      GetArrayValue(extraData,iIndex + 2, bEnable);
      dtpPowerTime.Time := EncodeTime(bHour,bMinute,0,0);
      chkPowerTimeOff.Checked := bEnable > 0;
    end
    else begin
      ShowMessage('Get power time: Fail');
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

procedure TSystemForm.btnPowerSetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bEnable: Byte;
  iIndex: Integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get power time
    extraData := gDeviceTools.GetBytesByNum(IntToStr(DevicePowerTimer),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PowerOnOffTime,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(DevicePowerTimer),NumberType_Int32Bit);
      iIndex := (cbbPowerType.ItemIndex + 1) * PowerTimeCount * PowerTimeLength + cbbDN.ItemIndex * PowerTimeLength;
      SetArrayValue(extraData,iIndex + 0, StrToInt(FormatDateTime('hh',dtpPowerTime.Time)));
      SetArrayValue(extraData,iIndex + 1, StrToInt(FormatDateTime('nn',dtpPowerTime.Time)));
      if chkPowerTimeOff.Checked then
        bEnable := 1
      else
        bEnable := 0;
      SetArrayValue(extraData,iIndex + 2, bEnable);
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_PowerOnOffTime,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set power time: Success')
      else
        ShowMessage('Set power time: Fail');
    end
    else begin
      ShowMessage('Get power time: Fail');
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

procedure TSystemForm.btnSystemGetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //System Parameters get
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceProperty_Status),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Status,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    edtUserCount.Text := gDeviceTools.GetStringByNum(deviceStatus,0, NumberType_UInt32Bit);
    edtAdminCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 4, NumberType_UInt32Bit);
    edtFingerCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 8, NumberType_UInt32Bit);
    edtCardCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 12, NumberType_UInt32Bit);
    edtPwdCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 16, NumberType_UInt32Bit);
    edtSLogCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 20, NumberType_UInt32Bit);
    edtGLogCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 24, NumberType_UInt32Bit);
    edtHisSLogCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 28, NumberType_UInt32Bit);
    edtHisGLogCount.Text := gDeviceTools.GetStringByNum(deviceStatus, 32, NumberType_UInt32Bit);
  end
  else begin
    ShowMessage('System Parameters get: Fail');
  end;
end;

procedure TSystemForm.btnResetClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //reset device
    bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_InitSettings,extraProperty,gIDevice,extraData);
    if bRet then
      ShowMessage('reset device: Success')
    else
      ShowMessage('reset device: Fail');

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

procedure TSystemForm.btnGetMacAddressClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bByte: Byte;
  i: integer;
  sMac: string;
begin
  //Get the device time
  extraProperty := CreateSafeArray(2);
  deviceStatus := CreateSafeArray(2);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_MacAddress,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    for i := 0 to 5 do
    begin
      GetArrayValue(deviceStatus,i,bByte);
      sMac := sMac + IntToHex(bByte,2);
    end;
    ShowMessage('MAC:' + sMac);
  end
  else begin
    ShowMessage('Get MAC: Fail');
  end;
end;

procedure TSystemForm.btnGetWelcomeClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Get Welcome title
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceTile),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_WelcomeTitle,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    edtWelcome.Text := gDeviceTools.GetString(deviceStatus);
  end
  else begin
    ShowMessage('Get Welcome title: Fail');
  end;
end;

procedure TSystemForm.btnGetStandbyClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Get standby title
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceStandbyTitle),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_StandbyTitle,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    edtStandby.Text := gDeviceTools.GetString(deviceStatus);
  end
  else begin
    ShowMessage('Get standby title: Fail');
  end;
end;

procedure TSystemForm.btnSetWelcomeClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Set welcome title
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(DeviceTile),NumberType_Int32Bit);
  extraData := gDeviceTools.GetBytes(Trim(edtWelcome.Text));
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_WelcomeTitle,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Set welcome title: success');
  end
  else begin
    ShowMessage('Set welcome title: Fail');
  end;
end;

procedure TSystemForm.btnSetStandbyClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Set standby title
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(DeviceStandbyTitle),NumberType_Int32Bit);
  extraData := gDeviceTools.GetBytes(Trim(edtStandby.Text));
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_StandbyTitle,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Set standby title: success');
  end
  else begin
    ShowMessage('Set standby title: Fail');
  end;
end;

procedure TSystemForm.btnGetFirmwareVersionClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Get Firmwar eVersion
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceFirmwareVersion),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_FirmwareVersion,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    edtFirmwareVersion.Text := gDeviceTools.GetString(deviceStatus);
  end
  else begin
    ShowMessage('Get Firmwar eVersion: Fail');
  end;
end;

procedure TSystemForm.btnGetModelClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Get Model
  extraProperty := CreateSafeArray(2);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceModel),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Model,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    edtModel.Text := gDeviceTools.GetString(deviceStatus);
  end
  else begin
    ShowMessage('Get Model: Fail');
  end;
end;

procedure TSystemForm.btnUploadSoundTypeClick(Sender: TObject);
var
  sFileName: string;
  lFileStream: TFileStream;
  arySound: PSafeArray;
  i: integer;
  bByte: Byte;
begin
  if gIDevice.CommunicationType <> CommunicationType_Usb then
  begin
    ShowMessage('Upload Sound Only Supports USB Communication');
    Exit;
  end;

  dataChunk := 0;
  dlgOpen.Filter := 'WAV|*.wav';
  dlgOpen.FilterIndex := 1;
  if dlgOpen.Execute then
  begin
    sFileName := dlgOpen.FileName;
    lFileStream := TFileStream.Create(sFileName,fmOpenRead);
    arySound := CreateSafeArray(lFileStream.Size);
    try
       for i := 0 to lFileStream.Size - 1 do
       begin
         lFileStream.Read(bByte,1);
         SetArrayValue(arySound,i,bByte);
       end;
       if not CheckWaveFormat(arySound,dataChunk) then
         Exit;
       if UploadSound(arySound) then
         ShowMessage('upload sound success')
       else
         ShowMessage('upload sound fail');
    finally
      lFileStream.Free;
    end;                             
  end;

end;

function TSystemForm.UploadSound(var soundBuffer: PSafeArray): Boolean;
var
  lchunkHeaderLen,llength,ldownSize,lunit,i,n,m: Integer;
  chunkHeader,downData,extraProperty: PSafeArray;
  dataBytes,soundType,offSet: PSafeArray;
  bresult: Boolean;
begin
  lchunkHeaderLen := 0;
  chunkHeader := gDeviceTools.CreateChunkHeader(soundBuffer, dataChunk);
  llength := StrToInt(gDeviceTools.GetStringByNum(chunkHeader, 4, NumberType_Int32Bit));
  ldownSize := llength + 4;
  downData := CreateSafeArray(ldownSize);
  ArrayCopy(chunkHeader, 4, downData, 0, 4);
  ArrayCopy(soundBuffer, dataChunk + lchunkHeaderLen, downData, 4, llength);
  lunit := 1024 * 60;
  n := ldownSize div lunit;
  m := 0;
  for i := 0 to n - 1 do
  begin
    dataBytes := CreateSafeArray(lUnit - 1);
    ArrayCopy(downData, i * lunit, dataBytes, 0, lunit);
    soundType := gDeviceTools.GetBytesByNum(IntToStr(cbbSoundType.ItemIndex + 8), NumberType_Int32Bit);
    offSet := gDeviceTools.GetBytesByNum(IntToStr(i * lunit), NumberType_Int32Bit);
    extraProperty := CreateSafeArray(soundType.rgsabound[0].cElements + offSet.rgsabound[0].cElements - 1);
    ArrayCopy(soundType, 0, extraProperty, 0, soundType.rgsabound[0].cElements);
    ArrayCopy(offSet, 0, extraProperty, soundType.rgsabound[0].cElements, offSet.rgsabound[0].cElements);
    bresult := gDeviceConnection.SetPropertyExt_2(DeviceProperty_UploadSound, extraProperty, gIDevice, dataBytes);
    if not bresult then
    begin
      Result := False;
      Exit;
    end;
    m := i;
  end;
    
  n := ldownSize mod lunit;
  if n > 0 then
  begin
    i := m;
    dataBytes := CreateSafeArray(n);
    ArrayCopy(downData, i * lunit, dataBytes, 0, n);
    soundType := gDeviceTools.GetBytesByNum(IntToStr(cbbSoundType.ItemIndex + 8), NumberType_Int32Bit);
    offSet := gDeviceTools.GetBytesByNum(IntToStr(i * lunit), NumberType_Int32Bit);
    extraProperty := CreateSafeArray(soundType.rgsabound[0].cElements + offSet.rgsabound[0].cElements);
    ArrayCopy(soundType, 0, extraProperty, 0, soundType.rgsabound[0].cElements);
    ArrayCopy(offSet, 0, extraProperty, soundType.rgsabound[0].cElements, offSet.rgsabound[0].cElements);
    bresult := gDeviceConnection.SetPropertyExt_2(DeviceProperty_UploadSound, extraProperty, gIDevice, dataBytes);
    if not bresult then
    begin
      Result := False;
      Exit;
    end;
  end;
  Result := True;
end;

function TSystemForm.CheckWaveFormat(var Buffer: PSafeArray;
  var offSet: Integer): Boolean;
var
  riff,wave,fmt: string;
  waveFormatSize,formatTag,channels,samplesPerSec,bitsPerSample: integer;
  waveBytes: PSafeArray;
  chunkHeaderLen , tmpOffSet, llength, fileLength: integer;
  fact, data: string;
  chunkHeader: PSafeArray;
begin
  offSet := 0;
  riff := gDeviceTools.GetASCII(buffer, 0, 4);
  wave := gDeviceTools.GetASCII(buffer, 8, 4);
  fmt := gDeviceTools.GetASCII(buffer, 12, 4);
  if ('RIFF' <> riff) or ('WAVE' <> wave) or ('fmt ' <> fmt) then
  begin
    ShowMessage('Incorrect Wave Format');
    Result := False;
    Exit;
  end;

  waveFormatSize := StrToInt(gDeviceTools.GetStringByNum(buffer, 16, NumberType_Int32Bit));

  waveBytes := CreateSafeArray(17);
  ArrayCopy(buffer, 20, waveBytes, 0, waveBytes.rgsabound[0].cElements);

  formatTag := StrToInt(gDeviceTools.GetStringByNum(waveBytes, 0, NumberType_UInt16Bit));
  if 1 <> formatTag then
  begin
    ShowMessage('Audio Format is not PCM');
    Result := False;
    Exit;
  end;

  channels := StrToInt(gDeviceTools.GetStringByNum(waveBytes, 2, NumberType_UInt16Bit));
  if 1 <> channels then
  begin
    ShowMessage('Channels is not Stereo');
    Result := False;
    Exit;
  end;

  samplesPerSec := StrToInt(gDeviceTools.GetStringByNum(waveBytes, 4, NumberType_UInt32Bit));
  if 22050 <> samplesPerSec then
  begin
    ShowMessage('Audio sample rate is not 22.05KHZ');
    Result := False;
    Exit;
  end;

  bitsPerSample := StrToInt(gDeviceTools.GetStringByNum(waveBytes, 14, NumberType_UInt16Bit));
  If 16 <> bitsPerSample Then
  begin
    ShowMessage('Audio sample size is not 8bit');
    Result := False;
    Exit;
  end;

  chunkHeaderLen := 0;
  tmpOffSet := 20 + waveFormatSize;
  chunkHeader := gDeviceTools.CreateChunkHeader(buffer, tmpOffSet);
  fact := gDeviceTools.GetASCII(chunkHeader, 0, 4);
  llength := StrToInt(gDeviceTools.GetStringByNum(chunkHeader, 4, NumberType_UInt32Bit));
  if 'fact' = fact then
  begin
    offSet := offSet + chunkHeaderLen + llength;
  end;
  offSet := tmpOffSet;
  chunkHeader := gDeviceTools.CreateChunkHeader(buffer, offSet);
  data := gDeviceTools.GetASCII(chunkHeader, 0, 4);
  if 'data' <> data then
  begin
   ShowMessage('Incorrect Wave Format');
    Result := False;
   Exit;
  end;

  llength := StrToInt(gDeviceTools.GetStringByNum(chunkHeader, 4, NumberType_Int32Bit));
  fileLength := 1024 * 75;
  if fileLength < llength then
  begin
    ShowMessage('Data size is too big. Must be less than 75K byte');
    Result := False;
    Exit;
  end;
  Result := True;
end;

end.
