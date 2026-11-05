object MessageForm: TMessageForm
  Left = 296
  Top = 162
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Message Settings'
  ClientHeight = 263
  ClientWidth = 672
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object gb3: TGroupBox
    Left = 8
    Top = 7
    Width = 650
    Height = 243
    Caption = 'Message Settings'
    TabOrder = 0
    object lbl4: TLabel
      Left = 12
      Top = 58
      Width = 27
      Height = 13
      Caption = 'Type:'
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
      Width = 56
      Height = 13
      Caption = 'Begin Time:'
    end
    object lbl1: TLabel
      Left = 360
      Top = 56
      Width = 14
      Height = 13
      Caption = 'ID:'
    end
    object Label1: TLabel
      Left = 348
      Top = 92
      Width = 48
      Height = 13
      Caption = 'End Time:'
    end
    object Label13: TLabel
      Left = 8
      Top = 128
      Width = 61
      Height = 13
      Caption = 'Sound Type:'
    end
    object Label2: TLabel
      Left = 8
      Top = 168
      Width = 40
      Height = 13
      Caption = 'Content:'
    end
    object cbbMessageType: TComboBox
      Left = 112
      Top = 53
      Width = 168
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'All'
      Items.Strings = (
        'All'
        'User'
        'Group')
    end
    object cbbDN: TComboBox
      Left = 112
      Top = 18
      Width = 168
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
        '10')
    end
    object dtpBeginTime: TDateTimePicker
      Left = 213
      Top = 88
      Width = 68
      Height = 21
      Date = 41330.000000000000000000
      Time = 41330.000000000000000000
      Kind = dtkTime
      TabOrder = 2
    end
    object btnPowerGet: TButton
      Left = 466
      Top = 197
      Width = 75
      Height = 25
      Caption = 'Get'
      TabOrder = 3
      OnClick = btnPowerGetClick
    end
    object btnPowerSet: TButton
      Left = 546
      Top = 197
      Width = 75
      Height = 25
      Caption = 'Set'
      TabOrder = 4
      OnClick = btnPowerSetClick
    end
    object chkEnable: TCheckBox
      Left = 448
      Top = 16
      Width = 97
      Height = 17
      Caption = 'Enable'
      TabOrder = 5
    end
    object edtMessageID: TEdit
      Left = 448
      Top = 53
      Width = 121
      Height = 21
      TabOrder = 6
      Text = '0'
    end
    object dtpBeginDate: TDateTimePicker
      Left = 112
      Top = 88
      Width = 95
      Height = 21
      Date = 41330.490332025460000000
      Time = 41330.490332025460000000
      TabOrder = 7
    end
    object dtpEndDate: TDateTimePicker
      Left = 448
      Top = 88
      Width = 95
      Height = 21
      Date = 41330.490332025460000000
      Time = 41330.490332025460000000
      TabOrder = 8
    end
    object dtpEndTime: TDateTimePicker
      Left = 549
      Top = 88
      Width = 68
      Height = 21
      Date = 41330.999988425930000000
      Time = 41330.999988425930000000
      Kind = dtkTime
      TabOrder = 9
    end
    object cbbSoundType: TComboBox
      Left = 113
      Top = 124
      Width = 168
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 10
      Text = 'Default'
      Items.Strings = (
        'Default'
        'User Defined 1'
        'User Defined 2')
    end
    object edtContent: TEdit
      Left = 112
      Top = 157
      Width = 505
      Height = 21
      TabOrder = 11
    end
  end
end
