unit AccessControlFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,Activex, Riss_Devices_TLB, ComCtrls, StdCtrls;

type
  TAccessControlForm = class(TForm)
    pgcAccess: TPageControl;
    tsSettings: TTabSheet;
    tsPassSegment: TTabSheet;
    tsPassGroup: TTabSheet;
    tsPassZone: TTabSheet;
    tsMultOpenGroup: TTabSheet;
    tsLockControl: TTabSheet;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    edtOpenDoor1Time: TEdit;
    ud1: TUpDown;
    cbbCheckDoor1Status: TComboBox;
    edtOpenDoor1OvertimeAlarm: TEdit;
    UpDown1: TUpDown;
    cbbEnableRealyAlarm: TComboBox;
    cbbFireAlarm: TComboBox;
    grp1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    cbbCheckDoor2Status: TComboBox;
    edtOpenDoor2OvertimeAlarm: TEdit;
    cbbSecondLock: TComboBox;
    edtOpenDoor2Time: TEdit;
    UpDown4: TUpDown;
    UpDown5: TUpDown;
    edtIllegalOpenDoor2Time: TEdit;
    UpDown6: TUpDown;
    edtAutoUnlock2PassGroup: TEdit;
    UpDown7: TUpDown;
    Label7: TLabel;
    cbbWiegand: TComboBox;
    Label8: TLabel;
    cbbMultOpenEnable: TComboBox;
    Label9: TLabel;
    cbbAntiPassback: TComboBox;
    grp2: TGroupBox;
    Label10: TLabel;
    cbbLinkageOpen: TComboBox;
    Label11: TLabel;
    cbbLinkageAlarm: TComboBox;
    GroupBox1: TGroupBox;
    Label12: TLabel;
    Label13: TLabel;
    cbbAntiHijackEnable: TComboBox;
    cbbHijackFpNo: TComboBox;
    Label14: TLabel;
    cbbHijackOpen: TComboBox;
    Label15: TLabel;
    cbbHijackAlarm: TComboBox;
    Label16: TLabel;
    edtHijackPassword: TEdit;
    edtIllegalOpenDoor1Time: TEdit;
    UpDown2: TUpDown;
    edtAutoUnlock1PassGroup: TEdit;
    UpDown3: TUpDown;
    btnGetPassSegment: TButton;
    btnSetPassSegment: TButton;
    btnGetPassGroup: TButton;
    btnSetPassGroup: TButton;
    scrlbxSegment: TScrollBox;
    scrlbxGroup: TScrollBox;
    scrlbxZone: TScrollBox;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    lbl14: TLabel;
    btnGetPassZone: TButton;
    btnSetPassZone: TButton;
    scrlbxMultOpenGroup: TScrollBox;
    btnGetMultOpenGroup: TButton;
    btnSetMultOpenGroup: TButton;
    GroupBox2: TGroupBox;
    cbbLockCombo: TComboBox;
    btnLockOpen: TButton;
    btnLockAuto: TButton;
    btnLockKeepOpen: TButton;
    btnLockKeepClose: TButton;
    btnLockGetStatus: TButton;
    btnLockGetEvent: TButton;
    GroupBox3: TGroupBox;
    cbbSoundList: TComboBox;
    btnSoundVoice: TButton;
    btnGetSetting: TButton;
    btnSetSetting: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnGetSettingClick(Sender: TObject);
    procedure btnSetSettingClick(Sender: TObject);
    procedure btnGetPassSegmentClick(Sender: TObject);
    procedure btnSetPassSegmentClick(Sender: TObject);
    procedure btnGetPassGroupClick(Sender: TObject);
    procedure btnSetPassGroupClick(Sender: TObject);
    procedure btnGetPassZoneClick(Sender: TObject);
    procedure btnSetPassZoneClick(Sender: TObject);
    procedure btnGetMultOpenGroupClick(Sender: TObject);
    procedure btnSetMultOpenGroupClick(Sender: TObject);
    procedure btnLockKeepOpenClick(Sender: TObject);
    procedure btnLockOpenClick(Sender: TObject);
    procedure btnLockAutoClick(Sender: TObject);
    procedure btnLockKeepCloseClick(Sender: TObject);
    procedure btnSoundVoiceClick(Sender: TObject);
    procedure btnLockGetStatusClick(Sender: TObject);
    procedure btnLockGetEventClick(Sender: TObject);
  private
    { Private declarations }
    procedure IniPassSegment;
    procedure IniPassGroup;
    procedure IniPassZone;
    procedure IniMultOpen;
  public
    { Public declarations }
  end;

