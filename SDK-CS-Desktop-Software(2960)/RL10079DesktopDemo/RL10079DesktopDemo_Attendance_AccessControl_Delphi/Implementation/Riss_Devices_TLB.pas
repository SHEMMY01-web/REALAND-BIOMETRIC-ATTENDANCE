unit Riss_Devices_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// PASTLWTR : 1.2
// File generated on 2015-10-19 17:57:04 from Type Library described below.

// ************************************************************************  //
// Type Lib: E:\Ӳ������\���\RL10079DesktopDemo_Attendance_AccessControl_Delphi\Bin\dll\Riss.Devices.tlb (1)
// LIBID: {CF89F668-2559-4608-8AA5-E3E06384E454}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.0 mscorlib, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscorlib.tlb)
//   (3) v2.0 System_EnterpriseServices, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.EnterpriseServices.tlb)
//   (4) v2.0 mscoree, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscoree.tlb)
// Errors:
//   Hint: TypeInfo 'Record' changed to 'Record_'
//   Hint: Member 'Record' of 'IReceiveEventArgExt' changed to 'Record_'
//   Hint: Parameter 'type' of IZd2911Tools.GetStringByNum changed to 'type_'
//   Hint: Parameter 'type' of IZd2911Tools.GetBytesByNum changed to 'type_'
//   Hint: Member 'Label' of 'IDevice' changed to 'Label_'
//   Hint: Parameter 'property' of IZd2911DeviceConnection.SetPropertyExt changed to 'property_'
//   Hint: Parameter 'property' of IZd2911DeviceConnection.GetPropertyExt changed to 'property_'
//   Hint: Parameter 'property' of IZd2911DeviceConnection.SetPropertyExt_2 changed to 'property_'
//   Hint: Parameter 'property' of IZd2911DeviceConnection.GetPropertyExt_2 changed to 'property_'
//   Error creating palette bitmap of (TUser) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TEnroll) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZdFpReader) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZd2911EnrollFile) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZd2911Tools) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TRecord) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TRLYN060) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TReceiveEventArg) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZd2911Listener) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TReceiveEventArgExt) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TDevice) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TConnectionException) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZd2911DeviceConnection) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TZd2911EnrollFileManagement) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TEnrollExt) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TUserExt) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TRecordExt) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TMonitor) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TP2pUtils) : Server mscoree.dll contains no icons
//   Error creating palette bitmap of (TSex) : Server mscoree.dll contains no icons
// ************************************************************************ //
// *************************************************************************//
// NOTE:                                                                      
// Items guarded by $IFDEF_LIVE_SERVER_AT_DESIGN_TIME are used by properties  
// which return objects that may need to be explicitly created via a function 
// call prior to any access via the property. These items have been disabled  
// in order to prevent accidental use from within the object inspector. You   
// may enable them by defining LIVE_SERVER_AT_DESIGN_TIME or by selectively   
// removing them from the $IFDEF blocks. However, such items must still be    
// programmatically created via a method of the appropriate CoClass before    
// they can be used.                                                          
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
interface

uses Windows, ActiveX, Classes, Graphics, mscoree_TLB, mscorlib_TLB, OleServer, StdVCL, 
System_EnterpriseServices_TLB, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  Riss_DevicesMajorVersion = 1;
  Riss_DevicesMinorVersion = 0;

  LIBID_Riss_Devices: TGUID = '{CF89F668-2559-4608-8AA5-E3E06384E454}';

  IID__User: TGUID = '{87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}';
  IID__Enroll: TGUID = '{8303232C-11FC-3D42-A7A2-1641CE2B609D}';
  IID__DeviceConnection: TGUID = '{A63C9BB7-AE2B-3B54-9558-506792E6D256}';
  IID__ZdFpReader: TGUID = '{17068156-9EBD-3018-9A85-5DA5EC50C26C}';
  IID_IZd2911EnrollFile: TGUID = '{E21860DC-55D6-42DF-A999-DC4FB3EE959D}';
  CLASS_Zd2911EnrollFile: TGUID = '{3BE9683B-9E12-4159-A5FB-A80790FCAB43}';
  IID_IZd2911Listener: TGUID = '{433ABD46-80F4-4ABC-A80D-C365F93F1297}';
  IID_IReceiveEventArgExt: TGUID = '{7A3D809B-8D97-4411-9A91-504B806AF6EC}';
  IID_ISex: TGUID = '{C2FE27AA-AE68-486C-ACCB-2B43ED66169E}';
  IID__Zd2911Utils: TGUID = '{0F7F4B57-5DC7-3A3C-995F-502466DA2B71}';
  IID_IUserExt: TGUID = '{13E5AFC5-D6D7-452A-879B-06F134E07D82}';
  IID_IRecordExt: TGUID = '{8D242E69-0A61-4C3B-9557-C8BEFEAC875A}';
  IID_IMonitor: TGUID = '{C929500D-BD1A-478A-9038-76EEA452C792}';
  IID_IEnrollExt: TGUID = '{1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}';
  IID__ZdCommBase: TGUID = '{B69C323A-253C-3D18-9B56-305414323D88}';
  IID_IZd2911Tools: TGUID = '{9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}';
  CLASS_Zd2911Tools: TGUID = '{5FCCCFAE-27BC-4A1D-BB6E-5558ECD42D30}';
  IID__Record: TGUID = '{872E1A36-0C41-348D-B42F-EB08F2ADC6FD}';
  IID__RLYN060: TGUID = '{BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}';
  IID__ReceiveHandler: TGUID = '{DF5EE57E-4F74-3B21-BBCF-3B18A80E8CCE}';
  IID__Zd2911Monitor: TGUID = '{819EC030-5F30-3B34-A7AC-2229738A4927}';
  IID__ReceiveEventArg: TGUID = '{76CCC584-F45C-30CF-A7A2-FE85DEE0777D}';
  IID__ReceiveHandlerExt: TGUID = '{4242B135-ADEA-32B2-A81F-DFEE0AC4E351}';
  CLASS_Zd2911Listener: TGUID = '{F4DC2752-B340-4371-811F-5FFF33EF45F5}';
  CLASS_ReceiveEventArgExt: TGUID = '{8C77333A-B46C-4258-87D7-EFD6025579E0}';
  IID_IDevice: TGUID = '{F282EC34-C902-43B0-9CC7-EB7FC9807779}';
  CLASS_Device: TGUID = '{2985032F-FA75-428A-B840-3A74FBEA56BA}';
  IID__ConnectionException: TGUID = '{61DBAA57-0CE2-3801-8E78-A21669BD1547}';
  IID_IZd2911DeviceConnection: TGUID = '{AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}';
  CLASS_Zd2911DeviceConnection: TGUID = '{8700A266-9300-43AA-8FCE-2A25EE51BAED}';
  IID__Zd2911EnrollFileManagement: TGUID = '{787A0B63-5843-3E76-AEE9-A2B7D8F4314E}';
  CLASS_EnrollExt: TGUID = '{FA689B01-3CD8-43D1-B005-98E0AC2E30BA}';
  CLASS_UserExt: TGUID = '{E28341BA-51C2-4C2B-8D27-9C63B1B70790}';
  CLASS_RecordExt: TGUID = '{4425D88F-D4DE-4B4A-906E-5B6588615AED}';
  CLASS_Monitor: TGUID = '{CECA7182-F7F8-4AB3-81A3-EE4C3AFAE45D}';
  IID__P2pUtils: TGUID = '{4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}';
  CLASS_Sex: TGUID = '{CA1503C4-2A83-4F99-941D-D22182555970}';
  CLASS_User: TGUID = '{9FA413E1-00D0-3C70-86E1-F758E596C0C6}';
  CLASS_Enroll: TGUID = '{D4D6189E-DC09-3B67-ABA4-340332789743}';
  CLASS_DeviceConnection: TGUID = '{52B5E7E9-FDEA-32AA-A232-650CBCB073DA}';
  CLASS_ZdFpReader: TGUID = '{8E97208C-51B9-35A1-BEEF-52B1483E5846}';
  CLASS_Zd2911Utils: TGUID = '{676A41E8-FC06-3AFA-BD6B-A8C839436C6C}';
  CLASS_ZdCommBase: TGUID = '{7A768ED8-584F-39B0-98BF-665E9C2762D6}';
  CLASS_Record_: TGUID = '{D55C3262-25FD-3128-830C-5A3FE007AD5F}';
  CLASS_RLYN060: TGUID = '{09A5CCAF-0725-389A-BA2D-F1CC3DFECB38}';
  CLASS_ReceiveHandler: TGUID = '{359E911D-28CB-3F3E-94BE-E332380216C3}';
  CLASS_Zd2911Monitor: TGUID = '{16E611EF-9D54-3A77-8305-1B479837E628}';
  CLASS_ReceiveEventArg: TGUID = '{135D9304-05F5-3664-B412-50912A4ABFA2}';
  CLASS_ReceiveHandlerExt: TGUID = '{3E76CCE3-9DE9-3FFA-86DC-9541637608DA}';
  CLASS_ConnectionException: TGUID = '{0C3BF980-7BD7-3BBF-BDEA-4B7B087D9F46}';
  CLASS_Zd2911EnrollFileManagement: TGUID = '{1E9F786B-2C78-37C8-8FD2-0FA1D0298404}';
  CLASS_P2pUtils: TGUID = '{83C6A271-3C80-3666-8AFB-ACC9F02D8C3D}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum EnrollType
type
  EnrollType = TOleEnum;
const
  EnrollType_Finger0 = $00000000;
  EnrollType_Finger1 = $00000001;
  EnrollType_Finger2 = $00000002;
  EnrollType_Finger3 = $00000003;
  EnrollType_Finger4 = $00000004;
  EnrollType_Finger5 = $00000005;
  EnrollType_Finger6 = $00000006;
  EnrollType_Finger7 = $00000007;
  EnrollType_Finger8 = $00000008;
  EnrollType_Finger9 = $00000009;
  EnrollType_Password = $0000000A;
  EnrollType_Card = $0000000B;
  EnrollType_AllFinger = $0000000C;
  EnrollType_All = $0000001F;

// Constants for enum ReturnValue
type
  ReturnValue = TOleEnum;
const
  ReturnValue_SUCCESS = $00000000;
  ReturnValue_IMAGE_ERR = $FFFFFFFF;
  ReturnValue_FPDATA_ERR = $FFFFFFFE;
  ReturnValue_ID_ERR = $FFFFFFFD;
  ReturnValue_OVER_ERR = $FFFFFFFC;
  ReturnValue_BUFFER_ERR = $FFFFFFFA;
  ReturnValue_SENSOR_ERR = $FFFFFFF9;
  ReturnValue_NTH_ERR = $FFFFFFF8;
  ReturnValue_MERGE_ERR = $FFFFFFF7;
  ReturnValue_NOT_FINGER = $FFFFFFF5;
  ReturnValue_DEV_ERR = $FFFFFF9C;
  ReturnValue_SBSFE_ERR_CANNOT_OPEN_DB = $FFFFFF9B;
  ReturnValue_SBSFE_ERR_DOUBLED = $FFFFFF9A;
  ReturnValue_SBSFE_ERR_IDENTIFY = $FFFFFF99;
  ReturnValue_SBSFE_ERR_VERIFY = $FFFFFF98;

// Constants for enum UserProperty
type
  UserProperty = TOleEnum;
const
  UserProperty_UserName = $00000000;
  UserProperty_Enroll = $00000001;
  UserProperty_UserExtInfo = $00000002;
  UserProperty_AccessControlSettings = $00000003;
  UserProperty_Messages = $00000004;
  UserProperty_Privilege = $00000005;
  UserProperty_Attendance = $00000006;
  UserProperty_UserEnroll = $00000007;
  UserProperty_OnlineEnroll = $00000008;
  UserProperty_ImageFpEnroll = $00000009;
  UserProperty_IcCard = $0000000A;

// Constants for enum UserEnrollCommand
type
  UserEnrollCommand = TOleEnum;
const
  UserEnrollCommand_ReadFingerprint = $00000000;
  UserEnrollCommand_WriteFingerprint = $00000001;
  UserEnrollCommand_ClearFingerprint = $00000002;
  UserEnrollCommand_ReadPassword = $00000003;
  UserEnrollCommand_WritePassword = $00000004;
  UserEnrollCommand_ClearPassword = $00000005;
  UserEnrollCommand_ReadCard = $00000006;
  UserEnrollCommand_WriteCard = $00000007;
  UserEnrollCommand_ClearCard = $00000008;

// Constants for enum CommunicationType
type
  CommunicationType = TOleEnum;
const
  CommunicationType_Serial = $00000000;
  CommunicationType_Tcp = $00000001;
  CommunicationType_Usb = $00000002;
  CommunicationType_P2P = $00000003;

// Constants for enum DoorStatus
type
  DoorStatus = TOleEnum;
const
  DoorStatus_Unidefind = $00000000;
  DoorStatus_ForceOpen = $00000001;
  DoorStatus_ForceClose = $00000002;
  DoorStatus_ProgramOpen = $00000003;
  DoorStatus_AutoRecover = $00000004;
  DoorStatus_ReStart = $00000005;
  DoorStatus_CancelAlarm = $00000006;
  DoorStatus_Alarm = $00000007;

// Constants for enum AccessContorlCommand
type
  AccessContorlCommand = TOleEnum;
const
  AccessContorlCommand_PassTime = $00000001;
  AccessContorlCommand_GroupTime = $00000002;
  AccessContorlCommand_TimeZone = $00000003;
  AccessContorlCommand_LockGroup = $00000004;
  AccessContorlCommand_DoorKey = $00000005;
  AccessContorlCommand_LogWatch = $00000006;
  AccessContorlCommand_UserAccessCtrl = $00000007;
  AccessContorlCommand_UserPeriod = $00000008;

// Constants for enum AttendanceCommand
type
  AttendanceCommand = TOleEnum;
const
  AttendanceCommand_TimeSegment = $00000001;
  AttendanceCommand_TimeZone = $00000002;
  AttendanceCommand_Holiday = $00000003;
  AttendanceCommand_LogTime = $00000004;

// Constants for enum ConnectionState
type
  ConnectionState = TOleEnum;
const
  ConnectionState_Closed = $00000000;
  ConnectionState_Open = $00000001;
  ConnectionState_Connecting = $00000002;
  ConnectionState_Executing = $00000003;
  ConnectionState_Fetching = $00000004;
  ConnectionState_Broken = $00000005;

// Constants for enum DeviceProperty
type
  DeviceProperty = TOleEnum;
const
  DeviceProperty_FirmwareVersion = $00000000;
  DeviceProperty_FirmwareUpgrade = $00000001;
  DeviceProperty_Bell = $00000002;
  DeviceProperty_DoorControl = $00000003;
  DeviceProperty_AccessControlSettings = $00000004;
  DeviceProperty_WelcomeTitle = $00000005;
  DeviceProperty_StandbyTitle = $00000006;
  DeviceProperty_InitSettings = $00000007;
  DeviceProperty_Status = $00000008;
  DeviceProperty_PowerOff = $00000009;
  DeviceProperty_DeviceTime = $0000000A;
  DeviceProperty_ScreenBrightness = $0000000B;
  DeviceProperty_ManagementRecords = $0000000C;
  DeviceProperty_AttRecords = $0000000D;
  DeviceProperty_Enrolls = $0000000E;
  DeviceProperty_Message = $0000000F;
  DeviceProperty_Enable = $00000010;
  DeviceProperty_AttRecordsCount = $00000011;
  DeviceProperty_ManagementRecordsCount = $00000012;
  DeviceProperty_DataFile = $00000013;
  DeviceProperty_PhotoList = $00000014;
  DeviceProperty_PowerOnOffTime = $00000015;
  DeviceProperty_MacAddress = $00000016;
  DeviceProperty_UserNameData = $00000017;
  DeviceProperty_Attendance = $00000018;
  DeviceProperty_Model = $00000019;
  DeviceProperty_SysParam = $0000001A;
  DeviceProperty_UploadSound = $0000001B;
  DeviceProperty_SerialNo = $0000001C;
  DeviceProperty_PassSegment = $0000001D;
  DeviceProperty_PassGroup = $0000001E;
  DeviceProperty_PassZone = $0000001F;
  DeviceProperty_MultOpenGroup = $00000020;
  DeviceProperty_BinFileRecord = $00000021;
  DeviceProperty_AttExRecordsCount = $00000022;
  DeviceProperty_AttExRecords = $00000023;
  DeviceProperty_AdminPassword = $00000024;
  DeviceProperty_Resource = $00000025;

// Constants for enum NumberType
type
  NumberType = TOleEnum;
const
  NumberType_UInt16Bit = $00000000;
  NumberType_Int16Bit = $00000001;
  NumberType_UInt32Bit = $00000002;
  NumberType_Int32Bit = $00000003;
  NumberType_UInt64Bit = $00000004;
  NumberType_Int64Bit = $00000005;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _User = interface;
  _UserDisp = dispinterface;
  _Enroll = interface;
  _EnrollDisp = dispinterface;
  _DeviceConnection = interface;
  _DeviceConnectionDisp = dispinterface;
  _ZdFpReader = interface;
  _ZdFpReaderDisp = dispinterface;
  IZd2911EnrollFile = interface;
  IZd2911EnrollFileDisp = dispinterface;
  IZd2911Listener = interface;
  IZd2911ListenerDisp = dispinterface;
  IReceiveEventArgExt = interface;
  IReceiveEventArgExtDisp = dispinterface;
  ISex = interface;
  ISexDisp = dispinterface;
  _Zd2911Utils = interface;
  _Zd2911UtilsDisp = dispinterface;
  IUserExt = interface;
  IUserExtDisp = dispinterface;
  IRecordExt = interface;
  IRecordExtDisp = dispinterface;
  IMonitor = interface;
  IMonitorDisp = dispinterface;
  IEnrollExt = interface;
  IEnrollExtDisp = dispinterface;
  _ZdCommBase = interface;
  _ZdCommBaseDisp = dispinterface;
  IZd2911Tools = interface;
  IZd2911ToolsDisp = dispinterface;
  _Record = interface;
  _RecordDisp = dispinterface;
  _RLYN060 = interface;
  _RLYN060Disp = dispinterface;
  _ReceiveHandler = interface;
  _ReceiveHandlerDisp = dispinterface;
  _Zd2911Monitor = interface;
  _Zd2911MonitorDisp = dispinterface;
  _ReceiveEventArg = interface;
  _ReceiveEventArgDisp = dispinterface;
  _ReceiveHandlerExt = interface;
  _ReceiveHandlerExtDisp = dispinterface;
  IDevice = interface;
  IDeviceDisp = dispinterface;
  _ConnectionException = interface;
  _ConnectionExceptionDisp = dispinterface;
  IZd2911DeviceConnection = interface;
  IZd2911DeviceConnectionDisp = dispinterface;
  _Zd2911EnrollFileManagement = interface;
  _Zd2911EnrollFileManagementDisp = dispinterface;
  _P2pUtils = interface;
  _P2pUtilsDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  Zd2911EnrollFile = IZd2911EnrollFile;
  Zd2911Tools = IZd2911Tools;
  Zd2911Listener = IZd2911Listener;
  ReceiveEventArgExt = IReceiveEventArgExt;
  Device = IDevice;
  Zd2911DeviceConnection = IZd2911DeviceConnection;
  EnrollExt = IEnrollExt;
  UserExt = IUserExt;
  RecordExt = IRecordExt;
  Monitor = IMonitor;
  Sex = ISex;
  User = _User;
  Enroll = _Enroll;
  DeviceConnection = _DeviceConnection;
  ZdFpReader = _ZdFpReader;
  Zd2911Utils = _Zd2911Utils;
  ZdCommBase = _ZdCommBase;
  Record_ = _Record;
  RLYN060 = _RLYN060;
  ReceiveHandler = _ReceiveHandler;
  Zd2911Monitor = _Zd2911Monitor;
  ReceiveEventArg = _ReceiveEventArg;
  ReceiveHandlerExt = _ReceiveHandlerExt;
  ConnectionException = _ConnectionException;
  Zd2911EnrollFileManagement = _Zd2911EnrollFileManagement;
  P2pUtils = _P2pUtils;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  FPINFO = packed record
    ID: LongWord;
    Valid: Byte;
    Manager: Byte;
    FingerNum: Byte;
    Reserved: array[0..1396] of Byte;
  end;

  ThemesInfo = packed record
    Background: Byte;
    TimeFont: Byte;
    MainTitleColor: Word;
    HourMinuteColor: Word;
    SecondColor: Word;
    DateColor: Word;
    WeekColor: Word;
    LunarColor: Word;
    MenuTitleColor: Word;
    TitleBottomLineColor: Word;
    MenuItemColor: Word;
    MenuCheckedItemColor: Word;
    VerifyIDColor: Word;
    VerifyNameColor: Word;
    VerifyMessageColor: Word;
    StandbyBackgroundColor: Word;
    StandbyFontColor: Word;
    MainPanelColor: Word;
    MenuBgColor: Word;
    VerifyBgColor: Word;
    VerifyBgImage: Byte;
    nRes1: Byte;
  end;

  ProductInfo = packed record
    Mark: LongWord;
    CheckSum: LongWord;
    DeviceType: Byte;
    MadeYear: Byte;
    MadeMonth: Byte;
    MadeDay: Byte;
    SerialNo: LongWord;
    CompanyName: array[0..27] of Byte;
    P2p: Byte;
    HardwareVersion: Byte;
    ExtFeatures0: Byte;
    ExtFeatures: Byte;
    UseUSB: Byte;
    UseEthernet: Byte;
    UseRS485: Byte;
    AccessControl: Byte;
    WiegandOut: Byte;
    WiegandIn: Byte;
    RFID: Byte;
    EncodeLogDownload: Byte;
    AdvanceTR: Byte;
    WIFI: Byte;
    WebServer: Byte;
    Camera: Byte;
    Language: LongWord;
    LunarDate: Byte;
    AdvanceAC: Byte;
    FpReader: Byte;
    Message: Byte;
    CmosFrequency: Byte;
    UserTheme: Byte;
    UserSound: Byte;
    MaxUserIDLength: Byte;
    MaxUserCount: LongWord;
    RealTimeUpload: Byte;
    KeyType: Byte;
    LcdType: Byte;
    Locks: Byte;
    CMOS: Byte;
    IcFpReader: Byte;
    CoupleUsb: Byte;
    HidePartMenu: Byte;
    MaxGLogCount: LongWord;
    SZSerialNo: array[0..15] of Byte;
    Model: array[0..15] of Byte;
    themes: ThemesInfo;
    IcFpAddr: array[0..5] of Byte;
    NotifySpan: Byte;
    res2: Byte;
  end;

  SCSI_PASS_THROUGH_DIRECT = packed record
    length: Word;
    ScsiStatus: Byte;
    PathId: Byte;
    TargetId: Byte;
    Lun: Byte;
    CdbLength: Byte;
    SenseInfoLength: Byte;
    DataIn: Byte;
    DataTransferLength: LongWord;
    TimeOutValue: LongWord;
    DataBuffer: Integer;
    SenseInfoOffset: LongWord;
    Cdb: array[0..15] of Byte;
  end;

  SCSI_PASS_THROUGH_DIRECT_WITH_BUFFER = packed record
    sptd: SCSI_PASS_THROUGH_DIRECT;
    Filler: LongWord;
    ucSenseBuf: array[0..65535] of Byte;
  end;


