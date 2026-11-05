VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form EnrollForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Enroll Form"
   ClientHeight    =   9510
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   14310
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   9510
   ScaleWidth      =   14310
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton remoteEnrollCommand 
      Caption         =   "Remote Enroll FP"
      Height          =   375
      Left            =   10920
      TabIndex        =   43
      Top             =   1560
      Width           =   3255
   End
   Begin VB.CommandButton btn_OpenFPData 
      Caption         =   "Open FP Data"
      Height          =   375
      Left            =   2400
      TabIndex        =   42
      Top             =   9000
      Width           =   1575
   End
   Begin VB.CommandButton btn_SaveFPData 
      Caption         =   "Save FP Data"
      Height          =   375
      Left            =   720
      TabIndex        =   41
      Top             =   9000
      Width           =   1575
   End
   Begin MSComDlg.CommonDialog btn_Dialog 
      Left            =   4080
      Top             =   9000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btn_OpenOneEnroll 
      Caption         =   "Open One Enroll"
      Height          =   375
      Left            =   12600
      TabIndex        =   40
      Top             =   9000
      Width           =   1575
   End
   Begin VB.CommandButton btn_SaveOneEnroll 
      Caption         =   "Save One Enroll"
      Height          =   375
      Left            =   10920
      TabIndex        =   39
      Top             =   9000
      Width           =   1575
   End
   Begin VB.CommandButton btn_OpenAllEnroll 
      Caption         =   "Open All Enroll"
      Height          =   375
      Left            =   9240
      TabIndex        =   38
      Top             =   9000
      Width           =   1575
   End
   Begin VB.CommandButton btn_SaveAllEnroll 
      Caption         =   "Save All Enroll"
      Height          =   375
      Left            =   7560
      TabIndex        =   37
      Top             =   9000
      Width           =   1575
   End
   Begin VB.CommandButton btn_SelectAll 
      Caption         =   "Select All"
      Height          =   375
      Left            =   5880
      TabIndex        =   36
      Top             =   9000
      Width           =   1575
   End
   Begin MSComctlLib.ListView lvw_UserList 
      Height          =   6855
      Left            =   4200
      TabIndex        =   35
      Top             =   2040
      Width           =   9975
      _ExtentX        =   17595
      _ExtentY        =   12091
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      Checkboxes      =   -1  'True
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin VB.CommandButton btn_SetAllUserEnroll 
      Caption         =   "Set All User Enroll Data"
      Height          =   375
      Left            =   7560
      TabIndex        =   34
      Top             =   1560
      Width           =   3255
   End
   Begin VB.CommandButton btn_GetAllUserEnroll 
      Caption         =   "Get All User Enroll Data"
      Height          =   375
      Left            =   4200
      TabIndex        =   33
      Top             =   1560
      Width           =   3255
   End
   Begin VB.CommandButton btn_Enroll 
      Caption         =   "Get User Enroll Data"
      Height          =   375
      Left            =   10920
      TabIndex        =   32
      Top             =   1080
      Width           =   3255
   End
   Begin VB.CommandButton btn_ClearAllUser 
      Caption         =   "Clear All User"
      Height          =   375
      Left            =   9240
      TabIndex        =   31
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btn_ClearUser 
      Caption         =   "Clear User"
      Height          =   375
      Left            =   7560
      TabIndex        =   30
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btn_SetPrivilege 
      Caption         =   "Set Privilege"
      Height          =   375
      Left            =   5880
      TabIndex        =   29
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btn_SetUserExtInfo 
      Caption         =   "Set UserExtInfo"
      Height          =   375
      Left            =   4200
      TabIndex        =   28
      Top             =   1080
      Width           =   1575
   End
   Begin VB.CommandButton btn_GetUserExtInfo 
      Caption         =   "Get UserExtInfo"
      Height          =   375
      Left            =   12600
      TabIndex        =   27
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_SetUsername 
      Caption         =   "Set Username"
      Height          =   375
      Left            =   10920
      TabIndex        =   26
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_GetUsername 
      Caption         =   "Get Username"
      Height          =   375
      Left            =   9240
      TabIndex        =   25
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_ClearCard 
      Caption         =   "Clear Card"
      Height          =   375
      Left            =   7560
      TabIndex        =   24
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_Write 
      Caption         =   "Write Card"
      Height          =   375
      Left            =   5880
      TabIndex        =   23
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_ReadCard 
      Caption         =   "Read Card"
      Height          =   375
      Left            =   4200
      TabIndex        =   22
      Top             =   600
      Width           =   1575
   End
   Begin VB.CommandButton btn_ClearPWD 
      Caption         =   "Clear PWD"
      Height          =   375
      Left            =   12600
      TabIndex        =   21
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btn_WritePWD 
      Caption         =   "Write PWD"
      Height          =   375
      Left            =   10920
      TabIndex        =   20
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btn_ReadPwd 
      Caption         =   "Read PWD"
      Height          =   375
      Left            =   9240
      TabIndex        =   19
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btn_ClearFPData 
      Caption         =   "Clear FP Data"
      Height          =   375
      Left            =   7560
      TabIndex        =   18
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btn_WriteFPData 
      Caption         =   "Write FP Data"
      Height          =   375
      Left            =   5880
      TabIndex        =   17
      Top             =   120
      Width           =   1575
   End
   Begin VB.CommandButton btn_ReadFPData 
      Caption         =   "Read FP Data"
      Height          =   375
      Left            =   4200
      TabIndex        =   16
      Top             =   120
      Width           =   1575
   End
   Begin VB.TextBox txt_Fingerprint 
      Height          =   5295
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   15
      Top             =   3600
      Width           =   3855
   End
   Begin VB.TextBox txt_UserExtInfo 
      Height          =   375
      Left            =   1320
      MaxLength       =   18
      TabIndex        =   13
      Top             =   2760
      Width           =   2655
   End
   Begin VB.TextBox txt_Username 
      Height          =   375
      Left            =   1320
      MaxLength       =   12
      TabIndex        =   11
      Top             =   2280
      Width           =   2655
   End
   Begin VB.TextBox txt_CardID 
      Height          =   375
      Left            =   1320
      MaxLength       =   10
      TabIndex        =   9
      Top             =   1800
      Width           =   2655
   End
   Begin VB.TextBox txt_Password 
      Height          =   375
      Left            =   1320
      MaxLength       =   8
      TabIndex        =   7
      Top             =   1320
      Width           =   2655
   End
   Begin VB.ComboBox cbo_Privilege 
      Height          =   300
      ItemData        =   "EnrollForm.frx":0000
      Left            =   1320
      List            =   "EnrollForm.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   960
      Width           =   2655
   End
   Begin VB.ComboBox cbo_FingerSN 
      Height          =   300
      ItemData        =   "EnrollForm.frx":004B
      Left            =   1320
      List            =   "EnrollForm.frx":006D
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   600
      Width           =   2655
   End
   Begin VB.TextBox txt_UserID 
      Height          =   375
      Left            =   1320
      MaxLength       =   18
      TabIndex        =   1
      Text            =   "1"
      Top             =   120
      Width           =   2655
   End
   Begin VB.Label Label8 
      Caption         =   "Fingerprint Data:"
      Height          =   255
      Left            =   120
      TabIndex        =   14
      Top             =   3240
      Width           =   3855
   End
   Begin VB.Label Label7 
      Caption         =   "UserExtInfo:"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   2760
      Width           =   1215
   End
   Begin VB.Label Label6 
      Caption         =   "Username:"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   2280
      Width           =   975
   End
   Begin VB.Label Label5 
      Caption         =   "Card ID:"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   1800
      Width           =   975
   End
   Begin VB.Label Label4 
      Caption         =   "Password:"
      Height          =   255
      Left            =   120
      TabIndex        =   6
      Top             =   1320
      Width           =   975
   End
   Begin VB.Label Label3 
      Caption         =   "Privilege:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   960
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Finger SN:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "User ID:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "EnrollForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private d As Device
Private deviceConn As Zd2911DeviceConnection
Private fpBytes() As Byte
Private checkItemsCount As Long
Private gUsers() As UserExt
Private deviceTool As Zd2911Tools

