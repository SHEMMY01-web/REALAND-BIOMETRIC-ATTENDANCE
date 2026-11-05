unit System_EnterpriseServices_TLB;

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
// File generated on 2015-10-19 17:57:02 from Type Library described below.

// ************************************************************************  //
// Type Lib: C:\Windows\Microsoft.NET\Framework\v2.0.50727\System.EnterpriseServices.tlb (1)
// LIBID: {4FB2D46F-EFC8-4643-BCD0-6E5BFA6A174C}
// LCID: 0
// Helpfile: 
// HelpString: 
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
//   (2) v2.0 mscorlib, (C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscorlib.tlb)
// Parent TypeLibrary:
//   (0) v1.0 Riss_Devices, (E:\硬件厂家\真地\RL10079DesktopDemo_Attendance_AccessControl_Delphi\Bin\dll\Riss.Devices.tlb)
// Errors:
//   Hint: Parameter 'type' of IClrObjectFactory.CreateFromAssembly changed to 'type_'
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

uses Windows, ActiveX, Classes, Graphics, mscorlib_TLB, OleServer, StdVCL, Variants;
  


// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  System_EnterpriseServicesMajorVersion = 2;
  System_EnterpriseServicesMinorVersion = 0;

  LIBID_System_EnterpriseServices: TGUID = '{4FB2D46F-EFC8-4643-BCD0-6E5BFA6A174C}';

  IID__BYOT: TGUID = '{A36D847B-4478-3DA9-96F5-CD99F855C163}';
  IID__ContextUtil: TGUID = '{0326D857-F842-30D0-BD12-01BFB1D2F17A}';
  IID_IRegistrationHelper: TGUID = '{55E3EA25-55CB-4650-8887-18E8D30BB4BC}';
  IID_IRemoteDispatch: TGUID = '{6619A740-8154-43BE-A186-0319578E02DB}';
  IID_IServicedComponentInfo: TGUID = '{8165B19E-8D3A-4D0B-80C8-97DE310DB583}';
  IID__RegistrationConfig: TGUID = '{25579C5D-40C5-3F43-92D2-434554D95EF2}';
  IID__RegistrationErrorInfo: TGUID = '{95AD84EC-1E02-3A16-8CB4-0B0419DA36C4}';
  IID__RegistrationException: TGUID = '{09D08C74-9B25-38D4-8788-77F70028D6D1}';
  IID__RegistrationHelper: TGUID = '{CCA8D1E3-0EF0-3127-9E40-E695AD1F7E76}';
  IID__RegistrationHelperTx: TGUID = '{841190A7-1631-37B1-AC96-81109766E4DD}';
  IID__ServicedComponent: TGUID = '{45FD4C49-3DB8-3BFB-9B5A-C9D4891C13B5}';
  IID__ResourcePool: TGUID = '{15738649-33A7-3C2E-B5CD-0BC30023857A}';
  IID__TransactionEndDelegate: TGUID = '{53BA3083-1378-3B7F-8CD9-34AD229CCFD9}';
  IID__SecurityCallContext: TGUID = '{021E6F47-2241-30DE-9730-A8A1BDF484E2}';
  IID__SecurityIdentity: TGUID = '{5FD58C59-B50E-32BC-853E-AEAE9DF172B5}';
  IID__SecurityCallers: TGUID = '{472B7121-2C54-31F6-9EF0-183BA7E89C21}';
  IID__Clerk: TGUID = '{942B847C-F0E5-3BCA-A0CD-1DEBC20EFD7E}';
  IID__ClerkInfo: TGUID = '{42CF1C02-B6CC-3CC0-8A89-337C3679BE9E}';
  IID__ClerkMonitor: TGUID = '{551BE0C8-B498-3EF5-A015-1CBBAACF5F3C}';
  IID__Compensator: TGUID = '{857E3097-E1ED-3050-A909-B41C51D99164}';
  IID__LogRecord: TGUID = '{213D716C-D26D-38A2-96D1-91522EC57A83}';
  IID__AppDomainHelper: TGUID = '{8D1A7D76-B267-33A3-8165-5381A392125D}';
  IID__AssemblyLocator: TGUID = '{1921006E-2AD4-3300-86E0-DB33AFEFD81F}';
  IID__ClientRemotingConfig: TGUID = '{D8D99843-2EE2-3EF0-994D-3CC82849964B}';
  IID__ClrObjectFactory: TGUID = '{85682905-13C3-3F08-87BC-22D304A00A74}';
  IID_IClrObjectFactory: TGUID = '{ECABAFD2-7F19-11D2-978E-0000F8757E2A}';
  IID__ComManagedImportUtil: TGUID = '{4C73F8B9-0899-3837-B30C-3476326EB78A}';
  IID_IComManagedImportUtil: TGUID = '{C3F8F66B-91BE-4C99-A94F-CE3B0A951039}';
  IID__ComSoapPublishError: TGUID = '{81F9757C-95D2-3F01-81C2-40660016A5FB}';
  IID__GenerateMetadata: TGUID = '{1F30F49B-EBDA-3F13-9A5D-93118CB845AB}';
  IID_IComSoapMetadata: TGUID = '{D8013FF0-730B-45E2-BA24-874B7242C425}';
  IID_IComSoapIISVRoot: TGUID = '{D8013EF0-730B-45E2-BA24-874B7242C425}';
  IID_IComSoapPublisher: TGUID = '{D8013EEE-730B-45E2-BA24-874B7242C425}';
  IID__IISVirtualRoot: TGUID = '{E6CD72A3-ED02-3AB8-9F34-41FE0688B7B4}';
  IID_IServerWebConfig: TGUID = '{6261E4B5-572A-4142-A2F9-1FE1A0C97097}';
  IID_ISoapClientImport: TGUID = '{E7F0F021-9201-47E4-94DA-1D1416DEC27A}';
  IID_ISoapServerTlb: TGUID = '{1E7BA9F7-21DB-4482-929E-21BDE2DFE51C}';
  IID_ISoapServerVRoot: TGUID = '{A31B6577-71D2-4344-AEDF-ADC1B0DC5347}';
  IID_ISoapUtility: TGUID = '{5AC4CB7E-F89F-429B-926B-C7F940936BF4}';
  IID__Publish: TGUID = '{682628A0-D951-320E-97B9-39B7ED45E741}';
  IID__ServerWebConfig: TGUID = '{D94CD78E-5C25-3E89-B74A-4C28E1133C56}';
  IID__SoapClientImport: TGUID = '{AD795600-210D-3789-ABE4-D9AAC5DAEBBE}';
  IID__SoapServerTlb: TGUID = '{72179DA4-E6F6-3987-B48B-42EB00630D07}';
  IID__SoapServerVRoot: TGUID = '{A18960B0-1C2F-3DC3-9771-E304B9294387}';
  IID__SoapUtility: TGUID = '{6E259649-3F86-37BF-A1AD-3C934923125B}';
  CLASS_BYOT: TGUID = '{0514E7B0-1ECC-37F6-BAFE-E8EF7952568A}';
  CLASS_ContextUtil: TGUID = '{7DA59565-0BF0-3D4C-A92D-E9618B61EDB9}';
  CLASS_RegistrationConfig: TGUID = '{36DCDA30-DC3B-4D93-BE42-90B2D74C64E7}';
  CLASS_RegistrationErrorInfo: TGUID = '{1F7EBE37-827C-3AC2-BEF1-882229B9724E}';
  CLASS_RegistrationException: TGUID = '{8066FB71-AFA1-343E-8070-44AB4F3F85C9}';
  CLASS_RegistrationHelper: TGUID = '{89A86E7B-C229-4008-9BAA-2F5C8411D7E0}';
  CLASS_RegistrationHelperTx: TGUID = '{C89AC250-E18A-4FC7-ABD5-B8897B6A78A5}';
  CLASS_ServicedComponent: TGUID = '{5F2E1501-189D-3DE1-81F2-CA8EE7C414C4}';
  CLASS_ResourcePool: TGUID = '{2B498504-E225-3BFA-9F6B-FDBB961FC7CC}';
  CLASS_TransactionEndDelegate: TGUID = '{06C8FA7C-656E-3C79-ADA6-373FBD937F62}';
  CLASS_SecurityCallContext: TGUID = '{CA1E2FB8-74B9-354B-B5FB-F4E771CC64F1}';
  CLASS_SecurityIdentity: TGUID = '{376B8ABA-A173-346D-88EA-51F506930D68}';
  CLASS_SecurityCallers: TGUID = '{DDC8B304-618D-33A7-AD5E-9E4CC7F90A86}';
  CLASS_Clerk: TGUID = '{B04A2AA6-EFD7-380B-8323-7FAC9B5C0330}';
  CLASS_ClerkInfo: TGUID = '{53A09FA6-9A71-332A-921D-BE130C97461A}';
  CLASS_ClerkMonitor: TGUID = '{6C1C243A-2146-3342-8078-AC4BFB9DB4E9}';
  CLASS_Compensator: TGUID = '{AB558A90-77EC-3C9A-A7E3-7B2260890A84}';
  CLASS_LogRecord: TGUID = '{33DF2DC3-AA47-3F6A-8D0D-8BECE780BB7D}';
  CLASS_AppDomainHelper: TGUID = '{EF24F689-14F8-4D92-B4AF-D7B1F0E70FD4}';
  CLASS_AssemblyLocator: TGUID = '{458AA3B5-265A-4B75-BC05-9BEA4630CF18}';
  CLASS_ClientRemotingConfig: TGUID = '{E7D574D5-2E51-3400-9FB6-A058F2D5B8AB}';
  CLASS_ClrObjectFactory: TGUID = '{ECABAFD1-7F19-11D2-978E-0000F8757E2A}';
  CLASS_ComManagedImportUtil: TGUID = '{3B0398C9-7812-4007-85CB-18C771F2206F}';
  CLASS_ComSoapPublishError: TGUID = '{B0F64827-79BB-3163-B1AB-A2EA0E1FDA23}';
  CLASS_GenerateMetadata: TGUID = '{D8013FF1-730B-45E2-BA24-874B7242C425}';
  CLASS_IISVirtualRoot: TGUID = '{D8013EF1-730B-45E2-BA24-874B7242C425}';
  CLASS_Publish: TGUID = '{D8013EEF-730B-45E2-BA24-874B7242C425}';
  CLASS_ServerWebConfig: TGUID = '{31D353B3-0A0A-3986-9B20-3EC4EE90B389}';
  CLASS_SoapClientImport: TGUID = '{346D5B9F-45E1-45C0-AADF-1B7D221E9063}';
  CLASS_SoapServerTlb: TGUID = '{F6B6768F-F99E-4152-8ED2-0412F78517FB}';
  CLASS_SoapServerVRoot: TGUID = '{CAA817CC-0C04-4D22-A05C-2B7E162F4E8F}';
  CLASS_SoapUtility: TGUID = '{5F9A955F-AA55-4127-A32B-33496AA8A44E}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum AccessChecksLevelOption