// *********************************************************************//
// Interface: _User
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}
// *********************************************************************//
  _User = interface(IDispatch)
    ['{87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}']
  end;

// *********************************************************************//
// DispIntf:  _UserDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}
// *********************************************************************//
  _UserDisp = dispinterface
    ['{87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}']
  end;

// *********************************************************************//
// Interface: _Enroll
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8303232C-11FC-3D42-A7A2-1641CE2B609D}
// *********************************************************************//
  _Enroll = interface(IDispatch)
    ['{8303232C-11FC-3D42-A7A2-1641CE2B609D}']
  end;

// *********************************************************************//
// DispIntf:  _EnrollDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8303232C-11FC-3D42-A7A2-1641CE2B609D}
// *********************************************************************//
  _EnrollDisp = dispinterface
    ['{8303232C-11FC-3D42-A7A2-1641CE2B609D}']
  end;

// *********************************************************************//
// Interface: _DeviceConnection
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A63C9BB7-AE2B-3B54-9558-506792E6D256}
// *********************************************************************//
  _DeviceConnection = interface(IDispatch)
    ['{A63C9BB7-AE2B-3B54-9558-506792E6D256}']
  end;

// *********************************************************************//
// DispIntf:  _DeviceConnectionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A63C9BB7-AE2B-3B54-9558-506792E6D256}
// *********************************************************************//
  _DeviceConnectionDisp = dispinterface
    ['{A63C9BB7-AE2B-3B54-9558-506792E6D256}']
  end;

// *********************************************************************//
// Interface: _ZdFpReader
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {17068156-9EBD-3018-9A85-5DA5EC50C26C}
// *********************************************************************//
  _ZdFpReader = interface(IDispatch)
    ['{17068156-9EBD-3018-9A85-5DA5EC50C26C}']
  end;

// *********************************************************************//
// DispIntf:  _ZdFpReaderDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {17068156-9EBD-3018-9A85-5DA5EC50C26C}
// *********************************************************************//
  _ZdFpReaderDisp = dispinterface
    ['{17068156-9EBD-3018-9A85-5DA5EC50C26C}']
  end;

// *********************************************************************//
// Interface: IZd2911EnrollFile
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E21860DC-55D6-42DF-A999-DC4FB3EE959D}
// *********************************************************************//
  IZd2911EnrollFile = interface(IDispatch)
    ['{E21860DC-55D6-42DF-A999-DC4FB3EE959D}']
    function SaveAllUserExtEnrollDataAsDB(const fileName: WideString; var userExts: PSafeArray): WordBool; safecall;
    function SaveUserExtEnrollDataAsDB(const fileName: WideString; var UserExt: IUserExt): WordBool; safecall;
    function LoadAllUserExtEnrollDataFromDB(const fileName: WideString; var userExts: PSafeArray): WordBool; safecall;
    function LoadUserExtEnrollDataFromDB(const fileName: WideString; var UserExt: IUserExt): WordBool; safecall;
    function SaveUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool; safecall;
    function LoadUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IZd2911EnrollFileDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E21860DC-55D6-42DF-A999-DC4FB3EE959D}
// *********************************************************************//
  IZd2911EnrollFileDisp = dispinterface
    ['{E21860DC-55D6-42DF-A999-DC4FB3EE959D}']
    function SaveAllUserExtEnrollDataAsDB(const fileName: WideString; 
                                          var userExts: {??PSafeArray}OleVariant): WordBool; dispid 1;
    function SaveUserExtEnrollDataAsDB(const fileName: WideString; var UserExt: IUserExt): WordBool; dispid 2;
    function LoadAllUserExtEnrollDataFromDB(const fileName: WideString; 
                                            var userExts: {??PSafeArray}OleVariant): WordBool; dispid 3;
    function LoadUserExtEnrollDataFromDB(const fileName: WideString; var UserExt: IUserExt): WordBool; dispid 4;
    function SaveUserExtNameData(const fileName: WideString; var userExts: {??PSafeArray}OleVariant): WordBool; dispid 5;
    function LoadUserExtNameData(const fileName: WideString; var userExts: {??PSafeArray}OleVariant): WordBool; dispid 6;
  end;

// *********************************************************************//
// Interface: IZd2911Listener
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {433ABD46-80F4-4ABC-A80D-C365F93F1297}
// *********************************************************************//
  IZd2911Listener = interface(IDispatch)
    ['{433ABD46-80F4-4ABC-A80D-C365F93F1297}']
    function Get_IsBusy: WordBool; safecall;
    procedure add_ReceiveHandlerExt(const value: _ReceiveHandlerExt); safecall;
    procedure remove_ReceiveHandlerExt(const value: _ReceiveHandlerExt); safecall;
    function OpenListen(const m: IMonitor): WordBool; safecall;
    procedure CloseListen; safecall;
    property IsBusy: WordBool read Get_IsBusy;
  end;

// *********************************************************************//
// DispIntf:  IZd2911ListenerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {433ABD46-80F4-4ABC-A80D-C365F93F1297}
// *********************************************************************//
  IZd2911ListenerDisp = dispinterface
    ['{433ABD46-80F4-4ABC-A80D-C365F93F1297}']
    property IsBusy: WordBool readonly dispid 1;
    procedure add_ReceiveHandlerExt(const value: _ReceiveHandlerExt); dispid 1610743809;
    procedure remove_ReceiveHandlerExt(const value: _ReceiveHandlerExt); dispid 1610743810;
    function OpenListen(const m: IMonitor): WordBool; dispid 3;
    procedure CloseListen; dispid 4;
  end;

// *********************************************************************//
// Interface: IReceiveEventArgExt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A3D809B-8D97-4411-9A91-504B806AF6EC}
// *********************************************************************//
  IReceiveEventArgExt = interface(IDispatch)
    ['{7A3D809B-8D97-4411-9A91-504B806AF6EC}']
    function Get_Record_: IRecordExt; safecall;
    procedure _Set_Record_(const pRetVal: IRecordExt); safecall;
    function Get_endPoint: IUnknown; safecall;
    procedure _Set_endPoint(const pRetVal: IUnknown); safecall;
    property Record_: IRecordExt read Get_Record_ write _Set_Record_;
    property endPoint: IUnknown read Get_endPoint write _Set_endPoint;
  end;

// *********************************************************************//
// DispIntf:  IReceiveEventArgExtDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7A3D809B-8D97-4411-9A91-504B806AF6EC}
// *********************************************************************//
  IReceiveEventArgExtDisp = dispinterface
    ['{7A3D809B-8D97-4411-9A91-504B806AF6EC}']
    property Record_: IRecordExt dispid 1;
    property endPoint: IUnknown dispid 1610743810;
  end;

// *********************************************************************//
// Interface: ISex
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2FE27AA-AE68-486C-ACCB-2B43ED66169E}
// *********************************************************************//
  ISex = interface(IDispatch)
    ['{C2FE27AA-AE68-486C-ACCB-2B43ED66169E}']
  end;

// *********************************************************************//
// DispIntf:  ISexDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C2FE27AA-AE68-486C-ACCB-2B43ED66169E}
// *********************************************************************//
  ISexDisp = dispinterface
    ['{C2FE27AA-AE68-486C-ACCB-2B43ED66169E}']
  end;

// *********************************************************************//
// Interface: _Zd2911Utils
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F7F4B57-5DC7-3A3C-995F-502466DA2B71}
// *********************************************************************//
  _Zd2911Utils = interface(IDispatch)
    ['{0F7F4B57-5DC7-3A3C-995F-502466DA2B71}']
  end;

// *********************************************************************//
// DispIntf:  _Zd2911UtilsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0F7F4B57-5DC7-3A3C-995F-502466DA2B71}
// *********************************************************************//
  _Zd2911UtilsDisp = dispinterface
    ['{0F7F4B57-5DC7-3A3C-995F-502466DA2B71}']
  end;

// *********************************************************************//
// Interface: IUserExt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13E5AFC5-D6D7-452A-879B-06F134E07D82}
// *********************************************************************//
  IUserExt = interface(IDispatch)
    ['{13E5AFC5-D6D7-452A-879B-06F134E07D82}']
    function Get_Privilege: Integer; safecall;
    procedure Set_Privilege(pRetVal: Integer); safecall;
    function Get_DIN: WideString; safecall;
    procedure Set_DIN(const pRetVal: WideString); safecall;
    function Get_UserName: WideString; safecall;
    procedure Set_UserName(const pRetVal: WideString); safecall;
    function Get_IDNumber: WideString; safecall;
    procedure Set_IDNumber(const pRetVal: WideString); safecall;
    function Get_Sex: ISex; safecall;
    procedure _Set_Sex(const pRetVal: ISex); safecall;
    function Get_Enable: WordBool; safecall;
    procedure Set_Enable(pRetVal: WordBool); safecall;
    function Get_Comment: WideString; safecall;
    procedure Set_Comment(const pRetVal: WideString); safecall;
    function Get_DeptId: WideString; safecall;
    procedure Set_DeptId(const pRetVal: WideString); safecall;
    function Get_AttType: Integer; safecall;
    procedure Set_AttType(pRetVal: Integer); safecall;
    function Get_Birthday: TDateTime; safecall;
    procedure Set_Birthday(pRetVal: TDateTime); safecall;
    function Get_AccessControl: Integer; safecall;
    procedure Set_AccessControl(pRetVal: Integer); safecall;
    function Get_ValidityPeriod: WordBool; safecall;
    procedure Set_ValidityPeriod(pRetVal: WordBool); safecall;
    function Get_UseUserGroupACTZ: WordBool; safecall;
    procedure Set_UseUserGroupACTZ(pRetVal: WordBool); safecall;
    function Get_UseUserGroupVM: WordBool; safecall;
    procedure Set_UseUserGroupVM(pRetVal: WordBool); safecall;
    function Get_Department: Integer; safecall;
    procedure Set_Department(pRetVal: Integer); safecall;
    function Get_Enrolls: PSafeArray; safecall;
    procedure Set_Enrolls(pRetVal: PSafeArray); safecall;
    function Get_AccessTimeZone: Integer; safecall;
    procedure Set_AccessTimeZone(pRetVal: Integer); safecall;
    function Get_ValidDate: TDateTime; safecall;
    procedure Set_ValidDate(pRetVal: TDateTime); safecall;
    function Get_InvalidDate: TDateTime; safecall;
    procedure Set_InvalidDate(pRetVal: TDateTime); safecall;
    function Get_UserGroup: Integer; safecall;
    procedure Set_UserGroup(pRetVal: Integer); safecall;
    function Get_LockControl: Integer; safecall;
    procedure Set_LockControl(pRetVal: Integer); safecall;
    procedure SetEnrolls(var Enrolls: PSafeArray); safecall;
    property Privilege: Integer read Get_Privilege write Set_Privilege;
    property DIN: WideString read Get_DIN write Set_DIN;
    property UserName: WideString read Get_UserName write Set_UserName;
    property IDNumber: WideString read Get_IDNumber write Set_IDNumber;
    property Sex: ISex read Get_Sex write _Set_Sex;
    property Enable: WordBool read Get_Enable write Set_Enable;
    property Comment: WideString read Get_Comment write Set_Comment;
    property DeptId: WideString read Get_DeptId write Set_DeptId;
    property AttType: Integer read Get_AttType write Set_AttType;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property AccessControl: Integer read Get_AccessControl write Set_AccessControl;
    property ValidityPeriod: WordBool read Get_ValidityPeriod write Set_ValidityPeriod;
    property UseUserGroupACTZ: WordBool read Get_UseUserGroupACTZ write Set_UseUserGroupACTZ;
    property UseUserGroupVM: WordBool read Get_UseUserGroupVM write Set_UseUserGroupVM;
    property Department: Integer read Get_Department write Set_Department;
    property Enrolls: PSafeArray read Get_Enrolls write Set_Enrolls;
    property AccessTimeZone: Integer read Get_AccessTimeZone write Set_AccessTimeZone;
    property ValidDate: TDateTime read Get_ValidDate write Set_ValidDate;
    property InvalidDate: TDateTime read Get_InvalidDate write Set_InvalidDate;
    property UserGroup: Integer read Get_UserGroup write Set_UserGroup;
    property LockControl: Integer read Get_LockControl write Set_LockControl;
  end;

// *********************************************************************//
// DispIntf:  IUserExtDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {13E5AFC5-D6D7-452A-879B-06F134E07D82}
// *********************************************************************//
  IUserExtDisp = dispinterface
    ['{13E5AFC5-D6D7-452A-879B-06F134E07D82}']
    property Privilege: Integer dispid 1;
    property DIN: WideString dispid 2;
    property UserName: WideString dispid 3;
    property IDNumber: WideString dispid 4;
    property Sex: ISex dispid 5;
    property Enable: WordBool dispid 6;
    property Comment: WideString dispid 7;
    property DeptId: WideString dispid 8;
    property AttType: Integer dispid 9;
    property Birthday: TDateTime dispid 10;
    property AccessControl: Integer dispid 11;
    property ValidityPeriod: WordBool dispid 12;
    property UseUserGroupACTZ: WordBool dispid 13;
    property UseUserGroupVM: WordBool dispid 14;
    property Department: Integer dispid 15;
    property Enrolls: {??PSafeArray}OleVariant dispid 16;
    property AccessTimeZone: Integer dispid 17;
    property ValidDate: TDateTime dispid 18;
    property InvalidDate: TDateTime dispid 19;
    property UserGroup: Integer dispid 20;
    property LockControl: Integer dispid 21;
    procedure SetEnrolls(var Enrolls: {??PSafeArray}OleVariant); dispid 22;
  end;

// *********************************************************************//
// Interface: IRecordExt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D242E69-0A61-4C3B-9557-C8BEFEAC875A}
// *********************************************************************//
  IRecordExt = interface(IDispatch)
    ['{8D242E69-0A61-4C3B-9557-C8BEFEAC875A}']
    function Get_DN: Integer; safecall;
    procedure Set_DN(pRetVal: Integer); safecall;
    function Get_DIN: WideString; safecall;
    procedure Set_DIN(const pRetVal: WideString); safecall;
    function Get_Clock: TDateTime; safecall;
    procedure Set_Clock(pRetVal: TDateTime); safecall;
    function Get_Verify: Integer; safecall;
    procedure Set_Verify(pRetVal: Integer); safecall;
    function Get_Action: Integer; safecall;
    procedure Set_Action(pRetVal: Integer); safecall;
    function Get_Remark: WideString; safecall;
    procedure Set_Remark(const pRetVal: WideString); safecall;
    function Get_MDIN: WideString; safecall;
    procedure Set_MDIN(const pRetVal: WideString); safecall;
    function Get_DoorStatus: Integer; safecall;
    procedure Set_DoorStatus(pRetVal: Integer); safecall;
    function Get_JobCode: Integer; safecall;
    procedure Set_JobCode(pRetVal: Integer); safecall;
    function Get_Antipassback: Integer; safecall;
    procedure Set_Antipassback(pRetVal: Integer); safecall;
    property DN: Integer read Get_DN write Set_DN;
    property DIN: WideString read Get_DIN write Set_DIN;
    property Clock: TDateTime read Get_Clock write Set_Clock;
    property Verify: Integer read Get_Verify write Set_Verify;
    property Action: Integer read Get_Action write Set_Action;
    property Remark: WideString read Get_Remark write Set_Remark;
    property MDIN: WideString read Get_MDIN write Set_MDIN;
    property DoorStatus: Integer read Get_DoorStatus write Set_DoorStatus;
    property JobCode: Integer read Get_JobCode write Set_JobCode;
    property Antipassback: Integer read Get_Antipassback write Set_Antipassback;
  end;

// *********************************************************************//
// DispIntf:  IRecordExtDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8D242E69-0A61-4C3B-9557-C8BEFEAC875A}
// *********************************************************************//
  IRecordExtDisp = dispinterface
    ['{8D242E69-0A61-4C3B-9557-C8BEFEAC875A}']
    property DN: Integer dispid 1;
    property DIN: WideString dispid 2;
    property Clock: TDateTime dispid 3;
    property Verify: Integer dispid 4;
    property Action: Integer dispid 5;
    property Remark: WideString dispid 6;
    property MDIN: WideString dispid 7;
    property DoorStatus: Integer dispid 8;
    property JobCode: Integer dispid 9;
    property Antipassback: Integer dispid 10;
  end;

// *********************************************************************//
// Interface: IMonitor
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C929500D-BD1A-478A-9038-76EEA452C792}
// *********************************************************************//
  IMonitor = interface(IDispatch)
    ['{C929500D-BD1A-478A-9038-76EEA452C792}']
    function Get_Mode: Integer; safecall;
    procedure Set_Mode(pRetVal: Integer); safecall;
    function Get_UDPAddress: WideString; safecall;
    procedure Set_UDPAddress(const pRetVal: WideString); safecall;
    function Get_UDPPort: Integer; safecall;
    procedure Set_UDPPort(pRetVal: Integer); safecall;
    function Get_SerialPort: Integer; safecall;
    procedure Set_SerialPort(pRetVal: Integer); safecall;
    function Get_SerialBaudRate: Integer; safecall;
    procedure Set_SerialBaudRate(pRetVal: Integer); safecall;
    property Mode: Integer read Get_Mode write Set_Mode;
    property UDPAddress: WideString read Get_UDPAddress write Set_UDPAddress;
    property UDPPort: Integer read Get_UDPPort write Set_UDPPort;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property SerialBaudRate: Integer read Get_SerialBaudRate write Set_SerialBaudRate;
  end;

