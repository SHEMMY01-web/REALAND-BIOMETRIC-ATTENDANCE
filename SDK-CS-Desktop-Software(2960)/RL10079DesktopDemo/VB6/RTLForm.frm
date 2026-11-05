VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.1#0"; "MSCOMCTL.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form RTLForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Real Time Log"
   ClientHeight    =   6585
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   11445
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   6585
   ScaleWidth      =   11445
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin MSWinsockLib.Winsock win_Socket 
      Left            =   0
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin MSComctlLib.ListView lvw_Logs 
      Height          =   5775
      Left            =   120
      TabIndex        =   9
      Top             =   600
      Width           =   11175
      _ExtentX        =   19711
      _ExtentY        =   10186
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
   Begin VB.CommandButton btn_Listen 
      Caption         =   "Listen"
      Height          =   375
      Left            =   10080
      TabIndex        =   8
      Top             =   120
      Width           =   1215
   End
   Begin VB.ComboBox cbo_Baudrate 
      Height          =   300
      ItemData        =   "RTLForm.frx":0000
      Left            =   8640
      List            =   "RTLForm.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   6
      Top             =   120
      Width           =   1335
   End
   Begin VB.ComboBox cbo_Comm 
      Height          =   300
      ItemData        =   "RTLForm.frx":003A
      Left            =   6240
      List            =   "RTLForm.frx":0056
      Style           =   2  'Dropdown List
      TabIndex        =   4
      Top             =   120
      Width           =   1335
   End
   Begin VB.TextBox txt_Port 
      Height          =   375
      Left            =   3600
      TabIndex        =   3
      Text            =   "5055"
      Top             =   120
      Width           =   1455
   End
   Begin VB.ComboBox cbo_Mode 
      Height          =   300
      ItemData        =   "RTLForm.frx":008A
      Left            =   1320
      List            =   "RTLForm.frx":0094
      Style           =   2  'Dropdown List
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label lbl_Baudrate 
      Caption         =   "Baudrate:"
      Height          =   255
      Left            =   7680
      TabIndex        =   7
      Top             =   120
      Width           =   975
   End
   Begin VB.Label lbl_Comm 
      Caption         =   "Comm Key:"
      Height          =   255
      Left            =   5280
      TabIndex        =   5
      Top             =   120
      Width           =   975
   End
   Begin VB.Label Label2 
      Caption         =   "UDP Port:"
      Height          =   255
      Left            =   2640
      TabIndex        =   2
      Top             =   120
      Width           =   1095
   End
   Begin VB.Label Label1 
      Caption         =   "Monitor Mode:"
      Height          =   375
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   1335
   End
End
Attribute VB_Name = "RTLForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Private listener As Zd2911Listener
Attribute listener.VB_VarHelpID = -1

Private Sub btn_Listen_Click()
    On Error GoTo ErrorHandle
    If btn_Listen.Caption = "Listen" Then
        Dim m As Monitor
        Set m = New Monitor

        If 0 = cbo_Mode.ListIndex Then
            m.UDPAddress = win_Socket.LocalIP
            m.UDPPort = CInt(Trim(txt_Port.Text))
            m.mode = 0
        Else
            m.SerialPort = cbo_Comm.ListIndex + 1
            m.SerialBaudRate = cbo_Baudrate.List(cbo_Baudrate.ListIndex)
            m.mode = 1
        End If
        
        Set listener = New Zd2911Listener
        If listener.OpenListen(m) Then
            btn_Listen.Caption = "Cancle"
            'listener.add_ReceiveHandlerExt
        End If
    Else
        btn_Listen.Caption = "Listen"
        listener.CloseListen
        Set listener = Nothing
    End If
    Exit Sub
    
ErrorHandle:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub cbo_Mode_Change()
    Select Case cbo_Mode.ListIndex
        Case 0:
            txt_Port.Enabled = True
            cbo_Comm.Enabled = False
            cbo_Baudrate.Enabled = False
            
        Case 1:
            txt_Port.Enabled = False
            cbo_Comm.Enabled = True
            cbo_Baudrate.Enabled = True
            cbo_Comm.ListIndex = 0
            cbo_Baudrate.ListIndex = 0
    End Select
End Sub

Private Sub Form_Load()
    lvw_Logs.ColumnHeaders.Add , , "SN", 800
    lvw_Logs.ColumnHeaders.Add , , "Device No.", 1200
    lvw_Logs.ColumnHeaders.Add , , "User ID", 1800
    lvw_Logs.ColumnHeaders.Add , , "Status", 2000
    lvw_Logs.ColumnHeaders.Add , , "Action", 2000
    lvw_Logs.ColumnHeaders.Add , , "Clock", 3000
    
    cbo_Mode.ListIndex = 0
End Sub

Private Sub add_ReceiveHandlerExt(value As ReceiveEventArgExt)
    Dim r As RecordExt
    Set r = value.Record
End Sub
