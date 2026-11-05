VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form SystemForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "System Settings"
   ClientHeight    =   8670
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   14130
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   8670
   ScaleWidth      =   14130
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton RestartCommand 
      Caption         =   "Restart"
      Height          =   375
      Left            =   12480
      TabIndex        =   63
      Top             =   7080
      Width           =   1215
   End
   Begin VB.CommandButton ShutdownCommand 
      Caption         =   "Shutdown"
      Height          =   375
      Left            =   11160
      TabIndex        =   62
      Top             =   7080
      Width           =   1215
   End
   Begin VB.TextBox SerialNoText 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   60
      Top             =   6480
      Width           =   4815
   End
   Begin VB.CommandButton SerialNoCommand 
      Caption         =   "Get"
      Height          =   375
      Left            =   12480
      TabIndex        =   59
      Top             =   6480
      Width           =   1215
   End
   Begin MSComDlg.CommonDialog btn_Dialog 
      Left            =   960
      Top             =   7800
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btn_InitDevice 
      Caption         =   "Init Device"
      Height          =   495
      Left            =   3120
      TabIndex        =   58
      Top             =   6960
      Width           =   1455
   End
   Begin VB.CommandButton btn_MacAddressGet 
      Caption         =   "Get Mac Address"
      Height          =   495
      Left            =   600
      TabIndex        =   57
      Top             =   6960
      Width           =   2175
   End
   Begin VB.CommandButton btn_UploadSound 
      Caption         =   "Upload Sound"
      Height          =   495
      Left            =   3120
      TabIndex        =   56
      Top             =   6000
      Width           =   1455
   End
   Begin VB.ComboBox cbo_SoundType 
      Height          =   300
      ItemData        =   "SystemForm.frx":0000
      Left            =   1560
      List            =   "SystemForm.frx":000A
      Style           =   2  'Dropdown List
      TabIndex        =   55
      Top             =   5520
      Width           =   3015
   End
   Begin VB.CommandButton btn_Model 
      Caption         =   "Get"
      Height          =   375
      Left            =   12480
      TabIndex        =   53
      Top             =   5880
      Width           =   1215
   End
   Begin VB.TextBox txt_Model 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   52
      Top             =   5880
      Width           =   4815
   End
   Begin VB.CommandButton btn_FVGet 
      Caption         =   "Get"
      Height          =   375
      Left            =   12480
      TabIndex        =   50
      Top             =   5280
      Width           =   1215
   End
   Begin VB.TextBox txt_FV 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      MaxLength       =   32
      TabIndex        =   49
      Top             =   5280
      Width           =   4815
   End
   Begin VB.CommandButton btn_StandbyTitleSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   12480
      TabIndex        =   47
      Top             =   4560
      Width           =   1215
   End
   Begin VB.CommandButton btn_StandbyTitleGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   11160
      TabIndex        =   46
      Top             =   4560
      Width           =   1215
   End
   Begin VB.TextBox txt_StandbyTitle 
      Height          =   375
      Left            =   7560
      MaxLength       =   32
      TabIndex        =   45
      Top             =   4080
      Width           =   6135
   End
   Begin VB.CommandButton btn_WelcomeTitleSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   12480
      TabIndex        =   43
      Top             =   3360
      Width           =   1215
   End
   Begin VB.CommandButton btn_WelcomeTitleGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   11160
      TabIndex        =   42
      Top             =   3360
      Width           =   1215
   End
   Begin VB.TextBox txt_WelcomeTitle 
      Height          =   375
      Left            =   7560
      MaxLength       =   32
      TabIndex        =   41
      Top             =   2880
      Width           =   6135
   End
   Begin VB.CommandButton btn_InfoGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   12480
      TabIndex        =   39
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox txt_HisSLogCount 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      TabIndex        =   37
      Top             =   2040
      Width           =   1215
   End
   Begin VB.TextBox txt_HisGLogCount 
      Height          =   375
      Left            =   12480
      Locked          =   -1  'True
      TabIndex        =   35
      Top             =   1560
      Width           =   1215
   End
   Begin VB.TextBox txt_NewSLogCount 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      TabIndex        =   33
      Top             =   1560
      Width           =   1215
   End
   Begin VB.ComboBox cbo_Param 
      Height          =   300
      ItemData        =   "SystemForm.frx":002E
      Left            =   1560
      List            =   "SystemForm.frx":0092
      Style           =   2  'Dropdown List
      TabIndex        =   19
      Top             =   240
      Width           =   3015
   End
   Begin VB.TextBox txt_ParamValue 
      Height          =   375
      Left            =   1560
      TabIndex        =   18
      Top             =   600
      Width           =   3015
   End
   Begin VB.CommandButton btn_ParamValueGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   2040
      TabIndex        =   17
      Top             =   1080
      Width           =   1215
   End
   Begin VB.CommandButton btn_ParamValueSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   3360
      TabIndex        =   16
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txt_Time 
      Height          =   375
      Left            =   1560
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   1920
      Width           =   3015
   End
   Begin VB.CommandButton btn_TimeGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   1440
      TabIndex        =   14
      Top             =   2400
      Width           =   1215
   End
   Begin VB.CommandButton btn_TimeSet 
      Caption         =   "Synchronize the device time"
      Height          =   495
      Left            =   2760
      TabIndex        =   13
      Top             =   2400
      Width           =   1815
   End
   Begin VB.ComboBox cbo_Type 
      Height          =   300
      ItemData        =   "SystemForm.frx":0295
      Left            =   1560
      List            =   "SystemForm.frx":029C
      Style           =   2  'Dropdown List
      TabIndex        =   12
      Top             =   3240
      Width           =   3015
   End
   Begin VB.ComboBox cbo_SN 
      Height          =   300
      Left            =   1560
      Style           =   2  'Dropdown List
      TabIndex        =   11
      Top             =   3600
      Width           =   3015
   End
   Begin VB.ComboBox cbo_Minute 
      Height          =   300
      Left            =   2880
      Style           =   2  'Dropdown List
      TabIndex        =   10
      Top             =   3960
      Width           =   855
   End
   Begin VB.ComboBox cbo_Hour 
      Height          =   300
      Left            =   1560
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   3960
      Width           =   855
   End
   Begin VB.CheckBox chk_Enable 
      Caption         =   "Enable"
      Height          =   255
      Left            =   1560
      TabIndex        =   8
      Top             =   4320
      Width           =   1215
   End
   Begin VB.CommandButton btn_PowerGet 
      Caption         =   "Get"
      Height          =   495
      Left            =   2040
      TabIndex        =   7
      Top             =   4680
      Width           =   1215
   End
   Begin VB.CommandButton btn_PowerSet 
      Caption         =   "Set"
      Height          =   495
      Left            =   3360
      TabIndex        =   6
      Top             =   4680
      Width           =   1215
   End
   Begin VB.TextBox txt_UserCount 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      TabIndex        =   5
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox txt_ManagerCount 
      Height          =   375
      Left            =   12480
      Locked          =   -1  'True
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox txt_FPCount 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      TabIndex        =   3
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox txt_PwdCount 
      Height          =   375
      Left            =   12480
      Locked          =   -1  'True
      TabIndex        =   2
      Top             =   600
      Width           =   1215
   End
   Begin VB.TextBox txt_CardCount 
      Height          =   375
      Left            =   7560
      Locked          =   -1  'True
      TabIndex        =   1
      Top             =   1080
      Width           =   1215
   End
   Begin VB.TextBox txt_NewGLogCount 
      Height          =   375
      Left            =   12480
      Locked          =   -1  'True
      TabIndex        =   0
      Top             =   1080
      Width           =   1215
   End
   Begin VB.Label Label22 
      Caption         =   "SerialNo:"
      Height          =   375
      Left            =   6480
      TabIndex        =   61
      Top             =   6480
      Width           =   855
   End
   Begin VB.Label Label21 
      Caption         =   "Sound Type:"
      Height          =   375
      Left            =   360
      TabIndex        =   54
      Top             =   5520
      Width           =   1215
   End
   Begin VB.Label Label20 
      Caption         =   "Model:"
      Height          =   375
      Left            =   6720
      TabIndex        =   51
      Top             =   5880
      Width           =   855
   End
   Begin VB.Label Label19 
      Caption         =   "Firmware Version:"
      Height          =   375
      Left            =   5760
      TabIndex        =   48
      Top             =   5280
      Width           =   1815
   End
   Begin VB.Label Label18 
      Caption         =   "Standby Title:"
      Height          =   375
      Left            =   6000
      TabIndex        =   44
      Top             =   4080
      Width           =   1575
   End
   Begin VB.Label Label17 
      Caption         =   "Welcome Title:"
      Height          =   375
      Left            =   6000
      TabIndex        =   40
      Top             =   2880
      Width           =   1575
   End
   Begin VB.Label Label16 
      Caption         =   "History SLog Count:"
      Height          =   255
      Left            =   5520
      TabIndex        =   38
      Top             =   2160
      Width           =   2055
   End
   Begin VB.Label Label15 
      Caption         =   "History GLog Count:"
      Height          =   255
      Left            =   10440
      TabIndex        =   36
      Top             =   1680
      Width           =   2055
   End
   Begin VB.Label Label14 
      Caption         =   "New SLog Count:"
      Height          =   255
      Left            =   5880
      TabIndex        =   34
      Top             =   1680
      Width           =   1695
   End
   Begin VB.Label Label1 
      Caption         =   "Parameter:"
      Height          =   375
      Left            =   480
      TabIndex        =   32
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label2 
      Caption         =   "Value:"
      Height          =   255
      Left            =   840
      TabIndex        =   31
      Top             =   720
      Width           =   735
   End
   Begin VB.Label Label3 
      Caption         =   "Time:"
      Height          =   255
      Left            =   840
      TabIndex        =   30
      Top             =   1920
      Width           =   615
   End
   Begin VB.Label Label4 
      Caption         =   "Type:"
      Height          =   255
      Left            =   840
      TabIndex        =   29
      Top             =   3240
      Width           =   615
   End
   Begin VB.Label Label5 
      Caption         =   "SN:"
      Height          =   255
      Left            =   840
      TabIndex        =   28
      Top             =   3600
      Width           =   480
   End
   Begin VB.Label Label6 
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
      Left            =   2520
      TabIndex        =   27
      Top             =   3960
      Width           =   255
   End
   Begin VB.Label Label7 
      Caption         =   "Time:"
      Height          =   255
      Left            =   840
      TabIndex        =   26
      Top             =   3960
      Width           =   615
   End
   Begin VB.Label Label8 
      Caption         =   "User Count:"
      Height          =   255
      Left            =   6360
      TabIndex        =   25
      Top             =   240
      Width           =   1215
   End
   Begin VB.Label Label9 
      Caption         =   "Manager Count:"
      Height          =   255
      Left            =   10920
      TabIndex        =   24
      Top             =   240
      Width           =   1575
   End
   Begin VB.Label Label10 
      Caption         =   "FP Count:"
      Height          =   255
      Left            =   6360
      TabIndex        =   23
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label11 
      Caption         =   "PWD Count:"
      Height          =   255
      Left            =   11280
      TabIndex        =   22
      Top             =   720
      Width           =   1215
   End
   Begin VB.Label Label12 
      Caption         =   "Card Count:"
      Height          =   255
      Left            =   6240
      TabIndex        =   21
      Top             =   1200
      Width           =   1215
   End
   Begin VB.Label Label13 
      Caption         =   "New GLog Count:"
      Height          =   255
      Left            =   10920
      TabIndex        =   20
      Top             =   1200
      Width           =   1575
   End