// *********************************************************************//
// DispIntf:  IMonitorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C929500D-BD1A-478A-9038-76EEA452C792}
// *********************************************************************//
  IMonitorDisp = dispinterface
    ['{C929500D-BD1A-478A-9038-76EEA452C792}']
    property Mode: Integer dispid 1;
    property UDPAddress: WideString dispid 2;
    property UDPPort: Integer dispid 3;
    property SerialPort: Integer dispid 4;
    property SerialBaudRate: Integer dispid 5;
  end;

// *********************************************************************//
// Interface: IEnrollExt
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}
// *********************************************************************//
  IEnrollExt = interface(IDispatch)
    ['{1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}']
    function Get_DIN: WideString; safecall;
    procedure Set_DIN(const pRetVal: WideString); safecall;
    function Get_EnrollType: EnrollType; safecall;
    procedure Set_EnrollType(pRetVal: EnrollType); safecall;
    function Get_IsDuress: WordBool; safecall;
    procedure Set_IsDuress(pRetVal: WordBool); safecall;
    function Get_Fingerprint: PSafeArray; safecall;
    procedure Set_Fingerprint(pRetVal: PSafeArray); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const pRetVal: WideString); safecall;
    function Get_CardID: WideString; safecall;
    procedure Set_CardID(const pRetVal: WideString); safecall;
    procedure SetFingerprint(var Fingerprint: PSafeArray); safecall;
    property DIN: WideString read Get_DIN write Set_DIN;
    property EnrollType: EnrollType read Get_EnrollType write Set_EnrollType;
    property IsDuress: WordBool read Get_IsDuress write Set_IsDuress;
    property Fingerprint: PSafeArray read Get_Fingerprint write Set_Fingerprint;
    property Password: WideString read Get_Password write Set_Password;
    property CardID: WideString read Get_CardID write Set_CardID;
  end;

// *********************************************************************//
// DispIntf:  IEnrollExtDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}
// *********************************************************************//
  IEnrollExtDisp = dispinterface
    ['{1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}']
    property DIN: WideString dispid 1;
    property EnrollType: EnrollType dispid 2;
    property IsDuress: WordBool dispid 3;
    property Fingerprint: {??PSafeArray}OleVariant dispid 4;
    property Password: WideString dispid 5;
    property CardID: WideString dispid 6;
    procedure SetFingerprint(var Fingerprint: {??PSafeArray}OleVariant); dispid 7;
  end;

// *********************************************************************//
// Interface: _ZdCommBase
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B69C323A-253C-3D18-9B56-305414323D88}
// *********************************************************************//
  _ZdCommBase = interface(IDispatch)
    ['{B69C323A-253C-3D18-9B56-305414323D88}']
  end;

// *********************************************************************//
// DispIntf:  _ZdCommBaseDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {B69C323A-253C-3D18-9B56-305414323D88}
// *********************************************************************//
  _ZdCommBaseDisp = dispinterface
    ['{B69C323A-253C-3D18-9B56-305414323D88}']
  end;

// *********************************************************************//
// Interface: IZd2911Tools
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}
// *********************************************************************//
  IZd2911Tools = interface(IDispatch)
    ['{9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}']
    function BitCheck(num: Integer; index: Integer): Integer; safecall;
    function SetBit(num: Integer; index: Integer): Integer; safecall;
    function CreateChunkHeader(var buffer: PSafeArray; dataChunk: Integer): PSafeArray; safecall;
    function GetSLogList(var buffer: PSafeArray): PSafeArray; safecall;
    function GetUserExtWithoutEnroll(var buffer: PSafeArray): IUserExt; safecall;
    function GetAllUserExtWithoutEnroll(var buffer: PSafeArray): PSafeArray; safecall;
    function GetGLogList(var buffer: PSafeArray): PSafeArray; safecall;
    function GetBytes(const input: WideString): PSafeArray; safecall;
    function GetString(var bs: PSafeArray): WideString; safecall;
    function GetASCII(var bs: PSafeArray; index: Integer; length: Integer): WideString; safecall;
    function GetStringByNum(var bs: PSafeArray; index: Integer; type_: NumberType): WideString; safecall;
    function GetBytesByNum(const input: WideString; type_: NumberType): PSafeArray; safecall;
    function ConvertIPAddressToNumber(const strIPAddress: WideString): Integer; safecall;
    function ConvertNumberToIPAddress(intIPAddress: Integer): WideString; safecall;
    function ConvertFingerprintToString(var Fingerprint: PSafeArray): WideString; safecall;
    function ConvertStringFingerprintToBytes(const Fingerprint: WideString): PSafeArray; safecall;
    function SetP2pServerIpAddress(const ip: WideString): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  IZd2911ToolsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}
// *********************************************************************//
  IZd2911ToolsDisp = dispinterface
    ['{9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}']
    function BitCheck(num: Integer; index: Integer): Integer; dispid 1;
    function SetBit(num: Integer; index: Integer): Integer; dispid 2;
    function CreateChunkHeader(var buffer: {??PSafeArray}OleVariant; dataChunk: Integer): {??PSafeArray}OleVariant; dispid 3;
    function GetSLogList(var buffer: {??PSafeArray}OleVariant): {??PSafeArray}OleVariant; dispid 4;
    function GetUserExtWithoutEnroll(var buffer: {??PSafeArray}OleVariant): IUserExt; dispid 5;
    function GetAllUserExtWithoutEnroll(var buffer: {??PSafeArray}OleVariant): {??PSafeArray}OleVariant; dispid 6;
    function GetGLogList(var buffer: {??PSafeArray}OleVariant): {??PSafeArray}OleVariant; dispid 7;
    function GetBytes(const input: WideString): {??PSafeArray}OleVariant; dispid 8;
    function GetString(var bs: {??PSafeArray}OleVariant): WideString; dispid 9;
    function GetASCII(var bs: {??PSafeArray}OleVariant; index: Integer; length: Integer): WideString; dispid 10;
    function GetStringByNum(var bs: {??PSafeArray}OleVariant; index: Integer; type_: NumberType): WideString; dispid 11;
    function GetBytesByNum(const input: WideString; type_: NumberType): {??PSafeArray}OleVariant; dispid 12;
    function ConvertIPAddressToNumber(const strIPAddress: WideString): Integer; dispid 13;
    function ConvertNumberToIPAddress(intIPAddress: Integer): WideString; dispid 14;
    function ConvertFingerprintToString(var Fingerprint: {??PSafeArray}OleVariant): WideString; dispid 15;
    function ConvertStringFingerprintToBytes(const Fingerprint: WideString): {??PSafeArray}OleVariant; dispid 16;
    function SetP2pServerIpAddress(const ip: WideString): Integer; dispid 17;
  end;

// *********************************************************************//
// Interface: _Record
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {872E1A36-0C41-348D-B42F-EB08F2ADC6FD}
// *********************************************************************//
  _Record = interface(IDispatch)
    ['{872E1A36-0C41-348D-B42F-EB08F2ADC6FD}']
  end;

// *********************************************************************//
// DispIntf:  _RecordDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {872E1A36-0C41-348D-B42F-EB08F2ADC6FD}
// *********************************************************************//
  _RecordDisp = dispinterface
    ['{872E1A36-0C41-348D-B42F-EB08F2ADC6FD}']
  end;

// *********************************************************************//
// Interface: _RLYN060
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}
// *********************************************************************//
  _RLYN060 = interface(IDispatch)
    ['{BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}']
  end;

// *********************************************************************//
// DispIntf:  _RLYN060Disp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}
// *********************************************************************//
  _RLYN060Disp = dispinterface
    ['{BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}']
  end;

// *********************************************************************//
// Interface: _ReceiveHandler
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DF5EE57E-4F74-3B21-BBCF-3B18A80E8CCE}
// *********************************************************************//
  _ReceiveHandler = interface(IDispatch)
    ['{DF5EE57E-4F74-3B21-BBCF-3B18A80E8CCE}']
  end;

// *********************************************************************//
// DispIntf:  _ReceiveHandlerDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {DF5EE57E-4F74-3B21-BBCF-3B18A80E8CCE}
// *********************************************************************//
  _ReceiveHandlerDisp = dispinterface
    ['{DF5EE57E-4F74-3B21-BBCF-3B18A80E8CCE}']
  end;

// *********************************************************************//
// Interface: _Zd2911Monitor
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {819EC030-5F30-3B34-A7AC-2229738A4927}
// *********************************************************************//
  _Zd2911Monitor = interface(IDispatch)
    ['{819EC030-5F30-3B34-A7AC-2229738A4927}']
  end;

// *********************************************************************//
// DispIntf:  _Zd2911MonitorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {819EC030-5F30-3B34-A7AC-2229738A4927}
// *********************************************************************//
  _Zd2911MonitorDisp = dispinterface
    ['{819EC030-5F30-3B34-A7AC-2229738A4927}']
  end;

// *********************************************************************//
// Interface: _ReceiveEventArg
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76CCC584-F45C-30CF-A7A2-FE85DEE0777D}
// *********************************************************************//
  _ReceiveEventArg = interface(IDispatch)
    ['{76CCC584-F45C-30CF-A7A2-FE85DEE0777D}']
  end;

// *********************************************************************//
// DispIntf:  _ReceiveEventArgDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {76CCC584-F45C-30CF-A7A2-FE85DEE0777D}
// *********************************************************************//
  _ReceiveEventArgDisp = dispinterface
    ['{76CCC584-F45C-30CF-A7A2-FE85DEE0777D}']
  end;

// *********************************************************************//
// Interface: _ReceiveHandlerExt
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4242B135-ADEA-32B2-A81F-DFEE0AC4E351}
// *********************************************************************//
  _ReceiveHandlerExt = interface(IDispatch)
    ['{4242B135-ADEA-32B2-A81F-DFEE0AC4E351}']
  end;

// *********************************************************************//
// DispIntf:  _ReceiveHandlerExtDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4242B135-ADEA-32B2-A81F-DFEE0AC4E351}
// *********************************************************************//
  _ReceiveHandlerExtDisp = dispinterface
    ['{4242B135-ADEA-32B2-A81F-DFEE0AC4E351}']
  end;

// *********************************************************************//
// Interface: IDevice
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F282EC34-C902-43B0-9CC7-EB7FC9807779}
// *********************************************************************//
  IDevice = interface(IDispatch)
    ['{F282EC34-C902-43B0-9CC7-EB7FC9807779}']
    function Get_DN: Integer; safecall;
    procedure Set_DN(pRetVal: Integer); safecall;
    function Get_SerialNumber: WideString; safecall;
    procedure Set_SerialNumber(const pRetVal: WideString); safecall;
    function Get_Model: WideString; safecall;
    procedure Set_Model(const pRetVal: WideString); safecall;
    function Get_CommunicationType: CommunicationType; safecall;
    procedure Set_CommunicationType(pRetVal: CommunicationType); safecall;
    function Get_Baudrate: Integer; safecall;
    procedure Set_Baudrate(pRetVal: Integer); safecall;
    function Get_SerialPort: Integer; safecall;
    procedure Set_SerialPort(pRetVal: Integer); safecall;
    function Get_Password: WideString; safecall;
    procedure Set_Password(const pRetVal: WideString); safecall;
    function Get_IpPort: Integer; safecall;
    procedure Set_IpPort(pRetVal: Integer); safecall;
    function Get_IpAddress: WideString; safecall;
    procedure Set_IpAddress(const pRetVal: WideString); safecall;
    function Get_Label_: WideString; safecall;
    procedure Set_Label_(const pRetVal: WideString); safecall;
    function Get_ConnectionModel: Integer; safecall;
    procedure Set_ConnectionModel(pRetVal: Integer); safecall;
    property DN: Integer read Get_DN write Set_DN;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property Model: WideString read Get_Model write Set_Model;
    property CommunicationType: CommunicationType read Get_CommunicationType write Set_CommunicationType;
    property Baudrate: Integer read Get_Baudrate write Set_Baudrate;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property Password: WideString read Get_Password write Set_Password;
    property IpPort: Integer read Get_IpPort write Set_IpPort;
    property IpAddress: WideString read Get_IpAddress write Set_IpAddress;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property ConnectionModel: Integer read Get_ConnectionModel write Set_ConnectionModel;
  end;

// *********************************************************************//
// DispIntf:  IDeviceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F282EC34-C902-43B0-9CC7-EB7FC9807779}
// *********************************************************************//
  IDeviceDisp = dispinterface
    ['{F282EC34-C902-43B0-9CC7-EB7FC9807779}']
    property DN: Integer dispid 1;
    property SerialNumber: WideString dispid 2;
    property Model: WideString dispid 3;
    property CommunicationType: CommunicationType dispid 4;
    property Baudrate: Integer dispid 5;
    property SerialPort: Integer dispid 6;
    property Password: WideString dispid 7;
    property IpPort: Integer dispid 8;
    property IpAddress: WideString dispid 9;
    property Label_: WideString dispid 10;
    property ConnectionModel: Integer dispid 11;
  end;

// *********************************************************************//
// Interface: _ConnectionException
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {61DBAA57-0CE2-3801-8E78-A21669BD1547}
// *********************************************************************//
  _ConnectionException = interface(IDispatch)
    ['{61DBAA57-0CE2-3801-8E78-A21669BD1547}']
  end;

// *********************************************************************//
// DispIntf:  _ConnectionExceptionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {61DBAA57-0CE2-3801-8E78-A21669BD1547}
// *********************************************************************//
  _ConnectionExceptionDisp = dispinterface
    ['{61DBAA57-0CE2-3801-8E78-A21669BD1547}']
  end;

// *********************************************************************//
// Interface: IZd2911DeviceConnection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}
// *********************************************************************//
  IZd2911DeviceConnection = interface(IDispatch)
    ['{AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}']
    function Open(const Device: IDevice): Integer; safecall;
    procedure Close; safecall;
    function SetPropertyExt(property_: UserProperty; var extraProperty: PSafeArray; 
                            const User: IUserExt; var extraData: PSafeArray): WordBool; safecall;
    function GetPropertyExt(property_: UserProperty; var extraProperty: PSafeArray; 
                            var User: IUserExt; var extraData: PSafeArray): WordBool; safecall;
    function SetPropertyExt_2(property_: DeviceProperty; var extraProperty: PSafeArray; 
                              const Device: IDevice; var extraData: PSafeArray): WordBool; safecall;
    function GetPropertyExt_2(property_: DeviceProperty; var extraProperty: PSafeArray; 
                              var Device: IDevice; var extraData: PSafeArray): WordBool; safecall;
  end;

// *********************************************************************//
// DispIntf:  IZd2911DeviceConnectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}
// *********************************************************************//
  IZd2911DeviceConnectionDisp = dispinterface
    ['{AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}']
    function Open(const Device: IDevice): Integer; dispid 1;
    procedure Close; dispid 2;
    function SetPropertyExt(property_: UserProperty; var extraProperty: {??PSafeArray}OleVariant; 
                            const User: IUserExt; var extraData: {??PSafeArray}OleVariant): WordBool; dispid 3;
    function GetPropertyExt(property_: UserProperty; var extraProperty: {??PSafeArray}OleVariant; 
                            var User: IUserExt; var extraData: {??PSafeArray}OleVariant): WordBool; dispid 4;
    function SetPropertyExt_2(property_: DeviceProperty; 
                              var extraProperty: {??PSafeArray}OleVariant; const Device: IDevice; 
                              var extraData: {??PSafeArray}OleVariant): WordBool; dispid 5;
    function GetPropertyExt_2(property_: DeviceProperty; 
                              var extraProperty: {??PSafeArray}OleVariant; var Device: IDevice; 
                              var extraData: {??PSafeArray}OleVariant): WordBool; dispid 6;
  end;

// *********************************************************************//
// Interface: _Zd2911EnrollFileManagement
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {787A0B63-5843-3E76-AEE9-A2B7D8F4314E}
// *********************************************************************//
  _Zd2911EnrollFileManagement = interface(IDispatch)
    ['{787A0B63-5843-3E76-AEE9-A2B7D8F4314E}']
  end;

// *********************************************************************//
// DispIntf:  _Zd2911EnrollFileManagementDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {787A0B63-5843-3E76-AEE9-A2B7D8F4314E}
// *********************************************************************//
  _Zd2911EnrollFileManagementDisp = dispinterface
    ['{787A0B63-5843-3E76-AEE9-A2B7D8F4314E}']
  end;

// *********************************************************************//
// Interface: _P2pUtils
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}
// *********************************************************************//
  _P2pUtils = interface(IDispatch)
    ['{4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}']
  end;

// *********************************************************************//
// DispIntf:  _P2pUtilsDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}
// *********************************************************************//
  _P2pUtilsDisp = dispinterface
    ['{4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}']
  end;

// *********************************************************************//
// The Class CoZd2911EnrollFile provides a Create and CreateRemote method to          
// create instances of the default interface IZd2911EnrollFile exposed by              
// the CoClass Zd2911EnrollFile. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911EnrollFile = class
    class function Create: IZd2911EnrollFile;
    class function CreateRemote(const MachineName: string): IZd2911EnrollFile;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZd2911EnrollFile
// Help String      : 
// Default Interface: IZd2911EnrollFile
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZd2911EnrollFileProperties= class;
{$ENDIF}
  TZd2911EnrollFile = class(TOleServer)
  private
    FIntf:        IZd2911EnrollFile;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZd2911EnrollFileProperties;
    function      GetServerProperties: TZd2911EnrollFileProperties;
{$ENDIF}
    function      GetDefaultInterface: IZd2911EnrollFile;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IZd2911EnrollFile);
    procedure Disconnect; override;
    function SaveAllUserExtEnrollDataAsDB(const fileName: WideString; var userExts: PSafeArray): WordBool;
    function SaveUserExtEnrollDataAsDB(const fileName: WideString; var UserExt: IUserExt): WordBool;
    function LoadAllUserExtEnrollDataFromDB(const fileName: WideString; var userExts: PSafeArray): WordBool;
    function LoadUserExtEnrollDataFromDB(const fileName: WideString; var UserExt: IUserExt): WordBool;
    function SaveUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool;
    function LoadUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool;
    property DefaultInterface: IZd2911EnrollFile read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZd2911EnrollFileProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZd2911EnrollFile
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZd2911EnrollFileProperties = class(TPersistent)
  private
    FServer:    TZd2911EnrollFile;
    function    GetDefaultInterface: IZd2911EnrollFile;
    constructor Create(AServer: TZd2911EnrollFile);
  protected
  public
    property DefaultInterface: IZd2911EnrollFile read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoZd2911Tools provides a Create and CreateRemote method to          
// create instances of the default interface IZd2911Tools exposed by              
// the CoClass Zd2911Tools. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911Tools = class
    class function Create: IZd2911Tools;
    class function CreateRemote(const MachineName: string): IZd2911Tools;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZd2911Tools
// Help String      : 
// Default Interface: IZd2911Tools
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZd2911ToolsProperties= class;
{$ENDIF}
  TZd2911Tools = class(TOleServer)
  private
    FIntf:        IZd2911Tools;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZd2911ToolsProperties;
    function      GetServerProperties: TZd2911ToolsProperties;
{$ENDIF}
    function      GetDefaultInterface: IZd2911Tools;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IZd2911Tools);
    procedure Disconnect; override;
    function BitCheck(num: Integer; index: Integer): Integer;
    function SetBit(num: Integer; index: Integer): Integer;
    function CreateChunkHeader(var buffer: PSafeArray; dataChunk: Integer): PSafeArray;
    function GetSLogList(var buffer: PSafeArray): PSafeArray;
    function GetUserExtWithoutEnroll(var buffer: PSafeArray): IUserExt;
    function GetAllUserExtWithoutEnroll(var buffer: PSafeArray): PSafeArray;
    function GetGLogList(var buffer: PSafeArray): PSafeArray;
    function GetBytes(const input: WideString): PSafeArray;
    function GetString(var bs: PSafeArray): WideString;
    function GetASCII(var bs: PSafeArray; index: Integer; length: Integer): WideString;
    function GetStringByNum(var bs: PSafeArray; index: Integer; type_: NumberType): WideString;
    function GetBytesByNum(const input: WideString; type_: NumberType): PSafeArray;
    function ConvertIPAddressToNumber(const strIPAddress: WideString): Integer;
    function ConvertNumberToIPAddress(intIPAddress: Integer): WideString;
    function ConvertFingerprintToString(var Fingerprint: PSafeArray): WideString;
    function ConvertStringFingerprintToBytes(const Fingerprint: WideString): PSafeArray;
    function SetP2pServerIpAddress(const ip: WideString): Integer;
    property DefaultInterface: IZd2911Tools read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZd2911ToolsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZd2911Tools
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZd2911ToolsProperties = class(TPersistent)
  private
    FServer:    TZd2911Tools;
    function    GetDefaultInterface: IZd2911Tools;
    constructor Create(AServer: TZd2911Tools);
  protected
  public
    property DefaultInterface: IZd2911Tools read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoZd2911Listener provides a Create and CreateRemote method to          
