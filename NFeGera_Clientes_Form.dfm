object frmNFeGeraClientes: TfrmNFeGeraClientes
  Left = 264
  Top = 161
  BorderStyle = bsDialog
  Caption = 'NFe - Exportar Registros de Clientes'
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
      KeyField = 'COD_CLIENTE'
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
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object GRIDCOD_CLIENTE: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COD_CLIENTE'
      end
      object GRIDNOME: TdxDBGridMaskColumn
        Width = 232
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GRIDCNPJ: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CNPJ'
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
    Left = 232
    Top = 7
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
    end
  end
  object mtbExporta: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 160
    Top = 8
    object mtbExportaLinha: TStringField
      FieldName = 'Linha'
      Size = 500
    end
  end
  object qryNFeClientes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select cliente from nfe_cliente(:cnpj,:codigo)')
    Left = 128
    Top = 8
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
    object qryNFeClientesCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"NFE_CLIENTE"."CLIENTE"'
      Size = 500
    end
  end
  object DataSource: TDataSource
    DataSet = FrmNFeManutencao.mtbCliente
    Left = 189
    Top = 7
  end
end
