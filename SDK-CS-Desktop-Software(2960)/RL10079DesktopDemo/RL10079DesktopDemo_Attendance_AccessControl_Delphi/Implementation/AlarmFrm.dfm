object AlarmForm: TAlarmForm
  Left = 414
  Top = 238
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Alarm Settings'
  ClientHeight = 214
  ClientWidth = 388
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
  object gb3: TGroupBox
    Left = 15
    Top = 6
    Width = 353
    Height = 193
    Caption = 'Alarm Settings'
    TabOrder = 0
    object lbl4: TLabel
      Left = 12
      Top = 58
      Width = 29
      Height = 13
      Caption = 'Cycle:'
    end
    object lbl5: TLabel
      Left = 12
      Top = 23
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
    object lbl1: TLabel
      Left = 16
      Top = 128
      Width = 30
      Height = 13
      Caption = 'Delay:'
    end
    object cbbAlarmCycle: TComboBox
      Left = 72
      Top = 53
      Width = 271
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Every day'
      Items.Strings = (
        'Every day'
        'Sunday'
        'Monday'
        'Tuesday'
        'Wednesday'
        'Thursday'
        'Friday'
        'Saturday')
    end
    object cbbAlarmDN: TComboBox
      Left = 72
      Top = 18
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
        '12'
        '13'
        '14'
        '15'
        '16'
        '17'
        '18'
        '19'
        '20'
        '21'
        '22'
        '23'
        '24')
    end
    object dtpAlarmTime: TDateTimePicker
      Left = 72
      Top = 88
      Width = 68
      Height = 21
      Date = 41330.000000000000000000
      Time = 41330.000000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object btnAlarmGet: TButton
      Left = 186
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 3
      OnClick = btnAlarmGetClick
    end
    object btnAlarmSet: TButton
      Left = 266
      Top = 157
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 4
      OnClick = btnAlarmSetClick
    end
    object edtAlarmDelay: TEdit
      Left = 72
      Top = 124
      Width = 121
      Height = 21
      MaxLength = 3
      TabOrder = 5
      Text = '0'
    end
  end
end