// create instances of the default interface IZd2911Listener exposed by              
// the CoClass Zd2911Listener. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911Listener = class
    class function Create: IZd2911Listener;
    class function CreateRemote(const MachineName: string): IZd2911Listener;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZd2911Listener
// Help String      : 
// Default Interface: IZd2911Listener
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZd2911ListenerProperties= class;
{$ENDIF}
  TZd2911Listener = class(TOleServer)
  private
    FIntf:        IZd2911Listener;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZd2911ListenerProperties;
    function      GetServerProperties: TZd2911ListenerProperties;
{$ENDIF}
    function      GetDefaultInterface: IZd2911Listener;
  protected
    procedure InitServerData; override;
    function Get_IsBusy: WordBool;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IZd2911Listener);
    procedure Disconnect; override;
    procedure add_ReceiveHandlerExt(const value: _ReceiveHandlerExt);
    procedure remove_ReceiveHandlerExt(const value: _ReceiveHandlerExt);
    function OpenListen(const m: IMonitor): WordBool;
    procedure CloseListen;
    property DefaultInterface: IZd2911Listener read GetDefaultInterface;
    property IsBusy: WordBool read Get_IsBusy;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZd2911ListenerProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZd2911Listener
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZd2911ListenerProperties = class(TPersistent)
  private
    FServer:    TZd2911Listener;
    function    GetDefaultInterface: IZd2911Listener;
    constructor Create(AServer: TZd2911Listener);
  protected
    function Get_IsBusy: WordBool;
  public
    property DefaultInterface: IZd2911Listener read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoReceiveEventArgExt provides a Create and CreateRemote method to          
// create instances of the default interface IReceiveEventArgExt exposed by              
// the CoClass ReceiveEventArgExt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceiveEventArgExt = class
    class function Create: IReceiveEventArgExt;
    class function CreateRemote(const MachineName: string): IReceiveEventArgExt;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TReceiveEventArgExt
// Help String      : 
// Default Interface: IReceiveEventArgExt
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TReceiveEventArgExtProperties= class;
{$ENDIF}
  TReceiveEventArgExt = class(TOleServer)
  private
    FIntf:        IReceiveEventArgExt;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TReceiveEventArgExtProperties;
    function      GetServerProperties: TReceiveEventArgExtProperties;
{$ENDIF}
    function      GetDefaultInterface: IReceiveEventArgExt;
  protected
    procedure InitServerData; override;
    function Get_Record_: IRecordExt;
    procedure _Set_Record_(const pRetVal: IRecordExt);
    function Get_endPoint: IUnknown;
    procedure _Set_endPoint(const pRetVal: IUnknown);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IReceiveEventArgExt);
    procedure Disconnect; override;
    property DefaultInterface: IReceiveEventArgExt read GetDefaultInterface;
    property Record_: IRecordExt read Get_Record_ write _Set_Record_;
    property endPoint: IUnknown read Get_endPoint write _Set_endPoint;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TReceiveEventArgExtProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TReceiveEventArgExt
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TReceiveEventArgExtProperties = class(TPersistent)
  private
    FServer:    TReceiveEventArgExt;
    function    GetDefaultInterface: IReceiveEventArgExt;
    constructor Create(AServer: TReceiveEventArgExt);
  protected
    function Get_Record_: IRecordExt;
    procedure _Set_Record_(const pRetVal: IRecordExt);
    function Get_endPoint: IUnknown;
    procedure _Set_endPoint(const pRetVal: IUnknown);
  public
    property DefaultInterface: IReceiveEventArgExt read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDevice provides a Create and CreateRemote method to          
// create instances of the default interface IDevice exposed by              
// the CoClass Device. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDevice = class
    class function Create: IDevice;
    class function CreateRemote(const MachineName: string): IDevice;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TDevice
// Help String      : 
// Default Interface: IDevice
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TDeviceProperties= class;
{$ENDIF}
  TDevice = class(TOleServer)
  private
    FIntf:        IDevice;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TDeviceProperties;
    function      GetServerProperties: TDeviceProperties;
{$ENDIF}
    function      GetDefaultInterface: IDevice;
  protected
    procedure InitServerData; override;
    function Get_DN: Integer;
    procedure Set_DN(pRetVal: Integer);
    function Get_SerialNumber: WideString;
    procedure Set_SerialNumber(const pRetVal: WideString);
    function Get_Model: WideString;
    procedure Set_Model(const pRetVal: WideString);
    function Get_CommunicationType: CommunicationType;
    procedure Set_CommunicationType(pRetVal: CommunicationType);
    function Get_Baudrate: Integer;
    procedure Set_Baudrate(pRetVal: Integer);
    function Get_SerialPort: Integer;
    procedure Set_SerialPort(pRetVal: Integer);
    function Get_Password: WideString;
    procedure Set_Password(const pRetVal: WideString);
    function Get_IpPort: Integer;
    procedure Set_IpPort(pRetVal: Integer);
    function Get_IpAddress: WideString;
    procedure Set_IpAddress(const pRetVal: WideString);
    function Get_Label_: WideString;
    procedure Set_Label_(const pRetVal: WideString);
    function Get_ConnectionModel: Integer;
    procedure Set_ConnectionModel(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IDevice);
    procedure Disconnect; override;
    property DefaultInterface: IDevice read GetDefaultInterface;
    property DN: Integer read Get_DN write Set_DN;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property Model: WideString read Get_Model write Set_Model;
    property CommunicationType: CommunicationType read Get_CommunicationType write Set_CommunicationType;
    property Baudrate: Integer read Get_Baudrate write Set_Baudrate;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property Password: WideString read Get_Password write Set_Password;
    property IpPort: Integer read Get_IpPort write Set_IpPort;
    property IpAddress: WideString read Get_IpAddress write Set_IpAddress;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property ConnectionModel: Integer read Get_ConnectionModel write Set_ConnectionModel;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TDeviceProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TDevice
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TDeviceProperties = class(TPersistent)
  private
    FServer:    TDevice;
    function    GetDefaultInterface: IDevice;
    constructor Create(AServer: TDevice);
  protected
    function Get_DN: Integer;
    procedure Set_DN(pRetVal: Integer);
    function Get_SerialNumber: WideString;
    procedure Set_SerialNumber(const pRetVal: WideString);
    function Get_Model: WideString;
    procedure Set_Model(const pRetVal: WideString);
    function Get_CommunicationType: CommunicationType;
    procedure Set_CommunicationType(pRetVal: CommunicationType);
    function Get_Baudrate: Integer;
    procedure Set_Baudrate(pRetVal: Integer);
    function Get_SerialPort: Integer;
    procedure Set_SerialPort(pRetVal: Integer);
    function Get_Password: WideString;
    procedure Set_Password(const pRetVal: WideString);
    function Get_IpPort: Integer;
    procedure Set_IpPort(pRetVal: Integer);
    function Get_IpAddress: WideString;
    procedure Set_IpAddress(const pRetVal: WideString);
    function Get_Label_: WideString;
    procedure Set_Label_(const pRetVal: WideString);
    function Get_ConnectionModel: Integer;
    procedure Set_ConnectionModel(pRetVal: Integer);
  public
    property DefaultInterface: IDevice read GetDefaultInterface;
  published
    property DN: Integer read Get_DN write Set_DN;
    property SerialNumber: WideString read Get_SerialNumber write Set_SerialNumber;
    property Model: WideString read Get_Model write Set_Model;
    property CommunicationType: CommunicationType read Get_CommunicationType write Set_CommunicationType;
    property Baudrate: Integer read Get_Baudrate write Set_Baudrate;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property Password: WideString read Get_Password write Set_Password;
    property IpPort: Integer read Get_IpPort write Set_IpPort;
    property IpAddress: WideString read Get_IpAddress write Set_IpAddress;
    property Label_: WideString read Get_Label_ write Set_Label_;
    property ConnectionModel: Integer read Get_ConnectionModel write Set_ConnectionModel;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoZd2911DeviceConnection provides a Create and CreateRemote method to          
// create instances of the default interface IZd2911DeviceConnection exposed by              
// the CoClass Zd2911DeviceConnection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911DeviceConnection = class
    class function Create: IZd2911DeviceConnection;
    class function CreateRemote(const MachineName: string): IZd2911DeviceConnection;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZd2911DeviceConnection
// Help String      : 
// Default Interface: IZd2911DeviceConnection
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZd2911DeviceConnectionProperties= class;
{$ENDIF}
  TZd2911DeviceConnection = class(TOleServer)
  private
    FIntf:        IZd2911DeviceConnection;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZd2911DeviceConnectionProperties;
    function      GetServerProperties: TZd2911DeviceConnectionProperties;
{$ENDIF}
    function      GetDefaultInterface: IZd2911DeviceConnection;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IZd2911DeviceConnection);
    procedure Disconnect; override;
    function Open(const Device: IDevice): Integer;
    procedure Close;
    function SetPropertyExt(property_: UserProperty; var extraProperty: PSafeArray; 
                            const User: IUserExt; var extraData: PSafeArray): WordBool;
    function GetPropertyExt(property_: UserProperty; var extraProperty: PSafeArray; 
                            var User: IUserExt; var extraData: PSafeArray): WordBool;
    function SetPropertyExt_2(property_: DeviceProperty; var extraProperty: PSafeArray; 
                              const Device: IDevice; var extraData: PSafeArray): WordBool;
    function GetPropertyExt_2(property_: DeviceProperty; var extraProperty: PSafeArray; 
                              var Device: IDevice; var extraData: PSafeArray): WordBool;
    property DefaultInterface: IZd2911DeviceConnection read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZd2911DeviceConnectionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZd2911DeviceConnection
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZd2911DeviceConnectionProperties = class(TPersistent)
  private
    FServer:    TZd2911DeviceConnection;
    function    GetDefaultInterface: IZd2911DeviceConnection;
    constructor Create(AServer: TZd2911DeviceConnection);
  protected
  public
    property DefaultInterface: IZd2911DeviceConnection read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoEnrollExt provides a Create and CreateRemote method to          
// create instances of the default interface IEnrollExt exposed by              
// the CoClass EnrollExt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnrollExt = class
    class function Create: IEnrollExt;
    class function CreateRemote(const MachineName: string): IEnrollExt;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEnrollExt
// Help String      : 
// Default Interface: IEnrollExt
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TEnrollExtProperties= class;
{$ENDIF}
  TEnrollExt = class(TOleServer)
  private
    FIntf:        IEnrollExt;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TEnrollExtProperties;
    function      GetServerProperties: TEnrollExtProperties;
{$ENDIF}
    function      GetDefaultInterface: IEnrollExt;
  protected
    procedure InitServerData; override;
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_EnrollType: EnrollType;
    procedure Set_EnrollType(pRetVal: EnrollType);
    function Get_IsDuress: WordBool;
    procedure Set_IsDuress(pRetVal: WordBool);
    function Get_Fingerprint: PSafeArray;
    procedure Set_Fingerprint(pRetVal: PSafeArray);
    function Get_Password: WideString;
    procedure Set_Password(const pRetVal: WideString);
    function Get_CardID: WideString;
    procedure Set_CardID(const pRetVal: WideString);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IEnrollExt);
    procedure Disconnect; override;
    procedure SetFingerprint(var Fingerprint: PSafeArray);
    property DefaultInterface: IEnrollExt read GetDefaultInterface;
    property DIN: WideString read Get_DIN write Set_DIN;
    property EnrollType: EnrollType read Get_EnrollType write Set_EnrollType;
    property IsDuress: WordBool read Get_IsDuress write Set_IsDuress;
    property Fingerprint: PSafeArray read Get_Fingerprint write Set_Fingerprint;
    property Password: WideString read Get_Password write Set_Password;
    property CardID: WideString read Get_CardID write Set_CardID;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TEnrollExtProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TEnrollExt
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TEnrollExtProperties = class(TPersistent)
  private
    FServer:    TEnrollExt;
    function    GetDefaultInterface: IEnrollExt;
    constructor Create(AServer: TEnrollExt);
  protected
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_EnrollType: EnrollType;
    procedure Set_EnrollType(pRetVal: EnrollType);
    function Get_IsDuress: WordBool;
    procedure Set_IsDuress(pRetVal: WordBool);
    function Get_Fingerprint: PSafeArray;
    procedure Set_Fingerprint(pRetVal: PSafeArray);
    function Get_Password: WideString;
    procedure Set_Password(const pRetVal: WideString);
    function Get_CardID: WideString;
    procedure Set_CardID(const pRetVal: WideString);
  public
    property DefaultInterface: IEnrollExt read GetDefaultInterface;
  published
    property DIN: WideString read Get_DIN write Set_DIN;
    property EnrollType: EnrollType read Get_EnrollType write Set_EnrollType;
    property IsDuress: WordBool read Get_IsDuress write Set_IsDuress;
    property Fingerprint: PSafeArray read Get_Fingerprint write Set_Fingerprint;
    property Password: WideString read Get_Password write Set_Password;
    property CardID: WideString read Get_CardID write Set_CardID;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoUserExt provides a Create and CreateRemote method to          
// create instances of the default interface IUserExt exposed by              
// the CoClass UserExt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUserExt = class
    class function Create: IUserExt;
    class function CreateRemote(const MachineName: string): IUserExt;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUserExt
// Help String      : 
// Default Interface: IUserExt
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TUserExtProperties= class;
{$ENDIF}
  TUserExt = class(TOleServer)
  private
    FIntf:        IUserExt;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TUserExtProperties;
    function      GetServerProperties: TUserExtProperties;
{$ENDIF}
    function      GetDefaultInterface: IUserExt;
  protected
    procedure InitServerData; override;
    function Get_Privilege: Integer;
    procedure Set_Privilege(pRetVal: Integer);
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_UserName: WideString;
    procedure Set_UserName(const pRetVal: WideString);
    function Get_IDNumber: WideString;
    procedure Set_IDNumber(const pRetVal: WideString);
    function Get_Sex: ISex;
    procedure _Set_Sex(const pRetVal: ISex);
    function Get_Enable: WordBool;
    procedure Set_Enable(pRetVal: WordBool);
    function Get_Comment: WideString;
    procedure Set_Comment(const pRetVal: WideString);
    function Get_DeptId: WideString;
    procedure Set_DeptId(const pRetVal: WideString);
    function Get_AttType: Integer;
    procedure Set_AttType(pRetVal: Integer);
    function Get_Birthday: TDateTime;
    procedure Set_Birthday(pRetVal: TDateTime);
    function Get_AccessControl: Integer;
    procedure Set_AccessControl(pRetVal: Integer);
    function Get_ValidityPeriod: WordBool;
    procedure Set_ValidityPeriod(pRetVal: WordBool);
    function Get_UseUserGroupACTZ: WordBool;
    procedure Set_UseUserGroupACTZ(pRetVal: WordBool);
    function Get_UseUserGroupVM: WordBool;
    procedure Set_UseUserGroupVM(pRetVal: WordBool);
    function Get_Department: Integer;
    procedure Set_Department(pRetVal: Integer);
    function Get_Enrolls: PSafeArray;
    procedure Set_Enrolls(pRetVal: PSafeArray);
    function Get_AccessTimeZone: Integer;
    procedure Set_AccessTimeZone(pRetVal: Integer);
    function Get_ValidDate: TDateTime;
    procedure Set_ValidDate(pRetVal: TDateTime);
    function Get_InvalidDate: TDateTime;
    procedure Set_InvalidDate(pRetVal: TDateTime);
    function Get_UserGroup: Integer;
    procedure Set_UserGroup(pRetVal: Integer);
    function Get_LockControl: Integer;
    procedure Set_LockControl(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IUserExt);
    procedure Disconnect; override;
    procedure SetEnrolls(var Enrolls: PSafeArray);
    property DefaultInterface: IUserExt read GetDefaultInterface;
    property Sex: ISex read Get_Sex write _Set_Sex;
    property Privilege: Integer read Get_Privilege write Set_Privilege;
    property DIN: WideString read Get_DIN write Set_DIN;
    property UserName: WideString read Get_UserName write Set_UserName;
    property IDNumber: WideString read Get_IDNumber write Set_IDNumber;
    property Enable: WordBool read Get_Enable write Set_Enable;
    property Comment: WideString read Get_Comment write Set_Comment;
    property DeptId: WideString read Get_DeptId write Set_DeptId;
    property AttType: Integer read Get_AttType write Set_AttType;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property AccessControl: Integer read Get_AccessControl write Set_AccessControl;
    property ValidityPeriod: WordBool read Get_ValidityPeriod write Set_ValidityPeriod;
    property UseUserGroupACTZ: WordBool read Get_UseUserGroupACTZ write Set_UseUserGroupACTZ;
    property UseUserGroupVM: WordBool read Get_UseUserGroupVM write Set_UseUserGroupVM;
    property Department: Integer read Get_Department write Set_Department;
    property Enrolls: PSafeArray read Get_Enrolls write Set_Enrolls;
    property AccessTimeZone: Integer read Get_AccessTimeZone write Set_AccessTimeZone;
    property ValidDate: TDateTime read Get_ValidDate write Set_ValidDate;
    property InvalidDate: TDateTime read Get_InvalidDate write Set_InvalidDate;
    property UserGroup: Integer read Get_UserGroup write Set_UserGroup;
    property LockControl: Integer read Get_LockControl write Set_LockControl;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TUserExtProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TUserExt
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TUserExtProperties = class(TPersistent)
  private
    FServer:    TUserExt;
    function    GetDefaultInterface: IUserExt;
    constructor Create(AServer: TUserExt);
  protected
    function Get_Privilege: Integer;
    procedure Set_Privilege(pRetVal: Integer);
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_UserName: WideString;
    procedure Set_UserName(const pRetVal: WideString);
    function Get_IDNumber: WideString;
    procedure Set_IDNumber(const pRetVal: WideString);
    function Get_Sex: ISex;
    procedure _Set_Sex(const pRetVal: ISex);
    function Get_Enable: WordBool;
    procedure Set_Enable(pRetVal: WordBool);
    function Get_Comment: WideString;
    procedure Set_Comment(const pRetVal: WideString);
    function Get_DeptId: WideString;
    procedure Set_DeptId(const pRetVal: WideString);
    function Get_AttType: Integer;
    procedure Set_AttType(pRetVal: Integer);
    function Get_Birthday: TDateTime;
    procedure Set_Birthday(pRetVal: TDateTime);
    function Get_AccessControl: Integer;
    procedure Set_AccessControl(pRetVal: Integer);
    function Get_ValidityPeriod: WordBool;
    procedure Set_ValidityPeriod(pRetVal: WordBool);
    function Get_UseUserGroupACTZ: WordBool;
    procedure Set_UseUserGroupACTZ(pRetVal: WordBool);
    function Get_UseUserGroupVM: WordBool;
    procedure Set_UseUserGroupVM(pRetVal: WordBool);
    function Get_Department: Integer;
    procedure Set_Department(pRetVal: Integer);
    function Get_Enrolls: PSafeArray;
    procedure Set_Enrolls(pRetVal: PSafeArray);
    function Get_AccessTimeZone: Integer;
    procedure Set_AccessTimeZone(pRetVal: Integer);
    function Get_ValidDate: TDateTime;
    procedure Set_ValidDate(pRetVal: TDateTime);
    function Get_InvalidDate: TDateTime;
    procedure Set_InvalidDate(pRetVal: TDateTime);
    function Get_UserGroup: Integer;
    procedure Set_UserGroup(pRetVal: Integer);
    function Get_LockControl: Integer;
    procedure Set_LockControl(pRetVal: Integer);
  public
    property DefaultInterface: IUserExt read GetDefaultInterface;
  published
    property Privilege: Integer read Get_Privilege write Set_Privilege;
    property DIN: WideString read Get_DIN write Set_DIN;
    property UserName: WideString read Get_UserName write Set_UserName;
    property IDNumber: WideString read Get_IDNumber write Set_IDNumber;
    property Enable: WordBool read Get_Enable write Set_Enable;
    property Comment: WideString read Get_Comment write Set_Comment;
    property DeptId: WideString read Get_DeptId write Set_DeptId;
    property AttType: Integer read Get_AttType write Set_AttType;
    property Birthday: TDateTime read Get_Birthday write Set_Birthday;
    property AccessControl: Integer read Get_AccessControl write Set_AccessControl;
    property ValidityPeriod: WordBool read Get_ValidityPeriod write Set_ValidityPeriod;
    property UseUserGroupACTZ: WordBool read Get_UseUserGroupACTZ write Set_UseUserGroupACTZ;
    property UseUserGroupVM: WordBool read Get_UseUserGroupVM write Set_UseUserGroupVM;
    property Department: Integer read Get_Department write Set_Department;
    property Enrolls: PSafeArray read Get_Enrolls write Set_Enrolls;
    property AccessTimeZone: Integer read Get_AccessTimeZone write Set_AccessTimeZone;
    property ValidDate: TDateTime read Get_ValidDate write Set_ValidDate;
    property InvalidDate: TDateTime read Get_InvalidDate write Set_InvalidDate;
    property UserGroup: Integer read Get_UserGroup write Set_UserGroup;
    property LockControl: Integer read Get_LockControl write Set_LockControl;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRecordExt provides a Create and CreateRemote method to          
