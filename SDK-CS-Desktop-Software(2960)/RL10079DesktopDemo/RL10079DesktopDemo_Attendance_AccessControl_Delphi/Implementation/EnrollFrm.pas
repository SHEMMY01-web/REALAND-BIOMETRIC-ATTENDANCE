unit EnrollFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls,Activex, Riss_Devices_TLB;

type
  TEnrollForm = class(TForm)
    lbl1: TLabel;
    edtDN: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edtPassword: TEdit;
    Label4: TLabel;
    edtCardID: TEdit;
    Label5: TLabel;
    edtUserName: TEdit;
    Label6: TLabel;
    edtExtInfo: TEdit;
    cbbFingerNo: TComboBox;
    cbbPrivilege: TComboBox;
    btnExtInfoGet: TButton;
    btnExtInfoSet: TButton;
    btnReadFP: TButton;
    btnWriteFP: TButton;
    btnClearFP: TButton;
    btnReadPwd: TButton;
    btnWritePwd: TButton;
    btnClearPwd: TButton;
    btnReadCard: TButton;
    btnWriteCard: TButton;
    btnClearCard: TButton;
    btnGetUserName: TButton;
    btnSetUserName: TButton;
    btnClearUser: TButton;
    btnSetPrivilege: TButton;
    btnGetAllEnrollInfo: TButton;
    btnGetEnrollByID: TButton;
    btnSetAllEnrollData: TButton;
    btnGetAllEnrollData: TButton;
    Label7: TLabel;
    mmoFingerprint: TMemo;
    btnOpenFPData: TButton;
    btnSaveFPData: TButton;
    btnSelectAll: TButton;
    btnSaveAll: TButton;
    btnOpenAll: TButton;
    btnSaveOne: TButton;
    btnOpenOne: TButton;
    lvRecord: TListView;
    btnClearAllUser: TButton;
    dlgSave: TSaveDialog;
    dlgOpen: TOpenDialog;
    Label8: TLabel;
    cbbUserEnable: TComboBox;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtAttTypeID: TEdit;
    edtDeptID: TEdit;
    edtGroupID: TEdit;
    UpDown5: TUpDown;
    UpDown6: TUpDown;
    UpDown7: TUpDown;
    Label12: TLabel;
    edtPassZone: TEdit;
    UpDown1: TUpDown;
    Label13: TLabel;
    cbbLockControl: TComboBox;
    Label14: TLabel;
    cbbValidPeriod: TComboBox;
    Label15: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    edtReserve: TEdit;
    UpDown2: TUpDown;
    dtpStartDate: TDateTimePicker;
    dtpEndDate: TDateTimePicker;
    btnGetUserDetailInfo: TButton;
    btnSetUserDetailInfo: TButton;
    procedure btnClearAllUserClick(Sender: TObject);
    procedure btnClearUserClick(Sender: TObject);
    procedure btnReadFPClick(Sender: TObject);
    procedure btnSetPrivilegeClick(Sender: TObject);
    procedure btnGetUserNameClick(Sender: TObject);
    procedure btnSetUserNameClick(Sender: TObject);
    procedure btnExtInfoGetClick(Sender: TObject);
    procedure btnExtInfoSetClick(Sender: TObject);
    procedure btnReadCardClick(Sender: TObject);
    procedure btnWriteCardClick(Sender: TObject);
    procedure btnClearCardClick(Sender: TObject);
    procedure btnReadPwdClick(Sender: TObject);
    procedure btnWritePwdClick(Sender: TObject);
    procedure btnClearPwdClick(Sender: TObject);
    procedure btnWriteFPClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnClearFPClick(Sender: TObject);
    procedure btnGetAllEnrollInfoClick(Sender: TObject);
    procedure btnGetEnrollByIDClick(Sender: TObject);
    procedure btnGetAllEnrollDataClick(Sender: TObject);
    procedure btnSetAllEnrollDataClick(Sender: TObject);
    procedure btnSelectAllClick(Sender: TObject);
    procedure btnSaveFPDataClick(Sender: TObject);
    procedure btnOpenFPDataClick(Sender: TObject);
    procedure btnSaveAllClick(Sender: TObject);
    procedure btnOpenAllClick(Sender: TObject);
    procedure btnSaveOneClick(Sender: TObject);
    procedure btnOpenOneClick(Sender: TObject);
    procedure btnGetUserDetailInfoClick(Sender: TObject);
    procedure btnSetUserDetailInfoClick(Sender: TObject);
  private
    { Private declarations }
    FUserList: array of IUserExt;
    FpsaEnroll: PSafeArray;
    FpsaUserList: PSafeArray;
    shareUser: IUserExt;
    procedure AddRecord(AIUser: IUserExt);
  public
    { Public declarations }
  end;