End
Attribute VB_Name = "SystemForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private d As Device
Private deviceConn As Zd2911DeviceConnection
Private dataChunk As Long
Private deviceTool As Zd2911Tools

Private Function CheckIP(ByVal ip As String) As Boolean
    On Error GoTo ErrorHandle
    Dim tmp() As String
    Dim i As Long
    tmp = Split(ip, ".")
    
    If 3 <> UBound(tmp) Then GoTo ErrorHandle
    
    For i = 0 To UBound(tmp)
        If Int(tmp(i)) > 255 Or Int(tmp(i)) < 0 Then GoTo ErrorHandle
    Next
    CheckIP = True
    Exit Function
    
ErrorHandle:
    CheckIP = False
End Function

Private Function CheckWaveFormat(ByRef Buffer() As Byte, ByRef offSet As Long) As Boolean
    Dim riff As String, wave As String, fmt As String
    offSet = 0
    riff = deviceTool.GetASCII(Buffer, 0, 4)
    wave = deviceTool.GetASCII(Buffer, 8, 4)
    fmt = deviceTool.GetASCII(Buffer, 12, 4)
    If "RIFF" <> riff Or "WAVE" <> wave Or "fmt " <> fmt Then
        MsgBox "Incorrect Wave Format", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    Dim waveFormatSize As Long
    waveFormatSize = CLng(deviceTool.GetStringByNum(Buffer, 16, NumberType_Int32Bit))
    
    Dim waveBytes(17) As Byte
    ArrayCopy Buffer, 20, waveBytes, 0, UBound(waveBytes) + 1
    
    Dim formatTag As Long
    formatTag = CLng(deviceTool.GetStringByNum(waveBytes, 0, NumberType_UInt16Bit))
    If 1 <> formatTag Then
        MsgBox "Audio Format is not PCM", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    Dim channels As Long
    channels = CLng(deviceTool.GetStringByNum(waveBytes, 2, NumberType_UInt16Bit))
    If 1 <> channels Then
        MsgBox "Channels is not Stereo", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    Dim samplesPerSec As Long
    samplesPerSec = CLng(deviceTool.GetStringByNum(waveBytes, 4, NumberType_UInt32Bit))
    If 22050 <> samplesPerSec Then
        MsgBox "Audio sample rate is not 22.05KHZ", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    Dim bitsPerSample As Long
    bitsPerSample = CLng(deviceTool.GetStringByNum(waveBytes, 14, NumberType_UInt16Bit))
    If 16 <> bitsPerSample Then
        MsgBox "Audio sample size is not 8bit", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    Dim chunkHeaderLen As Long, tmpOffSet As Long, length As Long, fileLength As Long
    Dim fact As String, data As String
    Dim chunkHeader() As Byte
    chunkHeaderLen = 0
    tmpOffSet = 20 + waveFormatSize
    chunkHeader = deviceTool.CreateChunkHeader(Buffer, tmpOffSet)
    fact = deviceTool.GetASCII(chunkHeader, 0, 4)
    If "fact" = fact Then
        offSet = offSet + chunkHeaderLen + length
    End If
    offSet = tmpOffSet
    chunkHeader = deviceTool.CreateChunkHeader(Buffer, offSet)
    data = deviceTool.GetASCII(chunkHeader, 0, 4)
    If "data" <> data Then
        MsgBox "Incorrect Wave Format", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    length = CLng(deviceTool.GetStringByNum(chunkHeader, 4, NumberType_Int32Bit))
    fileLength = CLng(1024) * CLng(75)
    If fileLength < length Then
        MsgBox "Data size is too big. Must be less than 75K byte", vbOKOnly + vbExclamation, "Prompt"
        CheckWaveFormat = False
        Exit Function
    End If
    
    CheckWaveFormat = True
