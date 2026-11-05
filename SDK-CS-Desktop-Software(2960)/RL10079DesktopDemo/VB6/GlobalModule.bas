Attribute VB_Name = "GlobalModule"
Option Explicit
#If Win64 Then
    Public Declare PtrSafe Function SHBrowseForFolder _
        Lib "shell32.dll" Alias "SHBrowseForFolderA" _
        (lpBrowseInfo As BROWSEINFO) As Long
        
    Public Declare PtrSafe Function SHGetPathFromIDList _
        Lib "shell32.dll" _
        (ByVal pidl As Long, _
        pszPath As String) As Long
#Else
    Public Declare Function SHBrowseForFolder _
        Lib "shell32.dll" Alias "SHBrowseForFolderA" _
        (lpBrowseInfo As BROWSEINFO) As Long
        
    Public Declare Function SHGetPathFromIDList _
        Lib "shell32.dll" _
        (ByVal pidl As Long, _
        pszPath As String) As Long
#End If

Public Const DeviceBusy As Long = 1
Public Const DeviceIdle As Long = 0
Public Const BeginYear As Long = 2000
Public Const MaxAction As Long = 4
Public Const MaxFingerprintLength As Long = 498
Public Const MaxFingerprintCount As Long = 10
Public Const BellGroupCount As Long = 24
Public Const DeviceAlarmClock As Long = 65
Public Const BellLength As Long = 8
Public Const MaxDeviceMessageCount As Long = 10
Public Const MaxDeviceMessageLength As Long = 84
Public Const DeviceMessage As Long = 64
Public Const MessageContentLength As Long = 30
Public Const PowerTimeCount As Long = 12
Public Const PowerTimeLength As Long = 4
Public Const DevicePowerTimer As Long = 66
Public Const DeviceTile As Long = 60
Public Const DeviceStandbyTitle As Long = 61
Public Const DeviceFirmwareVersion As Long = 63
Public Const DeviceModel As Long = 62
Public Const DeviceSerialNo As Long = 67

Public Type BROWSEINFO
    hOwner As Long
    pidlRoot As Long
    pszDisplayName As String
    lpszTitle As String
    ulFlage As Long
    lpfn As Long
    lparam As Long
    iImage As Long
End Type

Public Enum UserPrivilege
    ROLE_GENERAL_USER = 1
    ROLE_ENROLL_USER = 2
    ROLE_VIEW_USER = 4
    ROLE_SUPER_USER = 8
    ROLE_CUSTOMER = 16
End Enum

Public Function GetStatus(ByVal mode As Long) As String
    Dim message As String
    
    Select Case mode
        Case 0
            message = "Check in"
        Case 1
            message = "Clock in"
        Case 2
            message = "Clock out"
        Case 3
            message = "Customer in"
        Case 4
            message = "Customer out"
        Case 5
            message = "Out"
        Case 6
            message = "In"
        Case 7
            message = "User defined 1"
        Case 8
            message = "User defined 2"
        Case 12
            message = "Button open"
        Case 13
            message = "Software open"
        Case 14
            message = "Keep open"
        Case 15
            message = "Keep close"
        Case 16
            message = "Auto mode"
        Case 17
            message = "Open in"
        Case 18
            message = "Open out"
        Case 19
            message = "Overtime open alarm"
        Case 20
            message = "Forced open alarm"
        Case 21
            message = "Antihijack alarm"
        Case 22
            message = "Input action 1"
        Case 23
            message = "Input action 2"
        Case 24
            message = "Output action 1"
        Case 25
            message = "Output action 2"
        Case 26
            message = "Invalid time"
        Case 27
            message = "Invalid date"
        Case 31
            message = "Illegal operation"
    End Select
    
    GetStatus = message
End Function

Public Function ArrayCopy(ByRef src() As Byte, ByVal srcIndex As Long, ByRef dst() As Byte, ByVal dstIndex As Long, _
ByVal length As Long)
    Dim i As Long, idx As Long, tmpLen As Long
    idx = 0
    tmpLen = srcIndex + length - 1
    Dim tmp() As Byte
    
    For i = srcIndex To tmpLen
        ReDim Preserve tmp(idx) As Byte
        tmp(idx) = src(i)
        idx = idx + 1
    Next
    
    For i = 0 To UBound(tmp)
        dst(i + dstIndex) = tmp(i)
    Next
End Function


