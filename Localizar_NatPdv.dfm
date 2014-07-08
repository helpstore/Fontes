object FrmLocNatPdv: TFrmLocNatPdv
  Left = 191
  Top = 108
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'Natureza de Opera'#231#227'o '
  ClientHeight = 406
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 406
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = 7280169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 52984
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel3: TBevel
      Left = 15
      Top = 29
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object Label6: TcxLabel
      Left = 11
      Top = 46
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 199
      Top = 46
      Caption = 'Nome'
      ParentFont = False
      Transparent = True
    end
    object pnlTop: TPanel
      Left = 2
      Top = 2
      Width = 767
      Height = 31
      Align = alTop
      BevelOuter = bvNone
      Color = 7280169
      TabOrder = 3
      object Bevel2: TBevel
        Left = 3
        Top = 29
        Width = 754
        Height = 4
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 5
        Top = 6
        Caption = 'Localizar Natureza de Opera'#231#227'o'
        ParentFont = False
        Transparent = True
      end
    end
    object EdCodigo: TdxEdit
      Left = 54
      Top = 42
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
      OnExit = EdCodigoExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object EdNome: TdxEdit
      Left = 240
      Top = 42
      Width = 527
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
      OnExit = EdNomeExit
      OnKeyDown = EdCodigoKeyDown
      CharCase = ecUpperCase
    end
    object GRID: TDBGrid
      Left = 8
      Top = 70
      Width = 759
      Height = 285
      BorderStyle = bsNone
      Color = clWhite
      DataSource = DSource
      FixedColor = clWhite
      Options = [dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 52984
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnEnter = GRIDEnter
      OnExit = GRIDExit
      OnKeyDown = GRIDKeyDown
      OnKeyPress = GridKeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'CODIGO_INTERNO'
          Title.Caption = 'Int'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 35
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'CODIGO'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 279
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'QTDADE_2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 55
          Visible = True
        end
        item
          Color = clWindow
          Expanded = False
          FieldName = 'PRC_VENDA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 60
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'MARCA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = 8404992
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = []
          Width = 200
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 2
      Top = 364
      Width = 767
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = 7280169
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object RzBitBtn1: TcxButton
        Left = 577
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
        Left = 668
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActCancelar
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
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
      object RDNOME: TRadioButton
        Left = 136
        Top = 13
        Width = 112
        Height = 17
        Caption = 'Ordem de Nome'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object RdCodigo: TRadioButton
        Left = 8
        Top = 13
        Width = 121
        Height = 17
        Caption = 'Ordem de C'#243'digo'
        Checked = True
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 52984
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        TabStop = True
      end
    end
  end
  object Act: TActionList
    Left = 348
    Top = 167
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActTrocaOrdem: TAction
      Caption = 'Trocar Ordem'
      ShortCut = 123
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DMLocalizarProd.Produtos
    Left = 272
    Top = 168
  end
  object stgFrmLocNatPdv: TcxPropertiesStore
    Components = <
      item
        Component = GRID
        Properties.Strings = (
          'Align'
          'Anchors'
          'BiDiMode'
          'BorderStyle'
          'Color'
          'Columns'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DataSource'
          'DefaultDrawing'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FixedColor'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'Options'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'TitleFont'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrmLocNatPdv'
    Left = 200
    Top = 184
  end
end