End Function

Private Function UploadSound(ByRef soundBuffer() As Byte) As Boolean
    Dim chunkHeaderLen As Long, length As Long, downSize As Long, unit As Long, i As Long, n As Long
    Dim chunkHeader() As Byte, downData() As Byte, extraProperty() As Byte, extraData() As Byte
    Dim dataBytes() As Byte, soundType() As Byte, offSet() As Byte
    Dim result As Boolean
    
    chunkHeaderLen = 0
    chunkHeader = deviceTool.CreateChunkHeader(soundBuffer, dataChunk)
    length = CLng(deviceTool.GetStringByNum(chunkHeader, 4, NumberType_Int32Bit))
    downSize = length + 4
    ReDim downData(downSize - 1) As Byte
    ArrayCopy chunkHeader, 4, downData, 0, 4
    ArrayCopy soundBuffer, dataChunk + chunkHeaderLen, downData, 4, length
    unit = CLng(1024) * CLng(60)
    n = Fix(downSize / unit)
    
    For i = 0 To n - 1
        ReDim dataBytes(unit - 1) As Byte
        ArrayCopy downData, i * unit, dataBytes, 0, unit
        soundType = deviceTool.GetBytesByNum(CStr(cbo_SoundType.ListIndex + 8), NumberType_Int32Bit)
        offSet = deviceTool.GetBytesByNum(CStr(i * unit), NumberType_Int32Bit)
        ReDim extraProperty(UBound(soundType) + UBound(offSet) + 1)
        ArrayCopy soundType, 0, extraProperty, 0, UBound(soundType) + 1
        ArrayCopy offSet, 0, extraProperty, UBound(soundType) + 1, UBound(offSet) + 1
        result = deviceConn.SetPropertyExt_2(DeviceProperty_UploadSound, extraProperty, d, dataBytes)
        If False = result Then
            UploadSound = False
            Exit Function
        End If
    Next
    
    n = downSize Mod unit
    If n > 0 Then
        ReDim dataBytes(n - 1) As Byte
        ArrayCopy downData, i * unit, dataBytes, 0, n
        soundType = deviceTool.GetBytesByNum(CStr(cbo_SoundType.ListIndex + 8), NumberType_Int32Bit)
        offSet = deviceTool.GetBytesByNum(CStr(i * unit), NumberType_Int32Bit)
        ReDim extraProperty(UBound(soundType) + UBound(offSet) + 1)
        ArrayCopy soundType, 0, extraProperty, 0, UBound(soundType) + 1
        ArrayCopy offSet, 0, extraProperty, UBound(soundType) + 1, UBound(offSet) + 1
        result = deviceConn.SetPropertyExt_2(DeviceProperty_UploadSound, extraProperty, d, dataBytes)
        If False = result Then
            UploadSound = False
            Exit Function
        End If
    End If
    
    UploadSound = True
