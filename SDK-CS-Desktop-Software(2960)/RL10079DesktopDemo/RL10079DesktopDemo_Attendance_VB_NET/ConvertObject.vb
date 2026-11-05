Imports System.Text.RegularExpressions


Public Class ConvertObject
    Private Sub New()
    End Sub

    Public Const DeviceBusy As Long = 1
    Public Const DeviceIdle As Long = 0
    Public Shared Function ConvertIPAddressToNumber(ByVal strIPAddress As String) As Integer
        Dim arrayIP As String() = strIPAddress.Split("."c)
        Dim sip1 As Integer = Int32.Parse(arrayIP(0))
        Dim sip2 As Integer = Int32.Parse(arrayIP(1))
        Dim sip3 As Integer = Int32.Parse(arrayIP(2))
        Dim sip4 As Integer = Int32.Parse(arrayIP(3))
        Dim tmpIpNumber As Integer
        tmpIpNumber = sip1 * 256 * 256 * 256 + sip2 * 256 * 256 + sip3 * 256 + sip4
        Return tmpIpNumber
    End Function

    Public Shared Function ConvertNumberToIPAddress(ByVal intIPAddress As Integer) As String
        Dim tempIPAddress As Integer = intIPAddress + 1
        Dim s1 As Integer = tempIPAddress \ 256 \ 256 \ 256
        Dim s21 As Integer = s1 * 256 * 256 * 256
        Dim s2 As Integer = (tempIPAddress - s21) \ 256 \ 256
        Dim s31 As Integer = s2 * 256 * 256 + s21
        Dim s3 As Integer = (tempIPAddress - s31) \ 256
        Dim s4 As Integer = tempIPAddress - s3 * 256 - s31

        If s1 < 0 Then
            s1 = 255 + s1
            s2 = 255 + s2
            s3 = 255 + s3
            s4 = 255 + s4
        End If
        Dim strIPAddress As String = s1.ToString() & "." & s2.ToString() & "." & s3.ToString() & "." & s4.ToString()
        Return strIPAddress
    End Function


    Public Shared Function IsCorrenctIP(ByVal ip As String) As Boolean
        If Regex.IsMatch(ip, "[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}") Then
            Dim ips As String() = ip.Split("."c)
            If 4 = ips.Length Then
                If Int32.Parse(ips(0)) < 256 AndAlso Int32.Parse(ips(1)) < 256 AndAlso Int32.Parse(ips(2)) < 256 AndAlso Int32.Parse(ips(3)) < 256 Then
                    Return True
                Else
                    Return False
                End If
            Else
                Return False
            End If
        Else
            Return False
        End If
    End Function


    Public Shared Function IsInt(ByVal content As String) As Boolean
        If Regex.IsMatch(content, "^\d+$") Then
            Return True
        Else
            Return False
        End If
    End Function

    ''' <summary>
    ''' 逐字节变为16进制字符，以-隔开
    ''' </summary>
    ''' <param name="bytes">字节数组</param>
    ''' <returns>16进制字符</returns>
    Public Shared Function ConvertByteToHex(ByVal bytes As Byte()) As String
        Dim result As String = String.Empty
        For i As Integer = 0 To bytes.Length - 1
            result += "-" & Convert.ToString(bytes(i), 16).PadLeft(2, "0"c)
        Next
        Return result.Remove(0, 1).ToUpper()
    End Function

    Public Shared Function SLogType(ByVal opertationType As Integer) As String
        Dim message As String = String.Empty

        Select Case opertationType
            Case 1
                message = "Registered user"
                Exit Select
            Case 2
                message = "Register super administrator"
                Exit Select
            Case 3
                message = "Register registrar"
                Exit Select
            Case 4
                message = "Register query member"
                Exit Select
            Case 5
                message = "Delete fingerprint"
                Exit Select
            Case 6
                message = "Remove the password"
                Exit Select
            Case 7
                message = "Delete the card number"
                Exit Select
            Case 8
                message = "Remove access to records"
                Exit Select
            Case 9
                message = "Remove records"
                Exit Select
            Case 10
                message = "Set system information"
                Exit Select
            Case 11
                message = "Setup time"
                Exit Select
            Case 12
                message = "Set the record information"
                Exit Select
            Case 13
                message = "Set the communications and information"
                Exit Select
            Case 14
                message = "Set the access control information"
                Exit Select
            Case 15
                message = "Set the user type"
                Exit Select
            Case 16
                message = "Set the attendance time"
                Exit Select
        End Select
        Return message
    End Function

    Public Shared Function IOMode(ByVal mode As Integer) As String
        Dim message As String = String.Empty

        Select Case mode
            Case 0
                message = "Check in"
                Exit Select
            Case 1
                message = "Clock in"
                Exit Select
            Case 2
                message = "Clock out"
                Exit Select
            Case 3
                message = "Customer in"
                Exit Select
            Case 4
                message = "Customer out"
                Exit Select
            Case 5
                message = "Out"
                Exit Select
            Case 6
                message = "In"
                Exit Select
            Case 7
                message = "User defined 1"
                Exit Select
            Case 8
                message = "User defined 2"
                Exit Select
            Case 12
                message = "Button open"
                Exit Select
            Case 13
                message = "Software open"
                Exit Select
            Case 14
                message = "Keep open"
                Exit Select
            Case 15
                message = "Keep close"
                Exit Select
            Case 16
                message = "Auto mode"
                Exit Select
            Case 17
                message = "Open in"
                Exit Select
            Case 18
                message = "Open out"
                Exit Select
            Case 19
                message = "Overtime open alarm"
                Exit Select
            Case 20
                message = "Forced open alarm"
                Exit Select
            Case 21
                message = "Antihijack alarm"
                Exit Select
            Case 22
                message = "Input action 1"
                Exit Select
            Case 23
                message = "Input action 2"
                Exit Select
            Case 24
                message = "Output action 1"
                Exit Select
            Case 25
                message = "Output action 2"
                Exit Select
            Case 26
                message = "Invalid time"
                Exit Select
            Case 27
                message = "Invalid date"
                Exit Select
            Case 31
                message = "Illegal operation"
                Exit Select
        End Select
        Return message
    End Function

    Public Shared Function GLogType(ByVal opertationType As Integer) As String
        Dim message As String = String.Empty

        Select Case opertationType
            Case 0
                message = "F/P/C"
                Exit Select
            Case 1
                message = "F"
                Exit Select
            Case 2
                message = "P"
                Exit Select
            Case 3
                message = "F + P"
                Exit Select
            Case 4
                message = "C"
                Exit Select
            Case 5
                message = "F + C"
                Exit Select
            Case 7
                message = "F + P + C"
                Exit Select
        End Select
        Return message
    End Function
End Class
