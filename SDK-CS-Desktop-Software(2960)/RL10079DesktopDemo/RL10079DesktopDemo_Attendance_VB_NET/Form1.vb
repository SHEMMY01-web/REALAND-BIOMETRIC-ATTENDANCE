Imports Riss.Devices
Imports System.IO

Public Class Form1
    Public deviceG2 As Riss.Devices.Device
    Public deviceConnectionG2 As Riss.Devices.DeviceConnection
    Public fpBytes As Byte()
    Private Sub btn_OpenDevice_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_OpenDevice.Click
        Try
            deviceG2 = New Riss.Devices.Device()
            deviceG2.DN = CInt(nud_DN.Value)
            deviceG2.Password = nud_Pwd.Value.ToString()
            deviceG2.Model = "ZDC2911"
            deviceG2.ConnectionModel = 5
            If rdb_USB.Checked Then
                deviceG2.CommunicationType = CommunicationType.Usb
            ElseIf rdb_TCP.Checked Then
                If String.IsNullOrEmpty(txt_IP.Text.Trim()) Then
                    MessageBox.Show("Please Input IP Address", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                    txt_IP.Focus()
                    Return
                End If

                If False = ConvertObject.IsCorrenctIP(txt_IP.Text.Trim()) Then
                    MessageBox.Show("Illegal IP Address", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                    txt_IP.Focus()
                    Return
                End If

                deviceG2.IpAddress = txt_IP.Text.Trim()
                deviceG2.IpPort = CInt(nud_Port.Value)
                deviceG2.CommunicationType = CommunicationType.Tcp
            ElseIf rdb_COMM.Checked Then
                deviceG2.SerialPort = Convert.ToInt32(cbo_COMM.SelectedItem.ToString().Replace("COM", String.Empty))
                deviceG2.Baudrate = Convert.ToInt32(cbo_BaudRate.SelectedItem)
                deviceG2.CommunicationType = CommunicationType.Serial
            End If

            deviceConnectionG2 = DeviceConnection.CreateConnection(deviceG2)
            If deviceConnectionG2.Open() > 0 Then
                btn_CloseDevice.Enabled = True
                btn_OpenDevice.Enabled = False
            Else
                MessageBox.Show("Connect Device Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_TimeGet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_TimeGet.Click
        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            Dim result As Boolean = deviceConnectionG2.GetProperty(DeviceProperty.DeviceTime, extraProperty, deviceG2, extraData)
            If result Then
                Dim dt As DateTime = DirectCast(extraData, DateTime)
                txt_DeviceTime.Text = dt.ToString("dd/MM/yyyy HH:mm:ss")
            Else
                MessageBox.Show("Get Device Time Settings Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_TimeSet_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_TimeSet.Click
        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.DeviceTime, extraProperty, deviceG2, extraData)
            If result Then
                MessageBox.Show("Synchronize the Device Time Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
                btn_TimeGet_Click(btn_TimeGet, e)
            Else
                MessageBox.Show("Synchronize the Device Time Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_ReadFp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_ReadFp.Click
        If -1 = cbo_FpNo.SelectedIndex Then
            MessageBox.Show("Please Select Finger SN", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_FpNo.Focus()
            Return
        End If

        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            Dim user As New User()
            Dim enroll As New Enroll()
            user.DIN = nud_DIN.Value
            enroll.DIN = user.DIN
            enroll.EnrollType = DirectCast(cbo_FpNo.SelectedIndex, EnrollType)
            enroll.Fingerprint = New Byte(Zd2911Utils.MaxFingerprintLength - 1) {}
            user.Enrolls.Add(enroll)
            extraProperty = UserEnrollCommand.ReadFingerprint
            result = deviceConnectionG2.GetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                fpBytes = user.Enrolls(0).Fingerprint
                txt_UserFpData.Text = ConvertObject.ConvertByteToHex(fpBytes).Replace("-", " ")
            Else
                MessageBox.Show("Read FP Data Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_ReadPwd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_ReadPwd.Click
        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.ReadPassword
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.GetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                txt_Pwd.Text = user.Enrolls(0).Password.Replace(vbNullChar, "")
            Else
                MessageBox.Show("Read Password Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_ReadCard_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_ReadCard.Click
        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.ReadCard
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.GetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                txt_Card.Text = user.Enrolls(0).CardID
            Else
                MessageBox.Show("Read Card Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_ReadUserName_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_ReadUserName.Click
        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            Dim result As Boolean = deviceConnectionG2.GetProperty(UserProperty.UserName, extraProperty, user, extraData)
            If result Then
                txt_UserName.Text = user.UserName
            Else
                MessageBox.Show("Get Username Fial", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_SetRole_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_SetRole.Click
        If -1 = cbo_Role.SelectedIndex Then
            MessageBox.Show("Please Select Privilege", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_Role.Focus()
            Return
        End If

        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            user.Privilege = GetPrivilege()
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.Privilege, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Set Privilege Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Set Privilege Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub
    Private Function GetPrivilege() As Integer
        Select Case cbo_Role.SelectedIndex
            Case 0
                Return 1
                ' ROLE_GENERAL_USER
            Case 1
                Return 2
                ' ROLE_ENROLL_USER
            Case 2
                Return 4
                'ROLE_VIEW_USER
            Case 3
                Return 8
                'ROLE_SUPER_USER
            Case 4
                Return 16
                'ROLE_CUSTOMER
        End Select

        Return 0
    End Function

    Private Sub btn_CloseDevice_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_CloseDevice.Click
        deviceConnectionG2.Close()
        btn_CloseDevice.Enabled = False
        ' SetButtonEnabled(False)
        btn_OpenDevice.Enabled = True
        deviceG2 = Nothing
        deviceConnectionG2 = Nothing
    End Sub

    Private Sub btn_DeleteFp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DeleteFp.Click
        If -1 = cbo_FpNo.SelectedIndex Then
            MessageBox.Show("Please Select Finger SN", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_FpNo.Focus()
            Return
        End If

        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            Dim user As New User()
            Dim enroll As New Enroll()
            user.DIN = nud_DIN.Value
            enroll.DIN = user.DIN
            enroll.EnrollType = DirectCast(cbo_FpNo.SelectedIndex, EnrollType)
            user.Enrolls.Add(enroll)
            extraProperty = UserEnrollCommand.ClearFingerprint
            result = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Clear FP Data Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear FP Data Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_DeletePwd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DeletePwd.Click
        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.ClearPassword
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Clear Password Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear Password Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_DeleteCard_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DeleteCard.Click
        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.ClearCard
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Clear Card Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear Card Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_DeleteUser_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DeleteUser.Click
        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            extraData = nud_DIN.Value
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enrolls, extraProperty, deviceG2, extraData)
            If result Then
                MessageBox.Show("Clear User Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear User Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_DeleteAllUser_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DeleteAllUser.Click
        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            extraData = 0
            result = deviceConnectionG2.SetProperty(DeviceProperty.Enrolls, extraProperty, deviceG2, extraData)
            If result Then
                MessageBox.Show("Clear All User Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear All User Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_WriteFp_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_WriteFp.Click
        If -1 = cbo_FpNo.SelectedIndex Then
            MessageBox.Show("Please Select Finger SN", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_FpNo.Focus()
            Return
        End If

        If -1 = cbo_Role.SelectedIndex Then
            MessageBox.Show("Please Select Privilege", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_Role.Focus()
            Return
        End If

        If String.Empty.Equals(txt_UserFpData.Text.Trim()) Then
            MessageBox.Show("Current FP Data is Empty", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Return
        End If

        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            Dim user As New User()
            Dim enroll As New Enroll()
            user.DIN = nud_DIN.Value
            user.Privilege = GetPrivilege()
            enroll.DIN = user.DIN
            enroll.EnrollType = DirectCast(cbo_FpNo.SelectedIndex, EnrollType)
            Dim fingerprint As Byte() = New Byte(Zd2911Utils.MaxFingerprintLength * (cbo_FpNo.SelectedIndex + 1) - 1) {}
            Array.Copy(fpBytes, 0, fingerprint, cbo_FpNo.SelectedIndex * Zd2911Utils.MaxFingerprintLength, fpBytes.Length)
            enroll.Fingerprint = fingerprint
            user.Enrolls.Add(enroll)
            extraProperty = UserEnrollCommand.WriteFingerprint
            result = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Write FP Data Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Write FP Data Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_WritePwd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_WritePwd.Click
        If -1 = cbo_Role.SelectedIndex Then
            MessageBox.Show("Please Select Privilege", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_Role.Focus()
            Return
        End If

        If String.Empty.Equals(txt_Pwd.Text.Trim()) Then
            MessageBox.Show("Please Input Password", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txt_Pwd.Focus()
            Return
        End If

        If False = ConvertObject.IsInt(txt_Pwd.Text.Trim()) Then
            MessageBox.Show("Password can only enter a number", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txt_Pwd.Focus()
            Return
        End If

        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.WritePassword
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            user.Privilege = GetPrivilege()
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            enroll.Password = txt_Pwd.Text.Trim()
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Write Password Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Wrtie Password Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_WriteCard_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_WriteCard.Click
        If -1 = cbo_Role.SelectedIndex Then
            MessageBox.Show("Please Select Privilege", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            cbo_Role.Focus()
            Return
        End If

        If String.Empty.Equals(txt_Card.Text.Trim()) Then
            MessageBox.Show("Please Input Card ID", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txt_Card.Focus()
            Return
        End If

        If False = ConvertObject.IsInt(txt_Card.Text.Trim()) Then
            MessageBox.Show("Card ID can only enter a number", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txt_Card.Focus()
            Return
        End If

        Try
            Dim extraProperty As New Object()
            extraProperty = UserEnrollCommand.WriteCard
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            user.Privilege = GetPrivilege()
            Dim enroll As New Enroll()
            enroll.DIN = user.DIN
            enroll.CardID = txt_Card.Text.Trim()
            user.Enrolls.Add(enroll)
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.UserEnroll, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Write Card Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Write Card Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_WriteUserName_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_WriteUserName.Click
        If String.Empty.Equals(txt_UserName.Text.Trim()) Then
            MessageBox.Show("Please Input Username", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            txt_UserName.Focus()
            Return
        End If

        Try
            Dim extraProperty As New Object()
            Dim extraData As New Object()
            Dim user As New User()
            user.DIN = nud_DIN.Value
            user.UserName = txt_UserName.Text.Trim()
            Dim result As Boolean = deviceConnectionG2.SetProperty(UserProperty.UserName, extraProperty, user, extraData)
            If result Then
                MessageBox.Show("Set Username Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Set Username Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        End Try
    End Sub

    Private Sub btn_OpenFpData_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_OpenFpData.Click
        If DialogResult.OK.Equals(ofd_OpenFpData.ShowDialog()) Then
            Dim fs As New FileStream(ofd_OpenFpData.FileName, FileMode.Open)

            Try
                fs.Read(fpBytes, 0, fpBytes.Length)
                txt_UserFpData.Text = ConvertObject.ConvertByteToHex(fpBytes).Replace("-", " ")
            Catch ex As Exception
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
            Finally
                fs.Close()
            End Try
        End If
    End Sub

    Private Sub btn_DownloadNew_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DownloadNew.Click
        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim dtList As List(Of DateTime) = GetDateTimeList()
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            extraProperty = True
            extraData = dtList
            result = deviceConnectionG2.GetProperty(DeviceProperty.AttRecordsCount, extraProperty, deviceG2, extraData)
            If False = result Then
                MessageBox.Show("Get New Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim recordCount As Integer = CInt(extraData)
            If 0 = recordCount Then

                lvw_GLogList.Items.Clear()
                Return
            End If

            Dim boolList As New List(Of Boolean)()
            boolList.Add(True)

            boolList.Add(chk_NewFlag.Checked)

            extraProperty = boolList
            extraData = dtList
            result = deviceConnectionG2.GetProperty(DeviceProperty.AttRecords, extraProperty, deviceG2, extraData)
            If result Then
                Dim recordList As List(Of Record) = DirectCast(extraData, List(Of Record))
                AddRecordToListView(recordList)
            Else
                MessageBox.Show("Get New Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub
    Private Sub AddRecordToListView(ByVal recordList As List(Of Record))
        lvw_GLogList.Items.Clear()
        Dim no As Integer = 1
        For Each record As Record In recordList
            Dim type As String = ConvertObject.GLogType(record.Verify)
            Dim mode As String = ConvertObject.IOMode(record.Action)
            Dim item As New ListViewItem(New String() {no.ToString(), record.DN.ToString(), record.DIN.ToString(), type, mode, record.Clock.ToString("yyyy-MM-dd HH:mm:ss")})
            lvw_GLogList.Items.Add(item)
            no += 1
        Next
    End Sub
    Private Function GetDateTimeList() As List(Of DateTime)
        Dim dtList As New List(Of DateTime)()
        dtList.Add(dtp_Begin.Value)
        dtList.Add(dtp_End.Value)
        Return dtList
    End Function

    Private Sub btn_DownloadHistory_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_DownloadHistory.Click
        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim dtList As List(Of DateTime) = GetDateTimeList()
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            extraProperty = False
            extraData = dtList
            result = deviceConnectionG2.GetProperty(DeviceProperty.AttRecordsCount, extraProperty, deviceG2, extraData)
            If False = result Then
                MessageBox.Show("Get All Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                Return
            End If

            Dim recordCount As Integer = CInt(extraData)
            If 0 = recordCount Then

                lvw_GLogList.Items.Clear()
                Return
            End If

            Dim boolList As New List(Of Boolean)()
            boolList.Add(False)

            boolList.Add(chk_NewFlag.Checked)

            extraProperty = boolList
            extraData = dtList
            result = deviceConnectionG2.GetProperty(DeviceProperty.AttRecords, extraProperty, deviceG2, extraData)
            If result Then
                Dim recordList As List(Of Record) = DirectCast(extraData, List(Of Record))
                AddRecordToListView(recordList)
            Else
                MessageBox.Show("Get All Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_Clear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_Clear.Click
        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = ConvertObject.DeviceBusy

        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
            result = deviceConnectionG2.SetProperty(DeviceProperty.AttRecords, extraProperty, deviceG2, extraData)
            If result Then
                lvw_GLogList.Items.Clear()
                MessageBox.Show("Clear All Glog Success", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Information)
            Else
                MessageBox.Show("Clear All Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = ConvertObject.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub btn_SaveFpData_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_SaveFpData.Click
        If DialogResult.OK.Equals(sfd_SaveFpData.ShowDialog()) Then
            Dim fs As New FileStream(sfd_SaveFpData.FileName, FileMode.Create)
            Try
                fs.Write(fpBytes, 0, fpBytes.Length)
                fs.Flush()
            Catch ex As Exception
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
            Finally
                fs.Close()
            End Try
        End If
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        fpBytes = New Byte(Zd2911Utils.MaxFingerprintLength - 1) {}
    End Sub

    Private Sub btn_GetAllEnrollData_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btn_GetAllEnrollData.Click
        Dim extraProperty As New Object()
        Dim extraData As New Object()
        extraData = Globalss.DeviceBusy
        Try
            Dim result As Boolean = deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)

            extraProperty = 0UL
            extraData = UInt16.MaxValue
            result = deviceConnectionG2.GetProperty(DeviceProperty.Enrolls, extraProperty, deviceG2, extraData)
            If result Then
                'If btn_Select.Text.Equals("Deselect All") Then
                '    btn_Select.Text = "Select All"
                'End If
                lvw_GLogList.Items.Clear()
                Dim userList As List(Of User) = DirectCast(extraData, List(Of User))
                Dim no As Integer = 1
                For Each user As User In userList
                    Dim enroll As Enroll = user.Enrolls(0)
                    Dim item As New ListViewItem(no.ToString())
                    item.SubItems.Add(user.DIN.ToString())
                    item.SubItems.Add(user.UserName)

                    'Dim privilege As String = ConvertObject.GetUserPrivilege(DirectCast(user.Privilege, UserPrivilege))
                    'item.SubItems.Add(privilege)

                    lvw_GLogList.Items.Add(item)
                    no += 1
                Next
            Else
                MessageBox.Show("Get All Enroll Information Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
            End If
        Catch ex As Exception
            MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
        Finally
            extraData = Globalss.DeviceIdle
            deviceConnectionG2.SetProperty(DeviceProperty.Enable, extraProperty, deviceG2, extraData)
        End Try
    End Sub

    Private Sub InputFromBinFileButton_Click(sender As System.Object, e As System.EventArgs) Handles InputFromBinFileButton.Click
        Dim dialog As New OpenFileDialog()
        dialog.InitialDirectory = System.Environment.GetFolderPath(Environment.SpecialFolder.MyComputer)
        dialog.Title = "Open bin Log data"
        dialog.Filter = "Log data | NewGlog_*.bin;HisGLog_*.bin;"

        Dim dialogResult__1 As DialogResult = dialog.ShowDialog()
        If dialogResult__1 = DialogResult.OK Then
            Dim filename As String = dialog.FileName

            Dim extraProperty As New Object()
            Dim extraData As New Object()

            Try
                extraProperty = filename

                deviceG2 = New Riss.Devices.Device()
                deviceG2.DN = CInt(nud_DN.Value)
                deviceG2.Password = nud_Pwd.Value.ToString()
                deviceG2.Model = "ZDC2911"
                deviceG2.ConnectionModel = 5
                deviceConnectionG2 = DeviceConnection.CreateConnection(deviceG2)
                ' did not need open a deivce.
                Dim result As Boolean = deviceConnectionG2.GetProperty(DeviceProperty.BinFileRecord, extraProperty, deviceG2, extraData)
                If result Then
                    Dim recordList As List(Of Record) = DirectCast(extraData, List(Of Record))
                    AddRecordToListView(recordList)
                Else
                    MessageBox.Show("Get Bin Glog Fail", "Prompt", MessageBoxButtons.OK, MessageBoxIcon.Warning)
                End If
            Catch ex As Exception
                MessageBox.Show(ex.Message, "Error", MessageBoxButtons.OK, MessageBoxIcon.[Error])
            End Try
        End If

    End Sub
End Class
