object FRel_ResumoAtendimentos: TFRel_ResumoAtendimentos
  Left = 68
  Top = 264
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio Resumido de Atendimentos'
  ClientHeight = 319
  ClientWidth = 754
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
    Top = 287
    Width = 754
    Height = 32
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      754
      32)
    object BtnOk: TcxButton
      Left = 585
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
      Left = 664
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
    Width = 754
    Height = 287
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
      Caption = 'Relat'#243'rio Resumido de Atendimentos'
      ParentFont = False
    end
    object gbData: TGroupBox
      Left = 9
      Top = 36
      Width = 224
      Height = 71
      Caption = 'Data de Abertura'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label4: TcxLabel
        Left = 117
        Top = 18
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 11
        Top = 18
        Caption = 'Inicial'
        ParentFont = False
      end
      object edtAbInicial: TdxDateEdit
        Left = 11
        Top = 35
        Width = 97
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
        OnExit = cmbClienteExit
        OnKeyDown = cmbClienteKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object edtAbFinal: TdxDateEdit
        Left = 117
        Top = 35
        Width = 95
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
        OnExit = cmbClienteExit
        OnKeyDown = cmbClienteKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 241
      Top = 36
      Width = 224
      Height = 71
      Caption = 'Data de Fechamento'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label8: TcxLabel
        Left = 117
        Top = 18
        Caption = 'Final'
        ParentFont = False
      end
      object Label10: TcxLabel
        Left = 11
        Top = 18
        Caption = 'Inicial'
        ParentFont = False
      end
      object edtFcInicial: TdxDateEdit
        Left = 11
        Top = 35
        Width = 97
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
        OnExit = cmbClienteExit
        OnKeyDown = cmbClienteKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object edtFcFinal: TdxDateEdit
        Left = 117
        Top = 35
        Width = 95
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
        OnExit = cmbClienteExit
        OnKeyDown = cmbClienteKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
    end
    object GroupBox1: TGroupBox
      Left = 9
      Top = 110
      Width = 734
      Height = 171
      Caption = 'Gerais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label12: TcxLabel
        Left = 11
        Top = 97
        Caption = 'T'#233'cnico'
        ParentFont = False
      end
      object Label37: TcxLabel
        Left = 370
        Top = 16
        Caption = 'Contato'
        ParentFont = False
      end
      object Label9: TcxLabel
        Left = 11
        Top = 17
        Caption = 'Cliente'
        ParentFont = False
      end
      object Label3: TcxLabel
        Left = 11
        Top = 57
        Caption = 'Status'
        ParentFont = False
      end
      object Label2: TcxLabel
        Left = 370
        Top = 57
        Caption = 'Mtv.Chamado'
      end
      object Label21: TcxLabel
        Left = 370
        Top = 97
        Caption = 'Servi'#231'o Executado'
        ParentFont = False
      end
      object cmbTecnico: TdxLookupEdit
        Left = 11
        Top = 111
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
      object cmbContato: TdxLookupEdit
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
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsContato
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
        Left = 11
        Top = 33
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
      object cmbServExecutado: TdxLookupEdit
        Left = 370
        Top = 111
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
        ListSource = dsSelServico
        LookupKeyValue = Null
      end
      object ckConfigurar: TcxCheckBox
        Left = 13
        Top = 146
        Caption = 'Configurar Relat'#243'rio'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 6
        Width = 161
      end
    end
    object GroupBox6: TGroupBox
      Left = 468
      Top = 36
      Width = 275
      Height = 71
      Caption = 'Atendimentos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object rdFinalizado: TRadioButton
        Left = 98
        Top = 30
        Width = 79
        Height = 22
        Caption = 'Fechados'
        TabOrder = 1
      end
      object rdAberto: TRadioButton
        Left = 9
        Top = 30
        Width = 73
        Height = 22
        Caption = 'Abertos'
        TabOrder = 0
      end
      object rdTecAmbos: TRadioButton
        Left = 204
        Top = 30
        Width = 53
        Height = 22
        Caption = 'Ambos'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
  end
  object dsMecanico: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMecanico
    Left = 224
    Top = 223
  end
  object dsStatus: TDataSource
    DataSet = DmServicos.SelStatus
    Left = 234
    Top = 181
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
      'select'
      '           ofc.INFORMACOES, '
      '           ofc.codigo ofc_codigo,'
      
        '            coalesce(cli.codigo,'#39#39')||'#39'-'#39'||coalesce(cli.nome_raza' +
        'o,'#39#39') cli_nome_razao,'
      '            ctt.nome_razao contato,'
      '            st.nome st_nome,'
      '            ofc.custo_os ,'
      '            ofc.horas_trabalhadas,'
      '            mec.codigo cod_tecnico,'
      '            mec.nome tecnico'
      ''
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj)')
    Left = 356
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qAtendimento_SintOFC_CODIGO: TIntegerField
      FieldName = 'OFC_CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
    end
    object qAtendimento_SintCLI_NOME_RAZAO: TIBStringField
      FieldName = 'CLI_NOME_RAZAO'
      ProviderFlags = []
      Size = 62
    end
    object qAtendimento_SintCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qAtendimento_SintST_NOME: TIBStringField
      FieldName = 'ST_NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object qAtendimento_SintCUSTO_OS: TFloatField
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
    end
    object qAtendimento_SintHORAS_TRABALHADAS: TFloatField
      FieldName = 'HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object qAtendimento_SintCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
    end
    object qAtendimento_SintTECNICO: TIBStringField
      FieldName = 'TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object qAtendimento_SintINFORMACOES: TBlobField
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  object rptAtendimento: TppReport
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
    DataPipelineName = 'ppAtendimento'
    object ppTitleBand12: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 21960
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 21960
        mmLeft = 0
        mmTop = 0
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
        Caption = 'Relat'#243'rio Resumido Atendimentos'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 1852
        mmTop = 8731
        mmWidth = 64516
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
        mmHeight = 5821
        mmLeft = 1588
        mmTop = 1323
        mmWidth = 26723
        BandType = 1
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
        mmLeft = 2117
        mmTop = 14552
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
        mmHeight = 3440
        mmLeft = 256382
        mmTop = 2117
        mmWidth = 26194
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
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
        mmTop = 12700
        mmWidth = 284163
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
        mmHeight = 3439
        mmLeft = 18256
        mmTop = 8996
        mmWidth = 12435
        BandType = 0
      end
      object ppLabel180: TppLabel
        UserName = 'Label180'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Custo (R$)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 160602
        mmTop = 8996
        mmWidth = 20902
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
        Caption = 'Codigo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 0
        mmTop = 8996
        mmWidth = 9779
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
        Caption = 'Contato'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 80433
        mmTop = 8996
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Status'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 136790
        mmTop = 8996
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label1801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Descri'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 184680
        mmTop = 8996
        mmWidth = 13494
        BandType = 0
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 5292
      mmPrintPosition = 0
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
        mmLeft = 18256
        mmTop = 794
        mmWidth = 61119
        BandType = 4
      end
      object ppDBText247: TppDBText
        UserName = 'DBText247'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CUSTO_OS'
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
        mmLeft = 180955
        mmTop = 794
        mmWidth = 550
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
        mmLeft = 0
        mmTop = 794
        mmWidth = 550
        BandType = 4
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INFORMACOES'
        DataPipeline = ppAtendimento
        Stretch = True
        DataPipelineName = 'ppAtendimento'
        mmHeight = 3704
        mmLeft = 184680
        mmTop = 0
        mmWidth = 100277
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppDBText3: TppDBText
        UserName = 'DBText4'
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
        mmLeft = 80433
        mmTop = 794
        mmWidth = 52917
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText2'
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
        mmLeft = 136790
        mmTop = 794
        mmWidth = 23019
        BandType = 4
      end
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
      object ppDBText14: TppDBText
        UserName = 'DBText3'
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
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 146050
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 50536
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
        DataField = 'CUSTO_OS'
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
        mmLeft = 163777
        mmTop = 1588
        mmWidth = 17198
        BandType = 7
      end
      object ResumoGeral: TppSubReport
        UserName = 'ResumoGeral'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppDBResumoGeral'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 13229
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppDBResumoGeral
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
          DataPipelineName = 'ppDBResumoGeral'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 8202
            mmPrintPosition = 0
            object ppLabel3: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Resumo Geral'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 1588
              mmTop = 3440
              mmWidth = 23834
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
            mmHeight = 5292
            mmPrintPosition = 0
            object ppDBText2: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCRICAO'
              DataPipeline = ppDBResumoGeral
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppDBResumoGeral'
              mmHeight = 3704
              mmLeft = 6350
              mmTop = 1588
              mmWidth = 23019
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = ppDBResumoGeral
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppDBResumoGeral'
              mmHeight = 3683
              mmLeft = 30956
              mmTop = 1588
              mmWidth = 36777
              BandType = 4
            end
          end
        end
      end
      object SubCustoTecnico: TppSubReport
        UserName = 'SubCustoTecnico'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ResumoGeral
        TraverseAllData = False
        DataPipelineName = 'ppCustoTecnico'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 21431
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppCustoTecnico
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
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppCustoTecnico'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppLabel4: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Resumo por T'#233'cnco'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 33867
              BandType = 1
            end
          end
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = ppHeaderBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel5: TppLabel
              UserName = 'Label5'
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
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 4498
              mmTop = 1588
              mmWidth = 12171
              BandType = 0
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hrs. Trabalhadas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 96838
              mmTop = 1588
              mmWidth = 25866
              BandType = 0
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Custo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 142854
              mmTop = 1588
              mmWidth = 9017
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
              mmHeight = 2117
              mmLeft = 3969
              mmTop = 5556
              mmWidth = 147902
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
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText6: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoTecnico
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTecnico'
              mmHeight = 3598
              mmLeft = 124619
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORAS'
              DataPipeline = ppCustoTecnico
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTecnico'
              mmHeight = 3598
              mmLeft = 95515
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = ppCustoTecnico
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCustoTecnico'
              mmHeight = 3598
              mmLeft = 4498
              mmTop = 0
              mmWidth = 85990
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 95779
              mmTop = 2117
              mmWidth = 56092
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoTecnico
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTecnico'
              mmHeight = 3704
              mmLeft = 128059
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORAS'
              DataPipeline = ppCustoTecnico
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTecnico'
              mmHeight = 3704
              mmLeft = 98954
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
          end
        end
      end
      object SubCustoCliente: TppSubReport
        UserName = 'SubCustoCliente'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubCustoTecnico
        TraverseAllData = False
        DataPipelineName = 'ppCustoCliente'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 30163
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppCustoCliente
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
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppCustoCliente'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Resumo por Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 33232
              BandType = 1
            end
          end
          object ppHeaderBand3: TppHeaderBand
            BeforePrint = ppHeaderBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel9: TppLabel
              UserName = 'Label5'
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
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 4498
              mmTop = 1588
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hrs. Trabalhadas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 96838
              mmTop = 1588
              mmWidth = 25866
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Custo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 142854
              mmTop = 1588
              mmWidth = 9017
              BandType = 0
            end
            object ppLine3: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 3969
              mmTop = 5556
              mmWidth = 147902
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
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText8: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoCliente
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoCliente'
              mmHeight = 3598
              mmLeft = 124619
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORAS'
              DataPipeline = ppCustoCliente
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoCliente'
              mmHeight = 3598
              mmLeft = 95515
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_RAZAO'
              DataPipeline = ppCustoCliente
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCustoCliente'
              mmHeight = 3598
              mmLeft = 4498
              mmTop = 0
              mmWidth = 85990
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine4: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 95779
              mmTop = 2117
              mmWidth = 56092
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoCliente
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoCliente'
              mmHeight = 3704
              mmLeft = 128059
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORAS'
              DataPipeline = ppCustoCliente
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoCliente'
              mmHeight = 3704
              mmLeft = 98954
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
          end
        end
      end
      object SubTPA: TppSubReport
        UserName = 'SubTPA'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubCustoCliente
        TraverseAllData = False
        DataPipelineName = 'ppCustoTPA'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 37571
        mmWidth = 284300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = ppCustoTPA
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
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppCustoTPA'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 10848
            mmPrintPosition = 0
            object ppLabel12: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Resumo por Tipo de Atendimento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold, fsUnderline]
              Transparent = True
              mmHeight = 4191
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 56473
              BandType = 1
            end
          end
          object ppHeaderBand4: TppHeaderBand
            BeforePrint = ppHeaderBand3BeforePrint
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppLabel13: TppLabel
              UserName = 'Label5'
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
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 4498
              mmTop = 1588
              mmWidth = 10626
              BandType = 0
            end
            object ppLabel14: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hrs. Trabalhadas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 96838
              mmTop = 1588
              mmWidth = 25866
              BandType = 0
            end
            object ppLabel15: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Custo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3810
              mmLeft = 142854
              mmTop = 1588
              mmWidth = 9017
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
              mmHeight = 2117
              mmLeft = 3969
              mmTop = 5556
              mmWidth = 147902
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
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoTPA
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTPA'
              mmHeight = 3598
              mmLeft = 124619
              mmTop = 0
              mmWidth = 27252
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
              DataField = 'HORAS'
              DataPipeline = ppCustoTPA
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTPA'
              mmHeight = 3598
              mmLeft = 95515
              mmTop = 0
              mmWidth = 27252
              BandType = 4
            end
            object ppDBText13: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = ppCustoTPA
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppCustoTPA'
              mmHeight = 3598
              mmLeft = 4498
              mmTop = 0
              mmWidth = 85990
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 2117
              mmLeft = 95779
              mmTop = 2117
              mmWidth = 56092
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = ppCustoTPA
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTPA'
              mmHeight = 3704
              mmLeft = 128059
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HORAS'
              DataPipeline = ppCustoTPA
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppCustoTPA'
              mmHeight = 3704
              mmLeft = 98954
              mmTop = 2910
              mmWidth = 23813
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'COD_TECNICO'
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
        mmHeight = 7938
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
          mmHeight = 4149
          mmLeft = 6879
          mmTop = 2117
          mmWidth = 15663
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
          mmTop = 7144
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
          DataField = 'TECNICO'
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
          mmLeft = 22754
          mmTop = 2381
          mmWidth = 889
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 5292
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
          ResetGroup = ppGroup1
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
          DataField = 'CUSTO_OS'
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
          mmLeft = 164042
          mmTop = 794
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
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
      FieldAlias = 'CLI_NOME_RAZAO'
      FieldName = 'CLI_NOME_RAZAO'
      FieldLength = 62
      DisplayWidth = 62
      Position = 1
    end
    object ppAtendimentoppField3: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppAtendimentoppField4: TppField
      FieldAlias = 'ST_NOME'
      FieldName = 'ST_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppAtendimentoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CUSTO_OS'
      FieldName = 'CUSTO_OS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppAtendimentoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'HORAS_TRABALHADAS'
      FieldName = 'HORAS_TRABALHADAS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object ppAtendimentoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_TECNICO'
      FieldName = 'COD_TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppAtendimentoppField8: TppField
      FieldAlias = 'TECNICO'
      FieldName = 'TECNICO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAtendimentoppField9: TppField
      FieldAlias = 'INFORMACOES'
      FieldName = 'INFORMACOES'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object stgFRel_Rechamados: TcxPropertiesStore
    Components = <>
    StorageName = 'stgFRel_Rechamados'
    Left = 144
    Top = 215
  end
  object dsSelServico: TDataSource
    DataSet = DmServicos.TipoAtendimento
    Left = 490
    Top = 221
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPessoasFJ
    Left = 233
    Top = 146
  end
  object dsContato: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPessoasFJ2
    Left = 489
    Top = 146
  end
  object dsMotivo: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMotivo
    Left = 490
    Top = 184
  end
  object ppDBResumoGeral: TppDBPipeline
    DataSource = DsResumoGeral
    UserName = 'ppDBResumoGeral'
    Left = 502
    Top = 3
  end
  object DsResumoGeral: TDataSource
    DataSet = QryResumoGeral
    Left = 533
    Top = 3
  end
  object QryResumoGeral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select  sum(ofc.custo_os) valor, '#39' Custo Total: '#39' Descricao'
      ''
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj)'
      'union'
      'select  count(*) Valor, '#39' OS Abertas: '#39' Descricao'
      ''
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj) and ofc.data_fechamento is not null'
      'union'
      'select  count(*) Valor, '#39' OS Fechadas: '#39' Descricao'
      ''
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj) and ofc.data_fechamento is null')
    Left = 564
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryResumoGeralVALOR: TFloatField
      FieldName = 'VALOR'
      ProviderFlags = []
    end
    object QryResumoGeralDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      ProviderFlags = []
      FixedChar = True
      Size = 14
    end
  end
  object ppCustoTecnico: TppDBPipeline
    DataSource = dsCustoTecnico
    UserName = 'ppCustoTecnico'
    Left = 422
    Top = 3
    object ppCustoTecnicoppField1: TppField
      FieldAlias = 'CUSTO'
      FieldName = 'CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppCustoTecnicoppField2: TppField
      FieldAlias = 'HORAS'
      FieldName = 'HORAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppCustoTecnicoppField3: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppCustoTecnicoppField4: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
  end
  object dsCustoTecnico: TDataSource
    DataSet = QryCustoTecnico
    Left = 453
    Top = 3
  end
  object QryCustoTecnico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) hor' +
        'as, mec.codigo, mec.nome'
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj)'
      '')
    Left = 484
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryCustoTecnicoCUSTO: TFloatField
      FieldName = 'CUSTO'
      ProviderFlags = []
    end
    object QryCustoTecnicoHORAS: TFloatField
      FieldName = 'HORAS'
      ProviderFlags = []
    end
    object QryCustoTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCustoTecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
  end
  object QryCustoCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) hor' +
        'as, cli.codigo, cli.nome_razao'
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj)'
      'group by cli.codigo, cli.nome_razao')
    Left = 668
    Top = 123
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryCustoClienteCUSTO: TFloatField
      FieldName = 'CUSTO'
      ProviderFlags = []
    end
    object QryCustoClienteHORAS: TFloatField
      FieldName = 'HORAS'
      ProviderFlags = []
    end
    object QryCustoClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCustoClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object dsCustoCliente: TDataSource
    DataSet = QryCustoCliente
    Left = 637
    Top = 123
  end
  object ppCustoCliente: TppDBPipeline
    DataSource = dsCustoCliente
    UserName = 'ppCustoCliente'
    Left = 606
    Top = 123
  end
  object QryCustoTPA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select  sum(ofc.custo_os) custo, sum (ofc.horas_trabalhadas) hor' +
        'as, tpa.codigo, tpa.nome'
      '            from ofc_ordem_servico ofc'
      
        '            left join ofc_status             st on (st.codigo = ' +
        'ofc.cod_status and st.cnpj=ofc.cnpj)'
      
        '            left join ofc_mecanicos          mec on (mec.codigo ' +
        '= ofc.mecanico and mec.cnpj = ofc.cnpj)'
      
        '            left join ofc_defeito            def on (def.codigo ' +
        '= ofc.defeito_reclamado and def.cnpj = ofc.cnpj)'
      
        '            left join ofc_motivo_chamado     mtc on (mtc.codigo ' +
        '= ofc.id_motivo_chamado and mtc.cnpj = ofc.cnpj)'
      
        '            left join ofc_tipo_atendimento   tpa on (tpa.codigo ' +
        '= ofc.id_tipo_atendimento and tpa.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         cli on (cli.codigo ' +
        '= ofc.pessoa_fj and cli.cnpj = ofc.cnpj)'
      
        '            left join glo_pessoas_fj         ctt on (ctt.codigo ' +
        '= ofc.cod_contato and ctt.cnpj = ofc.cnpj)'
      'where (ofc.cnpj = :cnpj)'
      'group by tpa.codigo, tpa.nome')
    Left = 676
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryCustoTPACUSTO: TFloatField
      FieldName = 'CUSTO'
      ProviderFlags = []
    end
    object QryCustoTPAHORAS: TFloatField
      FieldName = 'HORAS'
      ProviderFlags = []
    end
    object QryCustoTPACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryCustoTPANOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
  end
  object dsCustoTPA: TDataSource
    DataSet = QryCustoTPA
    Left = 645
    Top = 3
  end
  object ppCustoTPA: TppDBPipeline
    DataSource = dsCustoTPA
    UserName = 'ppCustoTPA'
    Left = 614
    Top = 3
  end
  object dsLayout: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.CONFIG_REL_GRAFICO
    Left = 323
    Top = 33
  end
  object ppLayout: TppDBPipeline
    DataSource = dsLayout
    UserName = 'SerieNF1'
    Left = 292
    Top = 32
    object ppLayoutppField1: TppField
      FieldAlias = 'ID'
      FieldName = 'ID'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppLayoutppField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
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
    Left = 302
    Top = 113
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 271
    Top = 113
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
