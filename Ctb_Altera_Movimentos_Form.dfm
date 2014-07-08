object FrmCtb_Altera_Movtos: TFrmCtb_Altera_Movtos
  Left = 151
  Top = 100
  Width = 641
  Height = 357
  BorderIcons = [biSystemMenu]
  Caption = ' Altera Movimentos Cont'#225'beis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 330
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Altera Movtos Cont'#225'beis'
      ParentFont = False
      Transparent = True
    end
    object GRID: TdxDBGrid
      Left = 8
      Top = 39
      Width = 617
      Height = 283
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
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
      OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDrawCell = GRIDCustomDrawCell
      object GRIDBANCO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BANCO'
      end
      object GRIDCOD_DOC: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COD_DOC'
      end
      object GRIDCODIGO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDCONTA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTA'
      end
      object GRIDDATA: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object GRIDDATA_CONCILIACAO: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA_CONCILIACAO'
      end
      object GRIDDOCUMENTO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCUMENTO'
      end
      object GRIDFORNECEDOR: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORNECEDOR'
      end
      object GRIDHISTORICO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDORIGEM: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORIGEM'
      end
      object GRIDPLANILHA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLANILHA'
      end
      object GRIDTIPO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
      object GRIDVALOR: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
    end
  end
  object Actions: TActionList
    Left = 601
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object DSource: TDataSource
    DataSet = DmPlano.Ctb_Altera_Movtos
    Left = 200
    Top = 144
  end
end
