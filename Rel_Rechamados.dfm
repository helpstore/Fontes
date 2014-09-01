object FRel_Rechamados: TFRel_Rechamados
  Left = 287
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Atendimentos'
  ClientHeight = 515
  ClientWidth = 750
  Color = clWhite
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
  object Panel2: TPanel
    Left = 0
    Top = 483
    Width = 750
    Height = 32
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      750
      32)
    object BtnOk: TcxButton
      Left = 581
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
      Left = 660
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 750
    Height = 483
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 6
      Top = 24
      Width = 403
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 2
      Caption = 'Relat'#243'rio de Atendimentos'
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 21
      Width = 736
      Height = 302
      Caption = ' [ Gerais ] '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label12: TcxLabel
        Left = 11
        Top = 217
        Caption = 'T'#233'cnico'
        ParentFont = False
      end
      object Label11: TcxLabel
        Left = 11
        Top = 16
        Caption = 'Regi'#227'o'
        ParentFont = False
      end
      object Label1: TcxLabel
        Left = 11
        Top = 137
        Caption = 'Marca'
        ParentFont = False
      end
      object Label37: TcxLabel
        Left = 370
        Top = 16
        Caption = 'Modelo'
        ParentFont = False
      end
      object Label6: TcxLabel
        Left = 370
        Top = 97
        Caption = 'Tp. Contrato'
      end
      object Label19: TcxLabel
        Left = 370
        Top = 137
        Caption = 'Contrato'
      end
      object Label7: TcxLabel
        Left = 11
        Top = 97
        Caption = 'Equipamento'
        ParentFont = False
      end
      object Label9: TcxLabel
        Left = 11
        Top = 57
        Caption = 'Cliente'
        ParentFont = False
      end
      object Label3: TcxLabel
        Left = 370
        Top = 177
        Caption = 'Status'
        ParentFont = False
      end
      object Label2: TcxLabel
        Left = 370
        Top = 57
        Caption = 'Mtv.Chamado'
      end
      object Label20: TcxLabel
        Left = 13
        Top = 178
        Caption = 'Cidade'
        ParentFont = False
      end
      object Label21: TcxLabel
        Left = 370
        Top = 217
        Caption = 'Servi'#231'o Executado'
        ParentFont = False
      end
      object cmbTecnico: TdxLookupEdit
        Left = 11
        Top = 231
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
        TabOrder = 10
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMecanico
        LookupKeyValue = Null
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRegiao
        LookupKeyValue = Null
      end
      object cmbMarca: TdxLookupEdit
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMarcas
        LookupKeyValue = Null
      end
      object cmbModelo: TdxLookupEdit
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsModelo
        LookupKeyValue = Null
      end
      object cmbContrato: TdxLookupEdit
        Left = 370
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
        TabOrder = 7
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        DropDownWidth = 450
        ClearKey = 46
        ListFieldName = 'CONTRATO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsContratos
        LookupKeyValue = Null
      end
      object cmbTPContrato: TdxLookupEdit
        Left = 371
        Top = 113
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsTpContrato
        LookupKeyValue = Null
      end
      object cmbEquipamento: TdxLookupEdit
        Left = 11
        Top = 113
        Width = 350
        Enabled = False
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        DropDownWidth = 800
        ClearKey = 46
        ListFieldName = 'CODIGO;Nome;Serie;Ativo'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsEquipamentos
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
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
        OnEnter = cmbClienteEnter
        OnExit = cmbClienteExit
        OnKeyDown = cmbClienteKeyDown
        DropDownWidth = 500
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO;PESSOA_FJ'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
      object cmbStatus: TdxLookupEdit
        Left = 370
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
        TabOrder = 9
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsStatus
        LookupKeyValue = Null
      end
      object cmbMotivo: TdxLookupEdit
        Left = 371
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMotivo
        LookupKeyValue = Null
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
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'CIDADE'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCidade
        LookupKeyValue = Null
      end
      object GroupBox6: TGroupBox
        Left = 12
        Top = 256
        Width = 349
        Height = 39
        Caption = 'T'#233'cnico Atendente'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 12
        object rdTecSub: TRadioButton
          Left = 138
          Top = 14
          Width = 79
          Height = 22
          Caption = 'Substituto'
          TabOrder = 1
        end
        object rdTecTit: TRadioButton
          Left = 9
          Top = 14
          Width = 73
          Height = 22
          Caption = 'Titular'
          TabOrder = 0
        end
        object rdTecAmbos: TRadioButton
          Left = 284
          Top = 14
          Width = 53
          Height = 22
          Caption = 'Ambos'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
      object cmbServExecutado: TdxLookupEdit
        Left = 370
        Top = 231
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
        TabOrder = 11
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsSelServico
        LookupKeyValue = Null
      end
      object ckConfigurar: TcxCheckBox
        Left = 660
        Top = 276
        Caption = 'Cfg. Rel.'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 13
        Width = 62
      end
      object GroupBox8: TGroupBox
        Left = 372
        Top = 255
        Width = 285
        Height = 39
        Caption = 'Atendimento / T'#233'cnico'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 26
        object ckEsp: TRadioButton
          Left = 119
          Top = 14
          Width = 79
          Height = 22
          Caption = 'Especif'#237'co'
          TabOrder = 1
        end
        object ckConv: TRadioButton
          Left = 9
          Top = 14
          Width = 88
          Height = 22
          Caption = 'Convencional'
          TabOrder = 0
        end
        object ckATAmbos: TRadioButton
          Left = 220
          Top = 14
          Width = 53
          Height = 22
          Caption = 'Ambos'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
      end
    end
    object gbData: TGroupBox
      Left = 9
      Top = 324
      Width = 320
      Height = 71
      Caption = ' [ Data ] '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label4: TcxLabel
        Left = 161
        Top = 42
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 14
        Top = 42
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 137
        Top = 32
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
        Left = 289
        Top = 32
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object rdSolicitacao: TRadioButton
        Left = 11
        Top = 16
        Width = 81
        Height = 17
        Caption = 'Solicita'#231#227'o'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnKeyDown = cmbClienteKeyDown
      end
      object rdProgramacao: TRadioButton
        Left = 104
        Top = 16
        Width = 89
        Height = 17
        Caption = 'Programa'#231#227'o'
        TabOrder = 1
        OnKeyDown = cmbClienteKeyDown
      end
      object DataInicial: TcxDateEdit
        Left = 44
        Top = 40
        EditValue = 0.383306018498843d
        ParentFont = False
        TabOrder = 3
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 188
        Top = 39
        EditValue = 72686.3833060185d
        ParentFont = False
        TabOrder = 4
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        Width = 97
      end
      object rdFechamento: TRadioButton
        Left = 197
        Top = 16
        Width = 91
        Height = 17
        Caption = 'Fechamento'
        TabOrder = 2
        OnKeyDown = cmbClienteKeyDown
      end
    end
    object GroupBox2: TGroupBox
      Left = 334
      Top = 418
      Width = 409
      Height = 43
      Caption = 'Tipo de Atendimento'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object rdRechamado: TRadioButton
        Left = 224
        Top = 16
        Width = 85
        Height = 22
        Caption = 'Rechamado'
        TabOrder = 0
      end
      object rdOriginador: TRadioButton
        Left = 114
        Top = 16
        Width = 79
        Height = 22
        Caption = 'Originador'
        TabOrder = 1
      end
      object rdNormal: TRadioButton
        Left = 9
        Top = 16
        Width = 73
        Height = 22
        Caption = 'Normal'
        TabOrder = 2
      end
      object rdTodos: TRadioButton
        Left = 348
        Top = 16
        Width = 53
        Height = 22
        Caption = 'Todos'
        Checked = True
        TabOrder = 3
        TabStop = True
      end
    end
    object GroupBox7: TGroupBox
      Left = 534
      Top = 369
      Width = 209
      Height = 48
      Caption = 'N'#186' de KMs Percorridos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label17: TcxLabel
        Left = 8
        Top = 21
        Caption = 'Inicial'
      end
      object Label18: TcxLabel
        Left = 99
        Top = 21
        Caption = 'Final'
      end
      object edtKmIni: TcxCurrencyEdit
        Left = 39
        Top = 17
        EditValue = '0'
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 0
        Width = 57
      end
      object edtKmFim: TcxCurrencyEdit
        Left = 125
        Top = 17
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        Width = 65
      end
    end
    object gbValor: TGroupBox
      Left = 334
      Top = 369
      Width = 197
      Height = 48
      Caption = 'Custo de Pe'#231'as (R$) '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label8: TcxLabel
        Left = 8
        Top = 22
        Caption = 'Inicial'
      end
      object Label10: TcxLabel
        Left = 99
        Top = 22
        Caption = 'Final'
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 39
        Top = 18
        EditValue = '0'
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 0
        Width = 57
      end
      object edtVlrFinal: TcxCurrencyEdit
        Left = 125
        Top = 18
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox4: TGroupBox
      Left = 334
      Top = 324
      Width = 197
      Height = 46
      Caption = 'Tempo de Atendimento (Hrs)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Label13: TcxLabel
        Left = 8
        Top = 21
        Caption = 'Inicial'
      end
      object Label14: TcxLabel
        Left = 99
        Top = 21
        Caption = 'Final'
      end
      object edtTpAtdIni: TcxCurrencyEdit
        Left = 39
        Top = 17
        EditValue = '0'
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 0
        Width = 57
      end
      object edtTpAtdFin: TcxCurrencyEdit
        Left = 125
        Top = 17
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox5: TGroupBox
      Left = 534
      Top = 324
      Width = 209
      Height = 46
      Caption = 'Tempo Resposta (Hrs)'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object Label15: TcxLabel
        Left = 8
        Top = 21
        Caption = 'Inicial'
      end
      object Label16: TcxLabel
        Left = 99
        Top = 21
        Caption = 'Final'
      end
      object edtTpRspIni: TcxCurrencyEdit
        Left = 39
        Top = 17
        EditValue = '0'
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 0
        Width = 57
      end
      object edtTpRspFin: TcxCurrencyEdit
        Left = 125
        Top = 17
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        Width = 65
      end
    end
    object GroupBox3: TGroupBox
      Left = 10
      Top = 397
      Width = 319
      Height = 85
      Caption = 'Op'#231#245'es de Quebra'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object rdRegiao: TRadioButton
        Left = 123
        Top = 39
        Width = 57
        Height = 22
        Caption = 'Regi'#227'o'
        TabOrder = 0
      end
      object rdMarca: TRadioButton
        Left = 10
        Top = 18
        Width = 55
        Height = 22
        Caption = 'Marca'
        Checked = True
        TabOrder = 1
        TabStop = True
      end
      object rdModelo: TRadioButton
        Left = 123
        Top = 18
        Width = 58
        Height = 22
        Caption = 'Modelo'
        TabOrder = 2
      end
      object rdCliente: TRadioButton
        Left = 216
        Top = 18
        Width = 54
        Height = 22
        Caption = 'Cliente'
        TabOrder = 3
      end
      object rdTecnico: TRadioButton
        Left = 10
        Top = 39
        Width = 58
        Height = 22
        Caption = 'T'#233'cnico'
        TabOrder = 4
      end
      object rdEquipamento: TRadioButton
        Left = 217
        Top = 39
        Width = 83
        Height = 22
        Caption = 'Equipamento'
        TabOrder = 5
      end
      object rdMotivoChamado: TRadioButton
        Left = 9
        Top = 61
        Width = 128
        Height = 19
        Caption = 'Motivo do chamado'
        TabOrder = 6
      end
    end
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPessoasFJ
    Left = 225
    Top = 98
  end
  object dsMecanico: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMecanico
    Left = 224
    Top = 255
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 224
    Top = 58
  end
  object dsEquipamentos: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelEquipCliente
    Left = 225
    Top = 141
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Marcas
    Left = 225
    Top = 182
  end
  object dsModelo: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelModelosProduto
    Left = 682
    Top = 38
  end
  object dsStatus: TDataSource
    DataSet = DmServicos.SelStatus
    Left = 682
    Top = 205
  end
  object dsAtendimento_Sint: TDataSource
    DataSet = qAtendimento_Sint
    Left = 325
    Top = 3
  end
  object qAtendimento_Sint: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select * '
      
        'from PCD_LST_ATENDIMENTO_OS_SINT(:cnpj,:DATA_Ini, :DATA_Fim,  :T' +
        'P_DATA, '
      ':PR_REGIAO ,'
      ':PR_MODELO ,'
      ':PR_CLIENTE ,'
      ':PR_MTV_CHAMADO ,'
      ':PR_EQUIPAMENTO ,'
      ':PR_TPCONTRATO ,'
      ':PR_TPA_CODIGO,'
      ':PR_MARCA ,'
      ':PR_CONTRATO ,'
      ':PR_CIDADE ,'
      ':PR_STATUS ,'
      ':PR_TECNICO)'
      'pcd ')
    Left = 356
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_Ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_Fim'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TP_DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_REGIAO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_MODELO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_MTV_CHAMADO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_EQUIPAMENTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_TPCONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_TPA_CODIGO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_MARCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CONTRATO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_CIDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_STATUS'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PR_TECNICO'
        ParamType = ptUnknown
      end>
    object qAtendimento_SintOFC_CODIGO: TIntegerField
      FieldName = 'OFC_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_CODIGO"'
    end
    object qAtendimento_SintOFC_DATA: TDateField
      FieldName = 'OFC_DATA'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DATA"'
    end
    object qAtendimento_SintOFC_DT_ENTRADA: TDateField
      FieldName = 'OFC_DT_ENTRADA'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DT_ENTRADA"'
    end
    object qAtendimento_SintOFC_HR_ENTRADA: TDateTimeField
      FieldName = 'OFC_HR_ENTRADA'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_HR_ENTRADA"'
      EditMask = '!90:00;1;_'
    end
    object qAtendimento_SintOFC_DT_ATRIBUICAO: TDateField
      FieldName = 'OFC_DT_ATRIBUICAO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DT_ATRIBUICAO"'
    end
    object qAtendimento_SintOFC_HR_ATRIBUICAO: TDateTimeField
      FieldName = 'OFC_HR_ATRIBUICAO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_HR_ATRIBUICAO"'
      EditMask = '!90:00;1;_'
    end
    object qAtendimento_SintOFC_DATA_FECHAMENTO: TDateField
      FieldName = 'OFC_DATA_FECHAMENTO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DATA_FECHAMENTO"'
    end
    object qAtendimento_SintOFC_TOTAL: TIBBCDField
      FieldName = 'OFC_TOTAL'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_TOTAL"'
      Precision = 18
      Size = 4
    end
    object qAtendimento_SintOFC_SOLICITANTE: TIBStringField
      FieldName = 'OFC_SOLICITANTE'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_SOLICITANTE"'
      Size = 50
    end
    object qAtendimento_SintOFC_VENDA: TIntegerField
      FieldName = 'OFC_VENDA'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_VENDA"'
    end
    object qAtendimento_SintOFC_KM_RODADO: TIBBCDField
      FieldName = 'OFC_KM_RODADO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_KM_RODADO"'
      Precision = 18
      Size = 4
    end
    object qAtendimento_SintOFC_HORAS_TRABALHADAS: TIBBCDField
      FieldName = 'OFC_HORAS_TRABALHADAS'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_HORAS_TRABALHADAS"'
      Precision = 18
      Size = 4
    end
    object qAtendimento_SintST_CODIGO: TIntegerField
      FieldName = 'ST_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."ST_CODIGO"'
    end
    object qAtendimento_SintST_COR: TIntegerField
      FieldName = 'ST_COR'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."ST_COR"'
    end
    object qAtendimento_SintST_NOME: TIBStringField
      FieldName = 'ST_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."ST_NOME"'
      Size = 50
    end
    object qAtendimento_SintMEC_CODIGO: TIntegerField
      FieldName = 'MEC_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MEC_CODIGO"'
    end
    object qAtendimento_SintMEC_NOME: TIBStringField
      FieldName = 'MEC_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MEC_NOME"'
      Size = 50
    end
    object qAtendimento_SintDEF_CODIGO: TIntegerField
      FieldName = 'DEF_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."DEF_CODIGO"'
    end
    object qAtendimento_SintDEF_NOME: TIBStringField
      FieldName = 'DEF_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."DEF_NOME"'
      Size = 50
    end
    object qAtendimento_SintMTC_CODIGO: TIntegerField
      FieldName = 'MTC_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MTC_CODIGO"'
    end
    object qAtendimento_SintMTC_NOME: TIBStringField
      FieldName = 'MTC_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MTC_NOME"'
      Size = 50
    end
    object qAtendimento_SintTPA_CODIGO: TIntegerField
      FieldName = 'TPA_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TPA_CODIGO"'
    end
    object qAtendimento_SintTPA_NOME: TIBStringField
      FieldName = 'TPA_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TPA_NOME"'
      Size = 50
    end
    object qAtendimento_SintCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CLI_CODIGO"'
    end
    object qAtendimento_SintCLI_NOME_RAZAO: TIBStringField
      FieldName = 'CLI_NOME_RAZAO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CLI_NOME_RAZAO"'
      Size = 90
    end
    object qAtendimento_SintREG_CODIGO: TIntegerField
      FieldName = 'REG_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."REG_CODIGO"'
    end
    object qAtendimento_SintREG_DESCRICAO: TIBStringField
      FieldName = 'REG_DESCRICAO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."REG_DESCRICAO"'
      Size = 50
    end
    object qAtendimento_SintPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."PRD_CODIGO"'
      Size = 15
    end
    object qAtendimento_SintPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."PRD_NOME"'
      Size = 90
    end
    object qAtendimento_SintPRD_SERIE: TIBStringField
      FieldName = 'PRD_SERIE'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."PRD_SERIE"'
      Size = 30
    end
    object qAtendimento_SintMDL_CODIGO: TIntegerField
      FieldName = 'MDL_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MDL_CODIGO"'
    end
    object qAtendimento_SintMDL_NOME: TIBStringField
      FieldName = 'MDL_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MDL_NOME"'
      Size = 50
    end
    object qAtendimento_SintMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MRC_CODIGO"'
    end
    object qAtendimento_SintMRC_NOME: TIBStringField
      FieldName = 'MRC_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."MRC_NOME"'
      Size = 50
    end
    object qAtendimento_SintCP_COD_CONTRATO: TIntegerField
      FieldName = 'CP_COD_CONTRATO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CP_COD_CONTRATO"'
    end
    object qAtendimento_SintTPC_NOME: TIBStringField
      FieldName = 'TPC_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TPC_NOME"'
      Size = 50
    end
    object qAtendimento_SintTP_ATENDIMENTO: TIBStringField
      FieldName = 'TP_ATENDIMENTO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TP_ATENDIMENTO"'
      Size = 50
    end
    object qAtendimento_SintID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."ID_CONTRATO"'
    end
    object qAtendimento_SintCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."COD_CIDADE"'
    end
    object qAtendimento_SintCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CIDADE"'
      Size = 70
    end
    object qAtendimento_SintTECNICO_ATDD: TIBStringField
      FieldName = 'TECNICO_ATDD'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TECNICO_ATDD"'
      FixedChar = True
      Size = 1
    end
    object qAtendimento_SintOFC_DT_FECHAMENTO: TDateField
      FieldName = 'OFC_DT_FECHAMENTO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DT_FECHAMENTO"'
    end
    object qAtendimento_SintOFC_DT_SOLICITACAO: TDateField
      FieldName = 'OFC_DT_SOLICITACAO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_DT_SOLICITACAO"'
    end
    object qAtendimento_SintREG_NOME: TIBStringField
      FieldName = 'REG_NOME'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."REG_NOME"'
      Size = 50
    end
    object qAtendimento_SintBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."BAIRRO"'
      Size = 50
    end
    object qAtendimento_SintENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."ENDERECO"'
      Size = 100
    end
    object qAtendimento_SintFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."FONE"'
    end
    object qAtendimento_SintCP_TEMPO_RESPOSTA: TFloatField
      FieldName = 'CP_TEMPO_RESPOSTA'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CP_TEMPO_RESPOSTA"'
    end
    object qAtendimento_SintOFC_TEMPO_VIAJEM: TFloatField
      FieldName = 'OFC_TEMPO_VIAJEM'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."OFC_TEMPO_VIAJEM"'
    end
    object qAtendimento_SintTECNICO_ESPECIFICO: TIntegerField
      FieldName = 'TECNICO_ESPECIFICO'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."TECNICO_ESPECIFICO"'
    end
    object qAtendimento_SintCONTADOR_TOTAL: TIBBCDField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"PCD_LST_ATENDIMENTO_OS_SINT"."CONTADOR_TOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object rptAtendimento: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'RELATORIO'
    Template.DatabaseSettings.TemplateField = 'CONFIG'
    Template.FileName = 
      'C:\Users\Fabiano\Desktop\Update Sistemaq\Relat'#243'rio de Atendiment' +
      'os.rtm'
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
    Left = 263
    Top = 3
    Version = '12.03'
    mmColumnWidth = 0
    object ppTitleBand12: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 29898
      mmPrintPosition = 0
      object SubRegiao: TppSubReport
        UserName = 'SubRegiao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand1: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 7938
            mmPrintPosition = 0
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284163
              BandType = 0
            end
            object ppLabel5: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 266701
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel6: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 191823
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel7: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 206111
              mmTop = 1323
              mmWidth = 13494
              BandType = 0
            end
            object ppLabel8: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 236803
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel9: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 254530
              mmTop = 1323
              mmWidth = 11980
              BandType = 0
            end
            object ppLabel13: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 222780
              mmTop = 1323
              mmWidth = 11642
              BandType = 0
            end
            object ppSubReport1: TppSubReport
              UserName = 'SubReport1'
              ExpandAll = False
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              mmHeight = 3175
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284300
              BandType = 0
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport6: TppChildReport
                PrinterSetup.BinName = 'Default'
                PrinterSetup.DocumentName = 'Report'
                PrinterSetup.Orientation = poLandscape
                PrinterSetup.PaperName = 'A4'
                PrinterSetup.PrinterName = 'Default'
                PrinterSetup.SaveDeviceSettings = False
                PrinterSetup.mmMarginBottom = 6350
                PrinterSetup.mmMarginLeft = 6350
                PrinterSetup.mmMarginRight = 6350
                PrinterSetup.mmMarginTop = 6350
                PrinterSetup.mmPaperHeight = 210000
                PrinterSetup.mmPaperWidth = 297000
                PrinterSetup.PaperSize = 9
                Template.DatabaseSettings.DataPipeline = ppLayout
                Template.DatabaseSettings.NameField = 'RELATORIO'
                Template.DatabaseSettings.TemplateField = 'CONFIG'
                Template.SaveTo = stDatabase
                Template.Format = ftASCII
                Version = '12.03'
                mmColumnWidth = 0
                object ppHeaderBand7: TppHeaderBand
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
                object ppDetailBand6: TppDetailBand
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
                object ppFooterBand1: TppFooterBand
                  mmBottomOffset = 0
                  mmHeight = 13229
                  mmPrintPosition = 0
                end
              end
            end
            object ppLabel2: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Serie'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 30427
              mmTop = 1323
              mmWidth = 17463
              BandType = 0
            end
            object ppLabel1: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'CONT_TOTAL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 165629
              mmTop = 1323
              mmWidth = 23813
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Executado'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 56356
              mmTop = 1323
              mmWidth = 24606
              BandType = 0
            end
            object ppLabel3: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Tecnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 136790
              mmTop = 1323
              mmWidth = 16933
              BandType = 0
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Abertura'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 89959
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Fechamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3440
              mmLeft = 105569
              mmTop = 1323
              mmWidth = 27517
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'OS'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 1058
              mmTop = 1323
              mmWidth = 4106
              BandType = 0
            end
            object ppLabel15: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 10848
              mmTop = 1323
              mmWidth = 10848
              BandType = 0
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
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 10848
              mmTop = 0
              mmWidth = 12023
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 211138
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object OFC_TEMPO_VIAJEM: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 243417
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 254921
              mmTop = 0
              mmWidth = 11388
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 1058
              mmTop = 0
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 225955
              mmTop = 0
              mmWidth = 4763
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PRD_SERIE'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 30427
              mmTop = 0
              mmWidth = 24871
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CONTADOR_TOTAL'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3260
              mmLeft = 173302
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'DEF_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 56356
              mmTop = 0
              mmWidth = 24606
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 136790
              mmTop = 0
              mmWidth = 22225
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OFC_DT_SOLICITACAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 89959
              mmTop = 0
              mmWidth = 19050
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OFC_DT_FECHAMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3440
              mmLeft = 100277
              mmTop = 0
              mmWidth = 32808
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OFC_DATA_FECHAMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 109273
              mmTop = 0
              mmWidth = 20373
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
              BandType = 7
            end
            object ppLabel14: TppLabel
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
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224632
              mmTop = 1323
              mmWidth = 11642
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13495
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc72: TppDBCalc
              UserName = 'DBCalc72'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 239713
              mmTop = 1323
              mmWidth = 13494
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'REG_DESCRICAO'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
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
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppLine21: TppLine
                UserName = 'Line5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 0
                mmTop = 7938
                mmWidth = 13229
                BandType = 3
                GroupNo = 0
              end
              object ppDBText77: TppDBText
                UserName = 'DBText77'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                DataField = 'OFC_DATA_FECHAMENTO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3260
                mmLeft = 204523
                mmTop = 265
                mmWidth = 32808
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
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
                BandType = 5
                GroupNo = 0
              end
              object ppLabel16: TppLabel
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
                mmHeight = 3747
                mmLeft = 794
                mmTop = 1058
                mmWidth = 21019
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
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 21696
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224632
                mmTop = 529
                mmWidth = 11642
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13495
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc71: TppDBCalc
                UserName = 'DBCalc71'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 239713
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppLine22: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 3969
                mmLeft = 0
                mmTop = 0
                mmWidth = 13229
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
      object SubTecnico: TppSubReport
        UserName = 'SubTecnico'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport26: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand6: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            mmBottomOffset = 0
            mmHeight = 9260
            mmPrintPosition = 0
            object ppLine68: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284163
              BandType = 0
            end
            object ppLabel183: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Marca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 10848
              mmTop = 1323
              mmWidth = 12700
              BandType = 0
            end
            object ppLabel179: TppLabel
              UserName = 'Label102'
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
              mmHeight = 3440
              mmLeft = 115359
              mmTop = 1852
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel187: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1323
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel188: TppLabel
              UserName = 'Label188'
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
              mmHeight = 3440
              mmLeft = 265642
              mmTop = 1058
              mmWidth = 11113
              BandType = 0
            end
            object ppLabel189: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Mtv. Chamado'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 42598
              mmTop = 1323
              mmWidth = 20638
              BandType = 0
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Executado'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 85196
              mmTop = 1058
              mmWidth = 24077
              BandType = 0
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 26194
              mmTop = 1852
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel33: TppLabel
              UserName = 'Label33'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Contador Total'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 233098
              mmTop = 1323
              mmWidth = 40481
              BandType = 0
            end
            object ppLabel68: TppLabel
              UserName = 'Label68'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Serie'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 161661
              mmTop = 1852
              mmWidth = 18521
              BandType = 0
            end
            object ppLabel82: TppLabel
              UserName = 'Label82'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Cidade'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              mmHeight = 3175
              mmLeft = 204523
              mmTop = 1323
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel83: TppLabel
              UserName = 'Label83'
              HyperlinkColor = clBlue
              AutoSize = False
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'Fechamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 180182
              mmTop = 1323
              mmWidth = 21167
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
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText252: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 8996
              mmTop = 0
              mmWidth = 12023
              BandType = 4
            end
            object ppDBText253: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MDL_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 24342
              mmTop = 0
              mmWidth = 11134
              BandType = 4
            end
            object ppDBText254: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 1058
              mmTop = 0
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText256: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 263790
              mmTop = 0
              mmWidth = 24680
              BandType = 4
            end
            object ppDBText257: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MTC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 42598
              mmTop = 0
              mmWidth = 36777
              BandType = 4
            end
            object ppDBText245: TppDBText
              UserName = 'DBText245'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLI_NOME_RAZAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 115359
              mmTop = 0
              mmWidth = 39688
              BandType = 4
            end
            object ppDBText75: TppDBText
              UserName = 'DBText75'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'PRD_SERIE'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 161661
              mmTop = 0
              mmWidth = 18521
              BandType = 4
            end
            object ppDBText76: TppDBText
              UserName = 'DBText76'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CIDADE'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 204523
              mmTop = 0
              mmWidth = 21431
              BandType = 4
            end
            object ppDBText60: TppDBText
              UserName = 'DBText60'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CONTADOR_TOTAL'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 234686
              mmTop = 0
              mmWidth = 32544
              BandType = 4
            end
            object ppDBText78: TppDBText
              UserName = 'DBText78'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'OFC_DATA_FECHAMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 184150
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'TPA_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3175
              mmLeft = 84138
              mmTop = 0
              mmWidth = 28840
              BandType = 4
            end
          end
          object ppSummaryBand28: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine73: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
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
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224103
              mmTop = 1323
              mmWidth = 12171
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13495
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc70: TppDBCalc
              UserName = 'DBCalc70'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 241300
              mmTop = 1323
              mmWidth = 11642
              BandType = 7
            end
          end
          object ppGroup10: TppGroup
            BreakName = 'MEC_NOME'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
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
                Caption = 'T'#233'cnico: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4233
                mmLeft = 2117
                mmTop = 0
                mmWidth = 42333
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
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText255: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MEC_NOME'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3683
                mmLeft = 2117
                mmTop = 3969
                mmWidth = 15663
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
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
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
                Caption = 'Total T'#233'cnico: '
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
                mmWidth = 21696
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 22490
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224103
                mmTop = 529
                mmWidth = 12171
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc13: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13495
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc14: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc69: TppDBCalc
                UserName = 'DBCalc69'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 241300
                mmTop = 529
                mmWidth = 11642
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
      object ppShape6: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 21960
        mmLeft = 0
        mmTop = 2117
        mmWidth = 284428
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
        Caption = 'Relat'#243'rio de Atendimentos'
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
        mmWidth = 50207
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
        Caption = 'SISTEMAQ AUTOMA'#199#195'O'
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
        mmWidth = 59351
        BandType = 1
      end
      object SubMarca: TppSubReport
        UserName = 'SubMarca'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine5: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284163
              BandType = 0
            end
            object ppLabel18: TppLabel
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
              mmHeight = 3440
              mmLeft = 164836
              mmTop = 1323
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel20: TppLabel
              UserName = 'Label102'
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
              mmHeight = 3440
              mmLeft = 95515
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel21: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 268023
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel22: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 193146
              mmTop = 1323
              mmWidth = 15875
              BandType = 0
            end
            object ppLabel23: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13495
              BandType = 0
            end
            object ppLabel24: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 237332
              mmTop = 1323
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel25: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 254001
              mmTop = 1323
              mmWidth = 16669
              BandType = 0
            end
            object ppLabel26: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1323
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel27: TppLabel
              UserName = 'Label188'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#233'cnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1323
              mmWidth = 10583
              BandType = 0
            end
            object ppLabel28: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Mtv. Chamado'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 34131
              mmTop = 1323
              mmWidth = 20638
              BandType = 0
            end
            object ppLabel29: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11642
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
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText20: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 198195
              mmTop = 0
              mmWidth = 4741
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
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 167217
              mmTop = 0
              mmWidth = 24680
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
              DataField = 'MDL_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 12700
              mmTop = 0
              mmWidth = 11134
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText245'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLI_NOME_RAZAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 95515
              mmTop = 0
              mmWidth = 60590
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 215392
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 240771
              mmTop = 0
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 256905
              mmTop = 0
              mmWidth = 11388
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 0
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 181769
              mmTop = 0
              mmWidth = 11896
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MTC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 34131
              mmTop = 0
              mmWidth = 53446
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 228336
              mmTop = 0
              mmWidth = 5556
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
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
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2921
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc23: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2921
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11642
              BandType = 7
            end
            object ppDBCalc24: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
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
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 213255
              mmTop = 1323
              mmWidth = 10054
              BandType = 7
            end
            object ppDBCalc25: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 11113
              BandType = 7
            end
            object ppDBCalc68: TppDBCalc
              UserName = 'DBCalc68'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 239713
              mmTop = 1323
              mmWidth = 9790
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'MRC_NOME'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
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
                Caption = 'Marca: '
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
                mmWidth = 12361
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
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText28: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MRC_NOME'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3683
                mmLeft = 20108
                mmTop = 3969
                mmWidth = 15833
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
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
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
                Caption = 'Total Marca: '
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
                mmWidth = 19579
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc26: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 20373
                mmTop = 1588
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc27: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
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
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2921
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc28: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
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
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 226219
                mmTop = 529
                mmWidth = 11642
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc29: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
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
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 213255
                mmTop = 529
                mmWidth = 10054
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc30: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
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
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 196057
                mmTop = 529
                mmWidth = 10054
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc67: TppDBCalc
                UserName = 'DBCalc67'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
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
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 239713
                mmTop = 529
                mmWidth = 9790
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
      object SubModelo: TppSubReport
        UserName = 'SubModelo'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand3: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine9: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284163
              BandType = 0
            end
            object ppLabel34: TppLabel
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
              mmHeight = 3440
              mmLeft = 167217
              mmTop = 1323
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel35: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Marca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 22490
              mmTop = 1323
              mmWidth = 10583
              BandType = 0
            end
            object ppLabel36: TppLabel
              UserName = 'Label102'
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
              mmHeight = 3439
              mmLeft = 101336
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel37: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 268023
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel38: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel39: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 211138
              mmTop = 1323
              mmWidth = 12171
              BandType = 0
            end
            object ppLabel40: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 238655
              mmTop = 1323
              mmWidth = 15081
              BandType = 0
            end
            object ppLabel41: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 254001
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel42: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1323
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel43: TppLabel
              UserName = 'Label188'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#233'cnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 181769
              mmTop = 1323
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel44: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Mtv. Chamado'
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
              mmWidth = 22754
              BandType = 0
            end
            object ppLabel45: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11641
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
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText30: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 171715
              mmTop = 265
              mmWidth = 550
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 21431
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText245'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLI_NOME_RAZAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 101336
              mmTop = 0
              mmWidth = 61648
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 208471
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 222875
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 253186
              mmTop = 265
              mmWidth = 550
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 262324
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 181769
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MTC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 63500
              mmTop = 0
              mmWidth = 28046
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 235998
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
              BandType = 7
            end
            object ppLabel46: TppLabel
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
            object ppDBCalc31: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc32: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc33: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224103
              mmTop = 1323
              mmWidth = 11641
              BandType = 7
            end
            object ppDBCalc34: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc35: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc66: TppDBCalc
              UserName = 'DBCalc66'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2921
              mmLeft = 238919
              mmTop = 1058
              mmWidth = 14817
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'MDL_NOME'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel47: TppLabel
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
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3440
                mmWidth = 14499
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
                mmTop = 7938
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText42: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MDL_NOME'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3683
                mmLeft = 21431
                mmTop = 3969
                mmWidth = 889
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
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
                BandType = 5
                GroupNo = 0
              end
              object ppLabel48: TppLabel
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
                mmHeight = 3747
                mmLeft = 794
                mmTop = 1058
                mmWidth = 21569
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc36: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 22490
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc37: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc38: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224103
                mmTop = 529
                mmWidth = 11641
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc39: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc40: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc65: TppDBCalc
                UserName = 'DBCalc65'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 238919
                mmTop = 529
                mmWidth = 14817
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
      object SubEquipamento: TppSubReport
        UserName = 'SubEquipamento'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand4: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine13: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 4763
              mmWidth = 292894
              BandType = 0
            end
            object ppLabel49: TppLabel
              UserName = 'Label111'
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
              mmLeft = 33073
              mmTop = 1058
              mmWidth = 30427
              BandType = 0
            end
            object ppLabel50: TppLabel
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
              mmHeight = 3440
              mmLeft = 159015
              mmTop = 1323
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel51: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Marca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 8996
              mmTop = 1323
              mmWidth = 9790
              BandType = 0
            end
            object ppLabel52: TppLabel
              UserName = 'Label102'
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
              mmHeight = 3439
              mmLeft = 101336
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel53: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 268023
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel54: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel55: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 0
            end
            object ppLabel56: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 237596
              mmTop = 1323
              mmWidth = 15081
              BandType = 0
            end
            object ppLabel57: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 254001
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel58: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1058
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel59: TppLabel
              UserName = 'Label188'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#233'cnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 181769
              mmTop = 1323
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel60: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Mtv. Chamado'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69321
              mmTop = 1323
              mmWidth = 20638
              BandType = 0
            end
            object ppLabel61: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 224632
              mmTop = 1323
              mmWidth = 11642
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
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText43: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MDL_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 33073
              mmTop = 0
              mmWidth = 30427
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 160867
              mmTop = 0
              mmWidth = 4233
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 8996
              mmTop = 0
              mmWidth = 10499
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText245'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLI_NOME_RAZAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2900
              mmLeft = 101336
              mmTop = 0
              mmWidth = 56356
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 204280
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText49: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 218578
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 247937
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 258642
              mmTop = 0
              mmWidth = 7916
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 0
              mmWidth = 6773
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 181769
              mmTop = 0
              mmWidth = 7324
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MTC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 65617
              mmTop = 0
              mmWidth = 32808
              BandType = 4
            end
            object ppDBText55: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 231617
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine14: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
              BandType = 7
            end
            object ppLabel62: TppLabel
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
            object ppDBCalc41: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc42: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc43: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224632
              mmTop = 1323
              mmWidth = 11642
              BandType = 7
            end
            object ppDBCalc44: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc45: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc62: TppDBCalc
              UserName = 'DBCalc62'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 238390
              mmTop = 1058
              mmWidth = 14288
              BandType = 7
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'PRD_NOME'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
            NewFile = False
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel63: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Equipamento: '
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
                mmWidth = 24532
                BandType = 3
                GroupNo = 0
              end
              object ppLine15: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 7408
                mmTop = 8202
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText56: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRD_NOME'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3683
                mmLeft = 30692
                mmTop = 3969
                mmWidth = 55626
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine16: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
                BandType = 5
                GroupNo = 0
              end
              object ppLabel64: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Equipamento: '
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
                mmWidth = 30565
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc46: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 30956
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc47: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc48: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224632
                mmTop = 529
                mmWidth = 11642
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc49: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc50: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc61: TppDBCalc
                UserName = 'DBCalc61'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 241036
                mmTop = 529
                mmWidth = 11642
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule4: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object SubCliente: TppSubReport
        UserName = 'SubCliente'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand5: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine17: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 4763
              mmWidth = 292894
              BandType = 0
            end
            object ppLabel65: TppLabel
              UserName = 'Label111'
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
              mmLeft = 45244
              mmTop = 1323
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel66: TppLabel
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
              mmHeight = 3440
              mmLeft = 153723
              mmTop = 1323
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel67: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Marca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 11113
              mmTop = 1323
              mmWidth = 30427
              BandType = 0
            end
            object ppLabel69: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 268023
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel70: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel71: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 0
            end
            object ppLabel72: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 237596
              mmTop = 1323
              mmWidth = 15081
              BandType = 0
            end
            object ppLabel73: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 254001
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel74: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1058
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel75: TppLabel
              UserName = 'Label188'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#233'cnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 181769
              mmTop = 1323
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel76: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Fech.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3175
              mmLeft = 127000
              mmTop = 1323
              mmWidth = 11642
              BandType = 0
            end
            object ppLabel77: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11642
              BandType = 0
            end
            object ppLabel81: TppLabel
              UserName = 'Label81'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Abert.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 103717
              mmTop = 1058
              mmWidth = 12700
              BandType = 0
            end
          end
          object ppDetailBand5: TppDetailBand
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
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText57: TppDBText
              UserName = 'DBText97'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MDL_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 48419
              mmTop = 0
              mmWidth = 34660
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 158221
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText59: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 11113
              mmTop = 0
              mmWidth = 35454
              BandType = 4
            end
            object ppDBText61: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText62: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 208471
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText63: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 222875
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText64: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 252128
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText65: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 262325
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText66: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText67: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 181769
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText68: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_DATA_FECHAMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 126471
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText69: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 235998
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_DT_ENTRADA'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 103717
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine18: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
              BandType = 7
            end
            object ppLabel78: TppLabel
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
            object ppDBCalc51: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc52: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc53: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11642
              BandType = 7
            end
            object ppDBCalc54: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc55: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc64: TppDBCalc
              UserName = 'DBCalc64'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2921
              mmLeft = 240507
              mmTop = 1323
              mmWidth = 12171
              BandType = 7
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'CLI_NOME_RAZAO'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
            NewFile = False
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 13229
              mmPrintPosition = 0
              object ppLabel79: TppLabel
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
              object ppLine19: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 12171
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText70: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CLI_NOME_RAZAO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3683
                mmLeft = 21167
                mmTop = 3969
                mmWidth = 889
                BandType = 3
                GroupNo = 0
              end
              object ppDBText71: TppDBText
                UserName = 'DBText42'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENDERECO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2879
                mmLeft = 7144
                mmTop = 8731
                mmWidth = 550
                BandType = 3
                GroupNo = 0
              end
              object ppDBText72: TppDBText
                UserName = 'DBText43'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BAIRRO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2879
                mmLeft = 92340
                mmTop = 8731
                mmWidth = 550
                BandType = 3
                GroupNo = 0
              end
              object ppDBText73: TppDBText
                UserName = 'DBText44'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CIDADE'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2879
                mmLeft = 134144
                mmTop = 8731
                mmWidth = 550
                BandType = 3
                GroupNo = 0
              end
              object ppDBText74: TppDBText
                UserName = 'DBText45'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'FONE'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2879
                mmLeft = 169069
                mmTop = 8731
                mmWidth = 550
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine20: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 0
                mmTop = 0
                mmWidth = 277019
                BandType = 5
                GroupNo = 0
              end
              object ppLabel80: TppLabel
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
              object ppDBCalc56: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 22225
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc57: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc58: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224896
                mmTop = 529
                mmWidth = 11642
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc59: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc60: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc63: TppDBCalc
                UserName = 'DBCalc63'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 240507
                mmTop = 529
                mmWidth = 12171
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule5: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblFiltro'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 5821
        mmLeft = 2646
        mmTop = 17198
        mmWidth = 280723
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 256286
        mmTop = 4233
        mmWidth = 26289
        BandType = 1
      end
      object SubMotivoChamado: TppSubReport
        UserName = 'SubMotivoChamado'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppAtendimento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24871
        mmWidth = 284300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport7: TppChildReport
          AutoStop = False
          DataPipeline = ppAtendimento
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Template.DatabaseSettings.DataPipeline = ppLayout
          Template.DatabaseSettings.NameField = 'RELATORIO'
          Template.DatabaseSettings.TemplateField = 'CONFIG'
          Template.SaveTo = stDatabase
          Template.Format = ftASCII
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppAtendimento'
          object ppHeaderBand8: TppHeaderBand
            BeforePrint = ppHeaderBand6BeforePrint
            Visible = False
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLine23: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 0
              mmTop = 4763
              mmWidth = 284163
              BandType = 0
            end
            object ppLabel84: TppLabel
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
              mmHeight = 3440
              mmLeft = 167217
              mmTop = 1323
              mmWidth = 10054
              BandType = 0
            end
            object ppLabel85: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Marca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 22490
              mmTop = 1323
              mmWidth = 10583
              BandType = 0
            end
            object ppLabel86: TppLabel
              UserName = 'Label102'
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
              mmHeight = 3439
              mmLeft = 101336
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel87: TppLabel
              UserName = 'Label180'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total (R$)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 268023
              mmTop = 1323
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel88: TppLabel
              UserName = 'Label1801'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. At. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel89: TppLabel
              UserName = 'Label182'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tmp. Rp.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 211138
              mmTop = 1323
              mmWidth = 12171
              BandType = 0
            end
            object ppLabel90: TppLabel
              UserName = 'Label185'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Viagem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 238655
              mmTop = 1323
              mmWidth = 15081
              BandType = 0
            end
            object ppLabel91: TppLabel
              UserName = 'Label186'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Atend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 254001
              mmTop = 1323
              mmWidth = 13229
              BandType = 0
            end
            object ppLabel92: TppLabel
              UserName = 'Label187'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 0
              mmTop = 1323
              mmWidth = 6244
              BandType = 0
            end
            object ppLabel93: TppLabel
              UserName = 'Label188'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'T'#233'cnico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3323
              mmLeft = 181769
              mmTop = 1323
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel94: TppLabel
              UserName = 'Label103'
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
              mmHeight = 3387
              mmLeft = 61913
              mmTop = 1323
              mmWidth = 9991
              BandType = 0
            end
            object ppLabel95: TppLabel
              UserName = 'Label190'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'KM. Utl.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 224896
              mmTop = 1323
              mmWidth = 11641
              BandType = 0
            end
          end
          object ppDetailBand7: TppDetailBand
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
            mmHeight = 2910
            mmPrintPosition = 0
            object ppDBText79: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'REG_DESCRICAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 171715
              mmTop = 265
              mmWidth = 550
              BandType = 4
            end
            object ppDBText80: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MRC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 21431
              mmTop = 0
              mmWidth = 20638
              BandType = 4
            end
            object ppDBText81: TppDBText
              UserName = 'DBText245'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLI_NOME_RAZAO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 101336
              mmTop = 0
              mmWidth = 61648
              BandType = 4
            end
            object ppDBText82: TppDBText
              UserName = 'DBText247'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 283878
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText83: TppDBText
              UserName = 'DBText248'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 208471
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText84: TppDBText
              UserName = 'DBText249'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 222875
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText85: TppDBText
              UserName = 'DBText250'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 253186
              mmTop = 265
              mmWidth = 550
              BandType = 4
            end
            object ppDBText86: TppDBText
              UserName = 'DBText2501'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TP_ATENDIMENTO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 262324
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText87: TppDBText
              UserName = 'DBText254'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText88: TppDBText
              UserName = 'DBText2502'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MEC_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 181769
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText89: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MDL_NOME'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 61913
              mmTop = 0
              mmWidth = 28046
              BandType = 4
            end
            object ppDBText90: TppDBText
              UserName = 'DBText258'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2879
              mmLeft = 235998
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine24: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 529
              mmWidth = 283898
              BandType = 7
            end
            object ppLabel96: TppLabel
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
            object ppDBCalc73: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_CODIGO'
              DataPipeline = ppAtendimento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'ppAtendimento'
              mmHeight = 3387
              mmLeft = 19050
              mmTop = 2117
              mmWidth = 29972
              BandType = 7
            end
            object ppDBCalc74: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TOTAL'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 266701
              mmTop = 1588
              mmWidth = 17198
              BandType = 7
            end
            object ppDBCalc75: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_KM_RODADO'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 224103
              mmTop = 1323
              mmWidth = 11641
              BandType = 7
            end
            object ppDBCalc76: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CP_TEMPO_RESPOSTA'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DBCalcType = dcAverage
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 209815
              mmTop = 1323
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc77: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_HORAS_TRABALHADAS'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2910
              mmLeft = 194998
              mmTop = 1323
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc78: TppDBCalc
              UserName = 'DBCalc66'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'OFC_TEMPO_VIAJEM'
              DataPipeline = ppAtendimento
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppAtendimento'
              mmHeight = 2921
              mmLeft = 238919
              mmTop = 1058
              mmWidth = 14817
              BandType = 7
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'MDL_NOME'
            DataPipeline = ppAtendimento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppAtendimento'
            NewFile = False
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel97: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Motivo do Chamado:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4233
                mmLeft = 6615
                mmTop = 2646
                mmWidth = 34660
                BandType = 3
                GroupNo = 0
              end
              object ppLine25: TppLine
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
                mmWidth = 277548
                BandType = 3
                GroupNo = 0
              end
              object ppDBText91: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MTC_NOME'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3704
                mmLeft = 41804
                mmTop = 3175
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine26: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 6615
                mmTop = 0
                mmWidth = 277019
                BandType = 5
                GroupNo = 0
              end
              object ppLabel98: TppLabel
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
                mmHeight = 3747
                mmLeft = 794
                mmTop = 1058
                mmWidth = 21569
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc79: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_CODIGO'
                DataPipeline = ppAtendimento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                Transparent = True
                DBCalcType = dcCount
                DataPipelineName = 'ppAtendimento'
                mmHeight = 3387
                mmLeft = 22490
                mmTop = 1323
                mmWidth = 29972
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc80: TppDBCalc
                UserName = 'DBCalc11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TOTAL'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2963
                mmLeft = 266965
                mmTop = 794
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc81: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_KM_RODADO'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 224103
                mmTop = 529
                mmWidth = 11641
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc82: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CP_TEMPO_RESPOSTA'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DBCalcType = dcAverage
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 209815
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc83: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_HORAS_TRABALHADAS'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 194998
                mmTop = 529
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc84: TppDBCalc
                UserName = 'DBCalc65'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'OFC_TEMPO_VIAJEM'
                DataPipeline = ppAtendimento
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppAtendimento'
                mmHeight = 2910
                mmLeft = 238919
                mmTop = 529
                mmWidth = 14817
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule7: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
    end
    object ppDetailBand18: TppDetailBand
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
    object ppFooterBand7: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape80: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 264
        mmWidth = 283369
        BandType = 8
      end
      object ppLabel211: TppLabel
        UserName = 'Label116'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'SISTEMAQ AUTOMA'#199#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 3440
        mmTop = 1852
        mmWidth = 127794
        BandType = 8
      end
      object ppSystemVariable13: TppSystemVariable
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
        mmLeft = 266701
        mmTop = 2646
        mmWidth = 14552
        BandType = 8
      end
    end
    object raCodeModule6: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppAtendimento: TppDBPipeline
    DataSource = dsAtendimento_Sint
    UserName = 'Atendimento'
    Left = 294
    Top = 3
    object ppAtendimentoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_CODIGO'
      FieldName = 'OFC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppAtendimentoppField2: TppField
      FieldAlias = 'OFC_DATA'
      FieldName = 'OFC_DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppAtendimentoppField3: TppField
      FieldAlias = 'OFC_DT_ENTRADA'
      FieldName = 'OFC_DT_ENTRADA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object ppAtendimentoppField4: TppField
      FieldAlias = 'OFC_HR_ENTRADA'
      FieldName = 'OFC_HR_ENTRADA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 3
    end
    object ppAtendimentoppField5: TppField
      FieldAlias = 'OFC_DT_ATRIBUICAO'
      FieldName = 'OFC_DT_ATRIBUICAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppAtendimentoppField6: TppField
      FieldAlias = 'OFC_HR_ATRIBUICAO'
      FieldName = 'OFC_HR_ATRIBUICAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 5
    end
    object ppAtendimentoppField7: TppField
      FieldAlias = 'OFC_DATA_FECHAMENTO'
      FieldName = 'OFC_DATA_FECHAMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppAtendimentoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_TOTAL'
      FieldName = 'OFC_TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppAtendimentoppField9: TppField
      FieldAlias = 'OFC_SOLICITANTE'
      FieldName = 'OFC_SOLICITANTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppAtendimentoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_VENDA'
      FieldName = 'OFC_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppAtendimentoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_KM_RODADO'
      FieldName = 'OFC_KM_RODADO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppAtendimentoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_HORAS_TRABALHADAS'
      FieldName = 'OFC_HORAS_TRABALHADAS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppAtendimentoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'ST_CODIGO'
      FieldName = 'ST_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppAtendimentoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'ST_COR'
      FieldName = 'ST_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppAtendimentoppField15: TppField
      FieldAlias = 'ST_NOME'
      FieldName = 'ST_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppAtendimentoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'MEC_CODIGO'
      FieldName = 'MEC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppAtendimentoppField17: TppField
      FieldAlias = 'MEC_NOME'
      FieldName = 'MEC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object ppAtendimentoppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEF_CODIGO'
      FieldName = 'DEF_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppAtendimentoppField19: TppField
      FieldAlias = 'DEF_NOME'
      FieldName = 'DEF_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppAtendimentoppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'MTC_CODIGO'
      FieldName = 'MTC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppAtendimentoppField21: TppField
      FieldAlias = 'MTC_NOME'
      FieldName = 'MTC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object ppAtendimentoppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'TPA_CODIGO'
      FieldName = 'TPA_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppAtendimentoppField23: TppField
      FieldAlias = 'TPA_NOME'
      FieldName = 'TPA_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppAtendimentoppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppAtendimentoppField25: TppField
      FieldAlias = 'CLI_NOME_RAZAO'
      FieldName = 'CLI_NOME_RAZAO'
      FieldLength = 90
      DisplayWidth = 90
      Position = 24
    end
    object ppAtendimentoppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'REG_CODIGO'
      FieldName = 'REG_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppAtendimentoppField27: TppField
      FieldAlias = 'REG_DESCRICAO'
      FieldName = 'REG_DESCRICAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 26
    end
    object ppAtendimentoppField28: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 27
    end
    object ppAtendimentoppField29: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 90
      DisplayWidth = 90
      Position = 28
    end
    object ppAtendimentoppField30: TppField
      FieldAlias = 'PRD_SERIE'
      FieldName = 'PRD_SERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 29
    end
    object ppAtendimentoppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'MDL_CODIGO'
      FieldName = 'MDL_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppAtendimentoppField32: TppField
      FieldAlias = 'MDL_NOME'
      FieldName = 'MDL_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppAtendimentoppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppAtendimentoppField34: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object ppAtendimentoppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'CP_COD_CONTRATO'
      FieldName = 'CP_COD_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppAtendimentoppField36: TppField
      FieldAlias = 'TPC_NOME'
      FieldName = 'TPC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppAtendimentoppField37: TppField
      FieldAlias = 'TP_ATENDIMENTO'
      FieldName = 'TP_ATENDIMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppAtendimentoppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CONTRATO'
      FieldName = 'ID_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppAtendimentoppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CIDADE'
      FieldName = 'COD_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppAtendimentoppField40: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 70
      DisplayWidth = 70
      Position = 39
    end
    object ppAtendimentoppField41: TppField
      FieldAlias = 'TECNICO_ATDD'
      FieldName = 'TECNICO_ATDD'
      FieldLength = 1
      DisplayWidth = 1
      Position = 40
    end
    object ppAtendimentoppField42: TppField
      FieldAlias = 'OFC_DT_FECHAMENTO'
      FieldName = 'OFC_DT_FECHAMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 41
    end
    object ppAtendimentoppField43: TppField
      FieldAlias = 'OFC_DT_SOLICITACAO'
      FieldName = 'OFC_DT_SOLICITACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 42
    end
    object ppAtendimentoppField44: TppField
      FieldAlias = 'REG_NOME'
      FieldName = 'REG_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 43
    end
    object ppAtendimentoppField45: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 44
    end
    object ppAtendimentoppField46: TppField
      FieldAlias = 'ENDERECO'
      FieldName = 'ENDERECO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 45
    end
    object ppAtendimentoppField47: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 46
    end
    object ppAtendimentoppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'CP_TEMPO_RESPOSTA'
      FieldName = 'CP_TEMPO_RESPOSTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 47
    end
    object ppAtendimentoppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'OFC_TEMPO_VIAJEM'
      FieldName = 'OFC_TEMPO_VIAJEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 48
    end
    object ppAtendimentoppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'TECNICO_ESPECIFICO'
      FieldName = 'TECNICO_ESPECIFICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppAtendimentoppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONTADOR_TOTAL'
      FieldName = 'CONTADOR_TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 50
    end
  end
  object dsMotivo: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMotivo
    Left = 682
    Top = 80
  end
  object dsTpContrato: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.SelContratos
    Left = 684
    Top = 124
  end
  object dsContratos: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelContrato
    Left = 684
    Top = 164
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelCidade
    Left = 224
    Top = 218
  end
  object stgFRel_Rechamados: TcxPropertiesStore
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
        Component = edtTpAtdFin
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
        Component = edtTpAtdIni
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
        Component = edtTpRspFin
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
        Component = edtTpRspIni
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
        Component = rdCliente
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
        Component = rdEquipamento
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
        Component = rdFechamento
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
        Component = rdMarca
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
        Component = rdModelo
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
        Component = rdNormal
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
        Component = rdOriginador
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
        Component = rdProgramacao
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
        Component = rdRechamado
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
        Component = rdRegiao
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
        Component = rdSolicitacao
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
        Component = rdTecAmbos
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
        Component = rdTecnico
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
        Component = rdTecSub
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
        Component = rdTecTit
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
        Component = rdTodos
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
    StorageName = 'stgFRel_Rechamados'
    Left = 144
    Top = 215
  end
  object dsSelServico: TDataSource
    DataSet = DmServicos.TipoAtendimento
    Left = 682
    Top = 245
  end
  object ppLayout: TppDBPipeline
    DataSource = dsLayout
    UserName = 'SerieNF1'
    Left = 292
    Top = 32
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
  object dsLayout: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.CONFIG_REL_GRAFICO
    Left = 323
    Top = 33
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
    Report = rptAtendimento
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 264
    Top = 32
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 214
    Top = 9
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 183
    Top = 9
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
end
