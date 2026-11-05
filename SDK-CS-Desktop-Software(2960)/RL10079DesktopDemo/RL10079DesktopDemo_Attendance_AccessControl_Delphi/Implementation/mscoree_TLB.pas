unit mscoree_TLB;

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
// Type Lib: C:\Windows\Microsoft.NET\Framework\v2.0.50727\mscoree.tlb (1)
// LIBID: {5477469E-83B1-11D2-8B49-00A0C9B7C9C4}
// LCID: 0
// Helpfile: 
// HelpString: Common Language Runtime Execution Engine 2.0 Library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// Parent TypeLibrary:
//   (0) v1.0 Riss_Devices, (E:\硬件厂家\真地\RL10079DesktopDemo_Attendance_AccessControl_Delphi\Bin\dll\Riss.Devices.tlb)
// Errors:
//   Hint: Symbol 'type' renamed to 'type_'
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

uses Windows, ActiveX, Classes, Graphics, OleServer, StdVCL, Variants;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  mscoreeMajorVersion = 2;
  mscoreeMinorVersion = 0;

  LIBID_mscoree: TGUID = '{5477469E-83B1-11D2-8B49-00A0C9B7C9C4}';

  IID_ICorSvcDependencies: TGUID = '{DDB34005-9BA3-4025-9554-F00A2DF5DBF5}';
  IID_ICorSvcWorker: TGUID = '{D1047BC2-67C0-400C-A94C-E64446A67FBE}';
  IID_ICorSvcSetPrivateAttributes: TGUID = '{B18E0B40-C089-4350-8328-066C668BCCC2}';
  IID_ICorSvcRepository: TGUID = '{D5346658-B5FD-4353-9647-07AD4783D5A0}';
  IID_ICorSvcLogger: TGUID = '{D189FF1A-E266-4F13-9637-4B9522279FFC}';
  IID_ICorSvcBindToWorker: TGUID = '{5C6FB596-4828-4ED5-B9DD-293DAD736FB5}';
  IID_ITypeName: TGUID = '{B81FF171-20F3-11D2-8DCC-00A0C9B00522}';
  IID_ITypeNameBuilder: TGUID = '{B81FF171-20F3-11D2-8DCC-00A0C9B00523}';
  IID_ITypeNameFactory: TGUID = '{B81FF171-20F3-11D2-8DCC-00A0C9B00521}';
  IID_IApartmentCallback: TGUID = '{178E5337-1528-4591-B1C9-1C6E484686D8}';
  IID_IManagedObject: TGUID = '{C3FCC19E-A970-11D2-8B5A-00A0C9B7C9C4}';
  IID_ICatalogServices: TGUID = '{04C6BE1E-1DB1-4058-AB7A-700CCCFBF254}';
  IID_IMarshal: TGUID = '{00000003-0000-0000-C000-000000000046}';
  CLASS_ComCallUnmarshal: TGUID = '{3F281000-E95A-11D2-886B-00C04F869F04}';
  IID_ISequentialStream: TGUID = '{0C733A30-2A1C-11CE-ADE5-00AA0044773D}';
  IID_IStream: TGUID = '{0000000C-0000-0000-C000-000000000046}';
  IID_ICorRuntimeHost: TGUID = '{CB2F6722-AB3A-11D2-9C40-00C04FA30A3E}';
  IID_IGCHost: TGUID = '{FAC34F6E-0DCD-47B5-8021-531BC5ECCA63}';
  IID_ICorConfiguration: TGUID = '{5C2B07A5-1E98-11D3-872F-00C04F79ED0D}';
  IID_IGCThreadControl: TGUID = '{F31D1788-C397-4725-87A5-6AF3472C2791}';
  IID_IGCHostControl: TGUID = '{5513D564-8374-4CB9-AED9-0083F4160A1D}';
  IID_IDebuggerThreadControl: TGUID = '{23D86786-0BB5-4774-8FB5-E3522ADD6246}';
  IID_IValidator: TGUID = '{63DF8730-DC81-4062-84A2-1FF943F59FAC}';
  IID_IDebuggerInfo: TGUID = '{BF24142D-A47D-4D24-A66D-8C2141944E44}';
  IID_IVEHandler: TGUID = '{856CA1B2-7DAB-11D3-ACEC-00C04F86C309}';
  CLASS_CorRuntimeHost: TGUID = '{CB2F6723-AB3A-11D2-9C40-00C04FA30A3E}';
  IID_ICLRRuntimeHost: TGUID = '{90F1A06C-7712-4762-86B5-7A5EBA6BDB02}';
  IID_ICLRValidator: TGUID = '{63DF8730-DC81-4062-84A2-1FF943F59FDD}';
  IID_IHostControl: TGUID = '{02CA073C-7079-4860-880A-C2F7A449C991}';
  IID_ICLRControl: TGUID = '{9065597E-D1A1-4FB2-B6BA-7E1FCE230F61}';
  CLASS_CLRRuntimeHost: TGUID = '{90F1A06E-7712-4762-86B5-7A5EBA6BDB02}';
  CLASS_TypeNameFactory: TGUID = '{B81FF171-20F3-11D2-8DCC-00A0C9B00525}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum __MIDL___MIDL_itf_mscoree_tlb_0169_0001
type
  __MIDL___MIDL_itf_mscoree_tlb_0169_0001 = TOleEnum;
const
  ScenarioDefault = $00000000;
  ScenarioAll = $00000001;
  ScenarioDebug = $00000002;
  ScenarioProfile = $00000008;
  ScenarioTuningDataCollection = $00000010;
  ScenarioLegacy = $00000020;

// Constants for enum __MIDL___MIDL_itf_mscoree_tlb_0169_0002
type
  __MIDL___MIDL_itf_mscoree_tlb_0169_0002 = TOleEnum;
const
  ScenarioEmitFixups = $00010000;
  ScenarioProfileInfo = $00020000;

// Constants for enum __MIDL___MIDL_itf_mscoree_tlb_0170_0001
type
  __MIDL___MIDL_itf_mscoree_tlb_0170_0001 = TOleEnum;
const
  DbgTypePdb = $00000001;

// Constants for enum __MIDL___MIDL_itf_mscoree_tlb_0171_0001
type
  __MIDL___MIDL_itf_mscoree_tlb_0171_0001 = TOleEnum;
const
  RepositoryDefault = $00000000;
  MoveFromRepository = $00000001;
  CopyToRepository = $00000002;

// Constants for enum CorSvcLogLevel
type
  CorSvcLogLevel = TOleEnum;
const
  LogLevel_Error = $00000000;
  LogLevel_Warning = $00000001;
  LogLevel_Success = $00000002;
  LogLevel_Info = $00000003;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICorSvcDependencies = interface;
  ICorSvcWorker = interface;
  ICorSvcSetPrivateAttributes = interface;
  ICorSvcRepository = interface;
  ICorSvcLogger = interface;
  ICorSvcBindToWorker = interface;
  ITypeName = interface;
  ITypeNameBuilder = interface;
  ITypeNameFactory = interface;
  IApartmentCallback = interface;
  IManagedObject = interface;
  ICatalogServices = interface;
  IMarshal = interface;
  ISequentialStream = interface;
  IStream = interface;
  ICorRuntimeHost = interface;
  IGCHost = interface;
  ICorConfiguration = interface;
  IGCThreadControl = interface;
  IGCHostControl = interface;
  IDebuggerThreadControl = interface;
  IValidator = interface;
  IDebuggerInfo = interface;
  IVEHandler = interface;
  ICLRRuntimeHost = interface;
  ICLRValidator = interface;
  IHostControl = interface;
  ICLRControl = interface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  ComCallUnmarshal = IMarshal;
  CorRuntimeHost = ICorRuntimeHost;
  CLRRuntimeHost = ICLRRuntimeHost;
  TypeNameFactory = ITypeNameFactory;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PUserType1 = ^TGUID; {*}
  PPUserType1 = ^IStream; {*}
  PByte1 = ^Byte; {*}
  PUINT1 = ^LongWord; {*}
  PPWideChar1 = ^PWideChar; {*}

  OptimizationScenario = __MIDL___MIDL_itf_mscoree_tlb_0169_0001; 
  PrivateOptimizationScenario = __MIDL___MIDL_itf_mscoree_tlb_0169_0002; 

  _SvcWorkerPriority = packed record
    dwPriorityClass: LongWord;
  end;

  NGenPrivateAttributesFlags = __MIDL___MIDL_itf_mscoree_tlb_0170_0001; 

  _NGenPrivateAttributes = packed record
    Flags: LongWord;
    ZapStats: LongWord;
    DbgDir: WideString;
  end;

  RepositoryFlags = __MIDL___MIDL_itf_mscoree_tlb_0171_0001; 
  ULONG_PTR = LongWord; 

  _LARGE_INTEGER = packed record
    QuadPart: Int64;
  end;

  _ULARGE_INTEGER = packed record
    QuadPart: Largeuint;
  end;

  _FILETIME = packed record
    dwLowDateTime: LongWord;
    dwHighDateTime: LongWord;
  end;

  tagSTATSTG = packed record
    pwcsName: PWideChar;
    type_: LongWord;
    cbSize: _ULARGE_INTEGER;
    mtime: _FILETIME;
    ctime: _FILETIME;
    atime: _FILETIME;
    grfMode: LongWord;
    grfLocksSupported: LongWord;
    clsid: TGUID;
    grfStateBits: LongWord;
    reserved: LongWord;
  end;

  _COR_GC_STATS = packed record
    Flags: LongWord;
    ExplicitGCCount: ULONG_PTR;
    GenCollectionsTaken: array[0..2] of ULONG_PTR;
    CommittedKBytes: ULONG_PTR;
    ReservedKBytes: ULONG_PTR;
    Gen0HeapSizeKBytes: ULONG_PTR;
    Gen1HeapSizeKBytes: ULONG_PTR;
    Gen2HeapSizeKBytes: ULONG_PTR;
    LargeObjectHeapSizeKBytes: ULONG_PTR;
    KBytesPromotedFromGen0: ULONG_PTR;
    KBytesPromotedFromGen1: ULONG_PTR;
  end;

  _COR_GC_THREAD_STATS = packed record
    PerThreadAllocation: Largeuint;
    Flags: LongWord;
  end;

  tag_VerError = packed record
    Flags: LongWord;
    opcode: LongWord;
    uOffset: LongWord;
    Token: LongWord;
    item1_flags: LongWord;
    item1_data: ^SYSINT;
    item2_flags: LongWord;
    item2_data: ^SYSINT;
  end;


// *********************************************************************//
// Interface: ICorSvcDependencies
// Flags:     (256) OleAutomation
// GUID:      {DDB34005-9BA3-4025-9554-F00A2DF5DBF5}
// *********************************************************************//
  ICorSvcDependencies = interface(IUnknown)
    ['{DDB34005-9BA3-4025-9554-F00A2DF5DBF5}']
    function GetAssemblyDependencies(const pAssemblyName: WideString; 
                                     out pDependencies: PSafeArray; 
                                     out assemblyNGenSetting: LongWord; 
                                     out pNativeImageIdentity: WideString; 
                                     out pAssemblyDisplayName: WideString; 
                                     out pDependencyLoadSetting: PSafeArray; 
                                     out pDependencyNGenSetting: PSafeArray): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorSvcWorker
// Flags:     (256) OleAutomation
// GUID:      {D1047BC2-67C0-400C-A94C-E64446A67FBE}
// *********************************************************************//
  ICorSvcWorker = interface(IUnknown)
    ['{D1047BC2-67C0-400C-A94C-E64446A67FBE}']
    function SetPriority(priority: _SvcWorkerPriority): HResult; stdcall;
    function OptimizeAssembly(const pAssemblyName: WideString; const pApplicationName: WideString; 
                              scenario: OptimizationScenario; loadAlwaysList: PSafeArray; 
                              loadSometimesList: PSafeArray; loadNeverList: PSafeArray; 
                              out pNativeImageIdentity: WideString): HResult; stdcall;
    function DeleteNativeImage(const pAssemblyName: WideString; const pNativeImage: WideString): HResult; stdcall;
    function DisplayNativeImages(const pAssemblyName: WideString): HResult; stdcall;
    function GetCorSvcDependencies(const pApplicationName: WideString; 
                                   scenario: OptimizationScenario; 
                                   out pCorSvcDependencies: ICorSvcDependencies): HResult; stdcall;
    function Stop: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorSvcSetPrivateAttributes
// Flags:     (256) OleAutomation
// GUID:      {B18E0B40-C089-4350-8328-066C668BCCC2}
// *********************************************************************//
  ICorSvcSetPrivateAttributes = interface(IUnknown)
    ['{B18E0B40-C089-4350-8328-066C668BCCC2}']
    function SetNGenPrivateAttributes(ngenPrivateAttributes: _NGenPrivateAttributes): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorSvcRepository
// Flags:     (256) OleAutomation
// GUID:      {D5346658-B5FD-4353-9647-07AD4783D5A0}
// *********************************************************************//
  ICorSvcRepository = interface(IUnknown)
    ['{D5346658-B5FD-4353-9647-07AD4783D5A0}']
    function SetRepository(const pRepositoryDir: WideString; RepositoryFlags: RepositoryFlags): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorSvcLogger
// Flags:     (256) OleAutomation
// GUID:      {D189FF1A-E266-4F13-9637-4B9522279FFC}
// *********************************************************************//
  ICorSvcLogger = interface(IUnknown)
    ['{D189FF1A-E266-4F13-9637-4B9522279FFC}']
    function Log(logLevel: CorSvcLogLevel; const message: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorSvcBindToWorker
// Flags:     (256) OleAutomation
// GUID:      {5C6FB596-4828-4ED5-B9DD-293DAD736FB5}
// *********************************************************************//
  ICorSvcBindToWorker = interface(IUnknown)
    ['{5C6FB596-4828-4ED5-B9DD-293DAD736FB5}']
    function BindToRuntimeWorker(const pRuntimePath: WideString; ParentProcessID: LongWord; 
                                 const pInterruptEventName: WideString; 
                                 const pCorSvcLogger: ICorSvcLogger; 
                                 out pCorSvcWorker: ICorSvcWorker): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeName
// Flags:     (256) OleAutomation
// GUID:      {B81FF171-20F3-11D2-8DCC-00A0C9B00522}
// *********************************************************************//
  ITypeName = interface(IUnknown)
    ['{B81FF171-20F3-11D2-8DCC-00A0C9B00522}']
    function GetNameCount(out pCount: LongWord): HResult; stdcall;
    function GetNames(count: LongWord; out rgbszNames: WideString; out pCount: LongWord): HResult; stdcall;
    function GetTypeArgumentCount(out pCount: LongWord): HResult; stdcall;
    function GetTypeArguments(count: LongWord; out rgpArguments: ITypeName; out pCount: LongWord): HResult; stdcall;
    function GetModifierLength(out pCount: LongWord): HResult; stdcall;
    function GetModifiers(count: LongWord; out rgModifiers: LongWord; out pCount: LongWord): HResult; stdcall;
    function GetAssemblyName(out rgbszAssemblyNames: WideString): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeNameBuilder
// Flags:     (256) OleAutomation
// GUID:      {B81FF171-20F3-11D2-8DCC-00A0C9B00523}
// *********************************************************************//
  ITypeNameBuilder = interface(IUnknown)
    ['{B81FF171-20F3-11D2-8DCC-00A0C9B00523}']
    function OpenGenericArguments: HResult; stdcall;
    function CloseGenericArguments: HResult; stdcall;
    function OpenGenericArgument: HResult; stdcall;
    function CloseGenericArgument: HResult; stdcall;
    function AddName(szName: PWideChar): HResult; stdcall;
    function AddPointer: HResult; stdcall;
    function AddByRef: HResult; stdcall;
    function AddSzArray: HResult; stdcall;
    function AddArray(rank: LongWord): HResult; stdcall;
    function AddAssemblySpec(szAssemblySpec: PWideChar): HResult; stdcall;
    function ToString(out pszStringRepresentation: WideString): HResult; stdcall;
    function Clear: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ITypeNameFactory
// Flags:     (256) OleAutomation
// GUID:      {B81FF171-20F3-11D2-8DCC-00A0C9B00521}
// *********************************************************************//
  ITypeNameFactory = interface(IUnknown)
    ['{B81FF171-20F3-11D2-8DCC-00A0C9B00521}']
    function ParseTypeName(szName: PWideChar; out pError: LongWord; out ppTypeName: ITypeName): HResult; stdcall;
    function GetTypeNameBuilder(out ppTypeBuilder: ITypeNameBuilder): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IApartmentCallback
// Flags:     (256) OleAutomation
// GUID:      {178E5337-1528-4591-B1C9-1C6E484686D8}
// *********************************************************************//
  IApartmentCallback = interface(IUnknown)
    ['{178E5337-1528-4591-B1C9-1C6E484686D8}']
    function DoCallback(pFunc: ULONG_PTR; pData: ULONG_PTR): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IManagedObject
// Flags:     (256) OleAutomation
// GUID:      {C3FCC19E-A970-11D2-8B5A-00A0C9B7C9C4}
// *********************************************************************//
  IManagedObject = interface(IUnknown)
    ['{C3FCC19E-A970-11D2-8B5A-00A0C9B7C9C4}']
    function GetSerializedBuffer(out pBSTR: WideString): HResult; stdcall;
    function GetObjectIdentity(out pBSTRGUID: WideString; out AppDomainID: SYSINT; out pCCW: SYSINT): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICatalogServices
// Flags:     (256) OleAutomation
// GUID:      {04C6BE1E-1DB1-4058-AB7A-700CCCFBF254}
// *********************************************************************//
  ICatalogServices = interface(IUnknown)
    ['{04C6BE1E-1DB1-4058-AB7A-700CCCFBF254}']
    function Autodone: HResult; stdcall;
    function NotAutodone: HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IMarshal
// Flags:     (0)
// GUID:      {00000003-0000-0000-C000-000000000046}
// *********************************************************************//
  IMarshal = interface(IUnknown)
    ['{00000003-0000-0000-C000-000000000046}']
    function GetUnmarshalClass(var riid: TGUID; var pv: Pointer; dwDestContext: LongWord; 
                               var pvDestContext: Pointer; mshlflags: LongWord; out pCid: TGUID): HResult; stdcall;
    function GetMarshalSizeMax(var riid: TGUID; var pv: Pointer; dwDestContext: LongWord; 
                               var pvDestContext: Pointer; mshlflags: LongWord; out pSize: LongWord): HResult; stdcall;
    function MarshalInterface(var pstm: IStream; var riid: TGUID; var pv: Pointer; 
                              dwDestContext: LongWord; var pvDestContext: Pointer; 
                              mshlflags: LongWord): HResult; stdcall;
    function UnmarshalInterface(const pstm: IStream; var riid: TGUID; out ppv: Pointer): HResult; stdcall;
    function ReleaseMarshalData(const pstm: IStream): HResult; stdcall;
    function DisconnectObject(dwReserved: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ISequentialStream
// Flags:     (0)
// GUID:      {0C733A30-2A1C-11CE-ADE5-00AA0044773D}
// *********************************************************************//
  ISequentialStream = interface(IUnknown)
    ['{0C733A30-2A1C-11CE-ADE5-00AA0044773D}']
    function Read(out pv: Pointer; cb: LongWord; out pcbRead: LongWord): HResult; stdcall;
    function RemoteRead(out pv: Byte; cb: LongWord; out pcbRead: LongWord): HResult; stdcall;
    function Write(var pv: Pointer; cb: LongWord; out pcbWritten: LongWord): HResult; stdcall;
    function RemoteWrite(var pv: Byte; cb: LongWord; out pcbWritten: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IStream
// Flags:     (0)
// GUID:      {0000000C-0000-0000-C000-000000000046}
// *********************************************************************//
  IStream = interface(ISequentialStream)
    ['{0000000C-0000-0000-C000-000000000046}']
    function Seek(dlibMove: _LARGE_INTEGER; dwOrigin: LongWord; out plibNewPosition: _ULARGE_INTEGER): HResult; stdcall;
    function RemoteSeek(dlibMove: _LARGE_INTEGER; dwOrigin: LongWord; 
                        out plibNewPosition: _ULARGE_INTEGER): HResult; stdcall;
    function SetSize(libNewSize: _ULARGE_INTEGER): HResult; stdcall;
    function CopyTo(const pstm: IStream; cb: _ULARGE_INTEGER; out pcbRead: _ULARGE_INTEGER; 
                    out pcbWritten: _ULARGE_INTEGER): HResult; stdcall;
    function RemoteCopyTo(const pstm: IStream; cb: _ULARGE_INTEGER; out pcbRead: _ULARGE_INTEGER; 
                          out pcbWritten: _ULARGE_INTEGER): HResult; stdcall;
    function Commit(grfCommitFlags: LongWord): HResult; stdcall;
    function Revert: HResult; stdcall;
    function LockRegion(libOffset: _ULARGE_INTEGER; cb: _ULARGE_INTEGER; dwLockType: LongWord): HResult; stdcall;
    function UnlockRegion(libOffset: _ULARGE_INTEGER; cb: _ULARGE_INTEGER; dwLockType: LongWord): HResult; stdcall;
    function Stat(out pstatstg: tagSTATSTG; grfStatFlag: LongWord): HResult; stdcall;
    function Clone(out ppstm: IStream): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorRuntimeHost
// Flags:     (0)
// GUID:      {CB2F6722-AB3A-11D2-9C40-00C04FA30A3E}
// *********************************************************************//
  ICorRuntimeHost = interface(IUnknown)
    ['{CB2F6722-AB3A-11D2-9C40-00C04FA30A3E}']
    function CreateLogicalThreadState: HResult; stdcall;
    function DeleteLogicalThreadState: HResult; stdcall;
    function SwitchInLogicalThreadState(var pFiberCookie: LongWord): HResult; stdcall;
    function SwitchOutLogicalThreadState(out pFiberCookie: PUINT1): HResult; stdcall;
    function LocksHeldByLogicalThread(out pCount: LongWord): HResult; stdcall;
    function MapFile(var hFile: Pointer; out hMapAddress: Pointer): HResult; stdcall;
    function GetConfiguration(out pConfiguration: ICorConfiguration): HResult; stdcall;
    function Start: HResult; stdcall;
    function Stop: HResult; stdcall;
    function CreateDomain(pwzFriendlyName: PWideChar; const pIdentityArray: IUnknown; 
                          out pAppDomain: IUnknown): HResult; stdcall;
    function GetDefaultDomain(out pAppDomain: IUnknown): HResult; stdcall;
    function EnumDomains(out hEnum: Pointer): HResult; stdcall;
    function NextDomain(var hEnum: Pointer; out pAppDomain: IUnknown): HResult; stdcall;
    function CloseEnum(var hEnum: Pointer): HResult; stdcall;
    function CreateDomainEx(pwzFriendlyName: PWideChar; const pSetup: IUnknown; 
                            const pEvidence: IUnknown; out pAppDomain: IUnknown): HResult; stdcall;
    function CreateDomainSetup(out pAppDomainSetup: IUnknown): HResult; stdcall;
    function CreateEvidence(out pEvidence: IUnknown): HResult; stdcall;
    function UnloadDomain(const pAppDomain: IUnknown): HResult; stdcall;
    function CurrentDomain(out pAppDomain: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IGCHost
// Flags:     (0)
// GUID:      {FAC34F6E-0DCD-47B5-8021-531BC5ECCA63}
// *********************************************************************//
  IGCHost = interface(IUnknown)
    ['{FAC34F6E-0DCD-47B5-8021-531BC5ECCA63}']
    function SetGCStartupLimits(SegmentSize: LongWord; MaxGen0Size: LongWord): HResult; stdcall;
    function Collect(Generation: Integer): HResult; stdcall;
    function GetStats(var pStats: _COR_GC_STATS): HResult; stdcall;
    function GetThreadStats(var pFiberCookie: LongWord; var pStats: _COR_GC_THREAD_STATS): HResult; stdcall;
    function SetVirtualMemLimit(sztMaxVirtualMemMB: ULONG_PTR): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICorConfiguration
// Flags:     (0)
// GUID:      {5C2B07A5-1E98-11D3-872F-00C04F79ED0D}
// *********************************************************************//
  ICorConfiguration = interface(IUnknown)
    ['{5C2B07A5-1E98-11D3-872F-00C04F79ED0D}']
    function SetGCThreadControl(const pGCThreadControl: IGCThreadControl): HResult; stdcall;
    function SetGCHostControl(const pGCHostControl: IGCHostControl): HResult; stdcall;
    function SetDebuggerThreadControl(const pDebuggerThreadControl: IDebuggerThreadControl): HResult; stdcall;
    function AddDebuggerSpecialThread(dwSpecialThreadId: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IGCThreadControl
// Flags:     (0)
// GUID:      {F31D1788-C397-4725-87A5-6AF3472C2791}
// *********************************************************************//
  IGCThreadControl = interface(IUnknown)
    ['{F31D1788-C397-4725-87A5-6AF3472C2791}']
    function ThreadIsBlockingForSuspension: HResult; stdcall;
    function SuspensionStarting: HResult; stdcall;
    function SuspensionEnding(Generation: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IGCHostControl
// Flags:     (0)
// GUID:      {5513D564-8374-4CB9-AED9-0083F4160A1D}
// *********************************************************************//
  IGCHostControl = interface(IUnknown)
    ['{5513D564-8374-4CB9-AED9-0083F4160A1D}']
    function RequestVirtualMemLimit(sztMaxVirtualMemMB: ULONG_PTR; 
                                    var psztNewMaxVirtualMemMB: ULONG_PTR): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDebuggerThreadControl
// Flags:     (0)
// GUID:      {23D86786-0BB5-4774-8FB5-E3522ADD6246}
// *********************************************************************//
  IDebuggerThreadControl = interface(IUnknown)
    ['{23D86786-0BB5-4774-8FB5-E3522ADD6246}']
    function ThreadIsBlockingForDebugger: HResult; stdcall;
    function ReleaseAllRuntimeThreads: HResult; stdcall;
    function StartBlockingForDebugger(dwUnused: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IValidator
// Flags:     (0)
// GUID:      {63DF8730-DC81-4062-84A2-1FF943F59FAC}
// *********************************************************************//
  IValidator = interface(IUnknown)
    ['{63DF8730-DC81-4062-84A2-1FF943F59FAC}']
    function Validate(const veh: IVEHandler; const pAppDomain: IUnknown; ulFlags: LongWord; 
                      ulMaxError: LongWord; Token: LongWord; fileName: PWideChar; var pe: Byte; 
                      ulSize: LongWord): HResult; stdcall;
    function FormatEventInfo(hVECode: HResult; Context: tag_VerError; msg: PWideChar; 
                             ulMaxLength: LongWord; psa: PSafeArray): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IDebuggerInfo
// Flags:     (0)
// GUID:      {BF24142D-A47D-4D24-A66D-8C2141944E44}
// *********************************************************************//
  IDebuggerInfo = interface(IUnknown)
    ['{BF24142D-A47D-4D24-A66D-8C2141944E44}']
    function IsDebuggerAttached(out pbAttached: Integer): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IVEHandler
// Flags:     (0)
// GUID:      {856CA1B2-7DAB-11D3-ACEC-00C04F86C309}
// *********************************************************************//
  IVEHandler = interface(IUnknown)
    ['{856CA1B2-7DAB-11D3-ACEC-00C04F86C309}']
    function VEHandler(VECode: HResult; Context: tag_VerError; psa: PSafeArray): HResult; stdcall;
    function SetReporterFtn(lFnPtr: Int64): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICLRRuntimeHost
// Flags:     (0)
// GUID:      {90F1A06C-7712-4762-86B5-7A5EBA6BDB02}
// *********************************************************************//
  ICLRRuntimeHost = interface(IUnknown)
    ['{90F1A06C-7712-4762-86B5-7A5EBA6BDB02}']
    function Start: HResult; stdcall;
    function Stop: HResult; stdcall;
    function SetHostControl(const pHostControl: IHostControl): HResult; stdcall;
    function GetCLRControl(out pCLRControl: ICLRControl): HResult; stdcall;
    function UnloadAppDomain(dwAppDomainID: LongWord; fWaitUntilDone: Integer): HResult; stdcall;
    function __MIDL_0010(var cookie: Pointer): HResult; stdcall;
    function ExecuteInAppDomain(dwAppDomainID: LongWord; const pCallback: ICLRRuntimeHost; 
                                var cookie: Pointer): HResult; stdcall;
    function GetCurrentAppDomainId(out pdwAppDomainId: LongWord): HResult; stdcall;
    function ExecuteApplication(pwzAppFullName: PWideChar; dwManifestPaths: LongWord; 
                                var ppwzManifestPaths: PWideChar; dwActivationData: LongWord; 
                                var ppwzActivationData: PWideChar; out pReturnValue: SYSINT): HResult; stdcall;
    function ExecuteInDefaultAppDomain(pwzAssemblyPath: PWideChar; pwzTypeName: PWideChar; 
                                       pwzMethodName: PWideChar; pwzArgument: PWideChar; 
                                       out pReturnValue: LongWord): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICLRValidator
// Flags:     (0)
// GUID:      {63DF8730-DC81-4062-84A2-1FF943F59FDD}
// *********************************************************************//
  ICLRValidator = interface(IUnknown)
    ['{63DF8730-DC81-4062-84A2-1FF943F59FDD}']
    function Validate(const veh: IVEHandler; ulAppDomainId: LongWord; ulFlags: LongWord; 
                      ulMaxError: LongWord; Token: LongWord; fileName: PWideChar; var pe: Byte; 
                      ulSize: LongWord): HResult; stdcall;
    function FormatEventInfo(hVECode: HResult; Context: tag_VerError; msg: PWideChar; 
                             ulMaxLength: LongWord; psa: PSafeArray): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: IHostControl
// Flags:     (0)
// GUID:      {02CA073C-7079-4860-880A-C2F7A449C991}
// *********************************************************************//
  IHostControl = interface(IUnknown)
    ['{02CA073C-7079-4860-880A-C2F7A449C991}']
    function GetHostManager(var riid: TGUID; out ppObject: Pointer): HResult; stdcall;
    function SetAppDomainManager(dwAppDomainID: LongWord; const pUnkAppDomainManager: IUnknown): HResult; stdcall;
  end;

// *********************************************************************//
// Interface: ICLRControl
// Flags:     (0)
// GUID:      {9065597E-D1A1-4FB2-B6BA-7E1FCE230F61}
// *********************************************************************//
  ICLRControl = interface(IUnknown)
    ['{9065597E-D1A1-4FB2-B6BA-7E1FCE230F61}']
    function GetCLRManager(var riid: TGUID; out ppObject: Pointer): HResult; stdcall;
    function SetAppDomainManagerType(pwzAppDomainManagerAssembly: PWideChar; 
                                     pwzAppDomainManagerType: PWideChar): HResult; stdcall;
  end;

// *********************************************************************//
// The Class CoComCallUnmarshal provides a Create and CreateRemote method to          
// create instances of the default interface IMarshal exposed by              
// the CoClass ComCallUnmarshal. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoComCallUnmarshal = class
    class function Create: IMarshal;
    class function CreateRemote(const MachineName: string): IMarshal;
  end;

// *********************************************************************//
// The Class CoCorRuntimeHost provides a Create and CreateRemote method to          
// create instances of the default interface ICorRuntimeHost exposed by              
// the CoClass CorRuntimeHost. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCorRuntimeHost = class
    class function Create: ICorRuntimeHost;
    class function CreateRemote(const MachineName: string): ICorRuntimeHost;
  end;

// *********************************************************************//
// The Class CoCLRRuntimeHost provides a Create and CreateRemote method to          
// create instances of the default interface ICLRRuntimeHost exposed by              
// the CoClass CLRRuntimeHost. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCLRRuntimeHost = class
    class function Create: ICLRRuntimeHost;
    class function CreateRemote(const MachineName: string): ICLRRuntimeHost;
  end;

// *********************************************************************//
// The Class CoTypeNameFactory provides a Create and CreateRemote method to          
// create instances of the default interface ITypeNameFactory exposed by              
// the CoClass TypeNameFactory. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoTypeNameFactory = class
    class function Create: ITypeNameFactory;
    class function CreateRemote(const MachineName: string): ITypeNameFactory;
  end;

implementation

uses ComObj;

class function CoComCallUnmarshal.Create: IMarshal;
begin
  Result := CreateComObject(CLASS_ComCallUnmarshal) as IMarshal;
end;

class function CoComCallUnmarshal.CreateRemote(const MachineName: string): IMarshal;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_ComCallUnmarshal) as IMarshal;
end;

class function CoCorRuntimeHost.Create: ICorRuntimeHost;
begin
  Result := CreateComObject(CLASS_CorRuntimeHost) as ICorRuntimeHost;
end;

class function CoCorRuntimeHost.CreateRemote(const MachineName: string): ICorRuntimeHost;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CorRuntimeHost) as ICorRuntimeHost;
end;

class function CoCLRRuntimeHost.Create: ICLRRuntimeHost;
begin
  Result := CreateComObject(CLASS_CLRRuntimeHost) as ICLRRuntimeHost;
end;

class function CoCLRRuntimeHost.CreateRemote(const MachineName: string): ICLRRuntimeHost;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CLRRuntimeHost) as ICLRRuntimeHost;
end;

class function CoTypeNameFactory.Create: ITypeNameFactory;
begin
  Result := CreateComObject(CLASS_TypeNameFactory) as ITypeNameFactory;
end;

class function CoTypeNameFactory.CreateRemote(const MachineName: string): ITypeNameFactory;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_TypeNameFactory) as ITypeNameFactory;
end;

end.
