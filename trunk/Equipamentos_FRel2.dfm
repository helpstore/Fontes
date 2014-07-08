object fRelEquipamentos2: TfRelEquipamentos2
  Left = 199
  Top = 130
  Width = 762
  Height = 523
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Equipamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 746
    Height = 485
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 31
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 2
      Caption = 'Relat'#243'rio de Equipamentos'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 451
      Width = 742
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        742
        32)
      object BtnOk: TcxButton
        Left = 574
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Caption = '&Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnOkClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          66666666666666666666666666666666666666666666666666666666AC666666
          66666666F86666666666666A22C666666666666F88866666666666A2222C6666
          666666F88888666666666A222222C66666666F888888866666666A22CA222C66
          66666F888F88886666666A2C66A222C666666F8866F8888666666AC6666A222C
          66666F86666F8888666666666666A222C66666666666F8888666666666666A22
          2C66666666666F8888666666666666A222C66666666666F8888666666666666A
          22C666666666666F8886666666666666A2C6666666666666F886666666666666
          6AC66666666666666F8666666666666666666666666666666666}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 653
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = '&Fechar  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = RzBitBtn2Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 23
      Width = 730
      Height = 269
      Caption = ' [ Geral ] '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label11: TcxLabel
        Left = 11
        Top = 16
        Caption = 'Regi'#227'o'
        ParentFont = False
      end
      object Label7: TcxLabel
        Left = 370
        Top = 57
        Caption = 'Modelo'
        ParentFont = False
      end
      object Label8: TcxLabel
        Left = 11
        Top = 57
        Caption = 'Marca'
        ParentFont = False
      end
      object Label12: TcxLabel
        Left = 370
        Top = 16
        Caption = 'Cliente'
        ParentFont = False
      end
      object Label2: TcxLabel
        Left = 11
        Top = 137
        Caption = 'Equipamento'
      end
      object Label3: TcxLabel
        Left = 11
        Top = 96
        Caption = 'Tp. Contrato'
      end
      object Label19: TcxLabel
        Left = 370
        Top = 96
        Caption = 'Contrato'
      end
      object Label22: TcxLabel
        Left = 370
        Top = 137
        Caption = 'N'#186' de S'#233'rie'
      end
      object cmbRegiao: TdxLookupEdit
        Left = 11
        Top = 31
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbRegiaoChange
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRegiao
        LookupKeyValue = Null
      end
      object cmbModelo: TdxLookupEdit
        Left = 370
        Top = 73
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 3
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbModeloChange
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsModelo
        LookupKeyValue = Null
      end
      object cmbMarca: TdxLookupEdit
        Left = 11
        Top = 73
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 2
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbMarcaChange
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMarcas
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
        Left = 370
        Top = 31
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbClienteChange
        DropDownWidth = 500
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO;CODIGO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
      object cmbEquipamento: TdxLookupEdit
        Left = 11
        Top = 153
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 6
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        DropDownWidth = 700
        ClearKey = 46
        ListFieldName = 'CODIGO;Nome;Serie'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsEquipamento
        LookupKeyValue = Null
      end
      object cbTipoContrato: TdxLookupEdit
        Left = 11
        Top = 112
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 4
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsTipoContrato
        LookupKeyValue = Null
      end
      object cmbContrato: TdxLookupEdit
        Left = 370
        Top = 112
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 5
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsEquipamento
        LookupKeyValue = Null
      end
      object edtNumSerie: TcxTextEdit
        Left = 370
        Top = 153
        ParentFont = False
        TabOrder = 7
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        Width = 349
      end
      object cxLabel1: TcxLabel
        Left = 11
        Top = 177
        Caption = 'Cidade'
        ParentFont = False
      end
      object cmbCidade: TdxLookupEdit
        Left = 11
        Top = 193
        Width = 350
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 8
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbMarcaChange
        ClearKey = 46
        ListFieldName = 'NOME;UF'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCidades
        LookupKeyValue = Null
      end
      object GroupBox9: TGroupBox
        Left = 371
        Top = 174
        Width = 350
        Height = 44
        Caption = 'Controle Gerencial'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 18
        object ckContinuo: TRadioButton
          Left = 12
          Top = 18
          Width = 93
          Height = 23
          Caption = 'Cont'#237'nuo'
          Checked = True
          TabOrder = 0
          TabStop = True
        end
        object ckDescontinuo: TRadioButton
          Left = 131
          Top = 18
          Width = 98
          Height = 22
          Caption = 'Descontinuados'
          TabOrder = 1
        end
        object ckCGAmbos: TRadioButton
          Left = 248
          Top = 18
          Width = 60
          Height = 22
          Caption = 'Ambos'
          TabOrder = 2
        end
      end
      object GroupBox10: TGroupBox
        Left = 11
        Top = 218
        Width = 350
        Height = 46
        Caption = 'Atendimento / T'#233'cnico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 19
        object ckEsp: TRadioButton
          Left = 148
          Top = 18
          Width = 79
          Height = 22
          Caption = 'Especif'#237'co'
          TabOrder = 1
        end
        object ckConv: TRadioButton
          Left = 9
          Top = 18
          Width = 88
          Height = 22
          Caption = 'Convencional'
          TabOrder = 0
        end
        object ckATAmbos: TRadioButton
          Left = 268
          Top = 18
          Width = 53
          Height = 22
          Caption = 'Ambos'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object ckConfigurar: TcxCheckBox
        Left = 373
        Top = 239
        Caption = 'Cfg. Rel.'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 20
        Width = 63
      end
    end
    object gbData: TGroupBox
      Left = 7
      Top = 293
      Width = 317
      Height = 53
      Caption = ' [ Per'#237'odo ] '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label4: TcxLabel
        Left = 161
        Top = 26
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 14
        Top = 25
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 135
        Top = 12
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edAs3: TcxLabel
        Tag = 1
        Left = 291
        Top = 15
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DataInicial: TcxDateEdit
        Left = 44
        Top = 20
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 0
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 188
        Top = 22
        EditValue = 40177.3833060185d
        ParentFont = False
        TabOrder = 1
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        Width = 97
      end
    end
    object gbValor: TGroupBox
      Left = 329
      Top = 295
      Width = 194
      Height = 50
      Caption = 'Custo de Pe'#231'as (R$) '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Label1: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label6: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = '0'
        Properties.DisplayFormat = '###,###0.00'
        TabOrder = 0
        Width = 57
      end
      object edtVlrFinal: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,###.00'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 397
      Width = 318
      Height = 50
      Caption = 'Op'#231#245'es de Quebra'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      object rd13: TRadioButton
        Left = 12
        Top = 21
        Width = 59
        Height = 22
        Caption = 'Regi'#227'o'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rd14: TRadioButton
        Left = 91
        Top = 21
        Width = 57
        Height = 22
        Caption = 'Marca'
        TabOrder = 1
      end
      object rd15: TRadioButton
        Left = 167
        Top = 21
        Width = 60
        Height = 22
        Caption = 'Modelo'
        TabOrder = 2
      end
      object rd16: TRadioButton
        Left = 245
        Top = 21
        Width = 60
        Height = 22
        Caption = 'Cliente'
        TabOrder = 3
      end
    end
    object GroupBox4: TGroupBox
      Left = 530
      Top = 348
      Width = 206
      Height = 50
      Caption = 'N'#186' de Chamados Titular'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label9: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label10: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtChIni: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = 0
        Properties.DisplayFormat = '0'
        TabOrder = 0
        Width = 57
      end
      object edtChFim: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000
        Properties.DisplayFormat = '0'
        TabOrder = 1
        Width = 76
      end
    end
    object GroupBox5: TGroupBox
      Left = 329
      Top = 348
      Width = 194
      Height = 50
      Caption = 'N'#186' de Chamados Substituto'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object Label13: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label14: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtSubIni: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = 0
        Properties.DisplayFormat = '0'
        TabOrder = 0
        Width = 57
      end
      object edtSubFim: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000
        Properties.DisplayFormat = '0'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox6: TGroupBox
      Left = 531
      Top = 295
      Width = 206
      Height = 50
      Caption = 'N'#186' de Tempo Resposta Vencido'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label15: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label16: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtTmpIni: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = 0
        Properties.DisplayFormat = '0'
        TabOrder = 0
        Width = 57
      end
      object edtTmpFim: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000
        Properties.DisplayFormat = '0'
        TabOrder = 1
        Width = 76
      end
    end
    object GroupBox7: TGroupBox
      Left = 329
      Top = 397
      Width = 194
      Height = 50
      Caption = 'N'#186' de KMs Percorridos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object Label17: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label18: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtKmIni: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = 0
        Properties.DisplayFormat = '0'
        TabOrder = 0
        Width = 57
      end
      object edtKmFim: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000
        Properties.DisplayFormat = '0'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox1: TGroupBox
      Left = 531
      Top = 397
      Width = 206
      Height = 50
      Caption = 'N'#186' Total de Chamados'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 9
      object Label20: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
      end
      object Label21: TcxLabel
        Left = 99
        Top = 23
        Caption = 'Final'
      end
      object edtTtlChIni: TcxCurrencyEdit
        Left = 39
        Top = 19
        EditValue = 0
        Properties.DisplayFormat = '0'
        TabOrder = 0
        Width = 57
      end
      object edtTtlChFim: TcxCurrencyEdit
        Left = 125
        Top = 19
        EditValue = 100000
        Properties.DisplayFormat = '0'
        TabOrder = 1
        Width = 75
      end
    end
    object GroupBox8: TGroupBox
      Left = 8
      Top = 348
      Width = 318
      Height = 48
      Caption = 'Status de Contrato'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 10
      object rd1: TRadioButton
        Left = 12
        Top = 18
        Width = 59
        Height = 23
        Caption = 'Ativos'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rd2: TRadioButton
        Left = 131
        Top = 18
        Width = 57
        Height = 22
        Caption = 'Inativos'
        TabOrder = 1
      end
      object rd3: TRadioButton
        Left = 247
        Top = 18
        Width = 60
        Height = 22
        Caption = 'Ambos'
        TabOrder = 2
      end
    end
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 207
    Top = 68
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = dmRelatorios2.SelPessoasFJ
    Left = 455
    Top = 64
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Marcas
    Left = 207
    Top = 108
  end
  object dsModelo: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelModelosProduto
    Left = 455
    Top = 104
  end
  object dsEquipamento: TDataSource
    AutoEdit = False
    DataSet = dmRelatorios2.SelProdutos
    Left = 399
    Top = 8
  end
  object ppEquipSint: TppDBPipeline
    DataSource = dsEquipSint
    UserName = 'EquipSint'
    Left = 471
    Top = 65530
    object ppEquipSintppField1: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppEquipSintppField2: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 90
      DisplayWidth = 90
      Position = 1
    end
    object ppEquipSintppField3: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object ppEquipSintppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppEquipSintppField5: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppEquipSintppField6: TppField
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppEquipSintppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MDL_CODIGO'
      FieldName = 'MDL_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppEquipSintppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEDIA_COPIAS'
      FieldName = 'MEDIA_COPIAS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppEquipSintppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppEquipSintppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHAMADOS_SUB'
      FieldName = 'CHAMADOS_SUB'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppEquipSintppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHAMADOS_TIT'
      FieldName = 'CHAMADOS_TIT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppEquipSintppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'KM_RODADO'
      FieldName = 'KM_RODADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppEquipSintppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPO_RESP_VENC'
      FieldName = 'TEMPO_RESP_VENC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppEquipSintppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'TEMPO_RESP_MED'
      FieldName = 'TEMPO_RESP_MED'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object ppEquipSintppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppEquipSintppField16: TppField
      FieldAlias = 'REG_NOME'
      FieldName = 'REG_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppEquipSintppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHAMADOS'
      FieldName = 'TOTAL_CHAMADOS'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppEquipSintppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_TIPO_CONTRATO'
      FieldName = 'COD_TIPO_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppEquipSintppField19: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppEquipSintppField20: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 19
    end
    object ppEquipSintppField21: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 20
    end
    object ppEquipSintppField22: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 21
    end
    object ppEquipSintppField23: TppField
      FieldAlias = 'PSA_FANTASIA'
      FieldName = 'PSA_FANTASIA'
      FieldLength = 80
      DisplayWidth = 80
      Position = 22
    end
  end
  object rptEquipSint: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'RELATORIO'
    Template.DatabaseSettings.TemplateField = 'CONFIG'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 503
    Top = 65530
    Version = '12.03'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object ppSubRegiao: TppSubReport
        UserName = 'SubRegiao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppEquipSint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport26: TppChildReport
          AutoStop = False
          DataPipeline = ppEquipSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppEquipSint'
          object ppHeaderBand7: TppHeaderBand
            BeforePrint = ppHeaderBand7BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape16: TppShape
              UserName = 'Shape16'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 794
              mmWidth = 14288
              BandType = 0
            end
            object ppShape15: TppShape
              UserName = 'Shape15'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape14: TppShape
              UserName = 'Shape14'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape13: TppShape
              UserName = 'Shape13'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139171
              mmTop = 794
              mmWidth = 15875
              BandType = 0
            end
            object ppShape12: TppShape
              UserName = 'Shape5'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape11: TppShape
              UserName = 'Shape101'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape10: TppShape
              UserName = 'Shape10'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel240: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'VMC'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 102923
              mmTop = 1323
              mmWidth = 9790
              BandType = 0
            end
            object ppLabel241: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Tit.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 114036
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLine68: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel247: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. Venc.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 139171
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel251: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Equipamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 794
              mmTop = 1323
              mmWidth = 21167
              BandType = 0
            end
            object ppLabel1: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM Rod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 169598
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel2: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Sub.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 127000
              mmTop = 1323
              mmWidth = 11906
              BandType = 0
            end
            object ppLabel3: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. M'#233'd.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 155311
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel4: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C. Pe'#231'as'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3302
              mmLeft = 184415
              mmTop = 1323
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel5: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3528
              mmLeft = 35454
              mmTop = 1323
              mmWidth = 9313
              BandType = 0
            end
            object ppLabel6: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69850
              mmTop = 1323
              mmWidth = 18256
              BandType = 0
            end
          end
          object ppDetailBand27: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppShape1: TppShape
              UserName = 'Shape1'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape2: TppShape
              UserName = 'Shape2'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape3: TppShape
              UserName = 'Shape3'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppShape4: TppShape
              UserName = 'Shape4'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppShape6: TppShape
              UserName = 'Shape6'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape7: TppShape
              UserName = 'Shape7'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape8: TppShape
              UserName = 'Shape8'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText215: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 184415
              mmTop = 264
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText217: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 529
              mmTop = 265
              mmWidth = 12065
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0;-#,0'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 155311
              mmTop = 264
              mmWidth = 13292
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 139965
              mmTop = 264
              mmWidth = 14224
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 127000
              mmTop = 265
              mmWidth = 11906
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 114036
              mmTop = 264
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 103188
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSA_FANTASIA'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3175
              mmLeft = 35454
              mmTop = 265
              mmWidth = 31485
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MODELO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 69850
              mmTop = 265
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 169598
              mmTop = 264
              mmWidth = 12436
              BandType = 4
            end
          end
          object ppSummaryBand28: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11906
            mmPrintPosition = 0
            object ppLine73: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 529
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel266: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1058
              mmTop = 1852
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3528
              mmLeft = 19315
              mmTop = 1852
              mmWidth = 24765
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 163327
              mmTop = 1852
              mmWidth = 24977
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 145870
              mmTop = 1852
              mmWidth = 32173
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0;-#,0'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 129964
              mmTop = 1852
              mmWidth = 34290
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 118030
              mmTop = 1852
              mmWidth = 29845
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc13'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 105940
              mmTop = 1852
              mmWidth = 28363
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 94484
              mmTop = 1852
              mmWidth = 27728
              BandType = 7
            end
          end
          object ppGroup10: TppGroup
            BreakName = 'REG_NOME'
            DataPipeline = ppEquipSint
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppEquipSint'
            NewFile = False
            object ppGroupHeaderBand10: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel267: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Regi'#227'o: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4149
                mmLeft = 6879
                mmTop = 3440
                mmWidth = 13229
                BandType = 3
                GroupNo = 0
              end
              object ppLine74: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7938
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText230: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'REG_NOME'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3881
                mmLeft = 20108
                mmTop = 3969
                mmWidth = 18203
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand10: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine75: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 6879
                mmTop = 265
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppLabel268: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Regi'#227'o: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3725
                mmLeft = 794
                mmTop = 1058
                mmWidth = 20997
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc72: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'KM_RODADO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 163327
                mmTop = 1058
                mmWidth = 24977
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_MED'
                DataPipeline = ppEquipSint
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 145870
                mmTop = 1058
                mmWidth = 32173
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_VENC'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 129932
                mmTop = 1058
                mmWidth = 34290
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_SUB'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 118030
                mmTop = 1058
                mmWidth = 29845
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_TIT'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 106073
                mmTop = 1058
                mmWidth = 28363
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MEDIA_COPIAS'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 94484
                mmTop = 1058
                mmWidth = 27728
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRODUTO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3528
                mmLeft = 21960
                mmTop = 1058
                mmWidth = 24765
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule8: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubMarca: TppSubReport
        UserName = 'ppSubMarca'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppEquipSint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppEquipSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppEquipSint'
          object ppHeaderBand1: TppHeaderBand
            BeforePrint = ppHeaderBand7BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape17: TppShape
              UserName = 'Shape16'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 794
              mmWidth = 14288
              BandType = 0
            end
            object ppShape18: TppShape
              UserName = 'Shape15'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape19: TppShape
              UserName = 'Shape14'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape20: TppShape
              UserName = 'Shape13'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139171
              mmTop = 794
              mmWidth = 15875
              BandType = 0
            end
            object ppShape21: TppShape
              UserName = 'Shape5'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape22: TppShape
              UserName = 'Shape101'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape23: TppShape
              UserName = 'Shape10'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel7: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'VMC'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 102923
              mmTop = 1323
              mmWidth = 9790
              BandType = 0
            end
            object ppLabel8: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Tit.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 114036
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel9: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. Venc.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 139171
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Equipamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 794
              mmTop = 1323
              mmWidth = 21167
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM Rod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 169598
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Sub.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 127000
              mmTop = 1323
              mmWidth = 11906
              BandType = 0
            end
            object ppLabel13: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. M'#233'd.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 155311
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel14: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C. Pe'#231'as'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3302
              mmLeft = 184415
              mmTop = 1323
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel15: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Regi'#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 9229
              BandType = 0
            end
            object ppLabel16: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 63500
              mmTop = 1323
              mmWidth = 18256
              BandType = 0
            end
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppShape24: TppShape
              UserName = 'Shape1'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape25: TppShape
              UserName = 'Shape2'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape26: TppShape
              UserName = 'Shape3'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppShape27: TppShape
              UserName = 'Shape4'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppShape28: TppShape
              UserName = 'Shape6'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape29: TppShape
              UserName = 'Shape7'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape30: TppShape
              UserName = 'Shape8'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 184415
              mmTop = 264
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 529
              mmTop = 265
              mmWidth = 12065
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0;-#,0'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 155311
              mmTop = 264
              mmWidth = 13292
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 139965
              mmTop = 264
              mmWidth = 14224
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 127000
              mmTop = 265
              mmWidth = 11906
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 114036
              mmTop = 264
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 103188
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_NOME'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 42598
              mmTop = 265
              mmWidth = 13970
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MODELO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 63500
              mmTop = 265
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 169598
              mmTop = 264
              mmWidth = 12436
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11906
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 529
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel17: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1058
              mmTop = 1852
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3528
              mmLeft = 19315
              mmTop = 1852
              mmWidth = 24765
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 163328
              mmTop = 1852
              mmWidth = 24977
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 145870
              mmTop = 1852
              mmWidth = 32173
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 129964
              mmTop = 1852
              mmWidth = 34290
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 118031
              mmTop = 1852
              mmWidth = 29845
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc13'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 105940
              mmTop = 1852
              mmWidth = 28363
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 94484
              mmTop = 1852
              mmWidth = 27728
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'MARCA'
            DataPipeline = ppEquipSint
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppEquipSint'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel18: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Marca: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4149
                mmLeft = 6879
                mmTop = 3440
                mmWidth = 12446
                BandType = 3
                GroupNo = 0
              end
              object ppLine3: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7938
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText19: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MARCA'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3881
                mmLeft = 19315
                mmTop = 3969
                mmWidth = 11853
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine4: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 6879
                mmTop = 265
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppLabel19: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Marca: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3725
                mmLeft = 794
                mmTop = 1058
                mmWidth = 19727
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc21: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'KM_RODADO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 163328
                mmTop = 1058
                mmWidth = 24977
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_MED'
                DataPipeline = ppEquipSint
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 145870
                mmTop = 1058
                mmWidth = 32173
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_VENC'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 129932
                mmTop = 1058
                mmWidth = 34290
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_SUB'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 118030
                mmTop = 1058
                mmWidth = 29845
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc25: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_TIT'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 106073
                mmTop = 1058
                mmWidth = 28363
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc26: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MEDIA_COPIAS'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 94485
                mmTop = 1058
                mmWidth = 27728
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc27: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRODUTO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3528
                mmLeft = 21960
                mmTop = 1058
                mmWidth = 24765
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubModelo: TppSubReport
        UserName = 'SubModelo'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppEquipSint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppEquipSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppEquipSint'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = ppHeaderBand7BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape31: TppShape
              UserName = 'Shape16'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 794
              mmWidth = 14288
              BandType = 0
            end
            object ppShape32: TppShape
              UserName = 'Shape15'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape33: TppShape
              UserName = 'Shape14'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape34: TppShape
              UserName = 'Shape13'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139171
              mmTop = 794
              mmWidth = 15875
              BandType = 0
            end
            object ppShape35: TppShape
              UserName = 'Shape5'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape36: TppShape
              UserName = 'Shape101'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape37: TppShape
              UserName = 'Shape10'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel20: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'VMC'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 102923
              mmTop = 1323
              mmWidth = 9790
              BandType = 0
            end
            object ppLabel21: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Tit.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 114036
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLine5: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel22: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. Venc.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 139171
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel23: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Equipamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 794
              mmTop = 1323
              mmWidth = 21167
              BandType = 0
            end
            object ppLabel24: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM Rod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 169598
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel25: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Sub.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 127000
              mmTop = 1323
              mmWidth = 11906
              BandType = 0
            end
            object ppLabel26: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. M'#233'd.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 155311
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel27: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C. Pe'#231'as'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3302
              mmLeft = 184415
              mmTop = 1323
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel28: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3528
              mmLeft = 29369
              mmTop = 1323
              mmWidth = 14288
              BandType = 0
            end
            object ppLabel29: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Regi'#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 67998
              mmTop = 1323
              mmWidth = 9229
              BandType = 0
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppShape38: TppShape
              UserName = 'Shape1'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape39: TppShape
              UserName = 'Shape2'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape40: TppShape
              UserName = 'Shape3'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppShape41: TppShape
              UserName = 'Shape4'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppShape42: TppShape
              UserName = 'Shape6'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape43: TppShape
              UserName = 'Shape7'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape44: TppShape
              UserName = 'Shape8'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 184415
              mmTop = 264
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 529
              mmTop = 265
              mmWidth = 12065
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0;-#,0'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 155311
              mmTop = 264
              mmWidth = 13292
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 139965
              mmTop = 264
              mmWidth = 14224
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 127000
              mmTop = 265
              mmWidth = 11906
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 114036
              mmTop = 264
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 103188
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSA_FANTASIA'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3175
              mmLeft = 29369
              mmTop = 265
              mmWidth = 37306
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_NOME'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 67998
              mmTop = 265
              mmWidth = 13970
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 169598
              mmTop = 264
              mmWidth = 12436
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11906
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 529
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel30: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1058
              mmTop = 1852
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3528
              mmLeft = 19315
              mmTop = 1852
              mmWidth = 24765
              BandType = 7
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 163328
              mmTop = 1852
              mmWidth = 24977
              BandType = 7
            end
            object ppDBCalc30: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 145870
              mmTop = 1852
              mmWidth = 32173
              BandType = 7
            end
            object ppDBCalc31: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 129964
              mmTop = 1852
              mmWidth = 34290
              BandType = 7
            end
            object ppDBCalc32: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 118031
              mmTop = 1852
              mmWidth = 29845
              BandType = 7
            end
            object ppDBCalc33: TppDBCalc
              UserName = 'DBCalc13'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 105940
              mmTop = 1852
              mmWidth = 28363
              BandType = 7
            end
            object ppDBCalc34: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 94484
              mmTop = 1852
              mmWidth = 27728
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'MODELO'
            DataPipeline = ppEquipSint
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppEquipSint'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel31: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Modelo: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4149
                mmLeft = 6879
                mmTop = 3440
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLine7: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7938
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText30: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MODELO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3881
                mmLeft = 21696
                mmTop = 3969
                mmWidth = 13970
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine8: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 6879
                mmTop = 265
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppLabel32: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Modelo: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3725
                mmLeft = 794
                mmTop = 1058
                mmWidth = 21421
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc35: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'KM_RODADO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 163328
                mmTop = 1058
                mmWidth = 24977
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc36: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_MED'
                DataPipeline = ppEquipSint
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 145870
                mmTop = 1058
                mmWidth = 32173
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc37: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_VENC'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 129932
                mmTop = 1058
                mmWidth = 34290
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc38: TppDBCalc
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_SUB'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 118030
                mmTop = 1058
                mmWidth = 29845
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc39: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_TIT'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 106073
                mmTop = 1058
                mmWidth = 28363
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc40: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MEDIA_COPIAS'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 94485
                mmTop = 1058
                mmWidth = 27728
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc41: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRODUTO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3528
                mmLeft = 21960
                mmTop = 1058
                mmWidth = 24765
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubCliente: TppSubReport
        UserName = 'SubCliente'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppEquipSint'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppEquipSint
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 297000
          PrinterSetup.mmPaperWidth = 210000
          PrinterSetup.PaperSize = 9
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppEquipSint'
          object ppHeaderBand3: TppHeaderBand
            BeforePrint = ppHeaderBand7BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppShape45: TppShape
              UserName = 'Shape16'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 794
              mmWidth = 14288
              BandType = 0
            end
            object ppShape46: TppShape
              UserName = 'Shape15'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape47: TppShape
              UserName = 'Shape14'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 794
              mmWidth = 14552
              BandType = 0
            end
            object ppShape48: TppShape
              UserName = 'Shape13'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139171
              mmTop = 794
              mmWidth = 15875
              BandType = 0
            end
            object ppShape49: TppShape
              UserName = 'Shape5'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape50: TppShape
              UserName = 'Shape101'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppShape51: TppShape
              UserName = 'Shape10'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 794
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel33: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'VMC'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 102923
              mmTop = 1323
              mmWidth = 9790
              BandType = 0
            end
            object ppLabel34: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Tit.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 114036
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLine9: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel35: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. Venc.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3175
              mmLeft = 139171
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel36: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Equipamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3302
              mmLeft = 794
              mmTop = 1323
              mmWidth = 21167
              BandType = 0
            end
            object ppLabel37: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM Rod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 169598
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel38: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ch. Sub.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 127000
              mmTop = 1323
              mmWidth = 11906
              BandType = 0
            end
            object ppLabel39: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. R. M'#233'd.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3302
              mmLeft = 155311
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel40: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C. Pe'#231'as'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3302
              mmLeft = 184415
              mmTop = 1323
              mmWidth = 12965
              BandType = 0
            end
            object ppLabel41: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Regi'#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3528
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 9313
              BandType = 0
            end
            object ppLabel42: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 63500
              mmTop = 1323
              mmWidth = 9843
              BandType = 0
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 3969
            mmPrintPosition = 0
            object ppShape52: TppShape
              UserName = 'Shape1'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 101071
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape53: TppShape
              UserName = 'Shape2'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 113771
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
            object ppShape54: TppShape
              UserName = 'Shape3'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 126471
              mmTop = 0
              mmWidth = 13229
              BandType = 4
            end
            object ppShape55: TppShape
              UserName = 'Shape4'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 139436
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppShape56: TppShape
              UserName = 'Shape6'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 154782
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape57: TppShape
              UserName = 'Shape7'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 169069
              mmTop = 0
              mmWidth = 14552
              BandType = 4
            end
            object ppShape58: TppShape
              UserName = 'Shape8'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 184415
              mmTop = 264
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 529
              mmTop = 265
              mmWidth = 12065
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0;-#,0'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 155311
              mmTop = 264
              mmWidth = 13292
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 139965
              mmTop = 264
              mmWidth = 14224
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 127000
              mmTop = 265
              mmWidth = 11906
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 114036
              mmTop = 264
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 103188
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_NOME'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 42598
              mmTop = 265
              mmWidth = 13970
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MODELO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 63500
              mmTop = 265
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3704
              mmLeft = 169598
              mmTop = 264
              mmWidth = 12436
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11906
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 529
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel43: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1058
              mmTop = 1852
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc42: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRODUTO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppEquipSint'
              mmHeight = 3528
              mmLeft = 19315
              mmTop = 1852
              mmWidth = 24765
              BandType = 7
            end
            object ppDBCalc43: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'KM_RODADO'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 163328
              mmTop = 1852
              mmWidth = 24977
              BandType = 7
            end
            object ppDBCalc44: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_MED'
              DataPipeline = ppEquipSint
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 145870
              mmTop = 1852
              mmWidth = 32173
              BandType = 7
            end
            object ppDBCalc45: TppDBCalc
              UserName = 'DBCalc10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TEMPO_RESP_VENC'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 129964
              mmTop = 1852
              mmWidth = 34290
              BandType = 7
            end
            object ppDBCalc46: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_SUB'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 118031
              mmTop = 1852
              mmWidth = 29845
              BandType = 7
            end
            object ppDBCalc47: TppDBCalc
              UserName = 'DBCalc13'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CHAMADOS_TIT'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 105940
              mmTop = 1852
              mmWidth = 28363
              BandType = 7
            end
            object ppDBCalc48: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEDIA_COPIAS'
              DataPipeline = ppEquipSint
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppEquipSint'
              mmHeight = 2469
              mmLeft = 94484
              mmTop = 1852
              mmWidth = 27728
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'PSA_FANTASIA'
            DataPipeline = ppEquipSint
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppEquipSint'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 13229
              mmPrintPosition = 0
              object ppLabel44: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cliente: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3440
                mmWidth = 13949
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 12435
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText41: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PSA_FANTASIA'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3881
                mmLeft = 21431
                mmTop = 3704
                mmWidth = 24342
                BandType = 3
                GroupNo = 0
              end
              object ppDBText42: TppDBText
                UserName = 'DBText42'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENDERECO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 7144
                mmTop = 8730
                mmWidth = 13758
                BandType = 3
                GroupNo = 0
              end
              object ppDBText43: TppDBText
                UserName = 'DBText43'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BAIRRO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 92340
                mmTop = 8730
                mmWidth = 9313
                BandType = 3
                GroupNo = 0
              end
              object ppDBText44: TppDBText
                UserName = 'DBText44'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CIDADE'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 134144
                mmTop = 8731
                mmWidth = 9102
                BandType = 3
                GroupNo = 0
              end
              object ppDBText45: TppDBText
                UserName = 'DBText45'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'FONE'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 169069
                mmTop = 8730
                mmWidth = 6773
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine12: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 6879
                mmTop = 265
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppLabel45: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Cliente: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3747
                mmLeft = 794
                mmTop = 1058
                mmWidth = 21019
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc49: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'KM_RODADO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 163328
                mmTop = 1058
                mmWidth = 24977
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc50: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_MED'
                DataPipeline = ppEquipSint
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 145870
                mmTop = 1058
                mmWidth = 32173
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc51: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TEMPO_RESP_VENC'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 129932
                mmTop = 1058
                mmWidth = 34290
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc52: TppDBCalc
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_SUB'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 118030
                mmTop = 1058
                mmWidth = 29845
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc53: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHAMADOS_TIT'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 106073
                mmTop = 1058
                mmWidth = 28363
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc54: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MEDIA_COPIAS'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'ppEquipSint'
                mmHeight = 2469
                mmLeft = 94485
                mmTop = 1058
                mmWidth = 27728
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc55: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRODUTO'
                DataPipeline = ppEquipSint
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppEquipSint'
                mmHeight = 3528
                mmLeft = 21960
                mmTop = 1058
                mmWidth = 24765
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 21696
        mmLeft = 0
        mmTop = 2117
        mmWidth = 197644
        BandType = 1
      end
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        CharWrap = True
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FILTRO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5027
        mmLeft = 2646
        mmTop = 17198
        mmWidth = 193146
        BandType = 1
      end
      object ppTituloRel: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Equipamentos'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4995
        mmLeft = 2381
        mmTop = 11377
        mmWidth = 51393
        BandType = 1
      end
      object lblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblEmpresa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 2117
        mmTop = 3969
        mmWidth = 26712
        BandType = 1
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 264
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 182298
        mmTop = 2117
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 2646
        mmTop = 2117
        mmWidth = 129911
        BandType = 8
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsEquipSint: TDataSource
    DataSet = dmRelatorios2.qryRelEquipSint
    Left = 431
    Top = 10
  end
  object dsTipoContrato: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.SelContratos
    Left = 207
    Top = 144
  end
  object stgfRelEquipamentos2: TcxPropertiesStore
    Components = <
      item
        Component = DataFinal
        Properties.Strings = (
          'About'
          'Anchors'
          'BiDiMode'
          'CalAlignment'
          'CalColors'
          'Checked'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateFormat'
          'DateMode'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DropColumns'
          'DropRows'
          'Enabled'
          'FirstDayOfWeek'
          'FlatButtons'
          'Font'
          'Format'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Kind'
          'Left'
          'MaxDate'
          'MinDate'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'ParseInput'
          'PopupMenu'
          'ShowCheckbox'
          'ShowHint'
          'ShowToday'
          'ShowTodayCircle'
          'ShowWeekNumbers'
          'TabOrder'
          'TabStop'
          'Tag'
          'Time'
          'Top'
          'UseFrameController'
          'Visible'
          'Width')
      end
      item
        Component = DataInicial
        Properties.Strings = (
          'About'
          'Anchors'
          'BiDiMode'
          'CalAlignment'
          'CalColors'
          'Checked'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateFormat'
          'DateMode'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DropColumns'
          'DropRows'
          'Enabled'
          'FirstDayOfWeek'
          'FlatButtons'
          'Font'
          'Format'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Kind'
          'Left'
          'MaxDate'
          'MinDate'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'ParseInput'
          'PopupMenu'
          'ShowCheckbox'
          'ShowHint'
          'ShowToday'
          'ShowTodayCircle'
          'ShowWeekNumbers'
          'TabOrder'
          'TabStop'
          'Tag'
          'Time'
          'Top'
          'UseFrameController'
          'Visible'
          'Width')
      end
      item
        Component = edAs1
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edAs3
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edtChFim
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtChIni
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtKmFim
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtKmIni
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtNumSerie
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Visible'
          'Width')
      end
      item
        Component = edtSubFim
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtSubIni
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtTmpFim
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtTmpIni
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtTtlChFim
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtTtlChIni
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrFinal
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrInicial
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'UseFrameController'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = rd13
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd14
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd15
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd16
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgfRelEquipamentos2'
    Left = 360
    Top = 7
  end
  object dsLayout: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.CONFIG_REL_GRAFICO
    Left = 531
    Top = 25
  end
  object ppLayout: TppDBPipeline
    DataSource = dsLayout
    UserName = 'SerieNF1'
    Left = 500
    Top = 24
    object ppLayoutppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppLayoutppField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppLayoutppField3: TppField
      FieldAlias = 'RELATORIO'
      FieldName = 'RELATORIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppLayoutppField4: TppField
      FieldAlias = 'CONFIG'
      FieldName = 'CONFIG'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object Designer: TppDesigner
    Tag = 1
    AllowDataSettingsChange = True
    Caption = 'Configurar Relat'#243'rio'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptEquipSint
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 472
    Top = 24
  end
  object SelCidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from glo_cidades cdd'
      'where cdd.cnpj = :cnpj')
    Left = 324
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object SelCidadeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = SelCidade
    Left = 287
    Top = 8
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 567
    Top = 25
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppAppRepresentanteppField2: TppField
      FieldAlias = 'PARC_NOME_FANTASIA'
      FieldName = 'PARC_NOME_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppAppRepresentanteppField3: TppField
      FieldAlias = 'PARC_CNPJ'
      FieldName = 'PARC_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object ppAppRepresentanteppField4: TppField
      FieldAlias = 'PARC_FONE'
      FieldName = 'PARC_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object ppAppRepresentanteppField5: TppField
      FieldAlias = 'PARC_SITE'
      FieldName = 'PARC_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppAppRepresentanteppField6: TppField
      FieldAlias = 'PARC_EMAIL'
      FieldName = 'PARC_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppAppRepresentanteppField7: TppField
      FieldAlias = 'PARC_SLOGAN'
      FieldName = 'PARC_SLOGAN'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppAppRepresentanteppField8: TppField
      FieldAlias = 'PARC_SUPORTE_EMAIL'
      FieldName = 'PARC_SUPORTE_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAppRepresentanteppField9: TppField
      FieldAlias = 'PARC_SUPORTE_FONE'
      FieldName = 'PARC_SUPORTE_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object ppAppRepresentanteppField10: TppField
      FieldAlias = 'PARC_SUPORTE_SITE'
      FieldName = 'PARC_SUPORTE_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppAppRepresentanteppField11: TppField
      FieldAlias = 'PARC_LOGO'
      FieldName = 'PARC_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppAppRepresentanteppField12: TppField
      FieldAlias = 'PARC_TEXTO_RELATORIO'
      FieldName = 'PARC_TEXTO_RELATORIO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 11
    end
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 598
    Top = 25
  end
end