type
  AccessChecksLevelOption = TOleEnum;
const
  AccessChecksLevelOption_Application = $00000000;
  AccessChecksLevelOption_ApplicationComponent = $00000001;

// Constants for enum ActivationOption
type
  ActivationOption = TOleEnum;
const
  ActivationOption_Library = $00000000;
  ActivationOption_Server = $00000001;

// Constants for enum AuthenticationOption
type
  AuthenticationOption = TOleEnum;
const
  AuthenticationOption_Call = $00000003;
  AuthenticationOption_Connect = $00000002;
  AuthenticationOption_Default = $00000000;
  AuthenticationOption_Integrity = $00000005;
  AuthenticationOption_None = $00000001;
  AuthenticationOption_Packet = $00000004;
  AuthenticationOption_Privacy = $00000006;

// Constants for enum ImpersonationLevelOption
type
  ImpersonationLevelOption = TOleEnum;
const
  ImpersonationLevelOption_Anonymous = $00000001;
  ImpersonationLevelOption_Default = $00000000;
  ImpersonationLevelOption_Delegate = $00000004;
  ImpersonationLevelOption_Identify = $00000002;
  ImpersonationLevelOption_Impersonate = $00000003;

// Constants for enum InstallationFlags
type
  InstallationFlags = TOleEnum;
const
  InstallationFlags_Configure = $00000400;
  InstallationFlags_ConfigureComponentsOnly = $00000010;
  InstallationFlags_CreateTargetApplication = $00000002;
  InstallationFlags_Default = $00000000;
  InstallationFlags_ExpectExistingTypeLib = $00000001;
  InstallationFlags_FindOrCreateTargetApplication = $00000004;
  InstallationFlags_Install = $00000200;
  InstallationFlags_ReconfigureExistingApplication = $00000008;
  InstallationFlags_Register = $00000100;
  InstallationFlags_ReportWarningsToConsole = $00000020;

// Constants for enum TransactionOption
type
  TransactionOption = TOleEnum;
const
  TransactionOption_Disabled = $00000000;
  TransactionOption_NotSupported = $00000001;
  TransactionOption_Required = $00000003;
  TransactionOption_RequiresNew = $00000004;
  TransactionOption_Supported = $00000002;

// Constants for enum TransactionIsolationLevel
type
  TransactionIsolationLevel = TOleEnum;
const
  TransactionIsolationLevel_Any = $00000000;
  TransactionIsolationLevel_ReadCommitted = $00000002;
  TransactionIsolationLevel_ReadUncommitted = $00000001;
  TransactionIsolationLevel_RepeatableRead = $00000003;
  TransactionIsolationLevel_Serializable = $00000004;

// Constants for enum SynchronizationOption
type
  SynchronizationOption = TOleEnum;
const
  SynchronizationOption_Disabled = $00000000;
  SynchronizationOption_NotSupported = $00000001;
  SynchronizationOption_Required = $00000003;
  SynchronizationOption_RequiresNew = $00000004;
  SynchronizationOption_Supported = $00000002;

// Constants for enum CompensatorOptions
type
  CompensatorOptions = TOleEnum;
const
  CompensatorOptions_AbortPhase = $00000004;
  CompensatorOptions_AllPhases = $00000007;
  CompensatorOptions_CommitPhase = $00000002;
  CompensatorOptions_FailIfInDoubtsRemain = $00000010;
  CompensatorOptions_PreparePhase = $00000001;

// Constants for enum LogRecordFlags
type
  LogRecordFlags = TOleEnum;
const
  LogRecordFlags_ForgetTarget = $00000001;
  LogRecordFlags_ReplayInProgress = $00000040;
  LogRecordFlags_WrittenDuringAbort = $00000008;
  LogRecordFlags_WrittenDuringCommit = $00000004;
  LogRecordFlags_WrittenDuringPrepare = $00000002;
  LogRecordFlags_WrittenDuringReplay = $00000020;
  LogRecordFlags_WrittenDurringRecovery = $00000010;

// Constants for enum TransactionState
type
  TransactionState = TOleEnum;
const
  TransactionState_Aborted = $00000002;
  TransactionState_Active = $00000000;
  TransactionState_Committed = $00000001;
  TransactionState_Indoubt = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  _BYOT = interface;
  _BYOTDisp = dispinterface;
  _ContextUtil = interface;
  _ContextUtilDisp = dispinterface;
  IRegistrationHelper = interface;
  IRemoteDispatch = interface;
  IRemoteDispatchDisp = dispinterface;
  IServicedComponentInfo = interface;
  _RegistrationConfig = interface;
  _RegistrationConfigDisp = dispinterface;
  _RegistrationErrorInfo = interface;
  _RegistrationErrorInfoDisp = dispinterface;
  _RegistrationException = interface;
  _RegistrationExceptionDisp = dispinterface;
  _RegistrationHelper = interface;
  _RegistrationHelperDisp = dispinterface;
  _RegistrationHelperTx = interface;
  _RegistrationHelperTxDisp = dispinterface;
  _ServicedComponent = interface;
  _ServicedComponentDisp = dispinterface;
  _ResourcePool = interface;
  _ResourcePoolDisp = dispinterface;
  _TransactionEndDelegate = interface;
  _TransactionEndDelegateDisp = dispinterface;
  _SecurityCallContext = interface;
  _SecurityCallContextDisp = dispinterface;
  _SecurityIdentity = interface;
  _SecurityIdentityDisp = dispinterface;
  _SecurityCallers = interface;
  _SecurityCallersDisp = dispinterface;
  _Clerk = interface;
  _ClerkDisp = dispinterface;
  _ClerkInfo = interface;
  _ClerkInfoDisp = dispinterface;
  _ClerkMonitor = interface;
  _ClerkMonitorDisp = dispinterface;
  _Compensator = interface;
  _CompensatorDisp = dispinterface;
  _LogRecord = interface;
  _LogRecordDisp = dispinterface;
  _AppDomainHelper = interface;
  _AppDomainHelperDisp = dispinterface;
  _AssemblyLocator = interface;
  _AssemblyLocatorDisp = dispinterface;
  _ClientRemotingConfig = interface;
  _ClientRemotingConfigDisp = dispinterface;
  _ClrObjectFactory = interface;
  _ClrObjectFactoryDisp = dispinterface;
  IClrObjectFactory = interface;
  IClrObjectFactoryDisp = dispinterface;
  _ComManagedImportUtil = interface;
  _ComManagedImportUtilDisp = dispinterface;
  IComManagedImportUtil = interface;
  IComManagedImportUtilDisp = dispinterface;
  _ComSoapPublishError = interface;
  _ComSoapPublishErrorDisp = dispinterface;
  _GenerateMetadata = interface;
  _GenerateMetadataDisp = dispinterface;
  IComSoapMetadata = interface;
  IComSoapMetadataDisp = dispinterface;
  IComSoapIISVRoot = interface;
  IComSoapIISVRootDisp = dispinterface;
  IComSoapPublisher = interface;
  IComSoapPublisherDisp = dispinterface;
  _IISVirtualRoot = interface;
  _IISVirtualRootDisp = dispinterface;
  IServerWebConfig = interface;
  IServerWebConfigDisp = dispinterface;
  ISoapClientImport = interface;
  ISoapClientImportDisp = dispinterface;
  ISoapServerTlb = interface;
  ISoapServerTlbDisp = dispinterface;
  ISoapServerVRoot = interface;
  ISoapServerVRootDisp = dispinterface;
  ISoapUtility = interface;
  ISoapUtilityDisp = dispinterface;
  _Publish = interface;
  _PublishDisp = dispinterface;
  _ServerWebConfig = interface;
  _ServerWebConfigDisp = dispinterface;
  _SoapClientImport = interface;
  _SoapClientImportDisp = dispinterface;
  _SoapServerTlb = interface;
  _SoapServerTlbDisp = dispinterface;
  _SoapServerVRoot = interface;
  _SoapServerVRootDisp = dispinterface;
  _SoapUtility = interface;
  _SoapUtilityDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  BYOT = _BYOT;
  ContextUtil = _ContextUtil;
  RegistrationConfig = _RegistrationConfig;
  RegistrationErrorInfo = _RegistrationErrorInfo;
  RegistrationException = _RegistrationException;
  RegistrationHelper = _RegistrationHelper;
  RegistrationHelperTx = _RegistrationHelperTx;
  ServicedComponent = _ServicedComponent;
  ResourcePool = _ResourcePool;
  TransactionEndDelegate = _TransactionEndDelegate;
  SecurityCallContext = _SecurityCallContext;
  SecurityIdentity = _SecurityIdentity;
  SecurityCallers = _SecurityCallers;
  Clerk = _Clerk;
  ClerkInfo = _ClerkInfo;
  ClerkMonitor = _ClerkMonitor;
  Compensator = _Compensator;
  LogRecord = _LogRecord;
  AppDomainHelper = _AppDomainHelper;
  AssemblyLocator = _AssemblyLocator;
  ClientRemotingConfig = _ClientRemotingConfig;
  ClrObjectFactory = _ClrObjectFactory;
  ComManagedImportUtil = _ComManagedImportUtil;
  ComSoapPublishError = _ComSoapPublishError;
  GenerateMetadata = _GenerateMetadata;
  IISVirtualRoot = _IISVirtualRoot;
  Publish = _Publish;
  ServerWebConfig = _ServerWebConfig;
  SoapClientImport = _SoapClientImport;
  SoapServerTlb = _SoapServerTlb;
  SoapServerVRoot = _SoapServerVRoot;
  SoapUtility = _SoapUtility;


