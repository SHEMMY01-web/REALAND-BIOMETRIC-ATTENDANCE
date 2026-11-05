object RealTimeForm: TRealTimeForm
  Left = 409
  Top = 176
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'RealTimeForm'
  ClientHeight = 424
  ClientWidth = 748
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 12
    Top = 18
    Width = 68
    Height = 13
    Caption = 'Monitor Mode:'
  end
  object lbl2: TLabel
    Left = 204
    Top = 18
    Width = 48
    Height = 13
    Caption = 'UDP Port:'
  end
  object lblLogData: TLabel
    Left = 9
    Top = 329
    Width = 71
    Height = 13
    Caption = 'Real time data:'
  end
  object cbbMode: TComboBox
    Left = 88
    Top = 13
    Width = 105
    Height = 21
    Style = csDropDownList
    Enabled = False
    ItemHeight = 13
    ItemIndex = 0
    TabOrder = 0
    Text = 'UDP'
    Items.Strings = (
      'UDP')
  end
  object edtPort: TEdit
    Left = 264
    Top = 13
    Width = 105
    Height = 21
    TabOrder = 1
    Text = '5055'
  end
  object btnListen: TButton
    Left = 384
    Top = 11
    Width = 75
    Height = 25
    Caption = 'Listen'
    TabOrder = 2
    OnClick = btnListenClick
  end
  object lvRecord: TListView
    Left = 8
    Top = 40
    Width = 729
    Height = 281
    Columns = <
      item
        Caption = 'SN'
      end
      item
        Caption = 'Device No.'
        Width = 100
      end
      item
        Caption = 'User ID'
        Width = 100
      end
      item
        Caption = 'Name'
        Width = 100
      end
      item
        Caption = 'Operation'
        Width = 100
      end
      item
        Caption = 'Action'
        Width = 100
      end
      item
        Caption = 'Datetime'
        Width = 200
      end>
    GridLines = True
    TabOrder = 3
    ViewStyle = vsReport
  end
  object mmoDataLog: TMemo
    Left = 8
    Top = 344
    Width = 729
    Height = 73
    TabOrder = 4
  end
end
