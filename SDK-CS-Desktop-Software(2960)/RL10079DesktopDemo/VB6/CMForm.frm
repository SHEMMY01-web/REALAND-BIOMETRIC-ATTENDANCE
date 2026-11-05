VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form CMForm 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "ZDC2911Demo"
   ClientHeight    =   4455
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   7920
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4455
   ScaleWidth      =   7920
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin MSComDlg.CommonDialog btn_Dialog 
      Left            =   7200
      Top             =   3000
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.CommandButton btn_FromBinFile 
      Caption         =   "From bin file"
      Height          =   495
      Left            =   5280
      TabIndex        =   24
      Top             =   3000
      Width           =   1815
   End
   Begin VB.CommandButton btn_RLT 
      Caption         =   "Real Time Log"
      Height          =   495
      Left            =   3360
      TabIndex        =   23
      Top             =   3000
      Visible         =   0   'False
      Width           =   1815
   End
   Begin VB.CommandButton btn_GLog 
      Caption         =   "GLog Mangement"
      Height          =   495
      Left            =   5280
      TabIndex        =   22
      Top             =   2280
      Width           =   1815
   End
   Begin VB.CommandButton btn_SLog 
      Caption         =   "SLog Mangement"
      Height          =   495
      Left            =   3360
      TabIndex        =   21
      Top             =   2280
      Width           =   1815
   End
   Begin VB.CommandButton btn_Emp 
      Caption         =   "Employee Management"
      Height          =   495
      Left            =   5280
      TabIndex        =   20
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton btn_MessageSettings 
      Caption         =   "Message Settings"
      Height          =   495
      Left            =   3360
      TabIndex        =   19
      Top             =   1560
      Width           =   1815
   End
   Begin VB.CommandButton btn_AlarmSettings 
      Caption         =   "Alarm Settings"
      Height          =   495
      Left            =   5280
      TabIndex        =   18
      Top             =   840
      Width           =   1815
   End
   Begin VB.CommandButton btn_SysSettings 
      Caption         =   "System Settings"
      Height          =   495
      Left            =   3360
      TabIndex        =   17
      Top             =   840
      Width           =   1815
   End
   Begin VB.CommandButton btn_Close 
      Caption         =   "Close Device"
      Height          =   495
      Left            =   5280
      TabIndex        =   16
      Top             =   120
      Width           =   1815
   End
   Begin VB.CommandButton btn_Open 
      Caption         =   "Open Device"
      Height          =   495
      Left            =   3360
      TabIndex        =   15
      Top             =   120
      Width           =   1815
   End
   Begin VB.TextBox txt_Port 
      Height          =   375
      Left            =   1320
      TabIndex        =   14
      Text            =   "5500"
      Top             =   3840
      Width           =   1935
   End
   Begin VB.TextBox txt_IPAddress 
      Height          =   375
      Left            =   1320
      TabIndex        =   12
      Text            =   "192.168.1.225"
      Top             =   3360
      Width           =   1935
   End
   Begin VB.OptionButton rdb_TCP 
      Caption         =   "TCP Connection"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   2880
      Width           =   3255
   End
   Begin VB.ComboBox cbo_Baudrate 
      Height          =   300
      ItemData        =   "CMForm.frx":0000
      Left            =   1200
      List            =   "CMForm.frx":0013
      Style           =   2  'Dropdown List
      TabIndex        =   9
      Top             =   2520
      Width           =   1935
   End
   Begin VB.ComboBox cbo_Comm 
      Height          =   300
      ItemData        =   "CMForm.frx":003A
      Left            =   1200
      List            =   "CMForm.frx":0056
      Style           =   2  'Dropdown List
      TabIndex        =   7
      Top             =   2040
      Width           =   1935
   End
   Begin VB.OptionButton rdb_Comm 
      Caption         =   "Serial Connection"
      Height          =   375
      Left            =   120
      TabIndex        =   5
      Top             =   1560
      Width           =   3255
   End
   Begin VB.OptionButton rdb_USB 
      Caption         =   "USB Connection"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1080
      Value           =   -1  'True
      Width           =   3135
   End
   Begin VB.TextBox txt_CommKey 
      Height          =   375
      Left            =   1320
      TabIndex        =   3
      Text            =   "0"
      Top             =   600
      Width           =   1935
   End
   Begin VB.TextBox txt_DN 
      Height          =   375
      Left            =   1320
      TabIndex        =   1
      Text            =   "1"
      Top             =   120
      Width           =   1935
   End
   Begin VB.Label lbl_Port 
      Caption         =   "Port:"
      Height          =   255
      Left            =   240
      TabIndex        =   13
      Top             =   3840
      Width           =   975
   End
   Begin VB.Label lbl_IpAddress 
      Caption         =   "IPAddress:"
      Height          =   255
      Left            =   240
      TabIndex        =   11
      Top             =   3360
      Width           =   975
   End
   Begin VB.Label lbl_Baudrate 
      Caption         =   "Baudrate:"
      Height          =   255
      Left            =   240
      TabIndex        =   8
      Top             =   2520
      Width           =   975
   End
   Begin VB.Label lbl_Comm 
      Caption         =   "Comm Key:"
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   2040
      Width           =   975
   End
   Begin VB.Label lbl_CommKey 
      Caption         =   "Comm Key:"
      Height          =   255
      Left            =   240
      TabIndex        =   2
      Top             =   600
      Width           =   975
   End
   Begin VB.Label lbl_DN 
      Caption         =   "Device ID:"
      Height          =   255
      Left            =   240
      TabIndex        =   0
      Top             =   120
      Width           =   975
   End