End Function

Private Sub btn_FVGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    ReDim Preserve extraData(0) As Byte
    ReDim Preserve extraData(1) As Byte
    ReDim Preserve extraData(2) As Byte
    ReDim Preserve extraData(3) As Byte
    extraData = deviceTool.GetBytesByNum(CStr(DeviceFirmwareVersion), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_FirmwareVersion, extraProperty, d, extraData)
    If result Then
        txt_FV.Text = deviceTool.GetString(extraData)
    Else
        MsgBox "Get Firmware Version Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_InfoGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    result = deviceConn.GetPropertyExt_2(DeviceProperty_Status, extraProperty, d, extraData)
    If result Then
        txt_UserCount.Text = deviceTool.GetStringByNum(extraData, 0, NumberType_UInt32Bit)
        txt_ManagerCount.Text = deviceTool.GetStringByNum(extraData, 4, NumberType_UInt32Bit)
        txt_FPCount.Text = deviceTool.GetStringByNum(extraData, 8, NumberType_UInt32Bit)
        txt_CardCount.Text = deviceTool.GetStringByNum(extraData, 12, NumberType_UInt32Bit)
        txt_PwdCount.Text = deviceTool.GetStringByNum(extraData, 16, NumberType_UInt32Bit)
        txt_NewSLogCount.Text = deviceTool.GetStringByNum(extraData, 20, NumberType_UInt32Bit)
        txt_NewGLogCount.Text = deviceTool.GetStringByNum(extraData, 24, NumberType_UInt32Bit)
        txt_HisSLogCount.Text = deviceTool.GetStringByNum(extraData, 28, NumberType_UInt32Bit)
        txt_HisGLogCount.Text = deviceTool.GetStringByNum(extraData, 32, NumberType_UInt32Bit)
    Else
        MsgBox "Get Log Information Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_InitDevice_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        result = deviceConn.SetPropertyExt_2(DeviceProperty_InitSettings, extraProperty, d, extraData)
        If result Then
            MsgBox "Device Init Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Device Init Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Device Init Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_MacAddressGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    result = deviceConn.GetPropertyExt_2(DeviceProperty_MacAddress, extraProperty, d, extraData)
    If result Then
        MsgBox CStr(Hex(extraData(0))) + "-" + CStr(Hex(extraData(1))) + "-" + CStr(Hex(extraData(2))) _
            + "-" + CStr(Hex(extraData(3))) + "-" + CStr(Hex(extraData(4))) + "-" + CStr(Hex(extraData(5))), _
            vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Get Device Time Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_Model_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    ReDim Preserve extraData(0) As Byte
    ReDim Preserve extraData(1) As Byte
    ReDim Preserve extraData(2) As Byte
    ReDim Preserve extraData(3) As Byte
    extraData = deviceTool.GetBytesByNum(CStr(DeviceModel), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_Model, extraProperty, d, extraData)
    If result Then
        txt_Model.Text = deviceTool.GetString(extraData)
    Else
        MsgBox "Get Model Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ParamValueGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    If -1 = cbo_Param.ListIndex Then
        MsgBox "Please Select Parameter", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraData = deviceTool.GetBytesByNum(CStr(cbo_Param.ListIndex), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_SysParam, extraProperty, d, extraData)
    If result Then
        Dim paramValue As Long
        paramValue = CLng(deviceTool.GetStringByNum(extraData, 0, NumberType_Int32Bit))
        If 26 = cbo_Param.ListIndex Or 27 = cbo_Param.ListIndex Or 28 = cbo_Param.ListIndex Or 29 = cbo_Param.ListIndex Then
            txt_ParamValue.Text = deviceTool.ConvertNumberToIPAddress(paramValue)
        Else
            txt_ParamValue.Text = CStr(paramValue)
        End If
    Else
        MsgBox "Get Parameter Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_ParamValueSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte, paramValue() As Byte, paramIndex() As Byte
    Dim result As Boolean
    
    If -1 = cbo_Param.ListIndex Then
        MsgBox "Please Select Parameter", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If 26 = cbo_Param.ListIndex Or 27 = cbo_Param.ListIndex Or 28 = cbo_Param.ListIndex Or 29 = cbo_Param.ListIndex Then
        If False = CheckIP(Trim(txt_ParamValue.Text)) Then
            MsgBox "Illegal IP address", vbOKOnly + vbExclamation, "Prompt"
            Exit Sub
        End If
        
        paramValue = deviceTool.GetBytesByNum(deviceTool.ConvertIPAddressToNumber(Trim(txt_ParamValue.Text)), NumberType_Int32Bit)
    Else
        paramValue = deviceTool.GetBytesByNum(Trim(txt_ParamValue.Text), NumberType_Int32Bit)
    End If
    
    paramIndex = deviceTool.GetBytesByNum(CStr(cbo_Param.ListIndex), NumberType_Int32Bit)
    ReDim extraData(UBound(paramIndex) + UBound(paramValue) + 1) As Byte
    ArrayCopy paramIndex, 0, extraData, 0, UBound(paramIndex) + 1
    ArrayCopy paramValue, 0, extraData, UBound(paramIndex) + 1, UBound(paramValue) + 1
    result = deviceConn.SetPropertyExt_2(DeviceProperty_SysParam, extraProperty, d, extraData)
    If result Then
        MsgBox "Set Parameter Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Set Parameter Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Prompt"
