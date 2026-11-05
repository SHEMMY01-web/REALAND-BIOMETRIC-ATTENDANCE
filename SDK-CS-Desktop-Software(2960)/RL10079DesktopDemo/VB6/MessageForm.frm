VERSION 5.00
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form MessageForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Message Settings"
   ClientHeight    =   5535
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   9735
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5535
   ScaleWidth      =   9735
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton btn_MessageSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   6960
      TabIndex        =   16
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton btn_MessageGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   5640
      TabIndex        =   15
      Top             =   3120
      Width           =   1215
   End
   Begin VB.TextBox txt_Context 
      Height          =   375
      Left            =   1920
      MaxLength       =   30
      TabIndex        =   14
      Top             =   2520
      Width           =   6255
   End
   Begin VB.ComboBox cbo_Sound 
      Height          =   300
      ItemData        =   "MessageForm.frx":0000
      Left            =   1920
      List            =   "MessageForm.frx":000D
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   2040
      Width           =   1935
   End
   Begin MSComCtl2.DTPicker dtp_End 
      Height          =   375
      Left            =   6240
      TabIndex        =   10
      Top             =   1440
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      _Version        =   393216
      CustomFormat    =   "yyyy-MM-dd HH:mm"
      Format          =   21364739
      CurrentDate     =   41278
      MaxDate         =   73050.9993055556
      MinDate         =   40179
   End
   Begin MSComCtl2.DTPicker dtp_Begin 
      Height          =   375
      Left            =   1920
      TabIndex        =   8
      Top             =   1440
      Width           =   1935
      _ExtentX        =   3413
      _ExtentY        =   661
      _Version        =   393216
      CustomFormat    =   "yyyy-MM-dd HH:mm"
      Format          =   21364739
      CurrentDate     =   41278
      MaxDate         =   73050.9993055556
      MinDate         =   40179
   End
   Begin VB.TextBox txt_ID 
      Height          =   375
      Left            =   6240
      MaxLength       =   18
      TabIndex        =   6
      Text            =   "0"
      Top             =   960
      Width           =   1935
   End
   Begin VB.ComboBox cbo_Type 
      Height          =   300
      ItemData        =   "MessageForm.frx":003A
      Left            =   1920
      List            =   "MessageForm.frx":0047
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   960
      Width           =   1935
   End
   Begin VB.CheckBox chk_Enable 
      Caption         =   "Enable"
      Height          =   375
      Left            =   6240
      TabIndex        =   2
      Top             =   360
      Width           =   1215
   End
   Begin VB.ComboBox cbo_SN 
      Height          =   300
      Left            =   1920
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label7 
      Caption         =   "Content:"
      Height          =   375
      Left            =   960
      TabIndex        =   13
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label Label6 
      Caption         =   "Sound:"
      Height          =   255
      Left            =   1080
      TabIndex        =   11
      Top             =   2040
      Width           =   855
   End
   Begin VB.Label Label5 
      Caption         =   "End Datetime:"
      Height          =   255
      Left            =   4920
      TabIndex        =   9
      Top             =   1560
      Width           =   1455
   End
   Begin VB.Label Label4 
      Caption         =   "Begin Datetime:"
      Height          =   255
      Left            =   240
      TabIndex        =   7
      Top             =   1560
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "ID:"
      Height          =   255
      Left            =   5760
      TabIndex        =   5
      Top             =   1080
      Width           =   495
   End
   Begin VB.Label Label2 
      Caption         =   "Type:"
      Height          =   255
      Left            =   1200
      TabIndex        =   3
      Top             =   960
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "SN:"
      Height          =   255
      Left            =   1440
      TabIndex        =   0
      Top             =   360
      Width           =   375
   End
End
Attribute VB_Name = "MessageForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private d As Device
Private deviceConn As Zd2911DeviceConnection
Private deviceTool As Zd2911Tools

