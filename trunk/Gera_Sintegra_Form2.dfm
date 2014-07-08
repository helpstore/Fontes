object frmGeraSintegra2: TfrmGeraSintegra2
  Left = 383
  Top = 129
  BorderStyle = bsDialog
  Caption = 'Gerar Arquivos Sintegra'
  ClientHeight = 434
  ClientWidth = 675
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 675
    Height = 160
    Align = alTop
    Caption = ' Cabe'#231'alho do Arquivo '
    TabOrder = 0
    object Label1: TcxLabel
      Left = 6
      Top = 24
      Caption = 'CNPJ'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 525
      Top = 23
      Caption = 'IE'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 153
      Top = 24
      Caption = 'Raz'#227'o Social'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 6
      Top = 103
      Caption = 'Cidade'
      ParentFont = False
      Transparent = True
    end
    object UF: TcxLabel
      Left = 250
      Top = 103
      Caption = 'UF'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 290
      Top = 103
      Caption = 'Fone'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 6
      Top = 64
      Caption = 'Logradouro'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 293
      Top = 63
      Caption = 'N'#250'mero'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 357
      Top = 64
      Caption = 'Bairro'
      ParentFont = False
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 565
      Top = 64
      Caption = 'Cep'
      ParentFont = False
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 409
      Top = 103
      Caption = 'Respons'#225'vel'
      ParentFont = False
      Transparent = True
    end
    object edtCNPJ: TcxDBMaskEdit
      Left = 6
      Top = 38
      DataBinding.DataField = 'CNPJ'
      DataBinding.DataSource = DsCabecalho
      Properties.EditMask = '##.###.###/####-##'
      Properties.MaxLength = 0
      TabOrder = 0
      Width = 143
    end
    object edtIE: TcxDBMaskEdit
      Left = 524
      Top = 38
      DataBinding.DataField = 'IE'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 2
      Width = 143
    end
    object edtRazao: TcxDBMaskEdit
      Left = 152
      Top = 38
      DataBinding.DataField = 'RAZAO_SOCIAL'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 1
      Width = 369
    end
    object edtCidade: TcxDBMaskEdit
      Left = 6
      Top = 119
      DataBinding.DataField = 'CIDADE'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 7
      Width = 243
    end
    object edtUF: TcxDBMaskEdit
      Left = 250
      Top = 119
      DataBinding.DataField = 'UF'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 8
      Width = 37
    end
    object edtFone: TcxDBMaskEdit
      Left = 290
      Top = 119
      DataBinding.DataField = 'FONE'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 9
      Width = 117
    end
    object edtLogradouro: TcxDBMaskEdit
      Left = 6
      Top = 78
      DataBinding.DataField = 'LOGRADOURO'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 3
      Width = 285
    end
    object edtNumero: TcxMaskEdit
      Left = 292
      Top = 78
      TabOrder = 4
      Width = 61
    end
    object edtBairro: TcxDBMaskEdit
      Left = 356
      Top = 78
      DataBinding.DataField = 'BAIRRO'
      DataBinding.DataSource = DsCabecalho
      TabOrder = 5
      Width = 205
    end
    object edtCep: TcxDBMaskEdit
      Left = 564
      Top = 78
      DataBinding.DataField = 'CEP'
      DataBinding.DataSource = DsCabecalho
      Properties.EditMask = '00000\-999;1;_'
      Properties.MaxLength = 0
      TabOrder = 6
      Width = 102
    end
    object edtResponsavel: TcxMaskEdit
      Left = 409
      Top = 119
      TabOrder = 10
      Width = 258
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 160
    Width = 675
    Height = 145
    Align = alTop
    Caption = ' Dados Complementares '
    TabOrder = 1
    object Label4: TcxLabel
      Left = 8
      Top = 16
      Caption = 'Natureza das Opera'#231#245'es Informadas'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 8
      Top = 56
      Caption = 'Finalidade do Arquivo'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 304
      Top = 16
      Caption = 'C'#243'digo de Identifica'#231#227'o do Conv'#234'nio'
      ParentFont = False
      Transparent = True
    end
    object GroupBox3: TGroupBox
      Left = 305
      Top = 63
      Width = 248
      Height = 66
      Caption = ' Per'#237'odo '
      TabOrder = 0
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
      object MaskEdit1: TcxDateEdit
        Left = 9
        Top = 34
        Properties.DateOnError = deToday
        TabOrder = 0
        Width = 104
      end
      object MaskEdit2: TcxDateEdit
        Left = 127
        Top = 34
        Properties.DateOnError = deToday
        TabOrder = 1
        Width = 106
      end
    end
    object ComboBox2: TComboBox
      Left = 8
      Top = 32
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
      TabOrder = 1
      Items.Strings = (
        
          '1 - Interestaduais - Somente opera'#231#245'es sujeitas ao regime de Sub' +
          'stitui'#231#227'o Tribut'#225'ria'
        
          '2 - Interestaduais - Opera'#231#245'es com ou sem Substitui'#231#227'o Tribut'#225'ri' +
          'a'
        '3 - Totalidade das opera'#231#245'es do informante')
    end
    object ComboBox3: TComboBox
      Left = 8
      Top = 72
      Width = 281
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
        '1 - Normal'
        '2 - Retifica'#231#227'o Total de Arquivo'
        '5 - Desfazimento de Arquivo')
    end
    object ComboBox1: TComboBox
      Left = 304
      Top = 32
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
      TabOrder = 3
      Items.Strings = (
        '1 - Conv'#234'nio 57/95 Vers'#227'o 31/99 Alt. 30/02'
        '2 - Conv'#234'nio 57/95 Vers'#227'o 69/02 Alt. 142/02  '
        '3 - Conv'#234'nio 57/95 Alt. 76/03')
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 305
    Width = 675
    Height = 77
    Align = alClient
    Caption = ' Gerar registros '
    TabOrder = 2
    object CheckListBox1: TCheckListBox
      Left = 2
      Top = 15
      Width = 671
      Height = 60
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
        'Gerar 60I'
        'Gerar 60R'
        'Gerar 70')
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 675
    Height = 52
    Align = alBottom
    TabOrder = 3
    object Label9: TcxLabel
      Left = 554
      Top = 3
      Caption = 'Engine de gera'#231#227'o'
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object Label10: TcxLabel
      Left = 157
      Top = 3
      Caption = 'Vers'#227'o do validador'
      ParentFont = False
      Transparent = True
    end
    object ComboBox4: TComboBox
      Left = 554
      Top = 20
      Width = 77
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'VCL'
      Visible = False
      Items.Strings = (
        'VCL'
        'DLL')
    end
    object ComboBox5: TComboBox
      Left = 157
      Top = 20
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
      Top = 20
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object SaveDialog1: TSaveDialog
    DefaultExt = 'txt'
    Filter = 'Arquivos Texto|*.txt'
    Options = [ofHideReadOnly]
    Title = 'Salvar Arquivo'
    Left = 496
    Top = 260
  end
  object REG_50: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select *  from PCD_SINTEG_50(:cnpj,:data1, :data2)')
    Left = 400
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_50SERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_SINTEG_50"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object REG_50DATA_DOCTO: TDateField
      FieldName = 'DATA_DOCTO'
      Origin = '"PCD_SINTEG_50"."DATA_DOCTO"'
    end
    object REG_50VALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      Origin = '"PCD_SINTEG_50"."VALOR_CONTABIL"'
    end
    object REG_50VALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"PCD_SINTEG_50"."VALOR_MERCADORIAS"'
    end
    object REG_50BASE_CALCULO_ICMS: TFloatField
      FieldName = 'BASE_CALCULO_ICMS'
      Origin = '"PCD_SINTEG_50"."BASE_CALCULO_ICMS"'
    end
    object REG_50ICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_SINTEG_50"."ICMS_DEBITADO"'
    end
    object REG_50ALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_SINTEG_50"."ALIQUOTA_ICMS"'
    end
    object REG_50CLIENTE_CPF_CNPJ: TIBStringField
      FieldName = 'CLIENTE_CPF_CNPJ'
      Origin = '"PCD_SINTEG_50"."CLIENTE_CPF_CNPJ"'
      Size = 15
    end
    object REG_50CLIENTE_UF: TIBStringField
      FieldName = 'CLIENTE_UF'
      Origin = '"PCD_SINTEG_50"."CLIENTE_UF"'
      Size = 2
    end
    object REG_50CLIENTE_IE: TIBStringField
      FieldName = 'CLIENTE_IE'
      Origin = '"PCD_SINTEG_50"."CLIENTE_IE"'
    end
    object REG_50TIPO_FRETE: TIBStringField
      FieldName = 'TIPO_FRETE'
      Origin = '"PCD_SINTEG_50"."TIPO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object REG_50CONDICAO_VENDA: TIBStringField
      FieldName = 'CONDICAO_VENDA'
      Origin = '"PCD_SINTEG_50"."CONDICAO_VENDA"'
      FixedChar = True
      Size = 1
    end
    object REG_50DATA_DOCUMENTO: TDateField
      FieldName = 'DATA_DOCUMENTO'
      Origin = '"PCD_SINTEG_50"."DATA_DOCUMENTO"'
    end
    object REG_50CFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_SINTEG_50"."CFOP"'
    end
    object REG_50BASE_CALCULO_ICMS_SUB: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUB'
      Origin = '"PCD_SINTEG_50"."BASE_CALCULO_ICMS_SUB"'
    end
    object REG_50IMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_SINTEG_50"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object REG_50NOTA_CANCELADA: TIBStringField
      FieldName = 'NOTA_CANCELADA'
      Origin = '"PCD_SINTEG_50"."NOTA_CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object REG_50PSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_SINTEG_50"."PSA_CODIGO"'
    end
    object REG_50MODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"PCD_SINTEG_50"."MODELO"'
    end
    object REG_50EMISSORDOCUMENTO: TIBStringField
      FieldName = 'EMISSORDOCUMENTO'
      Origin = '"PCD_SINTEG_50"."EMISSORDOCUMENTO"'
      FixedChar = True
      Size = 1
    end
    object REG_50VLR_ISENTO: TFloatField
      FieldName = 'VLR_ISENTO'
      Origin = '"PCD_SINTEG_50"."VLR_ISENTO"'
    end
    object REG_50VLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      Origin = '"PCD_SINTEG_50"."VLR_BASE"'
    end
    object REG_50VLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      Origin = '"PCD_SINTEG_50"."VLR_OUTROS"'
    end
    object REG_50CODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"PCD_SINTEG_50"."CODIGO_FISCAL"'
      FixedChar = True
      Size = 4
    end
    object REG_50NUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = '"PCD_SINTEG_50"."NUM_NF"'
    end
  end
  object stgMainGeraSintegra: TcxPropertiesStore
    Components = <
      item
        Component = CheckListBox1
        Properties.Strings = (
          'Align'
          'AllowGrayed'
          'Anchors'
          'AutoComplete'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BiDiMode'
          'BorderStyle'
          'Color'
          'Columns'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Flat'
          'Font'
          'HeaderBackgroundColor'
          'HeaderColor'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegralHeight'
          'ItemHeight'
          'Items'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'Sorted'
          'Style'
          'TabOrder'
          'TabStop'
          'TabWidth'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtBairro
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtCep
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtCidade
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtCNPJ
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtFone
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtIE
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtLogradouro
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtNumero
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtRazao
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtResponsavel
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtUF
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = MaskEdit1
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = MaskEdit2
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'EditValue'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgMainGeraSintegra'
    Left = 560
    Top = 120
  end
  object mtbCabecalho: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 358
    Top = 8
    object mtbCabecalhoCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 14
    end
    object mtbCabecalhoRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 35
    end
    object mtbCabecalhoIE: TStringField
      FieldName = 'IE'
      Size = 14
    end
    object mtbCabecalhoLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 34
    end
    object mtbCabecalhoNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 5
    end
    object mtbCabecalhoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 15
    end
    object mtbCabecalhoCEP: TStringField
      FieldName = 'CEP'
      Size = 8
    end
    object mtbCabecalhoCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object mtbCabecalhoUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object mtbCabecalhoRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 28
    end
    object mtbCabecalhoFONE: TStringField
      DisplayWidth = 14
      FieldName = 'FONE'
      EditMask = '(###)####-####'
      Size = 14
    end
  end
  object DsCabecalho: TDataSource
    AutoEdit = False
    DataSet = mtbCabecalho
    Left = 308
    Top = 9
  end
  object REG_54: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_SINTEG_54(:cnpj,:data1, :data2)')
    Left = 431
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_54SERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_SINTEG_54"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object REG_54DATA_MOVTO: TDateField
      FieldName = 'DATA_MOVTO'
      Origin = '"PCD_SINTEG_54"."DATA_MOVTO"'
    end
    object REG_54ICMS_DEBITADO: TFloatField
      FieldName = 'ICMS_DEBITADO'
      Origin = '"PCD_SINTEG_54"."ICMS_DEBITADO"'
    end
    object REG_54ALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_SINTEG_54"."ALIQUOTA_ICMS"'
    end
    object REG_54CFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_SINTEG_54"."CFOP"'
    end
    object REG_54IMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_SINTEG_54"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object REG_54NUM_ITEM: TIntegerField
      FieldName = 'NUM_ITEM'
      Origin = '"PCD_SINTEG_54"."NUM_ITEM"'
    end
    object REG_54COD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_SINTEG_54"."COD_PRODUTO"'
      Size = 15
    end
    object REG_54UNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_SINTEG_54"."UNIDADE"'
      Size = 3
    end
    object REG_54SIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_SINTEG_54"."SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object REG_54QTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_SINTEG_54"."QTDE"'
    end
    object REG_54PRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"PCD_SINTEG_54"."PRECO_UNITARIO"'
    end
    object REG_54DESP_ACESSORIAS: TFloatField
      FieldName = 'DESP_ACESSORIAS'
      Origin = '"PCD_SINTEG_54"."DESP_ACESSORIAS"'
    end
    object REG_54DESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"PCD_SINTEG_54"."DESCONTO"'
    end
    object REG_54VALOR_ITEM: TFloatField
      FieldName = 'VALOR_ITEM'
      Origin = '"PCD_SINTEG_54"."VALOR_ITEM"'
    end
    object REG_54BASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_SINTEG_54"."BASE_ICMS"'
    end
    object REG_54BASE_ICMS_SUB: TFloatField
      FieldName = 'BASE_ICMS_SUB'
      Origin = '"PCD_SINTEG_54"."BASE_ICMS_SUB"'
    end
    object REG_54PRODUTO_DESCRICAO: TIBStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = '"PCD_SINTEG_54"."PRODUTO_DESCRICAO"'
      Size = 50
    end
    object REG_54PRODUTO_SIT_TRIB: TIBStringField
      FieldName = 'PRODUTO_SIT_TRIB'
      Origin = '"PCD_SINTEG_54"."PRODUTO_SIT_TRIB"'
      FixedChar = True
      Size = 3
    end
    object REG_54PRODUTO_FANTASIA: TIBStringField
      FieldName = 'PRODUTO_FANTASIA'
      Origin = '"PCD_SINTEG_54"."PRODUTO_FANTASIA"'
      Size = 50
    end
    object REG_54MOVIMENTA_MERCADORIA: TIBStringField
      FieldName = 'MOVIMENTA_MERCADORIA'
      Origin = '"PCD_SINTEG_54"."MOVIMENTA_MERCADORIA"'
      FixedChar = True
      Size = 1
    end
    object REG_54INDICACAO_TRIBUTACAO: TIBStringField
      FieldName = 'INDICACAO_TRIBUTACAO'
      Origin = '"PCD_SINTEG_54"."INDICACAO_TRIBUTACAO"'
      FixedChar = True
      Size = 1
    end
    object REG_54ALIQUOTA_IPI: TFloatField
      FieldName = 'ALIQUOTA_IPI'
      Origin = '"PCD_SINTEG_54"."ALIQUOTA_IPI"'
    end
    object REG_54VALOR_IPI: TFloatField
      FieldName = 'VALOR_IPI'
      Origin = '"PCD_SINTEG_54"."VALOR_IPI"'
    end
    object REG_54BASE_IPI: TFloatField
      FieldName = 'BASE_IPI'
      Origin = '"PCD_SINTEG_54"."BASE_IPI"'
    end
    object REG_54CODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"PCD_SINTEG_54"."CODIGO_FISCAL"'
      FixedChar = True
      Size = 4
    end
    object REG_54NUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = '"PCD_SINTEG_54"."NUM_NF"'
    end
    object REG_54PSA_CPF_CNPJ: TIBStringField
      FieldName = 'PSA_CPF_CNPJ'
      Origin = '"PCD_SINTEG_54"."PSA_CPF_CNPJ"'
      Size = 15
    end
  end
  object REG_60M: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select s.data_movimento, s.num_ser_ecf, s.num_seq_ecf, s.ct_oo_a' +
        'nt, s.ct_oo_fin,s.ct_red_z_fin, s.num_cont_r_oo,'
      
        's.MOVIMENTO_DIA venda_bruta, s.TT_GERAL_FIN from EXP_CTB_CF_PROS' +
        'OFT s'
      
        'where s.cnpj = :cnpj and (s.data_movimento between :data1 and  :' +
        'data2)'
      'order by s.data_movimento')
    Left = 464
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_60MDATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = '"EXP_CTB_CF_PROSOFT"."DATA_MOVIMENTO"'
    end
    object REG_60MNUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_SER_ECF"'
    end
    object REG_60MNUM_SEQ_ECF: TIBStringField
      FieldName = 'NUM_SEQ_ECF'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object REG_60MCT_OO_ANT: TIntegerField
      FieldName = 'CT_OO_ANT'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_OO_ANT"'
    end
    object REG_60MCT_OO_FIN: TIntegerField
      FieldName = 'CT_OO_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_OO_FIN"'
    end
    object REG_60MCT_RED_Z_FIN: TIntegerField
      FieldName = 'CT_RED_Z_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."CT_RED_Z_FIN"'
    end
    object REG_60MNUM_CONT_R_OO: TIntegerField
      FieldName = 'NUM_CONT_R_OO'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_CONT_R_OO"'
    end
    object REG_60MVENDA_BRUTA: TFloatField
      FieldName = 'VENDA_BRUTA'
      Origin = '"EXP_CTB_CF_PROSOFT"."MOVIMENTO_DIA"'
    end
    object REG_60MTT_GERAL_FIN: TFloatField
      FieldName = 'TT_GERAL_FIN'
      Origin = '"EXP_CTB_CF_PROSOFT"."TT_GERAL_FIN"'
    end
  end
  object REG_60A: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select s.data_movimento, s.num_ser_ecf, a.aliquota, a.valor from' +
        ' exp_ctb_cf_prosoft_aliq a'
      
        'inner join exp_ctb_cf_prosoft s on (s.cnpj = a.cnpj and s.codigo' +
        ' = a.cod_exp_ctb_cf_prosoft)'
      
        'where s.cnpj = :cnpj and (s.data_movimento between :data1 and  :' +
        'data2)'
      'order by s.data_movimento, a.aliquota')
    Left = 496
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_60ADATA_MOVIMENTO: TDateField
      FieldName = 'DATA_MOVIMENTO'
      Origin = '"EXP_CTB_CF_PROSOFT"."DATA_MOVIMENTO"'
    end
    object REG_60ANUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"EXP_CTB_CF_PROSOFT"."NUM_SER_ECF"'
    end
    object REG_60AALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"EXP_CTB_CF_PROSOFT_ALIQ"."ALIQUOTA"'
      Size = 4
    end
    object REG_60AVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"EXP_CTB_CF_PROSOFT_ALIQ"."VALOR"'
    end
  end
  object REG_60D: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from pcd_sinteg_60d(:cnpj,:data1, :data2)')
    Left = 528
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_60DNUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"PCD_SINTEG_60D"."NUM_SER_ECF"'
    end
    object REG_60DDATA_MOVTO: TDateField
      FieldName = 'DATA_MOVTO'
      Origin = '"PCD_SINTEG_60D"."DATA_MOVTO"'
    end
    object REG_60DCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_SINTEG_60D"."COD_PRODUTO"'
      Size = 14
    end
    object REG_60DSIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_SINTEG_60D"."SIT_TRIB"'
      FixedChar = True
      Size = 4
    end
    object REG_60DQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_SINTEG_60D"."QTDE"'
    end
    object REG_60DVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PCD_SINTEG_60D"."VALOR"'
    end
    object REG_60DALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = '"PCD_SINTEG_60D"."ALIQUOTA"'
    end
    object REG_60DBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_SINTEG_60D"."BASE_ICMS"'
    end
    object REG_60DVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = '"PCD_SINTEG_60D"."VALOR_ICMS"'
    end
    object REG_60DPRD_DESCRICAO: TIBStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = '"PCD_SINTEG_60D"."PRD_DESCRICAO"'
      Size = 50
    end
    object REG_60DPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_SINTEG_60D"."PRD_UNIDADE"'
      Size = 3
    end
  end
  object REG_60I: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_SINTEG_60I(:cnpj,:data1,:data2)')
    Left = 560
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_60INUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"PCD_SINTEG_60I"."NUM_SER_ECF"'
    end
    object REG_60IDATA_MOVTO: TDateField
      FieldName = 'DATA_MOVTO'
      Origin = '"PCD_SINTEG_60I"."DATA_MOVTO"'
    end
    object REG_60ICOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_SINTEG_60I"."COD_PRODUTO"'
      Size = 14
    end
    object REG_60ISIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_SINTEG_60I"."SIT_TRIB"'
      FixedChar = True
      Size = 4
    end
    object REG_60IQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_SINTEG_60I"."QTDE"'
    end
    object REG_60IVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PCD_SINTEG_60I"."VALOR"'
    end
    object REG_60IALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = '"PCD_SINTEG_60I"."ALIQUOTA"'
    end
    object REG_60IBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_SINTEG_60I"."BASE_ICMS"'
    end
    object REG_60IVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = '"PCD_SINTEG_60I"."VALOR_ICMS"'
    end
    object REG_60IPRD_DESCRICAO: TIBStringField
      FieldName = 'PRD_DESCRICAO'
      Origin = '"PCD_SINTEG_60I"."PRD_DESCRICAO"'
      Size = 50
    end
    object REG_60IPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_SINTEG_60I"."PRD_UNIDADE"'
      Size = 3
    end
    object REG_60INUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_SINTEG_60I"."NUM_CUPOM"'
    end
    object REG_60IN_ITEM: TIntegerField
      FieldName = 'N_ITEM'
      Origin = '"PCD_SINTEG_60I"."N_ITEM"'
    end
  end
  object REG_60R: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_SINTEG_60r(:cnpj,:data1,:data2)')
    Left = 592
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_60RNUM_SER_ECF: TIBStringField
      FieldName = 'NUM_SER_ECF'
      Origin = '"PCD_SINTEG_60R"."NUM_SER_ECF"'
    end
    object REG_60RCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_SINTEG_60R"."COD_PRODUTO"'
      Size = 14
    end
    object REG_60RSIT_TRIB: TIBStringField
      FieldName = 'SIT_TRIB'
      Origin = '"PCD_SINTEG_60R"."SIT_TRIB"'
      FixedChar = True
      Size = 4
    end
    object REG_60RQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"PCD_SINTEG_60R"."QTDE"'
    end
    object REG_60RVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"PCD_SINTEG_60R"."VALOR"'
    end
    object REG_60RALIQUOTA: TFloatField
      FieldName = 'ALIQUOTA'
      Origin = '"PCD_SINTEG_60R"."ALIQUOTA"'
    end
    object REG_60RBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      Origin = '"PCD_SINTEG_60R"."BASE_ICMS"'
    end
    object REG_60RVALOR_ICMS: TFloatField
      FieldName = 'VALOR_ICMS'
      Origin = '"PCD_SINTEG_60R"."VALOR_ICMS"'
    end
    object REG_60RMESANO: TIBStringField
      FieldName = 'MESANO'
      Origin = '"PCD_SINTEG_60R"."MESANO"'
      Size = 6
    end
  end
  object REG_53: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select *  from PCD_SINTEG_53(:cnpj,:data1, :data2)')
    Left = 624
    Top = 11
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object REG_53SERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"PCD_SINTEG_53"."SERIE"'
      FixedChar = True
      Size = 10
    end
    object REG_53DATA_DOCTO: TDateField
      FieldName = 'DATA_DOCTO'
      Origin = '"PCD_SINTEG_53"."DATA_DOCTO"'
    end
    object REG_53VALOR_CONTABIL: TFloatField
      FieldName = 'VALOR_CONTABIL'
      Origin = '"PCD_SINTEG_53"."VALOR_CONTABIL"'
    end
    object REG_53VALOR_MERCADORIAS: TFloatField
      FieldName = 'VALOR_MERCADORIAS'
      Origin = '"PCD_SINTEG_53"."VALOR_MERCADORIAS"'
    end
    object REG_53ALIQUOTA_ICMS: TFloatField
      FieldName = 'ALIQUOTA_ICMS'
      Origin = '"PCD_SINTEG_53"."ALIQUOTA_ICMS"'
    end
    object REG_53CLIENTE_CPF_CNPJ: TIBStringField
      FieldName = 'CLIENTE_CPF_CNPJ'
      Origin = '"PCD_SINTEG_53"."CLIENTE_CPF_CNPJ"'
      Size = 15
    end
    object REG_53CLIENTE_UF: TIBStringField
      FieldName = 'CLIENTE_UF'
      Origin = '"PCD_SINTEG_53"."CLIENTE_UF"'
      Size = 2
    end
    object REG_53CLIENTE_IE: TIBStringField
      FieldName = 'CLIENTE_IE'
      Origin = '"PCD_SINTEG_53"."CLIENTE_IE"'
    end
    object REG_53TIPO_FRETE: TIBStringField
      FieldName = 'TIPO_FRETE'
      Origin = '"PCD_SINTEG_53"."TIPO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object REG_53CONDICAO_VENDA: TIBStringField
      FieldName = 'CONDICAO_VENDA'
      Origin = '"PCD_SINTEG_53"."CONDICAO_VENDA"'
      FixedChar = True
      Size = 1
    end
    object REG_53DATA_DOCUMENTO: TDateField
      FieldName = 'DATA_DOCUMENTO'
      Origin = '"PCD_SINTEG_53"."DATA_DOCUMENTO"'
    end
    object REG_53CFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_SINTEG_53"."CFOP"'
    end
    object REG_53BASE_CALCULO_ICMS_SUB: TFloatField
      FieldName = 'BASE_CALCULO_ICMS_SUB'
      Origin = '"PCD_SINTEG_53"."BASE_CALCULO_ICMS_SUB"'
    end
    object REG_53IMPOSTO_RETIDO_ICMS_SUB: TFloatField
      FieldName = 'IMPOSTO_RETIDO_ICMS_SUB'
      Origin = '"PCD_SINTEG_53"."IMPOSTO_RETIDO_ICMS_SUB"'
    end
    object REG_53NOTA_CANCELADA: TIBStringField
      FieldName = 'NOTA_CANCELADA'
      Origin = '"PCD_SINTEG_53"."NOTA_CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object REG_53PSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_SINTEG_53"."PSA_CODIGO"'
    end
    object REG_53VLR_OUTROS: TFloatField
      FieldName = 'VLR_OUTROS'
      Origin = '"PCD_SINTEG_53"."VLR_OUTROS"'
    end
    object REG_53VLR_ISENTO: TFloatField
      FieldName = 'VLR_ISENTO'
      Origin = '"PCD_SINTEG_53"."VLR_ISENTO"'
    end
    object REG_53VLR_BASE: TFloatField
      FieldName = 'VLR_BASE'
      Origin = '"PCD_SINTEG_53"."VLR_BASE"'
    end
    object REG_53EMISSORDOCUMENTO: TIBStringField
      FieldName = 'EMISSORDOCUMENTO'
      Origin = '"PCD_SINTEG_53"."EMISSORDOCUMENTO"'
      FixedChar = True
      Size = 1
    end
    object REG_53CODIGO_FISCAL: TIBStringField
      FieldName = 'CODIGO_FISCAL'
      Origin = '"PCD_SINTEG_53"."CODIGO_FISCAL"'
      FixedChar = True
      Size = 4
    end
    object REG_53SITUACAO: TIBStringField
      FieldName = 'SITUACAO'
      Origin = '"PCD_SINTEG_53"."SITUACAO"'
      FixedChar = True
      Size = 1
    end
    object REG_53NUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = '"PCD_SINTEG_53"."NUM_NF"'
    end
  end
  object REG_74: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select prd.codigo, prd.qtdade_2, (coalesce(prd.qtdade_2,0) * coa' +
        'lesce(prd.prc_venda,0)) valor_produto from est_produtos prd'
      
        'where prd.codigo = prd.ativo and prd.qtdade_2 > 0 and prd.cnpj =' +
        ' :cnpj')
    Left = 624
    Top = 43
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object REG_74CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object REG_74QTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object REG_74VALOR_PRODUTO: TFloatField
      FieldName = 'VALOR_PRODUTO'
      ProviderFlags = []
    end
  end
end
