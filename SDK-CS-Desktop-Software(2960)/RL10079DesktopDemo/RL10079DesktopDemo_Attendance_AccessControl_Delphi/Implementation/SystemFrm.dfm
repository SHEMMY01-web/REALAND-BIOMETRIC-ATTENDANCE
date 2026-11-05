object SystemForm: TSystemForm
  Left = 248
  Top = 117
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'System Settings'
  ClientHeight = 561
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object gb1: TGroupBox
    Left = 6
    Top = 8
    Width = 353
    Height = 111
    Caption = 'System Parameters Setting'
    TabOrder = 0
    object lbl1: TLabel
      Left = 12
      Top = 26
      Width = 50
      Height = 13
      Caption = 'Parmeters:'
    end
    object lbl2: TLabel
      Left = 12
      Top = 54
      Width = 30
      Height = 13
      Caption = 'Value:'
    end
    object cbbParam: TComboBox
      Left = 72
      Top = 21
      Width = 271
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Admin Count'
      Items.Strings = (
        'Admin Count'
        'Language Format'
        'ID Length'
        'Volume Size'
        'Auto Off Time'
        'Auto Power On'
        'Verify Mode'
        'Auto Learning'
        'Auto Return Time'
        'Standby Time'
        'Enable Alarm In Standby'
        'Card ID Type'
        'Auto Restart'
        'Enable Shutdown'
        'Enable Relay Alarm'
        'Fire Alarm'
        'One To One Security Level'
        'One To N Security Level'
        'SLog Warning Count'
        'GLog Warning Count'
        'Reverify Time'
        'Device ID'
        'Baudrate'
        'User Real Time Log'
        'UDP Port'
        'Device Password'
        'IP Address'
        'Sub Net Address'
        'Default Gate'
        'Server IP Address'
        'Server UDP Port'
        'RS485 Use')
    end
    object edtParamValue: TEdit
      Left = 72
      Top = 49
      Width = 269
      Height = 21
      TabOrder = 1
    end
    object btnParamValueGet: TButton
      Left = 186
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 2
      OnClick = btnParamValueGetClick
    end
    object btnParamValueSet: TButton
      Left = 266
      Top = 77
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 3
      OnClick = btnParamValueSetClick
    end
  end
  object gb2: TGroupBox
    Left = 368
    Top = 8
    Width = 545
    Height = 81
    Caption = 'Timer Settings'
    TabOrder = 1
    object lbl3: TLabel
      Left = 14
      Top = 25
      Width = 26
      Height = 13
      Caption = 'Time:'
    end
    object edtTime: TEdit
      Left = 56
      Top = 20
      Width = 473
      Height = 21
      TabOrder = 0
    end
    object btnGetTime: TButton
      Left = 289
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 1
      OnClick = btnGetTimeClick
    end
    object btnSetTime: TButton
      Left = 377
      Top = 48
      Width = 153
      Height = 25
      Caption = 'Synchronize the device time'
      TabOrder = 2
      OnClick = btnSetTimeClick
    end
  end
  object gb3: TGroupBox
    Left = 7
    Top = 126
    Width = 353
    Height = 154
    Caption = 'Timer Off Settings'
    TabOrder = 2
    object lbl4: TLabel
      Left = 12
      Top = 26
      Width = 27
      Height = 13
      Caption = 'Type:'
    end
    object lbl5: TLabel
      Left = 12
      Top = 55
      Width = 18
      Height = 13
      Caption = 'SN:'
    end
    object lbl6: TLabel
      Left = 12
      Top = 92
      Width = 26
      Height = 13
      Caption = 'Time:'
    end
    object cbbPowerType: TComboBox
      Left = 72
      Top = 21
      Width = 271
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Shutdown'
      Items.Strings = (
        'Shutdown')
    end
    object cbbDN: TComboBox
      Left = 72
      Top = 50
      Width = 271
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '1'
      Items.Strings = (
        '1'
        '2'
        '3'
        '4'
        '5'
        '6'
        '7'
        '8'
        '9'
        '10'
        '11'
        '12')
    end
    object dtpPowerTime: TDateTimePicker
      Left = 72
      Top = 88
      Width = 68
      Height = 21
      Date = 41330.000000000000000000
      Time = 41330.000000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object chkPowerTimeOff: TCheckBox
      Left = 176
      Top = 88
      Width = 97
      Height = 17
      Caption = 'Enable'
      TabOrder = 3
    end
    object btnPowerGet: TButton
      Left = 178
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 4
      OnClick = btnPowerGetClick
    end
    object btnPowerSet: TButton
      Left = 258
      Top = 117
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 5
      OnClick = btnPowerSetClick
    end
  end
  object gb4: TGroupBox
    Left = 368
    Top = 104
    Width = 545
    Height = 179
    Caption = 'Device Record Information Settings'
    TabOrder = 3
    object lbl7: TLabel
      Left = 16
      Top = 24
      Width = 56
      Height = 13
      Caption = 'User Count:'
    end
    object Label1: TLabel
      Left = 247
      Top = 24
      Width = 76
      Height = 13
      Caption = 'Manager Count:'
    end
    object Label2: TLabel
      Left = 16
      Top = 54
      Width = 47
      Height = 13
      Caption = 'FP Count:'
    end
    object Label3: TLabel
      Left = 247
      Top = 54
      Width = 60
      Height = 13
      Caption = 'PWD Count:'
    end
    object Label4: TLabel
      Left = 16
      Top = 84
      Width = 56
      Height = 13
      Caption = 'Card Count:'
    end
    object Label5: TLabel
      Left = 247
      Top = 84
      Width = 60
      Height = 13
      Caption = 'GLog Count:'
    end
    object Label6: TLabel
      Left = 16
      Top = 114
      Width = 59
      Height = 13
      Caption = 'SLog Count:'
    end
    object Label7: TLabel
      Left = 247
      Top = 114
      Width = 95
      Height = 13
      Caption = 'History GLog Count:'
    end
    object Label8: TLabel
      Left = 16
      Top = 144
      Width = 94
      Height = 13
      Caption = 'History SLog Count:'
    end
    object edtUserCount: TEdit
      Left = 115
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object edtAdminCount: TEdit
      Left = 348
      Top = 19
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtFingerCount: TEdit
      Left = 115
      Top = 49
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtPwdCount: TEdit
      Left = 348
      Top = 49
      Width = 121
      Height = 21
      TabOrder = 3
    end
    object edtCardCount: TEdit
      Left = 115
      Top = 79
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object edtGLogCount: TEdit
      Left = 348
      Top = 79
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object edtSLogCount: TEdit
      Left = 115
      Top = 109
      Width = 121
      Height = 21
      TabOrder = 6
    end
    object edtHisGLogCount: TEdit
      Left = 348
      Top = 109
      Width = 121
      Height = 21
      TabOrder = 7
    end
    object edtHisSLogCount: TEdit
      Left = 115
      Top = 139
      Width = 121
      Height = 21
      TabOrder = 8
    end
    object btnSystemGet: TButton
      Left = 457
      Top = 144
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 9
      OnClick = btnSystemGetClick
    end
  end
  object gb5: TGroupBox
    Left = 7
    Top = 288
    Width = 905
    Height = 83
    Caption = 'Title Settings'
    TabOrder = 4
    object Label9: TLabel
      Left = 16
      Top = 24
      Width = 71
      Height = 13
      Caption = 'Welcome Title:'
    end
    object Label10: TLabel
      Left = 16
      Top = 52
      Width = 65
      Height = 13
      Caption = 'Standby Title:'
    end
    object edtWelcome: TEdit
      Left = 101
      Top = 19
      Width = 330
      Height = 21
      TabOrder = 0
    end
    object edtStandby: TEdit
      Left = 101
      Top = 49
      Width = 330
      Height = 21
      TabOrder = 1
    end
    object btnGetWelcome: TButton
      Left = 450
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 2
      OnClick = btnGetWelcomeClick
    end
    object btnGetStandby: TButton
      Left = 450
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 3
      OnClick = btnGetStandbyClick
    end
    object btnSetWelcome: TButton
      Left = 538
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 4
      OnClick = btnSetWelcomeClick
    end
    object btnSetStandby: TButton
      Left = 538
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 5
      OnClick = btnSetStandbyClick
    end
  end
  object gb6: TGroupBox
    Left = 7
    Top = 379
    Width = 906
    Height = 86
    Caption = 'Device Information'
    TabOrder = 5
    object Label11: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 13
      Caption = 'FirmwareVersion:'
    end
    object Label12: TLabel
      Left = 16
      Top = 52
      Width = 32
      Height = 13
      Caption = 'Model:'
    end
    object edtFirmwareVersion: TEdit
      Left = 101
      Top = 19
      Width = 330
      Height = 21
      TabOrder = 0
    end
    object edtModel: TEdit
      Left = 101
      Top = 49
      Width = 330
      Height = 21
      TabOrder = 1
    end
    object btnGetFirmwareVersion: TButton
      Left = 450
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 2
      OnClick = btnGetFirmwareVersionClick
    end
    object btnGetModel: TButton
      Left = 450
      Top = 50
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 3
      OnClick = btnGetModelClick
    end
  end
  object GroupBox1: TGroupBox
    Left = 6
    Top = 471
    Width = 906
    Height = 52
    Caption = 'Upload Sound'
    TabOrder = 6
    object Label13: TLabel
      Left = 16
      Top = 24
      Width = 27
      Height = 13
      Caption = 'Type:'
    end
    object btnUploadSoundType: TButton
      Left = 250
      Top = 18
      Width = 75
      Height = 25
      Caption = 'Upload'
      TabOrder = 0
      OnClick = btnUploadSoundTypeClick
    end
    object cbbSoundType: TComboBox
      Left = 72
      Top = 20
      Width = 158
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = 'User Defined 1'
      Items.Strings = (
        'User Defined 1'
        'User Defined 2')
    end
  end
  object btnGetMacAddress: TButton
    Left = 682
    Top = 530
    Width = 100
    Height = 25
    Caption = 'Get MAC Address'
    TabOrder = 7
    OnClick = btnGetMacAddressClick
  end
  object btnReset: TButton
    Left = 818
    Top = 529
    Width = 94
    Height = 25
    Caption = 'Device Init'
    TabOrder = 8
    OnClick = btnResetClick
  end
  object dlgOpen: TOpenDialog
    Left = 88
    Top = 472
  end
end