// *********************************************************************//
// Interface: _BYOT
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A36D847B-4478-3DA9-96F5-CD99F855C163}
// *********************************************************************//
  _BYOT = interface(IDispatch)
    ['{A36D847B-4478-3DA9-96F5-CD99F855C163}']
  end;

// *********************************************************************//
// DispIntf:  _BYOTDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A36D847B-4478-3DA9-96F5-CD99F855C163}
// *********************************************************************//
  _BYOTDisp = dispinterface
    ['{A36D847B-4478-3DA9-96F5-CD99F855C163}']
  end;

// *********************************************************************//
// Interface: _ContextUtil
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0326D857-F842-30D0-BD12-01BFB1D2F17A}
// *********************************************************************//
  _ContextUtil = interface(IDispatch)
    ['{0326D857-F842-30D0-BD12-01BFB1D2F17A}']
  end;

// *********************************************************************//
// DispIntf:  _ContextUtilDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {0326D857-F842-30D0-BD12-01BFB1D2F17A}
// *********************************************************************//
  _ContextUtilDisp = dispinterface
    ['{0326D857-F842-30D0-BD12-01BFB1D2F17A}']
  end;

// *********************************************************************//
// Interface: IRegistrationHelper
// Flags:     (256) OleAutomation
// GUID:      {55E3EA25-55CB-4650-8887-18E8D30BB4BC}
// *********************************************************************//
  IRegistrationHelper = interface(IUnknown)
    ['{55E3EA25-55CB-4650-8887-18E8D30BB4BC}']
    function InstallAssembly(const assembly: WideString; var application: WideString; 
                             var tlb: WideString; installFlags: InstallationFlags): HResult; stdcall;
    function UninstallAssembly(const assembly: WideString; const application: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IRemoteDispatch
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6619A740-8154-43BE-A186-0319578E02DB}
// *********************************************************************//
  IRemoteDispatch = interface(IDispatch)
    ['{6619A740-8154-43BE-A186-0319578E02DB}']
    function RemoteDispatchAutoDone(const s: WideString): WideString; safecall;
    function RemoteDispatchNotAutoDone(const s: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IRemoteDispatchDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6619A740-8154-43BE-A186-0319578E02DB}
// *********************************************************************//
  IRemoteDispatchDisp = dispinterface
    ['{6619A740-8154-43BE-A186-0319578E02DB}']
    function RemoteDispatchAutoDone(const s: WideString): WideString; dispid 1610743808;
    function RemoteDispatchNotAutoDone(const s: WideString): WideString; dispid 1610743809;
  end;

// *********************************************************************//
// Interface: IServicedComponentInfo
// Flags:     (256) OleAutomation
// GUID:      {8165B19E-8D3A-4D0B-80C8-97DE310DB583}
// *********************************************************************//
  IServicedComponentInfo = interface(IUnknown)
    ['{8165B19E-8D3A-4D0B-80C8-97DE310DB583}']
    function GetComponentInfo(var infoMask: Integer; out infoArray: PSafeArray): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: _RegistrationConfig
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {25579C5D-40C5-3F43-92D2-434554D95EF2}
// *********************************************************************//
  _RegistrationConfig = interface(IDispatch)
    ['{25579C5D-40C5-3F43-92D2-434554D95EF2}']
  end;

// *********************************************************************//
// DispIntf:  _RegistrationConfigDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {25579C5D-40C5-3F43-92D2-434554D95EF2}
// *********************************************************************//
  _RegistrationConfigDisp = dispinterface
    ['{25579C5D-40C5-3F43-92D2-434554D95EF2}']
  end;

// *********************************************************************//
// Interface: _RegistrationErrorInfo
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {95AD84EC-1E02-3A16-8CB4-0B0419DA36C4}
// *********************************************************************//
  _RegistrationErrorInfo = interface(IDispatch)
    ['{95AD84EC-1E02-3A16-8CB4-0B0419DA36C4}']
  end;

// *********************************************************************//
// DispIntf:  _RegistrationErrorInfoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {95AD84EC-1E02-3A16-8CB4-0B0419DA36C4}
// *********************************************************************//
  _RegistrationErrorInfoDisp = dispinterface
    ['{95AD84EC-1E02-3A16-8CB4-0B0419DA36C4}']
  end;

// *********************************************************************//
// Interface: _RegistrationException
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {09D08C74-9B25-38D4-8788-77F70028D6D1}
// *********************************************************************//
  _RegistrationException = interface(IDispatch)
    ['{09D08C74-9B25-38D4-8788-77F70028D6D1}']
  end;

// *********************************************************************//
// DispIntf:  _RegistrationExceptionDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {09D08C74-9B25-38D4-8788-77F70028D6D1}
// *********************************************************************//
  _RegistrationExceptionDisp = dispinterface
    ['{09D08C74-9B25-38D4-8788-77F70028D6D1}']
  end;

// *********************************************************************//
// Interface: _RegistrationHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CCA8D1E3-0EF0-3127-9E40-E695AD1F7E76}
// *********************************************************************//
  _RegistrationHelper = interface(IDispatch)
    ['{CCA8D1E3-0EF0-3127-9E40-E695AD1F7E76}']
  end;

// *********************************************************************//
// DispIntf:  _RegistrationHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {CCA8D1E3-0EF0-3127-9E40-E695AD1F7E76}
// *********************************************************************//
  _RegistrationHelperDisp = dispinterface
    ['{CCA8D1E3-0EF0-3127-9E40-E695AD1F7E76}']
  end;

// *********************************************************************//
// Interface: _RegistrationHelperTx
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {841190A7-1631-37B1-AC96-81109766E4DD}
// *********************************************************************//
  _RegistrationHelperTx = interface(IDispatch)
    ['{841190A7-1631-37B1-AC96-81109766E4DD}']
  end;

// *********************************************************************//
// DispIntf:  _RegistrationHelperTxDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {841190A7-1631-37B1-AC96-81109766E4DD}
// *********************************************************************//
  _RegistrationHelperTxDisp = dispinterface
    ['{841190A7-1631-37B1-AC96-81109766E4DD}']
  end;

// *********************************************************************//
// Interface: _ServicedComponent
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45FD4C49-3DB8-3BFB-9B5A-C9D4891C13B5}
// *********************************************************************//
  _ServicedComponent = interface(IDispatch)
    ['{45FD4C49-3DB8-3BFB-9B5A-C9D4891C13B5}']
  end;

// *********************************************************************//
// DispIntf:  _ServicedComponentDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {45FD4C49-3DB8-3BFB-9B5A-C9D4891C13B5}
// *********************************************************************//
  _ServicedComponentDisp = dispinterface
    ['{45FD4C49-3DB8-3BFB-9B5A-C9D4891C13B5}']
  end;

// *********************************************************************//
// Interface: _ResourcePool
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {15738649-33A7-3C2E-B5CD-0BC30023857A}
// *********************************************************************//
  _ResourcePool = interface(IDispatch)
    ['{15738649-33A7-3C2E-B5CD-0BC30023857A}']
  end;

// *********************************************************************//
// DispIntf:  _ResourcePoolDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {15738649-33A7-3C2E-B5CD-0BC30023857A}
// *********************************************************************//
  _ResourcePoolDisp = dispinterface
    ['{15738649-33A7-3C2E-B5CD-0BC30023857A}']
  end;

// *********************************************************************//
// Interface: _TransactionEndDelegate
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {53BA3083-1378-3B7F-8CD9-34AD229CCFD9}
// *********************************************************************//
  _TransactionEndDelegate = interface(IDispatch)
    ['{53BA3083-1378-3B7F-8CD9-34AD229CCFD9}']
  end;

// *********************************************************************//
// DispIntf:  _TransactionEndDelegateDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {53BA3083-1378-3B7F-8CD9-34AD229CCFD9}
// *********************************************************************//
  _TransactionEndDelegateDisp = dispinterface
    ['{53BA3083-1378-3B7F-8CD9-34AD229CCFD9}']
  end;

// *********************************************************************//
// Interface: _SecurityCallContext
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {021E6F47-2241-30DE-9730-A8A1BDF484E2}
// *********************************************************************//
  _SecurityCallContext = interface(IDispatch)
    ['{021E6F47-2241-30DE-9730-A8A1BDF484E2}']
  end;

// *********************************************************************//
// DispIntf:  _SecurityCallContextDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {021E6F47-2241-30DE-9730-A8A1BDF484E2}
// *********************************************************************//
  _SecurityCallContextDisp = dispinterface
    ['{021E6F47-2241-30DE-9730-A8A1BDF484E2}']
  end;

// *********************************************************************//
// Interface: _SecurityIdentity
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5FD58C59-B50E-32BC-853E-AEAE9DF172B5}
// *********************************************************************//
  _SecurityIdentity = interface(IDispatch)
    ['{5FD58C59-B50E-32BC-853E-AEAE9DF172B5}']
  end;

// *********************************************************************//
// DispIntf:  _SecurityIdentityDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {5FD58C59-B50E-32BC-853E-AEAE9DF172B5}
// *********************************************************************//
  _SecurityIdentityDisp = dispinterface
    ['{5FD58C59-B50E-32BC-853E-AEAE9DF172B5}']
  end;

// *********************************************************************//
// Interface: _SecurityCallers
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {472B7121-2C54-31F6-9EF0-183BA7E89C21}
// *********************************************************************//
  _SecurityCallers = interface(IDispatch)
    ['{472B7121-2C54-31F6-9EF0-183BA7E89C21}']
  end;

