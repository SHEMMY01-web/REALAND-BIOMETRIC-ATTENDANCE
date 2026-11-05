VERSION 5.00
Begin VB.Form AlarmForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Alarm Settings"
   ClientHeight    =   4680
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7785
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4680
   ScaleWidth      =   7785
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton btn_AlarmSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   5400
      TabIndex        =   11
      Top             =   1560
      Width           =   1215
   End
   Begin VB.CommandButton btn_AlarmGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   4080
      TabIndex        =   10
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox txt_Delay 
      Height          =   375
      Left            =   4440
      MaxLength       =   3
      TabIndex        =   9
      Text            =   "0"
      Top             =   960
      Width           =   2175
   End
   Begin VB.ComboBox cbo_Cycle 
      Height          =   300
      ItemData        =   "AlarmForm.frx":0000
      Left            =   1080
      List            =   "AlarmForm.frx":001C
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   960
      Width           =   1215
   End
   Begin VB.ComboBox cbo_Minute 
      Height          =   300
      Left            =   5760
      Style           =   2  'Dropdown List
      TabIndex        =   5
      Top             =   360
      Width           =   855
   End
   Begin VB.ComboBox cbo_Hour 
      Height          =   300
      Left            =   4440
      Style           =   2  'Dropdown List
      TabIndex        =   3
      Top             =   360
      Width           =   855
   End
   Begin VB.ComboBox cbo_SN 
      Height          =   300
      Left            =   1080
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   360
      Width           =   1215
   End
   Begin VB.Label Label5 
      Caption         =   "Delay:"
      Height          =   255
      Left            =   3720
      TabIndex        =   8
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label4 
      Caption         =   "Cycle:"
      Height          =   255
      Left            =   360
      TabIndex        =   6
      Top             =   960
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   " : "
      BeginProperty Font 
         Name            =   "ËÎÌå"
         Size            =   9
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   5400
      TabIndex        =   4
      Top             =   360
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "Time:"
      Height          =   255
      Left            =   3840
      TabIndex        =   2
      Top             =   360
      Width           =   615
   End
   Begin VB.Label Label1 
      Caption         =   "SN:"
      Height          =   255
      Left            =   720
      TabIndex        =   0
      Top             =   360
      Width           =   495
   End
End
Attribute VB_Name = "AlarmForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private d As Device
Private deviceConn As Zd2911DeviceConnection
Private deviceTool As Zd2911Tools

Private Sub btn_AlarmGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_SN.ListIndex Then
        MsgBox "Please Select SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraData = deviceTool.GetBytesByNum(CStr(DeviceAlarmClock), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Bell, extraProperty, d, extraData)
        If result Then
            Dim bellBytes(BellLength - 1) As Byte
            ArrayCopy extraData, cbo_SN.ListIndex * BellLength, bellBytes, 0, BellLength
            cbo_Hour.ListIndex = bellBytes(0)
            cbo_Minute.ListIndex = bellBytes(1)
            cbo_Cycle.ListIndex = bellBytes(2)
            txt_Delay.Text = CStr(bellBytes(3))
        Else
            MsgBox "Get Alarm Settings Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get Alarm Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_AlarmSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_SN.ListIndex Then
        MsgBox "Please Select SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_Hour.ListIndex Then
        MsgBox "Please Select Time: Hour", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_Minute.ListIndex Then
        MsgBox "Please Select Time: Minute", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_Cycle.ListIndex Then
        MsgBox "Please Select Cycle", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If "" = Trim(txt_Delay.Text) Then
        MsgBox "Please input Delay", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If False = IsNumeric(Trim(txt_Delay.Text)) Then
        MsgBox "The Delay must be numeric", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If CLng(Trim(txt_Delay.Text)) > 255 Then
        MsgBox "The Delay must between 0 and 255", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraData = deviceTool.GetBytesByNum(CStr(DeviceAlarmClock), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_Bell, extraProperty, d, extraData)
        If False = result Then
            MsgBox "Set Alarm Settings Fail", vbOKOnly + vbExclamation, "Prompt"
            deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
            result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
            Exit Sub
        End If
        
        extraProperty = deviceTool.GetBytesByNum(CStr(DeviceAlarmClock), NumberType_Int32Bit)
        extraData(cbo_SN.ListIndex * BellLength + 0) = CByte(cbo_Hour.ListIndex)
        extraData(cbo_SN.ListIndex * BellLength + 1) = CByte(cbo_Minute.ListIndex)
        extraData(cbo_SN.ListIndex * BellLength + 2) = CByte(cbo_Cycle.ListIndex)
        extraData(cbo_SN.ListIndex * BellLength + 3) = CByte(Trim(txt_Delay.Text))
        
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Bell, extraProperty, d, extraData)
        If result Then
            MsgBox "Set Alarm Settings Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Set Alarm Settings Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Set Alarm Settings Fail", vbOKOnly + vbExclamation, "Prompt"
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
    
    For i = 1 To BellGroupCount
        cbo_SN.AddItem CStr(i)
    Next
    
    For i = 0 To 23
        cbo_Hour.AddItem CStr(i)
    Next
    
    For i = 0 To 59
        cbo_Minute.AddItem CStr(i)
    Next
End Sub
