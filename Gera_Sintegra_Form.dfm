object frmGeraSintegra: TfrmGeraSintegra
  Left = 394
  Top = 192
  Width = 545
  Height = 400
  Caption = 'Gerar Arquivos Sintegra'
  Color = clBtnFace
  Constraints.MinHeight = 400
  Constraints.MinWidth = 545
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 537
    Height = 120
    Align = alTop
    Caption = ' Cabe'#231'alho do Arquivo '
    TabOrder = 0
    object Label3: TcxLabel
      Left = 286
      Top = 23
      Caption = 'C'#243'digo de Identifica'#231#227'o do Conv'#234'nio'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 3
      Top = 68
      Caption = 'Natureza das Opera'#231#245'es Informadas'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 286
      Top = 68
      Caption = 'Finalidade do Arquivo'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 3
      Top = 24
      Caption = 'CNPJ'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 154
      Top = 23
      Caption = 'IE'
      ParentFont = False
      Transparent = True
    end
    object ComboBox1: TComboBox
      Left = 286
      Top = 39
      Width = 245
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        '1 - Conv'#234'nio 57/95 Vers'#227'o 31/99 Alt. 30/02'
        '2 - Conv'#234'nio 57/95 Vers'#227'o 69/02 Alt. 142/02  '
        '3 - Conv'#234'nio 57/95 Alt. 76/03')
    end
    object ComboBox2: TComboBox
      Left = 3
      Top = 84
      Width = 282
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        
          '1 - Interestaduais - Somente opera'#231#245'es sujeitas ao regime de Sub' +
          'stitui'#231#227'o Tribut'#225'ria'
        
          '2 - Interestaduais - Opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
          'a'
        '3 - Totalidade das opera'#231#245'es do informante')
    end
    object ComboBox3: TComboBox
      Left = 286
      Top = 84
      Width = 245
      Height = 21
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 13
      ParentFont = False
      TabOrder = 4
      Items.Strings = (
        '1 - Normal'
        '2 - Retifica'#231#227'o Total de Arquivo'
        '5 - Desfazimento de Arquivo')
    end
    object Edit2: TEdit
      Left = 2
      Top = 40
      Width = 138
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 0
      Text = '11111111111111'
    end
    object Edit3: TEdit
      Left = 153
      Top = 39
      Width = 127
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 1
      Text = 'ISENTO'
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 120
    Width = 537
    Height = 85
    Align = alTop
    Caption = ' Dados Complementares '
    TabOrder = 1
    object Label6: TcxLabel
      Left = 9
      Top = 26
      Caption = 'Respons'#225'vel'
      ParentFont = False
      Transparent = True
    end
    object Edit1: TEdit
      Left = 8
      Top = 42
      Width = 241
      Height = 21
      CharCase = ecUpperCase
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxLength = 28
      ParentFont = False
      TabOrder = 0
      Text = 'ACBR'
    end
    object GroupBox3: TGroupBox
      Left = 256
      Top = 7
      Width = 273
      Height = 74
      Caption = ' Per'#237'odo '
      TabOrder = 1
      object Label7: TcxLabel
        Left = 9
        Top = 19
        Caption = 'Inicial'
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 127
        Top = 19
        Caption = 'Final'
        ParentFont = False
        Transparent = True
      end
      object MaskEdit1: TMaskEdit
        Left = 10
        Top = 35
        Width = 89
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '01/07/2008'
      end
      object MaskEdit2: TMaskEdit
        Left = 127
        Top = 35
        Width = 89
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 1
        Text = '31/07/2008'
      end
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 205
    Width = 537
    Height = 87
    Align = alClient
    Caption = ' Gerar registros '
    TabOrder = 2
    object CheckListBox1: TCheckListBox
      Left = 2
      Top = 15
      Width = 533
      Height = 70
      Align = alClient
      Columns = 3
      ItemHeight = 13
      Items.Strings = (
        'Gerar 50'
        'Gerar 51'
        'Gerar 53'
        'Gerar 54'
        'Gerar 60M'
        'Gerar 60A'
        'Gerar 60D'
        'Gerar 70')
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 537
    Height = 81
    Align = alBottom
    TabOrder = 3
    object Label9: TcxLabel
      Left = 10
      Top = 7
      Caption = 'Engine de gera'#231#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 157
      Top = 7
      Caption = 'Vers'#227'o do validador'
      ParentFont = False
      Transparent = True
    end
    object ComboBox4: TComboBox
      Left = 10
      Top = 23
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'VCL'
      Items.Strings = (
        'VCL'
        'DLL')
    end
    object ComboBox5: TComboBox
      Left = 157
      Top = 23
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 1
      Text = '5.2.3'
      Items.Strings = (
        '5.2.3'
        '5.2.4')
    end
    object Button1: TcxButton
      Left = 10
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Button2: TcxButton
      Left = 449
      Top = 51
      Width = 75
      Height = 25
      Caption = 'Vers'#227'o'
      TabOrder = 3
      OnClick = Button2Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Arquivos Texto|*.txt'
    Options = [ofHideReadOnly]
    Title = 'Salvar Arquivo'
    Left = 480
    Top = 236
  end
  object ACBrSintegra: TACBrSintegra
    VersaoValidador = vv524
    Informa88SME = False
    Informa88SMS = False
    Informa88EAN = False
    Informa88C = False
    Left = 232
    Top = 120
  end
end
