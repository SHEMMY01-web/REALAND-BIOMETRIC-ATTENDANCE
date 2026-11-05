object AccessControlForm: TAccessControlForm
  Left = 191
  Top = 87
  Width = 844
  Height = 517
  BorderIcons = [biSystemMenu]
  Caption = 'AccessControlForm'
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
  object pgcAccess: TPageControl
    Left = 16
    Top = 16
    Width = 809
    Height = 449
    ActivePage = tsLockControl
    TabOrder = 0
    object tsSettings: TTabSheet
      Caption = 'Settings'
      object lbl1: TLabel
        Left = 4
        Top = 18
        Width = 161
        Height = 13
        AutoSize = False
        Caption = 'Open door delay (0-255) S'
      end
      object lbl2: TLabel
        Left = 4
        Top = 44
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Check door status'
      end
      object lbl3: TLabel
        Left = 4
        Top = 70
        Width = 177
        Height = 13
        AutoSize = False
        Caption = 'Open door overtime alarm (0-255) S'
      end
      object lbl4: TLabel
        Left = 4
        Top = 95
        Width = 156
        Height = 13
        AutoSize = False
        Caption = 'Illegal open door delay (0-255) S'
      end
      object lbl5: TLabel
        Left = 4
        Top = 121
        Width = 156
        Height = 13
        AutoSize = False
        Caption = 'Auto. unlock 1 pass-group'
      end
      object lbl6: TLabel
        Left = 4
        Top = 147
        Width = 156
        Height = 13
        AutoSize = False
        Caption = 'Enable realy alarm'
      end
      object lbl7: TLabel
        Left = 4
        Top = 173
        Width = 156
        Height = 13
        AutoSize = False
        Caption = 'Fire alarm'
      end
      object Label7: TLabel
        Left = 412
        Top = 18
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Wiegand type'
      end
      object Label8: TLabel
        Left = 412
        Top = 44
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Mult-open'
      end
      object Label9: TLabel
        Left = 412
        Top = 70
        Width = 145
        Height = 13
        AutoSize = False
        Caption = 'Anti-passback'
      end
      object edtOpenDoor1Time: TEdit
        Left = 192
        Top = 17
        Width = 121
        Height = 21
        TabOrder = 0
        Text = '0'
      end
      object ud1: TUpDown
        Left = 313
        Top = 17
        Width = 16
        Height = 21
        Associate = edtOpenDoor1Time
        TabOrder = 1
      end
      object cbbCheckDoor1Status: TComboBox
        Left = 193
        Top = 43
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 2
        Text = 'No'
        Items.Strings = (
          'No'
          'Yes')
      end
      object edtOpenDoor1OvertimeAlarm: TEdit
        Left = 192
        Top = 69
        Width = 121
        Height = 21
        TabOrder = 3
        Text = '0'
      end
      object UpDown1: TUpDown
        Left = 313
        Top = 69
        Width = 16
        Height = 21
        Associate = edtOpenDoor1OvertimeAlarm
        TabOrder = 4
      end
      object cbbEnableRealyAlarm: TComboBox
        Left = 193
        Top = 146
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'No'
        Items.Strings = (
          'No'
          'Yes')
      end
      object cbbFireAlarm: TComboBox
        Left = 193
        Top = 169
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 6
        Text = 'No'
        Items.Strings = (
          'No'
          'Yes')
      end
      object grp1: TGroupBox
        Left = 1
        Top = 204
        Width = 341
        Height = 202
        Caption = '2nd lock'
        TabOrder = 7
        object Label1: TLabel
          Left = 4
          Top = 27
          Width = 161
          Height = 13
          AutoSize = False
          Caption = '2nd lock'
        end
        object Label2: TLabel
          Left = 4
          Top = 53
          Width = 174
          Height = 13
          AutoSize = False
          Caption = 'Open door delay (0-255) S'
        end
        object Label3: TLabel
          Left = 4
          Top = 79
          Width = 182
          Height = 13
          AutoSize = False
          Caption = 'Check door status'
        end
        object Label4: TLabel
          Left = 4
          Top = 104
          Width = 185
          Height = 13
          AutoSize = False
          Caption = 'Open door overtime alarm (0-255) S'
        end
        object Label5: TLabel
          Left = 4
          Top = 130
          Width = 185
          Height = 13
          AutoSize = False
          Caption = 'Illegal open door delay (0-255) S'
        end
        object Label6: TLabel
          Left = 4
          Top = 156
          Width = 185
          Height = 13
          AutoSize = False
          Caption = 'Auto. unlock 2 pass-group'
        end
        object cbbCheckDoor2Status: TComboBox
          Left = 192
          Top = 76
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'No'
          Items.Strings = (
            'No'
            'Yes')
        end
        object edtOpenDoor2OvertimeAlarm: TEdit
          Left = 192
          Top = 102
          Width = 121
          Height = 21
          TabOrder = 1
          Text = '0'
        end
        object cbbSecondLock: TComboBox
          Left = 192
          Top = 24
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'None'
            'Master'
            'Slave'
            'M&S')
        end
        object edtOpenDoor2Time: TEdit
          Left = 192
          Top = 50
          Width = 121
          Height = 21
          TabOrder = 3
          Text = '0'
        end
        object UpDown4: TUpDown
          Left = 313
          Top = 50
          Width = 16
          Height = 21
          Associate = edtOpenDoor2Time
          TabOrder = 4
        end
        object UpDown5: TUpDown
          Left = 313
          Top = 102
          Width = 16
          Height = 21
          Associate = edtOpenDoor2OvertimeAlarm
          TabOrder = 5
        end
        object edtIllegalOpenDoor2Time: TEdit
          Left = 192
          Top = 128
          Width = 121
          Height = 21
          TabOrder = 6
          Text = '0'
        end
        object UpDown6: TUpDown
          Left = 313
          Top = 128
          Width = 16
          Height = 21
          Associate = edtIllegalOpenDoor2Time
          TabOrder = 7
        end
        object edtAutoUnlock2PassGroup: TEdit
          Left = 192
          Top = 154
          Width = 121
          Height = 21
          TabOrder = 8
          Text = '0'
        end
        object UpDown7: TUpDown
          Left = 313
          Top = 154
          Width = 16
          Height = 21
          Associate = edtAutoUnlock2PassGroup
          TabOrder = 9
        end
      end
      object cbbWiegand: TComboBox
        Left = 601
        Top = 17
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 8
        Items.Strings = (
          '26-Bit'
          '34-Bit'
          '66-Bit')
      end
      object cbbMultOpenEnable: TComboBox
        Left = 601
        Top = 43
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 9
        Text = 'No'
        Items.Strings = (
          'No'
          'Yes')
      end
      object cbbAntiPassback: TComboBox
        Left = 601
        Top = 69
        Width = 138
        Height = 21
        Style = csDropDownList
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 10
        Text = 'No'
        Items.Strings = (
          'No'
          'Yes')
      end
      object grp2: TGroupBox
        Left = 412
        Top = 96
        Width = 345
        Height = 75
        Caption = 'Linkage'
        TabOrder = 11
        object Label10: TLabel
          Left = 18
          Top = 18
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Open door'
        end
        object Label11: TLabel
          Left = 18
          Top = 42
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Alarm'
        end
        object cbbLinkageOpen: TComboBox
          Left = 191
          Top = 17
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'None'
            'Master'
            'Slave'
            'M&S')
        end
        object cbbLinkageAlarm: TComboBox
          Left = 191
          Top = 41
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            'None'
            'Master'
            'Slave'
            'M&S')
        end
      end
      object GroupBox1: TGroupBox
        Left = 412
        Top = 208
        Width = 345
        Height = 161
        Caption = 'Hijack'
        TabOrder = 12
        object Label12: TLabel
          Left = 18
          Top = 32
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Enable anti-hijack'
        end
        object Label13: TLabel
          Left = 18
          Top = 56
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Hijack FP No.'
        end
        object Label14: TLabel
          Left = 18
          Top = 80
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Open door'
        end
        object Label15: TLabel
          Left = 18
          Top = 104
          Width = 145
          Height = 13
          AutoSize = False
          Caption = 'Alarm'
        end
        object Label16: TLabel
          Left = 18
          Top = 130
          Width = 156
          Height = 13
          AutoSize = False
          Caption = 'Hijack password'
        end
        object cbbAntiHijackEnable: TComboBox
          Left = 191
          Top = 31
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'No'
            'Yes')
        end
        object cbbHijackFpNo: TComboBox
          Left = 191
          Top = 55
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          Items.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6'
            '7'
            '8'
            '9')
        end
        object cbbHijackOpen: TComboBox
          Left = 191
          Top = 79
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 2
          Items.Strings = (
            'No'
            'Yes')
        end
        object cbbHijackAlarm: TComboBox
          Left = 191
          Top = 103
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 3
          Items.Strings = (
            'No'
            'Yes')
        end
        object edtHijackPassword: TEdit
          Left = 191
          Top = 128
          Width = 137
          Height = 21
          TabOrder = 4
          Text = '0'
        end
      end
      object edtIllegalOpenDoor1Time: TEdit
        Left = 192
        Top = 95
        Width = 121
        Height = 21
        TabOrder = 13
        Text = '0'
      end
      object UpDown2: TUpDown
        Left = 313
        Top = 95
        Width = 16
        Height = 21
        Associate = edtIllegalOpenDoor1Time
        TabOrder = 14
      end
      object edtAutoUnlock1PassGroup: TEdit
        Left = 192
        Top = 119
        Width = 121
        Height = 21
        TabOrder = 15
        Text = '0'
      end
      object UpDown3: TUpDown
        Left = 313
        Top = 119
        Width = 16
        Height = 21
        Associate = edtAutoUnlock1PassGroup
        TabOrder = 16
      end
      object btnGetSetting: TButton
        Left = 416
        Top = 384
        Width = 161
        Height = 25
        Caption = 'Get device setting'
        TabOrder = 17
        OnClick = btnGetSettingClick
      end
      object btnSetSetting: TButton
        Left = 600
        Top = 384
        Width = 161
        Height = 25
        Caption = 'Apply device setting to device'
        TabOrder = 18
        OnClick = btnSetSettingClick
      end
    end
    object tsPassSegment: TTabSheet
      Caption = 'Pass Segment'
      ImageIndex = 1
      object btnGetPassSegment: TButton
        Left = 640
        Top = 48
        Width = 161
        Height = 25
        Caption = 'Get pass-segment'
        TabOrder = 0
        OnClick = btnGetPassSegmentClick
      end
      object btnSetPassSegment: TButton
        Left = 640
        Top = 104
        Width = 161
        Height = 25
        Caption = 'Apply pass-segment to device'
        TabOrder = 1
        OnClick = btnSetPassSegmentClick
      end
      object scrlbxSegment: TScrollBox
        Left = 16
        Top = 8
        Width = 577
        Height = 401
        TabOrder = 2
      end
    end
    object tsPassGroup: TTabSheet
      Caption = 'Pass Group'
      ImageIndex = 2
      object btnGetPassGroup: TButton
        Left = 640
        Top = 48
        Width = 161
        Height = 25
        Caption = 'Get pass-group'
        TabOrder = 0
        OnClick = btnGetPassGroupClick
      end
      object btnSetPassGroup: TButton
        Left = 640
        Top = 104
        Width = 161
        Height = 25
        Caption = 'Apply pass-group to device'
        TabOrder = 1
        OnClick = btnSetPassGroupClick
      end
      object scrlbxGroup: TScrollBox
        Left = 16
        Top = 8
        Width = 577
        Height = 401
        TabOrder = 2
      end
    end
    object tsPassZone: TTabSheet
      Caption = 'Pass Zone'
      ImageIndex = 3
      object lbl8: TLabel
        Left = 75
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Sun'
      end
      object lbl9: TLabel
        Left = 148
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Mon'
      end
      object lbl10: TLabel
        Left = 221
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Tue'
      end
      object lbl11: TLabel
        Left = 293
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Wed'
      end
      object lbl12: TLabel
        Left = 366
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Thu'
      end
      object lbl13: TLabel
        Left = 439
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Fri'
      end
      object lbl14: TLabel
        Left = 512
        Top = 18
        Width = 35
        Height = 13
        AutoSize = False
        Caption = 'Sat'
      end
      object scrlbxZone: TScrollBox
        Left = 16
        Top = 32
        Width = 577
        Height = 377
        TabOrder = 0
      end
      object btnGetPassZone: TButton
        Left = 640
        Top = 48
        Width = 161
        Height = 25
        Caption = 'Get pass-zone'
        TabOrder = 1
        OnClick = btnGetPassZoneClick
      end
      object btnSetPassZone: TButton
        Left = 640
        Top = 104
        Width = 161
        Height = 25
        Caption = 'Apply pass-zone to device'
        TabOrder = 2
        OnClick = btnSetPassZoneClick
      end
    end
    object tsMultOpenGroup: TTabSheet
      Caption = 'Mult-Open Group'
      ImageIndex = 4
      object scrlbxMultOpenGroup: TScrollBox
        Left = 16
        Top = 8
        Width = 577
        Height = 401
        TabOrder = 0
      end
      object btnGetMultOpenGroup: TButton
        Left = 640
        Top = 48
        Width = 161
        Height = 25
        Caption = 'Get mult-open group'
        TabOrder = 1
        OnClick = btnGetMultOpenGroupClick
      end
      object btnSetMultOpenGroup: TButton
        Left = 640
        Top = 104
        Width = 161
        Height = 25
        Caption = 'Apply mult-open group to device'
        TabOrder = 2
        OnClick = btnSetMultOpenGroupClick
      end
    end
    object tsLockControl: TTabSheet
      Caption = 'Lock Control'
      ImageIndex = 5
      object GroupBox2: TGroupBox
        Left = 12
        Top = 16
        Width = 493
        Height = 145
        Caption = 'Lock remote control'
        TabOrder = 0
        object cbbLockCombo: TComboBox
          Left = 15
          Top = 23
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Lock 1'
          Items.Strings = (
            'Lock 1'
            'Lock 2')
        end
        object btnLockOpen: TButton
          Left = 184
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Open'
          TabOrder = 1
          OnClick = btnLockOpenClick
        end
        object btnLockAuto: TButton
          Left = 296
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Auto'
          TabOrder = 2
          OnClick = btnLockAutoClick
        end
        object btnLockKeepOpen: TButton
          Left = 184
          Top = 56
          Width = 97
          Height = 25
          Caption = 'Keep Open'
          TabOrder = 3
          OnClick = btnLockKeepOpenClick
        end
        object btnLockKeepClose: TButton
          Left = 296
          Top = 56
          Width = 97
          Height = 25
          Caption = 'Keep Close'
          TabOrder = 4
          OnClick = btnLockKeepCloseClick
        end
        object btnLockGetStatus: TButton
          Left = 184
          Top = 88
          Width = 97
          Height = 25
          Caption = 'Get Status'
          TabOrder = 5
          OnClick = btnLockGetStatusClick
        end
        object btnLockGetEvent: TButton
          Left = 296
          Top = 88
          Width = 97
          Height = 25
          Caption = 'Get Event'
          TabOrder = 6
          OnClick = btnLockGetEventClick
        end
      end
      object GroupBox3: TGroupBox
        Left = 12
        Top = 216
        Width = 493
        Height = 145
        Caption = 'Sound remote control'
        TabOrder = 1
        object cbbSoundList: TComboBox
          Left = 15
          Top = 23
          Width = 138
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'PWD_NOT_MATCH'
          Items.Strings = (
            'PWD_NOT_MATCH'
            'FP_ENTER_AGAIN'
            'SUCCESS'
            'ALREADY_SUCCESS'
            'CARD_NOT_MATCH'
            'PRESENT_CARD_AGAIN'
            'NOT_AT_TIME'
            'ALARM'
            'USER_DEFINED1'
            'USER_DEFINED2')
        end
        object btnSoundVoice: TButton
          Left = 184
          Top = 24
          Width = 97
          Height = 25
          Caption = 'Voice'
          TabOrder = 1
          OnClick = btnSoundVoiceClick
        end
      end
    end
  end
end