Private Function GetPrivilege() As Long
    Dim p As Long

    Select Case cbo_Privilege.ListIndex
        Case 0
            p = CLng(UserPrivilege.ROLE_GENERAL_USER)
        Case 1
            p = CLng(UserPrivilege.ROLE_ENROLL_USER)
        Case 2
            p = CLng(UserPrivilege.ROLE_VIEW_USER)
        Case 3
            p = CLng(UserPrivilege.ROLE_SUPER_USER)
        Case 4
            p = CLng(UserPrivilege.ROLE_CUSTOMER)
    End Select
    GetPrivilege = p
End Function

Private Function GetPrivilegeName(ByVal p As Long) As String
    Dim n As String
    
    Select Case p
        Case CLng(UserPrivilege.ROLE_GENERAL_USER)
            n = "General user"
        Case CLng(UserPrivilege.ROLE_SUPER_USER)
            n = "Super user"
        Case CLng(UserPrivilege.ROLE_ENROLL_USER)
            n = "Enroll user"
        Case CLng(UserPrivilege.ROLE_VIEW_USER)
            n = "View user"
        Case CLng(UserPrivilege.ROLE_CUSTOMER)
            n = "Customer"
    End Select
    GetPrivilegeName = n
End Function

Private Function ConvertByteToHex(ByVal bs As Variant) As String
    Dim s As String
    Dim i As Long
    s = ""
    For i = 0 To UBound(bs)
        s = s + CStr(Hex(bs(i))) + " "
    Next
    
    ConvertByteToHex = Left(s, Len(s) - 1)
