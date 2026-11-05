unit CMFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, COMOBJ, OleCtnrs, Activex,Riss_Devices_TLB;

type
  TCMForm = class(TForm)
    btnOpen: TButton;
    btnClose: TButton;
    gb1: TGroupBox;
    edtDN: TEdit;
    edtPwd: TEdit;
    lbl1: TLabel;
    lbl2: TLabel;
    rbUSB: TRadioButton;
    rbComm: TRadioButton;
    rbTCP: TRadioButton;
    cbbComm: TComboBox;
    cbbBaudrate: TComboBox;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    lbl6: TLabel;
    edtIPAddress: TEdit;
    edtPort: TEdit;
    gb2: TGroupBox;
    btnSysSettings: TButton;
    btnAlarmSettings: TButton;
    btnMessageSettings: TButton;
    btnEmp: TButton;
    btnSLog: TButton;
    btnGLog: TButton;
    btnRealTime: TButton;
    btnAccessSet: TButton;
    rbP2P: TRadioButton;
    Label1: TLabel;
    edtP2PAddr: TEdit;
    Label2: TLabel;
    edtP2PServer: TEdit;
    procedure btnSysSettingsClick(Sender: TObject);
    procedure btnAlarmSettingsClick(Sender: TObject);
    procedure btnMessageSettingsClick(Sender: TObject);
    procedure btnSLogClick(Sender: TObject);
    procedure btnGLogClick(Sender: TObject);
    procedure btnEmpClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnRealTimeClick(Sender: TObject);
    procedure btnAccessSetClick(Sender: TObject);
  private
    { Private declarations }
    procedure SetDeviceInfo(ADevice: IDevice);
    procedure SetButtonStatus(AOpen: Boolean);
  public
    { Public declarations }
  end;

var
  CMForm: TCMForm;
  gIDevice: IDevice;
  gDeviceConnection: TZd2911DeviceConnection;
  gDeviceTools: TZd2911Tools;

implementation

uses SystemFrm, AlarmFrm, MessageFrm, SLogFrm, GLogFrm, EnrollFrm,
  RealTimeFrm, AccessControlFrm;

{$R *.dfm}

procedure TCMForm.btnSysSettingsClick(Sender: TObject);
begin
  ShowSystemFrm;
end;

procedure TCMForm.btnAlarmSettingsClick(Sender: TObject);
begin
  ShowAlarmFrm;
end;

procedure TCMForm.btnMessageSettingsClick(Sender: TObject);
begin
  ShowMessageFrm;
end;

procedure TCMForm.btnSLogClick(Sender: TObject);
begin
  ShowSLogFrm;
end;

procedure TCMForm.btnGLogClick(Sender: TObject);
begin
  ShowGLogFrm;
end;

procedure TCMForm.btnEmpClick(Sender: TObject);
begin
  ShowEnrollFrm;
end;

procedure TCMForm.FormCreate(Sender: TObject);
begin
  inherited;
  
  SetButtonStatus(False);
end;

procedure TCMForm.btnOpenClick(Sender: TObject);
begin
  gIDevice := CoDevice.Create();
  gDeviceConnection := TZd2911DeviceConnection.Create(Self);
  gDeviceTools := TZd2911Tools.Create(Self);
  SetDeviceInfo(gIDevice);
  if gDeviceConnection.Open(gIDevice) <= 0 then
  begin
    ShowMessage('Connect Device Fail');
    Exit;
  end
  else begin
    SetButtonStatus(True);
  end;
end;

procedure TCMForm.btnCloseClick(Sender: TObject);
begin
  if Assigned(gDeviceConnection) then
    gDeviceConnection.Close;

  SetButtonStatus(False);
end;

procedure TCMForm.SetDeviceInfo(ADevice: IDevice);
begin
  ADevice.DN := StrToInt(edtDN.Text);
  ADevice.Password := edtPwd.Text;
  ADevice.ConnectionModel := 5;
  ADevice.Model := 'ZDC2911';   
  if rbUSB.Checked then
    ADevice.CommunicationType := CommunicationType_Usb
  else if rbComm.Checked then
  begin
    ADevice.CommunicationType := CommunicationType_Serial;
    ADevice.SerialPort := cbbComm.ItemIndex + 1;
    ADevice.Baudrate := StrToInt(cbbBaudrate.Text);
  end
  else if rbTCP.Checked then
  begin
    ADevice.CommunicationType := CommunicationType_Tcp;
    ADevice.IpAddress := edtIPAddress.Text;
    ADevice.IpPort := StrToInt(edtPort.Text);
  end
  else begin
    ADevice.CommunicationType := CommunicationType_P2P;
    ADevice.SerialNumber := edtP2PAddr.Text;
    gDeviceTools.SetP2pServerIpAddress(edtP2PServer.Text);
  end;
end;

procedure TCMForm.SetButtonStatus(AOpen: Boolean);
begin
  btnOpen.Enabled := not AOpen;
  btnClose.Enabled := AOpen;

  btnSysSettings.Enabled := AOpen;
  btnAlarmSettings.Enabled := AOpen;
  btnMessageSettings.Enabled := AOpen;
  btnEmp.Enabled := AOpen;
  btnSLog.Enabled := AOpen;
  btnGLog.Enabled := AOpen;
  btnAccessSet.Enabled := AOpen; 
end;

procedure TCMForm.btnRealTimeClick(Sender: TObject);
begin
  ShowRealTimeFrm;
end;

procedure TCMForm.btnAccessSetClick(Sender: TObject);
begin
  ShowAccessFrm;
end;

end.