var
  AccessControlForm: TAccessControlForm;
  procedure ShowAccessFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowAccessFrm;
begin
  AccessControlForm := TAccessControlForm.Create(Application);
  try
    AccessControlForm.ShowModal;
  finally
    AccessControlForm.Free;
  end;
end;

procedure TAccessControlForm.FormCreate(Sender: TObject);
begin
  pgcAccess.ActivePageIndex := 0;
  
  IniPassSegment;
  IniPassGroup;
  IniPassZone;
  IniMultOpen;
end;

procedure TAccessControlForm.btnGetSettingClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData: Byte;
  iType,i: integer;
  psw: string;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get AccessControlSettings
    iType := 72;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_AccessControlSettings,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      GetArrayValue(extraData,0, bData);
      cbbWiegand.ItemIndex := bData;
      GetArrayValue(extraData,1, bData);
      cbbHijackOpen.ItemIndex := bData;
      GetArrayValue(extraData,2, bData);
      cbbHijackAlarm.ItemIndex := bData;
      GetArrayValue(extraData,3, bData);
      cbbAntiPassback.ItemIndex := bData;
                                            
      GetArrayValue(extraData,4, bData);
      cbbFireAlarm.ItemIndex := bData;
      GetArrayValue(extraData,5, bData);
      cbbHijackFpNo.ItemIndex := bData;
      GetArrayValue(extraData,6, bData);
      cbbAntiHijackEnable.ItemIndex := bData;
      GetArrayValue(extraData,7, bData);
      cbbSecondLock.ItemIndex := bData;

      psw := '';
      for i := 0 to 7 do
      begin
        GetArrayValue(extraData,8 + i, bData);
        psw := psw + Char(bData);
      end;
      edtHijackPassword.Text := psw;

      GetArrayValue(extraData,16, bData);
      edtOpenDoor1Time.Text := IntToStr(bData);
      GetArrayValue(extraData,17, bData);
      cbbCheckDoor1Status.ItemIndex := bData;
      GetArrayValue(extraData,18, bData);
      edtOpenDoor1OvertimeAlarm.Text := IntToStr(bData);
      GetArrayValue(extraData,19, bData);
      edtIllegalOpenDoor1Time.Text := IntToStr(bData);

      GetArrayValue(extraData,20, bData);
      edtOpenDoor2Time.Text := IntToStr(bData);
      GetArrayValue(extraData,21, bData);
      cbbCheckDoor2Status.ItemIndex := bData;
      GetArrayValue(extraData,22, bData);
      edtOpenDoor2OvertimeAlarm.Text := IntToStr(bData);
      GetArrayValue(extraData,23, bData);
      edtIllegalOpenDoor2Time.Text := IntToStr(bData);
                                                  
      GetArrayValue(extraData,24, bData);
      cbbMultOpenEnable.ItemIndex := bData;
      GetArrayValue(extraData,25, bData);
      cbbLinkageOpen.ItemIndex := bData;
      GetArrayValue(extraData,26, bData);
      cbbLinkageAlarm.ItemIndex := bData;
      GetArrayValue(extraData,27, bData);
      edtAutoUnlock1PassGroup.Text := IntToStr(bData);
                                                 
      GetArrayValue(extraData,28, bData);
      edtAutoUnlock2PassGroup.Text := IntToStr(bData);
      GetArrayValue(extraData,29, bData);
      cbbEnableRealyAlarm.ItemIndex := bData;
    end
    else begin
      ShowMessage('Get AccessControlSettings: Fail');
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

