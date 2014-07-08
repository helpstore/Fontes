object Pdv_FormIndices: TPdv_FormIndices
  Left = 229
  Top = 159
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Total PDV'
  ClientHeight = 384
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnlTotal: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 384
    Align = alClient
    Alignment = taRightJustify
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 7280169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object dxDBGrid1: TdxDBGrid
      Left = 4
      Top = 77
      Width = 746
      Height = 299
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      Align = alClient
      Color = 7280169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 12615680
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = 12615680
      BandFont.Height = -24
      BandFont.Name = 'Tahoma'
      BandFont.Style = [fsBold]
      DataSource = dsIndices
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clBlack
      HeaderFont.Height = -24
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = [fsBold]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -24
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = [fsBold]
      object dxDBGrid1RecId: TdxDBGridColumn
        Visible = False
        Width = 71
        BandIndex = 0
        RowIndex = 0
        FieldName = 'RecId'
      end
      object dxDBGrid1SEL: TdxDBGridCheckColumn
        Alignment = taCenter
        HeaderAlignment = taCenter
        Width = 38
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SEL'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object dxDBGrid1NOME: TdxDBGridMaskColumn
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dxDBGrid1SIGLA: TdxDBGridMaskColumn
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SIGLA'
      end
      object dxDBGrid1COTACAO: TdxDBGridMaskColumn
        Width = 130
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COTACAO'
      end
      object dxDBGrid1TOTAL: TdxDBGridMaskColumn
        Width = 145
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object dxDBGrid1Troco: TdxDBGridMaskColumn
        Width = 137
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Troco'
      end
    end
    object Panel1: TPanel
      Left = 4
      Top = 4
      Width = 746
      Height = 73
      Align = alTop
      BevelOuter = bvNone
      Color = 7280169
      TabOrder = 0
      object status: TPanel
        Left = 0
        Top = 3
        Width = 553
        Height = 65
        BevelInner = bvRaised
        BevelWidth = 2
        BorderStyle = bsSingle
        Caption = 'Total Pago'
        Color = 7280169
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -24
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object PNUNITARIO: TPanel
        Left = 557
        Top = 3
        Width = 186
        Height = 65
        Alignment = taRightJustify
        BevelInner = bvRaised
        BevelWidth = 2
        BorderStyle = bsSingle
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object EdtVALOR: TDBEdit
          Left = 16
          Top = 14
          Width = 166
          Height = 34
          BorderStyle = bsNone
          DataField = 'ValorPago'
          DataSource = dsValor
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 52984
          Font.Height = -21
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = True
          ParentFont = False
          TabOrder = 0
          OnKeyDown = EdtVALORKeyDown
          OnKeyPress = EdtVALORKeyPress
        end
      end
    end
  end
  object ActLista: TActionList
    Left = 538
    Top = 138
    object ActMarcaDesmarca: TAction
      Caption = 'Seta N'#186' Pedido'
      OnExecute = ActMarcaDesmarcaExecute
    end
    object ActionFechar: TAction
      Caption = 'ActionFechar'
      ShortCut = 27
      OnExecute = ActionFecharExecute
    end
  end
  object dsIndices: TDataSource
    DataSet = mtbIndices
    Left = 280
    Top = 160
  end
  object mtbIndices: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 388
    Top = 51
    object mtbIndicesSel: TBooleanField
      DisplayLabel = 'X'
      FieldName = 'Sel'
      OnChange = mtbIndicesSelChange
    end
    object mtbIndicesCOTACAO: TFloatField
      DisplayLabel = 'Cota'#231#227'o'
      FieldName = 'COTACAO'
      ReadOnly = True
      DisplayFormat = '###,##0.000000'
    end
    object mtbIndicesSIGLA: TStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      ReadOnly = True
      Size = 3
    end
    object mtbIndicesNOME: TStringField
      DisplayLabel = 'Moeda'
      FieldName = 'NOME'
      ReadOnly = True
      Size = 50
    end
    object mtbIndicesTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbIndicesTroco: TFloatField
      FieldName = 'Troco'
      ReadOnly = True
      DisplayFormat = '###,##0.00'
    end
    object mtbIndicesCOD_MOEDA: TIntegerField
      FieldName = 'COD_MOEDA'
      ReadOnly = True
    end
  end
  object mtbValorPago: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 476
    Top = 43
    object mtbValorPagoValorPago: TFloatField
      FieldName = 'ValorPago'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsValor: TDataSource
    DataSet = mtbValorPago
    Left = 512
    Top = 40
  end
end