// *********************************************************************//
// DispIntf:  _SecurityCallersDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {472B7121-2C54-31F6-9EF0-183BA7E89C21}
// *********************************************************************//
  _SecurityCallersDisp = dispinterface
    ['{472B7121-2C54-31F6-9EF0-183BA7E89C21}']
  end;

// *********************************************************************//
// Interface: _Clerk
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {942B847C-F0E5-3BCA-A0CD-1DEBC20EFD7E}
// *********************************************************************//
  _Clerk = interface(IDispatch)
    ['{942B847C-F0E5-3BCA-A0CD-1DEBC20EFD7E}']
  end;

// *********************************************************************//
// DispIntf:  _ClerkDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {942B847C-F0E5-3BCA-A0CD-1DEBC20EFD7E}
// *********************************************************************//
  _ClerkDisp = dispinterface
    ['{942B847C-F0E5-3BCA-A0CD-1DEBC20EFD7E}']
  end;

// *********************************************************************//
// Interface: _ClerkInfo
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {42CF1C02-B6CC-3CC0-8A89-337C3679BE9E}
// *********************************************************************//
  _ClerkInfo = interface(IDispatch)
    ['{42CF1C02-B6CC-3CC0-8A89-337C3679BE9E}']
  end;

// *********************************************************************//
// DispIntf:  _ClerkInfoDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {42CF1C02-B6CC-3CC0-8A89-337C3679BE9E}
// *********************************************************************//
  _ClerkInfoDisp = dispinterface
    ['{42CF1C02-B6CC-3CC0-8A89-337C3679BE9E}']
  end;

// *********************************************************************//
// Interface: _ClerkMonitor
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {551BE0C8-B498-3EF5-A015-1CBBAACF5F3C}
// *********************************************************************//
  _ClerkMonitor = interface(IDispatch)
    ['{551BE0C8-B498-3EF5-A015-1CBBAACF5F3C}']
  end;

// *********************************************************************//
// DispIntf:  _ClerkMonitorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {551BE0C8-B498-3EF5-A015-1CBBAACF5F3C}
// *********************************************************************//
  _ClerkMonitorDisp = dispinterface
    ['{551BE0C8-B498-3EF5-A015-1CBBAACF5F3C}']
  end;

// *********************************************************************//
// Interface: _Compensator
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {857E3097-E1ED-3050-A909-B41C51D99164}
// *********************************************************************//
  _Compensator = interface(IDispatch)
    ['{857E3097-E1ED-3050-A909-B41C51D99164}']
  end;

// *********************************************************************//
// DispIntf:  _CompensatorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {857E3097-E1ED-3050-A909-B41C51D99164}
// *********************************************************************//
  _CompensatorDisp = dispinterface
    ['{857E3097-E1ED-3050-A909-B41C51D99164}']
  end;

// *********************************************************************//
// Interface: _LogRecord
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {213D716C-D26D-38A2-96D1-91522EC57A83}
// *********************************************************************//
  _LogRecord = interface(IDispatch)
    ['{213D716C-D26D-38A2-96D1-91522EC57A83}']
  end;

// *********************************************************************//
// DispIntf:  _LogRecordDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {213D716C-D26D-38A2-96D1-91522EC57A83}
// *********************************************************************//
  _LogRecordDisp = dispinterface
    ['{213D716C-D26D-38A2-96D1-91522EC57A83}']
  end;

// *********************************************************************//
// Interface: _AppDomainHelper
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8D1A7D76-B267-33A3-8165-5381A392125D}
// *********************************************************************//
  _AppDomainHelper = interface(IDispatch)
    ['{8D1A7D76-B267-33A3-8165-5381A392125D}']
  end;

// *********************************************************************//
// DispIntf:  _AppDomainHelperDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {8D1A7D76-B267-33A3-8165-5381A392125D}
// *********************************************************************//
  _AppDomainHelperDisp = dispinterface
    ['{8D1A7D76-B267-33A3-8165-5381A392125D}']
  end;

// *********************************************************************//
// Interface: _AssemblyLocator
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1921006E-2AD4-3300-86E0-DB33AFEFD81F}
// *********************************************************************//
  _AssemblyLocator = interface(IDispatch)
    ['{1921006E-2AD4-3300-86E0-DB33AFEFD81F}']
  end;

// *********************************************************************//
// DispIntf:  _AssemblyLocatorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1921006E-2AD4-3300-86E0-DB33AFEFD81F}
// *********************************************************************//
  _AssemblyLocatorDisp = dispinterface
    ['{1921006E-2AD4-3300-86E0-DB33AFEFD81F}']
  end;

// *********************************************************************//
// Interface: _ClientRemotingConfig
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8D99843-2EE2-3EF0-994D-3CC82849964B}
// *********************************************************************//
  _ClientRemotingConfig = interface(IDispatch)
    ['{D8D99843-2EE2-3EF0-994D-3CC82849964B}']
  end;

// *********************************************************************//
// DispIntf:  _ClientRemotingConfigDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D8D99843-2EE2-3EF0-994D-3CC82849964B}
// *********************************************************************//
  _ClientRemotingConfigDisp = dispinterface
    ['{D8D99843-2EE2-3EF0-994D-3CC82849964B}']
  end;

// *********************************************************************//
// Interface: _ClrObjectFactory
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {85682905-13C3-3F08-87BC-22D304A00A74}
// *********************************************************************//
  _ClrObjectFactory = interface(IDispatch)
    ['{85682905-13C3-3F08-87BC-22D304A00A74}']
  end;

// *********************************************************************//
// DispIntf:  _ClrObjectFactoryDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {85682905-13C3-3F08-87BC-22D304A00A74}
// *********************************************************************//
  _ClrObjectFactoryDisp = dispinterface
    ['{85682905-13C3-3F08-87BC-22D304A00A74}']
  end;

// *********************************************************************//
// Interface: IClrObjectFactory
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECABAFD2-7F19-11D2-978E-0000F8757E2A}
// *********************************************************************//
  IClrObjectFactory = interface(IDispatch)
    ['{ECABAFD2-7F19-11D2-978E-0000F8757E2A}']
    function CreateFromAssembly(const assembly: WideString; const type_: WideString; 
                                const mode: WideString): IDispatch; safecall;
    function CreateFromVroot(const VrootUrl: WideString; const mode: WideString): IDispatch; safecall;
    function CreateFromWsdl(const WsdlUrl: WideString; const mode: WideString): IDispatch; safecall;
    function CreateFromMailbox(const Mailbox: WideString; const mode: WideString): IDispatch; safecall;
  end;

// *********************************************************************//
// DispIntf:  IClrObjectFactoryDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {ECABAFD2-7F19-11D2-978E-0000F8757E2A}
// *********************************************************************//
  IClrObjectFactoryDisp = dispinterface
    ['{ECABAFD2-7F19-11D2-978E-0000F8757E2A}']
    function CreateFromAssembly(const assembly: WideString; const type_: WideString; 
                                const mode: WideString): IDispatch; dispid 1;
    function CreateFromVroot(const VrootUrl: WideString; const mode: WideString): IDispatch; dispid 2;
    function CreateFromWsdl(const WsdlUrl: WideString; const mode: WideString): IDispatch; dispid 3;
    function CreateFromMailbox(const Mailbox: WideString; const mode: WideString): IDispatch; dispid 4;
  end;

// *********************************************************************//
// Interface: _ComManagedImportUtil
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4C73F8B9-0899-3837-B30C-3476326EB78A}
// *********************************************************************//
  _ComManagedImportUtil = interface(IDispatch)
    ['{4C73F8B9-0899-3837-B30C-3476326EB78A}']
  end;

// *********************************************************************//
// DispIntf:  _ComManagedImportUtilDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {4C73F8B9-0899-3837-B30C-3476326EB78A}
// *********************************************************************//
  _ComManagedImportUtilDisp = dispinterface
    ['{4C73F8B9-0899-3837-B30C-3476326EB78A}']
  end;

// *********************************************************************//
// Interface: IComManagedImportUtil
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C3F8F66B-91BE-4C99-A94F-CE3B0A951039}
// *********************************************************************//
  IComManagedImportUtil = interface(IDispatch)
    ['{C3F8F66B-91BE-4C99-A94F-CE3B0A951039}']
    procedure GetComponentInfo(const assemblyPath: WideString; out numComponents: WideString; 
                               out componentInfo: WideString); safecall;
    procedure InstallAssembly(const filename: WideString; const parname: WideString; 
                              const appname: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IComManagedImportUtilDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C3F8F66B-91BE-4C99-A94F-CE3B0A951039}
// *********************************************************************//
  IComManagedImportUtilDisp = dispinterface
    ['{C3F8F66B-91BE-4C99-A94F-CE3B0A951039}']
    procedure GetComponentInfo(const assemblyPath: WideString; out numComponents: WideString; 
                               out componentInfo: WideString); dispid 4;
    procedure InstallAssembly(const filename: WideString; const parname: WideString; 
                              const appname: WideString); dispid 5;
  end;

// *********************************************************************//
// Interface: _ComSoapPublishError
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {81F9757C-95D2-3F01-81C2-40660016A5FB}
// *********************************************************************//
  _ComSoapPublishError = interface(IDispatch)
    ['{81F9757C-95D2-3F01-81C2-40660016A5FB}']
  end;

// *********************************************************************//
// DispIntf:  _ComSoapPublishErrorDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {81F9757C-95D2-3F01-81C2-40660016A5FB}
// *********************************************************************//
  _ComSoapPublishErrorDisp = dispinterface
    ['{81F9757C-95D2-3F01-81C2-40660016A5FB}']
  end;

// *********************************************************************//
// Interface: _GenerateMetadata
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1F30F49B-EBDA-3F13-9A5D-93118CB845AB}
// *********************************************************************//
  _GenerateMetadata = interface(IDispatch)
    ['{1F30F49B-EBDA-3F13-9A5D-93118CB845AB}']
  end;