// create instances of the default interface IRecordExt exposed by              
// the CoClass RecordExt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRecordExt = class
    class function Create: IRecordExt;
    class function CreateRemote(const MachineName: string): IRecordExt;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRecordExt
// Help String      : 
// Default Interface: IRecordExt
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRecordExtProperties= class;
{$ENDIF}
  TRecordExt = class(TOleServer)
  private
    FIntf:        IRecordExt;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRecordExtProperties;
    function      GetServerProperties: TRecordExtProperties;
{$ENDIF}
    function      GetDefaultInterface: IRecordExt;
  protected
    procedure InitServerData; override;
    function Get_DN: Integer;
    procedure Set_DN(pRetVal: Integer);
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_Clock: TDateTime;
    procedure Set_Clock(pRetVal: TDateTime);
    function Get_Verify: Integer;
    procedure Set_Verify(pRetVal: Integer);
    function Get_Action: Integer;
    procedure Set_Action(pRetVal: Integer);
    function Get_Remark: WideString;
    procedure Set_Remark(const pRetVal: WideString);
    function Get_MDIN: WideString;
    procedure Set_MDIN(const pRetVal: WideString);
    function Get_DoorStatus: Integer;
    procedure Set_DoorStatus(pRetVal: Integer);
    function Get_JobCode: Integer;
    procedure Set_JobCode(pRetVal: Integer);
    function Get_Antipassback: Integer;
    procedure Set_Antipassback(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IRecordExt);
    procedure Disconnect; override;
    property DefaultInterface: IRecordExt read GetDefaultInterface;
    property DN: Integer read Get_DN write Set_DN;
    property DIN: WideString read Get_DIN write Set_DIN;
    property Clock: TDateTime read Get_Clock write Set_Clock;
    property Verify: Integer read Get_Verify write Set_Verify;
    property Action: Integer read Get_Action write Set_Action;
    property Remark: WideString read Get_Remark write Set_Remark;
    property MDIN: WideString read Get_MDIN write Set_MDIN;
    property DoorStatus: Integer read Get_DoorStatus write Set_DoorStatus;
    property JobCode: Integer read Get_JobCode write Set_JobCode;
    property Antipassback: Integer read Get_Antipassback write Set_Antipassback;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRecordExtProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRecordExt
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRecordExtProperties = class(TPersistent)
  private
    FServer:    TRecordExt;
    function    GetDefaultInterface: IRecordExt;
    constructor Create(AServer: TRecordExt);
  protected
    function Get_DN: Integer;
    procedure Set_DN(pRetVal: Integer);
    function Get_DIN: WideString;
    procedure Set_DIN(const pRetVal: WideString);
    function Get_Clock: TDateTime;
    procedure Set_Clock(pRetVal: TDateTime);
    function Get_Verify: Integer;
    procedure Set_Verify(pRetVal: Integer);
    function Get_Action: Integer;
    procedure Set_Action(pRetVal: Integer);
    function Get_Remark: WideString;
    procedure Set_Remark(const pRetVal: WideString);
    function Get_MDIN: WideString;
    procedure Set_MDIN(const pRetVal: WideString);
    function Get_DoorStatus: Integer;
    procedure Set_DoorStatus(pRetVal: Integer);
    function Get_JobCode: Integer;
    procedure Set_JobCode(pRetVal: Integer);
    function Get_Antipassback: Integer;
    procedure Set_Antipassback(pRetVal: Integer);
  public
    property DefaultInterface: IRecordExt read GetDefaultInterface;
  published
    property DN: Integer read Get_DN write Set_DN;
    property DIN: WideString read Get_DIN write Set_DIN;
    property Clock: TDateTime read Get_Clock write Set_Clock;
    property Verify: Integer read Get_Verify write Set_Verify;
    property Action: Integer read Get_Action write Set_Action;
    property Remark: WideString read Get_Remark write Set_Remark;
    property MDIN: WideString read Get_MDIN write Set_MDIN;
    property DoorStatus: Integer read Get_DoorStatus write Set_DoorStatus;
    property JobCode: Integer read Get_JobCode write Set_JobCode;
    property Antipassback: Integer read Get_Antipassback write Set_Antipassback;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoMonitor provides a Create and CreateRemote method to          
// create instances of the default interface IMonitor exposed by              
// the CoClass Monitor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoMonitor = class
    class function Create: IMonitor;
    class function CreateRemote(const MachineName: string): IMonitor;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TMonitor
// Help String      : 
// Default Interface: IMonitor
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TMonitorProperties= class;
{$ENDIF}
  TMonitor = class(TOleServer)
  private
    FIntf:        IMonitor;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TMonitorProperties;
    function      GetServerProperties: TMonitorProperties;
{$ENDIF}
    function      GetDefaultInterface: IMonitor;
  protected
    procedure InitServerData; override;
    function Get_Mode: Integer;
    procedure Set_Mode(pRetVal: Integer);
    function Get_UDPAddress: WideString;
    procedure Set_UDPAddress(const pRetVal: WideString);
    function Get_UDPPort: Integer;
    procedure Set_UDPPort(pRetVal: Integer);
    function Get_SerialPort: Integer;
    procedure Set_SerialPort(pRetVal: Integer);
    function Get_SerialBaudRate: Integer;
    procedure Set_SerialBaudRate(pRetVal: Integer);
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: IMonitor);
    procedure Disconnect; override;
    property DefaultInterface: IMonitor read GetDefaultInterface;
    property Mode: Integer read Get_Mode write Set_Mode;
    property UDPAddress: WideString read Get_UDPAddress write Set_UDPAddress;
    property UDPPort: Integer read Get_UDPPort write Set_UDPPort;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property SerialBaudRate: Integer read Get_SerialBaudRate write Set_SerialBaudRate;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TMonitorProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TMonitor
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TMonitorProperties = class(TPersistent)
  private
    FServer:    TMonitor;
    function    GetDefaultInterface: IMonitor;
    constructor Create(AServer: TMonitor);
  protected
    function Get_Mode: Integer;
    procedure Set_Mode(pRetVal: Integer);
    function Get_UDPAddress: WideString;
    procedure Set_UDPAddress(const pRetVal: WideString);
    function Get_UDPPort: Integer;
    procedure Set_UDPPort(pRetVal: Integer);
    function Get_SerialPort: Integer;
    procedure Set_SerialPort(pRetVal: Integer);
    function Get_SerialBaudRate: Integer;
    procedure Set_SerialBaudRate(pRetVal: Integer);
  public
    property DefaultInterface: IMonitor read GetDefaultInterface;
  published
    property Mode: Integer read Get_Mode write Set_Mode;
    property UDPAddress: WideString read Get_UDPAddress write Set_UDPAddress;
    property UDPPort: Integer read Get_UDPPort write Set_UDPPort;
    property SerialPort: Integer read Get_SerialPort write Set_SerialPort;
    property SerialBaudRate: Integer read Get_SerialBaudRate write Set_SerialBaudRate;
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoSex provides a Create and CreateRemote method to          
// create instances of the default interface ISex exposed by              
// the CoClass Sex. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSex = class
    class function Create: ISex;
    class function CreateRemote(const MachineName: string): ISex;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TSex
// Help String      : 
// Default Interface: ISex
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TSexProperties= class;
{$ENDIF}
  TSex = class(TOleServer)
  private
    FIntf:        ISex;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TSexProperties;
    function      GetServerProperties: TSexProperties;
{$ENDIF}
    function      GetDefaultInterface: ISex;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: ISex);
    procedure Disconnect; override;
    property DefaultInterface: ISex read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TSexProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TSex
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TSexProperties = class(TPersistent)
  private
    FServer:    TSex;
    function    GetDefaultInterface: ISex;
    constructor Create(AServer: TSex);
  protected
  public
    property DefaultInterface: ISex read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoUser provides a Create and CreateRemote method to          
// create instances of the default interface _User exposed by              
// the CoClass User. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoUser = class
    class function Create: _User;
    class function CreateRemote(const MachineName: string): _User;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TUser
// Help String      : 
// Default Interface: _User
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TUserProperties= class;
{$ENDIF}
  TUser = class(TOleServer)
  private
    FIntf:        _User;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TUserProperties;
    function      GetServerProperties: TUserProperties;
{$ENDIF}
    function      GetDefaultInterface: _User;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _User);
    procedure Disconnect; override;
    property DefaultInterface: _User read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TUserProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TUser
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TUserProperties = class(TPersistent)
  private
    FServer:    TUser;
    function    GetDefaultInterface: _User;
    constructor Create(AServer: TUser);
  protected
  public
    property DefaultInterface: _User read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoEnroll provides a Create and CreateRemote method to          
// create instances of the default interface _Enroll exposed by              
// the CoClass Enroll. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoEnroll = class
    class function Create: _Enroll;
    class function CreateRemote(const MachineName: string): _Enroll;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TEnroll
// Help String      : 
// Default Interface: _Enroll
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TEnrollProperties= class;
{$ENDIF}
  TEnroll = class(TOleServer)
  private
    FIntf:        _Enroll;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TEnrollProperties;
    function      GetServerProperties: TEnrollProperties;
{$ENDIF}
    function      GetDefaultInterface: _Enroll;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Enroll);
    procedure Disconnect; override;
    property DefaultInterface: _Enroll read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TEnrollProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TEnroll
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TEnrollProperties = class(TPersistent)
  private
    FServer:    TEnroll;
    function    GetDefaultInterface: _Enroll;
    constructor Create(AServer: TEnroll);
  protected
  public
    property DefaultInterface: _Enroll read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoDeviceConnection provides a Create and CreateRemote method to          
// create instances of the default interface _DeviceConnection exposed by              
// the CoClass DeviceConnection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoDeviceConnection = class
    class function Create: _DeviceConnection;
    class function CreateRemote(const MachineName: string): _DeviceConnection;
  end;

// *********************************************************************//
// The Class CoZdFpReader provides a Create and CreateRemote method to          
// create instances of the default interface _ZdFpReader exposed by              
// the CoClass ZdFpReader. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZdFpReader = class
    class function Create: _ZdFpReader;
    class function CreateRemote(const MachineName: string): _ZdFpReader;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZdFpReader
// Help String      : 
// Default Interface: _ZdFpReader
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZdFpReaderProperties= class;
{$ENDIF}
  TZdFpReader = class(TOleServer)
  private
    FIntf:        _ZdFpReader;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZdFpReaderProperties;
    function      GetServerProperties: TZdFpReaderProperties;
{$ENDIF}
    function      GetDefaultInterface: _ZdFpReader;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ZdFpReader);
    procedure Disconnect; override;
    property DefaultInterface: _ZdFpReader read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZdFpReaderProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZdFpReader
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZdFpReaderProperties = class(TPersistent)
  private
    FServer:    TZdFpReader;
    function    GetDefaultInterface: _ZdFpReader;
    constructor Create(AServer: TZdFpReader);
  protected
  public
    property DefaultInterface: _ZdFpReader read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoZd2911Utils provides a Create and CreateRemote method to          
// create instances of the default interface _Zd2911Utils exposed by              
// the CoClass Zd2911Utils. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911Utils = class
    class function Create: _Zd2911Utils;
    class function CreateRemote(const MachineName: string): _Zd2911Utils;
  end;

// *********************************************************************//
// The Class CoZdCommBase provides a Create and CreateRemote method to          
// create instances of the default interface _ZdCommBase exposed by              
// the CoClass ZdCommBase. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZdCommBase = class
    class function Create: _ZdCommBase;
    class function CreateRemote(const MachineName: string): _ZdCommBase;
  end;

// *********************************************************************//
// The Class CoRecord_ provides a Create and CreateRemote method to          
// create instances of the default interface _Record exposed by              
// the CoClass Record_. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRecord_ = class
    class function Create: _Record;
    class function CreateRemote(const MachineName: string): _Record;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRecord
// Help String      : 
// Default Interface: _Record
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRecordProperties= class;
{$ENDIF}
  TRecord = class(TOleServer)
  private
    FIntf:        _Record;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRecordProperties;
    function      GetServerProperties: TRecordProperties;
{$ENDIF}
    function      GetDefaultInterface: _Record;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Record);
    procedure Disconnect; override;
    property DefaultInterface: _Record read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRecordProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRecord
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRecordProperties = class(TPersistent)
  private
    FServer:    TRecord;
    function    GetDefaultInterface: _Record;
    constructor Create(AServer: TRecord);
  protected
  public
    property DefaultInterface: _Record read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoRLYN060 provides a Create and CreateRemote method to          
// create instances of the default interface _RLYN060 exposed by              
// the CoClass RLYN060. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRLYN060 = class
    class function Create: _RLYN060;
    class function CreateRemote(const MachineName: string): _RLYN060;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TRLYN060
// Help String      : 
// Default Interface: _RLYN060
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TRLYN060Properties= class;
{$ENDIF}
  TRLYN060 = class(TOleServer)
  private
    FIntf:        _RLYN060;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TRLYN060Properties;
    function      GetServerProperties: TRLYN060Properties;
{$ENDIF}
    function      GetDefaultInterface: _RLYN060;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _RLYN060);
    procedure Disconnect; override;
    property DefaultInterface: _RLYN060 read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TRLYN060Properties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TRLYN060
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TRLYN060Properties = class(TPersistent)
  private
    FServer:    TRLYN060;
    function    GetDefaultInterface: _RLYN060;
    constructor Create(AServer: TRLYN060);
  protected
  public
    property DefaultInterface: _RLYN060 read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoReceiveHandler provides a Create and CreateRemote method to          
// create instances of the default interface _ReceiveHandler exposed by              
// the CoClass ReceiveHandler. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceiveHandler = class
    class function Create: _ReceiveHandler;
    class function CreateRemote(const MachineName: string): _ReceiveHandler;
  end;

// *********************************************************************//
// The Class CoZd2911Monitor provides a Create and CreateRemote method to          
// create instances of the default interface _Zd2911Monitor exposed by              
// the CoClass Zd2911Monitor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911Monitor = class
    class function Create: _Zd2911Monitor;
    class function CreateRemote(const MachineName: string): _Zd2911Monitor;
  end;

// *********************************************************************//
// The Class CoReceiveEventArg provides a Create and CreateRemote method to          
// create instances of the default interface _ReceiveEventArg exposed by              
// the CoClass ReceiveEventArg. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceiveEventArg = class
    class function Create: _ReceiveEventArg;
    class function CreateRemote(const MachineName: string): _ReceiveEventArg;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TReceiveEventArg
// Help String      : 
// Default Interface: _ReceiveEventArg
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TReceiveEventArgProperties= class;
{$ENDIF}
  TReceiveEventArg = class(TOleServer)
  private
    FIntf:        _ReceiveEventArg;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TReceiveEventArgProperties;
    function      GetServerProperties: TReceiveEventArgProperties;
{$ENDIF}
    function      GetDefaultInterface: _ReceiveEventArg;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ReceiveEventArg);
    procedure Disconnect; override;
    property DefaultInterface: _ReceiveEventArg read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TReceiveEventArgProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TReceiveEventArg
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TReceiveEventArgProperties = class(TPersistent)
  private
    FServer:    TReceiveEventArg;
    function    GetDefaultInterface: _ReceiveEventArg;
    constructor Create(AServer: TReceiveEventArg);
  protected
  public
    property DefaultInterface: _ReceiveEventArg read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoReceiveHandlerExt provides a Create and CreateRemote method to          
// create instances of the default interface _ReceiveHandlerExt exposed by              
// the CoClass ReceiveHandlerExt. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoReceiveHandlerExt = class
    class function Create: _ReceiveHandlerExt;
    class function CreateRemote(const MachineName: string): _ReceiveHandlerExt;
  end;

// *********************************************************************//
// The Class CoConnectionException provides a Create and CreateRemote method to          
// create instances of the default interface _ConnectionException exposed by              
// the CoClass ConnectionException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoConnectionException = class
    class function Create: _ConnectionException;
    class function CreateRemote(const MachineName: string): _ConnectionException;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TConnectionException
// Help String      : 
// Default Interface: _ConnectionException
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TConnectionExceptionProperties= class;
{$ENDIF}
  TConnectionException = class(TOleServer)
  private
    FIntf:        _ConnectionException;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TConnectionExceptionProperties;
    function      GetServerProperties: TConnectionExceptionProperties;
{$ENDIF}
    function      GetDefaultInterface: _ConnectionException;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _ConnectionException);
    procedure Disconnect; override;
    property DefaultInterface: _ConnectionException read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TConnectionExceptionProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TConnectionException
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TConnectionExceptionProperties = class(TPersistent)
  private
    FServer:    TConnectionException;
    function    GetDefaultInterface: _ConnectionException;
    constructor Create(AServer: TConnectionException);
  protected
  public
    property DefaultInterface: _ConnectionException read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoZd2911EnrollFileManagement provides a Create and CreateRemote method to          
// create instances of the default interface _Zd2911EnrollFileManagement exposed by              
// the CoClass Zd2911EnrollFileManagement. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoZd2911EnrollFileManagement = class
    class function Create: _Zd2911EnrollFileManagement;
    class function CreateRemote(const MachineName: string): _Zd2911EnrollFileManagement;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TZd2911EnrollFileManagement
// Help String      : 
// Default Interface: _Zd2911EnrollFileManagement
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TZd2911EnrollFileManagementProperties= class;
{$ENDIF}
  TZd2911EnrollFileManagement = class(TOleServer)
  private
    FIntf:        _Zd2911EnrollFileManagement;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TZd2911EnrollFileManagementProperties;
    function      GetServerProperties: TZd2911EnrollFileManagementProperties;
{$ENDIF}
    function      GetDefaultInterface: _Zd2911EnrollFileManagement;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _Zd2911EnrollFileManagement);
    procedure Disconnect; override;
    property DefaultInterface: _Zd2911EnrollFileManagement read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TZd2911EnrollFileManagementProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TZd2911EnrollFileManagement
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TZd2911EnrollFileManagementProperties = class(TPersistent)
  private
    FServer:    TZd2911EnrollFileManagement;
    function    GetDefaultInterface: _Zd2911EnrollFileManagement;
    constructor Create(AServer: TZd2911EnrollFileManagement);
  protected
  public
    property DefaultInterface: _Zd2911EnrollFileManagement read GetDefaultInterface;
  published
  end;
{$ENDIF}


// *********************************************************************//
// The Class CoP2pUtils provides a Create and CreateRemote method to          
// create instances of the default interface _P2pUtils exposed by              
// the CoClass P2pUtils. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoP2pUtils = class
    class function Create: _P2pUtils;
    class function CreateRemote(const MachineName: string): _P2pUtils;
  end;


// *********************************************************************//
// OLE Server Proxy class declaration
// Server Object    : TP2pUtils
// Help String      : 
// Default Interface: _P2pUtils
// Def. Intf. DISP? : No
// Event   Interface: 
// TypeFlags        : (2) CanCreate
// *********************************************************************//
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  TP2pUtilsProperties= class;
{$ENDIF}
  TP2pUtils = class(TOleServer)
  private
    FIntf:        _P2pUtils;
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    FProps:       TP2pUtilsProperties;
    function      GetServerProperties: TP2pUtilsProperties;
{$ENDIF}
    function      GetDefaultInterface: _P2pUtils;
  protected
    procedure InitServerData; override;
  public
    constructor Create(AOwner: TComponent); override;
    destructor  Destroy; override;
    procedure Connect; override;
    procedure ConnectTo(svrIntf: _P2pUtils);
    procedure Disconnect; override;
    property DefaultInterface: _P2pUtils read GetDefaultInterface;
  published
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
    property Server: TP2pUtilsProperties read GetServerProperties;
{$ENDIF}
  end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