var
  EnrollForm: TEnrollForm;
  procedure ShowEnrollFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowEnrollFrm;
begin
  EnrollForm := TEnrollForm.Create(Application);
  try
    EnrollForm.ShowModal;
  finally
    EnrollForm.Free;
  end;
end;

procedure TEnrollForm.btnClearAllUserClick(Sender: TObject);
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
    //Clear All users
    extraData := gDeviceTools.GetBytes('0');
    bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      ShowMessage('Clear All users: Success');
    end
    else begin
      ShowMessage('Clear All users: Fail');
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

procedure TEnrollForm.btnClearUserClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
begin
  //Clear one user
  extraData := gDeviceTools.GetBytes(Trim(edtDN.Text));
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, gIDevice, extraData);
  if bRet then
  begin
    ShowMessage('Clear one user: Success');
  end
  else begin
    ShowMessage('Clear one user: Fail');
  end;
end;

procedure TEnrollForm.btnReadFPClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psaenroll: PSafeArray;
  enrolls0: array of IEnrollExt;
  enrolls: array of IEnrollExt;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);
  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ReadFingerprint),NumberType_Int32Bit);
    user := CoUserExt.Create;
    user.DIN := Trim(edtDN.Text);
    SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
    //SetLength(enrolls0,1);
    enrolls0[0].DIN := user.DIN;
    enrolls0[0].EnrollType := cbbFingerNo.ItemIndex;
    psaenroll := CreateSafeArray(MaxFingerprintLength);
    enrolls0[0].SetFingerprint(psaenroll);
    SafeArrayUnaccessData(user.Enrolls);
    bRet := gDeviceConnection.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
    if bRet then
    begin
      SetLength(enrolls, user.Enrolls.rgsabound[0].cElements);
      SafeArrayAccessData(user.Enrolls,Pointer(enrolls));
      ArrayCopy(enrolls[0].Fingerprint,0,FpsaEnroll,0,MaxFingerprintLength);
      mmoFingerprint.Text := ConvertFpToStr(FpsaEnroll);
      SafeArrayUnaccessData(user.Enrolls);
    end
    else begin
      ShowMessage('get fp: Fail');
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

procedure TEnrollForm.btnSetPrivilegeClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
begin
  //set user privilege
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  user.Privilege := GetPrivilege(cbbPrivilege.ItemIndex);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_Privilege, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('set user privilege: Success');
  end
  else begin
    ShowMessage('set user privilege: Fail');
  end;
end;

procedure TEnrollForm.btnGetUserNameClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
begin
  //get user name
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  bRet := gDeviceConnection.GetPropertyExt(UserProperty_UserName, extraProperty, user, extraData);
  if bRet then
  begin
    edtUserName.Text := user.UserName;
  end
  else begin
    ShowMessage('get user name: Fail');
  end;
end;

procedure TEnrollForm.btnSetUserNameClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
begin
  //Set user name
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  user.UserName := Trim(edtUserName.Text);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserName, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('set user name: success');
  end
  else begin
    ShowMessage('set user name: Fail');
  end;
end;

procedure TEnrollForm.btnExtInfoGetClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
begin
  //get user extinfo
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  bRet := gDeviceConnection.GetPropertyExt(UserProperty_UserExtInfo, extraProperty, user, extraData);
  if bRet then
  begin
    edtExtInfo.Text := user.Comment;
  end
  else begin
    ShowMessage('get user extinfo: Fail');
  end;