End Sub

Private Sub btn_PowerGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_Type.ListIndex Then
        MsgBox "Please Select Type", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_SN.ListIndex Then
        MsgBox "Please Select SN", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        ReDim Preserve extraData(0) As Byte
        ReDim Preserve extraData(1) As Byte
        ReDim Preserve extraData(2) As Byte
        ReDim Preserve extraData(3) As Byte
        extraData = deviceTool.GetBytesByNum(CStr(DevicePowerTimer), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_PowerOnOffTime, extraProperty, d, extraData)
        If result Then
            Dim timerBytes(PowerTimeLength - 1) As Byte
            Dim idx As Long
            idx = (cbo_Type.ListIndex + 1) * PowerTimeCount * PowerTimeLength + cbo_SN.ListIndex * PowerTimeLength
            ArrayCopy extraData, idx, timerBytes, 0, UBound(timerBytes) + 1
            cbo_Hour.ListIndex = timerBytes(0)
            cbo_Minute.ListIndex = timerBytes(1)
            chk_Enable.value = timerBytes(2)
        Else
            MsgBox "Get Timer Shutdown Settings Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get Timer Shutdown Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_PowerSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim deviceStatus() As Byte
    Dim result As Boolean
    
    If -1 = cbo_Type.ListIndex Then
        MsgBox "Please Select Type", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
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
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        extraData = deviceTool.GetBytesByNum(CStr(DevicePowerTimer), NumberType_Int32Bit)
        result = deviceConn.GetPropertyExt_2(DeviceProperty_PowerOnOffTime, extraProperty, d, extraData)
        If False = result Then
            MsgBox "Set Timer Shutdown Settings Fail", vbOKOnly + vbExclamation, "Prompt"
            deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
            result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
            Exit Sub
        End If
        
        extraProperty = deviceTool.GetBytesByNum(CStr(DevicePowerTimer), NumberType_Int32Bit)
        Dim idx As Long
        idx = (cbo_Type.ListIndex + 1) * PowerTimeCount * PowerTimeLength + cbo_SN.ListIndex * PowerTimeLength
        extraData(idx + 0) = CByte(cbo_Hour.ListIndex)
        extraData(idx + 1) = CByte(cbo_Minute.ListIndex)
        extraData(idx + 2) = CByte(chk_Enable.value)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_PowerOnOffTime, extraProperty, d, extraData)
        If result Then
            MsgBox "Set Timer Shutdown Settings Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Set Timer Shutdown Settings Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get Timer Shutdown Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_StandbyTitleGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    extraData = deviceTool.GetBytesByNum(CStr(DeviceStandbyTitle), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_StandbyTitle, extraProperty, d, extraData)
    If result Then
        txt_StandbyTitle.Text = deviceTool.GetString(extraData)
    Else
        MsgBox "Get Standby Title Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_StandbyTitleSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    If "" = Trim(txt_StandbyTitle.Text) Then
        MsgBox "Please Input Standby Title", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    extraProperty = deviceTool.GetBytesByNum(CStr(DeviceStandbyTitle), NumberType_Int32Bit)
    extraData = deviceTool.GetBytes(Trim(txt_StandbyTitle.Text))
    result = deviceConn.SetPropertyExt_2(DeviceProperty_StandbyTitle, extraProperty, d, extraData)
    If result Then
        MsgBox "Set Standby Title Settings Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Set Standby Title Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_TimeGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    result = deviceConn.GetPropertyExt_2(DeviceProperty_DeviceTime, extraProperty, d, extraData)
    If result Then
        txt_Time.Text = CStr(CLng(extraData(0)) + BeginYear) + "-" + CStr(extraData(1)) + "-" + CStr(extraData(2)) + " " + _
        CStr(extraData(3)) + ":" + CStr(extraData(4)) + ":" + CStr(extraData(5))
    Else
        MsgBox "Get Device Time Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_TimeSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    result = deviceConn.SetPropertyExt_2(DeviceProperty_DeviceTime, extraProperty, d, extraData)
    If result Then
        MsgBox "Set Device Time Settings Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Set Device Time Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_UploadSound_Click()
    On Error GoTo ErrorHandle
    If d.CommunicationType <> CommunicationType.CommunicationType_Usb Then
        MsgBox "Upload Sound Only Supports USB Communication", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    If -1 = cbo_SoundType.ListIndex Then
        MsgBox "Please Selected Sound Type", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If
    
    dataChunk = 0
    btn_Dialog.Filter = "WAV(*.wav)|*.wav"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Open Wave File"
    btn_Dialog.Flags = cdlOFNHideReadOnly
    btn_Dialog.ShowOpen
    If "" <> Trim(btn_Dialog.fileName) Then
        Dim length As Long
        Dim sound() As Byte
        length = FileLen(btn_Dialog.fileName)
        ReDim sound(length - 1) As Byte
        
        Open btn_Dialog.fileName For Binary As #1
        Get #1, , sound
        Close #1
        
        If False = CheckWaveFormat(sound, dataChunk) Then
            Exit Sub
        End If
        
        If UploadSound(sound) Then
            MsgBox "Upload Sound Success", vbOKOnly + vbInformation, "Prompt"
        Else
            MsgBox "Upload Sound Fail", vbOKOnly + vbExclamation, "Prompt"
        End If
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Prompt"
End Sub

