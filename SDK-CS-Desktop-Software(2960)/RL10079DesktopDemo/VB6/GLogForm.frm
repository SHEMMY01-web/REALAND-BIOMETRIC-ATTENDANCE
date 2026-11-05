VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form GLogForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "GLog Management"
   ClientHeight    =   7455
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   12270
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7455
   ScaleWidth      =   12270
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton btn_AllGLogCount 
      Caption         =   "Get All GLog Count"
      Height          =   495
      Left            =   4680
      TabIndex        =   14
      Top             =   6840
      Width           =   2415
   End
   Begin VB.CommandButton btn_NewGlogCount 
      Caption         =   "Get New GLog Count"
      Height          =   495
      Left            =   2160
      TabIndex        =   13
      Top             =   6840
      Width           =   2415
   End
   Begin VB.TextBox txt_AllGLogCount 
      Height          =   375
      Left            =   11160
      Locked          =   -1  'True
      TabIndex        =   12
      Top             =   6240
      Width           =   975
   End
   Begin VB.TextBox txt_NewGLogCount 
      Height          =   375
      Left            =   8400
      Locked          =   -1  'True
      TabIndex        =   10
      Top             =   6240
      Width           =   975
   End
   Begin VB.CommandButton btn_Clear 
      Caption         =   "Clear All GLog"
      Height          =   495
      Left            =   10320
      TabIndex        =   8
      Top             =   6840
      Width           =   1815
   End
   Begin VB.CommandButton btn_All 
      Caption         =   "Get All GLog"
      Height          =   495
      Left            =   8760
      TabIndex        =   7
      Top             =   6840
      Width           =   1455
   End
   Begin VB.CommandButton btn_New 
      Caption         =   "Get New GLog"
      Height          =   495
      Left            =   7200
      TabIndex        =   6
      Top             =   6840
      Width           =   1455
   End
   Begin VB.CheckBox chk_NewFlag 
      Caption         =   "Clear New Glog Position"
      Height          =   375
      Left            =   4320
      TabIndex        =   5
      Top             =   6240
      Width           =   2415
   End
   Begin MSComCtl2.DTPicker dtp_Begin 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "yyyy-MM-dd"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2052
         SubFormatType   =   3
      EndProperty
      Height          =   375
      Left            =   720
      TabIndex        =   1
      Top             =   6240
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      _Version        =   393216
      Format          =   63373315
      CurrentDate     =   40179
      MaxDate         =   73050
      MinDate         =   40179
   End
   Begin MSComctlLib.ListView lvw_Logs 
      Height          =   5895
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   12015
      _ExtentX        =   21193
      _ExtentY        =   10398
      View            =   3
      LabelWrap       =   -1  'True
      HideSelection   =   0   'False
      FullRowSelect   =   -1  'True
      GridLines       =   -1  'True
      _Version        =   393217
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      BorderStyle     =   1
      Appearance      =   1
      NumItems        =   0
   End
   Begin MSComCtl2.DTPicker dtp_End 
      BeginProperty DataFormat 
         Type            =   1
         Format          =   "yyyy-MM-dd"
         HaveTrueFalseNull=   0
         FirstDayOfWeek  =   0
         FirstWeekOfYear =   0
         LCID            =   2052
         SubFormatType   =   3
      EndProperty
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   6240
      Width           =   1455
      _ExtentX        =   2566
      _ExtentY        =   661
      _Version        =   393216
      Format          =   63373315
      CurrentDate     =   73050
      MaxDate         =   73050
      MinDate         =   40179
   End
   Begin VB.Label Label4 
      Caption         =   "All GLog Count:"
      Height          =   375
      Left            =   9600
      TabIndex        =   11
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "New GLog Count:"
      Height          =   375
      Left            =   6840
      TabIndex        =   9
      Top             =   6240
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "To:"
      Height          =   255
      Left            =   2400
      TabIndex        =   3
      Top             =   6240
      Width           =   375
   End
   Begin VB.Label Label1 
      Caption         =   "From:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   6240
      Width           =   615
   End
End
Attribute VB_Name = "GLogForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private d As Device
Private deviceConn As Zd2911DeviceConnection
Private deviceTool As Zd2911Tools