procedure TAccessControlForm.btnSetSettingClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iType,i: Integer;
  psw: string;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get AccessControlSettings
    iType := 72;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_AccessControlSettings,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set AccessControlSettings
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
      SetArrayValue(extraData,0, cbbWiegand.ItemIndex);
      SetArrayValue(extraData,1, cbbHijackOpen.ItemIndex);
      SetArrayValue(extraData,2, cbbHijackAlarm.ItemIndex);
      SetArrayValue(extraData,3, cbbAntiPassback.ItemIndex);

      SetArrayValue(extraData,4, cbbFireAlarm.ItemIndex);
      SetArrayValue(extraData,5, cbbHijackFpNo.ItemIndex);
      SetArrayValue(extraData,6, cbbAntiHijackEnable.ItemIndex);
      SetArrayValue(extraData,7, cbbSecondLock.ItemIndex);

      psw := edtHijackPassword.Text;
      for i := 0 to 7 do
      begin
        if i > Length(psw) - 1 then
          SetArrayValue(extraData,8+i, Ord(' '))
        else
          SetArrayValue(extraData,8+i, Ord(psw[i+1]));
      end;

      SetArrayValue(extraData,16, StrToInt(edtOpenDoor1Time.Text));
      SetArrayValue(extraData,17, cbbCheckDoor1Status.ItemIndex);
      SetArrayValue(extraData,18, StrToInt(edtOpenDoor1OvertimeAlarm.Text));
      SetArrayValue(extraData,19, StrToInt(edtIllegalOpenDoor1Time.Text));
                                              
      SetArrayValue(extraData,20, StrToInt(edtOpenDoor2Time.Text));
      SetArrayValue(extraData,21, cbbCheckDoor2Status.ItemIndex);
      SetArrayValue(extraData,22, StrToInt(edtOpenDoor2OvertimeAlarm.Text));
      SetArrayValue(extraData,23, StrToInt(edtIllegalOpenDoor2Time.Text));
                                                     
      SetArrayValue(extraData,24, cbbMultOpenEnable.ItemIndex);
      SetArrayValue(extraData,25, cbbLinkageOpen.ItemIndex);
      SetArrayValue(extraData,26, cbbLinkageAlarm.ItemIndex);
      SetArrayValue(extraData,27, StrToInt(edtAutoUnlock1PassGroup.Text));
                                                 
      SetArrayValue(extraData,28, StrToInt(edtAutoUnlock2PassGroup.Text));
      SetArrayValue(extraData,29, cbbEnableRealyAlarm.ItemIndex);
      SetArrayValue(extraData,30, 3);
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_AccessControlSettings,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set AccessControlSettings: Success')
      else
        ShowMessage('Set AccessControlSettings: Fail');
    end
    else begin
      ShowMessage('Get AccessControlSettings: Fail');
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

procedure TAccessControlForm.IniMultOpen;
var
  lTop,i: integer;
  lEdit: TEdit;
begin
  for i := 0 to 9 do
  begin
    lTop := i * 30 + 20;
    with TLabel.Create(scrlbxMultOpenGroup) do
    begin
      Parent := scrlbxMultOpenGroup;
      Left := 22;
      Width := 32;
      Name := 'lblMultOpenId' + IntToStr(i);
      Top := lTop;
      Caption := IntToStr(i);
      AutoSize := False;
    end;

      lEdit := TEdit.Create(scrlbxMultOpenGroup);
      with lEdit do
      begin
        Parent := scrlbxMultOpenGroup;
        Left := 60 + 45 ;
        Width := 100;
        Name := 'edtMultOpen' + IntToStr(i);
        Top := lTop;
        Text := '0';
      end;
      with TUpDown.Create(scrlbxMultOpenGroup) do
      begin
        Parent := scrlbxMultOpenGroup;
        Left := 75;
        Width := 17;
        Associate := lEdit;
        Top := lTop;
        Max := 999;
        Min := 0;
      end;
  end;
end;

procedure TAccessControlForm.IniPassGroup;
var
  lTop,i,j: integer;
  lEdit: TEdit;
begin
  for i := 0 to 31 do
  begin
    lTop := i * 30 + 20;
    with TLabel.Create(scrlbxGroup) do
    begin
      Parent := scrlbxGroup;
      Left := 22;
      Width := 32;
      Name := 'lblGroupId' + IntToStr(i);
      Top := lTop;
      Caption := IntToStr(i);
      AutoSize := False;
    end;
    for j := 0 to 9 do
    begin
      lEdit := TEdit.Create(scrlbxGroup);
      with lEdit do
      begin
        Parent := scrlbxGroup;
        Left := 60 + 45 * j;
        Width := 25;
        Name := 'edtGroup' + IntToStr(i) + IntToStr(j);
        Top := lTop;
        Text := '0';
        Enabled := i > 0;
      end;
      with TUpDown.Create(scrlbxGroup) do
      begin
        Parent := scrlbxGroup;
        Left := 75;
        Width := 17;
        Associate := lEdit;
        Top := lTop;
        Max := 31;
        Min := 0;
      end;
    end;
  end;
end;

procedure TAccessControlForm.IniPassSegment;
var
  lTop,i: integer;