Private Sub btn_WelcomeTitleGet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    extraData = deviceTool.GetBytesByNum(CStr(DeviceTile), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_WelcomeTitle, extraProperty, d, extraData)
    If result Then
        txt_WelcomeTitle.Text = deviceTool.GetString(extraData)
    Else
        MsgBox "Get Welcome Title Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_WelcomeTitleSet_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    If "" = Trim(txt_WelcomeTitle.Text) Then
        MsgBox "Please Input Welcome Title", vbOKOnly + vbExclamation, "Prompt"
        Exit Sub
    End If

    extraProperty = deviceTool.GetBytesByNum(CStr(DeviceTile), NumberType_Int32Bit)
    extraData = deviceTool.GetBytes(Trim(txt_WelcomeTitle.Text))
    result = deviceConn.SetPropertyExt_2(DeviceProperty_WelcomeTitle, extraProperty, d, extraData)
    If result Then
        MsgBox "Set Welcome Title Settings Success", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Set Welcome Title Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Form_Load()
    Dim i As Long
    Set d = CMForm.d
    Set deviceConn = CMForm.deviceConn
    Set deviceTool = New Zd2911Tools
    
    For i = 1 To PowerTimeCount
        cbo_SN.AddItem CStr(i)
    Next
    
    For i = 0 To 23
        cbo_Hour.AddItem CStr(i)
    Next
    
    For i = 0 To 59
        cbo_Minute.AddItem CStr(i)
    Next