End Function

Private Function SetFingerprintData(ByVal idx As Long, ByRef fp() As Byte)
    Dim i As Long
    For i = 0 To UBound(fpBytes)
        fp(i + idx) = fpBytes(i)
    Next
End Function

Private Function ShowDir(ByVal hwnd As Long, ByRef dirPath As String) As Long
    Dim bi As BROWSEINFO
    Dim tmpID As Long
    Dim tmpStr As String
    
    tmpStr = String(255, Chr(0))
    With bi
        .hOwner = hwnd
        .pidlRoot = 0
        .lpszTitle = "Select Folder"
        .ulFlage = &H1
    End With
    
    tmpID = SHBrowseForFolder(bi)
    
    If SHGetPathFromIDList(ByVal tmpID, ByVal tmpStr) Then
        dirPath = Left(tmpStr, InStr(tmpStr, Chr(0)) - 1)
        ShowDir = 1
    Else
        ShowDir = 0
    End If
End Function


Private Sub btn_ClearAllUser_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraData = deviceTool.GetBytes("0")
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, d, extraData)
        If result Then
            MsgBox "Clear All User Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Clear All User Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Clear All User Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_ClearCard_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ClearCard)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    user.SetEnrolls enroll
    result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        MsgBox "Clear Card Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Clear Card Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ClearFPData_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_FingerSN.ListIndex Then
        MsgBox "Please select finger SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ClearFingerprint)), NumberType_Int32Bit)
        Set user = New UserExt
        Set enroll(0) = New EnrollExt
        user.DIN = Trim(txt_UserID.Text)
        enroll(0).DIN = user.DIN
        enroll(0).EnrollType = cbo_FingerSN.ListIndex
        user.SetEnrolls enroll
        result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
        If result Then
            MsgBox "Clear FP Data Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Clear FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Clear FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_ClearPWD_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ClearPassword)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    user.SetEnrolls enroll
    result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        MsgBox "Clear Password Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Clear Password Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ClearUser_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraData = deviceTool.GetBytes(Trim(txt_UserID.Text))
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enrolls, extraProperty, d, extraData)
    If result Then
        MsgBox "Clear User Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Clear User Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_Enroll_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte, userIDBytes() As Byte
    Dim deviceStatus() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        userIDBytes = deviceTool.GetBytes(Trim(txt_UserID.Text))
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Enrolls, userIDBytes, d, extraData)
        If result Then
            Dim enrollCol As Variant
            Dim enroll As EnrollExt
            Set user = deviceTool.GetUserExtWithoutEnroll(extraData)
            enrollCol = user.Enrolls
            Set enroll = enrollCol(0)
            result = deviceConn.GetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData)
            If result Then
                If "Deselect All" = btn_SelectAll.Caption Then
                    btn_SelectAll.Caption = "Select All"
                End If
                
                Dim i As Long
                Dim li As ListItem
                ReDim Preserve gUsers(1) As UserExt
                
                Set gUsers(1) = user
                lvw_UserList.ListItems.Clear
                Set li = lvw_UserList.ListItems.Add(1, , CStr(1))
                li.SubItems(1) = user.DIN
                li.SubItems(2) = user.UserName
                For i = 0 To MaxFingerprintCount - 1
                    If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), i) Then
                        li.SubItems(3 + i) = "Y"
                    Else
                        li.SubItems(3 + i) = "N"
                    End If
                Next
                
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 10) Then
                    li.SubItems(13) = "Y"
                Else
                    li.SubItems(13) = "N"
                End If
                
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 11) Then
                    li.SubItems(14) = "Y"
                Else
                    li.SubItems(14) = "N"
                End If
                
                li.SubItems(15) = GetPrivilegeName(user.Privilege)
            Else
                MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
            End If
        Else
            MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_GetAllUserEnroll_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte, userIDBytes() As Byte
    Dim deviceStatus() As Byte
    Dim userList() As UserExt
    Dim u As Variant
    Dim result As Boolean
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        userIDBytes = deviceTool.GetBytes("0")
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Enrolls, userIDBytes, d, extraData)
        If result Then
            Dim sn As Long
            sn = 1
            userList = deviceTool.GetAllUserExtWithoutEnroll(extraData)
            lvw_UserList.ListItems.Clear
            For Each u In userList
                Dim enrollCol As Variant
                Dim enroll As EnrollExt
                Dim user As UserExt
                ReDim Preserve gUsers(sn) As UserExt
                
                Set user = u
                Set gUsers(sn) = u
                enrollCol = user.Enrolls
                Set enroll = enrollCol(0)
                result = deviceConn.GetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData)
                If result Then
                    If "Deselect All" = btn_SelectAll.Caption Then
                        btn_SelectAll.Caption = "Select All"
                    End If
                
                    Dim i As Long
                    Dim li As ListItem
                    
                    Set li = lvw_UserList.ListItems.Add(sn, , CStr(sn))
                    li.SubItems(1) = user.DIN
                    li.SubItems(2) = user.UserName
                    For i = 0 To MaxFingerprintCount - 1
                        If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), i) Then
                            li.SubItems(3 + i) = "Y"
                        Else
                            li.SubItems(3 + i) = "N"
                        End If
                    Next
                    
                    If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 10) Then
                        li.SubItems(13) = "Y"
                    Else
                        li.SubItems(13) = "N"
                    End If
                    
                    If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 11) Then
                        li.SubItems(14) = "Y"
                    Else
                        li.SubItems(14) = "N"
                    End If
                    
                    li.SubItems(15) = GetPrivilegeName(user.Privilege)
                Else
                    MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
                    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
                    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
                    Exit Sub
                End If
                
                sn = sn + 1
            Next
        Else
            MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_GetUserExtInfo_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    result = deviceConn.GetPropertyExt(UserProperty_UserExtInfo, extraProperty, user, extraData)
    If result Then
        txt_Username.Text = user.Comment
    Else
        MsgBox "Get UserExtInfo Fial", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbExclamation, "Error"