// *********************************************************************//
// DispIntf:  _GenerateMetadataDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {1F30F49B-EBDA-3F13-9A5D-93118CB845AB}
// *********************************************************************//
  _GenerateMetadataDisp = dispinterface
    ['{1F30F49B-EBDA-3F13-9A5D-93118CB845AB}']
  end;

// *********************************************************************//
// Interface: IComSoapMetadata
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013FF0-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapMetadata = interface(IDispatch)
    ['{D8013FF0-730B-45E2-BA24-874B7242C425}']
    function Generate(const SrcTypeLibFileName: WideString; const OutPath: WideString): WideString; safecall;
    function GenerateSigned(const SrcTypeLibFileName: WideString; const OutPath: WideString; 
                            InstallGac: Integer; out Error: WideString): WideString; safecall;
  end;

// *********************************************************************//
// DispIntf:  IComSoapMetadataDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013FF0-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapMetadataDisp = dispinterface
    ['{D8013FF0-730B-45E2-BA24-874B7242C425}']
    function Generate(const SrcTypeLibFileName: WideString; const OutPath: WideString): WideString; dispid 1;
    function GenerateSigned(const SrcTypeLibFileName: WideString; const OutPath: WideString; 
                            InstallGac: Integer; out Error: WideString): WideString; dispid 2;
  end;

// *********************************************************************//
// Interface: IComSoapIISVRoot
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013EF0-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapIISVRoot = interface(IDispatch)
    ['{D8013EF0-730B-45E2-BA24-874B7242C425}']
    procedure Create(const RootWeb: WideString; const PhysicalDirectory: WideString; 
                     const VirtualDirectory: WideString; out Error: WideString); safecall;
    procedure Delete(const RootWeb: WideString; const PhysicalDirectory: WideString; 
                     const VirtualDirectory: WideString; out Error: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IComSoapIISVRootDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013EF0-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapIISVRootDisp = dispinterface
    ['{D8013EF0-730B-45E2-BA24-874B7242C425}']
    procedure Create(const RootWeb: WideString; const PhysicalDirectory: WideString; 
                     const VirtualDirectory: WideString; out Error: WideString); dispid 1;
    procedure Delete(const RootWeb: WideString; const PhysicalDirectory: WideString; 
                     const VirtualDirectory: WideString; out Error: WideString); dispid 2;
  end;

// *********************************************************************//
// Interface: IComSoapPublisher
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013EEE-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapPublisher = interface(IDispatch)
    ['{D8013EEE-730B-45E2-BA24-874B7242C425}']
    procedure CreateVirtualRoot(const Operation: WideString; const FullUrl: WideString; 
                                out BaseUrl: WideString; out VirtualRoot: WideString; 
                                out PhysicalPath: WideString; out Error: WideString); safecall;
    procedure DeleteVirtualRoot(const RootWebServer: WideString; const FullUrl: WideString; 
                                out Error: WideString); safecall;
    procedure CreateMailBox(const RootMailServer: WideString; const Mailbox: WideString; 
                            out SmtpName: WideString; out Domain: WideString; 
                            out PhysicalPath: WideString; out Error: WideString); safecall;
    procedure DeleteMailBox(const RootMailServer: WideString; const Mailbox: WideString; 
                            out Error: WideString); safecall;
    procedure ProcessServerTlb(const ProgId: WideString; const SrcTlbPath: WideString; 
                               const PhysicalPath: WideString; const Operation: WideString; 
                               out AssemblyName: WideString; out TypeName: WideString; 
                               out Error: WideString); safecall;
    procedure ProcessClientTlb(const ProgId: WideString; const SrcTlbPath: WideString; 
                               const PhysicalPath: WideString; const VRoot: WideString; 
                               const BaseUrl: WideString; const mode: WideString; 
                               const Transport: WideString; out AssemblyName: WideString; 
                               out TypeName: WideString; out Error: WideString); safecall;
    function GetTypeNameFromProgId(const assemblyPath: WideString; const ProgId: WideString): WideString; safecall;
    procedure RegisterAssembly(const assemblyPath: WideString); safecall;
    procedure UnRegisterAssembly(const assemblyPath: WideString); safecall;
    procedure GacInstall(const assemblyPath: WideString); safecall;
    procedure GacRemove(const assemblyPath: WideString); safecall;
    procedure GetAssemblyNameForCache(const TypeLibPath: WideString; out CachePath: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IComSoapPublisherDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D8013EEE-730B-45E2-BA24-874B7242C425}
// *********************************************************************//
  IComSoapPublisherDisp = dispinterface
    ['{D8013EEE-730B-45E2-BA24-874B7242C425}']
    procedure CreateVirtualRoot(const Operation: WideString; const FullUrl: WideString; 
                                out BaseUrl: WideString; out VirtualRoot: WideString; 
                                out PhysicalPath: WideString; out Error: WideString); dispid 4;
    procedure DeleteVirtualRoot(const RootWebServer: WideString; const FullUrl: WideString; 
                                out Error: WideString); dispid 5;
    procedure CreateMailBox(const RootMailServer: WideString; const Mailbox: WideString; 
                            out SmtpName: WideString; out Domain: WideString; 
                            out PhysicalPath: WideString; out Error: WideString); dispid 6;
    procedure DeleteMailBox(const RootMailServer: WideString; const Mailbox: WideString; 
                            out Error: WideString); dispid 7;
    procedure ProcessServerTlb(const ProgId: WideString; const SrcTlbPath: WideString; 
                               const PhysicalPath: WideString; const Operation: WideString; 
                               out AssemblyName: WideString; out TypeName: WideString; 
                               out Error: WideString); dispid 8;
    procedure ProcessClientTlb(const ProgId: WideString; const SrcTlbPath: WideString; 
                               const PhysicalPath: WideString; const VRoot: WideString; 
                               const BaseUrl: WideString; const mode: WideString; 
                               const Transport: WideString; out AssemblyName: WideString; 
                               out TypeName: WideString; out Error: WideString); dispid 9;
    function GetTypeNameFromProgId(const assemblyPath: WideString; const ProgId: WideString): WideString; dispid 10;
    procedure RegisterAssembly(const assemblyPath: WideString); dispid 11;
    procedure UnRegisterAssembly(const assemblyPath: WideString); dispid 12;
    procedure GacInstall(const assemblyPath: WideString); dispid 13;
    procedure GacRemove(const assemblyPath: WideString); dispid 14;
    procedure GetAssemblyNameForCache(const TypeLibPath: WideString; out CachePath: WideString); dispid 15;
  end;

// *********************************************************************//
// Interface: _IISVirtualRoot
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E6CD72A3-ED02-3AB8-9F34-41FE0688B7B4}
// *********************************************************************//
  _IISVirtualRoot = interface(IDispatch)
    ['{E6CD72A3-ED02-3AB8-9F34-41FE0688B7B4}']
  end;

// *********************************************************************//
// DispIntf:  _IISVirtualRootDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {E6CD72A3-ED02-3AB8-9F34-41FE0688B7B4}
// *********************************************************************//
  _IISVirtualRootDisp = dispinterface
    ['{E6CD72A3-ED02-3AB8-9F34-41FE0688B7B4}']
  end;

// *********************************************************************//
// Interface: IServerWebConfig
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6261E4B5-572A-4142-A2F9-1FE1A0C97097}
// *********************************************************************//
  IServerWebConfig = interface(IDispatch)
    ['{6261E4B5-572A-4142-A2F9-1FE1A0C97097}']
    procedure AddElement(const FilePath: WideString; const AssemblyName: WideString; 
                         const TypeName: WideString; const ProgId: WideString; 
                         const mode: WideString; out Error: WideString); safecall;
    procedure Create(const FilePath: WideString; const FileRootName: WideString; 
                     out Error: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  IServerWebConfigDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6261E4B5-572A-4142-A2F9-1FE1A0C97097}
// *********************************************************************//
  IServerWebConfigDisp = dispinterface
    ['{6261E4B5-572A-4142-A2F9-1FE1A0C97097}']
    procedure AddElement(const FilePath: WideString; const AssemblyName: WideString; 
                         const TypeName: WideString; const ProgId: WideString; 
                         const mode: WideString; out Error: WideString); dispid 1;
    procedure Create(const FilePath: WideString; const FileRootName: WideString; 
                     out Error: WideString); dispid 2;
  end;

// *********************************************************************//
// Interface: ISoapClientImport
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E7F0F021-9201-47E4-94DA-1D1416DEC27A}
// *********************************************************************//
  ISoapClientImport = interface(IDispatch)
    ['{E7F0F021-9201-47E4-94DA-1D1416DEC27A}']
    procedure ProcessClientTlbEx(const ProgId: WideString; const VirtualRoot: WideString; 
                                 const BaseUrl: WideString; const authentication: WideString; 
                                 const AssemblyName: WideString; const TypeName: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISoapClientImportDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E7F0F021-9201-47E4-94DA-1D1416DEC27A}
// *********************************************************************//
  ISoapClientImportDisp = dispinterface
    ['{E7F0F021-9201-47E4-94DA-1D1416DEC27A}']
    procedure ProcessClientTlbEx(const ProgId: WideString; const VirtualRoot: WideString; 
                                 const BaseUrl: WideString; const authentication: WideString; 
                                 const AssemblyName: WideString; const TypeName: WideString); dispid 1;
  end;

// *********************************************************************//
// Interface: ISoapServerTlb
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E7BA9F7-21DB-4482-929E-21BDE2DFE51C}
// *********************************************************************//
  ISoapServerTlb = interface(IDispatch)
    ['{1E7BA9F7-21DB-4482-929E-21BDE2DFE51C}']
    procedure AddServerTlb(const ProgId: WideString; const classId: WideString; 
                           const interfaceId: WideString; const SrcTlbPath: WideString; 
                           const RootWebServer: WideString; const BaseUrl: WideString; 
                           const VirtualRoot: WideString; const clientActivated: WideString; 
                           const wellKnown: WideString; const discoFile: WideString; 
                           const Operation: WideString; out AssemblyName: WideString; 
                           out TypeName: WideString); safecall;
    procedure DeleteServerTlb(const ProgId: WideString; const classId: WideString; 
                              const interfaceId: WideString; const SrcTlbPath: WideString; 
                              const RootWebServer: WideString; const BaseUrl: WideString; 
                              const VirtualRoot: WideString; const Operation: WideString; 
                              const AssemblyName: WideString; const TypeName: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISoapServerTlbDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1E7BA9F7-21DB-4482-929E-21BDE2DFE51C}