end;

procedure TEnrollForm.btnExtInfoSetClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
begin
  //Set user extinfo
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  user.Comment := Trim(edtExtInfo.Text);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserExtInfo, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('set user extinfo: success');
  end
  else begin
    ShowMessage('set user extinfo: Fail');
  end;     
end;

procedure TEnrollForm.btnReadCardClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
  enrolls: array of IEnrollExt;
begin
  //get card
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ReadCard),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    SetLength(enrolls, user.Enrolls.rgsabound[0].cElements);
    SafeArrayAccessData(user.Enrolls,Pointer(enrolls));
    edtCardID.Text := enrolls[0].CardID;
    SafeArrayUnaccessData(user.Enrolls);
  end
  else begin
    ShowMessage('get card: Fail');
  end;
end;

procedure TEnrollForm.btnWriteCardClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
begin
  //set card
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_WriteCard),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  enrolls0[0].CardID := Trim(edtCardID.Text);
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('set card: Success');
  end
  else begin
    ShowMessage('set card: Fail');
  end;
end;

procedure TEnrollForm.btnClearCardClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
begin
  //clear card
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ClearCard),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('clear card: Success');
  end
  else begin
    ShowMessage('clear card: Fail');
  end;
end;

procedure TEnrollForm.btnReadPwdClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
  enrolls: array of IEnrollExt;
begin
  //get Password
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ReadPassword),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    SetLength(enrolls, user.Enrolls.rgsabound[0].cElements);
    SafeArrayAccessData(user.Enrolls,Pointer(enrolls));
    edtPassword.Text := enrolls[0].Password;
    SafeArrayUnaccessData(user.Enrolls);
  end
  else begin
    ShowMessage('get Password: Fail');
  end;
end;

procedure TEnrollForm.btnWritePwdClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
begin
  //set password
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_WritePassword),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  enrolls0[0].Password := Trim(edtPassword.Text);
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('set password: Success');
  end
  else begin
    ShowMessage('set password: Fail');
  end;
end;

procedure TEnrollForm.btnClearPwdClick(Sender: TObject);
var
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  enrolls0: array of IEnrollExt;
begin
  //clear password
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ClearPassword),NumberType_Int32Bit);
  user := CoUserExt.Create;
  user.DIN := Trim(edtDN.Text);
  SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
  //SetLength(enrolls0,1);
  enrolls0[0].DIN := user.DIN;
  SafeArrayUnaccessData(user.Enrolls);
  bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
  if bRet then
  begin
    ShowMessage('clear password: Success');
  end
  else begin
    ShowMessage('clear password: Fail');
  end;
end;

procedure TEnrollForm.btnWriteFPClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psaenroll: PSafeArray;
  enrolls0: array of IEnrollExt;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_WriteFingerprint),NumberType_Int32Bit);
    user := CoUserExt.Create;
    user.DIN := Trim(edtDN.Text);
    SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
    //SetLength(enrolls0,1);
    enrolls0[0].DIN := user.DIN;
    enrolls0[0].EnrollType := cbbFingerNo.ItemIndex;
    psaenroll := CreateSafeArray(MaxFingerprintLength * (cbbFingerNo.ItemIndex + 1));
    ArrayCopy(FpsaEnroll,0,psaenroll,MaxFingerprintLength * cbbFingerNo.ItemIndex,MaxFingerprintLength);
    enrolls0[0].SetFingerprint(psaenroll);
    SafeArrayUnaccessData(user.Enrolls);
    bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
    if bRet then
    begin
      ShowMessage('set fp: Sucess');
    end
    else begin
      ShowMessage('set fp: Fail');
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

procedure TEnrollForm.FormCreate(Sender: TObject);
begin
  inherited;
  FpsaEnroll := CreateSafeArray(MaxFingerprintLength);
  dtpStartDate.Datetime := EncodeDate(2000,1,1);
  dtpEndDate.Datetime := EncodeDate(2099,12,31);
end;