End Sub

Private Sub btn_GetUsername_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    result = deviceConn.GetPropertyExt(UserProperty_UserName, extraProperty, user, extraData)
    If result Then
        txt_Username.Text = user.UserName
    Else
        MsgBox "Get Username Fial", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_OpenAllEnroll_Click()
    On Error GoTo ErrorHandle
    btn_Dialog.Filter = "AllEnrollData File(AllEnrollData.fps)|AllEnrollData.fps"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Open All Enroll Data File"
    btn_Dialog.Flags = cdlOFNHideReadOnly
    btn_Dialog.ShowOpen
    If "" <> Trim(btn_Dialog.fileName) Then
        Dim users() As UserExt
        Dim ef As IZd2911EnrollFile
        Set ef = New Zd2911EnrollFile
        
        If ef.LoadAllUserExtEnrollDataFromDB(btn_Dialog.fileName, users) Then
            Dim sn As Long
            Dim u As Variant
            sn = 1
            lvw_UserList.ListItems.Clear
            If "Deselect All" = btn_SelectAll.Caption Then
                btn_SelectAll.Caption = "Select All"
            End If
            
            For Each u In users
                Dim i As Long
                Dim li As ListItem
                Dim enrollCol As Variant
                Dim enroll As EnrollExt
                ReDim Preserve gUsers(sn) As UserExt
                Dim tempFp(MaxFingerprintLength - 1) As Byte 'xlr, 20150422

                Set gUsers(sn) = u
                enrollCol = u.Enrolls
                Set enroll = enrollCol(0)
                Set li = lvw_UserList.ListItems.Add(sn, , CStr(sn))
                li.SubItems(1) = u.DIN
                li.SubItems(2) = u.UserName
                For i = 0 To MaxFingerprintCount - 1
                    If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), i) Then
                        li.SubItems(3 + i) = "Y"
                        'Use BitCheck to judge if exist fp enroll (0-9).
                        'In 'enroll.Fingerprint' store fp data (0-9, if has. each fp length is 'MaxFingerprintLength=498')
                        'copy the fix one fp data to 'tempFp'
                        ArrayCopy enroll.Fingerprint, i * MaxFingerprintLength, tempFp, 0, MaxFingerprintLength
                        'And now your can convert tempFp to string for further action. like:
                        txt_Fingerprint.Text = deviceTool.ConvertFingerprintToString(tempFp)
                        'if you want to convert fp string back to bytes array, you can use 'deviceTool.ConvertStringFingerprintToBytes' see 'btn_ReadFPData_Click' and 'btn_WriteFPData_Click'
                    Else
                        li.SubItems(3 + i) = "N"
                    End If
                Next
                    
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 10) Then
                    li.SubItems(13) = "Y"
                Else
                    li.SubItems(13) = "N"
                End If
                    
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 11) Then
                    li.SubItems(14) = "Y"
                Else
                    li.SubItems(14) = "N"
                End If
                    
                li.SubItems(15) = GetPrivilegeName(u.Privilege)
                sn = sn + 1
            Next
        Else
            MsgBox "Open File Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_OpenFPData_Click()
    On Error GoTo ErrorHandle
    btn_Dialog.Filter = "Fingerprint File(*.fpt)|*.fpt"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Open Fingerprint File"
    btn_Dialog.Flags = cdlOFNHideReadOnly
    btn_Dialog.ShowOpen
    If "" <> Trim(btn_Dialog.fileName) Then
        ReDim fpBytes(MaxFingerprintLength - 1) As Byte
        Open btn_Dialog.fileName For Binary As #1
        Get #1, , fpBytes
        Close #1
        txt_Fingerprint.Text = ConvertByteToHex(fpBytes)
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_OpenOneEnroll_Click()
    On Error GoTo ErrorHandle
    Dim fileNames() As String
    Dim fn As Variant
    btn_Dialog.Filter = "OneEnrollData File(OD_*.DB)|OD_*.DB"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Open All Enroll Data File"
    btn_Dialog.Flags = cdlOFNHideReadOnly + cdlOFNAllowMultiselect
    btn_Dialog.ShowOpen
    If "" <> btn_Dialog.fileName Then
        Dim sn As Long, i As Long, j As Long, k As Long
        Dim ef As IZd2911EnrollFile
        Set ef = New Zd2911EnrollFile
        
        If "Deselect All" = btn_SelectAll.Caption Then
            btn_SelectAll.Caption = "Select All"
        End If
        lvw_UserList.ListItems.Clear
        
        sn = 1
        k = 1
        fileNames = Split(btn_Dialog.fileName, " ")
        If LBound(fileNames) = UBound(fileNames) Then
            k = 0
        End If
        
        For j = k To UBound(fileNames)
            Dim u As UserExt
            Set u = New UserExt
            
            If ef.LoadUserExtEnrollDataFromDB(fileNames(j), u) Then
                Dim li As ListItem
                Dim enrollCol As Variant
                Dim enroll As EnrollExt
                ReDim Preserve gUsers(sn) As UserExt
                Set gUsers(sn) = u
                enrollCol = u.Enrolls
                Set enroll = enrollCol(0)
                Set li = lvw_UserList.ListItems.Add(sn, , CStr(sn))
                li.SubItems(1) = u.DIN
                li.SubItems(2) = u.UserName
                For i = 0 To MaxFingerprintCount - 1
                    If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), i) Then
                        li.SubItems(3 + i) = "Y"
                    Else
                        li.SubItems(3 + i) = "N"
                    End If
                Next
                    
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 10) Then
                    li.SubItems(13) = "Y"
                Else
                    li.SubItems(13) = "N"
                End If
                    
                If 0 <> deviceTool.BitCheck(CLng(enroll.EnrollType), 11) Then
                    li.SubItems(14) = "Y"
                Else
                    li.SubItems(14) = "N"
                End If
                    
                li.SubItems(15) = GetPrivilegeName(u.Privilege)
                sn = sn + 1
            Else
                MsgBox "Open File Fail", vbOKOnly + vbExclamation, "Prompt"
                Exit Sub
            End If
        Next
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ReadCard_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ReadCard)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    user.SetEnrolls enroll
    result = deviceConn.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        Dim enrollCol As Variant
        Dim tmp As EnrollExt
        enrollCol = user.Enrolls
        Set tmp = enrollCol(0)
        txt_CardID.Text = tmp.CardID
    Else
        MsgBox "Read Card Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ReadFPData_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte, tmpFP(MaxFingerprintLength - 1) As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    Dim tmpFpBytes() As Byte    ' for sample ConvertFingerprintToString
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_FingerSN.ListIndex Then
        MsgBox "Please select finger SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ReadFingerprint)), NumberType_Int32Bit)
        Set user = New UserExt
        Set enroll(0) = New EnrollExt
        user.DIN = Trim(txt_UserID.Text)
        enroll(0).DIN = user.DIN
        enroll(0).EnrollType = cbo_FingerSN.ListIndex
        enroll(0).SetFingerprint tmpFP
        user.SetEnrolls enroll
        result = deviceConn.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
        If result Then
            Dim enrollCol As Variant
            Dim tmp As EnrollExt
            Dim fp As Variant
            enrollCol = user.Enrolls
            Set tmp = enrollCol(0)
            fp = tmp.Fingerprint
            fpBytes = fp
            
            'txt_Fingerprint.Text = ConvertByteToHex(fp)
            tmpFpBytes = fp
            'you can use ConvertFingerprintToString to convert the fp data to string and store in your database,
            'and use ConvertStringFingerprintToBytes to convert the string data from database to bytes. see Write FP Data sample.
            txt_Fingerprint.Text = deviceTool.ConvertFingerprintToString(tmpFpBytes)    'convert fp data to string
            
        Else
            MsgBox "Read FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Read FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_ReadPwd_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If

    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_ReadPassword)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    user.SetEnrolls enroll
    result = deviceConn.GetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        Dim enrollCol As Variant
        Dim tmp As EnrollExt
        enrollCol = user.Enrolls
        Set tmp = enrollCol(0)
        txt_Password.Text = tmp.Password
    Else
        MsgBox "Read Password Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SaveAllEnroll_Click()
    On Error GoTo ErrorHandle
    Dim users() As UserExt
    Dim i As Long, idx As Long
    Dim fileName As String
    idx = 0
    fileName = App.Path
    
    If 0 = lvw_UserList.ListItems.Count Then
        MsgBox "Enroll Data is Empty", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If 0 = checkItemsCount Then
        MsgBox "Please Select the Record After Operation", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    For i = 1 To lvw_UserList.ListItems.Count
        If lvw_UserList.ListItems(i).Checked Then
            ReDim Preserve users(idx) As UserExt
            Set users(idx) = gUsers(i)
            idx = idx + 1
        End If
    Next
    
    If ShowDir(Me.hwnd, fileName) Then
        fileName = fileName + "\UserData"
        If "" = Dir(fileName, vbDirectory) Then
            MkDir fileName
        End If
        
        fileName = fileName + "\AllEnrollData.fps"
        If "" <> Dir(fileName) Then
            If VbMsgBoxResult.vbNo = MsgBox("The file AllEnrollData.fps already exists, overwrite", _
            vbYesNo + vbExclamation, "Prompt") Then
                Exit Sub
            End If
        End If
        
        Dim ef As IZd2911EnrollFile
        Set ef = New Zd2911EnrollFile
        
        If ef.SaveAllUserExtEnrollDataAsDB(fileName, users) Then
            MsgBox "Save All Enroll to File Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Save All Enroll to File Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SaveFPData_Click()
    On Error GoTo ErrorHandle
    btn_Dialog.Filter = "Fingerprint File(*.fpt)|*.fpt"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Save Fingerprint File"
    btn_Dialog.Flags = cdlOFNOverwritePrompt
    btn_Dialog.ShowSave
    If "" <> Trim(btn_Dialog.fileName) Then
        Open btn_Dialog.fileName For Binary As #1
        Put #1, , fpBytes
        Close #1
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SaveOneEnroll_Click()
    On Error GoTo ErrorHandle
    Dim users() As UserExt
    Dim i As Long, idx As Long, cancleCount As Long
    Dim fileName As String, dirName As String
    idx = 0
    cancleCount = 0
    fileName = App.Path
    
    If 0 = lvw_UserList.ListItems.Count Then
        MsgBox "Enroll Data is Empty", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If 0 = checkItemsCount Then
        MsgBox "Please Select the Record After Operation", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If ShowDir(Me.hwnd, dirName) Then
        For i = 1 To lvw_UserList.ListItems.Count
            If lvw_UserList.ListItems(i).Checked Then
                ReDim Preserve users(idx) As UserExt
                Set users(idx) = gUsers(i)
                
                fileName = dirName + "\UserData"
                If "" = Dir(fileName, vbDirectory) Then
                    MkDir fileName
                End If
                    
                fileName = fileName + "\OD_" + Format(users(idx).DIN, "000000000000000000") + ".db"
                If "" <> Dir(fileName) Then
                    If VbMsgBoxResult.vbNo = MsgBox("The file OD_" + Format(users(idx).DIN, "0000000000000000") + _
                    ".db already exists, overwrite", vbYesNo + vbExclamation, "Prompt") Then
                        cancleCount = cancleCount + 1
                        GoTo Continue
                    End If
                End If
                    
                Dim ef As IZd2911EnrollFile
                Set ef = New Zd2911EnrollFile
                    
                If False = ef.SaveUserExtEnrollDataAsDB(fileName, users(idx)) Then
                    MsgBox "Save One Enroll to File Fail", vbOKOnly + vbExclamation, "Prompt"
                    Exit Sub
                End If
                
                idx = idx + 1
            End If