// *********************************************************************//
// OLE Server Properties Proxy Class
// Server Object    : TP2pUtils
// (This object is used by the IDE's Property Inspector to allow editing
//  of the properties of this server)
// *********************************************************************//
 TP2pUtilsProperties = class(TPersistent)
  private
    FServer:    TP2pUtils;
    function    GetDefaultInterface: _P2pUtils;
    constructor Create(AServer: TP2pUtils);
  protected
  public
    property DefaultInterface: _P2pUtils read GetDefaultInterface;
  published
  end;
{$ENDIF}


procedure Register;

resourcestring
  dtlServerPage = 'ActiveX';

  dtlOcxPage = 'ActiveX';

implementation

uses ComObj;

class function CoZd2911EnrollFile.Create: IZd2911EnrollFile;
begin
  Result := CreateComObject(CLASS_Zd2911EnrollFile) as IZd2911EnrollFile;
end;

class function CoZd2911EnrollFile.CreateRemote(const MachineName: string): IZd2911EnrollFile;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911EnrollFile) as IZd2911EnrollFile;
end;

procedure TZd2911EnrollFile.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{3BE9683B-9E12-4159-A5FB-A80790FCAB43}';
    IntfIID:   '{E21860DC-55D6-42DF-A999-DC4FB3EE959D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZd2911EnrollFile.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IZd2911EnrollFile;
  end;
end;

procedure TZd2911EnrollFile.ConnectTo(svrIntf: IZd2911EnrollFile);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZd2911EnrollFile.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZd2911EnrollFile.GetDefaultInterface: IZd2911EnrollFile;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZd2911EnrollFile.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZd2911EnrollFileProperties.Create(Self);
{$ENDIF}
end;

destructor TZd2911EnrollFile.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZd2911EnrollFile.GetServerProperties: TZd2911EnrollFileProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TZd2911EnrollFile.SaveAllUserExtEnrollDataAsDB(const fileName: WideString; 
                                                        var userExts: PSafeArray): WordBool;
begin
  Result := DefaultInterface.SaveAllUserExtEnrollDataAsDB(fileName, userExts);
end;

function TZd2911EnrollFile.SaveUserExtEnrollDataAsDB(const fileName: WideString; 
                                                     var UserExt: IUserExt): WordBool;
begin
  Result := DefaultInterface.SaveUserExtEnrollDataAsDB(fileName, UserExt);
end;

function TZd2911EnrollFile.LoadAllUserExtEnrollDataFromDB(const fileName: WideString; 
                                                          var userExts: PSafeArray): WordBool;
begin
  Result := DefaultInterface.LoadAllUserExtEnrollDataFromDB(fileName, userExts);
end;

function TZd2911EnrollFile.LoadUserExtEnrollDataFromDB(const fileName: WideString; 
                                                       var UserExt: IUserExt): WordBool;
begin
  Result := DefaultInterface.LoadUserExtEnrollDataFromDB(fileName, UserExt);
end;

function TZd2911EnrollFile.SaveUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool;
begin
  Result := DefaultInterface.SaveUserExtNameData(fileName, userExts);
end;

function TZd2911EnrollFile.LoadUserExtNameData(const fileName: WideString; var userExts: PSafeArray): WordBool;
begin
  Result := DefaultInterface.LoadUserExtNameData(fileName, userExts);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZd2911EnrollFileProperties.Create(AServer: TZd2911EnrollFile);
begin
  inherited Create;
  FServer := AServer;
end;

function TZd2911EnrollFileProperties.GetDefaultInterface: IZd2911EnrollFile;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoZd2911Tools.Create: IZd2911Tools;
begin
  Result := CreateComObject(CLASS_Zd2911Tools) as IZd2911Tools;
end;

class function CoZd2911Tools.CreateRemote(const MachineName: string): IZd2911Tools;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911Tools) as IZd2911Tools;
end;

procedure TZd2911Tools.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{5FCCCFAE-27BC-4A1D-BB6E-5558ECD42D30}';
    IntfIID:   '{9CD049BD-DE2D-49DD-A1BD-F2BCFB4E4C3E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZd2911Tools.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IZd2911Tools;
  end;
end;

procedure TZd2911Tools.ConnectTo(svrIntf: IZd2911Tools);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZd2911Tools.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZd2911Tools.GetDefaultInterface: IZd2911Tools;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZd2911Tools.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZd2911ToolsProperties.Create(Self);
{$ENDIF}
end;

destructor TZd2911Tools.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZd2911Tools.GetServerProperties: TZd2911ToolsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TZd2911Tools.BitCheck(num: Integer; index: Integer): Integer;
begin
  Result := DefaultInterface.BitCheck(num, index);
end;

function TZd2911Tools.SetBit(num: Integer; index: Integer): Integer;
begin
  Result := DefaultInterface.SetBit(num, index);
end;

function TZd2911Tools.CreateChunkHeader(var buffer: PSafeArray; dataChunk: Integer): PSafeArray;
begin
  Result := DefaultInterface.CreateChunkHeader(buffer, dataChunk);
end;

function TZd2911Tools.GetSLogList(var buffer: PSafeArray): PSafeArray;
begin
  Result := DefaultInterface.GetSLogList(buffer);
end;

function TZd2911Tools.GetUserExtWithoutEnroll(var buffer: PSafeArray): IUserExt;
begin
  Result := DefaultInterface.GetUserExtWithoutEnroll(buffer);
end;

function TZd2911Tools.GetAllUserExtWithoutEnroll(var buffer: PSafeArray): PSafeArray;
begin
  Result := DefaultInterface.GetAllUserExtWithoutEnroll(buffer);
end;

function TZd2911Tools.GetGLogList(var buffer: PSafeArray): PSafeArray;
begin
  Result := DefaultInterface.GetGLogList(buffer);
end;

function TZd2911Tools.GetBytes(const input: WideString): PSafeArray;
begin
  Result := DefaultInterface.GetBytes(input);
end;

function TZd2911Tools.GetString(var bs: PSafeArray): WideString;
begin
  Result := DefaultInterface.GetString(bs);
end;

function TZd2911Tools.GetASCII(var bs: PSafeArray; index: Integer; length: Integer): WideString;
begin
  Result := DefaultInterface.GetASCII(bs, index, length);
end;

function TZd2911Tools.GetStringByNum(var bs: PSafeArray; index: Integer; type_: NumberType): WideString;
begin
  Result := DefaultInterface.GetStringByNum(bs, index, type_);
end;

function TZd2911Tools.GetBytesByNum(const input: WideString; type_: NumberType): PSafeArray;
begin
  Result := DefaultInterface.GetBytesByNum(input, type_);
end;

function TZd2911Tools.ConvertIPAddressToNumber(const strIPAddress: WideString): Integer;
begin
  Result := DefaultInterface.ConvertIPAddressToNumber(strIPAddress);
end;

function TZd2911Tools.ConvertNumberToIPAddress(intIPAddress: Integer): WideString;
begin
  Result := DefaultInterface.ConvertNumberToIPAddress(intIPAddress);
end;

function TZd2911Tools.ConvertFingerprintToString(var Fingerprint: PSafeArray): WideString;
begin
  Result := DefaultInterface.ConvertFingerprintToString(Fingerprint);
end;

function TZd2911Tools.ConvertStringFingerprintToBytes(const Fingerprint: WideString): PSafeArray;
begin
  Result := DefaultInterface.ConvertStringFingerprintToBytes(Fingerprint);
end;

function TZd2911Tools.SetP2pServerIpAddress(const ip: WideString): Integer;
begin
  Result := DefaultInterface.SetP2pServerIpAddress(ip);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZd2911ToolsProperties.Create(AServer: TZd2911Tools);
begin
  inherited Create;
  FServer := AServer;
end;

function TZd2911ToolsProperties.GetDefaultInterface: IZd2911Tools;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoZd2911Listener.Create: IZd2911Listener;
begin
  Result := CreateComObject(CLASS_Zd2911Listener) as IZd2911Listener;
end;

class function CoZd2911Listener.CreateRemote(const MachineName: string): IZd2911Listener;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911Listener) as IZd2911Listener;
end;

procedure TZd2911Listener.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{F4DC2752-B340-4371-811F-5FFF33EF45F5}';
    IntfIID:   '{433ABD46-80F4-4ABC-A80D-C365F93F1297}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZd2911Listener.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IZd2911Listener;
  end;
end;

procedure TZd2911Listener.ConnectTo(svrIntf: IZd2911Listener);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZd2911Listener.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZd2911Listener.GetDefaultInterface: IZd2911Listener;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZd2911Listener.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZd2911ListenerProperties.Create(Self);
{$ENDIF}
end;

destructor TZd2911Listener.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZd2911Listener.GetServerProperties: TZd2911ListenerProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TZd2911Listener.Get_IsBusy: WordBool;
begin
    Result := DefaultInterface.IsBusy;
end;

procedure TZd2911Listener.add_ReceiveHandlerExt(const value: _ReceiveHandlerExt);
begin
  DefaultInterface.add_ReceiveHandlerExt(value);
end;

procedure TZd2911Listener.remove_ReceiveHandlerExt(const value: _ReceiveHandlerExt);
begin
  DefaultInterface.remove_ReceiveHandlerExt(value);
end;

function TZd2911Listener.OpenListen(const m: IMonitor): WordBool;
begin
  Result := DefaultInterface.OpenListen(m);
end;

procedure TZd2911Listener.CloseListen;
begin
  DefaultInterface.CloseListen;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZd2911ListenerProperties.Create(AServer: TZd2911Listener);
begin
  inherited Create;
  FServer := AServer;
end;

function TZd2911ListenerProperties.GetDefaultInterface: IZd2911Listener;
begin
  Result := FServer.DefaultInterface;
end;

function TZd2911ListenerProperties.Get_IsBusy: WordBool;
begin
    Result := DefaultInterface.IsBusy;
end;

{$ENDIF}

class function CoReceiveEventArgExt.Create: IReceiveEventArgExt;
begin
  Result := CreateComObject(CLASS_ReceiveEventArgExt) as IReceiveEventArgExt;
end;

class function CoReceiveEventArgExt.CreateRemote(const MachineName: string): IReceiveEventArgExt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceiveEventArgExt) as IReceiveEventArgExt;
end;

procedure TReceiveEventArgExt.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8C77333A-B46C-4258-87D7-EFD6025579E0}';
    IntfIID:   '{7A3D809B-8D97-4411-9A91-504B806AF6EC}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TReceiveEventArgExt.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IReceiveEventArgExt;
  end;
end;

procedure TReceiveEventArgExt.ConnectTo(svrIntf: IReceiveEventArgExt);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TReceiveEventArgExt.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TReceiveEventArgExt.GetDefaultInterface: IReceiveEventArgExt;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TReceiveEventArgExt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TReceiveEventArgExtProperties.Create(Self);
{$ENDIF}
end;

destructor TReceiveEventArgExt.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TReceiveEventArgExt.GetServerProperties: TReceiveEventArgExtProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TReceiveEventArgExt.Get_Record_: IRecordExt;
begin
    Result := DefaultInterface.Record_;
end;