begin
  for i := 0 to 31 do
  begin
    lTop := i * 30 + 20;
    with TLabel.Create(scrlbxSegment) do
    begin
      Parent := scrlbxSegment;
      Left := 22;
      Width := 32;
      Name := 'lblPassId' + IntToStr(i);
      Top := lTop;
      Caption := IntToStr(i);
      AutoSize := False;
    end;
    with TDateTimePicker.Create(scrlbxSegment) do
    begin
      Parent := scrlbxSegment;
      Left := 70;
      Width := 60;
      Name := 'edtStTime' + IntToStr(i);
      Top := lTop;
      Kind := dtkTime;
      Time := StrToTime('00:00:00');
      Format := 'HH:mm';
      ImeMode := imClose;  
      Enabled := i > 0;
    end;
    with TDateTimePicker.Create(scrlbxSegment) do
    begin
      Parent := scrlbxSegment;
      Left := 160;
      Width := 60;
      Name := 'edtEndTime' + IntToStr(i);
      Top := lTop;
      Kind := dtkTime;
      Time := StrToTime('00:00:00');
      Format := 'HH:mm';
      ImeMode := imClose; 
      Enabled := i > 0;
    end;
  end;
end;

procedure TAccessControlForm.IniPassZone;
var
  lTop,i,j: integer;
  lEdit: TEdit;
begin
  for i := 0 to 31 do
  begin
    lTop := i * 30 + 20;
    with TLabel.Create(scrlbxZone) do
    begin
      Parent := scrlbxZone;
      Left := 22;
      Width := 32;
      Name := 'lblZoneId' + IntToStr(i);
      Top := lTop;
      Caption := IntToStr(i);
      AutoSize := False;
    end;
    for j := 0 to 6 do
    begin
      lEdit := TEdit.Create(scrlbxZone);
      with lEdit do
      begin
        Parent := scrlbxZone;
        Left := 60 + 70 * j;
        Width := 50;
        Name := 'edtZone' + IntToStr(i) + IntToStr(j);
        Top := lTop;
        Text := '0';  
        Enabled := i > 0;
      end;
      with TUpDown.Create(scrlbxZone) do
      begin
        Parent := scrlbxZone;
        Left := 75;
        Width := 17;
        Associate := lEdit;
        Top := lTop;
        Max := 31;
        Min := 0;
      end;
    end;
  end;
end;

procedure TAccessControlForm.btnGetPassSegmentClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData0,bData1: Byte;
  iType,i: integer;
  ldt: TDateTimePicker;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get PassSegment
    iType := 68;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassSegment,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      for i := 0 to 31 do
      begin
        ldt := (scrlbxSegment.FindComponent('edtStTime' + IntToStr(i)) as TDateTimePicker);
        GetArrayValue(extraData,i*4, bData0);
        GetArrayValue(extraData,i*4 + 1, bData1);
        ldt.Time := EncodeTime(bData0,bData1,0,0);
        ldt := (scrlbxSegment.FindComponent('edtEndTime' + IntToStr(i)) as TDateTimePicker);
        GetArrayValue(extraData,i*4 + 2, bData0);
        GetArrayValue(extraData,i*4 + 3, bData1);
        ldt.Time := EncodeTime(bData0,bData1,0,0);
      end;
    end
    else begin
      ShowMessage('Get PassSegment: Fail');
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

procedure TAccessControlForm.btnSetPassSegmentClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iType,i: Integer;
  ldt: TDateTimePicker;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get AccessControlSettings
    iType := 68;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassSegment,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set PassSegment
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
      for i := 0 to 31 do
      begin
        ldt := (scrlbxSegment.FindComponent('edtStTime' + IntToStr(i)) as TDateTimePicker);
        SetArrayValue(extraData,i*4, StrToInt(FormatDateTime('hh',ldt.Time)));
        SetArrayValue(extraData,i*4 + 1, StrToInt(FormatDateTime('nn',ldt.Time)));
        ldt := (scrlbxSegment.FindComponent('edtEndTime' + IntToStr(i)) as TDateTimePicker);
        SetArrayValue(extraData,i*4 + 2, StrToInt(FormatDateTime('hh',ldt.Time)));
        SetArrayValue(extraData,i*4 + 3, StrToInt(FormatDateTime('nn',ldt.Time)));
      end;
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_PassSegment,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set PassSegment: Success')
      else
        ShowMessage('Set PassSegment: Fail');
    end
    else begin
      ShowMessage('Get PassSegment: Fail');
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

