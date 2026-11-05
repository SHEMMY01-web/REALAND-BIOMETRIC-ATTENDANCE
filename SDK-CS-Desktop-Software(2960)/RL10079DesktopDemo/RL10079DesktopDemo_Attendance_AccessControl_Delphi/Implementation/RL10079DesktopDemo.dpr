program RL10079DesktopDemo;

uses
  Forms,
  CMFrm in 'CMFrm.pas' {CMForm},
  Riss_Devices_TLB in 'Riss_Devices_TLB.pas',
  SystemFrm in 'SystemFrm.pas' {SystemForm},
  AlarmFrm in 'AlarmFrm.pas' {AlarmForm},
  MessageFrm in 'MessageFrm.pas' {MessageForm},
  SLogFrm in 'SLogFrm.pas' {SLogForm},
  GLogFrm in 'GLogFrm.pas' {GLogForm},
  EnrollFrm in 'EnrollFrm.pas' {EnrollForm},
  CommonUnt in 'CommonUnt.pas',
  RealTimeFrm in 'RealTimeFrm.pas' {RealTimeForm},
  AccessControlFrm in 'AccessControlFrm.pas' {AccessControlForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCMForm, CMForm);
  Application.Run;
end.