Continue: Next
    End If
    
    If checkItemsCount <> cancleCount Then
        MsgBox "Save One Enroll to File Success", vbOKOnly + vbInformation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SelectAll_Click()
    If 0 = lvw_UserList.ListItems.Count Then
        Exit Sub
    End If
    
    Dim i As Long
    If "Select All" = btn_SelectAll.Caption Then
        For i = 1 To lvw_UserList.ListItems.Count
            lvw_UserList.ListItems(i).Checked = True
        Next
        btn_SelectAll.Caption = "Deselect All"
        checkItemsCount = lvw_UserList.ListItems.Count
    Else
        For i = 1 To lvw_UserList.ListItems.Count
            lvw_UserList.ListItems(i).Checked = False
        Next
        btn_SelectAll.Caption = "Select All"
        checkItemsCount = 0
    End If
End Sub

Private Sub btn_SetAllUserEnroll_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData(0) As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If 0 = lvw_UserList.ListItems.Count Then
        MsgBox "Enroll Data is Empty", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If 0 = checkItemsCount Then
        MsgBox "Please Select the Record After Operation", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        Dim i As Long
        For i = 1 To lvw_UserList.ListItems.Count
            If lvw_UserList.ListItems(i).Checked Then
                Dim user As UserExt
                extraData(0) = 0
                Set user = gUsers(i)
                result = deviceConn.SetPropertyExt(UserProperty_Enroll, extraProperty, user, extraData)
                If False = result Then
                    MsgBox "Set User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
                    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
                    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
                    Exit Sub
                End If
            End If
        Next
        
        MsgBox "Set User Enroll Data Success", vbOKOnly + vbInformation, "Prompt"
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Set User Enroll Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_SetPrivilege_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_Privilege.ListIndex Then
        MsgBox "Please select privilege", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    user.Privilege = GetPrivilege()
    result = deviceConn.SetPropertyExt(UserProperty_Privilege, extraProperty, user, extraData)
    If result Then
        MsgBox "Set User Privilege Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Set User Privilege Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SetUserExtInfo_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_UserExtInfo.Text) Then
        MsgBox "Please input UserExtInfo", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    user.Comment = Trim(txt_UserExtInfo.Text)
    result = deviceConn.SetPropertyExt(UserProperty_UserExtInfo, extraProperty, user, extraData)
    If result Then
        MsgBox "Set UserExtInfo Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Get UserExtInfo Fial", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_SetUsername_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Username.Text) Then
        MsgBox "Plear input username", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    user.UserName = Trim(txt_Username.Text)
    result = deviceConn.SetPropertyExt(UserProperty_UserName, extraProperty, user, extraData)
    If result Then
        MsgBox "Set Username Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Get Username Fial", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_Write_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_CardID.Text) Then
        MsgBox "Please input card ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_CardID.Text)) Then
        MsgBox "The card ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_WriteCard)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    enroll(0).CardID = Trim(txt_CardID.Text)
    user.SetEnrolls enroll
    result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        MsgBox "Write Card Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Write Card Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_WriteFPData_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte, fp() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    Dim tmpFpBytes() As Byte    ' for sample ConvertStringFingerprintToBytes
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_FingerSN.ListIndex Then
        MsgBox "Please select finger SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Fingerprint.Text) Then
        MsgBox "Current FP Data is Empty", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        ReDim fp((cbo_FingerSN.ListIndex + 1) * MaxFingerprintLength - 1) As Byte
        extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_WriteFingerprint)), NumberType_Int32Bit)
        Set user = New UserExt
        Set enroll(0) = New EnrollExt
        user.DIN = Trim(txt_UserID.Text)
        enroll(0).DIN = user.DIN
        enroll(0).EnrollType = cbo_FingerSN.ListIndex
        
        'convert string fp data to bytes, in this sample need read fp data first! In real project your can get the string fp data from database.
        tmpFpBytes = deviceTool.ConvertStringFingerprintToBytes(txt_Fingerprint.Text)
        fpBytes = tmpFpBytes
        SetFingerprintData cbo_FingerSN.ListIndex * MaxFingerprintLength, fp
        
        enroll(0).SetFingerprint fp
        
        user.SetEnrolls enroll
        result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
        If result Then
            MsgBox "Write FP Data Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Write FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Write FP Data Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_WritePWD_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim user As UserExt
    Dim enroll(0) As EnrollExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Password.Text) Then
        MsgBox "Please input password", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_Password.Text)) Then
        MsgBox "The password must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(CLng(UserEnrollCommand_WritePassword)), NumberType_Int32Bit)
    Set user = New UserExt
    Set enroll(0) = New EnrollExt
    user.DIN = Trim(txt_UserID.Text)
    enroll(0).DIN = user.DIN
    enroll(0).Password = Trim(txt_Password.Text)
    user.SetEnrolls enroll
    result = deviceConn.SetPropertyExt(UserProperty_UserEnroll, extraProperty, user, extraData)
    If result Then
        MsgBox "Write Password Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Write Password Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Form_Load()
    Set d = CMForm.d
    Set deviceConn = CMForm.deviceConn
    Set deviceTool = New Zd2911Tools
    lvw_UserList.ColumnHeaders.Add 1, , "SN", 800
    lvw_UserList.ColumnHeaders.Add 2, , "User ID", 1800
    lvw_UserList.ColumnHeaders.Add 3, , "Username", 1800
    lvw_UserList.ColumnHeaders.Add 4, , "FP 0", 600
    lvw_UserList.ColumnHeaders.Add 5, , "FP 1", 600
    lvw_UserList.ColumnHeaders.Add 6, , "FP 2", 600
    lvw_UserList.ColumnHeaders.Add 7, , "FP 3", 600
    lvw_UserList.ColumnHeaders.Add 8, , "FP 4", 600
    lvw_UserList.ColumnHeaders.Add 9, , "FP 5", 600
    lvw_UserList.ColumnHeaders.Add 10, , "FP 6", 600
    lvw_UserList.ColumnHeaders.Add 11, , "FP 7", 600
    lvw_UserList.ColumnHeaders.Add 12, , "FP 8", 600
    lvw_UserList.ColumnHeaders.Add 13, , "FP 9", 600
    lvw_UserList.ColumnHeaders.Add 14, , "PWD", 600
    lvw_UserList.ColumnHeaders.Add 15, , "Card", 600
    lvw_UserList.ColumnHeaders.Add 16, , "Privilege", 1500
End Sub

Private Sub lvw_UserList_ItemCheck(ByVal Item As MSComctlLib.ListItem)
    If Item.Checked Then
        checkItemsCount = checkItemsCount + 1
    End If
End Sub

Private Sub remoteEnrollCommand_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty(1) As Byte, extraData() As Byte
    Dim user As UserExt
    Dim result As Boolean
    
    If "" = Trim(txt_UserID.Text) Then
        MsgBox "Please input user ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_UserID.Text)) Then
        MsgBox "The user ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Username.Text) Then
        MsgBox "Plear input username", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    Set user = New UserExt
    user.DIN = Trim(txt_UserID.Text)
    user.UserName = Trim(txt_Username.Text)
    extraProperty(0) = 0    '0=FP, 1=PWD, 2=CARD
    result = deviceConn.SetPropertyExt(UserProperty_OnlineEnroll, extraProperty, user, extraData)
    If result Then
        MsgBox "Remote Enroll Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Remote Enroll Fial", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub
