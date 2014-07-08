object frmSetup: TfrmSetup
  Left = 237
  Top = 191
  BorderStyle = bsSingle
  Caption = 'Comm Port Settings'
  ClientHeight = 174
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TcxLabel
    Left = 151
    Top = 48
    Caption = 'DataBits'
    Transparent = True
  end
  object Label2: TcxLabel
    Left = 8
    Top = 12
    Caption = 'Comm Port'
    Transparent = True
  end
  object Label3: TcxLabel
    Left = 140
    Top = 12
    Caption = 'Baud Rate'
    Transparent = True
  end
  object Label4: TcxLabel
    Left = 8
    Top = 48
    Caption = 'Parity'
    Transparent = True
  end
  object cmbCommPort: TComboBox
    Left = 72
    Top = 8
    Width = 61
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 0
    Items.Strings = (
      'COM1'
      'COM2'
      'COM3'
      'COM4'
      'COM5'
      'COM6'
      'COM7'
      'COM8')
  end
  object cmbBaudRate: TComboBox
    Left = 200
    Top = 8
    Width = 89
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      '110'
      '300'
      '600'
      '1200'
      '2400'
      '4800'
      '9600'
      '14400'
      '19200'
      '38400'
      '56000'
      '128000'
      '256000')
  end
  object rdgStopBits: TRadioGroup
    Left = 292
    Top = 32
    Width = 117
    Height = 33
    Caption = 'StopBits'
    Columns = 3
    ItemIndex = 0
    Items.Strings = (
      '1'
      '1.5'
      '2')
    TabOrder = 2
  end
  object txtDataBits: TEdit
    Left = 200
    Top = 44
    Width = 45
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = '8'
  end
  object UpDown1: TUpDown
    Left = 244
    Top = 41
    Width = 16
    Height = 24
    Min = 4
    Max = 8
    Position = 4
    TabOrder = 4
    OnClick = UpDown1Click
  end
  object rdgFlowControl: TRadioGroup
    Left = 8
    Top = 68
    Width = 401
    Height = 37
    Caption = 'Flow Control'
    Columns = 4
    ItemIndex = 0
    Items.Strings = (
      'None'
      'RTS/CTS'
      'XON/XOFF'
      'DSR/DTR')
    TabOrder = 5
  end
  object cmbParity: TComboBox
    Left = 44
    Top = 44
    Width = 89
    Height = 21
    Style = csDropDownList
    ItemHeight = 13
    TabOrder = 6
    Items.Strings = (
      'Even'
      'Mark'
      'None'
      'Odd'
      'Space')
  end
  object Panel1: TPanel
    Left = 0
    Top = 133
    Width = 412
    Height = 41
    Align = alBottom
    TabOrder = 7
    object BtnOK: TcxButton
      Left = 106
      Top = 8
      Width = 75
      Height = 25
      Caption = 'OK'
      TabOrder = 0
      OnClick = BtnOKClick
    end
    object btnCancel: TcxButton
      Left = 230
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 1
    end
  end
  object chkSaveSettings: TCheckBox
    Left = 8
    Top = 108
    Width = 165
    Height = 17
    Caption = 'Save Settings in Registry?'
    Checked = True
    State = cbChecked
    TabOrder = 8
  end
  object btnDefaults: TcxButton
    Left = 332
    Top = 4
    Width = 75
    Height = 25
    Hint = 'Revert back to the default settings.'
    Caption = 'Defaults'
    TabOrder = 9
  end
  object SerialPort1: TSerialPort
    Left = 44
    Top = 120
  end
end