Private Function AddRecordToListView(ByRef records() As RecordExt)
    Dim r As Variant
    Dim idx As Long, i As Long
    Dim s As String
    idx = 1
    
    lvw_Logs.ListItems.Clear
    For Each r In records
        s = GetStatus(r.Verify)
        Dim a As String
        a = ""
        For i = 1 To MaxAction
            If 0 <> deviceTool.BitCheck(r.Action, i - 1) Then
                Select Case i - 1
                    Case 0
                        a = a + "F" + " "
                    Case 1
                        a = a + "P" + " "
                    Case 2
                        a = a + "C" + " "
                    Case 3
                        a = a + "I" + " "
                End Select
            End If
        Next
        
        Dim li As ListItem
        Set li = lvw_Logs.ListItems.Add(idx, , CStr(idx))
        li.SubItems(1) = CStr(r.DN)
        li.SubItems(2) = r.DIN
        li.SubItems(3) = s
        li.SubItems(4) = a
        li.SubItems(5) = Format(r.Clock, "General Date")
        idx = idx + 1
    Next
End Function

Private Sub btn_All_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte
    Dim deviceStatus() As Byte
    Dim flagBytes(1) As Byte
    Dim dateBytes() As Byte
    Dim result As Boolean
    Dim records() As RecordExt

    flagBytes(0) = 0 'All GLog flag
    If chk_NewFlag.value Then
        flagBytes(1) = 1
    Else
        flagBytes(1) = 0
    End If
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    ReDim Preserve dateBytes(0) As Byte
    dateBytes(0) = CByte(Year(dtp_Begin.value) - BeginYear)
    ReDim Preserve dateBytes(1) As Byte
    dateBytes(1) = Month(dtp_Begin.value)
    ReDim Preserve dateBytes(2) As Byte
    dateBytes(2) = Day(dtp_Begin.value)
    ReDim Preserve dateBytes(3) As Byte
    dateBytes(3) = CByte(Year(dtp_End.value) - BeginYear)
    ReDim Preserve dateBytes(4) As Byte
    dateBytes(4) = Month(dtp_End.value)
    ReDim Preserve dateBytes(5) As Byte
    dateBytes(5) = Day(dtp_End.value)
    
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        result = deviceConn.GetPropertyExt_2(DeviceProperty_AttRecords, flagBytes, d, dateBytes)
        If result Then
            records = deviceTool.GetGLogList(dateBytes)
            AddRecordToListView records
        Else
            lvw_Logs.ListItems.Clear
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get All GLog Fail.", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_AllGLogCount_Click()
    On Error GoTo ErrorHandle
    Dim flagBytes(0) As Byte
    Dim dateBytes() As Byte
    Dim result As Boolean
    
    flagBytes(0) = 0 'All GLog flag
    ReDim Preserve dateBytes(0) As Byte
    dateBytes(0) = CByte(Year(dtp_Begin.value) - BeginYear)
    ReDim Preserve dateBytes(1) As Byte
    dateBytes(1) = Month(dtp_Begin.value)
    ReDim Preserve dateBytes(2) As Byte
    dateBytes(2) = Day(dtp_Begin.value)
    ReDim Preserve dateBytes(3) As Byte
    dateBytes(3) = CByte(Year(dtp_End.value) - BeginYear)
    ReDim Preserve dateBytes(4) As Byte
    dateBytes(4) = Month(dtp_End.value)
    ReDim Preserve dateBytes(5) As Byte
    dateBytes(5) = Day(dtp_End.value)
    
    result = deviceConn.GetPropertyExt_2(DeviceProperty_AttRecordsCount, flagBytes, d, dateBytes)
    If result Then
        txt_AllGLogCount.Text = deviceTool.GetStringByNum(dateBytes, 0, NumberType_Int32Bit)
    Else
        txt_AllGLogCount.Text = CStr(0)
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_Clear_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte
    Dim deviceStatus() As Byte
    Dim extraData() As Byte
    Dim result As Boolean
    
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        result = deviceConn.SetPropertyExt_2(DeviceProperty_AttRecords, extraProperty, d, extraData)
        If result Then
            MsgBox "Clear All GLog Success", vbOKOnly + vbInformation, "Prompt"
            lvw_Logs.ListItems.Clear
        Else
            MsgBox "Clear All GLog Fail", vbOKOnly + vbCritical, "Prompt"
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Clear All GLog Fail.", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_New_Click()
    On Error GoTo ErrorHandle
    Dim extraProperty() As Byte
    Dim deviceStatus() As Byte
    Dim flagBytes(1) As Byte
    Dim dateBytes() As Byte
    Dim result As Boolean
    Dim records() As RecordExt

    flagBytes(0) = 1 'New GLog flag
    flagBytes(1) = 1
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceBusy), NumberType_Int32Bit)
    ReDim Preserve dateBytes(0) As Byte
    dateBytes(0) = CByte(Year(dtp_Begin.value) - BeginYear)
    ReDim Preserve dateBytes(1) As Byte
    dateBytes(1) = Month(dtp_Begin.value)
    ReDim Preserve dateBytes(2) As Byte
    dateBytes(2) = Day(dtp_Begin.value)
    ReDim Preserve dateBytes(3) As Byte
    dateBytes(3) = CByte(Year(dtp_End.value) - BeginYear)
    ReDim Preserve dateBytes(4) As Byte
    dateBytes(4) = Month(dtp_End.value)
    ReDim Preserve dateBytes(5) As Byte
    dateBytes(5) = Day(dtp_End.value)
    
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    If result Then
        result = deviceConn.GetPropertyExt_2(DeviceProperty_AttRecords, flagBytes, d, dateBytes)
        If result Then
            records = deviceTool.GetGLogList(dateBytes)
            AddRecordToListView records
        Else
            lvw_Logs.ListItems.Clear
        End If
        
        deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
        result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
    Else
        MsgBox "Get New GLog Fail.", vbOKOnly + vbExclamation, "Prompt"
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
    deviceStatus = deviceTool.GetBytesByNum(CStr(DeviceIdle), NumberType_Int32Bit)
    result = deviceConn.SetPropertyExt_2(DeviceProperty_Enable, extraProperty, d, deviceStatus)