// *********************************************************************//
  ISoapServerTlbDisp = dispinterface
    ['{1E7BA9F7-21DB-4482-929E-21BDE2DFE51C}']
    procedure AddServerTlb(const ProgId: WideString; const classId: WideString; 
                           const interfaceId: WideString; const SrcTlbPath: WideString; 
                           const RootWebServer: WideString; const BaseUrl: WideString; 
                           const VirtualRoot: WideString; const clientActivated: WideString; 
                           const wellKnown: WideString; const discoFile: WideString; 
                           const Operation: WideString; out AssemblyName: WideString; 
                           out TypeName: WideString); dispid 1;
    procedure DeleteServerTlb(const ProgId: WideString; const classId: WideString; 
                              const interfaceId: WideString; const SrcTlbPath: WideString; 
                              const RootWebServer: WideString; const BaseUrl: WideString; 
                              const VirtualRoot: WideString; const Operation: WideString; 
                              const AssemblyName: WideString; const TypeName: WideString); dispid 2;
  end;

// *********************************************************************//
// Interface: ISoapServerVRoot
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A31B6577-71D2-4344-AEDF-ADC1B0DC5347}
// *********************************************************************//
  ISoapServerVRoot = interface(IDispatch)
    ['{A31B6577-71D2-4344-AEDF-ADC1B0DC5347}']
    procedure CreateVirtualRootEx(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                  const inVirtualRoot: WideString; const homePage: WideString; 
                                  const discoFile: WideString; const secureSockets: WideString; 
                                  const authentication: WideString; const Operation: WideString; 
                                  out BaseUrl: WideString; out VirtualRoot: WideString; 
                                  out PhysicalPath: WideString); safecall;
    procedure DeleteVirtualRootEx(const RootWebServer: WideString; const BaseUrl: WideString; 
                                  const VirtualRoot: WideString); safecall;
    procedure GetVirtualRootStatus(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                   const inVirtualRoot: WideString; out exists: WideString; 
                                   out secureSockets: WideString; out windowsAuth: WideString; 
                                   out anonymous: WideString; out homePage: WideString; 
                                   out discoFile: WideString; out PhysicalPath: WideString; 
                                   out BaseUrl: WideString; out VirtualRoot: WideString); safecall;
  end;

// *********************************************************************//
// DispIntf:  ISoapServerVRootDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A31B6577-71D2-4344-AEDF-ADC1B0DC5347}
// *********************************************************************//
  ISoapServerVRootDisp = dispinterface
    ['{A31B6577-71D2-4344-AEDF-ADC1B0DC5347}']
    procedure CreateVirtualRootEx(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                  const inVirtualRoot: WideString; const homePage: WideString; 
                                  const discoFile: WideString; const secureSockets: WideString; 
                                  const authentication: WideString; const Operation: WideString; 
                                  out BaseUrl: WideString; out VirtualRoot: WideString; 
                                  out PhysicalPath: WideString); dispid 1;
    procedure DeleteVirtualRootEx(const RootWebServer: WideString; const BaseUrl: WideString; 
                                  const VirtualRoot: WideString); dispid 2;
    procedure GetVirtualRootStatus(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                   const inVirtualRoot: WideString; out exists: WideString; 
                                   out secureSockets: WideString; out windowsAuth: WideString; 
                                   out anonymous: WideString; out homePage: WideString; 
                                   out discoFile: WideString; out PhysicalPath: WideString; 
                                   out BaseUrl: WideString; out VirtualRoot: WideString); dispid 3;
  end;

// *********************************************************************//
// Interface: ISoapUtility
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AC4CB7E-F89F-429B-926B-C7F940936BF4}
// *********************************************************************//
  ISoapUtility = interface(IDispatch)
    ['{5AC4CB7E-F89F-429B-926B-C7F940936BF4}']
    procedure GetServerPhysicalPath(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                    const inVirtualRoot: WideString; out PhysicalPath: WideString); safecall;
    procedure GetServerBinPath(const RootWebServer: WideString; const inBaseUrl: WideString; 
                               const inVirtualRoot: WideString; out binPath: WideString); safecall;
    procedure Present; safecall;
  end;

// *********************************************************************//
// DispIntf:  ISoapUtilityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5AC4CB7E-F89F-429B-926B-C7F940936BF4}
// *********************************************************************//
  ISoapUtilityDisp = dispinterface
    ['{5AC4CB7E-F89F-429B-926B-C7F940936BF4}']
    procedure GetServerPhysicalPath(const RootWebServer: WideString; const inBaseUrl: WideString; 
                                    const inVirtualRoot: WideString; out PhysicalPath: WideString); dispid 1;
    procedure GetServerBinPath(const RootWebServer: WideString; const inBaseUrl: WideString; 
                               const inVirtualRoot: WideString; out binPath: WideString); dispid 2;
    procedure Present; dispid 3;
  end;

// *********************************************************************//
// Interface: _Publish
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {682628A0-D951-320E-97B9-39B7ED45E741}
// *********************************************************************//
  _Publish = interface(IDispatch)
    ['{682628A0-D951-320E-97B9-39B7ED45E741}']
  end;

// *********************************************************************//
// DispIntf:  _PublishDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {682628A0-D951-320E-97B9-39B7ED45E741}
// *********************************************************************//
  _PublishDisp = dispinterface
    ['{682628A0-D951-320E-97B9-39B7ED45E741}']
  end;

// *********************************************************************//
// Interface: _ServerWebConfig
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D94CD78E-5C25-3E89-B74A-4C28E1133C56}
// *********************************************************************//
  _ServerWebConfig = interface(IDispatch)
    ['{D94CD78E-5C25-3E89-B74A-4C28E1133C56}']
  end;

// *********************************************************************//
// DispIntf:  _ServerWebConfigDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {D94CD78E-5C25-3E89-B74A-4C28E1133C56}
// *********************************************************************//
  _ServerWebConfigDisp = dispinterface
    ['{D94CD78E-5C25-3E89-B74A-4C28E1133C56}']
  end;

// *********************************************************************//
// Interface: _SoapClientImport
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AD795600-210D-3789-ABE4-D9AAC5DAEBBE}
// *********************************************************************//
  _SoapClientImport = interface(IDispatch)
    ['{AD795600-210D-3789-ABE4-D9AAC5DAEBBE}']
  end;

// *********************************************************************//
// DispIntf:  _SoapClientImportDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {AD795600-210D-3789-ABE4-D9AAC5DAEBBE}
// *********************************************************************//
  _SoapClientImportDisp = dispinterface
    ['{AD795600-210D-3789-ABE4-D9AAC5DAEBBE}']
  end;

// *********************************************************************//
// Interface: _SoapServerTlb
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {72179DA4-E6F6-3987-B48B-42EB00630D07}
// *********************************************************************//
  _SoapServerTlb = interface(IDispatch)
    ['{72179DA4-E6F6-3987-B48B-42EB00630D07}']
  end;

// *********************************************************************//
// DispIntf:  _SoapServerTlbDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {72179DA4-E6F6-3987-B48B-42EB00630D07}
// *********************************************************************//
  _SoapServerTlbDisp = dispinterface
    ['{72179DA4-E6F6-3987-B48B-42EB00630D07}']
  end;

// *********************************************************************//
// Interface: _SoapServerVRoot
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A18960B0-1C2F-3DC3-9771-E304B9294387}
// *********************************************************************//
  _SoapServerVRoot = interface(IDispatch)
    ['{A18960B0-1C2F-3DC3-9771-E304B9294387}']
  end;

// *********************************************************************//
// DispIntf:  _SoapServerVRootDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {A18960B0-1C2F-3DC3-9771-E304B9294387}
// *********************************************************************//
  _SoapServerVRootDisp = dispinterface
    ['{A18960B0-1C2F-3DC3-9771-E304B9294387}']
  end;

// *********************************************************************//
// Interface: _SoapUtility
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E259649-3F86-37BF-A1AD-3C934923125B}
// *********************************************************************//
  _SoapUtility = interface(IDispatch)
    ['{6E259649-3F86-37BF-A1AD-3C934923125B}']
  end;

// *********************************************************************//
// DispIntf:  _SoapUtilityDisp
// Flags:     (4432) Hidden Dual OleAutomation Dispatchable
// GUID:      {6E259649-3F86-37BF-A1AD-3C934923125B}
// *********************************************************************//
  _SoapUtilityDisp = dispinterface
    ['{6E259649-3F86-37BF-A1AD-3C934923125B}']
  end;

// *********************************************************************//
// The Class CoBYOT provides a Create and CreateRemote method to          
// create instances of the default interface _BYOT exposed by              
// the CoClass BYOT. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoBYOT = class
    class function Create: _BYOT;
    class function CreateRemote(const MachineName: string): _BYOT;
  end;

// *********************************************************************//
// The Class CoContextUtil provides a Create and CreateRemote method to          
// create instances of the default interface _ContextUtil exposed by              
// the CoClass ContextUtil. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoContextUtil = class
    class function Create: _ContextUtil;
    class function CreateRemote(const MachineName: string): _ContextUtil;
  end;

// *********************************************************************//
// The Class CoRegistrationConfig provides a Create and CreateRemote method to          
// create instances of the default interface _RegistrationConfig exposed by              
// the CoClass RegistrationConfig. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistrationConfig = class
    class function Create: _RegistrationConfig;
    class function CreateRemote(const MachineName: string): _RegistrationConfig;
  end;