procedure TEnrollForm.btnClearFPClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psaenroll: PSafeArray;
  enrolls0: array of IEnrollExt;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ClearFingerprint),NumberType_Int32Bit);
    user := CoUserExt.Create;
    user.DIN := Trim(edtDN.Text);
    SafeArrayAccessData(user.Enrolls,Pointer(enrolls0));
    //SetLength(enrolls0,1);
    enrolls0[0].DIN := user.DIN;
    enrolls0[0].EnrollType := cbbFingerNo.ItemIndex;
    psaenroll := CreateSafeArray(MaxFingerprintLength);
    enrolls0[0].SetFingerprint(psaenroll);
    SafeArrayUnaccessData(user.Enrolls);
    bRet := gDeviceConnection.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData);
    if bRet then
    begin
      ShowMessage('clear fp: Sucess');
    end
    else begin
      ShowMessage('clear fp: Fail');
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

procedure TEnrollForm.btnGetAllEnrollInfoClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psauserList: PSafeArray;
  users: array of IUserExt;
  i,iUserNum: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytes('0');
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      psauserList := gDeviceTools.GetAllUserExtWithoutEnroll(extraData);
      iUserNum := psauserList.rgsabound[0].cElements;
      SetLength(users, iUserNum);
      SafeArrayAccessData(psauserList,Pointer(users));
      SafeArrayUnaccessData(psauserList);
      lvRecord.Items.Clear;
      for i := 0 to iUserNum - 1 do
      begin
        user := users[i];
        AddRecord(user);
      end;
    end
    else begin
      ShowMessage('get all enroll: Fail');
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

procedure TEnrollForm.AddRecord(AIUser: IUserExt);
var
  lItem: TListItem;
  i: integer;
  enrolls: array of IEnrollExt;
  enroll: IEnrollExt;
begin
  lItem := lvRecord.Items.Add;
  lItem.Caption := IntToStr(lvRecord.Items.Count);
  lItem.SubItems.Add(AIUser.DIN);
  lItem.SubItems.Add(AIUser.UserName);

  SetLength(enrolls, AIUser.Enrolls.rgsabound[0].cElements);
  SafeArrayAccessData(AIUser.Enrolls,Pointer(enrolls));
  enroll := enrolls[0];
  SafeArrayUnaccessData(AIUser.Enrolls);

  for i := 0 to MaxFingerprintCount - 1 do
  begin
    if gDeviceTools.BitCheck(enroll.EnrollType,i) = 0 then
      lItem.SubItems.Add('N')
    else
      lItem.SubItems.Add('Y');
  end;
  if gDeviceTools.BitCheck(enroll.EnrollType,10) = 0 then
    lItem.SubItems.Add('N')
  else
    lItem.SubItems.Add('Y');
  if gDeviceTools.BitCheck(enroll.EnrollType,11) = 0 then
    lItem.SubItems.Add('N')
  else
    lItem.SubItems.Add('Y');
  lItem.SubItems.Add(PrivilegeToStr(AIUser.Privilege));
  
end;

procedure TEnrollForm.btnGetEnrollByIDClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psauserList: PSafeArray;
  users: array of IUserExt;
  i,iUserNum: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytes(Trim(edtDN.Text));
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      psauserList := gDeviceTools.GetAllUserExtWithoutEnroll(extraData);
      iUserNum := psauserList.rgsabound[0].cElements;
      SetLength(users, iUserNum);
      SafeArrayAccessData(psauserList,Pointer(users));
      SafeArrayUnaccessData(psauserList);
      lvRecord.Items.Clear;
      for i := 0 to iUserNum - 1 do
      begin
        user := users[i];
        bRet := gDeviceConnection.GetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData);
        if not bRet then
        begin
          ShowMessage('Get enroll data fail');
          Break;
        end;
        AddRecord(user);
      end;
    end
    else begin
      ShowMessage('get user enroll: Fail');
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

