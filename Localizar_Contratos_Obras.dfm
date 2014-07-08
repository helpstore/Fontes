object FrmLocContratosObras: TFrmLocContratosObras
  Left = 257
  Top = 247
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Localizar Contratos - Obras'
  ClientHeight = 379
  ClientWidth = 783
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 783
    Height = 379
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Bevel3: TBevel
      Left = 15
      Top = 29
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object pnlTop: TPanel
      Left = 2
      Top = 2
      Width = 779
      Height = 71
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      OnExit = pnlTopExit
      object Bevel2: TBevel
        Left = 3
        Top = 29
        Width = 770
        Height = 4
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 5
        Top = 6
        Caption = 'Localizar Contratos - Obras'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 207
        Top = 46
        Caption = 'Nome'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 7
        Top = 46
        Caption = 'CPF/CNPJ'
        ParentFont = False
        Transparent = True
      end
      object EdNome: TdxEdit
        Left = 240
        Top = 40
        Width = 537
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = EdNomeEnter
        OnKeyDown = EdCodigoKeyDown
        CharCase = ecUpperCase
      end
      object EdCodigo: TdxEdit
        Left = 64
        Top = 40
        Width = 137
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnEnter = EdCodigoEnter
        OnKeyDown = EdCodigoKeyDown
        CharCase = ecUpperCase
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 343
      Width = 779
      Height = 34
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 1
      object RzBitBtn1: TcxButton
        Left = 594
        Top = 4
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        TabStop = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555905555555555555999055555555555599905555
          5555555999990555555555999999055555555799059990555555790555599055
          5555555555599905555555555555990555555555555559905555555555555579
          0555555555555557905555555555555559905555555555555555}
      end
      object BtnCancelar: TcxButton
        Left = 685
        Top = 4
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActCancelar
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        TabStop = False
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADA00DADA1FDDAD1FA0000DADADAAD111FA00DAD1FADDA111FDADAD1
          FADAADA111F00D11FDADDADA111F011FDADAADADA11111FDADADDADADA111FDA
          DADAADADA11111FDADADDADA111F011ADADAAD1111F00011FDADD1111F0000D1
          1FDAA11FAD0000AD11FDDADADAD00ADADADAADADADADADADADAD}
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 73
      Width = 779
      Height = 270
      Align = alClient
      BevelOuter = bvNone
      Caption = 'Panel1'
      TabOrder = 2
      object GRID: TdxDBGrid
        Left = 0
        Top = 0
        Width = 779
        Height = 270
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = GRIDEnter
        OnExit = GRIDExit
        OnKeyPress = GridKeyPress
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DSource
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GRIDCPF_CNPJ: TdxDBGridMaskColumn
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CPF_CNPJ'
        end
        object GRIDNOME: TdxDBGridMaskColumn
          Width = 270
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME'
        end
        object GRIDCODIGO: TdxDBGridMaskColumn
          Width = 107
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GRIDDESCRICAO: TdxDBGridMaskColumn
          Width = 304
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAO'
        end
        object GRIDDATA_INICIO: TdxDBGridDateColumn
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_INICIO'
        end
        object GRIDDATA_VENCTO: TdxDBGridDateColumn
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_VENCTO'
        end
        object GRIDDATA: TdxDBGridDateColumn
          Width = 64
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GRIDATIVO: TdxDBGridCheckColumn
          MinWidth = 20
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ATIVO'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
      end
    end
  end
  object Actions: TActionList
    Left = 348
    Top = 167
    object ActOk: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Tag = 1
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = qryLocContratosObra
    Left = 280
    Top = 168
  end
  object qryLocContratosObra: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select codigo ,'
      '    descricao ,'
      '    data_inicio ,'
      '    data_vencto ,'
      '    data ,'
      '    cpf_cnpj ,'
      '    nome ,'
      '    ativo'
      'from PCD_CTR_LIST_CONTRATO'
      
        'where    (upper(cpf_cnpj) like '#39'%'#39'||upper(cast(:cpf_cnpj as varc' +
        'har(20)))||'#39'%'#39' or cast(:cpf_cnpj as varchar(20)) = '#39#39')'
      
        'and (upper(nome) like '#39'%'#39'||upper(cast(:cliente as varchar(50)))|' +
        '|'#39'%'#39' or cast(:cliente as varchar(50)) = '#39#39')')
    Left = 298
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cpf_cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf_cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qryLocContratosObraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CODIGO'
      Origin = '"PCD_CTR_LIST_CONTRATO"."CODIGO"'
    end
    object qryLocContratosObraDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"PCD_CTR_LIST_CONTRATO"."DESCRICAO"'
      Size = 50
    end
    object qryLocContratosObraDATA_INICIO: TDateField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'DATA_INICIO'
      Origin = '"PCD_CTR_LIST_CONTRATO"."DATA_INICIO"'
    end
    object qryLocContratosObraDATA_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DATA_VENCTO'
      Origin = '"PCD_CTR_LIST_CONTRATO"."DATA_VENCTO"'
    end
    object qryLocContratosObraDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PCD_CTR_LIST_CONTRATO"."DATA"'
    end
    object qryLocContratosObraCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"PCD_CTR_LIST_CONTRATO"."CPF_CNPJ"'
    end
    object qryLocContratosObraNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"PCD_CTR_LIST_CONTRATO"."NOME"'
      Size = 50
    end
    object qryLocContratosObraATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"PCD_CTR_LIST_CONTRATO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
end