// *********************************************************************//
// The Class CoRegistrationErrorInfo provides a Create and CreateRemote method to          
// create instances of the default interface _RegistrationErrorInfo exposed by              
// the CoClass RegistrationErrorInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistrationErrorInfo = class
    class function Create: _RegistrationErrorInfo;
    class function CreateRemote(const MachineName: string): _RegistrationErrorInfo;
  end;

// *********************************************************************//
// The Class CoRegistrationException provides a Create and CreateRemote method to          
// create instances of the default interface _RegistrationException exposed by              
// the CoClass RegistrationException. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistrationException = class
    class function Create: _RegistrationException;
    class function CreateRemote(const MachineName: string): _RegistrationException;
  end;

// *********************************************************************//
// The Class CoRegistrationHelper provides a Create and CreateRemote method to          
// create instances of the default interface _RegistrationHelper exposed by              
// the CoClass RegistrationHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistrationHelper = class
    class function Create: _RegistrationHelper;
    class function CreateRemote(const MachineName: string): _RegistrationHelper;
  end;

// *********************************************************************//
// The Class CoRegistrationHelperTx provides a Create and CreateRemote method to          
// create instances of the default interface _RegistrationHelperTx exposed by              
// the CoClass RegistrationHelperTx. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoRegistrationHelperTx = class
    class function Create: _RegistrationHelperTx;
    class function CreateRemote(const MachineName: string): _RegistrationHelperTx;
  end;

// *********************************************************************//
// The Class CoServicedComponent provides a Create and CreateRemote method to          
// create instances of the default interface _ServicedComponent exposed by              
// the CoClass ServicedComponent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServicedComponent = class
    class function Create: _ServicedComponent;
    class function CreateRemote(const MachineName: string): _ServicedComponent;
  end;

// *********************************************************************//
// The Class CoResourcePool provides a Create and CreateRemote method to          
// create instances of the default interface _ResourcePool exposed by              
// the CoClass ResourcePool. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoResourcePool = class
    class function Create: _ResourcePool;
    class function CreateRemote(const MachineName: string): _ResourcePool;
  end;

// *********************************************************************//
// The Class CoTransactionEndDelegate provides a Create and CreateRemote method to          
// create instances of the default interface _TransactionEndDelegate exposed by              
// the CoClass TransactionEndDelegate. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTransactionEndDelegate = class
    class function Create: _TransactionEndDelegate;
    class function CreateRemote(const MachineName: string): _TransactionEndDelegate;
  end;

// *********************************************************************//
// The Class CoSecurityCallContext provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityCallContext exposed by              
// the CoClass SecurityCallContext. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityCallContext = class
    class function Create: _SecurityCallContext;
    class function CreateRemote(const MachineName: string): _SecurityCallContext;
  end;

// *********************************************************************//
// The Class CoSecurityIdentity provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityIdentity exposed by              
// the CoClass SecurityIdentity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityIdentity = class
    class function Create: _SecurityIdentity;
    class function CreateRemote(const MachineName: string): _SecurityIdentity;
  end;

// *********************************************************************//
// The Class CoSecurityCallers provides a Create and CreateRemote method to          
// create instances of the default interface _SecurityCallers exposed by              
// the CoClass SecurityCallers. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSecurityCallers = class
    class function Create: _SecurityCallers;
    class function CreateRemote(const MachineName: string): _SecurityCallers;
  end;

// *********************************************************************//
// The Class CoClerk provides a Create and CreateRemote method to          
// create instances of the default interface _Clerk exposed by              
// the CoClass Clerk. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClerk = class
    class function Create: _Clerk;
    class function CreateRemote(const MachineName: string): _Clerk;
  end;

// *********************************************************************//
// The Class CoClerkInfo provides a Create and CreateRemote method to          
// create instances of the default interface _ClerkInfo exposed by              
// the CoClass ClerkInfo. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClerkInfo = class
    class function Create: _ClerkInfo;
    class function CreateRemote(const MachineName: string): _ClerkInfo;
  end;

// *********************************************************************//
// The Class CoClerkMonitor provides a Create and CreateRemote method to          
// create instances of the default interface _ClerkMonitor exposed by              
// the CoClass ClerkMonitor. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClerkMonitor = class
    class function Create: _ClerkMonitor;
    class function CreateRemote(const MachineName: string): _ClerkMonitor;
  end;

// *********************************************************************//
// The Class CoCompensator provides a Create and CreateRemote method to          
// create instances of the default interface _Compensator exposed by              
// the CoClass Compensator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCompensator = class
    class function Create: _Compensator;
    class function CreateRemote(const MachineName: string): _Compensator;
  end;

// *********************************************************************//
// The Class CoLogRecord provides a Create and CreateRemote method to          
// create instances of the default interface _LogRecord exposed by              
// the CoClass LogRecord. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoLogRecord = class
    class function Create: _LogRecord;
    class function CreateRemote(const MachineName: string): _LogRecord;
  end;

// *********************************************************************//
// The Class CoAppDomainHelper provides a Create and CreateRemote method to          
// create instances of the default interface _AppDomainHelper exposed by              
// the CoClass AppDomainHelper. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAppDomainHelper = class
    class function Create: _AppDomainHelper;
    class function CreateRemote(const MachineName: string): _AppDomainHelper;
  end;

// *********************************************************************//
// The Class CoAssemblyLocator provides a Create and CreateRemote method to          
// create instances of the default interface _AssemblyLocator exposed by              
// the CoClass AssemblyLocator. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoAssemblyLocator = class
    class function Create: _AssemblyLocator;
    class function CreateRemote(const MachineName: string): _AssemblyLocator;
  end;

// *********************************************************************//
// The Class CoClientRemotingConfig provides a Create and CreateRemote method to          
// create instances of the default interface _ClientRemotingConfig exposed by              
// the CoClass ClientRemotingConfig. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClientRemotingConfig = class
    class function Create: _ClientRemotingConfig;
    class function CreateRemote(const MachineName: string): _ClientRemotingConfig;
  end;

// *********************************************************************//
// The Class CoClrObjectFactory provides a Create and CreateRemote method to          
// create instances of the default interface _ClrObjectFactory exposed by              
// the CoClass ClrObjectFactory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoClrObjectFactory = class
    class function Create: _ClrObjectFactory;
    class function CreateRemote(const MachineName: string): _ClrObjectFactory;
  end;

// *********************************************************************//
// The Class CoComManagedImportUtil provides a Create and CreateRemote method to          
// create instances of the default interface _ComManagedImportUtil exposed by              
// the CoClass ComManagedImportUtil. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComManagedImportUtil = class
    class function Create: _ComManagedImportUtil;
    class function CreateRemote(const MachineName: string): _ComManagedImportUtil;
  end;

// *********************************************************************//
// The Class CoComSoapPublishError provides a Create and CreateRemote method to          
// create instances of the default interface _ComSoapPublishError exposed by              
// the CoClass ComSoapPublishError. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComSoapPublishError = class
    class function Create: _ComSoapPublishError;
    class function CreateRemote(const MachineName: string): _ComSoapPublishError;
  end;

// *********************************************************************//
// The Class CoGenerateMetadata provides a Create and CreateRemote method to          
// create instances of the default interface _GenerateMetadata exposed by              
// the CoClass GenerateMetadata. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoGenerateMetadata = class
    class function Create: _GenerateMetadata;
    class function CreateRemote(const MachineName: string): _GenerateMetadata;
  end;

// *********************************************************************//
// The Class CoIISVirtualRoot provides a Create and CreateRemote method to          
// create instances of the default interface _IISVirtualRoot exposed by              
// the CoClass IISVirtualRoot. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoIISVirtualRoot = class
    class function Create: _IISVirtualRoot;
    class function CreateRemote(const MachineName: string): _IISVirtualRoot;
  end;

// *********************************************************************//
// The Class CoPublish provides a Create and CreateRemote method to          
// create instances of the default interface _Publish exposed by              
// the CoClass Publish. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoPublish = class
    class function Create: _Publish;
    class function CreateRemote(const MachineName: string): _Publish;
  end;

// *********************************************************************//
// The Class CoServerWebConfig provides a Create and CreateRemote method to          
// create instances of the default interface _ServerWebConfig exposed by              
// the CoClass ServerWebConfig. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoServerWebConfig = class
    class function Create: _ServerWebConfig;
    class function CreateRemote(const MachineName: string): _ServerWebConfig;
  end;

// *********************************************************************//
// The Class CoSoapClientImport provides a Create and CreateRemote method to          
// create instances of the default interface _SoapClientImport exposed by              
// the CoClass SoapClientImport. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSoapClientImport = class
    class function Create: _SoapClientImport;
    class function CreateRemote(const MachineName: string): _SoapClientImport;
  end;

// *********************************************************************//
// The Class CoSoapServerTlb provides a Create and CreateRemote method to          
// create instances of the default interface _SoapServerTlb exposed by              
// the CoClass SoapServerTlb. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSoapServerTlb = class
    class function Create: _SoapServerTlb;
    class function CreateRemote(const MachineName: string): _SoapServerTlb;
  end;

// *********************************************************************//
// The Class CoSoapServerVRoot provides a Create and CreateRemote method to          
// create instances of the default interface _SoapServerVRoot exposed by              
// the CoClass SoapServerVRoot. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSoapServerVRoot = class
    class function Create: _SoapServerVRoot;
    class function CreateRemote(const MachineName: string): _SoapServerVRoot;
  end;

// *********************************************************************//
// The Class CoSoapUtility provides a Create and CreateRemote method to          
// create instances of the default interface _SoapUtility exposed by              
// the CoClass SoapUtility. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoSoapUtility = class
    class function Create: _SoapUtility;
    class function CreateRemote(const MachineName: string): _SoapUtility;
  end;

implementation

uses ComObj;

class function CoBYOT.Create: _BYOT;
begin
  Result := CreateComObject(CLASS_BYOT) as _BYOT;
end;

