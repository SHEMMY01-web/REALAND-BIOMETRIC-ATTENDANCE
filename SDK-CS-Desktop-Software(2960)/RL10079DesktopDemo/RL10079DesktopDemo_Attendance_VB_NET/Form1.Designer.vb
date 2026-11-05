<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.groupBox1 = New System.Windows.Forms.GroupBox()
        Me.nud_Port = New System.Windows.Forms.NumericUpDown()
        Me.nud_Pwd = New System.Windows.Forms.NumericUpDown()
        Me.btn_CloseDevice = New System.Windows.Forms.Button()
        Me.nud_DN = New System.Windows.Forms.NumericUpDown()
        Me.btn_OpenDevice = New System.Windows.Forms.Button()
        Me.cbo_BaudRate = New System.Windows.Forms.ComboBox()
        Me.cbo_COMM = New System.Windows.Forms.ComboBox()
        Me.lbl_BaudRate = New System.Windows.Forms.Label()
        Me.lbl_COMM = New System.Windows.Forms.Label()
        Me.rdb_TCP = New System.Windows.Forms.RadioButton()
        Me.rdb_COMM = New System.Windows.Forms.RadioButton()
        Me.rdb_USB = New System.Windows.Forms.RadioButton()
        Me.txt_IP = New System.Windows.Forms.TextBox()
        Me.lbl_Port = New System.Windows.Forms.Label()
        Me.lbl_IP = New System.Windows.Forms.Label()
        Me.lbl_ConnectionPwd = New System.Windows.Forms.Label()
        Me.lbl_DeviceId = New System.Windows.Forms.Label()
        Me.btn_DeleteFp = New System.Windows.Forms.Button()
        Me.btn_WriteFp = New System.Windows.Forms.Button()
        Me.btn_DeletePwd = New System.Windows.Forms.Button()
        Me.btn_WritePwd = New System.Windows.Forms.Button()
        Me.btn_DeleteCard = New System.Windows.Forms.Button()
        Me.btn_WriteCard = New System.Windows.Forms.Button()
        Me.btn_DeleteAllUser = New System.Windows.Forms.Button()
        Me.btn_DeleteUser = New System.Windows.Forms.Button()
        Me.btn_WriteUserName = New System.Windows.Forms.Button()
        Me.btn_SetRole = New System.Windows.Forms.Button()
        Me.btn_ReadUserName = New System.Windows.Forms.Button()
        Me.btn_ReadCard = New System.Windows.Forms.Button()
        Me.btn_ReadPwd = New System.Windows.Forms.Button()
        Me.btn_ReadFp = New System.Windows.Forms.Button()
        Me.groupBox3 = New System.Windows.Forms.GroupBox()
        Me.txt_DeviceTime = New System.Windows.Forms.TextBox()
        Me.lbl_DeviceTime = New System.Windows.Forms.Label()
        Me.btn_TimeGet = New System.Windows.Forms.Button()
        Me.btn_TimeSet = New System.Windows.Forms.Button()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.btn_GetAllEnrollData = New System.Windows.Forms.Button()
        Me.nud_DIN = New System.Windows.Forms.NumericUpDown()
        Me.cbo_Role = New System.Windows.Forms.ComboBox()
        Me.cbo_FpNo = New System.Windows.Forms.ComboBox()
        Me.txt_UserName = New System.Windows.Forms.TextBox()
        Me.txt_Card = New System.Windows.Forms.TextBox()
        Me.txt_Pwd = New System.Windows.Forms.TextBox()
        Me.lbl_UserName = New System.Windows.Forms.Label()
        Me.lbl_Card = New System.Windows.Forms.Label()
        Me.lbl_Pwd = New System.Windows.Forms.Label()
        Me.lbl_Role = New System.Windows.Forms.Label()
        Me.lbl_FpNo = New System.Windows.Forms.Label()
        Me.lbl_UserId = New System.Windows.Forms.Label()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.GroupBox5 = New System.Windows.Forms.GroupBox()
        Me.lvw_GLogList = New System.Windows.Forms.ListView()
        Me.columnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.columnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.columnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.columnHeader4 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.columnHeader5 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.columnHeader6 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.chk_NewFlag = New System.Windows.Forms.CheckBox()
        Me.dtp_End = New System.Windows.Forms.DateTimePicker()
        Me.dtp_Begin = New System.Windows.Forms.DateTimePicker()
        Me.btn_DownloadNew = New System.Windows.Forms.Button()
        Me.btn_DownloadHistory = New System.Windows.Forms.Button()
        Me.btn_Clear = New System.Windows.Forms.Button()
        Me.lbl_EndDate = New System.Windows.Forms.Label()
        Me.lbl_BeginDate = New System.Windows.Forms.Label()
        Me.btn_OpenFpData = New System.Windows.Forms.Button()
        Me.btn_SaveFpData = New System.Windows.Forms.Button()
        Me.txt_UserFpData = New System.Windows.Forms.TextBox()
        Me.lbl_FpData = New System.Windows.Forms.Label()
        Me.sfd_SaveFpData = New System.Windows.Forms.SaveFileDialog()
        Me.ofd_OpenFpData = New System.Windows.Forms.OpenFileDialog()
        Me.InputFromBinFileButton = New System.Windows.Forms.Button()
        Me.groupBox1.SuspendLayout()
        CType(Me.nud_Port, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nud_Pwd, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.nud_DN, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.groupBox3.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        CType(Me.nud_DIN, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.SuspendLayout()
        '
        'groupBox1
        '
        Me.groupBox1.Controls.Add(Me.nud_Port)
        Me.groupBox1.Controls.Add(Me.nud_Pwd)
        Me.groupBox1.Controls.Add(Me.btn_CloseDevice)
        Me.groupBox1.Controls.Add(Me.nud_DN)
        Me.groupBox1.Controls.Add(Me.btn_OpenDevice)
        Me.groupBox1.Controls.Add(Me.cbo_BaudRate)
        Me.groupBox1.Controls.Add(Me.cbo_COMM)
        Me.groupBox1.Controls.Add(Me.lbl_BaudRate)
        Me.groupBox1.Controls.Add(Me.lbl_COMM)
        Me.groupBox1.Controls.Add(Me.rdb_TCP)
        Me.groupBox1.Controls.Add(Me.rdb_COMM)
        Me.groupBox1.Controls.Add(Me.rdb_USB)
        Me.groupBox1.Controls.Add(Me.txt_IP)
        Me.groupBox1.Controls.Add(Me.lbl_Port)
        Me.groupBox1.Controls.Add(Me.lbl_IP)
        Me.groupBox1.Controls.Add(Me.lbl_ConnectionPwd)
        Me.groupBox1.Controls.Add(Me.lbl_DeviceId)
        Me.groupBox1.Location = New System.Drawing.Point(12, 12)
        Me.groupBox1.Name = "groupBox1"
        Me.groupBox1.Size = New System.Drawing.Size(238, 295)
        Me.groupBox1.TabIndex = 1
        Me.groupBox1.TabStop = False
        Me.groupBox1.Text = "Connection Information"
        '
        'nud_Port
        '
        Me.nud_Port.Location = New System.Drawing.Point(83, 231)
        Me.nud_Port.Maximum = New Decimal(New Integer() {99999, 0, 0, 0})
        Me.nud_Port.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
        Me.nud_Port.Name = "nud_Port"
        Me.nud_Port.Size = New System.Drawing.Size(144, 20)
        Me.nud_Port.TabIndex = 14
        Me.nud_Port.Value = New Decimal(New Integer() {5005, 0, 0, 0})
        '
        'nud_Pwd
        '
        Me.nud_Pwd.Location = New System.Drawing.Point(76, 44)
        Me.nud_Pwd.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
        Me.nud_Pwd.Name = "nud_Pwd"
        Me.nud_Pwd.Size = New System.Drawing.Size(120, 20)
        Me.nud_Pwd.TabIndex = 3
        '
        'btn_CloseDevice
        '
        Me.btn_CloseDevice.Location = New System.Drawing.Point(118, 257)
        Me.btn_CloseDevice.Name = "btn_CloseDevice"
        Me.btn_CloseDevice.Size = New System.Drawing.Size(95, 25)
        Me.btn_CloseDevice.TabIndex = 4
        Me.btn_CloseDevice.Text = "Close Device"
        Me.btn_CloseDevice.UseVisualStyleBackColor = True
        '
        'nud_DN
        '
        Me.nud_DN.Location = New System.Drawing.Point(77, 15)
        Me.nud_DN.Maximum = New Decimal(New Integer() {65535, 0, 0, 0})
        Me.nud_DN.Name = "nud_DN"
        Me.nud_DN.Size = New System.Drawing.Size(120, 20)
        Me.nud_DN.TabIndex = 1
        Me.nud_DN.Value = New Decimal(New Integer() {1, 0, 0, 0})
        '
        'btn_OpenDevice
        '
        Me.btn_OpenDevice.Location = New System.Drawing.Point(17, 257)
        Me.btn_OpenDevice.Name = "btn_OpenDevice"
        Me.btn_OpenDevice.Size = New System.Drawing.Size(95, 25)
        Me.btn_OpenDevice.TabIndex = 3
        Me.btn_OpenDevice.Text = "Open Device"
        Me.btn_OpenDevice.UseVisualStyleBackColor = True
        '
        'cbo_BaudRate
        '
        Me.cbo_BaudRate.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbo_BaudRate.Enabled = False
        Me.cbo_BaudRate.FormattingEnabled = True
        Me.cbo_BaudRate.Items.AddRange(New Object() {"9600", "19200", "38400", "57600", "115200"})
        Me.cbo_BaudRate.Location = New System.Drawing.Point(83, 150)
        Me.cbo_BaudRate.Name = "cbo_BaudRate"
        Me.cbo_BaudRate.Size = New System.Drawing.Size(120, 21)
        Me.cbo_BaudRate.TabIndex = 9
        '
        'cbo_COMM
        '
        Me.cbo_COMM.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbo_COMM.Enabled = False
        Me.cbo_COMM.FormattingEnabled = True
        Me.cbo_COMM.Items.AddRange(New Object() {"COM1", "COM2", "COM3", "COM4", "COM5", "COM6", "COM7", "COM8"})
        Me.cbo_COMM.Location = New System.Drawing.Point(83, 121)
        Me.cbo_COMM.Name = "cbo_COMM"
        Me.cbo_COMM.Size = New System.Drawing.Size(120, 21)
        Me.cbo_COMM.TabIndex = 7
        '
        'lbl_BaudRate
        '
        Me.lbl_BaudRate.AutoSize = True
        Me.lbl_BaudRate.Enabled = False
        Me.lbl_BaudRate.Location = New System.Drawing.Point(18, 153)
        Me.lbl_BaudRate.Name = "lbl_BaudRate"
        Me.lbl_BaudRate.Size = New System.Drawing.Size(53, 13)
        Me.lbl_BaudRate.TabIndex = 8
        Me.lbl_BaudRate.Text = "Baudrate:"
        Me.lbl_BaudRate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_COMM
        '
        Me.lbl_COMM.AutoSize = True
        Me.lbl_COMM.Enabled = False
        Me.lbl_COMM.Location = New System.Drawing.Point(24, 125)
        Me.lbl_COMM.Name = "lbl_COMM"
        Me.lbl_COMM.Size = New System.Drawing.Size(50, 13)
        Me.lbl_COMM.TabIndex = 6
        Me.lbl_COMM.Text = "ComPort:"
        Me.lbl_COMM.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'rdb_TCP
        '
        Me.rdb_TCP.AutoSize = True
        Me.rdb_TCP.Checked = True
        Me.rdb_TCP.Location = New System.Drawing.Point(8, 178)
        Me.rdb_TCP.Name = "rdb_TCP"
        Me.rdb_TCP.Size = New System.Drawing.Size(122, 17)
        Me.rdb_TCP.TabIndex = 10
        Me.rdb_TCP.TabStop = True
        Me.rdb_TCP.Text = "Network Connection"
        Me.rdb_TCP.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rdb_TCP.UseVisualStyleBackColor = True
        '
        'rdb_COMM
        '
        Me.rdb_COMM.AutoSize = True
        Me.rdb_COMM.Enabled = False
        Me.rdb_COMM.Location = New System.Drawing.Point(8, 98)
        Me.rdb_COMM.Name = "rdb_COMM"
        Me.rdb_COMM.Size = New System.Drawing.Size(108, 17)
        Me.rdb_COMM.TabIndex = 5
        Me.rdb_COMM.TabStop = True
        Me.rdb_COMM.Text = "Serial Connection"
        Me.rdb_COMM.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rdb_COMM.UseVisualStyleBackColor = True
        '
        'rdb_USB
        '
        Me.rdb_USB.AutoSize = True
        Me.rdb_USB.Location = New System.Drawing.Point(8, 74)
        Me.rdb_USB.Name = "rdb_USB"
        Me.rdb_USB.Size = New System.Drawing.Size(104, 17)
        Me.rdb_USB.TabIndex = 4
        Me.rdb_USB.Text = "USB Connection"
        Me.rdb_USB.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.rdb_USB.UseVisualStyleBackColor = True
        '
        'txt_IP
        '
        Me.txt_IP.Location = New System.Drawing.Point(83, 202)
        Me.txt_IP.Name = "txt_IP"
        Me.txt_IP.Size = New System.Drawing.Size(144, 20)
        Me.txt_IP.TabIndex = 12
        Me.txt_IP.Text = "192.168.1.225"
        '
        'lbl_Port
        '
        Me.lbl_Port.AutoSize = True
        Me.lbl_Port.Location = New System.Drawing.Point(18, 233)
        Me.lbl_Port.Name = "lbl_Port"
        Me.lbl_Port.Size = New System.Drawing.Size(55, 13)
        Me.lbl_Port.TabIndex = 13
        Me.lbl_Port.Text = "UDP Port:"
        Me.lbl_Port.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_IP
        '
        Me.lbl_IP.AutoSize = True
        Me.lbl_IP.Location = New System.Drawing.Point(6, 206)
        Me.lbl_IP.Name = "lbl_IP"
        Me.lbl_IP.Size = New System.Drawing.Size(61, 13)
        Me.lbl_IP.TabIndex = 11
        Me.lbl_IP.Text = "IP Address:"
        Me.lbl_IP.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_ConnectionPwd
        '
        Me.lbl_ConnectionPwd.AutoSize = True
        Me.lbl_ConnectionPwd.Location = New System.Drawing.Point(11, 47)
        Me.lbl_ConnectionPwd.Name = "lbl_ConnectionPwd"
        Me.lbl_ConnectionPwd.Size = New System.Drawing.Size(60, 13)
        Me.lbl_ConnectionPwd.TabIndex = 2
        Me.lbl_ConnectionPwd.Text = "Comm Key:"
        Me.lbl_ConnectionPwd.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_DeviceId
        '
        Me.lbl_DeviceId.AutoSize = True
        Me.lbl_DeviceId.Location = New System.Drawing.Point(6, 18)
        Me.lbl_DeviceId.Name = "lbl_DeviceId"
        Me.lbl_DeviceId.Size = New System.Drawing.Size(58, 13)
        Me.lbl_DeviceId.TabIndex = 0
        Me.lbl_DeviceId.Text = "Device ID:"
        Me.lbl_DeviceId.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'btn_DeleteFp
        '
        Me.btn_DeleteFp.Location = New System.Drawing.Point(208, 20)
        Me.btn_DeleteFp.Name = "btn_DeleteFp"
        Me.btn_DeleteFp.Size = New System.Drawing.Size(95, 25)
        Me.btn_DeleteFp.TabIndex = 32
        Me.btn_DeleteFp.Text = "Clear FP Data"
        Me.btn_DeleteFp.UseVisualStyleBackColor = True
        '
        'btn_WriteFp
        '
        Me.btn_WriteFp.Location = New System.Drawing.Point(107, 20)
        Me.btn_WriteFp.Name = "btn_WriteFp"
        Me.btn_WriteFp.Size = New System.Drawing.Size(95, 25)
        Me.btn_WriteFp.TabIndex = 31
        Me.btn_WriteFp.Text = "Write FP Data"
        Me.btn_WriteFp.UseVisualStyleBackColor = True
        '
        'btn_DeletePwd
        '
        Me.btn_DeletePwd.Location = New System.Drawing.Point(208, 51)
        Me.btn_DeletePwd.Name = "btn_DeletePwd"
        Me.btn_DeletePwd.Size = New System.Drawing.Size(95, 25)
        Me.btn_DeletePwd.TabIndex = 35
        Me.btn_DeletePwd.Text = "Clear PWD"
        Me.btn_DeletePwd.UseVisualStyleBackColor = True
        '
        'btn_WritePwd
        '
        Me.btn_WritePwd.Location = New System.Drawing.Point(107, 49)
        Me.btn_WritePwd.Name = "btn_WritePwd"
        Me.btn_WritePwd.Size = New System.Drawing.Size(95, 25)
        Me.btn_WritePwd.TabIndex = 34
        Me.btn_WritePwd.Text = "Write PWD"
        Me.btn_WritePwd.UseVisualStyleBackColor = True
        '
        'btn_DeleteCard
        '
        Me.btn_DeleteCard.Location = New System.Drawing.Point(208, 82)
        Me.btn_DeleteCard.Name = "btn_DeleteCard"
        Me.btn_DeleteCard.Size = New System.Drawing.Size(95, 25)
        Me.btn_DeleteCard.TabIndex = 38
        Me.btn_DeleteCard.Text = "Clear Card"
        Me.btn_DeleteCard.UseVisualStyleBackColor = True
        '
        'btn_WriteCard
        '
        Me.btn_WriteCard.Location = New System.Drawing.Point(107, 82)
        Me.btn_WriteCard.Name = "btn_WriteCard"
        Me.btn_WriteCard.Size = New System.Drawing.Size(95, 25)
        Me.btn_WriteCard.TabIndex = 37
        Me.btn_WriteCard.Text = "Write Card"
        Me.btn_WriteCard.UseVisualStyleBackColor = True
        '
        'btn_DeleteAllUser
        '
        Me.btn_DeleteAllUser.Location = New System.Drawing.Point(166, 147)
        Me.btn_DeleteAllUser.Name = "btn_DeleteAllUser"
        Me.btn_DeleteAllUser.Size = New System.Drawing.Size(99, 25)
        Me.btn_DeleteAllUser.TabIndex = 42
        Me.btn_DeleteAllUser.Text = "Clear All User"
        Me.btn_DeleteAllUser.UseVisualStyleBackColor = True
        '
        'btn_DeleteUser
        '
        Me.btn_DeleteUser.Location = New System.Drawing.Point(208, 114)
        Me.btn_DeleteUser.Name = "btn_DeleteUser"
        Me.btn_DeleteUser.Size = New System.Drawing.Size(95, 25)
        Me.btn_DeleteUser.TabIndex = 41
        Me.btn_DeleteUser.Text = "Clear User"
        Me.btn_DeleteUser.UseVisualStyleBackColor = True
        '
        'btn_WriteUserName
        '
        Me.btn_WriteUserName.Location = New System.Drawing.Point(107, 114)
        Me.btn_WriteUserName.Name = "btn_WriteUserName"
        Me.btn_WriteUserName.Size = New System.Drawing.Size(95, 25)
        Me.btn_WriteUserName.TabIndex = 40
        Me.btn_WriteUserName.Text = "Set Username"
        Me.btn_WriteUserName.UseVisualStyleBackColor = True
        '
        'btn_SetRole
        '
        Me.btn_SetRole.Location = New System.Drawing.Point(0, 145)
        Me.btn_SetRole.Name = "btn_SetRole"
        Me.btn_SetRole.Size = New System.Drawing.Size(160, 25)
        Me.btn_SetRole.TabIndex = 43
        Me.btn_SetRole.Text = "Set Privilege (เคลียร์สิทธ์)"
        Me.btn_SetRole.UseVisualStyleBackColor = True
        '
        'btn_ReadUserName
        '
        Me.btn_ReadUserName.Location = New System.Drawing.Point(6, 114)
        Me.btn_ReadUserName.Name = "btn_ReadUserName"
        Me.btn_ReadUserName.Size = New System.Drawing.Size(95, 25)
        Me.btn_ReadUserName.TabIndex = 39
        Me.btn_ReadUserName.Text = "Get Username"
        Me.btn_ReadUserName.UseVisualStyleBackColor = True
        '
        'btn_ReadCard
        '
        Me.btn_ReadCard.Location = New System.Drawing.Point(6, 82)
        Me.btn_ReadCard.Name = "btn_ReadCard"
        Me.btn_ReadCard.Size = New System.Drawing.Size(95, 25)
        Me.btn_ReadCard.TabIndex = 36
        Me.btn_ReadCard.Text = "Read Card"
        Me.btn_ReadCard.UseVisualStyleBackColor = True
        '
        'btn_ReadPwd
        '
        Me.btn_ReadPwd.Location = New System.Drawing.Point(6, 51)
        Me.btn_ReadPwd.Name = "btn_ReadPwd"
        Me.btn_ReadPwd.Size = New System.Drawing.Size(95, 25)
        Me.btn_ReadPwd.TabIndex = 33
        Me.btn_ReadPwd.Text = "Read PWD"
        Me.btn_ReadPwd.UseVisualStyleBackColor = True
        '
        'btn_ReadFp
        '
        Me.btn_ReadFp.Location = New System.Drawing.Point(6, 19)
        Me.btn_ReadFp.Name = "btn_ReadFp"
        Me.btn_ReadFp.Size = New System.Drawing.Size(95, 25)
        Me.btn_ReadFp.TabIndex = 30
        Me.btn_ReadFp.Text = "Read FP Data"
        Me.btn_ReadFp.UseVisualStyleBackColor = True
        '
        'groupBox3
        '
        Me.groupBox3.Controls.Add(Me.txt_DeviceTime)
        Me.groupBox3.Controls.Add(Me.lbl_DeviceTime)
        Me.groupBox3.Controls.Add(Me.btn_TimeGet)
        Me.groupBox3.Controls.Add(Me.btn_TimeSet)
        Me.groupBox3.Location = New System.Drawing.Point(6, 19)
        Me.groupBox3.Name = "groupBox3"
        Me.groupBox3.Size = New System.Drawing.Size(325, 84)
        Me.groupBox3.TabIndex = 44
        Me.groupBox3.TabStop = False
        Me.groupBox3.Text = "Time Settings"
        '
        'txt_DeviceTime
        '
        Me.txt_DeviceTime.BackColor = System.Drawing.Color.White
        Me.txt_DeviceTime.Location = New System.Drawing.Point(45, 22)
        Me.txt_DeviceTime.Name = "txt_DeviceTime"
        Me.txt_DeviceTime.ReadOnly = True
        Me.txt_DeviceTime.Size = New System.Drawing.Size(270, 20)
        Me.txt_DeviceTime.TabIndex = 1
        '
        'lbl_DeviceTime
        '
        Me.lbl_DeviceTime.AutoSize = True
        Me.lbl_DeviceTime.Location = New System.Drawing.Point(6, 25)
        Me.lbl_DeviceTime.Name = "lbl_DeviceTime"
        Me.lbl_DeviceTime.Size = New System.Drawing.Size(33, 13)
        Me.lbl_DeviceTime.TabIndex = 0
        Me.lbl_DeviceTime.Text = "Time:"
        Me.lbl_DeviceTime.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        '
        'btn_TimeGet
        '
        Me.btn_TimeGet.Location = New System.Drawing.Point(47, 48)
        Me.btn_TimeGet.Name = "btn_TimeGet"
        Me.btn_TimeGet.Size = New System.Drawing.Size(75, 25)
        Me.btn_TimeGet.TabIndex = 2
        Me.btn_TimeGet.Text = "Get"
        Me.btn_TimeGet.UseVisualStyleBackColor = True
        '
        'btn_TimeSet
        '
        Me.btn_TimeSet.Location = New System.Drawing.Point(128, 48)
        Me.btn_TimeSet.Name = "btn_TimeSet"
        Me.btn_TimeSet.Size = New System.Drawing.Size(189, 25)
        Me.btn_TimeSet.TabIndex = 3
        Me.btn_TimeSet.Text = "Synchronize the device time"
        Me.btn_TimeSet.UseVisualStyleBackColor = True
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.btn_GetAllEnrollData)
        Me.GroupBox4.Controls.Add(Me.nud_DIN)
        Me.GroupBox4.Controls.Add(Me.btn_DeleteAllUser)
        Me.GroupBox4.Controls.Add(Me.cbo_Role)
        Me.GroupBox4.Controls.Add(Me.btn_SetRole)
        Me.GroupBox4.Controls.Add(Me.cbo_FpNo)
        Me.GroupBox4.Controls.Add(Me.txt_UserName)
        Me.GroupBox4.Controls.Add(Me.txt_Card)
        Me.GroupBox4.Controls.Add(Me.txt_Pwd)
        Me.GroupBox4.Controls.Add(Me.lbl_UserName)
        Me.GroupBox4.Controls.Add(Me.lbl_Card)
        Me.GroupBox4.Controls.Add(Me.lbl_Pwd)
        Me.GroupBox4.Controls.Add(Me.lbl_Role)
        Me.GroupBox4.Controls.Add(Me.lbl_FpNo)
        Me.GroupBox4.Controls.Add(Me.lbl_UserId)
        Me.GroupBox4.Controls.Add(Me.btn_DeleteCard)
        Me.GroupBox4.Controls.Add(Me.btn_ReadFp)
        Me.GroupBox4.Controls.Add(Me.btn_DeleteFp)
        Me.GroupBox4.Controls.Add(Me.btn_ReadPwd)
        Me.GroupBox4.Controls.Add(Me.btn_WriteFp)
        Me.GroupBox4.Controls.Add(Me.btn_ReadCard)
        Me.GroupBox4.Controls.Add(Me.btn_DeletePwd)
        Me.GroupBox4.Controls.Add(Me.btn_ReadUserName)
        Me.GroupBox4.Controls.Add(Me.btn_WritePwd)
        Me.GroupBox4.Controls.Add(Me.btn_WriteUserName)
        Me.GroupBox4.Controls.Add(Me.btn_DeleteUser)
        Me.GroupBox4.Controls.Add(Me.btn_WriteCard)
        Me.GroupBox4.Location = New System.Drawing.Point(256, 12)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(323, 409)
        Me.GroupBox4.TabIndex = 46
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "จัดการผู้ใช้(พนักงาน)"
        '
        'btn_GetAllEnrollData
        '
        Me.btn_GetAllEnrollData.Location = New System.Drawing.Point(59, 178)
        Me.btn_GetAllEnrollData.Name = "btn_GetAllEnrollData"
        Me.btn_GetAllEnrollData.Size = New System.Drawing.Size(196, 25)
        Me.btn_GetAllEnrollData.TabIndex = 54
        Me.btn_GetAllEnrollData.Text = "Get All Enroll Information"
        Me.btn_GetAllEnrollData.UseVisualStyleBackColor = True
        '
        'nud_DIN
        '
        Me.nud_DIN.Location = New System.Drawing.Point(105, 217)
        Me.nud_DIN.Maximum = New Decimal(New Integer() {-1486618625, 232830643, 0, 0})
        Me.nud_DIN.Minimum = New Decimal(New Integer() {1, 0, 0, 0})
        Me.nud_DIN.Name = "nud_DIN"
        Me.nud_DIN.Size = New System.Drawing.Size(150, 20)
        Me.nud_DIN.TabIndex = 43
        Me.nud_DIN.Value = New Decimal(New Integer() {1, 0, 0, 0})
        '
        'cbo_Role
        '
        Me.cbo_Role.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbo_Role.FormattingEnabled = True
        Me.cbo_Role.Items.AddRange(New Object() {"User", "Enroll User", "View User", "Super User", "Customer"})
        Me.cbo_Role.Location = New System.Drawing.Point(105, 273)
        Me.cbo_Role.Name = "cbo_Role"
        Me.cbo_Role.Size = New System.Drawing.Size(150, 21)
        Me.cbo_Role.TabIndex = 47
        '
        'cbo_FpNo
        '
        Me.cbo_FpNo.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList
        Me.cbo_FpNo.FormattingEnabled = True
        Me.cbo_FpNo.Items.AddRange(New Object() {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"})
        Me.cbo_FpNo.Location = New System.Drawing.Point(105, 245)
        Me.cbo_FpNo.Name = "cbo_FpNo"
        Me.cbo_FpNo.Size = New System.Drawing.Size(150, 21)
        Me.cbo_FpNo.TabIndex = 45
        '
        'txt_UserName
        '
        Me.txt_UserName.Location = New System.Drawing.Point(105, 360)
        Me.txt_UserName.Name = "txt_UserName"
        Me.txt_UserName.Size = New System.Drawing.Size(150, 20)
        Me.txt_UserName.TabIndex = 53
        '
        'txt_Card
        '
        Me.txt_Card.Location = New System.Drawing.Point(105, 330)
        Me.txt_Card.MaxLength = 10
        Me.txt_Card.Name = "txt_Card"
        Me.txt_Card.Size = New System.Drawing.Size(150, 20)
        Me.txt_Card.TabIndex = 51
        '
        'txt_Pwd
        '
        Me.txt_Pwd.Location = New System.Drawing.Point(105, 301)
        Me.txt_Pwd.MaxLength = 8
        Me.txt_Pwd.Name = "txt_Pwd"
        Me.txt_Pwd.Size = New System.Drawing.Size(150, 20)
        Me.txt_Pwd.TabIndex = 49
        '
        'lbl_UserName
        '
        Me.lbl_UserName.AutoSize = True
        Me.lbl_UserName.Location = New System.Drawing.Point(40, 363)
        Me.lbl_UserName.Name = "lbl_UserName"
        Me.lbl_UserName.Size = New System.Drawing.Size(58, 13)
        Me.lbl_UserName.TabIndex = 52
        Me.lbl_UserName.Text = "Username:"
        Me.lbl_UserName.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_Card
        '
        Me.lbl_Card.AutoSize = True
        Me.lbl_Card.Location = New System.Drawing.Point(46, 334)
        Me.lbl_Card.Name = "lbl_Card"
        Me.lbl_Card.Size = New System.Drawing.Size(46, 13)
        Me.lbl_Card.TabIndex = 50
        Me.lbl_Card.Text = "Card ID:"
        Me.lbl_Card.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_Pwd
        '
        Me.lbl_Pwd.AutoSize = True
        Me.lbl_Pwd.Location = New System.Drawing.Point(40, 304)
        Me.lbl_Pwd.Name = "lbl_Pwd"
        Me.lbl_Pwd.Size = New System.Drawing.Size(56, 13)
        Me.lbl_Pwd.TabIndex = 48
        Me.lbl_Pwd.Text = "Password:"
        Me.lbl_Pwd.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_Role
        '
        Me.lbl_Role.AutoSize = True
        Me.lbl_Role.Location = New System.Drawing.Point(34, 276)
        Me.lbl_Role.Name = "lbl_Role"
        Me.lbl_Role.Size = New System.Drawing.Size(50, 13)
        Me.lbl_Role.TabIndex = 46
        Me.lbl_Role.Text = "Privilege:"
        Me.lbl_Role.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_FpNo
        '
        Me.lbl_FpNo.AutoSize = True
        Me.lbl_FpNo.Location = New System.Drawing.Point(34, 248)
        Me.lbl_FpNo.Name = "lbl_FpNo"
        Me.lbl_FpNo.Size = New System.Drawing.Size(57, 13)
        Me.lbl_FpNo.TabIndex = 44
        Me.lbl_FpNo.Text = "Finger SN:"
        Me.lbl_FpNo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_UserId
        '
        Me.lbl_UserId.AutoSize = True
        Me.lbl_UserId.Location = New System.Drawing.Point(46, 219)
        Me.lbl_UserId.Name = "lbl_UserId"
        Me.lbl_UserId.Size = New System.Drawing.Size(46, 13)
        Me.lbl_UserId.TabIndex = 42
        Me.lbl_UserId.Text = "User ID:"
        Me.lbl_UserId.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.groupBox3)
        Me.GroupBox2.Location = New System.Drawing.Point(254, 427)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(342, 186)
        Me.GroupBox2.TabIndex = 47
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "จัดการเครื่อง"
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.InputFromBinFileButton)
        Me.GroupBox5.Controls.Add(Me.lvw_GLogList)
        Me.GroupBox5.Controls.Add(Me.chk_NewFlag)
        Me.GroupBox5.Controls.Add(Me.dtp_End)
        Me.GroupBox5.Controls.Add(Me.dtp_Begin)
        Me.GroupBox5.Controls.Add(Me.btn_DownloadNew)
        Me.GroupBox5.Controls.Add(Me.btn_DownloadHistory)
        Me.GroupBox5.Controls.Add(Me.btn_Clear)
        Me.GroupBox5.Controls.Add(Me.lbl_EndDate)
        Me.GroupBox5.Controls.Add(Me.lbl_BeginDate)
        Me.GroupBox5.Location = New System.Drawing.Point(596, 12)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(528, 601)
        Me.GroupBox5.TabIndex = 48
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "ดึงข้อมูล"
        '
        'lvw_GLogList
        '
        Me.lvw_GLogList.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.columnHeader1, Me.columnHeader2, Me.columnHeader3, Me.columnHeader4, Me.columnHeader5, Me.columnHeader6})
        Me.lvw_GLogList.FullRowSelect = True
        Me.lvw_GLogList.GridLines = True
        Me.lvw_GLogList.HideSelection = False
        Me.lvw_GLogList.Location = New System.Drawing.Point(6, 77)
        Me.lvw_GLogList.MultiSelect = False
        Me.lvw_GLogList.Name = "lvw_GLogList"
        Me.lvw_GLogList.Size = New System.Drawing.Size(516, 518)
        Me.lvw_GLogList.TabIndex = 26
        Me.lvw_GLogList.UseCompatibleStateImageBehavior = False
        Me.lvw_GLogList.View = System.Windows.Forms.View.Details
        '
        'columnHeader1
        '
        Me.columnHeader1.Text = "SN"
        Me.columnHeader1.Width = 50
        '
        'columnHeader2
        '
        Me.columnHeader2.Text = "Device No."
        Me.columnHeader2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.columnHeader2.Width = 80
        '
        'columnHeader3
        '
        Me.columnHeader3.Text = "UserID"
        Me.columnHeader3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.columnHeader3.Width = 70
        '
        'columnHeader4
        '
        Me.columnHeader4.Text = "Verify Mode"
        Me.columnHeader4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.columnHeader4.Width = 80
        '
        'columnHeader5
        '
        Me.columnHeader5.Text = "Action"
        Me.columnHeader5.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.columnHeader5.Width = 80
        '
        'columnHeader6
        '
        Me.columnHeader6.Text = "Datetime"
        Me.columnHeader6.TextAlign = System.Windows.Forms.HorizontalAlignment.Center
        Me.columnHeader6.Width = 150
        '
        'chk_NewFlag
        '
        Me.chk_NewFlag.AutoSize = True
        Me.chk_NewFlag.Location = New System.Drawing.Point(23, 51)
        Me.chk_NewFlag.Name = "chk_NewFlag"
        Me.chk_NewFlag.Size = New System.Drawing.Size(140, 17)
        Me.chk_NewFlag.TabIndex = 25
        Me.chk_NewFlag.Text = "Clear New Glog Position"
        Me.chk_NewFlag.UseVisualStyleBackColor = True
        '
        'dtp_End
        '
        Me.dtp_End.CustomFormat = "yyyy-MM-dd"
        Me.dtp_End.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_End.Location = New System.Drawing.Point(221, 19)
        Me.dtp_End.Name = "dtp_End"
        Me.dtp_End.Size = New System.Drawing.Size(120, 20)
        Me.dtp_End.TabIndex = 23
        '
        'dtp_Begin
        '
        Me.dtp_Begin.CustomFormat = "yyyy-MM-dd"
        Me.dtp_Begin.Format = System.Windows.Forms.DateTimePickerFormat.Custom
        Me.dtp_Begin.Location = New System.Drawing.Point(61, 19)
        Me.dtp_Begin.Name = "dtp_Begin"
        Me.dtp_Begin.Size = New System.Drawing.Size(120, 20)
        Me.dtp_Begin.TabIndex = 24
        '
        'btn_DownloadNew
        '
        Me.btn_DownloadNew.Location = New System.Drawing.Point(173, 46)
        Me.btn_DownloadNew.Name = "btn_DownloadNew"
        Me.btn_DownloadNew.Size = New System.Drawing.Size(103, 25)
        Me.btn_DownloadNew.TabIndex = 20
        Me.btn_DownloadNew.Text = "Get New Glog"
        Me.btn_DownloadNew.UseVisualStyleBackColor = True
        '
        'btn_DownloadHistory
        '
        Me.btn_DownloadHistory.Location = New System.Drawing.Point(282, 46)
        Me.btn_DownloadHistory.Name = "btn_DownloadHistory"
        Me.btn_DownloadHistory.Size = New System.Drawing.Size(103, 25)
        Me.btn_DownloadHistory.TabIndex = 21
        Me.btn_DownloadHistory.Text = "Get All Glog"
        Me.btn_DownloadHistory.UseVisualStyleBackColor = True
        '
        'btn_Clear
        '
        Me.btn_Clear.Location = New System.Drawing.Point(391, 46)
        Me.btn_Clear.Name = "btn_Clear"
        Me.btn_Clear.Size = New System.Drawing.Size(99, 25)
        Me.btn_Clear.TabIndex = 22
        Me.btn_Clear.Text = "Clear All Glog"
        Me.btn_Clear.UseVisualStyleBackColor = True
        '
        'lbl_EndDate
        '
        Me.lbl_EndDate.AutoSize = True
        Me.lbl_EndDate.Location = New System.Drawing.Point(192, 26)
        Me.lbl_EndDate.Name = "lbl_EndDate"
        Me.lbl_EndDate.Size = New System.Drawing.Size(23, 13)
        Me.lbl_EndDate.TabIndex = 19
        Me.lbl_EndDate.Text = "To:"
        Me.lbl_EndDate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'lbl_BeginDate
        '
        Me.lbl_BeginDate.AutoSize = True
        Me.lbl_BeginDate.Location = New System.Drawing.Point(20, 26)
        Me.lbl_BeginDate.Name = "lbl_BeginDate"
        Me.lbl_BeginDate.Size = New System.Drawing.Size(33, 13)
        Me.lbl_BeginDate.TabIndex = 18
        Me.lbl_BeginDate.Text = "From:"
        Me.lbl_BeginDate.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'btn_OpenFpData
        '
        Me.btn_OpenFpData.Location = New System.Drawing.Point(37, 588)
        Me.btn_OpenFpData.Name = "btn_OpenFpData"
        Me.btn_OpenFpData.Size = New System.Drawing.Size(95, 25)
        Me.btn_OpenFpData.TabIndex = 51
        Me.btn_OpenFpData.Text = "Open FP Data"
        Me.btn_OpenFpData.UseVisualStyleBackColor = True
        '
        'btn_SaveFpData
        '
        Me.btn_SaveFpData.Location = New System.Drawing.Point(138, 588)
        Me.btn_SaveFpData.Name = "btn_SaveFpData"
        Me.btn_SaveFpData.Size = New System.Drawing.Size(95, 25)
        Me.btn_SaveFpData.TabIndex = 52
        Me.btn_SaveFpData.Text = "Save FP Data"
        Me.btn_SaveFpData.UseVisualStyleBackColor = True
        '
        'txt_UserFpData
        '
        Me.txt_UserFpData.BackColor = System.Drawing.Color.White
        Me.txt_UserFpData.Location = New System.Drawing.Point(12, 327)
        Me.txt_UserFpData.Multiline = True
        Me.txt_UserFpData.Name = "txt_UserFpData"
        Me.txt_UserFpData.ReadOnly = True
        Me.txt_UserFpData.ScrollBars = System.Windows.Forms.ScrollBars.Vertical
        Me.txt_UserFpData.Size = New System.Drawing.Size(221, 255)
        Me.txt_UserFpData.TabIndex = 50
        '
        'lbl_FpData
        '
        Me.lbl_FpData.AutoSize = True
        Me.lbl_FpData.Location = New System.Drawing.Point(12, 311)
        Me.lbl_FpData.Name = "lbl_FpData"
        Me.lbl_FpData.Size = New System.Drawing.Size(88, 13)
        Me.lbl_FpData.TabIndex = 49
        Me.lbl_FpData.Text = "Fringerprint Data:"
        Me.lbl_FpData.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        '
        'sfd_SaveFpData
        '
        Me.sfd_SaveFpData.Filter = "Template File|*.fpt"
        '
        'ofd_OpenFpData
        '
        Me.ofd_OpenFpData.Filter = "Template File|*.fpt"
        '
        'InputFromBinFileButton
        '
        Me.InputFromBinFileButton.Location = New System.Drawing.Point(391, 18)
        Me.InputFromBinFileButton.Name = "InputFromBinFileButton"
        Me.InputFromBinFileButton.Size = New System.Drawing.Size(99, 25)
        Me.InputFromBinFileButton.TabIndex = 27
        Me.InputFromBinFileButton.Text = "From Bin file"
        Me.InputFromBinFileButton.UseVisualStyleBackColor = True
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1136, 626)
        Me.Controls.Add(Me.btn_OpenFpData)
        Me.Controls.Add(Me.btn_SaveFpData)
        Me.Controls.Add(Me.txt_UserFpData)
        Me.Controls.Add(Me.lbl_FpData)
        Me.Controls.Add(Me.GroupBox5)
        Me.Controls.Add(Me.GroupBox2)
        Me.Controls.Add(Me.GroupBox4)
        Me.Controls.Add(Me.groupBox1)
        Me.Name = "Form1"
        Me.Text = "Form1"
        Me.groupBox1.ResumeLayout(False)
        Me.groupBox1.PerformLayout()
        CType(Me.nud_Port, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nud_Pwd, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.nud_DN, System.ComponentModel.ISupportInitialize).EndInit()
        Me.groupBox3.ResumeLayout(False)
        Me.groupBox3.PerformLayout()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        CType(Me.nud_DIN, System.ComponentModel.ISupportInitialize).EndInit()
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Private WithEvents groupBox1 As System.Windows.Forms.GroupBox
    Private WithEvents nud_Port As System.Windows.Forms.NumericUpDown
    Private WithEvents nud_Pwd As System.Windows.Forms.NumericUpDown
    Private WithEvents nud_DN As System.Windows.Forms.NumericUpDown
    Private WithEvents cbo_BaudRate As System.Windows.Forms.ComboBox
    Private WithEvents cbo_COMM As System.Windows.Forms.ComboBox
    Private WithEvents lbl_BaudRate As System.Windows.Forms.Label
    Private WithEvents lbl_COMM As System.Windows.Forms.Label
    Private WithEvents rdb_TCP As System.Windows.Forms.RadioButton
    Private WithEvents rdb_COMM As System.Windows.Forms.RadioButton
    Private WithEvents rdb_USB As System.Windows.Forms.RadioButton
    Private WithEvents txt_IP As System.Windows.Forms.TextBox
    Private WithEvents lbl_Port As System.Windows.Forms.Label
    Private WithEvents lbl_IP As System.Windows.Forms.Label
    Private WithEvents lbl_ConnectionPwd As System.Windows.Forms.Label
    Private WithEvents lbl_DeviceId As System.Windows.Forms.Label
    Private WithEvents btn_CloseDevice As System.Windows.Forms.Button
    Private WithEvents btn_OpenDevice As System.Windows.Forms.Button
    Private WithEvents btn_DeleteFp As System.Windows.Forms.Button
    Private WithEvents btn_WriteFp As System.Windows.Forms.Button
    Private WithEvents btn_DeletePwd As System.Windows.Forms.Button
    Private WithEvents btn_WritePwd As System.Windows.Forms.Button
    Private WithEvents btn_DeleteCard As System.Windows.Forms.Button
    Private WithEvents btn_WriteCard As System.Windows.Forms.Button
    Private WithEvents btn_DeleteAllUser As System.Windows.Forms.Button
    Private WithEvents btn_DeleteUser As System.Windows.Forms.Button
    Private WithEvents btn_WriteUserName As System.Windows.Forms.Button
    Private WithEvents btn_SetRole As System.Windows.Forms.Button
    Private WithEvents btn_ReadUserName As System.Windows.Forms.Button
    Private WithEvents btn_ReadCard As System.Windows.Forms.Button
    Private WithEvents btn_ReadPwd As System.Windows.Forms.Button
    Private WithEvents btn_ReadFp As System.Windows.Forms.Button
    Private WithEvents groupBox3 As System.Windows.Forms.GroupBox
    Private WithEvents txt_DeviceTime As System.Windows.Forms.TextBox
    Private WithEvents lbl_DeviceTime As System.Windows.Forms.Label
    Private WithEvents btn_TimeGet As System.Windows.Forms.Button
    Private WithEvents btn_TimeSet As System.Windows.Forms.Button
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Private WithEvents lvw_GLogList As System.Windows.Forms.ListView
    Private WithEvents columnHeader1 As System.Windows.Forms.ColumnHeader
    Private WithEvents columnHeader2 As System.Windows.Forms.ColumnHeader
    Private WithEvents columnHeader3 As System.Windows.Forms.ColumnHeader
    Private WithEvents columnHeader4 As System.Windows.Forms.ColumnHeader
    Private WithEvents columnHeader5 As System.Windows.Forms.ColumnHeader
    Private WithEvents columnHeader6 As System.Windows.Forms.ColumnHeader
    Private WithEvents chk_NewFlag As System.Windows.Forms.CheckBox
    Private WithEvents dtp_End As System.Windows.Forms.DateTimePicker
    Private WithEvents dtp_Begin As System.Windows.Forms.DateTimePicker
    Private WithEvents btn_DownloadNew As System.Windows.Forms.Button
    Private WithEvents btn_DownloadHistory As System.Windows.Forms.Button
    Private WithEvents btn_Clear As System.Windows.Forms.Button
    Private WithEvents lbl_EndDate As System.Windows.Forms.Label
    Private WithEvents lbl_BeginDate As System.Windows.Forms.Label
    Private WithEvents nud_DIN As System.Windows.Forms.NumericUpDown
    Private WithEvents cbo_Role As System.Windows.Forms.ComboBox
    Private WithEvents cbo_FpNo As System.Windows.Forms.ComboBox
    Private WithEvents txt_UserName As System.Windows.Forms.TextBox
    Private WithEvents txt_Card As System.Windows.Forms.TextBox
    Private WithEvents txt_Pwd As System.Windows.Forms.TextBox
    Private WithEvents lbl_UserName As System.Windows.Forms.Label
    Private WithEvents lbl_Card As System.Windows.Forms.Label
    Private WithEvents lbl_Pwd As System.Windows.Forms.Label
    Private WithEvents lbl_Role As System.Windows.Forms.Label
    Private WithEvents lbl_FpNo As System.Windows.Forms.Label
    Private WithEvents lbl_UserId As System.Windows.Forms.Label
    Private WithEvents btn_OpenFpData As System.Windows.Forms.Button
    Private WithEvents btn_SaveFpData As System.Windows.Forms.Button
    Private WithEvents txt_UserFpData As System.Windows.Forms.TextBox
    Private WithEvents lbl_FpData As System.Windows.Forms.Label
    Private WithEvents sfd_SaveFpData As System.Windows.Forms.SaveFileDialog
    Private WithEvents ofd_OpenFpData As System.Windows.Forms.OpenFileDialog
    Private WithEvents btn_GetAllEnrollData As System.Windows.Forms.Button
    Private WithEvents InputFromBinFileButton As System.Windows.Forms.Button

End Class
