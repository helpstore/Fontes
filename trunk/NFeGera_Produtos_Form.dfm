object frmNFeGeraProdutos: TfrmNFeGeraProdutos
  Left = 264
  Top = 161
  BorderStyle = bsDialog
  Caption = 'NFe - Exportar Registros de Produtos'
  ClientHeight = 236
  ClientWidth = 443
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 443
    Height = 196
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object GRID: TdxDBGrid
      Left = 2
      Top = 2
      Width = 439
      Height = 192
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'COD_PRODUTO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'CODIGO'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTAL'
              SummaryType = cstSum
            end
            item
              SummaryField = 'VLR_TOTAL'
              SummaryType = cstSum
            end>
          Name = 'sgFaturamento'
        end>
      SummarySeparator = ', '
      Align = alClient
      TabOrder = 0
      DataSource = DataSource
      Filter.Criteria = {00000000}
      GroupNodeColor = 15977833
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      ShowRowFooter = True
      object GRIDRecId: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object GRIDCOD_PRODUTO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COD_PRODUTO'
      end
      object GRIDDESCRICAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GRIDSel: TdxDBGridCheckColumn
        MinWidth = 20
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Sel'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 196
    Width = 443
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object LblStatus: TcxLabel
      Left = 205
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Transparent = True
      Visible = False
    end
    object RzBitBtn1: TcxButton
      Left = 9
      Top = 7
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = RzBitBtn1Click
      Kind = 
    end
    object RzBitBtn2: TcxButton
      Left = 103
      Top = 7
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = ActFecharExecute
      Kind = 
    end
    object PGB: TProgressBar
      Left = 200
      Top = 12
      Width = 233
      Height = 16
      TabOrder = 2
    end
  end
  object Actions: TActionList
    Left = 368
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
    end
  end
  object mtbExporta: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 168
    Top = 32
    object mtbExportaLinha: TStringField
      FieldName = 'Linha'
      Size = 500
    end
  end
  object qryNFeProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select linha from nfe_produto(:cnpj,:codigo)')
    Left = 136
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object qryNFeProdutosLINHA: TIBStringField
      FieldName = 'LINHA'
      Origin = '"NFE_PRODUTO"."LINHA"'
      Size = 500
    end
  end
  object DataSource: TDataSource
    Left = 200
    Top = 32
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 262
    Top = 44
  end
end