End Sub

Private Sub btn_NewGlogCount_Click()
    On Error GoTo ErrorHandle
    Dim flagBytes(0) As Byte
    Dim dateBytes() As Byte
    Dim result As Boolean
    
    flagBytes(0) = 1 'New GLog flag
    ReDim Preserve dateBytes(0) As Byte
    dateBytes(0) = CByte(Year(dtp_Begin.value) - BeginYear)
    ReDim Preserve dateBytes(1) As Byte
    dateBytes(1) = Month(dtp_Begin.value)
    ReDim Preserve dateBytes(2) As Byte
    dateBytes(2) = Day(dtp_Begin.value)
    ReDim Preserve dateBytes(3) As Byte
    dateBytes(3) = CByte(Year(dtp_End.value) - BeginYear)
    ReDim Preserve dateBytes(4) As Byte
    dateBytes(4) = Month(dtp_End.value)
    ReDim Preserve dateBytes(5) As Byte
    dateBytes(5) = Day(dtp_End.value)
    
    result = deviceConn.GetPropertyExt_2(DeviceProperty_AttRecordsCount, flagBytes, d, dateBytes)
    If result Then
        txt_NewGLogCount.Text = deviceTool.GetStringByNum(dateBytes, 0, NumberType_Int32Bit)
    Else
        txt_NewGLogCount.Text = CStr(0)
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Form_Load()
    Set d = CMForm.d
    Set deviceConn = CMForm.deviceConn
    Set deviceTool = New Zd2911Tools
    lvw_Logs.ColumnHeaders.Add , , "SN", 800
    lvw_Logs.ColumnHeaders.Add , , "Device No.", 1200
    lvw_Logs.ColumnHeaders.Add , , "User ID", 1800
    lvw_Logs.ColumnHeaders.Add , , "Status", 2000
    lvw_Logs.ColumnHeaders.Add , , "Action", 2000
    lvw_Logs.ColumnHeaders.Add , , "Clock", 3000
End Sub