procedure TAccessControlForm.btnGetPassGroupClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData: Byte;
  iType,i,j: integer;
  ledit: TEdit;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get PassGroup
    iType := 69;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassGroup,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      for i := 0 to 31 do
      begin
        for j := 0 to 9 do
        begin
          ledit := (scrlbxGroup.FindComponent('edtGroup' + IntToStr(i) + IntToStr(j)) as TEdit);
          GetArrayValue(extraData,i*10 + j, bData);
          ledit.Text := IntToStr(bData);
        end;
      end;
    end
    else begin
      ShowMessage('Get PassGroup: Fail');
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

procedure TAccessControlForm.btnSetPassGroupClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iType,i,j: integer;
  ledit: TEdit;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get PassGroup
    iType := 69;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassGroup,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set PassGroup
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
      for i := 0 to 31 do
      begin
        for j := 0 to 9 do
        begin
          ledit := (scrlbxGroup.FindComponent('edtGroup' + IntToStr(i) + IntToStr(j)) as TEdit);
          SetArrayValue(extraData,i*10 + j, StrToInt(ledit.Text));
        end;
      end;
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_PassGroup,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set PassGroup: Success')
      else
        ShowMessage('Set PassGroup: Fail');
    end
    else begin
      ShowMessage('Get PassGroup: Fail');
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

procedure TAccessControlForm.btnGetPassZoneClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData: Byte;
  iType,i,j: integer;
  ledit: TEdit;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get PassZone
    iType := 70;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassZone,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      for i := 0 to 31 do
      begin
        for j := 0 to 6 do
        begin
          ledit := (scrlbxZone.FindComponent('edtZone' + IntToStr(i) + IntToStr(j)) as TEdit);
          GetArrayValue(extraData,i*7 + j, bData);
          ledit.Text := IntToStr(bData);
        end;
      end;
    end
    else begin
      ShowMessage('Get PassZone: Fail');
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

procedure TAccessControlForm.btnSetPassZoneClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iType,i,j: integer;
  ledit: TEdit;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get PassZone
    iType := 70;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_PassZone,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set PassZone
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
      for i := 0 to 31 do
      begin
        for j := 0 to 6 do
        begin
          ledit := (scrlbxZone.FindComponent('edtZone' + IntToStr(i) + IntToStr(j)) as TEdit);
          SetArrayValue(extraData,i*7 + j, StrToInt(ledit.Text));
        end;
      end;
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_PassZone,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set PassZone: Success')
      else
        ShowMessage('Set PassZone: Fail');
    end
    else begin
      ShowMessage('Get PassZone: Fail');
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

procedure TAccessControlForm.btnGetMultOpenGroupClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData0,bData1,bData2,bData3: Byte;
  iType,i: integer;
  ledit: TEdit;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get MultOpenGroup
    iType := 71;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_MultOpenGroup,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      for i := 0 to 9 do
      begin
        ledit := (scrlbxMultOpenGroup.FindComponent('edtMultOpen' + IntToStr(i)) as TEdit);
        GetArrayValue(extraData,i*4, bData0);
        GetArrayValue(extraData,i*4+1, bData1);
        GetArrayValue(extraData,i*4+2, bData2);
        GetArrayValue(extraData,i*4+3, bData3);
        ledit.Text := IntToStr(bData3 * $1000000 + bData2 * $10000 + bData1 * $100 + bData0);
      end;
    end
    else begin
      ShowMessage('Get MultOpenGroup: Fail');
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

procedure TAccessControlForm.btnSetMultOpenGroupClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iType,i: integer;
  ledit: TEdit;
  iInt64: Int64;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get MultOpenGroup
    iType := 71;
    extraData := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_MultOpenGroup,extraProperty,gIDevice,extraData);
    if bRet then
    begin
      //Set MultOpenGroup
      extraProperty := gDeviceTools.GetBytesByNum(IntToStr(iType),NumberType_Int32Bit);
      for i := 0 to 9 do
      begin
        ledit := (scrlbxMultOpenGroup.FindComponent('edtMultOpen' + IntToStr(i)) as TEdit);
        iInt64 := StrToInt(ledit.Text);
        SetArrayValue(extraData,i*4+3, iInt64 div $10000 div $100);
        SetArrayValue(extraData,i*4+2, iInt64 div $10000 mod $100);
        SetArrayValue(extraData,i*4+1, iInt64 mod $10000 div $100);
        SetArrayValue(extraData,i*4, iInt64 mod $10000 mod $100);
      end;
      bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_MultOpenGroup,extraProperty,gIDevice,extraData);
      if bRet then
        ShowMessage('Set MultOpenGroup: Success')
      else
        ShowMessage('Set MultOpenGroup: Fail');
    end
    else begin
      ShowMessage('Get MultOpenGroup: Fail');
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
        //#define LOCK_CMD_OPEN				1
        //#define LOCK_CMD_AUTO				2
        //#define LOCK_CMD_KEEP_OPEN		    3
        //#define LOCK_CMD_KEEP_CLOSE		    4