procedure TReceiveEventArgExt._Set_Record_(const pRetVal: IRecordExt);
  { Warning: The property Record_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Record_ := pRetVal;
end;

function TReceiveEventArgExt.Get_endPoint: IUnknown;
begin
    Result := DefaultInterface.endPoint;
end;

procedure TReceiveEventArgExt._Set_endPoint(const pRetVal: IUnknown);
  { Warning: The property endPoint has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.endPoint := pRetVal;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TReceiveEventArgExtProperties.Create(AServer: TReceiveEventArgExt);
begin
  inherited Create;
  FServer := AServer;
end;

function TReceiveEventArgExtProperties.GetDefaultInterface: IReceiveEventArgExt;
begin
  Result := FServer.DefaultInterface;
end;

function TReceiveEventArgExtProperties.Get_Record_: IRecordExt;
begin
    Result := DefaultInterface.Record_;
end;

procedure TReceiveEventArgExtProperties._Set_Record_(const pRetVal: IRecordExt);
  { Warning: The property Record_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Record_ := pRetVal;
end;

function TReceiveEventArgExtProperties.Get_endPoint: IUnknown;
begin
    Result := DefaultInterface.endPoint;
end;

procedure TReceiveEventArgExtProperties._Set_endPoint(const pRetVal: IUnknown);
  { Warning: The property endPoint has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.endPoint := pRetVal;
end;

{$ENDIF}

class function CoDevice.Create: IDevice;
begin
  Result := CreateComObject(CLASS_Device) as IDevice;
end;

class function CoDevice.CreateRemote(const MachineName: string): IDevice;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Device) as IDevice;
end;

procedure TDevice.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{2985032F-FA75-428A-B840-3A74FBEA56BA}';
    IntfIID:   '{F282EC34-C902-43B0-9CC7-EB7FC9807779}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TDevice.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IDevice;
  end;
end;

procedure TDevice.ConnectTo(svrIntf: IDevice);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TDevice.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TDevice.GetDefaultInterface: IDevice;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TDevice.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TDeviceProperties.Create(Self);
{$ENDIF}
end;

destructor TDevice.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TDevice.GetServerProperties: TDeviceProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TDevice.Get_DN: Integer;
begin
    Result := DefaultInterface.DN;
end;

procedure TDevice.Set_DN(pRetVal: Integer);
begin
  DefaultInterface.Set_DN(pRetVal);
end;

function TDevice.Get_SerialNumber: WideString;
begin
    Result := DefaultInterface.SerialNumber;
end;

procedure TDevice.Set_SerialNumber(const pRetVal: WideString);
  { Warning: The property SerialNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SerialNumber := pRetVal;
end;

function TDevice.Get_Model: WideString;
begin
    Result := DefaultInterface.Model;
end;

procedure TDevice.Set_Model(const pRetVal: WideString);
  { Warning: The property Model has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Model := pRetVal;
end;

function TDevice.Get_CommunicationType: CommunicationType;
begin
    Result := DefaultInterface.CommunicationType;
end;

procedure TDevice.Set_CommunicationType(pRetVal: CommunicationType);
begin
  DefaultInterface.Set_CommunicationType(pRetVal);
end;

function TDevice.Get_Baudrate: Integer;
begin
    Result := DefaultInterface.Baudrate;
end;

procedure TDevice.Set_Baudrate(pRetVal: Integer);
begin
  DefaultInterface.Set_Baudrate(pRetVal);
end;

function TDevice.Get_SerialPort: Integer;
begin
    Result := DefaultInterface.SerialPort;
end;

procedure TDevice.Set_SerialPort(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialPort(pRetVal);
end;

function TDevice.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TDevice.Set_Password(const pRetVal: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := pRetVal;
end;

function TDevice.Get_IpPort: Integer;
begin
    Result := DefaultInterface.IpPort;
end;

procedure TDevice.Set_IpPort(pRetVal: Integer);
begin
  DefaultInterface.Set_IpPort(pRetVal);
end;

function TDevice.Get_IpAddress: WideString;
begin
    Result := DefaultInterface.IpAddress;
end;

procedure TDevice.Set_IpAddress(const pRetVal: WideString);
  { Warning: The property IpAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IpAddress := pRetVal;
end;

function TDevice.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TDevice.Set_Label_(const pRetVal: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pRetVal;
end;

function TDevice.Get_ConnectionModel: Integer;
begin
    Result := DefaultInterface.ConnectionModel;
end;

procedure TDevice.Set_ConnectionModel(pRetVal: Integer);
begin
  DefaultInterface.Set_ConnectionModel(pRetVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TDeviceProperties.Create(AServer: TDevice);
begin
  inherited Create;
  FServer := AServer;
end;

function TDeviceProperties.GetDefaultInterface: IDevice;
begin
  Result := FServer.DefaultInterface;
end;

function TDeviceProperties.Get_DN: Integer;
begin
    Result := DefaultInterface.DN;
end;

procedure TDeviceProperties.Set_DN(pRetVal: Integer);
begin
  DefaultInterface.Set_DN(pRetVal);
end;

function TDeviceProperties.Get_SerialNumber: WideString;
begin
    Result := DefaultInterface.SerialNumber;
end;

procedure TDeviceProperties.Set_SerialNumber(const pRetVal: WideString);
  { Warning: The property SerialNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.SerialNumber := pRetVal;
end;

function TDeviceProperties.Get_Model: WideString;
begin
    Result := DefaultInterface.Model;
end;

procedure TDeviceProperties.Set_Model(const pRetVal: WideString);
  { Warning: The property Model has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Model := pRetVal;
end;

function TDeviceProperties.Get_CommunicationType: CommunicationType;
begin
    Result := DefaultInterface.CommunicationType;
end;

procedure TDeviceProperties.Set_CommunicationType(pRetVal: CommunicationType);
begin
  DefaultInterface.Set_CommunicationType(pRetVal);
end;

function TDeviceProperties.Get_Baudrate: Integer;
begin
    Result := DefaultInterface.Baudrate;
end;

procedure TDeviceProperties.Set_Baudrate(pRetVal: Integer);
begin
  DefaultInterface.Set_Baudrate(pRetVal);
end;

function TDeviceProperties.Get_SerialPort: Integer;
begin
    Result := DefaultInterface.SerialPort;
end;

procedure TDeviceProperties.Set_SerialPort(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialPort(pRetVal);
end;

function TDeviceProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TDeviceProperties.Set_Password(const pRetVal: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := pRetVal;
end;

function TDeviceProperties.Get_IpPort: Integer;
begin
    Result := DefaultInterface.IpPort;
end;

procedure TDeviceProperties.Set_IpPort(pRetVal: Integer);
begin
  DefaultInterface.Set_IpPort(pRetVal);
end;

function TDeviceProperties.Get_IpAddress: WideString;
begin
    Result := DefaultInterface.IpAddress;
end;

procedure TDeviceProperties.Set_IpAddress(const pRetVal: WideString);
  { Warning: The property IpAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IpAddress := pRetVal;
end;

function TDeviceProperties.Get_Label_: WideString;
begin
    Result := DefaultInterface.Label_;
end;

procedure TDeviceProperties.Set_Label_(const pRetVal: WideString);
  { Warning: The property Label_ has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Label_ := pRetVal;
end;

function TDeviceProperties.Get_ConnectionModel: Integer;
begin
    Result := DefaultInterface.ConnectionModel;
end;

procedure TDeviceProperties.Set_ConnectionModel(pRetVal: Integer);
begin
  DefaultInterface.Set_ConnectionModel(pRetVal);
end;

{$ENDIF}

class function CoZd2911DeviceConnection.Create: IZd2911DeviceConnection;
begin
  Result := CreateComObject(CLASS_Zd2911DeviceConnection) as IZd2911DeviceConnection;
end;

class function CoZd2911DeviceConnection.CreateRemote(const MachineName: string): IZd2911DeviceConnection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911DeviceConnection) as IZd2911DeviceConnection;
end;

procedure TZd2911DeviceConnection.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8700A266-9300-43AA-8FCE-2A25EE51BAED}';
    IntfIID:   '{AA9A9F67-97BB-49FD-A3BE-59D3635BDD10}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZd2911DeviceConnection.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IZd2911DeviceConnection;
  end;
end;

procedure TZd2911DeviceConnection.ConnectTo(svrIntf: IZd2911DeviceConnection);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZd2911DeviceConnection.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZd2911DeviceConnection.GetDefaultInterface: IZd2911DeviceConnection;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZd2911DeviceConnection.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZd2911DeviceConnectionProperties.Create(Self);
{$ENDIF}
end;

destructor TZd2911DeviceConnection.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZd2911DeviceConnection.GetServerProperties: TZd2911DeviceConnectionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TZd2911DeviceConnection.Open(const Device: IDevice): Integer;
begin
  Result := DefaultInterface.Open(Device);
end;

procedure TZd2911DeviceConnection.Close;
begin
  DefaultInterface.Close;
end;

function TZd2911DeviceConnection.SetPropertyExt(property_: UserProperty; 
                                                var extraProperty: PSafeArray; 
                                                const User: IUserExt; var extraData: PSafeArray): WordBool;
begin
  Result := DefaultInterface.SetPropertyExt(property_, extraProperty, User, extraData);
end;

function TZd2911DeviceConnection.GetPropertyExt(property_: UserProperty; 
                                                var extraProperty: PSafeArray; var User: IUserExt; 
                                                var extraData: PSafeArray): WordBool;
begin
  Result := DefaultInterface.GetPropertyExt(property_, extraProperty, User, extraData);
end;

function TZd2911DeviceConnection.SetPropertyExt_2(property_: DeviceProperty; 
                                                  var extraProperty: PSafeArray; 
                                                  const Device: IDevice; var extraData: PSafeArray): WordBool;
begin
  Result := DefaultInterface.SetPropertyExt_2(property_, extraProperty, Device, extraData);
end;

function TZd2911DeviceConnection.GetPropertyExt_2(property_: DeviceProperty; 
                                                  var extraProperty: PSafeArray; 
                                                  var Device: IDevice; var extraData: PSafeArray): WordBool;
begin
  Result := DefaultInterface.GetPropertyExt_2(property_, extraProperty, Device, extraData);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZd2911DeviceConnectionProperties.Create(AServer: TZd2911DeviceConnection);
begin
  inherited Create;
  FServer := AServer;
end;

function TZd2911DeviceConnectionProperties.GetDefaultInterface: IZd2911DeviceConnection;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoEnrollExt.Create: IEnrollExt;
begin
  Result := CreateComObject(CLASS_EnrollExt) as IEnrollExt;
end;

class function CoEnrollExt.CreateRemote(const MachineName: string): IEnrollExt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_EnrollExt) as IEnrollExt;
end;

procedure TEnrollExt.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{FA689B01-3CD8-43D1-B005-98E0AC2E30BA}';
    IntfIID:   '{1A8D64B8-5B67-4B26-92A7-E845A9F9D7D8}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEnrollExt.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IEnrollExt;
  end;
end;

procedure TEnrollExt.ConnectTo(svrIntf: IEnrollExt);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEnrollExt.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEnrollExt.GetDefaultInterface: IEnrollExt;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TEnrollExt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TEnrollExtProperties.Create(Self);
{$ENDIF}
end;

destructor TEnrollExt.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TEnrollExt.GetServerProperties: TEnrollExtProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TEnrollExt.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TEnrollExt.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TEnrollExt.Get_EnrollType: EnrollType;
begin
    Result := DefaultInterface.EnrollType;
end;

procedure TEnrollExt.Set_EnrollType(pRetVal: EnrollType);
begin
  DefaultInterface.Set_EnrollType(pRetVal);
end;

function TEnrollExt.Get_IsDuress: WordBool;
begin
    Result := DefaultInterface.IsDuress;
end;

procedure TEnrollExt.Set_IsDuress(pRetVal: WordBool);
begin
  DefaultInterface.Set_IsDuress(pRetVal);
end;

function TEnrollExt.Get_Fingerprint: PSafeArray;
begin
    Result := DefaultInterface.Fingerprint;
end;

procedure TEnrollExt.Set_Fingerprint(pRetVal: PSafeArray);
begin
  DefaultInterface.Set_Fingerprint(pRetVal);
end;

function TEnrollExt.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TEnrollExt.Set_Password(const pRetVal: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := pRetVal;
end;

function TEnrollExt.Get_CardID: WideString;
begin
    Result := DefaultInterface.CardID;
end;

procedure TEnrollExt.Set_CardID(const pRetVal: WideString);
  { Warning: The property CardID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CardID := pRetVal;
end;

procedure TEnrollExt.SetFingerprint(var Fingerprint: PSafeArray);
begin
  DefaultInterface.SetFingerprint(Fingerprint);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TEnrollExtProperties.Create(AServer: TEnrollExt);
begin
  inherited Create;
  FServer := AServer;
end;

function TEnrollExtProperties.GetDefaultInterface: IEnrollExt;
begin
  Result := FServer.DefaultInterface;
end;

function TEnrollExtProperties.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TEnrollExtProperties.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TEnrollExtProperties.Get_EnrollType: EnrollType;
begin
    Result := DefaultInterface.EnrollType;
end;

procedure TEnrollExtProperties.Set_EnrollType(pRetVal: EnrollType);
begin
  DefaultInterface.Set_EnrollType(pRetVal);
end;

function TEnrollExtProperties.Get_IsDuress: WordBool;
begin
    Result := DefaultInterface.IsDuress;
end;

procedure TEnrollExtProperties.Set_IsDuress(pRetVal: WordBool);
begin
  DefaultInterface.Set_IsDuress(pRetVal);
end;

function TEnrollExtProperties.Get_Fingerprint: PSafeArray;
begin
    Result := DefaultInterface.Fingerprint;
end;

procedure TEnrollExtProperties.Set_Fingerprint(pRetVal: PSafeArray);
begin
  DefaultInterface.Set_Fingerprint(pRetVal);
end;

function TEnrollExtProperties.Get_Password: WideString;
begin
    Result := DefaultInterface.Password;
end;

procedure TEnrollExtProperties.Set_Password(const pRetVal: WideString);
  { Warning: The property Password has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Password := pRetVal;
end;

function TEnrollExtProperties.Get_CardID: WideString;
begin
    Result := DefaultInterface.CardID;
end;

procedure TEnrollExtProperties.Set_CardID(const pRetVal: WideString);
  { Warning: The property CardID has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.CardID := pRetVal;
end;

{$ENDIF}

class function CoUserExt.Create: IUserExt;
begin
  Result := CreateComObject(CLASS_UserExt) as IUserExt;
end;

class function CoUserExt.CreateRemote(const MachineName: string): IUserExt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_UserExt) as IUserExt;
end;

procedure TUserExt.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{E28341BA-51C2-4C2B-8D27-9C63B1B70790}';
    IntfIID:   '{13E5AFC5-D6D7-452A-879B-06F134E07D82}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUserExt.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IUserExt;
  end;
end;

procedure TUserExt.ConnectTo(svrIntf: IUserExt);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUserExt.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUserExt.GetDefaultInterface: IUserExt;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TUserExt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TUserExtProperties.Create(Self);
{$ENDIF}
end;

destructor TUserExt.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TUserExt.GetServerProperties: TUserExtProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TUserExt.Get_Privilege: Integer;
begin
    Result := DefaultInterface.Privilege;
end;

procedure TUserExt.Set_Privilege(pRetVal: Integer);
begin
  DefaultInterface.Set_Privilege(pRetVal);
end;

function TUserExt.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TUserExt.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TUserExt.Get_UserName: WideString;
begin
    Result := DefaultInterface.UserName;
end;

procedure TUserExt.Set_UserName(const pRetVal: WideString);
  { Warning: The property UserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserName := pRetVal;
end;

function TUserExt.Get_IDNumber: WideString;
begin
    Result := DefaultInterface.IDNumber;
end;

procedure TUserExt.Set_IDNumber(const pRetVal: WideString);
  { Warning: The property IDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IDNumber := pRetVal;
end;

function TUserExt.Get_Sex: ISex;
begin
    Result := DefaultInterface.Sex;
end;

procedure TUserExt._Set_Sex(const pRetVal: ISex);
  { Warning: The property Sex has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sex := pRetVal;
end;

function TUserExt.Get_Enable: WordBool;
begin
    Result := DefaultInterface.Enable;
end;

procedure TUserExt.Set_Enable(pRetVal: WordBool);
begin
  DefaultInterface.Set_Enable(pRetVal);
end;

function TUserExt.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TUserExt.Set_Comment(const pRetVal: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := pRetVal;
end;

function TUserExt.Get_DeptId: WideString;
begin
    Result := DefaultInterface.DeptId;
end;

procedure TUserExt.Set_DeptId(const pRetVal: WideString);
  { Warning: The property DeptId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeptId := pRetVal;
end;

function TUserExt.Get_AttType: Integer;
begin
    Result := DefaultInterface.AttType;
end;

procedure TUserExt.Set_AttType(pRetVal: Integer);
begin
  DefaultInterface.Set_AttType(pRetVal);
end;

function TUserExt.Get_Birthday: TDateTime;
begin
    Result := DefaultInterface.Birthday;
end;

procedure TUserExt.Set_Birthday(pRetVal: TDateTime);
begin
  DefaultInterface.Set_Birthday(pRetVal);
end;

function TUserExt.Get_AccessControl: Integer;
begin
    Result := DefaultInterface.AccessControl;
end;

procedure TUserExt.Set_AccessControl(pRetVal: Integer);
begin
  DefaultInterface.Set_AccessControl(pRetVal);
end;

function TUserExt.Get_ValidityPeriod: WordBool;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TUserExt.Set_ValidityPeriod(pRetVal: WordBool);
begin
  DefaultInterface.Set_ValidityPeriod(pRetVal);
end;

function TUserExt.Get_UseUserGroupACTZ: WordBool;
begin
    Result := DefaultInterface.UseUserGroupACTZ;
end;

procedure TUserExt.Set_UseUserGroupACTZ(pRetVal: WordBool);
begin
  DefaultInterface.Set_UseUserGroupACTZ(pRetVal);
end;

function TUserExt.Get_UseUserGroupVM: WordBool;
begin
    Result := DefaultInterface.UseUserGroupVM;
end;

procedure TUserExt.Set_UseUserGroupVM(pRetVal: WordBool);
begin
  DefaultInterface.Set_UseUserGroupVM(pRetVal);
end;

function TUserExt.Get_Department: Integer;
begin
    Result := DefaultInterface.Department;
end;

procedure TUserExt.Set_Department(pRetVal: Integer);
begin
  DefaultInterface.Set_Department(pRetVal);
end;

function TUserExt.Get_Enrolls: PSafeArray;
begin
    Result := DefaultInterface.Enrolls;
end;

procedure TUserExt.Set_Enrolls(pRetVal: PSafeArray);
begin
  DefaultInterface.Set_Enrolls(pRetVal);
end;

function TUserExt.Get_AccessTimeZone: Integer;
begin
    Result := DefaultInterface.AccessTimeZone;
end;

procedure TUserExt.Set_AccessTimeZone(pRetVal: Integer);
begin
  DefaultInterface.Set_AccessTimeZone(pRetVal);
end;

function TUserExt.Get_ValidDate: TDateTime;
begin
    Result := DefaultInterface.ValidDate;
end;

procedure TUserExt.Set_ValidDate(pRetVal: TDateTime);
begin
  DefaultInterface.Set_ValidDate(pRetVal);
end;

function TUserExt.Get_InvalidDate: TDateTime;
begin
    Result := DefaultInterface.InvalidDate;
end;

procedure TUserExt.Set_InvalidDate(pRetVal: TDateTime);
begin
  DefaultInterface.Set_InvalidDate(pRetVal);
end;

function TUserExt.Get_UserGroup: Integer;
begin
    Result := DefaultInterface.UserGroup;
end;

procedure TUserExt.Set_UserGroup(pRetVal: Integer);
begin
  DefaultInterface.Set_UserGroup(pRetVal);
end;

function TUserExt.Get_LockControl: Integer;
begin
    Result := DefaultInterface.LockControl;
end;

procedure TUserExt.Set_LockControl(pRetVal: Integer);
begin
  DefaultInterface.Set_LockControl(pRetVal);
end;

procedure TUserExt.SetEnrolls(var Enrolls: PSafeArray);
begin
  DefaultInterface.SetEnrolls(Enrolls);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TUserExtProperties.Create(AServer: TUserExt);
begin
  inherited Create;
  FServer := AServer;
end;

function TUserExtProperties.GetDefaultInterface: IUserExt;
begin
  Result := FServer.DefaultInterface;
end;

function TUserExtProperties.Get_Privilege: Integer;
begin
    Result := DefaultInterface.Privilege;
end;

procedure TUserExtProperties.Set_Privilege(pRetVal: Integer);
begin
  DefaultInterface.Set_Privilege(pRetVal);
end;

function TUserExtProperties.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TUserExtProperties.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TUserExtProperties.Get_UserName: WideString;
begin
    Result := DefaultInterface.UserName;
end;

procedure TUserExtProperties.Set_UserName(const pRetVal: WideString);
  { Warning: The property UserName has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UserName := pRetVal;
end;

function TUserExtProperties.Get_IDNumber: WideString;
begin
    Result := DefaultInterface.IDNumber;
end;

procedure TUserExtProperties.Set_IDNumber(const pRetVal: WideString);
  { Warning: The property IDNumber has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.IDNumber := pRetVal;
end;

function TUserExtProperties.Get_Sex: ISex;
begin
    Result := DefaultInterface.Sex;
end;

procedure TUserExtProperties._Set_Sex(const pRetVal: ISex);
  { Warning: The property Sex has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Sex := pRetVal;
end;

function TUserExtProperties.Get_Enable: WordBool;
begin
    Result := DefaultInterface.Enable;
end;

procedure TUserExtProperties.Set_Enable(pRetVal: WordBool);
begin
  DefaultInterface.Set_Enable(pRetVal);
end;

function TUserExtProperties.Get_Comment: WideString;
begin
    Result := DefaultInterface.Comment;
end;

procedure TUserExtProperties.Set_Comment(const pRetVal: WideString);
  { Warning: The property Comment has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Comment := pRetVal;
end;

function TUserExtProperties.Get_DeptId: WideString;
begin
    Result := DefaultInterface.DeptId;
end;

procedure TUserExtProperties.Set_DeptId(const pRetVal: WideString);
  { Warning: The property DeptId has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DeptId := pRetVal;
end;

function TUserExtProperties.Get_AttType: Integer;
begin
    Result := DefaultInterface.AttType;
end;

procedure TUserExtProperties.Set_AttType(pRetVal: Integer);
begin
  DefaultInterface.Set_AttType(pRetVal);
end;

function TUserExtProperties.Get_Birthday: TDateTime;
begin
    Result := DefaultInterface.Birthday;
end;

procedure TUserExtProperties.Set_Birthday(pRetVal: TDateTime);
begin
  DefaultInterface.Set_Birthday(pRetVal);
end;

function TUserExtProperties.Get_AccessControl: Integer;
begin
    Result := DefaultInterface.AccessControl;
end;

procedure TUserExtProperties.Set_AccessControl(pRetVal: Integer);
begin
  DefaultInterface.Set_AccessControl(pRetVal);
end;

function TUserExtProperties.Get_ValidityPeriod: WordBool;
begin
    Result := DefaultInterface.ValidityPeriod;
end;

procedure TUserExtProperties.Set_ValidityPeriod(pRetVal: WordBool);
begin
  DefaultInterface.Set_ValidityPeriod(pRetVal);
end;

function TUserExtProperties.Get_UseUserGroupACTZ: WordBool;
begin
    Result := DefaultInterface.UseUserGroupACTZ;
end;

procedure TUserExtProperties.Set_UseUserGroupACTZ(pRetVal: WordBool);
begin
  DefaultInterface.Set_UseUserGroupACTZ(pRetVal);
end;

function TUserExtProperties.Get_UseUserGroupVM: WordBool;
begin
    Result := DefaultInterface.UseUserGroupVM;
end;

procedure TUserExtProperties.Set_UseUserGroupVM(pRetVal: WordBool);
begin
  DefaultInterface.Set_UseUserGroupVM(pRetVal);
end;

function TUserExtProperties.Get_Department: Integer;
begin
    Result := DefaultInterface.Department;
end;

procedure TUserExtProperties.Set_Department(pRetVal: Integer);
begin
  DefaultInterface.Set_Department(pRetVal);
end;

function TUserExtProperties.Get_Enrolls: PSafeArray;
begin
    Result := DefaultInterface.Enrolls;
end;

procedure TUserExtProperties.Set_Enrolls(pRetVal: PSafeArray);
begin
  DefaultInterface.Set_Enrolls(pRetVal);
end;

function TUserExtProperties.Get_AccessTimeZone: Integer;
begin
    Result := DefaultInterface.AccessTimeZone;
end;

procedure TUserExtProperties.Set_AccessTimeZone(pRetVal: Integer);
begin
  DefaultInterface.Set_AccessTimeZone(pRetVal);
end;

function TUserExtProperties.Get_ValidDate: TDateTime;
begin
    Result := DefaultInterface.ValidDate;
end;

procedure TUserExtProperties.Set_ValidDate(pRetVal: TDateTime);
begin
  DefaultInterface.Set_ValidDate(pRetVal);
end;

function TUserExtProperties.Get_InvalidDate: TDateTime;
begin
    Result := DefaultInterface.InvalidDate;
end;

procedure TUserExtProperties.Set_InvalidDate(pRetVal: TDateTime);
begin
  DefaultInterface.Set_InvalidDate(pRetVal);
end;

function TUserExtProperties.Get_UserGroup: Integer;
begin
    Result := DefaultInterface.UserGroup;
end;

procedure TUserExtProperties.Set_UserGroup(pRetVal: Integer);
begin
  DefaultInterface.Set_UserGroup(pRetVal);
end;

function TUserExtProperties.Get_LockControl: Integer;
begin
    Result := DefaultInterface.LockControl;
end;

procedure TUserExtProperties.Set_LockControl(pRetVal: Integer);
begin
  DefaultInterface.Set_LockControl(pRetVal);
end;

{$ENDIF}

class function CoRecordExt.Create: IRecordExt;
begin
  Result := CreateComObject(CLASS_RecordExt) as IRecordExt;
end;

class function CoRecordExt.CreateRemote(const MachineName: string): IRecordExt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RecordExt) as IRecordExt;
end;

procedure TRecordExt.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{4425D88F-D4DE-4B4A-906E-5B6588615AED}';
    IntfIID:   '{8D242E69-0A61-4C3B-9557-C8BEFEAC875A}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRecordExt.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IRecordExt;
  end;
end;

procedure TRecordExt.ConnectTo(svrIntf: IRecordExt);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRecordExt.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRecordExt.GetDefaultInterface: IRecordExt;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRecordExt.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRecordExtProperties.Create(Self);
{$ENDIF}
end;

destructor TRecordExt.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRecordExt.GetServerProperties: TRecordExtProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TRecordExt.Get_DN: Integer;
begin
    Result := DefaultInterface.DN;
end;

procedure TRecordExt.Set_DN(pRetVal: Integer);
begin
  DefaultInterface.Set_DN(pRetVal);
end;

function TRecordExt.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TRecordExt.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TRecordExt.Get_Clock: TDateTime;
begin
    Result := DefaultInterface.Clock;
end;

procedure TRecordExt.Set_Clock(pRetVal: TDateTime);
begin
  DefaultInterface.Set_Clock(pRetVal);
end;

function TRecordExt.Get_Verify: Integer;
begin
    Result := DefaultInterface.Verify;
end;

procedure TRecordExt.Set_Verify(pRetVal: Integer);
begin
  DefaultInterface.Set_Verify(pRetVal);
end;

function TRecordExt.Get_Action: Integer;
begin
    Result := DefaultInterface.Action;
end;

procedure TRecordExt.Set_Action(pRetVal: Integer);
begin
  DefaultInterface.Set_Action(pRetVal);
end;

function TRecordExt.Get_Remark: WideString;
begin
    Result := DefaultInterface.Remark;
end;

procedure TRecordExt.Set_Remark(const pRetVal: WideString);
  { Warning: The property Remark has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Remark := pRetVal;
end;

function TRecordExt.Get_MDIN: WideString;
begin
    Result := DefaultInterface.MDIN;
end;

procedure TRecordExt.Set_MDIN(const pRetVal: WideString);
  { Warning: The property MDIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MDIN := pRetVal;
end;

function TRecordExt.Get_DoorStatus: Integer;
begin
    Result := DefaultInterface.DoorStatus;
end;

procedure TRecordExt.Set_DoorStatus(pRetVal: Integer);
begin
  DefaultInterface.Set_DoorStatus(pRetVal);
end;

function TRecordExt.Get_JobCode: Integer;
begin
    Result := DefaultInterface.JobCode;
end;

procedure TRecordExt.Set_JobCode(pRetVal: Integer);
begin
  DefaultInterface.Set_JobCode(pRetVal);
end;

function TRecordExt.Get_Antipassback: Integer;
begin
    Result := DefaultInterface.Antipassback;
end;

procedure TRecordExt.Set_Antipassback(pRetVal: Integer);
begin
  DefaultInterface.Set_Antipassback(pRetVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRecordExtProperties.Create(AServer: TRecordExt);
begin
  inherited Create;
  FServer := AServer;
end;

function TRecordExtProperties.GetDefaultInterface: IRecordExt;
begin
  Result := FServer.DefaultInterface;
end;

function TRecordExtProperties.Get_DN: Integer;
begin
    Result := DefaultInterface.DN;
end;

procedure TRecordExtProperties.Set_DN(pRetVal: Integer);
begin
  DefaultInterface.Set_DN(pRetVal);
end;

function TRecordExtProperties.Get_DIN: WideString;
begin
    Result := DefaultInterface.DIN;
end;

procedure TRecordExtProperties.Set_DIN(const pRetVal: WideString);
  { Warning: The property DIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.DIN := pRetVal;
end;

function TRecordExtProperties.Get_Clock: TDateTime;
begin
    Result := DefaultInterface.Clock;
end;

procedure TRecordExtProperties.Set_Clock(pRetVal: TDateTime);
begin
  DefaultInterface.Set_Clock(pRetVal);
end;

function TRecordExtProperties.Get_Verify: Integer;
begin
    Result := DefaultInterface.Verify;
end;

procedure TRecordExtProperties.Set_Verify(pRetVal: Integer);
begin
  DefaultInterface.Set_Verify(pRetVal);
end;

function TRecordExtProperties.Get_Action: Integer;
begin
    Result := DefaultInterface.Action;
end;

procedure TRecordExtProperties.Set_Action(pRetVal: Integer);
begin
  DefaultInterface.Set_Action(pRetVal);
end;

function TRecordExtProperties.Get_Remark: WideString;
begin
    Result := DefaultInterface.Remark;
end;

procedure TRecordExtProperties.Set_Remark(const pRetVal: WideString);
  { Warning: The property Remark has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.Remark := pRetVal;
end;

function TRecordExtProperties.Get_MDIN: WideString;
begin
    Result := DefaultInterface.MDIN;
end;

procedure TRecordExtProperties.Set_MDIN(const pRetVal: WideString);
  { Warning: The property MDIN has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.MDIN := pRetVal;
end;

function TRecordExtProperties.Get_DoorStatus: Integer;
begin
    Result := DefaultInterface.DoorStatus;
end;

procedure TRecordExtProperties.Set_DoorStatus(pRetVal: Integer);
begin
  DefaultInterface.Set_DoorStatus(pRetVal);
end;

function TRecordExtProperties.Get_JobCode: Integer;
begin
    Result := DefaultInterface.JobCode;
end;

procedure TRecordExtProperties.Set_JobCode(pRetVal: Integer);
begin
  DefaultInterface.Set_JobCode(pRetVal);
end;

function TRecordExtProperties.Get_Antipassback: Integer;
begin
    Result := DefaultInterface.Antipassback;
end;

procedure TRecordExtProperties.Set_Antipassback(pRetVal: Integer);
begin
  DefaultInterface.Set_Antipassback(pRetVal);
end;

{$ENDIF}

class function CoMonitor.Create: IMonitor;
begin
  Result := CreateComObject(CLASS_Monitor) as IMonitor;
end;

class function CoMonitor.CreateRemote(const MachineName: string): IMonitor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Monitor) as IMonitor;
end;

procedure TMonitor.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CECA7182-F7F8-4AB3-81A3-EE4C3AFAE45D}';
    IntfIID:   '{C929500D-BD1A-478A-9038-76EEA452C792}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TMonitor.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as IMonitor;
  end;
end;

procedure TMonitor.ConnectTo(svrIntf: IMonitor);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TMonitor.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TMonitor.GetDefaultInterface: IMonitor;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TMonitor.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TMonitorProperties.Create(Self);
{$ENDIF}
end;

destructor TMonitor.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TMonitor.GetServerProperties: TMonitorProperties;
begin
  Result := FProps;
end;
{$ENDIF}

function TMonitor.Get_Mode: Integer;
begin
    Result := DefaultInterface.Mode;
end;

procedure TMonitor.Set_Mode(pRetVal: Integer);
begin
  DefaultInterface.Set_Mode(pRetVal);
end;

function TMonitor.Get_UDPAddress: WideString;
begin
    Result := DefaultInterface.UDPAddress;
end;

procedure TMonitor.Set_UDPAddress(const pRetVal: WideString);
  { Warning: The property UDPAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UDPAddress := pRetVal;
end;

function TMonitor.Get_UDPPort: Integer;
begin
    Result := DefaultInterface.UDPPort;
end;

procedure TMonitor.Set_UDPPort(pRetVal: Integer);
begin
  DefaultInterface.Set_UDPPort(pRetVal);
end;

function TMonitor.Get_SerialPort: Integer;
begin
    Result := DefaultInterface.SerialPort;
end;

procedure TMonitor.Set_SerialPort(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialPort(pRetVal);
end;

function TMonitor.Get_SerialBaudRate: Integer;
begin
    Result := DefaultInterface.SerialBaudRate;
end;

procedure TMonitor.Set_SerialBaudRate(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialBaudRate(pRetVal);
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TMonitorProperties.Create(AServer: TMonitor);
begin
  inherited Create;
  FServer := AServer;
end;

function TMonitorProperties.GetDefaultInterface: IMonitor;
begin
  Result := FServer.DefaultInterface;
end;

function TMonitorProperties.Get_Mode: Integer;
begin
    Result := DefaultInterface.Mode;
end;

procedure TMonitorProperties.Set_Mode(pRetVal: Integer);
begin
  DefaultInterface.Set_Mode(pRetVal);
end;

function TMonitorProperties.Get_UDPAddress: WideString;
begin
    Result := DefaultInterface.UDPAddress;
end;

procedure TMonitorProperties.Set_UDPAddress(const pRetVal: WideString);
  { Warning: The property UDPAddress has a setter and a getter whose
    types do not match. Delphi was unable to generate a property of
    this sort and so is using a Variant as a passthrough. }
var
  InterfaceVariant: OleVariant;
begin
  InterfaceVariant := DefaultInterface;
  InterfaceVariant.UDPAddress := pRetVal;
end;

function TMonitorProperties.Get_UDPPort: Integer;
begin
    Result := DefaultInterface.UDPPort;
end;

procedure TMonitorProperties.Set_UDPPort(pRetVal: Integer);
begin
  DefaultInterface.Set_UDPPort(pRetVal);
end;

function TMonitorProperties.Get_SerialPort: Integer;
begin
    Result := DefaultInterface.SerialPort;
end;

procedure TMonitorProperties.Set_SerialPort(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialPort(pRetVal);
end;

function TMonitorProperties.Get_SerialBaudRate: Integer;
begin
    Result := DefaultInterface.SerialBaudRate;
end;

procedure TMonitorProperties.Set_SerialBaudRate(pRetVal: Integer);
begin
  DefaultInterface.Set_SerialBaudRate(pRetVal);
end;

{$ENDIF}

class function CoSex.Create: ISex;
begin
  Result := CreateComObject(CLASS_Sex) as ISex;
end;

class function CoSex.CreateRemote(const MachineName: string): ISex;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Sex) as ISex;
end;

procedure TSex.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{CA1503C4-2A83-4F99-941D-D22182555970}';
    IntfIID:   '{C2FE27AA-AE68-486C-ACCB-2B43ED66169E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TSex.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as ISex;
  end;
end;

procedure TSex.ConnectTo(svrIntf: ISex);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TSex.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TSex.GetDefaultInterface: ISex;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TSex.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TSexProperties.Create(Self);
{$ENDIF}
end;

destructor TSex.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TSex.GetServerProperties: TSexProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TSexProperties.Create(AServer: TSex);
begin
  inherited Create;
  FServer := AServer;
end;

function TSexProperties.GetDefaultInterface: ISex;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoUser.Create: _User;
begin
  Result := CreateComObject(CLASS_User) as _User;
end;

class function CoUser.CreateRemote(const MachineName: string): _User;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_User) as _User;
end;

procedure TUser.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{9FA413E1-00D0-3C70-86E1-F758E596C0C6}';
    IntfIID:   '{87B84DB7-34CA-3800-8E2C-D0D74B36E7C1}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TUser.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _User;
  end;
end;

procedure TUser.ConnectTo(svrIntf: _User);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TUser.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TUser.GetDefaultInterface: _User;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TUser.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TUserProperties.Create(Self);
{$ENDIF}
end;

destructor TUser.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TUser.GetServerProperties: TUserProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TUserProperties.Create(AServer: TUser);
begin
  inherited Create;
  FServer := AServer;
end;

function TUserProperties.GetDefaultInterface: _User;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoEnroll.Create: _Enroll;
begin
  Result := CreateComObject(CLASS_Enroll) as _Enroll;
end;

class function CoEnroll.CreateRemote(const MachineName: string): _Enroll;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Enroll) as _Enroll;
end;

procedure TEnroll.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D4D6189E-DC09-3B67-ABA4-340332789743}';
    IntfIID:   '{8303232C-11FC-3D42-A7A2-1641CE2B609D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TEnroll.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Enroll;
  end;
end;

procedure TEnroll.ConnectTo(svrIntf: _Enroll);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TEnroll.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TEnroll.GetDefaultInterface: _Enroll;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TEnroll.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TEnrollProperties.Create(Self);
{$ENDIF}
end;

destructor TEnroll.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TEnroll.GetServerProperties: TEnrollProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TEnrollProperties.Create(AServer: TEnroll);
begin
  inherited Create;
  FServer := AServer;
end;

function TEnrollProperties.GetDefaultInterface: _Enroll;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoDeviceConnection.Create: _DeviceConnection;
begin
  Result := CreateComObject(CLASS_DeviceConnection) as _DeviceConnection;
end;

class function CoDeviceConnection.CreateRemote(const MachineName: string): _DeviceConnection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_DeviceConnection) as _DeviceConnection;
end;

class function CoZdFpReader.Create: _ZdFpReader;
begin
  Result := CreateComObject(CLASS_ZdFpReader) as _ZdFpReader;
end;

class function CoZdFpReader.CreateRemote(const MachineName: string): _ZdFpReader;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ZdFpReader) as _ZdFpReader;
end;

procedure TZdFpReader.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{8E97208C-51B9-35A1-BEEF-52B1483E5846}';
    IntfIID:   '{17068156-9EBD-3018-9A85-5DA5EC50C26C}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZdFpReader.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _ZdFpReader;
  end;
end;

procedure TZdFpReader.ConnectTo(svrIntf: _ZdFpReader);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZdFpReader.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZdFpReader.GetDefaultInterface: _ZdFpReader;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZdFpReader.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZdFpReaderProperties.Create(Self);
{$ENDIF}
end;

destructor TZdFpReader.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZdFpReader.GetServerProperties: TZdFpReaderProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZdFpReaderProperties.Create(AServer: TZdFpReader);
begin
  inherited Create;
  FServer := AServer;
end;

function TZdFpReaderProperties.GetDefaultInterface: _ZdFpReader;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoZd2911Utils.Create: _Zd2911Utils;
begin
  Result := CreateComObject(CLASS_Zd2911Utils) as _Zd2911Utils;
end;

class function CoZd2911Utils.CreateRemote(const MachineName: string): _Zd2911Utils;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911Utils) as _Zd2911Utils;
end;

class function CoZdCommBase.Create: _ZdCommBase;
begin
  Result := CreateComObject(CLASS_ZdCommBase) as _ZdCommBase;
end;

class function CoZdCommBase.CreateRemote(const MachineName: string): _ZdCommBase;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ZdCommBase) as _ZdCommBase;
end;

class function CoRecord_.Create: _Record;
begin
  Result := CreateComObject(CLASS_Record_) as _Record;
end;

class function CoRecord_.CreateRemote(const MachineName: string): _Record;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Record_) as _Record;
end;

procedure TRecord.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{D55C3262-25FD-3128-830C-5A3FE007AD5F}';
    IntfIID:   '{872E1A36-0C41-348D-B42F-EB08F2ADC6FD}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRecord.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Record;
  end;
end;

procedure TRecord.ConnectTo(svrIntf: _Record);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRecord.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRecord.GetDefaultInterface: _Record;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRecord.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRecordProperties.Create(Self);
{$ENDIF}
end;

destructor TRecord.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRecord.GetServerProperties: TRecordProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRecordProperties.Create(AServer: TRecord);
begin
  inherited Create;
  FServer := AServer;
end;

function TRecordProperties.GetDefaultInterface: _Record;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoRLYN060.Create: _RLYN060;
begin
  Result := CreateComObject(CLASS_RLYN060) as _RLYN060;
end;

class function CoRLYN060.CreateRemote(const MachineName: string): _RLYN060;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RLYN060) as _RLYN060;
end;

procedure TRLYN060.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{09A5CCAF-0725-389A-BA2D-F1CC3DFECB38}';
    IntfIID:   '{BD8A5A36-F224-3092-AA45-BF4CB2D4FAD5}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TRLYN060.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _RLYN060;
  end;
end;

procedure TRLYN060.ConnectTo(svrIntf: _RLYN060);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TRLYN060.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TRLYN060.GetDefaultInterface: _RLYN060;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TRLYN060.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TRLYN060Properties.Create(Self);
{$ENDIF}
end;

destructor TRLYN060.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TRLYN060.GetServerProperties: TRLYN060Properties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TRLYN060Properties.Create(AServer: TRLYN060);
begin
  inherited Create;
  FServer := AServer;
end;

function TRLYN060Properties.GetDefaultInterface: _RLYN060;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoReceiveHandler.Create: _ReceiveHandler;
begin
  Result := CreateComObject(CLASS_ReceiveHandler) as _ReceiveHandler;
end;

class function CoReceiveHandler.CreateRemote(const MachineName: string): _ReceiveHandler;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceiveHandler) as _ReceiveHandler;
end;

class function CoZd2911Monitor.Create: _Zd2911Monitor;
begin
  Result := CreateComObject(CLASS_Zd2911Monitor) as _Zd2911Monitor;
end;

class function CoZd2911Monitor.CreateRemote(const MachineName: string): _Zd2911Monitor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911Monitor) as _Zd2911Monitor;
end;

class function CoReceiveEventArg.Create: _ReceiveEventArg;
begin
  Result := CreateComObject(CLASS_ReceiveEventArg) as _ReceiveEventArg;
end;

class function CoReceiveEventArg.CreateRemote(const MachineName: string): _ReceiveEventArg;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceiveEventArg) as _ReceiveEventArg;
end;

procedure TReceiveEventArg.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{135D9304-05F5-3664-B412-50912A4ABFA2}';
    IntfIID:   '{76CCC584-F45C-30CF-A7A2-FE85DEE0777D}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TReceiveEventArg.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _ReceiveEventArg;
  end;
end;

procedure TReceiveEventArg.ConnectTo(svrIntf: _ReceiveEventArg);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TReceiveEventArg.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TReceiveEventArg.GetDefaultInterface: _ReceiveEventArg;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TReceiveEventArg.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TReceiveEventArgProperties.Create(Self);
{$ENDIF}
end;

destructor TReceiveEventArg.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TReceiveEventArg.GetServerProperties: TReceiveEventArgProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TReceiveEventArgProperties.Create(AServer: TReceiveEventArg);
begin
  inherited Create;
  FServer := AServer;
end;

function TReceiveEventArgProperties.GetDefaultInterface: _ReceiveEventArg;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoReceiveHandlerExt.Create: _ReceiveHandlerExt;
begin
  Result := CreateComObject(CLASS_ReceiveHandlerExt) as _ReceiveHandlerExt;
end;

class function CoReceiveHandlerExt.CreateRemote(const MachineName: string): _ReceiveHandlerExt;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ReceiveHandlerExt) as _ReceiveHandlerExt;
end;

class function CoConnectionException.Create: _ConnectionException;
begin
  Result := CreateComObject(CLASS_ConnectionException) as _ConnectionException;
end;

class function CoConnectionException.CreateRemote(const MachineName: string): _ConnectionException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ConnectionException) as _ConnectionException;
end;

procedure TConnectionException.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{0C3BF980-7BD7-3BBF-BDEA-4B7B087D9F46}';
    IntfIID:   '{61DBAA57-0CE2-3801-8E78-A21669BD1547}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TConnectionException.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _ConnectionException;
  end;
end;

procedure TConnectionException.ConnectTo(svrIntf: _ConnectionException);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TConnectionException.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TConnectionException.GetDefaultInterface: _ConnectionException;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TConnectionException.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TConnectionExceptionProperties.Create(Self);
{$ENDIF}
end;

destructor TConnectionException.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TConnectionException.GetServerProperties: TConnectionExceptionProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TConnectionExceptionProperties.Create(AServer: TConnectionException);
begin
  inherited Create;
  FServer := AServer;
end;

function TConnectionExceptionProperties.GetDefaultInterface: _ConnectionException;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoZd2911EnrollFileManagement.Create: _Zd2911EnrollFileManagement;
begin
  Result := CreateComObject(CLASS_Zd2911EnrollFileManagement) as _Zd2911EnrollFileManagement;
end;

class function CoZd2911EnrollFileManagement.CreateRemote(const MachineName: string): _Zd2911EnrollFileManagement;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Zd2911EnrollFileManagement) as _Zd2911EnrollFileManagement;
end;

procedure TZd2911EnrollFileManagement.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{1E9F786B-2C78-37C8-8FD2-0FA1D0298404}';
    IntfIID:   '{787A0B63-5843-3E76-AEE9-A2B7D8F4314E}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TZd2911EnrollFileManagement.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _Zd2911EnrollFileManagement;
  end;
end;

procedure TZd2911EnrollFileManagement.ConnectTo(svrIntf: _Zd2911EnrollFileManagement);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TZd2911EnrollFileManagement.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TZd2911EnrollFileManagement.GetDefaultInterface: _Zd2911EnrollFileManagement;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TZd2911EnrollFileManagement.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TZd2911EnrollFileManagementProperties.Create(Self);
{$ENDIF}
end;

destructor TZd2911EnrollFileManagement.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TZd2911EnrollFileManagement.GetServerProperties: TZd2911EnrollFileManagementProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TZd2911EnrollFileManagementProperties.Create(AServer: TZd2911EnrollFileManagement);
begin
  inherited Create;
  FServer := AServer;
end;

function TZd2911EnrollFileManagementProperties.GetDefaultInterface: _Zd2911EnrollFileManagement;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

class function CoP2pUtils.Create: _P2pUtils;
begin
  Result := CreateComObject(CLASS_P2pUtils) as _P2pUtils;
end;

class function CoP2pUtils.CreateRemote(const MachineName: string): _P2pUtils;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_P2pUtils) as _P2pUtils;
end;

procedure TP2pUtils.InitServerData;
const
  CServerData: TServerData = (
    ClassID:   '{83C6A271-3C80-3666-8AFB-ACC9F02D8C3D}';
    IntfIID:   '{4A6C3A7B-A894-3295-A4D4-EF0FEAA82063}';
    EventIID:  '';
    LicenseKey: nil;
    Version: 500);
begin
  ServerData := @CServerData;
end;

procedure TP2pUtils.Connect;
var
  punk: IUnknown;
begin
  if FIntf = nil then
  begin
    punk := GetServer;
    Fintf:= punk as _P2pUtils;
  end;
end;

procedure TP2pUtils.ConnectTo(svrIntf: _P2pUtils);
begin
  Disconnect;
  FIntf := svrIntf;
end;

procedure TP2pUtils.DisConnect;
begin
  if Fintf <> nil then
  begin
    FIntf := nil;
  end;
end;

function TP2pUtils.GetDefaultInterface: _P2pUtils;
begin
  if FIntf = nil then
    Connect;
  Assert(FIntf <> nil, 'DefaultInterface is NULL. Component is not connected to Server. You must call ''Connect'' or ''ConnectTo'' before this operation');
  Result := FIntf;
end;

constructor TP2pUtils.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps := TP2pUtilsProperties.Create(Self);
{$ENDIF}
end;

destructor TP2pUtils.Destroy;
begin
{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
  FProps.Free;
{$ENDIF}
  inherited Destroy;
end;

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
function TP2pUtils.GetServerProperties: TP2pUtilsProperties;
begin
  Result := FProps;
end;
{$ENDIF}

{$IFDEF LIVE_SERVER_AT_DESIGN_TIME}
constructor TP2pUtilsProperties.Create(AServer: TP2pUtils);
begin
  inherited Create;
  FServer := AServer;
end;

function TP2pUtilsProperties.GetDefaultInterface: _P2pUtils;
begin
  Result := FServer.DefaultInterface;
end;

{$ENDIF}

procedure Register;
begin
  RegisterComponents(dtlServerPage, [TZd2911EnrollFile, TZd2911Tools, TZd2911Listener, TReceiveEventArgExt, 
    TDevice, TZd2911DeviceConnection, TEnrollExt, TUserExt, TRecordExt, 
    TMonitor, TSex, TUser, TEnroll, TZdFpReader, 
    TRecord, TRLYN060, TReceiveEventArg, TConnectionException, TZd2911EnrollFileManagement, 
    TP2pUtils]);
end;

end.