End Sub

Private Sub RestartCommand_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte, paramValue() As Byte, paramIndex() As Byte
    Dim result As Boolean
    
    paramIndex = deviceTool.GetBytesByNum(1, NumberType_Int32Bit)
    paramValue = deviceTool.GetBytesByNum(2, NumberType_Int32Bit)
    ReDim extraData(UBound(paramIndex) + UBound(paramValue) + 1) As Byte
    ArrayCopy paramIndex, 0, extraData, 0, UBound(paramIndex) + 1
    ArrayCopy paramValue, 0, extraData, UBound(paramIndex) + 1, UBound(paramValue) + 1
    result = deviceConn.SetPropertyExt_2(DeviceProperty_PowerOff, extraProperty, d, extraData)
    If result Then
        MsgBox "Restart Success, need to reconnect the device!", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Restart Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Prompt"
End Sub

Private Sub SerialNoCommand_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte
    Dim result As Boolean
    
    ReDim Preserve extraData(0) As Byte
    ReDim Preserve extraData(1) As Byte
    ReDim Preserve extraData(2) As Byte
    ReDim Preserve extraData(3) As Byte
    extraData = deviceTool.GetBytesByNum(CStr(DeviceSerialNo), NumberType_Int32Bit)
    result = deviceConn.GetPropertyExt_2(DeviceProperty_SerialNo, extraProperty, d, extraData)
    If result Then
        SerialNoText.Text = deviceTool.GetString(extraData)
    Else
        MsgBox "Get SerialNo Settings Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub ShutdownCommand_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte, extraData() As Byte, paramValue() As Byte, paramIndex() As Byte
    Dim result As Boolean
    
    paramIndex = deviceTool.GetBytesByNum(1, NumberType_Int32Bit)
    paramValue = deviceTool.GetBytesByNum(1, NumberType_Int32Bit)
    ReDim extraData(UBound(paramIndex) + UBound(paramValue) + 1) As Byte
    ArrayCopy paramIndex, 0, extraData, 0, UBound(paramIndex) + 1
    ArrayCopy paramValue, 0, extraData, UBound(paramIndex) + 1, UBound(paramValue) + 1
    result = deviceConn.SetPropertyExt_2(DeviceProperty_PowerOff, extraProperty, d, extraData)
    If result Then
        MsgBox "Shutdown Success, need to reconnect the device!", vbOKOnly + vbInformation, "Prompt"
    Else
        MsgBox "Shutdown Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Prompt"
End Sub