class function CoBYOT.CreateRemote(const MachineName: string): _BYOT;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_BYOT) as _BYOT;
end;

class function CoContextUtil.Create: _ContextUtil;
begin
  Result := CreateComObject(CLASS_ContextUtil) as _ContextUtil;
end;

class function CoContextUtil.CreateRemote(const MachineName: string): _ContextUtil;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ContextUtil) as _ContextUtil;
end;

class function CoRegistrationConfig.Create: _RegistrationConfig;
begin
  Result := CreateComObject(CLASS_RegistrationConfig) as _RegistrationConfig;
end;

class function CoRegistrationConfig.CreateRemote(const MachineName: string): _RegistrationConfig;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistrationConfig) as _RegistrationConfig;
end;

class function CoRegistrationErrorInfo.Create: _RegistrationErrorInfo;
begin
  Result := CreateComObject(CLASS_RegistrationErrorInfo) as _RegistrationErrorInfo;
end;

class function CoRegistrationErrorInfo.CreateRemote(const MachineName: string): _RegistrationErrorInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistrationErrorInfo) as _RegistrationErrorInfo;
end;

class function CoRegistrationException.Create: _RegistrationException;
begin
  Result := CreateComObject(CLASS_RegistrationException) as _RegistrationException;
end;

class function CoRegistrationException.CreateRemote(const MachineName: string): _RegistrationException;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistrationException) as _RegistrationException;
end;

class function CoRegistrationHelper.Create: _RegistrationHelper;
begin
  Result := CreateComObject(CLASS_RegistrationHelper) as _RegistrationHelper;
end;

class function CoRegistrationHelper.CreateRemote(const MachineName: string): _RegistrationHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistrationHelper) as _RegistrationHelper;
end;

class function CoRegistrationHelperTx.Create: _RegistrationHelperTx;
begin
  Result := CreateComObject(CLASS_RegistrationHelperTx) as _RegistrationHelperTx;
end;

class function CoRegistrationHelperTx.CreateRemote(const MachineName: string): _RegistrationHelperTx;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_RegistrationHelperTx) as _RegistrationHelperTx;
end;

class function CoServicedComponent.Create: _ServicedComponent;
begin
  Result := CreateComObject(CLASS_ServicedComponent) as _ServicedComponent;
end;

class function CoServicedComponent.CreateRemote(const MachineName: string): _ServicedComponent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServicedComponent) as _ServicedComponent;
end;

class function CoResourcePool.Create: _ResourcePool;
begin
  Result := CreateComObject(CLASS_ResourcePool) as _ResourcePool;
end;

class function CoResourcePool.CreateRemote(const MachineName: string): _ResourcePool;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ResourcePool) as _ResourcePool;
end;

class function CoTransactionEndDelegate.Create: _TransactionEndDelegate;
begin
  Result := CreateComObject(CLASS_TransactionEndDelegate) as _TransactionEndDelegate;
end;

class function CoTransactionEndDelegate.CreateRemote(const MachineName: string): _TransactionEndDelegate;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TransactionEndDelegate) as _TransactionEndDelegate;
end;

class function CoSecurityCallContext.Create: _SecurityCallContext;
begin
  Result := CreateComObject(CLASS_SecurityCallContext) as _SecurityCallContext;
end;

class function CoSecurityCallContext.CreateRemote(const MachineName: string): _SecurityCallContext;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityCallContext) as _SecurityCallContext;
end;

class function CoSecurityIdentity.Create: _SecurityIdentity;
begin
  Result := CreateComObject(CLASS_SecurityIdentity) as _SecurityIdentity;
end;

class function CoSecurityIdentity.CreateRemote(const MachineName: string): _SecurityIdentity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityIdentity) as _SecurityIdentity;
end;

class function CoSecurityCallers.Create: _SecurityCallers;
begin
  Result := CreateComObject(CLASS_SecurityCallers) as _SecurityCallers;
end;

class function CoSecurityCallers.CreateRemote(const MachineName: string): _SecurityCallers;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SecurityCallers) as _SecurityCallers;
end;

class function CoClerk.Create: _Clerk;
begin
  Result := CreateComObject(CLASS_Clerk) as _Clerk;
end;

class function CoClerk.CreateRemote(const MachineName: string): _Clerk;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Clerk) as _Clerk;
end;

class function CoClerkInfo.Create: _ClerkInfo;
begin
  Result := CreateComObject(CLASS_ClerkInfo) as _ClerkInfo;
end;

class function CoClerkInfo.CreateRemote(const MachineName: string): _ClerkInfo;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClerkInfo) as _ClerkInfo;
end;

class function CoClerkMonitor.Create: _ClerkMonitor;
begin
  Result := CreateComObject(CLASS_ClerkMonitor) as _ClerkMonitor;
end;

class function CoClerkMonitor.CreateRemote(const MachineName: string): _ClerkMonitor;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClerkMonitor) as _ClerkMonitor;
end;

class function CoCompensator.Create: _Compensator;
begin
  Result := CreateComObject(CLASS_Compensator) as _Compensator;
end;

class function CoCompensator.CreateRemote(const MachineName: string): _Compensator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Compensator) as _Compensator;
end;

class function CoLogRecord.Create: _LogRecord;
begin
  Result := CreateComObject(CLASS_LogRecord) as _LogRecord;
end;

class function CoLogRecord.CreateRemote(const MachineName: string): _LogRecord;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_LogRecord) as _LogRecord;
end;

class function CoAppDomainHelper.Create: _AppDomainHelper;
begin
  Result := CreateComObject(CLASS_AppDomainHelper) as _AppDomainHelper;
end;

class function CoAppDomainHelper.CreateRemote(const MachineName: string): _AppDomainHelper;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AppDomainHelper) as _AppDomainHelper;
end;

class function CoAssemblyLocator.Create: _AssemblyLocator;
begin
  Result := CreateComObject(CLASS_AssemblyLocator) as _AssemblyLocator;
end;

class function CoAssemblyLocator.CreateRemote(const MachineName: string): _AssemblyLocator;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_AssemblyLocator) as _AssemblyLocator;
end;

class function CoClientRemotingConfig.Create: _ClientRemotingConfig;
begin
  Result := CreateComObject(CLASS_ClientRemotingConfig) as _ClientRemotingConfig;
end;

class function CoClientRemotingConfig.CreateRemote(const MachineName: string): _ClientRemotingConfig;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClientRemotingConfig) as _ClientRemotingConfig;
end;

class function CoClrObjectFactory.Create: _ClrObjectFactory;
begin
  Result := CreateComObject(CLASS_ClrObjectFactory) as _ClrObjectFactory;
end;

class function CoClrObjectFactory.CreateRemote(const MachineName: string): _ClrObjectFactory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ClrObjectFactory) as _ClrObjectFactory;
end;

class function CoComManagedImportUtil.Create: _ComManagedImportUtil;
begin
  Result := CreateComObject(CLASS_ComManagedImportUtil) as _ComManagedImportUtil;
end;

class function CoComManagedImportUtil.CreateRemote(const MachineName: string): _ComManagedImportUtil;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComManagedImportUtil) as _ComManagedImportUtil;
end;

class function CoComSoapPublishError.Create: _ComSoapPublishError;
begin
  Result := CreateComObject(CLASS_ComSoapPublishError) as _ComSoapPublishError;
end;

class function CoComSoapPublishError.CreateRemote(const MachineName: string): _ComSoapPublishError;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComSoapPublishError) as _ComSoapPublishError;
end;

class function CoGenerateMetadata.Create: _GenerateMetadata;
begin
  Result := CreateComObject(CLASS_GenerateMetadata) as _GenerateMetadata;
end;

class function CoGenerateMetadata.CreateRemote(const MachineName: string): _GenerateMetadata;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_GenerateMetadata) as _GenerateMetadata;
end;

class function CoIISVirtualRoot.Create: _IISVirtualRoot;
begin
  Result := CreateComObject(CLASS_IISVirtualRoot) as _IISVirtualRoot;
end;

class function CoIISVirtualRoot.CreateRemote(const MachineName: string): _IISVirtualRoot;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_IISVirtualRoot) as _IISVirtualRoot;
end;

class function CoPublish.Create: _Publish;
begin
  Result := CreateComObject(CLASS_Publish) as _Publish;
end;

class function CoPublish.CreateRemote(const MachineName: string): _Publish;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_Publish) as _Publish;
end;

class function CoServerWebConfig.Create: _ServerWebConfig;
begin
  Result := CreateComObject(CLASS_ServerWebConfig) as _ServerWebConfig;
end;

class function CoServerWebConfig.CreateRemote(const MachineName: string): _ServerWebConfig;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ServerWebConfig) as _ServerWebConfig;
end;

class function CoSoapClientImport.Create: _SoapClientImport;
begin
  Result := CreateComObject(CLASS_SoapClientImport) as _SoapClientImport;
end;

class function CoSoapClientImport.CreateRemote(const MachineName: string): _SoapClientImport;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SoapClientImport) as _SoapClientImport;
end;

class function CoSoapServerTlb.Create: _SoapServerTlb;
begin
  Result := CreateComObject(CLASS_SoapServerTlb) as _SoapServerTlb;
end;

class function CoSoapServerTlb.CreateRemote(const MachineName: string): _SoapServerTlb;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SoapServerTlb) as _SoapServerTlb;
end;

class function CoSoapServerVRoot.Create: _SoapServerVRoot;
begin
  Result := CreateComObject(CLASS_SoapServerVRoot) as _SoapServerVRoot;
end;

class function CoSoapServerVRoot.CreateRemote(const MachineName: string): _SoapServerVRoot;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SoapServerVRoot) as _SoapServerVRoot;
end;

class function CoSoapUtility.Create: _SoapUtility;
begin
  Result := CreateComObject(CLASS_SoapUtility) as _SoapUtility;
end;

class function CoSoapUtility.CreateRemote(const MachineName: string): _SoapUtility;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_SoapUtility) as _SoapUtility;
end;

end.