Private Sub btn_MessageGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_SN.ListIndex Then
        MsgBox "Please select SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraData = deviceTool.GetBytesByNum(CStr(DeviceMessage), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Message, extraProperty, d, extraData)
        If result Then
            Dim strDate As String
            Dim messageBytes(MaxDeviceMessageLength - 1) As Byte
            Dim idBytes(7) As Byte
            Dim contentBytes(MessageContentLength * 2 - 1) As Byte
            ArrayCopy extraData, cbo_SN.ListIndex * MaxDeviceMessageLength, messageBytes, 0, MaxDeviceMessageLength
            ArrayCopy messageBytes, 16, idBytes, 0, UBound(idBytes) + 1
            ArrayCopy messageBytes, 24, contentBytes, 0, UBound(contentBytes) + 1
            chk_Enable.value = messageBytes(0)
            cbo_Type.ListIndex = messageBytes(1)
            cbo_Sound.ListIndex = messageBytes(2)
            strDate = CStr(messageBytes(6) + BeginYear) + "-" + CStr(messageBytes(7)) + "-" + CStr(messageBytes(8)) + " " _
                + CStr(messageBytes(9)) + ":" + CStr(messageBytes(10)) + ":" + "00"
            dtp_Begin.value = CDate(strDate)
            strDate = CStr(messageBytes(11) + BeginYear) + "-" + CStr(messageBytes(12)) + "-" + CStr(messageBytes(13)) + " " _
                + CStr(messageBytes(14)) + ":" + CStr(messageBytes(15)) + ":" + "00"
            dtp_End.value = CDate(strDate)
            txt_ID.Text = deviceTool.GetStringByNum(idBytes, 0, NumberType_UInt64Bit)
            txt_Context.Text = Replace(deviceTool.GetString(contentBytes), "\0", "")
        Else
            MsgBox "Get Message Settings Fail", vbOKOnly + vbExclamation, "Prompt"
            deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
            result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
            Exit Sub
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get Message Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_MessageSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_SN.ListIndex Then
        MsgBox "Please select SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_Type.ListIndex Then
        MsgBox "Please select Type", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_ID.Text) Then
        MsgBox "Please input ID", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_ID.Text)) Then
        MsgBox "The ID must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If 0 <> cbo_Type.ListIndex Then
        If 0 = CLng(Trim(txt_ID.Text)) Then
            MsgBox "Please input ID", vbOKOnly + vbExclamation, "Prompt"
            Exit Sub
        End If
    End If
    
    If -1 = cbo_Sound.ListIndex Then
        MsgBox "Please select Sound", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Context.Text) Then
        MsgBox "Please Input Content.", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        Dim idBytes() As Byte, tmpContentBytes() As Byte
        Dim contentBytes(MessageContentLength * 2 - 1) As Byte
        extraData = deviceTool.GetBytesByNum(CStr(DeviceMessage), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Message, extraProperty, d, extraData)
        If False = result Then
            MsgBox "Set Message Settings Fail", vbOKOnly + vbExclamation, "Prompt"
            deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
            result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
            Exit Sub
        End If
        
        extraProperty = deviceTool.GetBytesByNum(CStr(DeviceMessage), NumberType_Int32Bit)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 0) = CByte(chk_Enable.value)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 1) = CByte(cbo_Type.ListIndex)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 2) = CByte(cbo_Sound.ListIndex)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 3) = CByte(0)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 4) = CByte(0)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 5) = CByte(0)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 6) = CByte(Year(dtp_Begin.value) - BeginYear)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 7) = CByte(Month(dtp_Begin.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 8) = CByte(Day(dtp_Begin.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 9) = CByte(Hour(dtp_Begin.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 10) = CByte(Minute(dtp_Begin.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 11) = CByte(Year(dtp_End.value) - BeginYear)
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 12) = CByte(Month(dtp_End.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 13) = CByte(Day(dtp_End.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 14) = CByte(Hour(dtp_End.value))
        extraData(cbo_SN.ListIndex * MaxDeviceMessageLength + 15) = CByte(Minute(dtp_End.value))
        idBytes = deviceTool.GetBytesByNum(Trim(txt_ID.Text), NumberType_UInt64Bit)
        ArrayCopy idBytes, 0, extraData, cbo_SN.ListIndex * MaxDeviceMessageLength + 16, UBound(idBytes) + 1
        tmpContentBytes = deviceTool.GetBytes(Trim(txt_Context.Text))
        ArrayCopy tmpContentBytes, 0, contentBytes, 0, UBound(tmpContentBytes) + 1
        ArrayCopy contentBytes, 0, extraData, cbo_SN.ListIndex * MaxDeviceMessageLength + 24, UBound(contentBytes) + 1
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Message, extraProperty, d, extraData)
        If result Then
            MsgBox "Set Message Settings Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Set Message Settings Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Set Message Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub Form_Load()
    Dim i As Long
    Set d = CMForm.d
    Set deviceConn = CMForm.deviceConn
    Set deviceTool = New Zd2911Tools
    
    For i = 1 To MaxDeviceMessageCount
        cbo_SN.AddItem CStr(i)
    Next
    
    dtp_Begin.value = Now
    dtp_End.value = DateAdd("d", 1, dtp_Begin.value)
End Sub
