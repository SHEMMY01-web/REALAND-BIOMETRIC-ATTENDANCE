unit CommonUnt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, COMOBJ, OleCtnrs, Activex,Riss_Devices_TLB;


const
  ROLE_GENERAL_USER: integer = 1;
  ROLE_ENROLL_USER: integer = 2;
  ROLE_VIEW_USER: integer = 4;
  ROLE_SUPER_USER: integer = 8;
  ROLE_CUSTOMER: integer = 16;   
  
  DeviceBusy: integer = 1;
  DeviceIdle: integer = 0;
  BeginYear: integer = 2000;
  MaxAction: integer = 4;
  MaxFingerprintLength: integer = 498;
  MaxFingerprintCount: integer = 10;
  BellGroupCount: integer = 24;
  DeviceAlarmClock: integer = 65;
  BellLength: integer = 8;
  MaxDeviceMessageCount: integer = 10;
  MaxDeviceMessageLength: integer = 84;
  DeviceMessage: integer = 64;
  MessageContentLength: integer = 30;
  PowerTimeCount: integer = 12;
  PowerTimeLength: integer = 4;
  DevicePowerTimer: integer = 66;
  DeviceTile: integer = 60;
  DeviceStandbyTitle: integer = 61;
  DeviceFirmwareVersion: integer = 63;
  DeviceModel: integer = 62;    
    
  function CreateSafeArray(ABound: integer): PSafeArray;
  procedure SetArrayValue(APSafeArray: PSafeArray; AIndex: integer; AValue: Byte);
  procedure GetArrayValue(APSafeArray: PSafeArray; AIndex: integer; var AValue: Byte);
  function GetGLogVerify(AVerify: integer): string;
  function GetPrivilege(AIndex: Integer): integer;
  function GetEnrollType(AIndex: Integer): integer;
  procedure ArrayCopy(ASrcArray: PSafeArray; ASrcIndex: integer; ADesArray: PSafeArray; ADesIndex: integer; ALength: Integer);
  function GetSLogType(AType: integer): string;
  function ConvertFpToStr(APSafeArray: PSafeArray): string;
  function PrivilegeToStr(APrivilege: integer): string;

implementation

{ TDeviceOper }

function CreateSafeArray(ABound: integer): PSafeArray;
var
  psa: PSafeArray;
  i: integer;  
  ibyte: Byte;
begin
  psa := SafeArrayCreateVector(VT_UI1, 0, ABound);
  for i := 0 to ABound - 1 do
  begin
    ibyte := 0;
    SafeArrayPutElement(psa, i, ibyte);
  end;
  Result := psa;
end;

procedure SetArrayValue(APSafeArray: PSafeArray; AIndex: integer; AValue: Byte);
begin
  SafeArrayPutElement(APSafeArray, AIndex, AValue);
end;

procedure GetArrayValue(APSafeArray: PSafeArray; AIndex: integer; var AValue: Byte);
begin
  SafeArrayGetElement(APSafeArray, AIndex, AValue);
end;

function GetGLogVerify(AVerify: integer): string;
begin
  case AVerify of
    0: Result := 'Check in';
    1: Result := 'Clock in';
    2: Result := 'Clock out';
    3: Result := 'Customer in';
    4: Result := 'Customer out';
    5: Result := 'Out';
    6: Result := 'In';
    7: Result := 'User defined 1';
    8: Result := 'User defined 2';
    12: Result := 'Button open';
    13: Result := 'Software open';
    14: Result := 'Keep open';
    15: Result := 'Keep close';
    16: Result := 'Auto mode';
    17: Result := 'Open in';
    18: Result := 'Open out';
    19: Result := 'Overtime open alarm';
    20: Result := 'Forced open alarm';
    21: Result := 'Antihijack alarm';
    22: Result := 'Input action 1';
    23: Result := 'Input action 2';
    24: Result := 'Output action 1';
    25: Result := 'Output action 2';
    26: Result := 'Invalid time';
    27: Result := 'Invalid date';
    31: Result := 'Illegal operation';
  else Result := '';
  end;
end;

function GetPrivilege(AIndex: Integer): integer;
begin
  case AIndex of
    0: Result := ROLE_GENERAL_USER;
    1: Result := ROLE_ENROLL_USER;
    2: Result := ROLE_VIEW_USER;
    3: Result := ROLE_SUPER_USER;
    4: Result := ROLE_CUSTOMER;
  else Result := ROLE_GENERAL_USER;
  end;    
end;

function GetEnrollType(AIndex: Integer): integer;
begin
  case AIndex of
    0..12: Result := AIndex;
    13: Result := EnrollType_All;
  else Result := 0;
  end;
end;

procedure ArrayCopy(ASrcArray: PSafeArray; ASrcIndex: integer; ADesArray: PSafeArray; ADesIndex: integer; ALength: Integer);
var
  i: integer;
  iByte: Byte;
begin
  for i := 0 to ALength - 1 do
  begin
    GetArrayValue(ASrcArray,ASrcIndex + i,iByte);
    SetArrayValue(ADesArray,ADesIndex + i,iByte);
  end;
end;

function GetSLogType(AType: integer): string;
begin
  case AType of
    1: Result := 'Registered user';
    2: Result := 'Register super administrator';
    3: Result := 'Register registrar';
    4: Result := 'Register query member';
    5: Result := 'Delete fingerprint';
    6: Result := 'Remove the password';
    7: Result := 'Delete the card number';
    8: Result := 'Remove access to records';
    9: Result := 'Remove records';
    10: Result := 'Set system information';
    11: Result := 'Setup time';
    12: Result := 'Set the record information';
    13: Result := 'Set the communications and information';
    14: Result := 'Set the access control information';
    15: Result := 'Set the user type';
    16: Result := 'Set the attendance time';
  else Result := '';
  end;
end;

function ConvertFpToStr(APSafeArray: PSafeArray): string;
var
  i: integer;
  iByte: Byte;
begin
  Result := '';
  for i := 0 to APSafeArray.rgsabound[0].cElements - 1 do
  begin
    GetArrayValue(APSafeArray,i,iByte);
    Result := Result + IntToHex(iByte,2) + ' ';
  end;
end;

function PrivilegeToStr(APrivilege: integer): string;
begin
  case APrivilege of
    1: Result := 'General user';
    2: Result := 'Super user';
    4: Result := 'Enroll user';
    8: Result := 'View user';
    16: Result := 'Customer';
  else Result := '';
  end;
end;

end.
