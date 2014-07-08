object FrmLocalizarAplicacao: TFrmLocalizarAplicacao
  Left = 133
  Top = 163
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Aplica'#231#245'es '
  ClientHeight = 225
  ClientWidth = 627
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBText1: TDBText
    Left = 56
    Top = 40
    Width = 50
    Height = 13
    AutoSize = True
    DataField = 'CODIGO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBText2: TDBText
    Left = 240
    Top = 40
    Width = 50
    Height = 13
    AutoSize = True
    DataField = 'NOME'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TcxLabel
    Left = 11
    Top = 39
    Caption = 'C'#243'digo'
    ParentFont = False
    Transparent = True
  end
  object Label1: TcxLabel
    Left = 199
    Top = 39
    Caption = 'Nome'
    ParentFont = False
    Transparent = True
  end
  object GRID: TdxDBGrid
    Left = 3
    Top = 64
    Width = 622
    Height = 157
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
    OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
    OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
    OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoPartialLoad, edgoUseBookmarks]
    PreviewFont.Charset = DEFAULT_CHARSET
    PreviewFont.Color = clBlue
    PreviewFont.Height = -11
    PreviewFont.Name = 'MS Sans Serif'
    PreviewFont.Style = []
    object GRIDAPLICACAO: TdxDBGridMaskColumn
      Width = 304
      BandIndex = 0
      RowIndex = 0
      FieldName = 'APLICACAO'
    end
    object GRIDLOCAL: TdxDBGridMaskColumn
      Width = 300
      BandIndex = 0
      RowIndex = 0
      FieldName = 'LOCAL'
    end
  end
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 627
    Height = 31
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Bevel2: TBevel
      Left = 3
      Top = 29
      Width = 601
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 5
      Top = 6
      Caption = 'Localizar Produto'
      ParentFont = False
      Transparent = True
    end
  end
  object ActLista: TActionList
    Left = 352
    Top = 104
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.Aplicacoes
    Left = 192
    Top = 96
  end
end
