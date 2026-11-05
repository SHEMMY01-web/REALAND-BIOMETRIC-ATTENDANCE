unit GLogFrm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls,Activex, Riss_Devices_TLB;

type
  TGLogForm = class(TForm)
    dtpFromDate: TDateTimePicker;
    dtpToDate: TDateTimePicker;
    chkNewFlag: TCheckBox;
    btnDownloadNew: TButton;
    btnDownloadAll: TButton;
    btnClear: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lvRecord: TListView;
    procedure btnDownloadNewClick(Sender: TObject);
    procedure btnDownloadAllClick(Sender: TObject);
    procedure btnClearClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure AddRecord(AIRecord: IRecordExt);
  public
    { Public declarations }
  end;

var
  GLogForm: TGLogForm;
  procedure ShowGLogFrm;

implementation

uses CMFrm, CommonUnt;

{$R *.dfm}

procedure ShowGLogFrm;
begin
  GLogForm := TGLogForm.Create(Application);
  try
    GLogForm.ShowModal;
  finally
    GLogForm.Free;
  end;
end;

procedure TGLogForm.btnDownloadNewClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  allAtt: PSafeArray;
  i,recordnum: integer;
  records: array of IRecordExt;
  year,month,day: Word;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get new attendance logs
    //new attendance logs, the 1st parameter is 1: get new attendance logs, the 2nd parameter is¡°removing the new log mark¡±
    SetArrayValue(extraProperty,0,1);
    if chkNewFlag.Checked then
      SetArrayValue(extraProperty,1,1)
    else
      SetArrayValue(extraProperty,1,0);
    DecodeDate(dtpFromDate.Date,year,month,day);
    SetArrayValue(extraData,0,year - 2000);   //start year   2013 - 2000
    SetArrayValue(extraData,1,month);    //start month
    SetArrayValue(extraData,2,day);    //start day
    DecodeDate(dtpToDate.Date,year,month,day);
    SetArrayValue(extraData,3,year - 2000);   //end year   2099 - 2000
    SetArrayValue(extraData,4,month);   //end month
    SetArrayValue(extraData,5,day);   //end day

    SafeArrayUnaccessData(extraProperty);
    SafeArrayUnaccessData(extraData);

    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_AttRecords, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      allAtt := gDeviceTools.GetGLogList(extraData);
      recordnum := allAtt.rgsabound[0].cElements;
      SetLength(records, recordnum);
      SafeArrayAccessData(allAtt,Pointer(records));
      lvRecord.Items.Clear;
      for i := 0 to recordnum - 1 do
      begin
        AddRecord(records[i]);
      end;
      SafeArrayUnaccessData(allAtt);
    end
    else begin
      ShowMessage('Get GLog data: Fail');
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

procedure TGLogForm.btnDownloadAllClick(Sender: TObject);
var
  deviceStatus: PSafeArray;
  extraData: PSafeArray;
  extraProperty: PSafeArray;
  bRet: Boolean;
  allAtt: PSafeArray;
  i,recordnum: integer;
  records: array of IRecordExt;
  year,month,day: Word;
begin
  extraProperty := CreateSafeArray(2);
  extraData := CreateSafeArray(6);
  deviceStatus := gDeviceTools.GetBytesByNum(IntToStr(DeviceBusy),NumberType_Int32Bit);

  //Setting device communication status to busy
  bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_Enable,extraProperty,gIDevice,deviceStatus);
  if bRet then
  begin
    //Get all attendance logs
    //All attendance logs, the 1st parameter is 0: get all attendance logs, the 2nd parameter is¡°removing the new log mark¡±
    SetArrayValue(extraProperty,0,0);
    if chkNewFlag.Checked then
      SetArrayValue(extraProperty,1,1)
    else
      SetArrayValue(extraProperty,1,0);
    DecodeDate(dtpFromDate.Date,year,month,day);
    SetArrayValue(extraData,0,year - 2000);   //start year   2013 - 2000
    SetArrayValue(extraData,1,month);    //start month
    SetArrayValue(extraData,2,day);    //start day
    DecodeDate(dtpToDate.Date,year,month,day);
    SetArrayValue(extraData,3,year - 2000);   //end year   2099 - 2000
    SetArrayValue(extraData,4,month);   //end month
    SetArrayValue(extraData,5,day);   //end day

    SafeArrayUnaccessData(extraProperty);
    SafeArrayUnaccessData(extraData);

    bRet := gDeviceConnection.GetPropertyExt_2(DeviceProperty_AttRecords, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      allAtt := gDeviceTools.GetGLogList(extraData);
      recordnum := allAtt.rgsabound[0].cElements;
      SetLength(records, recordnum);
      SafeArrayAccessData(allAtt,Pointer(records));
      lvRecord.Items.Clear;
      for i := 0 to recordnum - 1 do
      begin
        AddRecord(records[i]);
      end;
      SafeArrayUnaccessData(allAtt);
    end
    else begin
      ShowMessage('Get All GLog data: Fail');
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

procedure TGLogForm.btnClearClick(Sender: TObject);
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
    //Clear All Glog
    bRet := gDeviceConnection.SetPropertyExt_2(DeviceProperty_AttRecords, extraProperty, gIDevice, extraData);
    if bRet then
    begin
      ShowMessage('Clear All Glog: Success');
    end
    else begin
      ShowMessage('Clear All Glog: Fail');
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

procedure TGLogForm.AddRecord(AIRecord: IRecordExt);
var
  lItem: TListItem;
begin

  lItem := lvRecord.Items.Add;
  lItem.Caption := IntToStr(lvRecord.Items.Count);
  lItem.SubItems.Add(IntToStr(AIRecord.DN));
  lItem.SubItems.Add(AIRecord.DIN);
  lItem.SubItems.Add(GetGLogVerify(AIRecord.Verify));
  lItem.SubItems.Add(IntToStr(AIRecord.Action));
  lItem.SubItems.Add(FormatDateTime('yyyy-mm-dd hh:nn:ss', AIRecord.Clock));
end;

procedure TGLogForm.FormCreate(Sender: TObject);
begin
  inherited;
  dtpFromDate.Date := IncMonth(Now,-1);
  dtpToDate.Date := Now;
end;

end.