procedure TEnrollForm.btnGetAllEnrollDataClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user,u: IUserExt;
  //psauserList: PSafeArray;
  i,iUserNum: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    extraProperty := gDeviceTools.GetBytes('0');
    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      FpsaUserList := gDeviceTools.GetAllUserExtWithoutEnroll(extraData);
      iUserNum := FpsaUserList.rgsabound[0].cElements;
      SafeArrayAccessData(FpsaUserList,Pointer(FUserList));
      SafeArrayUnaccessData(FpsaUserList);
      //SetLength(FUserList, iUserNum);
      lvRecord.Items.Clear;
      for i := 0 to iUserNum - 1 do
      begin
        user := FUserList[i];
        u := user;
        bRet := gDeviceConnection.GetPropertyExt(UserProperty_Enroll, extraProperty, u, extraData);
        if not bRet then
        begin
          ShowMessage('Get all enroll data fail');
          Break;
        end;
        AddRecord(user);
      end;
    end
    else begin
      ShowMessage('get all enroll: Fail');
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

procedure TEnrollForm.btnSetAllEnrollDataClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  i,j: integer;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    for j := 0 to lvRecord.Items.Count - 1 do
    begin
      if not lvRecord.Items[j].Checked then
        Continue;
      for i := 0 to Length(FUserList) - 1 do
      begin
        user := FUserList[i];
        if user.DIN <> lvRecord.Items[j].SubItems[0] then
          Continue;
        bRet := gDeviceConnection.SetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData);
        if not bRet then
        begin
          ShowMessage('set all enroll data fail');
          Break;
        end;
      end;
    end;
    if bRet then
      ShowMessage('set all enroll data success');

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

procedure TEnrollForm.btnSelectAllClick(Sender: TObject);
var
  i: integer;
begin
  for i := 0 to lvRecord.Items.Count - 1 do
  begin
    lvRecord.Items[i].Checked := True;
  end;

end;

procedure TEnrollForm.btnSaveFPDataClick(Sender: TObject);
var
  sFileName: string;
  lFileStream: TFileStream;
  bByte: Byte;
  i: integer;
begin
  dlgSave.Filter := 'Fingerprint File(*.fpt)|*.fpt';
  dlgSave.FilterIndex := 1;
  if dlgSave.Execute then
  begin
    sFileName := dlgSave.FileName;
    if Pos('.fpt',sFileName) = 0 then
      sFileName := sFileName + '.fpt';
    lFileStream := TFileStream.Create(sFileName,fmCreate);
    try
      for i := 0 to MaxFingerprintLength - 1 do
      begin
        GetArrayValue(FpsaEnroll,i,bByte);
        lFileStream.Write(bByte,1);
      end;
    finally
      lFileStream.Free;
    end;
  end;
end;

procedure TEnrollForm.btnOpenFPDataClick(Sender: TObject);
var
  sFileName: string;
  lFileStream: TFileStream;
  bByte: Byte;
  i: integer;
begin
  dlgOpen.Filter := 'Fingerprint File(*.fpt)|*.fpt';
  dlgOpen.FilterIndex := 1;
  if dlgOpen.Execute then
  begin
    sFileName := dlgOpen.FileName;
    lFileStream := TFileStream.Create(sFileName,fmOpenRead);
    try
      for i := 0 to MaxFingerprintLength - 1 do
      begin
        lFileStream.Read(bByte,1);
        SetArrayValue(FpsaEnroll,i,bByte);
      end;
      mmoFingerprint.Text := ConvertFpToStr(FpsaEnroll);
    finally
      lFileStream.Free;
    end;
  end;
end;

procedure TEnrollForm.btnSaveAllClick(Sender: TObject);
var
  lZd2911EnrollFile: IZd2911EnrollFile;
  sFileName: string;
begin
  dlgSave.Filter := 'Fingerprint File(*.fpt)|*.fpt';
  dlgSave.FileName := 'AllEnrollData.fpt';
  dlgSave.FilterIndex := 1;
  if dlgSave.Execute then
  begin
    sFileName := dlgSave.FileName;
    if Pos('.fpt',sFileName) = 0 then
      sFileName := sFileName + '.fpt';
    lZd2911EnrollFile := CoZd2911EnrollFile.Create;
    if lZd2911EnrollFile.SaveAllUserExtEnrollDataAsDB(sFileName,FpsaUserList) then
      ShowMessage('save all enroll success')
    else
      ShowMessage('save all enroll fail');
  end;