End
Attribute VB_Name = "CMForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Public d As Device
Public deviceConn As Zd2911DeviceConnection
Private deviceTool As Zd2911Tools
Private Sub SetControlEnable(ByVal flag As Boolean)
    btn_SysSettings.Enabled = flag
    btn_AlarmSettings.Enabled = flag
    btn_MessageSettings.Enabled = flag
    btn_Emp.Enabled = flag
    btn_GLog.Enabled = flag
    btn_SLog.Enabled = flag
    btn_Close.Enabled = flag
End Sub

Private Sub btn_AlarmSettings_Click()
    AlarmForm.Show vbModal
End Sub

Private Sub btn_Close_Click()
    deviceConn.Close
    SetControlEnable False
    btn_Open.Enabled = True
    Set d = Nothing
    Set deviceConn = Nothing
End Sub

Private Sub btn_Emp_Click()
    EnrollForm.Show vbModal
End Sub

Private Sub btn_FromBinFile_Click()

    BinFileLogForm.Show vbModal
    
End Sub

Private Sub btn_GLog_Click()
    GLogForm.Show vbModal
End Sub

Private Sub btn_MessageSettings_Click()
    MessageForm.Show vbModal
End Sub

Private Sub btn_Open_Click()
    On Error GoTo ErrorHandler
    Set d = New Device
    d.DN = CInt(Trim(txt_DN.Text))
    d.Password = Trim(txt_CommKey.Text)
    d.ConnectionModel = 5
    If rdb_USB.value Then
        d.CommunicationType = CommunicationType.CommunicationType_Usb
    ElseIf rdb_Comm.value Then
        d.CommunicationType = CommunicationType.CommunicationType_Serial
        d.SerialPort = cbo_Comm.ListIndex + 1
        d.Baudrate = CLng(cbo_Baudrate.List(cbo_Baudrate.ListIndex))
    Else
        d.CommunicationType = CommunicationType.CommunicationType_Tcp
        d.IpAddress = Trim(txt_IPAddress.Text)
        d.IpPort = CInt(Trim(txt_Port.Text))
    End If
    
    Set deviceConn = New Zd2911DeviceConnection
    If deviceConn.Open(d) > 0 Then
        SetControlEnable True
        btn_Open.Enabled = False
    Else
        MsgBox "Connect Device Fail", vbOKOnly + vbExclamation, "Prompt"
    End If
    
    Exit Sub
ErrorHandler:
    MsgBox "Error: " + Err.Description, vbOKOnly + vbCritical, "Error"
End Sub

Private Sub btn_RLT_Click()
    RTLForm.Show vbModal
End Sub

Private Sub btn_SLog_Click()
    SLogForm.Show vbModal
End Sub

Private Sub btn_SysSettings_Click()
    SystemForm.Show vbModal
End Sub

Private Sub Form_Load()
    SetControlEnable False
End Sub
