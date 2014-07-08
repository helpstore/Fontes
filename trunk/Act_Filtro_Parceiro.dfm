object FrmFiltraParceiro: TFrmFiltraParceiro
  Left = 320
  Top = 194
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Filtrar Parceiros'
  ClientHeight = 325
  ClientWidth = 709
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TcxLabel
    Left = 154
    Top = 87
    Caption = 'Pessoa'
    ParentFont = False
    Transparent = True
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 709
    Height = 285
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    object Panel6: TPanel
      Left = 2
      Top = 2
      Width = 705
      Height = 281
      Align = alClient
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 705
        Height = 29
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object LblTitulo: TcxLabel
          Left = 7
          Top = 3
          Caption = 'Filtrar Parceiros'
          ParentFont = False
          Transparent = True
        end
      end
      object GRID: TdxDBGrid
        Left = 0
        Top = 29
        Width = 705
        Height = 252
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
        PopupMenu = PopSelecao
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsPessoas
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
        object GRIDCODIGO: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GRIDNOME_RAZAO: TdxDBGridMaskColumn
          Sorted = csDown
          Width = 308
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME_RAZAO'
        end
        object GRIDFANTASIA: TdxDBGridMaskColumn
          Visible = False
          Width = 268
          BandIndex = 0
          RowIndex = 0
          FieldName = 'FANTASIA'
        end
        object GRIDCPF_CGC: TdxDBGridMaskColumn
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CPF_CGC'
        end
        object GRIDSELECIONADO: TdxDBGridCheckColumn
          Width = 30
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SELECIONADO'
          ValueChecked = 'S'
          ValueUnchecked = 'N'
        end
        object GRIDCNPJ: TdxDBGridMaskColumn
          Visible = False
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CNPJ'
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 285
    Width = 709
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BtnOk: TcxButton
      Left = 9
      Top = 7
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
      Left = 100
      Top = 7
      Width = 101
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
  object Actions: TActionList
    Left = 89
    Top = 60
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      OnExecute = ActCancelarExecute
    end
    object ActSelecionar: TAction
      Caption = 'ActSelecionar'
      ShortCut = 16416
      OnExecute = ActSelecionarExecute
    end
    object ActSelecionaTodos: TAction
      Caption = 'Marcar Todos os Registros'
      OnExecute = ActSelecionaTodosExecute
    end
    object ActDesmarcaTodos: TAction
      Caption = 'Desmarcar Todos os Registros'
      OnExecute = ActDesmarcaTodosExecute
    end
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = dmCadastros2.SelFiltraParceiro
    Left = 192
    Top = 83
  end
  object PopSelecao: TPopupMenu
    Left = 282
    Top = 114
    object MarcarTodososRegistros1: TMenuItem
      Action = ActSelecionaTodos
    end
    object DesmarcarTodososRegistros1: TMenuItem
      Action = ActDesmarcaTodos
    end
  end
end