end;

procedure TEnrollForm.btnOpenAllClick(Sender: TObject);
var
  sFileName: string;
  i,iUserNum: integer;
  lZd2911EnrollFile: IZd2911EnrollFile;
  user: IUserExt;
begin
  dlgOpen.Filter := 'Fingerprint File(*.fpt)|*.fpt';
  dlgOpen.FilterIndex := 1;
  if dlgOpen.Execute then
  begin
    sFileName := dlgOpen.FileName;
    
    lZd2911EnrollFile := CoZd2911EnrollFile.Create;
    if lZd2911EnrollFile.LoadAllUserExtEnrollDataFromDB(sFileName,FpsaUserList) then
    begin
      iUserNum := FpsaUserList.rgsabound[0].cElements;
      SafeArrayAccessData(FpsaUserList,Pointer(FUserList));
      SafeArrayUnaccessData(FpsaUserList);
      SetLength(FUserList, iUserNum);
      lvRecord.Items.Clear;
      for i := 0 to iUserNum - 1 do
      begin
        user := FUserList[i];
        AddRecord(user);
      end;
      ShowMessage('open all enroll success');
    end
    else
      ShowMessage('open all enroll fail');
  end;
end;

procedure TEnrollForm.btnSaveOneClick(Sender: TObject);
var
  bRet: Boolean;
  user: IUserExt;
  i,j: integer;  
  lZd2911EnrollFile: IZd2911EnrollFile;
  sFileName,sPath: string;
begin
  lZd2911EnrollFile := CoZd2911EnrollFile.Create;
  sPath := ExtractFilePath(ParamStr(0)) + '\userdata';
  if not DirectoryExists(sPath) then
    ForceDirectories(sPath);
  bRet := True;
  for j := 0 to lvRecord.Items.Count - 1 do
  begin
    if not lvRecord.Items[j].Checked then
      Continue;
    for i := 0 to Length(FUserList) - 1 do
    begin
      user := FUserList[i];
      if user.DIN <> lvRecord.Items[j].SubItems[0] then
        Continue;
      sFileName := sPath + '\OD_' + user.DIN + '.db';
      bRet := lZd2911EnrollFile.SaveUserExtEnrollDataAsDB(sFileName,user);
      if not bRet then
      begin
        ShowMessage('save one enroll to file fail');
        Break;
      end;
    end;
  end;
  if bRet then
    ShowMessage('save one enroll to file success');
end;

procedure TEnrollForm.btnOpenOneClick(Sender: TObject);
var
  sFileName: string;
  i,j: integer;
  lZd2911EnrollFile: IZd2911EnrollFile;
  user: IUserExt;
begin
  dlgOpen.Filter := 'OneEnrollData File(OD_*.DB)|OD_*.DB';
  dlgOpen.FilterIndex := 1;
  dlgOpen.Options := dlgOpen.Options + [ofAllowMultiSelect];
  if dlgOpen.Execute then
  begin
    lZd2911EnrollFile := CoZd2911EnrollFile.Create;
    SetLength(FUserList,dlgOpen.Files.Count);
    for j := 0 to dlgOpen.Files.Count - 1 do
    begin
      sFileName := dlgOpen.Files[j];
      user := CoUserExt.Create;
      if lZd2911EnrollFile.LoadUserExtEnrollDataFromDB(sFileName,user) then
      begin
        FUserList[j] := user;
      end
      else begin
        ShowMessage('open one enroll file fail');
        Exit;
      end;
    end;
    lvRecord.Items.Clear;
    for i := 0 to dlgOpen.Files.Count - 1 do
    begin
      user := FUserList[i];
      AddRecord(user);
    end;
    ShowMessage('open one enroll file success');
  end;
end;

procedure TEnrollForm.btnGetUserDetailInfoClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psaenroll: PSafeArray;
  enrolls0: array of IEnrollExt;
  enrolls: array of IEnrollExt;
