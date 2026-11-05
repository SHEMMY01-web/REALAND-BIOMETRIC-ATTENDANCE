object GLogForm: TGLogForm
  Left = 475
  Top = 194
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'GLog Manager'
  ClientHeight = 453
  ClientWidth = 671
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
  object lbl1: TLabel
    Left = 16
    Top = 392
    Width = 26
    Height = 13
    Caption = 'From:'
  end
  object lbl2: TLabel
    Left = 176
    Top = 392
    Width = 16
    Height = 13
    Caption = 'To:'
  end
  object dtpFromDate: TDateTimePicker
    Left = 64
    Top = 389
    Width = 81
    Height = 21
    Date = 41330.495683587960000000
    Time = 41330.495683587960000000
    TabOrder = 0
  end
  object dtpToDate: TDateTimePicker
    Left = 232
    Top = 389
    Width = 81
    Height = 21
    Date = 41330.495683587960000000
    Time = 41330.495683587960000000
    TabOrder = 1
  end
  object chkNewFlag: TCheckBox
    Left = 408
    Top = 389
    Width = 161
    Height = 17
    Caption = 'Clear New Glog Position'
    TabOrder = 2
  end
  object btnDownloadNew: TButton
    Left = 296
    Top = 420
    Width = 105
    Height = 25
    Caption = 'Get New Glog'
    TabOrder = 3
    OnClick = btnDownloadNewClick
  end
  object btnDownloadAll: TButton
    Left = 424
    Top = 420
    Width = 105
    Height = 25
    Caption = 'Get All Glog'
    TabOrder = 4
    OnClick = btnDownloadAllClick
  end
  object btnClear: TButton
    Left = 544
    Top = 420
    Width = 105
    Height = 25
    Caption = 'Clear All Glog'
    TabOrder = 5
    OnClick = btnClearClick
  end
  object lvRecord: TListView
    Left = 8
    Top = 8
    Width = 659
    Height = 369
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
        Caption = 'Verify Mode'
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
    TabOrder = 6
    ViewStyle = vsReport
  end
end
