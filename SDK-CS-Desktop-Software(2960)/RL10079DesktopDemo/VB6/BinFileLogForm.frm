VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form BinFileLogForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Log from bin file"
   ClientHeight    =   6705
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12090
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6705
   ScaleWidth      =   12090
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.CommandButton btn_FromBinFile 
      Caption         =   "Open bin file"
      Height          =   495
      Left            =   10200
      TabIndex        =   1
      Top             =   6000
      Width           =   1815
   End
   Begin MSComctlLib.ListView lvw_Logs 
      Height          =   5895
      Left            =   0
      TabIndex        =   0
      Top             =   0
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
   Begin MSComDlg.CommonDialog btn_Dialog 
      Left            =   9600
      Top             =   6000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
End
Attribute VB_Name = "BinFileLogForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public d As Device
Public deviceConn As Zd2911DeviceConnection
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

Private Sub btn_FromBinFile_Click()
    On Error GoTo ErrorHandle
    btn_Dialog.Filter = "Log data | NewGlog_*.bin;HisGLog_*.bin;"
    btn_Dialog.FilterIndex = 1
    btn_Dialog.DialogTitle = "Open bin Log data"
    btn_Dialog.Flags = cdlOFNHideReadOnly
    btn_Dialog.ShowOpen
    If "" <> Trim(btn_Dialog.fileName) Then
        Dim Buffer() As Byte
        Dim dataBytes() As Byte
        Dim result As Boolean
        Dim records() As RecordExt
        Set deviceTool = New Zd2911Tools
        
        Set d = New Device
        d.ConnectionModel = 5   'need
        d.CommunicationType = CommunicationType.CommunicationType_Usb   'need
        Set deviceConn = New Zd2911DeviceConnection
        deviceConn.Open d   'not real connect to the device, just create a "device connection" OBJECT.
        
        Buffer = btn_Dialog.fileName
        
        result = deviceConn.GetPropertyExt_2(DeviceProperty_BinFileRecord, Buffer, d, dataBytes)
        If result Then
            lvw_Logs.ListItems.Clear
            records = deviceTool.GetGLogList(dataBytes)
            AddRecordToListView records
        Else
            lvw_Logs.ListItems.Clear
        End If
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Form_Load()
    lvw_Logs.ColumnHeaders.Add , , "SN", 800
    lvw_Logs.ColumnHeaders.Add , , "Device No.", 1200
    lvw_Logs.ColumnHeaders.Add , , "User ID", 1800
    lvw_Logs.ColumnHeaders.Add , , "Status", 2000
    lvw_Logs.ColumnHeaders.Add , , "Action", 2000
    lvw_Logs.ColumnHeaders.Add , , "Clock", 3000
End Sub