begin
  extraProperty := CreateSafeArray(4);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);
  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //extraProperty := gDeviceTools.GetBytesByNum(IntToStr(UserEnrollCommand_ReadFingerprint),NumberType_Int32Bit);
    user := CoUserExt.Create;
    user.DIN := Trim(edtDN.Text);
    bRet := gDeviceConnection.GetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData);
    if bRet then
    begin
      SetLength(enrolls, user.Enrolls.rgsabound[0].cElements);
      SafeArrayAccessData(user.Enrolls,Pointer(enrolls));
      edtPassword.Text := enrolls[0].Password;
      edtCardID.Text := enrolls[0].CardID;
      edtUserName.Text := user.UserName;
      edtExtInfo.Text := user.Comment;
      if user.Enable then
       cbbUserEnable.ItemIndex := 1
      else
        cbbUserEnable.ItemIndex := 0;
      edtAttTypeID.Text := IntToStr(user.AttType);
      edtGroupID.Text := IntToStr(user.UserGroup);
      edtDeptID.Text := IntToStr(user.Department);
      edtPassZone.Text := IntToStr(user.AccessTimeZone);
      cbbLockControl.ItemIndex := user.AccessControl;
      if user.ValidityPeriod then
       cbbValidPeriod.ItemIndex := 1
      else
        cbbValidPeriod.ItemIndex := 0;
      dtpStartDate.Date := user.ValidDate;
      dtpEndDate.Date := user.InvalidDate;

      ArrayCopy(enrolls[0].Fingerprint,0,FpsaEnroll,0,MaxFingerprintLength);
      mmoFingerprint.Text := ConvertFpToStr(FpsaEnroll);
      SafeArrayUnaccessData(user.Enrolls);
      shareUser := user;
    end
    else begin
      ShowMessage('Get user detail info: Fail');
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

procedure TEnrollForm.btnSetUserDetailInfoClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  user: IUserExt;
  psaenroll: PSafeArray;
  enrolls0: array of IEnrollExt;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    if shareUser = nil then
    begin
      shareUser := CoUserExt.Create;
    end;    
    shareUser.DIN := Trim(edtDN.Text);
    shareUser.Privilege := GetPrivilege(cbbPrivilege.ItemIndex);
    SafeArrayAccessData(shareUser.Enrolls,Pointer(enrolls0));
    //SetLength(enrolls0,1);
    enrolls0[0].DIN := shareUser.DIN;
    enrolls0[0].Password := edtPassword.Text;
    enrolls0[0].CardID := edtCardID.Text;
    enrolls0[0].EnrollType := 0;
    if Trim(edtPassword.Text) <> '' then
      enrolls0[0].EnrollType := enrolls0[0].EnrollType + gDeviceTools.SetBit(0, 10); //password is 10, fp0-fp9, card is 11
    if Trim(edtCardID.Text) <> '' then
      enrolls0[0].EnrollType := enrolls0[0].EnrollType + gDeviceTools.SetBit(0, 11); //password is 10, fp0-fp9, card is 11
    shareUser.UserName := edtUserName.Text;
    shareUser.Comment := edtExtInfo.Text;

    shareUser.Enable := cbbUserEnable.ItemIndex = 1;
    shareUser.AttType := StrToInt(edtAttTypeID.Text);
    shareUser.AccessControl := cbbLockControl.ItemIndex;
    shareUser.AccessTimeZone := StrToInt(edtPassZone.Text);
    shareUser.Department := StrToInt(edtDeptID.Text);
    shareUser.UserGroup := StrToInt(edtGroupID.Text);
    shareUser.ValidityPeriod := cbbValidPeriod.ItemIndex = 1;
    shareUser.ValidDate := dtpStartDate.Date;
    shareUser.InvalidDate := dtpEndDate.Date;
    SafeArrayUnaccessData(shareUser.Enrolls);

    bRet := gDeviceConnection.SetPropertyExt(UserProperty_Enroll, extraProperty, shareUser, extraData);
    if bRet then
    begin
      ShowMessage('Set User Detail Info: Sucess');
    end
    else begin
      ShowMessage('Set User Detail Info: Fail');
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