procedure TAccessControlForm.btnLockKeepOpenClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 40;
  if cbbLockCombo.ItemIndex > 0 then
    iIndex := 42;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  ArrayCopy(deviceStatus,0,extraData,0,4);
  ArrayCopy(gDeviceTools.GetBytesByNum(IntToStr(3),NumberType_Int32Bit),0,extraData,4,4);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Lock Keep Open: Success');
  end
  else begin
    ShowMessage('Lock Keep Open: Fail.');
  end;
end;

procedure TAccessControlForm.btnLockOpenClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 40;
  if cbbLockCombo.ItemIndex > 0 then 
    iIndex := 42;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  ArrayCopy(deviceStatus,0,extraData,0,4);
  ArrayCopy(gDeviceTools.GetBytesByNum(IntToStr(1),NumberType_Int32Bit),0,extraData,4,4);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Lock Open: Success');
  end
  else begin
    ShowMessage('Lock Open: Fail.');
  end;
end;

procedure TAccessControlForm.btnLockAutoClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iIndex: integer;
begin        
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 40;
  if cbbLockCombo.ItemIndex > 0 then
    iIndex := 42;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  ArrayCopy(deviceStatus,0,extraData,0,4);
  ArrayCopy(gDeviceTools.GetBytesByNum(IntToStr(2),NumberType_Int32Bit),0,extraData,4,4);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Lock Auto: Success');
  end
  else begin
    ShowMessage('Lock Auto: Fail.');
  end;
end;

procedure TAccessControlForm.btnLockKeepCloseClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 40;
  if cbbLockCombo.ItemIndex > 0 then
    iIndex := 42;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  ArrayCopy(deviceStatus,0,extraData,0,4);
  ArrayCopy(gDeviceTools.GetBytesByNum(IntToStr(4),NumberType_Int32Bit),0,extraData,4,4);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Lock Keep Close: Success');
  end
  else begin
    ShowMessage('Lock Keep Close: Fail.');
  end;
end;

procedure TAccessControlForm.btnSoundVoiceClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(2),NumberType_Int32Bit);
  ArrayCopy(deviceStatus,0,extraData,0,4);
  ArrayCopy(gDeviceTools.GetBytesByNum(IntToStr(cbbSoundList.ItemIndex),NumberType_Int32Bit),0,extraData,4,4);
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_PowerOff,extraProperty,gIDevice,extraData);
  if bRet then
  begin
    ShowMessage('Sound Voice: Success');
  end
  else begin
    ShowMessage('Sound Voice: Fail.');
  end;
end;

procedure TAccessControlForm.btnLockGetStatusClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData0,bData1,bData2,bData3: Byte;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 40;
  if cbbLockCombo.ItemIndex > 0 then
    iIndex := 42;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    GetArrayValue(deviceStatus,0, bData0);
    GetArrayValue(deviceStatus,1, bData1);
    GetArrayValue(deviceStatus,2, bData2);
    GetArrayValue(deviceStatus,3, bData3);
    ShowMessage('Door sensor =' + IntToStr(bData3 * $1000000 + bData2 * $10000 + bData1 * $100 + bData0));
  end
  else begin
    ShowMessage('Get Status: Fail.');
  end;
end;

procedure TAccessControlForm.btnLockGetEventClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  bData0,bData1,bData2,bData3: Byte;
  iIndex: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(8);
  iIndex := 41;
  if cbbLockCombo.ItemIndex > 0 then
    iIndex := 43;
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(iIndex),NumberType_Int32Bit);
  bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_SysParam,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    GetArrayValue(deviceStatus,0, bData0);
    GetArrayValue(deviceStatus,1, bData1);
    GetArrayValue(deviceStatus,2, bData2);
    GetArrayValue(deviceStatus,3, bData3);
    ShowMessage('Event =' + IntToStr(bData3 * $1000000 + bData2 * $10000 + bData1 * $100 + bData0));
  end
  else begin
    ShowMessage('Get Event: Fail.');
  end;
end;

end.
