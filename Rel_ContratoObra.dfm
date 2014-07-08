object FRel_ContratoObra: TFRel_ContratoObra
  Left = 287
  Top = 133
  BorderStyle = bsDialog
  Caption = 'Resumo de Contrato'
  ClientHeight = 330
  ClientWidth = 396
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 298
    Width = 396
    Height = 32
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    DesignSize = (
      396
      32)
    object BtnOk: TcxButton
      Left = 227
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
      Left = 306
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
    Width = 396
    Height = 298
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 1
    object b2: TBevel
      Left = 7
      Top = 22
      Width = 378
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 2
      Caption = 'Resumo de Contrato'
      ParentFont = False
    end
    object GroupBox1: TGroupBox
      Left = 8
      Top = 33
      Width = 375
      Height = 181
      Caption = ' [ Geral ] '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label11: TcxLabel
        Left = 11
        Top = 59
        Caption = 'Contrato'
        ParentFont = False
      end
      object Label9: TcxLabel
        Left = 11
        Top = 17
        Caption = 'Cliente'
        ParentFont = False
      end
      object cmbContrato: TdxLookupEdit
        Left = 11
        Top = 74
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
        ListFieldName = 'DESCRICAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsSelContrato
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
        ListFieldName = 'NOME_RAZAO;CPF_CGC'
        CanDeleteText = True
        KeyFieldName = 'CPF_CGC'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
      object GroupBox6: TGroupBox
        Left = 12
        Top = 105
        Width = 349
        Height = 39
        Caption = '  Status Contrato  '
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 2
        object rdInativo: TRadioButton
          Left = 138
          Top = 14
          Width = 79
          Height = 22
          Caption = 'Inativo'
          TabOrder = 1
        end
        object rdAtivo: TRadioButton
          Left = 9
          Top = 14
          Width = 73
          Height = 22
          Caption = 'Ativo'
          TabOrder = 0
        end
        object rdAmbos: TRadioButton
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
    end
    object gbData: TGroupBox
      Left = 9
      Top = 220
      Width = 216
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
        Left = 113
        Top = 18
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 14
        Top = 18
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 97
        Top = 24
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
        Left = 201
        Top = 24
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DataInicial: TcxDateEdit
        Left = 15
        Top = 37
        EditValue = 36892.3832986111d
        ParentFont = False
        TabOrder = 0
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 111
        Top = 38
        EditValue = 54789.3833101852d
        ParentFont = False
        TabOrder = 1
        OnEnter = cmbClienteEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbClienteKeyDown
        Width = 97
      end
    end
    object ckConfigurar: TcxCheckBox
      Left = 229
      Top = 271
      Caption = 'Configurar Relat'#243'rio'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 3
      Width = 119
    end
    object ckCons: TcxCheckBox
      Left = 229
      Top = 229
      Caption = 'Exibir Mov. Consolidado'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 4
      Width = 140
    end
    object ckProv: TcxCheckBox
      Left = 229
      Top = 250
      Caption = 'Exibir Mov. Provisionado'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 5
      Width = 140
    end
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = SelCliente
    Left = 169
    Top = 66
  end
  object dsContrato: TDataSource
    DataSet = qryContratosRel
    Left = 277
    Top = 3
  end
  object qryContratosRel: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.*, psa.nome_razao,'
      '( /*consolidado apenas*/'
      
        '  coalesce((select sum(coalesce(vlr_baixa,0)) from pcd_ctr_rel_e' +
        'xt_financeiro_r(ct.codigo)'
      '            where mov = '#39'C'#39'),0)'
      '  +'
      
        '  coalesce((select sum(coalesce(PRD_TOTAL_LIQ,0)) from PCD_CTR_R' +
        'EL_FATURAMENTOS(ct.codigo)),0)'
      ') saldo_contrato,'
      '('
      '  ct.valor'
      '  - /*deduzindo o recebido*/'
      
        '  coalesce((select sum(coalesce(vlr_baixa,0)) from pcd_ctr_rel_e' +
        'xt_financeiro_r(ct.codigo)'
      '            where vlr_baixa > 0 and mov = '#39'C'#39'),0)'
      
        '  +                          /*deduzindo o contas a pagar provis' +
        'ionado*/'
      
        '  coalesce((select sum(coalesce(vlr_baixa,0)) from pcd_ctr_rel_e' +
        'xt_financeiro_r(ct.codigo)'
      '            where vlr_baixa < 0 and mov = '#39'P'#39'),0)'
      '  +                          /*deduzindo o estoque*/'
      
        '  coalesce((select sum(coalesce(PRD_TOTAL_LIQ,0)) from PCD_CTR_R' +
        'EL_FATURAMENTOS(ct.codigo)),0)'
      ''
      ') saldo_previsto'
      ''
      ' from ctr_contrato ct'
      'inner join glo_pessoas_fj psa on (psa.cpf_cgc = ct.pessoa_fj)')
    Left = 308
    Top = 3
    object qryContratosRelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosRelDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
    object qryContratosRelVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"CTR_CONTRATO"."VALOR"'
    end
    object qryContratosRelDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"CTR_CONTRATO"."DATA"'
    end
    object qryContratosRelDATA_INICIO: TDateTimeField
      FieldName = 'DATA_INICIO'
      Origin = '"CTR_CONTRATO"."DATA_INICIO"'
    end
    object qryContratosRelDATA_VENCTO: TDateTimeField
      FieldName = 'DATA_VENCTO'
      Origin = '"CTR_CONTRATO"."DATA_VENCTO"'
    end
    object qryContratosRelPESSOA_FJ: TIBStringField
      FieldName = 'PESSOA_FJ'
      Origin = '"CTR_CONTRATO"."PESSOA_FJ"'
      FixedChar = True
      Size = 14
    end
    object qryContratosRelOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"CTR_CONTRATO"."OBS"'
      Size = 180
    end
    object qryContratosRelATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"CTR_CONTRATO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object qryContratosRelNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryContratosRelSALDO_CONTRATO: TIBBCDField
      FieldName = 'SALDO_CONTRATO'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
    object qryContratosRelSALDO_PREVISTO: TFloatField
      FieldName = 'SALDO_PREVISTO'
      ProviderFlags = []
    end
    object qryContratosRelVINCULO_CONTRATO: TIntegerField
      FieldName = 'VINCULO_CONTRATO'
      Origin = '"CTR_CONTRATO"."VINCULO_CONTRATO"'
    end
    object qryContratosRelPCT_INSS: TFloatField
      FieldName = 'PCT_INSS'
      Origin = '"CTR_CONTRATO"."PCT_INSS"'
    end
    object qryContratosRelPCT_IRPJ: TFloatField
      FieldName = 'PCT_IRPJ'
      Origin = '"CTR_CONTRATO"."PCT_IRPJ"'
    end
    object qryContratosRelPCT_ISS: TFloatField
      FieldName = 'PCT_ISS'
      Origin = '"CTR_CONTRATO"."PCT_ISS"'
    end
    object qryContratosRelPCT_PIS: TFloatField
      FieldName = 'PCT_PIS'
      Origin = '"CTR_CONTRATO"."PCT_PIS"'
    end
    object qryContratosRelPCT_CSLL: TFloatField
      FieldName = 'PCT_CSLL'
      Origin = '"CTR_CONTRATO"."PCT_CSLL"'
    end
    object qryContratosRelPCT_COFINS: TFloatField
      FieldName = 'PCT_COFINS'
      Origin = '"CTR_CONTRATO"."PCT_COFINS"'
    end
    object qryContratosRelBASE_INSS_MUN: TFloatField
      FieldName = 'BASE_INSS_MUN'
      Origin = '"CTR_CONTRATO"."BASE_INSS_MUN"'
    end
    object qryContratosRelBASE_INSS_NAC: TFloatField
      FieldName = 'BASE_INSS_NAC'
      Origin = '"CTR_CONTRATO"."BASE_INSS_NAC"'
    end
    object qryContratosRelBASE_ISS_MUN: TFloatField
      FieldName = 'BASE_ISS_MUN'
      Origin = '"CTR_CONTRATO"."BASE_ISS_MUN"'
    end
    object qryContratosRelBASE_ISS_NAC: TFloatField
      FieldName = 'BASE_ISS_NAC'
      Origin = '"CTR_CONTRATO"."BASE_ISS_NAC"'
    end
  end
  object rptContratoObra: TppReport
    AutoStop = False
    DataPipeline = ppContratos
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
    Template.FileName = 'C:\Users\Fabiano\Desktop\Config.rtm'
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
    Left = 191
    Top = 3
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppContratos'
    object ppTitleBand12: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 43921
      mmPrintPosition = 0
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5027
        mmLeft = 1323
        mmTop = 38365
        mmWidth = 283105
        BandType = 1
      end
      object ppShape6: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 22490
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
        Caption = 'Resumo de Contrato'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 2381
        mmTop = 11377
        mmWidth = 39243
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
        mmWidth = 193940
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
        mmLeft = 256911
        mmTop = 3969
        mmWidth = 26194
        BandType = 1
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
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
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 16140
        mmTop = 39158
        mmWidth = 15240
        BandType = 1
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Lancto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 110331
        mmTop = 39158
        mmWidth = 15610
        BandType = 1
      end
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Inicio'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 134409
        mmTop = 39158
        mmWidth = 13494
        BandType = 1
      end
      object ppLabel21: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dt. Vencto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 155840
        mmTop = 39158
        mmWidth = 15610
        BandType = 1
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor Total'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3810
        mmLeft = 179388
        mmTop = 39158
        mmWidth = 16669
        BandType = 1
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 39158
        mmWidth = 10848
        BandType = 1
      end
      object ppShape3: TppShape
        UserName = 'Shape2'
        Brush.Color = clGray
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 7408
        mmLeft = 1323
        mmTop = 31221
        mmWidth = 40746
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CONTRATO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 2116
        mmTop = 33338
        mmWidth = 17611
        BandType = 1
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
      mmHeight = 43127
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape9'
        Brush.Color = clBlue
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 5821
        mmLeft = 1323
        mmTop = 0
        mmWidth = 283105
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO'
        DataPipeline = ppContratos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 2117
        mmTop = 794
        mmWidth = 889
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESCRICAO'
        DataPipeline = ppContratos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 16140
        mmTop = 794
        mmWidth = 889
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA'
        DataPipeline = ppContratos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 110596
        mmTop = 794
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_INICIO'
        DataPipeline = ppContratos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 134673
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_INICIO'
        DataPipeline = ppContratos
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 155840
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR'
        DataPipeline = ppContratos
        DisplayFormat = '$#,0.00;-$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppContratos'
        mmHeight = 3810
        mmLeft = 175948
        mmTop = 794
        mmWidth = 20108
        BandType = 4
      end
      object SubFinanceiro: TppSubReport
        UserName = 'SubFinanceiro'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        TraverseAllData = False
        DataPipelineName = 'dbExtratoFinanceiro'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbExtratoFinanceiro
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
          DataPipelineName = 'dbExtratoFinanceiro'
          object ppHeaderBand1: TppHeaderBand
            BeforePrint = ppHeaderBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 16140
            mmPrintPosition = 0
            object ppShape8: TppShape
              UserName = 'Shape8'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 5292
              mmLeft = 2381
              mmTop = 10848
              mmWidth = 282046
              BandType = 0
            end
            object ppShape2: TppShape
              UserName = 'Shape2'
              Brush.Color = clGray
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 5821
              mmLeft = 1323
              mmTop = 2381
              mmWidth = 36513
              BandType = 0
            end
            object ppLabel1: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Pagto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 16140
              mmTop = 11642
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel2: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D/C'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taCentered
              Transparent = True
              mmHeight = 3704
              mmLeft = 33867
              mmTop = 11642
              mmWidth = 5027
              BandType = 0
            end
            object ppLabel3: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 44186
              mmTop = 11642
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel4: TppLabel
              UserName = 'Label102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 62177
              mmTop = 11642
              mmWidth = 16404
              BandType = 0
            end
            object ppLabel5: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'EXTRATO FINANCEIRO'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 2117
              mmTop = 3440
              mmWidth = 35391
              BandType = 0
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 3175
              mmTop = 11642
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel9: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Lancto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 95250
              mmTop = 11642
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Parcela'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 111919
              mmTop = 11642
              mmWidth = 11906
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pessoa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 124884
              mmTop = 11642
              mmWidth = 16140
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
              DataField = 'DT_PAGTO'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2879
              mmLeft = 16140
              mmTop = 0
              mmWidth = 12192
              BandType = 4
            end
            object dbValorExtrato: TppDBText
              OnPrint = ppDBText4Print
              UserName = 'dbValorExtrato'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = dbExtratoFinanceiro
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2910
              mmLeft = 44186
              mmTop = 0
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText257'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2910
              mmLeft = 33867
              mmTop = 0
              mmWidth = 5027
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'CODIGO'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2910
              mmLeft = 3175
              mmTop = 0
              mmWidth = 9790
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO_BX'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2879
              mmLeft = 62177
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2879
              mmLeft = 95250
              mmTop = 0
              mmWidth = 12192
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2879
              mmLeft = 111919
              mmTop = 0
              mmWidth = 4741
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PSA_NOME'
              DataPipeline = dbExtratoFinanceiro
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 2879
              mmLeft = 124884
              mmTop = 0
              mmWidth = 30776
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
              mmHeight = 265
              mmLeft = 1323
              mmTop = 529
              mmWidth = 283105
              BandType = 7
            end
            object ppShape13: TppShape
              UserName = 'Shape13'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 6085
              mmLeft = 1323
              mmTop = 3704
              mmWidth = 54504
              BandType = 7
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Extrato: '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1588
              mmTop = 4763
              mmWidth = 21294
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              OnPrint = ppDBCalc1Print
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'VLR_BAIXA'
              DataPipeline = dbExtratoFinanceiro
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbExtratoFinanceiro'
              mmHeight = 3440
              mmLeft = 27781
              mmTop = 4763
              mmWidth = 17198
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'CNPJ'
            DataPipeline = dbExtratoFinanceiro
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbExtratoFinanceiro'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLabel6: TppLabel
                UserName = 'Label6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Empresa:  '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3810
                mmLeft = 2380
                mmTop = 1058
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
              object ppLine3: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 2380
                mmTop = 5292
                mmWidth = 80169
                BandType = 3
                GroupNo = 0
              end
              object ppDBText3: TppDBText
                UserName = 'DBText8'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'EMPRESA'
                DataPipeline = dbExtratoFinanceiro
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbExtratoFinanceiro'
                mmHeight = 3598
                mmLeft = 18786
                mmTop = 1058
                mmWidth = 28533
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'CENTRO_CUSTO'
            DataPipeline = dbExtratoFinanceiro
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group5'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbExtratoFinanceiro'
            NewFile = False
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 4763
              mmPrintPosition = 0
              object ppLabel15: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'C. Custo/Receita:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3810
                mmLeft = 10054
                mmTop = 529
                mmWidth = 26331
                BandType = 3
                GroupNo = 1
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 10319
                mmTop = 4233
                mmWidth = 145257
                BandType = 3
                GroupNo = 1
              end
              object ppDBText1: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CENTRO_CUSTO'
                DataPipeline = dbExtratoFinanceiro
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbExtratoFinanceiro'
                mmHeight = 3598
                mmLeft = 37571
                mmTop = 529
                mmWidth = 25231
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object SubFaturamentos: TppSubReport
        UserName = 'SubFaturamentos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ParentPrinterSetup = False
        ShiftRelativeTo = SubFinanceiro
        TraverseAllData = False
        DataPipelineName = 'ppVendasAna'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14288
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppVendasAna
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
          DataPipelineName = 'ppVendasAna'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = ppHeaderBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 10319
            mmPrintPosition = 0
            object ppShape4: TppShape
              UserName = 'Shape4'
              Brush.Color = clGray
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 5821
              mmLeft = 1323
              mmTop = 2381
              mmWidth = 36513
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Caption = 'FATURAMENTOS'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 2117
              mmTop = 3440
              mmWidth = 26077
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
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText75: TppDBText
              UserName = 'DBText75'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_SUBUNIDADE'
              DataPipeline = ppVendasAna
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 105813
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText76: TppDBText
              UserName = 'DBText76'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_QUANTIDADE'
              DataPipeline = ppVendasAna
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 126715
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText77: TppDBText
              UserName = 'DBText77'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_PRC_UNITARIO'
              DataPipeline = ppVendasAna
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 142854
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText78: TppDBText
              UserName = 'DBText78'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_DESCONTO'
              DataPipeline = ppVendasAna
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 157407
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText80: TppDBText
              UserName = 'DBText80'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_UNIDADE'
              DataPipeline = ppVendasAna
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 93642
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText81: TppDBText
              UserName = 'DBText81'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_NOME'
              DataPipeline = ppVendasAna
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 21167
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
            object ppDBText79: TppDBText
              UserName = 'DBText402'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRD_TOTAL'
              DataPipeline = ppVendasAna
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 2879
              mmLeft = 174848
              mmTop = 0
              mmWidth = 550
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 11642
            mmPrintPosition = 0
            object ppShape5: TppShape
              UserName = 'Shape5'
              Gradient.EndColor = clWhite
              Gradient.StartColor = clWhite
              Gradient.Style = gsNone
              mmHeight = 6085
              mmLeft = 1323
              mmTop = 3704
              mmWidth = 54504
              BandType = 7
            end
            object ppLabel27: TppLabel
              UserName = 'Label27'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Faturamentos: '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 1588
              mmTop = 4763
              mmWidth = 31411
              BandType = 7
            end
            object SaldoFaturamento: TppDBCalc
              OnPrint = ppDBCalc1Print
              UserName = 'SaldoFaturamento'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppVendasAna
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppVendasAna'
              mmHeight = 3387
              mmLeft = 34396
              mmTop = 5027
              mmWidth = 19685
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'CNPJ'
            DataPipeline = ppVendasAna
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group3'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppVendasAna'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              BeforePrint = ppHeaderBand1BeforePrint
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLabel16: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Empresa:  '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 2381
                mmTop = 794
                mmWidth = 16140
                BandType = 3
                GroupNo = 0
              end
              object ppDBText14: TppDBText
                UserName = 'DBText14'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'EMPRESA'
                DataPipeline = ppVendasAna
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3598
                mmLeft = 18785
                mmTop = 794
                mmWidth = 720
                BandType = 3
                GroupNo = 0
              end
              object ppLine4: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 2910
                mmTop = 5292
                mmWidth = 193146
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'CODIGO'
            DataPipeline = ppVendasAna
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppVendasAna'
            NewFile = False
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 13758
              mmPrintPosition = 0
              object ppShape12: TppShape
                UserName = 'Shape1'
                Gradient.EndColor = clWhite
                Gradient.StartColor = clWhite
                Gradient.Style = gsNone
                mmHeight = 4498
                mmLeft = 7673
                mmTop = 4498
                mmWidth = 188913
                BandType = 3
                GroupNo = 1
              end
              object ppShape7: TppShape
                UserName = 'Shape7'
                Gradient.EndColor = clWhite
                Gradient.StartColor = clWhite
                Gradient.Style = gsNone
                mmHeight = 5027
                mmLeft = 21167
                mmTop = 8731
                mmWidth = 156369
                BandType = 3
                GroupNo = 1
              end
              object ppShape11: TppShape
                UserName = 'Shape11'
                Gradient.EndColor = clWhite
                Gradient.StartColor = clWhite
                Gradient.Style = gsNone
                mmHeight = 4498
                mmLeft = 7673
                mmTop = 265
                mmWidth = 188913
                BandType = 3
                GroupNo = 1
              end
              object ppDBText65: TppDBText
                UserName = 'DBText65'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NATUREZA'
                DataPipeline = ppVendasAna
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 83608
                mmTop = 5027
                mmWidth = 9790
                BandType = 3
                GroupNo = 1
              end
              object ppDBText66: TppDBText
                UserName = 'DBText101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME_CONSUMIDOR'
                DataPipeline = ppVendasAna
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 34925
                mmTop = 5027
                mmWidth = 46831
                BandType = 3
                GroupNo = 1
              end
              object ppDBText68: TppDBText
                UserName = 'DBText68'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CODIGO'
                DataPipeline = ppVendasAna
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 7938
                mmTop = 5027
                mmWidth = 11377
                BandType = 3
                GroupNo = 1
              end
              object ppDBText69: TppDBText
                UserName = 'DBText69'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DOCTO'
                DataPipeline = ppVendasAna
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 96044
                mmTop = 5027
                mmWidth = 14023
                BandType = 3
                GroupNo = 1
              end
              object ppDBText70: TppDBText
                UserName = 'DBText70'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasAna
                DisplayFormat = '$#,0.00;-$#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 127159
                mmTop = 5027
                mmWidth = 635
                BandType = 3
                GroupNo = 1
              end
              object ppDBText71: TppDBText
                UserName = 'DBText71'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESCONTO'
                DataPipeline = ppVendasAna
                DisplayFormat = '$#,0.00;-$#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 141447
                mmTop = 5027
                mmWidth = 635
                BandType = 3
                GroupNo = 1
              end
              object ppDBText72: TppDBText
                OnPrint = ppDBText4Print
                UserName = 'DBText72'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasAna
                DisplayFormat = '$#,0.00;-$#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3387
                mmLeft = 158211
                mmTop = 5027
                mmWidth = 804
                BandType = 3
                GroupNo = 1
              end
              object ppLabel79: TppLabel
                UserName = 'Label79'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Produto'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 21431
                mmTop = 9525
                mmWidth = 12171
                BandType = 3
                GroupNo = 1
              end
              object ppLabel80: TppLabel
                UserName = 'Label80'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'UND'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 88371
                mmTop = 9525
                mmWidth = 6085
                BandType = 3
                GroupNo = 1
              end
              object ppLabel81: TppLabel
                UserName = 'Label81'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Sub'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 101336
                mmTop = 9525
                mmWidth = 5292
                BandType = 3
                GroupNo = 1
              end
              object ppLabel82: TppLabel
                UserName = 'Label82'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Qtde'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 121179
                mmTop = 9525
                mmWidth = 6350
                BandType = 3
                GroupNo = 1
              end
              object ppLabel83: TppLabel
                UserName = 'Label83'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vlr. Unit.'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 132027
                mmTop = 9525
                mmWidth = 11642
                BandType = 3
                GroupNo = 1
              end
              object ppLabel84: TppLabel
                UserName = 'Label84'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Descto'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 148696
                mmTop = 9525
                mmWidth = 9525
                BandType = 3
                GroupNo = 1
              end
              object ppLabel85: TppLabel
                UserName = 'Label85'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ttl. Item'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3440
                mmLeft = 165365
                mmTop = 9525
                mmWidth = 10848
                BandType = 3
                GroupNo = 1
              end
              object ppDBText73: TppDBText
                OnPrint = ppDBText4Print
                UserName = 'DBText73'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_PRAZO'
                DataPipeline = ppVendasAna
                DisplayFormat = '$#,0.00;-$#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 195051
                mmTop = 5027
                mmWidth = 635
                BandType = 3
                GroupNo = 1
              end
              object ppDBText74: TppDBText
                OnPrint = ppDBText4Print
                UserName = 'DBText74'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_VISTA'
                DataPipeline = ppVendasAna
                DisplayFormat = '$#,0.00;-$#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 176901
                mmTop = 5027
                mmWidth = 635
                BandType = 3
                GroupNo = 1
              end
              object ppLabel86: TppLabel
                UserName = 'Label86'
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
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 7938
                mmTop = 265
                mmWidth = 10848
                BandType = 3
                GroupNo = 1
              end
              object ppLabel87: TppLabel
                UserName = 'Label87'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Data'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 21167
                mmTop = 265
                mmWidth = 6879
                BandType = 3
                GroupNo = 1
              end
              object ppLabel88: TppLabel
                UserName = 'Label88'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'CFOP'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 84667
                mmTop = 265
                mmWidth = 8731
                BandType = 3
                GroupNo = 1
              end
              object ppLabel89: TppLabel
                UserName = 'Label89'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Docto'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 96044
                mmTop = 265
                mmWidth = 8996
                BandType = 3
                GroupNo = 1
              end
              object ppLabel90: TppLabel
                UserName = 'Label90'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 120386
                mmTop = 794
                mmWidth = 7408
                BandType = 3
                GroupNo = 1
              end
              object ppLabel91: TppLabel
                UserName = 'Label202'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Descto'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 131498
                mmTop = 265
                mmWidth = 10583
                BandType = 3
                GroupNo = 1
              end
              object ppLabel92: TppLabel
                UserName = 'Label92'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Liquido'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 147373
                mmTop = 794
                mmWidth = 11642
                BandType = 3
                GroupNo = 1
              end
              object ppLabel93: TppLabel
                UserName = 'Label93'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Prazo'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 187325
                mmTop = 265
                mmWidth = 8731
                BandType = 3
                GroupNo = 1
              end
              object ppLabel94: TppLabel
                UserName = 'Label94'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vista'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3704
                mmLeft = 169863
                mmTop = 265
                mmWidth = 7673
                BandType = 3
                GroupNo = 1
              end
              object ppLabel95: TppLabel
                UserName = 'Label95'
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
                mmHeight = 3704
                mmLeft = 34925
                mmTop = 265
                mmWidth = 10583
                BandType = 3
                GroupNo = 1
              end
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DATA_CX'
                DataPipeline = ppVendasAna
                DisplayFormat = 'dd/mm/yy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasAna'
                mmHeight = 3260
                mmLeft = 21167
                mmTop = 5027
                mmWidth = 11906
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppLabel13: TppLabel
                UserName = 'Label13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Caption = '.'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 2381
                mmLeft = 17992
                mmTop = 1323
                mmWidth = 3704
                BandType = 5
                GroupNo = 1
              end
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppRegion1: TppRegion
        UserName = 'Region1'
        Pen.Style = psClear
        ShiftRelativeTo = SubFaturamentos
        mmHeight = 18256
        mmLeft = 0
        mmTop = 21696
        mmWidth = 284428
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape14: TppShape
          UserName = 'Shape14'
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          mmHeight = 6085
          mmLeft = 1323
          mmTop = 23548
          mmWidth = 66146
          BandType = 4
        end
        object ppLabel18: TppLabel
          UserName = 'Label18'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Saldo Atual do Contrato: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3683
          mmLeft = 2381
          mmTop = 24871
          mmWidth = 38269
          BandType = 4
        end
        object ppDBText4: TppDBText
          OnPrint = ppDBText4Print
          UserName = 'DBText4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SALDO_CONTRATO'
          DataPipeline = ppContratos
          DisplayFormat = '$#,0.00;-$#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppContratos'
          mmHeight = 3683
          mmLeft = 40481
          mmTop = 24871
          mmWidth = 23019
          BandType = 4
        end
        object ppShape15: TppShape
          UserName = 'Shape15'
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          mmHeight = 6085
          mmLeft = 1323
          mmTop = 30956
          mmWidth = 66146
          BandType = 4
        end
        object ppLabel23: TppLabel
          UserName = 'Label23'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Saldo Bruto Previsto:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3683
          mmLeft = 2646
          mmTop = 32279
          mmWidth = 32554
          BandType = 4
        end
        object ppDBText11: TppDBText
          OnPrint = ppDBText4Print
          UserName = 'DBText11'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'SALDO_PREVISTO'
          DataPipeline = ppContratos
          DisplayFormat = '$#,0.00;-$#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppContratos'
          mmHeight = 3683
          mmLeft = 40481
          mmTop = 32279
          mmWidth = 22490
          BandType = 4
        end
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
        mmTop = 265
        mmWidth = 284428
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
        mmTop = 2117
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText8: TppDBText
        UserName = 'DBText1'
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
        mmLeft = 2381
        mmTop = 2117
        mmWidth = 132292
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppGroup2: TppGroup
      BreakName = 'PESSOA_FJ'
      DataPipeline = ppContratos
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppContratos'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6085
        mmPrintPosition = 0
        object ppShape10: TppShape
          UserName = 'Shape10'
          Brush.Color = clGray
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          mmHeight = 6085
          mmLeft = 1323
          mmTop = 0
          mmWidth = 283105
          BandType = 3
          GroupNo = 0
        end
        object ppDBText15: TppDBText
          UserName = 'DBText15'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOME_RAZAO'
          DataPipeline = ppContratos
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppContratos'
          mmHeight = 3810
          mmLeft = 44715
          mmTop = 1323
          mmWidth = 112184
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 8996
        mmPrintPosition = 0
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppContratos: TppDBPipeline
    DataSource = dsContrato
    UserName = 'ppContratos'
    Left = 246
    Top = 3
  end
  object ppLayout: TppDBPipeline
    DataSource = dsLayout
    UserName = 'Layout'
    Left = 284
    Top = 136
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
    Left = 315
    Top = 137
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
    Report = rptContratoObra
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 256
    Top = 136
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 142
    Top = 17
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 111
    Top = 17
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 0
      DisplayWidth = 0
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
    object ppAppRepresentanteppField13: TppField
      FieldAlias = 'PARC_PATH_ICONE'
      FieldName = 'PARC_PATH_ICONE'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
  end
  object QryExtratoFinanceiro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsContrato
    SQL.Strings = (
      'select * from pcd_ctr_rel_extrato_financeiro(:codigo)'
      'order by cnpj, tipo, CENTRO_CUSTO,  codigo')
    Left = 308
    Top = 33
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object QryExtratoFinanceiroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."CNPJ"'
      Size = 14
    end
    object QryExtratoFinanceiroEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."EMPRESA"'
      Size = 50
    end
    object QryExtratoFinanceiroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."CODIGO"'
    end
    object QryExtratoFinanceiroDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."DT_LANCTO"'
    end
    object QryExtratoFinanceiroDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."DT_VENCTO"'
    end
    object QryExtratoFinanceiroPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."PSA_CODIGO"'
    end
    object QryExtratoFinanceiroPSA_NOME: TIBStringField
      FieldName = 'PSA_NOME'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."PSA_NOME"'
      Size = 50
    end
    object QryExtratoFinanceiroVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object QryExtratoFinanceiroVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object QryExtratoFinanceiroSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."SALDO"'
      Precision = 18
      Size = 4
    end
    object QryExtratoFinanceiroDT_PAGTO: TDateField
      FieldName = 'DT_PAGTO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."DT_PAGTO"'
    end
    object QryExtratoFinanceiroVLR_BAIXA: TIBBCDField
      FieldName = 'VLR_BAIXA'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object QryExtratoFinanceiroDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."DOCTO"'
    end
    object QryExtratoFinanceiroPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."PARCELA"'
      Size = 6
    end
    object QryExtratoFinanceiroTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object QryExtratoFinanceiroCOD_PAG_REC: TIntegerField
      FieldName = 'COD_PAG_REC'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."COD_PAG_REC"'
    end
    object QryExtratoFinanceiroHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."HISTORICO"'
      Size = 100
    end
    object QryExtratoFinanceiroHISTORICO_BX: TIBStringField
      FieldName = 'HISTORICO_BX'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."HISTORICO_BX"'
      Size = 100
    end
    object QryExtratoFinanceiroCENTRO_CUSTO: TIBStringField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."CENTRO_CUSTO"'
      Size = 50
    end
    object QryExtratoFinanceiroMOV: TIBStringField
      FieldName = 'MOV'
      Origin = '"PCD_CTR_REL_EXTRATO_FINANCEIRO"."MOV"'
      FixedChar = True
      Size = 1
    end
  end
  object dsExtratoFinanceiro: TDataSource
    DataSet = QryExtratoFinanceiro
    Left = 277
    Top = 31
  end
  object qryVendasPeriodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsContrato
    SQL.Strings = (
      'select * from PCD_CTR_REL_FATURAMENTOS(:codigo)'
      'order by cnpj, empresa, codigo')
    Left = 312
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object qryVendasPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."CODIGO"'
    end
    object qryVendasPeriodoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoTOTAL_BRUTO: TIBBCDField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."TOTAL_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."DATA"'
    end
    object qryVendasPeriodoDATA_CX: TDateField
      FieldName = 'DATA_CX'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."DATA_CX"'
    end
    object qryVendasPeriodoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."HISTORICO"'
      Size = 100
    end
    object qryVendasPeriodoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PESSOA_FJ"'
    end
    object qryVendasPeriodoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."USUARIO"'
    end
    object qryVendasPeriodoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."NATUREZA"'
    end
    object qryVendasPeriodoNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."NUM_NF"'
    end
    object qryVendasPeriodoNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."NUM_CUPOM"'
    end
    object qryVendasPeriodoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."OBSERVACAO"'
      Size = 80
    end
    object qryVendasPeriodoTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."TIPO_MOV"'
      FixedChar = True
      Size = 5
    end
    object qryVendasPeriodoNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryVendasPeriodoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."VENDEDOR"'
    end
    object qryVendasPeriodoCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoPRD_COD: TIBStringField
      FieldName = 'PRD_COD'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_COD"'
      FixedChar = True
      Size = 15
    end
    object qryVendasPeriodoPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_NOME"'
      FixedChar = True
      Size = 50
    end
    object qryVendasPeriodoPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryVendasPeriodoPRD_SUBUNIDADE: TIntegerField
      FieldName = 'PRD_SUBUNIDADE'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_SUBUNIDADE"'
    end
    object qryVendasPeriodoPRD_QUANTIDADE: TIBBCDField
      FieldName = 'PRD_QUANTIDADE'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_PRC_UNITARIO: TIBBCDField
      FieldName = 'PRD_PRC_UNITARIO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_DESCONTO: TIBBCDField
      FieldName = 'PRD_DESCONTO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_TOTAL: TIBBCDField
      FieldName = 'PRD_TOTAL'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoVLR_VISTA: TIBBCDField
      FieldName = 'VLR_VISTA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."VLR_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoVLR_PRAZO: TIBBCDField
      FieldName = 'VLR_PRAZO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."VLR_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."DOCTO"'
      FixedChar = True
      Size = 15
    end
    object qryVendasPeriodoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."CNPJ"'
      Size = 14
    end
    object qryVendasPeriodoEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."EMPRESA"'
      Size = 50
    end
    object qryVendasPeriodoPRD_TOTAL_LIQ: TIBBCDField
      FieldName = 'PRD_TOTAL_LIQ'
      Origin = '"PCD_CTR_REL_FATURAMENTOS"."PRD_TOTAL_LIQ"'
      Precision = 18
      Size = 4
    end
  end
  object dbExtratoFinanceiro: TppDBPipeline
    DataSource = dsExtratoFinanceiro
    UserName = 'dbExtratoFinanceiro'
    Left = 246
    Top = 32
    MasterDataPipelineName = 'ppContratos'
  end
  object dsVendasAna: TDataSource
    DataSet = qryVendasPeriodo
    Left = 280
    Top = 65
  end
  object ppVendasAna: TppDBPipeline
    DataSource = dsVendasAna
    UserName = 'ppVendasAna'
    Left = 246
    Top = 64
    MasterDataPipelineName = 'ppContratos'
  end
  object SelCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct c.cpf_cgc, c.nome_razao from glo_pessoas_fj c'
      'where coalesce(c.cpf_cgc,'#39#39') <> '#39#39)
    Left = 215
    Top = 64
    object SelClienteCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
  object dsSelContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 172
    Top = 112
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 212
    Top = 113
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object ActMarcaExibicao: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update sis_empresas e set e.ctr_exibe_rel_consolidado = :cons, e' +
        '.ctr_exibe_rel_provisionado = :prov')
    Transaction = DmApp.Transaction
    Left = 114
    Top = 74
  end
  object SelEmpresa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select e.ctr_exibe_rel_consolidado, e.ctr_exibe_rel_provisionado' +
        ' from sis_empresas e')
    Left = 47
    Top = 184
    object SelEmpresaCTR_EXIBE_REL_CONSOLIDADO: TIBStringField
      FieldName = 'CTR_EXIBE_REL_CONSOLIDADO'
      Origin = '"SIS_EMPRESAS"."CTR_EXIBE_REL_CONSOLIDADO"'
      FixedChar = True
      Size = 1
    end
    object SelEmpresaCTR_EXIBE_REL_PROVISIONADO: TIBStringField
      FieldName = 'CTR_EXIBE_REL_PROVISIONADO'
      Origin = '"SIS_EMPRESAS"."CTR_EXIBE_REL_PROVISIONADO"'
      FixedChar = True
      Size = 1
    end
  end
end
