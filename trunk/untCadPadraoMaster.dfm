object frmCadPadraoMaster: TfrmCadPadraoMaster
  Left = 54
  Top = 74
  Width = 669
  Height = 517
  Caption = 'frmCadPadraoMaster'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcCadastro: TcxPageControl
    Left = 0
    Top = 0
    Width = 653
    Height = 453
    ActivePage = tbsEdita
    Align = alClient
    TabOrder = 0
    OnChange = pgcCadastroChange
    ClientRectBottom = 449
    ClientRectLeft = 4
    ClientRectRight = 649
    ClientRectTop = 27
    object tbsLista: TcxTabSheet
      Caption = 'Pesquisa'
      ImageIndex = 0
      object Grid: TcxGrid
        Left = 0
        Top = 65
        Width = 645
        Height = 357
        Align = alClient
        TabOrder = 0
        OnEnter = GridEnter
        object TVRegistro: TcxGridDBBandedTableView
          OnKeyDown = TVRegistroKeyDown
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = dsPesquisa
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          FilterRow.Visible = True
          OptionsBehavior.IncSearch = True
          OptionsData.CancelOnExit = False
          OptionsData.Deleting = False
          OptionsData.DeletingConfirmation = False
          OptionsData.Editing = False
          OptionsData.Inserting = False
          OptionsView.Footer = True
          OptionsView.GroupFooters = gfAlwaysVisible
          OptionsView.BandHeaders = False
          Bands = <
            item
            end>
        end
        object LVPesquisa: TcxGridLevel
          GridView = TVRegistro
        end
      end
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
        OnEnter = pnlFiltroEnter
        OnExit = pnlFiltroExit
      end
    end
    object tbsEdita: TcxTabSheet
      Caption = 'Registro'
      ImageIndex = 1
      OnShow = tbsEditaShow
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 645
        Height = 422
        Align = alClient
        TabOrder = 0
        object pnlSubCad: TPanel
          Left = 1
          Top = 144
          Width = 643
          Height = 277
          Align = alBottom
          BevelOuter = bvNone
          TabOrder = 1
          object PgcDetalhe: TcxPageControl
            Left = 0
            Top = 0
            Width = 643
            Height = 277
            ActivePage = tbsDetalhe1
            Align = alClient
            Color = clBtnFace
            HotTrack = True
            ParentColor = False
            TabOrder = 0
            TabStop = False
            ClientRectBottom = 273
            ClientRectLeft = 4
            ClientRectRight = 639
            ClientRectTop = 27
            object tbsDetalhe1: TcxTabSheet
              Caption = 'tbsDetalhe1'
              ImageIndex = 0
              OnEnter = tbsDetalhe1Enter
              object PGCSub1: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub1
                Align = alClient
                TabOrder = 0
                OnChange = PGCSub1Change
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub1: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet1: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet1: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet1
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet1: TcxGridLevel
                      GridView = TVDet1
                    end
                  end
                end
                object tbsEditaSub1: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object edtCodDet1: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 0
                    Width = 65
                  end
                  object cxLabel8: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                end
              end
            end
            object tbsDetalhe2: TcxTabSheet
              Caption = 'tbsDetalhe2'
              ImageIndex = 1
              OnEnter = tbsDetalhe2Enter
              object PGCSub2: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub2
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub2: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet2: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet2: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet2
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet2: TcxGridLevel
                      GridView = TVDet2
                    end
                  end
                end
                object tbsEditaSub2: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object edtCodDet2: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 0
                    Width = 65
                  end
                  object cxLabel2: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                end
              end
            end
            object tbsDetalhe3: TcxTabSheet
              Caption = 'tbsDetalhe3'
              ImageIndex = 2
              OnEnter = tbsDetalhe3Enter
              object PGCSub3: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub3
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub3: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet3: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet3: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet3
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet3: TcxGridLevel
                      GridView = TVDet3
                    end
                  end
                end
                object tbsEditaSub3: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object cxLabel3: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                  object edtCodDet3: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 1
                    Width = 65
                  end
                end
              end
            end
            object tbsDetalhe4: TcxTabSheet
              Caption = 'tbsDetalhe4'
              ImageIndex = 3
              OnEnter = tbsDetalhe4Enter
              object PGCSub4: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub4
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub4: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet4: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet4: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet4
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet4: TcxGridLevel
                      GridView = TVDet4
                    end
                  end
                end
                object tbsEditaSub4: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object edtCodDet4: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 0
                    Width = 65
                  end
                  object cxLabel4: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                end
              end
            end
            object tbsDetalhe5: TcxTabSheet
              Caption = 'tbsDetalhe5'
              ImageIndex = 4
              OnEnter = tbsDetalhe5Enter
              object PGCSub5: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub5
                Align = alClient
                Enabled = False
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub5: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet5: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet5: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet5
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet5: TcxGridLevel
                      GridView = TVDet5
                    end
                  end
                end
                object tbsEditaSub5: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object edtCodDet5: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet5
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 0
                    Width = 65
                  end
                  object cxLabel5: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                end
              end
            end
            object tbsDetalhe6: TcxTabSheet
              Caption = 'tbsDetalhe6'
              ImageIndex = 5
              OnEnter = tbsDetalhe6Enter
              object PGCSub6: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub6
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub6: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet6: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet6: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet6
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet6: TcxGridLevel
                      GridView = TVDet6
                    end
                  end
                end
                object tbsEditaSub6: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object edtCodDet6: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet6
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 0
                    Width = 65
                  end
                  object cxLabel6: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                end
              end
            end
            object tbsDetalhe7: TcxTabSheet
              Caption = 'tbsDetalhe7'
              ImageIndex = 6
              OnEnter = tbsDetalhe7Enter
              object PGCSub7: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub7
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub7: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet7: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 1007
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet7: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet7
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet7: TcxGridLevel
                      GridView = TVDet7
                    end
                  end
                end
                object tbsEditaSub7: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object cxLabel7: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                  object edtCodDet7: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet7
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 1
                    Width = 65
                  end
                end
              end
            end
            object tbsDetalhe8: TcxTabSheet
              Caption = 'tbsDetalhe8'
              ImageIndex = 7
              OnEnter = tbsDetalhe8Enter
              object PGCSub8: TcxPageControl
                Left = 0
                Top = 0
                Width = 635
                Height = 246
                ActivePage = tbsEditaSub8
                Align = alClient
                TabOrder = 0
                ClientRectBottom = 242
                ClientRectLeft = 4
                ClientRectRight = 631
                ClientRectTop = 27
                object tbsListaSub8: TcxTabSheet
                  Caption = 'Pesquisa'
                  ImageIndex = 0
                  object GridDet8: TcxGrid
                    Left = 0
                    Top = 0
                    Width = 627
                    Height = 215
                    Align = alClient
                    TabOrder = 0
                    OnEnter = GridEnter
                    object TVDet8: TcxGridDBBandedTableView
                      OnKeyDown = TVRegistroKeyDown
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsPesquisaDet8
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsData.CancelOnExit = False
                      OptionsData.Deleting = False
                      OptionsData.DeletingConfirmation = False
                      OptionsData.Editing = False
                      OptionsData.Inserting = False
                      OptionsSelection.CellSelect = False
                      OptionsSelection.InvertSelect = False
                      OptionsSelection.UnselectFocusedRecordOnExit = False
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                    end
                    object LVDet8: TcxGridLevel
                      GridView = TVDet8
                    end
                  end
                end
                object tbsEditaSub8: TcxTabSheet
                  Caption = 'Registro'
                  ImageIndex = 1
                  object cxLabel9: TcxLabel
                    Left = 8
                    Top = 8
                    Caption = 'C'#243'digo'
                    Transparent = True
                  end
                  object edtCodDet8: TcxDBTextEdit
                    Left = 8
                    Top = 24
                    TabStop = False
                    DataBinding.DataSource = dsRegistroDet8
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    TabOrder = 1
                    Width = 65
                  end
                end
              end
            end
          end
        end
        object pnlMaster: TPanel
          Left = 1
          Top = 1
          Width = 643
          Height = 143
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 0
          OnEnter = pnlMasterEnter
          object PgcMaster: TcxPageControl
            Left = 0
            Top = 0
            Width = 643
            Height = 143
            ActivePage = tbsMaster1
            Align = alClient
            Focusable = False
            HotTrack = True
            TabOrder = 0
            ClientRectBottom = 139
            ClientRectLeft = 4
            ClientRectRight = 639
            ClientRectTop = 27
            object tbsMaster1: TcxTabSheet
              Caption = 'tbsMaster1'
              ImageIndex = 0
              object cxLabel1: TcxLabel
                Left = 8
                Top = 0
                Caption = 'C'#243'digo'
                Transparent = True
              end
              object edtCodigo: TcxDBTextEdit
                Left = 8
                Top = 16
                DataBinding.DataSource = dsRegistro
                Properties.ReadOnly = True
                Style.BorderColor = clWindowFrame
                Style.BorderStyle = ebs3D
                Style.Color = clInactiveBorder
                Style.HotTrack = False
                TabOrder = 1
                Width = 65
              end
            end
          end
        end
      end
    end
  end
  object dsPesquisa: TDataSource
    DataSet = dtList
    Left = 199
    Top = 4
  end
  object dsRegistro: TDataSource
    DataSet = dtEdit
    OnStateChange = dsRegistroStateChange
    Left = 227
    Top = 4
  end
  object dtEdit: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforePost = dtEditBeforePost
    DataSource = dsLink
    Left = 144
    Top = 4
  end
  object dtList: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    Left = 105
    Top = 4
  end
  object dxBarManager: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Defaut'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.DisabledImages = cxImageList1
    ImageOptions.DisabledLargeImages = cxImageList1
    ImageOptions.HotImages = cxImageList1
    ImageOptions.Images = cxImageList1
    ImageOptions.LargeImages = cxImageList1
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    ShowFullMenusAfterDelay = False
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 312
    Top = 4
    DockControlHeights = (
      0
      0
      0
      26)
    object dxBarManager1Bar1: TdxBar
      Caption = 'Funcoes'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 274
      FloatTop = 149
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrior1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavInsert1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavDelete1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavEdit1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPost1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavCancel1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavRefresh1'
        end
        item
          Visible = True
          ItemName = 'btnCustomizar'
        end
        item
          Visible = True
          ItemName = 'btnexportar'
        end
        item
          Visible = True
          ItemName = 'btnContrair'
        end
        item
          Visible = True
          ItemName = 'btnExpandir'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object btnInsert: TdxBarButton
      Action = ActInsert
      Category = 0
    end
    object btnDelete: TdxBarButton
      Action = ActDelete
      Category = 0
    end
    object btnSalvar: TdxBarButton
      Action = ActSave
      Category = 0
    end
    object btnEditar: TdxBarButton
      Action = ActEdit
      Category = 0
    end
    object btnCancelar: TdxBarButton
      Action = ActFechar
      Category = 0
      ImageIndex = 15
    end
    object btnCustomizar: TdxBarButton
      Action = ActConfigurar
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        0000000000000000000000000000000000000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
        FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
        8400C6C6C600C6C6C60084000000840000008400000084000000FFFFFF00FFFF
        FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
        8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084000000C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
        8400848484008484840084848400848484008484840000000000FFFFFF008400
        0000FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C6008400
        0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400848484008484840084000000840000008400
        0000840000008400000084848400848484000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C6008400
        0000C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C600C6C6
        C600C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
        0000000000000000000084848400848484008484840084848400848484008484
        8400848484008484840084848400848484000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object btnexportar: TdxBarButton
      Action = ActExportar
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000008484840000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
        00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFF
        FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF0000840000848484000084
        000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000008400008484
        84000084000084848400008400008484840000840000FFFFFF00008400008484
        840000840000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000848484000084
        000084848400008400008484840000840000FFFFFF0000840000848484000084
        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008400008484
        8400008400008484840000840000FFFFFF000084000084848400008400008484
        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
        00008484840000840000FFFFFF00008400008484840000840000848484000084
        0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
        000000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
        C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
        0000FFFFFF00008400008484840000840000848484000084000084848400C6C6
        C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000840000FFFF
        FF00008400008484840000840000848484000084000084848400008400008484
        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000848484000084
        0000848484000084000084848400FFFFFF008484840000840000848484000084
        0000FFFFFF00FFFFFF0000000000000000000000000000000000008400008484
        84000084000084848400FFFFFF00FFFFFF00FFFFFF0084848400008400008484
        8400FFFFFF00FFFFFF0084848400FFFFFF000000000000000000000000000000
        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
        0000000000008484840084848400848484008484840084848400848484008484
        8400848484008484840084848400000000000000000000000000}
    end
    object btnContrair: TdxBarButton
      Action = ActContrair
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF000000
        00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnExpandir: TdxBarButton
      Action = ActExpandir
      Category = 0
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000000000000000000000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000FF00FF000000
        0000FF00FF00FF00FF00FF00FF0000000000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF0000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0000000000FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
    end
    object btnImprimir: TdxBarButton
      Caption = 'ActImprimir'
      Category = 0
      Visible = ivAlways
      ImageIndex = 34
    end
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Action = ActFirst
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrior1: TdxBarDBNavButton
      Action = ActPrior
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Action = ActNext
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Action = ActLast
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnLast
    end
    object dxBarDBNavDelete1: TdxBarDBNavButton
      Action = ActDelete
      Category = 1
      Enabled = False
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        80008080008080000000008080008080008080000000FFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080000000008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080000000008080000000008080008080
        000000000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000000
        00008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F0000007F7F7F0000000080
        8000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        8000808000808000000000808000808000808000808000808000000000000000
        0000000000000000008080008080008080008080008080000000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnDelete
    end
    object dxBarDBNavEdit1: TdxBarDBNavButton
      Action = ActEdit
      Category = 1
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800080800080800080800000000000000000000000000000000000000000
        00000000000000000000008080008080008080008080008080008080000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
        008080000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF0000
        00000000FFFFFF000000FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FF000000FFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF00FFFFFFFFFF00000000000000000000000000000000FFFF0000
        00FFFFFFFFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
        FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00000000
        00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFFFFF
        FFFFFFFFFFFFFF00000000000000000000000000FFFFFFFFFF00FFFF00000000
        000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000008080008080
        00808000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF00000000808000808000808000808000808000000000FFFF00
        0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000008080008080
        00808000808000000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF0000
        00FFFFFFFFFFFF00000000808000808000808000000000FFFF000000000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000008080008080008080
        0000000000FF000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0000000000808000808000808000808000808000000000808000808000000000
        0000000000000000000000000000000000008080008080008080}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnEdit
    end
    object dxBarDBNavPost1: TdxBarDBNavButton
      Action = ActSave
      Category = 1
      Enabled = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnPost
    end
    object dxBarDBNavCancel1: TdxBarDBNavButton
      Action = ActCancel
      Category = 1
      Enabled = False
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnCancel
    end
    object dxBarDBNavRefresh1: TdxBarDBNavButton
      Action = ActRefresh
      Category = 1
      Enabled = False
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777778087777777777780087777
        7777777700877777777777780877777777777770077777777777777007770000
        0777777008777800077777780087800007777777000000080777777778000877
        0777777777777777777777777777777777777777777777777777}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnRefresh
    end
    object dxBarDBNavInsert1: TdxBarDBNavButton
      Action = ActInsert
      Category = 1
      Enabled = False
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
      BarDBNavigator = dxBarDBNavigator1
      NavButton = dxbnInsert
    end
  end
  object ActionList1: TActionList
    Images = cxImageList1
    Left = 400
    Top = 4
    object ActFirst: TAction
      Caption = 'ActFirst'
      Hint = 'Primeiro '
      ShortCut = 16420
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Caption = 'ActPrior'
      Hint = 'Anterior '
      OnExecute = ActPriorExecute
    end
    object ActNext: TAction
      Caption = 'ActNext'
      Hint = 'Pr'#243'ximo '
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Caption = 'ActLast'
      Hint = #218'ltimo '
      ShortCut = 16419
      OnExecute = ActLastExecute
    end
    object ActInsert: TAction
      Caption = 'ActInsert'
      Hint = 'Inserir '
      ShortCut = 45
      OnExecute = ActInsertExecute
    end
    object ActDelete: TAction
      Caption = 'ActDelete'
      Hint = 'Excluir '
      OnExecute = ActDeleteExecute
    end
    object ActEdit: TAction
      Caption = 'ActEdit'
      Hint = 'Editar '
      ShortCut = 117
      OnExecute = ActEditExecute
    end
    object ActSave: TAction
      Caption = 'ActSave'
      Hint = 'Salvar '
      ShortCut = 121
      OnExecute = ActSaveExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar '
      OnExecute = ActCancelExecute
    end
    object ActRefresh: TAction
      Caption = 'ActRefresh'
      Hint = 'Atualizar '
      ShortCut = 116
      OnExecute = ActRefreshExecute
    end
    object ActFilter: TAction
      Caption = 'ActFilter'
      Hint = 'Filtrar '
      ShortCut = 119
      OnExecute = ActFilterExecute
    end
    object ActFechar: TAction
      Caption = 'ActFechar'
      Hint = 'Fechar '
      OnExecute = ActFecharExecute
    end
    object ActESC: TAction
      Caption = 'ActESC'
      ShortCut = 27
      OnExecute = ActESCExecute
    end
    object ActContrair: TAction
      Caption = 'ActContrair'
      Hint = 'Contrair Dados'
      OnExecute = ActContrairExecute
    end
    object ActExpandir: TAction
      Caption = 'ActExpandir'
      Hint = 'Expandir Dados'
      OnExecute = ActExpandirExecute
    end
    object ActExportar: TAction
      Caption = 'ActExportar'
      Hint = 'Exportar para Excel'
      OnExecute = ActExportarExecute
    end
    object ActConfigurar: TAction
      Caption = 'ActConfigurar'
      Hint = 'Configurar Campos'
      OnExecute = ActConfigurarExecute
    end
    object ActCadLookup: TAction
      Caption = 'ActCadLookup'
      ShortCut = 115
      OnExecute = ActCadLookupExecute
    end
    object ActImprimir: TAction
      Caption = 'ActImprimir'
    end
    object ActLayout: TAction
      Caption = 'ActLayout'
      ShortCut = 122
      OnExecute = ActLayoutExecute
    end
  end
  object dsLink: TDataSource
    DataSet = dtList
    Left = 256
    Top = 4
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 432
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000000000000000000000000000000000000000000000000
          0000000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD6FE82DDA1FF6BDB91FF74DE98FFABEDC1FFECF5EFFFE4DC
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000000000000005D5D
          5D5DA3E2B4FF08B641FF00B642FF06B949FF06B949FF03B744FF2AC15EFFC1EF
          D0FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000000E0E0E0EA0C5
          A9D805B43DFF0ABB4EFF25C662FF31CA6CFF2AC867FF15C156FF04B948FF02B2
          39FFBBEBC9FFFFFBFFFFFDFDFDFF4545455500000000000000005959595953C7
          79FA00B53EFF5ED48BFFE4F8ECFFF1FCF5FFEBFAF1FFBBEECFFF32CA6CFF07B9
          47FF18B749FFEEFBF1FFFFFFFFFFAAAAAAAA0000000000000000939B95A033C3
          66FF10BF51FF96DFB2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF77DD9EFF1AC4
          5BFF00B135FF88D99FFFFFFFFFFFE1E1E1E10000000000000000839187983FC7
          70FF3BCC72FF65D490FFF6F9F7FFFFFFFFFFFFFFFFFFFFFEFFFF63D992FF2CCA
          69FF09BA4AFF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5BC9
          81F754D183FF65DA93FF8CDFADFFC3EDD4FFC4EBD4FF98E5B8FF50D988FF38CD
          72FF13BE53FF1EBD56FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D71B9
          8AD75ED289FF78DEA0FF94E7B6FFF6FEF9FFF6FDF9FF9AEBBDFF5DDB8FFF3ECF
          76FF10BD50FF24BD59FFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          617577D799FF85DFA7FF9DE3B8FFFFFEFFFFFFFFFFFFBEEFD1FF5CD88DFF47CF
          7BFF05B946FF59CC7EFFFFFFFFFF464646460000000000000000000000000000
          00008EBC9ECF8CDEA9FF9CE4B7FFB0E6C4FFBEEACEFF81DDA4FF63D790FF46CD
          79FF1DBD57FFCBEFD7FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D79FE2B6FFA2E6BBFF93E2B1FF88DFA9FF73D898FF57CE
          80FFB1E7C2FFB0B0B0B000000000000000000000000000000000000000000000
          0000000000001010101078877D8FA7D2B4E5B1E8C4FFABE6BEFFA9E5BCFFC5DF
          CCEC939393930000000000000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000401A1A1AAB474747D7464646981C1C
          1C37000000000000000000000000000000000000000000000000000000000000
          00070000001C4439415D8E848BB8B4ADB1F1C7BFC4FFC0B6BCFFAEA8ADFF9E9E
          9EED787878AC1414143E00000020000000170000000000000000000000000402
          0412A0999DB6B6E6C4FF67D58CFF55D482FF5ED787FF8CE3A8FFD9F3E0FFF1E8
          EEFFD7D5D6FFCACACAEA272727530000003D0000002E00000002000000008180
          818177D691FF00B236FF04B848FF15BF55FF0CBC4EFF01B744FF0AB746FF8CDF
          A4FFFFFBFFFFEEEDEEFFD3D3D3E20C0C0C380000002700000004242424248CCB
          9DEA00B136FF1EC35EFF21C45FFFB0E3C3FF77DD9FFF1DC45DFF16C057FF00AE
          31FF7ED695FFFFFFFFFFFFFFFFFF7B7B7B800000000000000000797B797C3EC4
          6AFE0DBC4FFF33CA6EFF3DD178FF67D592FF69DD98FF41D37BFF35CC6FFF19C0
          5AFF00AF31FFC1EACBFFFFFFFFFFD6D6D6D6000000040000000095A499AB33C3
          66FF31C86AFF4ED382FF58DC8EFF90E2B1FFA6EFC5FF4ADB86FF48D47FFF2FC9
          6AFF02B642FF52C874FFFFFFFFFFF3F3F3F31B1B1B1B00000000616B64704CCA
          79FD4CCF7DFF67DA94FF78E5A6FF86E1ACFFE0F2E7FF92EDBAFF4AD884FF38CE
          72FF13BE54FF1DBC52FFF7FCF8FFF4F4F4F41C1C1C1C000000002121212168C1
          86E75AD287FF78DDA0FF85E4ABFF87EAB1FF8BDEADFFEDF7F0FF75E1A1FF37CD
          71FF14BF55FF16B94DFFF1F9F2FFDDDDDDDD0000000600000000000000006686
          70956DD492FF82DFA6FF9FE4BAFFA8ECC3FF73E1A0FFDDF4E6FFA3EABFFF3BCD
          73FF0CBB4DFF35C263FFFFFFFFFF7A7A7A7A0000000000000000000000001414
          14148FCAA1E58CDFA9FF9DE2B8FFB6E7C9FFBBEBCEFFCAEED8FF6ED996FF45CD
          79FF0FBA4CFFAAE4BBFFBCBCBCBC000000070000000000000000000000000000
          00002C2E2C2F9BCAA9E2A0E4B8FFA3E4BAFFA2E2BAFF80DCA3FF6DD795FF52CD
          7EFF94DEABFFC9C8C8C90C0C0C0C000000000000000000000000000000000000
          0000000000001515151573867990A0CCAEE0AEE6C2FDABE6BFFFA7E4BBFFB9DA
          C1EA9B9A9B9B0D0D0D0D00000000000000000000000000000000000000000000
          0000000000000000000000000000202020206F6D6F6FB6B3B4B98F8D8F8F3232
          3232000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F83F0000C0030000800100008001000000030000000300000001
          000000010000000300008003000080070000C0070000E00F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003B151415A6454545DF494949A92424
          2444000000000000000000000000000000000000000000000000000000000000
          00000000001D3D343A59887F84B2ADA8ABEFC2BCC0FFC0B7BDFFB1A9AEFFA09F
          A0F3848484BD2525255000000023000000200000000000000000000000000100
          01109C9298AEB6E6C4FF68D68EFF4FD37EFF54D481FF7FE0A0FFCAF0D6FFF4EB
          F1FFD9D6D8FFD7D8D7FA4646466D000000360000003B0000000D000000007C7C
          7C7C7ED998FF00B338FF03B847FF1ABF57FF13BE53FF03B745FF03B643FF6DD5
          8EFFFAFBFBFFF0EDEFFFEBEBEBF82828284E00000028000000112020202090CB
          A1E800B137FF1CC25CFF1AC35BFF9DDEB6FFE7FAEFFF2CC868FF19C058FF00B0
          35FF50C974FFFFFFFFFFFEFEFEFFB1B1B1B400000000000000007878787942C6
          6EFE0CBC4DFF30CB6CFF25CB67FF95DDB0FFFFFFFFFF42D37CFF28CA67FF21C4
          60FF00AF31FF94DDA9FFFFFFFFFFF8F8F8F81E1E1E1E0000000095A199A736C5
          69FF26C563FF72D598FFCFF5DFFFD6F2E2FFFFFFFFFF9EEBBEFF6FDE9BFF33CB
          6EFF0CBB4DFF25BD55FFF8FDFAFFFFFFFFFF4343434300000000636A656D50CA
          7BFC42CD77FF81D6A1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF46D2
          7DFF18C159FF07B440FFD4F1DDFFFFFFFFFF45454545000000001D1D1D1D6DC1
          8AE559D185FF77D99CFF90DFAFFFB8E8CBFFFFFFFFFFC7EDD6FFC2EBD2FF50D4
          83FF1AC25BFF05B33EFFCCEFD7FFFCFCFCFC2222222200000000000000006783
          718F6DD592FF85DFA8FF7FE2A6FF9CE2B7FFFFFFFFFF93E8B5FF54D587FF4CD1
          7FFF19C059FF13B94AFFEFFAF2FFAEAEAEAE0000000000000000000000001010
          101091C7A2DE8ADDA7FF9BE5B8FFA1E2BAFFF0F7F2FFA2E7BDFF64D890FF4ED0
          7FFF16BC52FF81D9A0FFDFDFDFDF171717170000000000000000000000000000
          00002424242496C3A4D7A0E3B7FFA5E5BCFF9BE0B5FF8CDFABFF75D99AFF56CE
          81FF7FD99DFFDEE2DFE524242425000000000000000000000000000000000000
          0000000000001010101070807588A0CAAEDDAEE6C1FCACE7C0FFA6E4BBFFB7DE
          C2F0ADABADAD1F1E1F1F00000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A67666767AEABADAF979597973E3E
          3E3E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F83F0000C0030000800000008000000000030000000100000001
          000000010000000100008003000080030000C0070000E00F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003B151514A6454545DF494949A92424
          2344000000050000000000000000000000000000000000000000000000000000
          00080000001D3D362F5988817CB2AEA9A6EFC2BDBAFFC0BAB3FFB1ABA6FFA0A0
          A0F3848484BD2525255000000023000000200000000500000000000000000100
          00109C948DAEB7D7FAFF69B7FFFF4EAFFFFF54B1FFFF7FC4FFFFCCE4FFFFF4EE
          E8FFD9D7D5FFD7D7D8FA4646466D000000360000003B0000000D000000007C7C
          787C7FBDFFFF007FFFFF008CFFFF0599FFFF0296FFFF008AFFFF0085FFFF6FB6
          FFFFFBFCFBFFF0EEEBFFEBEBEBF82828284E000000280000001120201D2093B8
          E6E80080FFFF009EFFFF00A4FDFF7FC2EDFF9CE0FFFF00A4FFFF009CFFFF007E
          FFFF52A4FFFFFFFFFDFFFEFEFEFFB1B1B1B400000000000000007878757943A1
          FEFE0092FFFF00ADFFFF00BFFFFF20BBF2FF3FCCF8FF00C1FFFF00B4FFFF00A1
          FFFF007AFFFF96C6FFFFFFFFFFFFF8F8F8F81E1E1E1E00000000979DA3A72F9E
          FFFF0FA6FFFF16BDFFFF0DD3FFFF26CCF3FF70DDF4FF00DAFFFF00C4FFFF00AF
          FFFF0092FFFF2590FFFFF9FBFFFFFFFFFFFF434343430000000064676B6D4AA8
          FCFC2EB1FFFF34C7FFFF2DDCFFFF36D8F5FFA3EBF6FF08ECFFFF03CFFFFF00B7
          FFFF009FFFFF0283FFFFD5E8FFFFFFFFFFFF45454545000000001D1D1C1D6AAA
          E4E546B5FFFF52CBFFFF4BDCFFFF4BD6F6FFD5EDF7FF30EAFFFF18D2FFFF07B9
          FFFF00A0FFFF0082FFFFCEE4FFFFFCFCFCFC222222220000000000000000687A
          8D8F66BAFFFF6FCDFFFF67D6FFFF62D1F7FFF3F3F9FF64E2FFFF2CCCFFFF20BA
          FFFF009AFFFF118AFFFFF0F6FFFFAEAEADAE0000000000000000000000001010
          0F1091B7DCDE83C8FFFF8CD8FFFF78CFF9FFD1E2F3FF7ED9FFFF3FC3FFFF31B4
          FFFF0892FFFF82C0FFFFDFDFDDDF171717170000000000000000000000000000
          00002424232496B6D6D79DD1FFFF9ED7FFFF88CFFAFF78CCFFFF66C2FFFF4EAF
          FFFF7EBFFFFFDEE1E3E524242325000000000000000000000000000000000000
          00000000000010100F10707B8788A1BEDCDDAED7FCFCABD7FFFFA6D3FFFFB8D2
          EFF0ADACAAAD1F1F1D1F00000000000000000000000000000000000000000000
          00000000000000000000000000001A1A191A67676467AFACA9AF979792973E3E
          3B3E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F83F0000C0030000800000008000000000030000000100000001
          000000010000000100008003000080030000C0070000E00F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC444444931515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A24272A4F71757AAE9DA0A4EFB1B4B7FFAAADB1FF9E9FA0FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E767A809BF3E7D9FFF3D3A9FFF5CE9CFFF7D2A2FFFDE5C8FFF8F4EFFFDADE
          E2FFD2D2D2FFACACABCE0A0A0A3E000000410000002500000000000000005C5F
          5F5FF2D9BAFFE1A255FFE0A55BFFE2AA64FFE1A962FFE0A459FFE5B06CFFFAE9
          D3FFF2F6F9FFEAEBEBFFA4A4A4BB0000003000000030000000000F101010CEC1
          ADD9DFA051FFE3AF6FFFE9BC85FFE9BD87FFE8BC85FFE7B97FFFE1AA64FFDD9D
          4CFFF7E4CBFFF9FCFFFFFDFDFDFF4747475600000000000000005B5C5C5CE4BB
          85FBE0A860FFEAC18EFFE6C191FFE8D8C3FFF6E1C8FFEBC697FFE9BF8AFFE1AA
          65FFDFA358FFFEF8F1FFFFFFFFFFACACACAC00000000000000009D9B96A1E5B4
          76FFE6B77CFFECC799FFE3CFB6FFFCFEFFFFFFFFFFFFF6E4CDFFECC99DFFE7BC
          86FFDD9E4EFFEECEA4FFFFFFFFFFE2E2E2E20000000000000000928D8696E7BA
          82FFECC593FFE3C69FFFE8DFD3FFFDFDFCFFFFFFFFFFFBFCFCFFF1DBC1FFEAC2
          91FFE2AB66FFE4B274FFFFFFFFFFECECECEC14141414000000004B4A484CE2BE
          8FF6EBC79AFFF4DBBBFFE9D3B7FFECE5DBFFFFFFFFFFF8F1E9FFEDD5B8FFECC8
          99FFE4B170FFE2AB66FFFEFCF9FFE6E6E6E60B0B0B0B000000000B0B0B0BC8AF
          91D5ECC89AFFF2DABCFFF2DDC4FFE7DBCCFFFBFAFAFFFDF9F6FFF3DBBDFFECC8
          9AFFE4AF6DFFE2AD6AFFFFFDFDFFB5B5B5B50000000000000000000000006A64
          5D6EEECEA5FFF2DABBFFF5E1C6FFEDDAC2FFE8D6C1FFECDAC3FFF2D8B7FFEBC7
          98FFE1A75FFFE9BF8BFFFFFFFFFF414141410000000000000000000000000000
          0000BDAF9CC5F1D6B4FFF4E1C9FFF6E3CAFFF5E0C4FFF3D9BAFFEECFA9FFEAC2
          90FFE3AE6BFFF8ECDEFF85858585000000000000000000000000000000000000
          000015151515C2B5A3CAF2DBBEFFF4E0C7FFF4DFC4FFF1D8B8FFEFCEA7FFEAC2
          90FFF5E4CDFFA4A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A7F7A7482D4C5B2DCF2DFC7FCF4E0C6FFF4E0C5FFDDD5
          CAE4848686860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A696B6B6BABADAFB0818484842526
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC444444931515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A24272A4F71757AAE9DA0A4EFB1B4B7FFAAADB1FF9E9FA0FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E767A809BF3E7D9FFF3D3A9FFF5CE9CFFF7D2A2FFFDE5C8FFF8F4EFFFDADE
          E2FFD2D2D2FFACACABCE0A0A0A3E000000410000002500000000000000005C5F
          5F5FF2D9BAFFE1A255FFE0A55BFFE2AA64FFE1A962FFE0A459FFE5B06CFFFAE9
          D3FFF2F6F9FFEAEBEBFFA4A4A4BB0000003000000030000000000F101010CEC1
          ADD9DFA051FFE3AF6FFFE8BB85FFE9BE88FFE8BD87FFE7B97FFFE1AA64FFDD9D
          4CFFF7E4CBFFF9FCFFFFFDFDFDFF4747475600000000000000005B5C5C5CE4BB
          85FBE0A961FFE9BF8BFFECC799FFEDD5B5FFF0D6B5FFECC799FFE9BF8AFFE1AA
          66FFDFA358FFFEF8F1FFFFFFFFFFACACACAC00000000000000009D9B96A1E5B4
          76FFE6B77CFFEDC99DFFEFDCC4FFFCFCFCFFFBF1E6FFF3DDC2FFEDCCA3FFE7BC
          85FFDD9E4EFFEECEA4FFFFFFFFFFE2E2E2E20000000000000000928D8696E7BA
          82FFEBC390FFE4C9A7FFFAFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFF7E9D6FFE9C1
          8DFFE2AB66FFE4B274FFFFFFFFFFECECECEC14141414000000004B4A484CE2BE
          8FF6ECC89BFFEED3B1FFE5D6C2FFFDFDFDFFFEFDFDFFFDFEFFFFF9F0E4FFEBC4
          93FFE4B171FFE2AB66FFFEFCF9FFE6E6E6E60B0B0B0B000000000B0B0B0BC8AF
          91D5ECC89AFFF4DBBDFFF0DBC1FFE9DFD0FFF4EDE3FFE9DAC6FFECD9C0FFEDC8
          9AFFE4AF6DFFE2AD6AFFFFFDFDFFB5B5B5B50000000000000000000000006A64
          5D6EEECEA5FFF2D9BAFFF6E2C8FFF0DDC6FFF1E1CCFFF6E2C9FFF0D5B3FFEBC7
          99FFE1A75FFFE9BF8BFFFFFFFFFF414141410000000000000000000000000000
          0000BDAF9CC5F1D6B4FFF4E1C9FFF5E1C9FFF4DFC4FFF2D9BAFFEED0A9FFEAC2
          90FFE3AE6BFFF8ECDEFF85858585000000000000000000000000000000000000
          000015151515C2B5A3CAF2DBBEFFF4E0C7FFF4DFC5FFF2D8B9FFEFCEA7FFEAC2
          90FFF5E4CDFFA4A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A7F7A7482D4C5B2DCF2DFC7FCF4E0C6FFF4E0C5FFDDD5
          CAE4848686860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A696B6B6BABADAFB0818484842526
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000002D0C0C0C84333333A73131316C0C0C
          0C20000000000000000000000000000000000000000000000000000000000000
          000000000016181B1E4261656AA08D9093E7A4A7ABFFA0A4A8FF979899FC9191
          91E05D5D5D8E01010129000000210000000E0000000000000000000000000000
          000E64686E8DEAE1D4F9F2D4AEFFF5CF9FFFF8D5A8FFFDE8CDFFF3F2F0FFD5D9
          DDFFD0D0D0FF9F9F9FC40606063A000000410000002200000000000000005053
          5454F2DBBEFFE2A557FFDFA55AFFE1A963FFE1A862FFE0A458FFE8B371FFFBEB
          D7FFEFF3F7FFEAEAEBFF989898B10000003100000032000000000B0B0B0BCABE
          ACD4DFA153FFE3AF6DFFE7BB83FFE9BF8AFFE9BD87FFE7B87DFFE1A962FFDE9E
          4EFFF8E6D0FFF8FBFEFFFCFCFCFF3F3F3F51000000000000000054555555E3BA
          86F9E0A760FFEAC08BFFEDC89AFFEDCDA5FFEDD1AEFFEDC89BFFE8BF8AFFE1A9
          63FFE0A45BFFFEF9F3FFFFFFFFFFA6A6A6A600000000000000009B99959FE5B3
          76FFE7B77BFFE8C59AFFF4E3CEFFF3E3CEFFF5F0E9FFF6E1C7FFECC89BFFE7BC
          86FFDD9D4EFFEFCEA7FFFFFFFFFFE1E1E1E1000000000000000095908999E6B9
          80FFECC491FFE3C6A2FFF8F9FAFFFFFFFFFFFFFFFFFFFEFDFBFFF3DBBEFFEAC3
          91FFE2AB65FFE5B375FFFFFFFFFFECECECEC1414141400000000504F4D51E2BD
          8FF7EDC99BFFE8CDABFFF0EBE6FFFCFCFBFFFFFFFFFFFFFFFFFFF6EDE2FFEBC5
          95FFE4B071FFE2AB66FFFEFCF9FFE8E8E8E80D0D0D0D000000000F0F0F0FCBB3
          94D9ECC89BFFF1D8B9FFEDD9C0FFEBDBC7FFF6F2EDFFF5EFE8FFECD4B6FFECC8
          9BFFE3AF6EFFE2AD69FFFFFDFCFFBBBBBBBB000000000000000000000000746E
          6678EECDA4FFF2DABCFFF6E1C8FFF6E4CDFFECDDCAFFF2DDC3FFF2D8B6FFECC7
          99FFE1A860FFE9BE89FFFFFFFFFF494949490000000000000000000000000000
          0000C9BAA6D2F1D5B3FFF5E2C9FFF4E1C8FFF4DEC3FFF2DABBFFEFD0A9FFE9C2
          90FFE3AC69FFF8EBDBFF94949494000000000000000000000000000000000000
          00001F1F1F1FD0C1AFD8F3DBBEFFF4E0C7FFF4DFC4FFF1D9B8FFEFCFA7FFE9C1
          8EFFF4E1C8FFB0B1B1B100000000000000000000000000000000000000000000
          000000000000111111118D878090DCCDB8E5F5E2C9FFF4E0C5FFF4DEC3FFE6DC
          D0EC929494940000000000000000000000000000000000000000000000000000
          0000000000000000000000000000282828288F909292DBDDDFDFABAEAEAE3637
          3737000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC444444931515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A24272A4F71757AAE9DA0A4EFB1B4B7FFAAADB1FF9E9FA0FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E767A809BF3E7D9FFF3D3A9FFF5CE9CFFF7D2A2FFFDE5C8FFF8F4EFFFDADE
          E2FFD2D2D2FFACACABCE0A0A0A3E000000410000002500000000000000005C5F
          5F5FF2D9BAFFE1A255FFE0A55BFFE2AA64FFE1A962FFE0A459FFE5B06CFFFAE9
          D3FFF2F6F9FFEAEBEBFFA4A4A4BB0000003000000030000000000F101010CEC1
          ADD9DFA051FFE3AF70FFE8BB84FFE8BC85FFE8BC84FFE7B87EFFE1AA64FFDD9D
          4CFFF7E4CBFFF9FCFFFFFDFDFDFF4747475600000000000000005B5C5C5CE4BB
          85FBE1A861FFE9BE89FFEACAA2FFF5E3CBFFF3DEC3FFEDCBA0FFE9BF8AFFE1AA
          66FFDFA358FFFEF8F1FFFFFFFFFFACACACAC00000000000000009D9B96A1E5B4
          76FFE6B67BFFEFCC9FFFE2C8A8FFFAFDFFFFFFFFFFFFF5E1CAFFECC99DFFE7BC
          85FFDD9E4EFFEECEA4FFFFFFFFFFE2E2E2E20000000000000000928D8696E7BA
          82FFEAC390FFF0D5B2FFEEDCC7FFF7F4F1FFFFFFFFFFFAF1E5FFF1D6B3FFE9C4
          93FFE2AB66FFE4B274FFFFFFFFFFECECECEC14141414000000004B4A484CE2BE
          8FF6EDC99BFFEBD0ADFFE3D6C5FFFFFFFFFFFFFFFFFFFFFFFFFFF0DFCBFFEBC5
          95FFE4B070FFE2AB66FFFEFCF9FFE6E6E6E60B0B0B0B000000000B0B0B0BC8AF
          91D5ECC89AFFF4DCBEFFEBD5B9FFE4D7C7FFFEFFFFFFF4EDE4FFECD3B3FFECC9
          9BFFE4AE6DFFE2AD6AFFFFFDFDFFB5B5B5B50000000000000000000000006A64
          5D6EEECEA5FFF2D9BAFFF8E3CAFFEDD9BFFFE4D5C2FFF1DDC5FFF2D8B6FFEBC7
          98FFE1A75FFFE9BF8BFFFFFFFFFF414141410000000000000000000000000000
          0000BDAF9CC5F1D6B4FFF4E1C8FFF6E2CAFFF2DBBFFFF2D9B9FFEED0A9FFEAC2
          90FFE3AE6BFFF8ECDEFF85858585000000000000000000000000000000000000
          000015151515C2B5A3CAF2DBBEFFF4E0C7FFF4DFC5FFF2D8B9FFEFCEA7FFEAC2
          90FFF5E4CDFFA4A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A7F7A7482D4C5B2DCF2DFC7FCF4E0C6FFF4E0C5FFDDD5
          CAE4848686860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A696B6B6BABADAFB0818484842526
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003F1A1A1AAA464646D7454545971C1C
          1C36000000000000000000000000000000000000000000000000000000000000
          00070000001C42373F5C8D848AB8B3ACB1F1C6BEC3FFBFB6BCFFAEA8ACFF9E9D
          9EED777777AC1313133D00000021000000170000000000000000000000000402
          03139F979CB5B7E7C6FF68D58DFF58D585FF5FD78AFF8DE4A9FFD9F3E1FFF1E8
          EEFFD7D5D6FFC9C9C9E9262626530000003D0000002E0000000200000000807F
          808079D795FF00B237FF05B948FF02BA47FF00B845FF02B744FF0AB848FF8EE0
          A7FFFFFBFFFFEEEDEEFFD2D2D2E10C0C0C380000002800000004232323238CCB
          9EE900B137FF0EBF52FF1CC45CFFA8E7C1FF96E4B5FF1BC45BFF06BB4BFF00AF
          31FF80D899FFFFFFFFFFFFFFFFFF7B7B7B7F0000000000000000797B797C3DC5
          6BFE08BB4BFFA6E9C0FF6EDB99FFADE0BFFFD9F8E6FF50D786FF82E0A7FF18C1
          59FF00AF32FFC2ECCEFFFFFFFFFFD5D5D5D5000000040000000095A39AAB33C4
          67FF29C263FFBFE3CCFFE2F5E9FF88DAA8FF98E9BAFFCEF3DDFFFAF9F9FF44CF
          7AFF00B53CFF54C977FFFFFFFFFFF2F2F2F21A1A1A1A00000000626C65704DCA
          7AFD49CF7CFF63D58FFF8BDDABFFB1E3C4FFB7E5C8FF96DFB2FF5BD289FF30CC
          6DFF13BE54FF1DBB54FFF8FDF9FFF3F3F3F31C1C1C1C000000002020202069C2
          88E74FCE7FFFD0EFDCFFFFFFFFFFABECC6FFA4E5BEFFADE3C2FFFFFFFFFF6DDB
          98FF08BC4DFF17BA4FFFF1FBF4FFDDDDDDDD0000000600000000000000006686
          70946AD490FF8ED9AAFF99E2B5FFADECC7FFFFFFFFFF84DEA8FF93D8ACFF5CD3
          8AFF06BA48FF36C366FFFFFFFFFF787878780000000000000000000000001313
          13138EC9A2E388DEA8FF95E5B4FF9DE0B6FFC3E8D0FF8EE3AFFF55D486FF43CD
          77FF10BA4EFFABE5BEFFB9B9B9B9000000060000000000000000000000000000
          00002B2C2B2D99CAA9E1A1E4B8FFA4E6BCFF8FDFAEFF85DFA6FF72D898FF51CD
          7DFF94DFADFFC7C6C7C70B0B0B0B000000000000000000000000000000000000
          000000000000141414147285788E9FCCAEE0B0E6C3FDAAE6BFFFA6E4BAFFB9DA
          C2EA999899990C0B0C0C00000000000000000000000000000000000000000000
          00000000000000000000000000001F1F1F1F6E6C6E6EB5B3B5B98F8D8F8F3131
          3131000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000F83F0000C0030000800100008001000000030000000300000001
          000000010000000300008003000080070000C0070000E00F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE484848DA444444941515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A2C2C254F7E7E72AEA7A79EEFBBBBB2FFB6B6AAFFA1A19EFF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E8484779BD0D0F0FF8686ECFF6D6DEBFF7878EEFFB2B2F8FFEFEFF7FFE5E5
          DBFFD2D2D2FFABABACCE0A0A0A3E000000410000002500000000000000005F5F
          5D5FA4A4ECFF0909D1FF0000D0FF0000D3FF0000D3FF0000D0FF2E2ED8FFC3C3
          F7FFFCFCF3FFEBEBEAFFA4A4A4BB00000030000000300000000010101010A1A1
          CCD90303CEFF0000D6FF0606DCFF0000DDFF0000DEFF0000D9FF0000D3FF0303
          CDFFBEBEF3FFFFFFFAFFFDFDFDFF4747475600000000000000005B5B5B5B5454
          DAFB0000D0FF7777ECFFCDCDFBFF0C0CE6FF0909E7FF8181F0FF0606DFFF0000
          D3FF1818D0FFEFEFFDFFFFFFFFFFACACACAC000000000000000097979FA32D2D
          D8FF0000D9FF7777D8FFFFFFFAFFBCBCFBFFADADFAFFFFFFFFFF9999EBFF0000
          D9FF0000CDFF8A8AE7FFFFFFFFFFE2E2E2E20000000000000000828291963737
          DBFF1F1FE1FF0A0AE2FF7A7ADBFFFFFFFEFFFFFFFFFFE6E6ECFF4747CCFF0000
          E2FF0000D3FF3E3ED8FFFFFFFFFFECECECEC141414140000000048484B4C5555
          D9F63939E2FF3838EDFF9797F7FFFFFFFFFFFFFFFFFFBFBFEEFF0000E9FF0000
          E2FF0000D6FF1E1ED4FFFAFAFDFFE6E6E6E60B0B0B0B000000000B0B0B0B6F6F
          C1D54646E3FF7C7CE8FFFFFFFEFFFDFDFAFFC5C5E3FFFFFFFFFFAFAFFDFF0F0F
          E3FF0000D5FF2525D5FFFDFDFEFFB5B5B5B50000000000000000000000005656
          696E7373E7FF6D6DE9FFB0B0E4FFA9A9E1FF3B3BE6FFBBBBE6FFEDEDE7FF2B2B
          D9FF0000D3FF5F5FDEFFFFFFFFFF414141410000000000000000000000000000
          00008989B9C58787ECFF8B8BEEFF7878EDFF6D6DF2FF5B5BE5FF4F4FD5FF2828
          E1FF1919D5FFD1D1F6FF85858585000000000000000000000000000000000000
          0000151515159292BECA9E9EEDFFA0A0F0FF9393EEFF7A7AECFF6363E8FF5656
          E0FFB7B7F1FFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A6E6E7D82A0A0CFDCAEAEEDFCABABEFFFACACEFFFC2C2
          DBE4868684860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6A6BB4B4AFB4858583852626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD6FE82DDA1FF6BDB91FF74DE98FFABEDC1FFECF5EFFFE4DC
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF07B640FF00B53FFF07BA4AFF0AB94BFF03B744FF29C15DFFC1EF
          D0FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0EA0C5
          AAD804B33BFF17BD56FF49CE7BFF32CB6DFF1AC45BFF1CC35BFF09BA4BFF01B2
          39FFBBEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005959595953C7
          79FA03B946FF27C564FF58CD84FFC9EDD7FFA6EAC0FF44D17CFF1EC45EFF0BBA
          4BFF18B749FFEEFBF1FFFFFFFFFFAAAAAAAA0000000000000000939B95A033C3
          66FF1CC25BFF45D27CFFACEDC7FFF4FAF7FFFFFFFFFFF0FCF5FF66DA93FF18C3
          5AFF00B136FF87D99FFFFFFFFFFFE1E1E1E10000000800000000839187983EC7
          70FF39CA71FFD8F5E4FFE2F4E9FFDBF3E4FFD4F0DFFFF0F9F3FFFFFFFFFF6EDA
          98FF00B741FF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F57C9
          7FF75BD087FFFFFFFFFFA4ECC2FFABEAC4FF99EDBEFFC6F2D9FFFFFFFFFFE8FA
          EFFF12BF52FF1DBC54FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D71B9
          8BD755CE82FFDCF0E4FFD7F6E3FFCFF0DDFFB9F0D0FFE2F6EAFFFFFFFFFFE4F6
          EBFF0EBC4EFF22BE58FFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          617574D797FF88DBA7FFCEECDAFFE0F3E8FFF1FAF5FFE4F5EBFFECF6EFFF69D1
          90FF00B63FFF5ACC7EFFFFFFFFFF464646460000000000000000000000000000
          00088FBC9FCF89DDA7FF99E2B5FFA4E2BCFFAFE5C3FF9FE0B7FF63D18DFF3CCA
          72FF1EBE58FFCBEFD7FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D79FE3B6FFA4E7BCFF96E3B3FF82DEA4FF71D997FF57CE
          81FFB1E7C2FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA6D2B3E5B1E8C3FFABE6BEFFA9E5BCFFC5DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD6FE82DDA1FF6BDB91FF74DE98FFABEDC1FFECF5EFFFE4DC
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF08B641FF00B644FF0ABA4BFF09B94AFF03B744FF29C15DFFC1EF
          D0FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0EA0C5
          AAD804B33CFF12BE53FF23C561FF25C663FF25C663FF17C157FF08BA4AFF02B2
          39FFBBEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005959595953C7
          79FA03B846FF1EC45EFF8BDCA9FFA1E9BEFF78DCA0FF9FE7BCFF22C661FF0BBA
          4AFF18B749FFEEFBF1FFFFFFFFFFAAAAAAAA0000000000000000939B95A032C3
          65FF21C35EFF3BCF75FF69D492FFACECC6FF91E2B1FFA5E9C0FF35CF72FF28C7
          65FF00B135FF88D99FFFFFFFFFFFE1E1E1E10000000800000000839187983FC7
          70FF40CC75FF55D788FF83E0A8FFC5EFD7FFA7E9C2FFAFEAC7FF4DD885FF33CB
          6DFF09BA4AFF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5BC9
          81F754D183FF5FD98FFF9EE2B9FFC9F1DAFF9AE8BAFFBFEBD0FF83E4AAFF2DCC
          6BFF13BE53FF1EBD56FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D71B9
          8AD758D085FF94E2B2FFECF9F1FFE2F8EBFFB3ECCAFFC4EDD5FFBAECCDFF33CD
          6FFF10BD50FF24BD59FFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          617573D796FF98DFB3FFBEEACEFFAAE6C1FF8ADFABFF84DDA7FF6BD795FF47CF
          7BFF05B846FF59CC7EFFFFFFFFFF464646460000000000000000000000000000
          00088FBC9FCF89DDA7FF98E4B5FF92E4B2FF8EE4AFFF7CDFA3FF63D790FF46CD
          79FF1DBE57FFCBEFD7FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D79EE2B6FFA8E7BFFF9DE4B8FF89DFA9FF73D898FF57CE
          80FFB1E7C2FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA6D2B4E5B1E8C3FFABE6BEFFA9E5BCFFC5DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD6FE82DDA1FF6BDB91FF74DE98FFABEDC1FFECF5EFFFE4DC
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF08B641FF01B745FF03B946FF01B745FF04B745FF2AC15EFFC1EF
          D0FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0EA0C5
          AAD805B43DFF0CBC4FFF15C156FF43CE78FF43CE78FF10BF53FF00B844FF03B2
          39FFBBEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005959595954C7
          79FA00B740FF53D384FF7FE0A5FFC8F1D9FFE1F9ECFF6EDC99FF59D588FF03B8
          45FF18B749FFEEFBF1FFFFFFFFFFAAAAAAAA0000000000000000939B95A033C3
          66FF15C156FF62D18BFFFFFFFFFFD9F1E1FFC0E7CDFFFFFFFFFF9AE2B5FF0FC1
          54FF00B136FF88D99FFFFFFFFFFFE1E1E1E10000000800000000839187983DC7
          6FFF41CC76FFBCEECFFFEDFAF3FF74E3A2FF5CDF94FFB5E9CAFFCFF4DEFF59D5
          89FF01B743FF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5AC9
          81F750CD80FFC7E7D3FFEEFBF3FF8FEDB8FF7DEEB0FFAFF2CCFFF5F7F5FF77D5
          9BFF07BC4AFF1FBD56FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D71B8
          8AD75BD187FF75D89BFFFCFCFCFFF0FDF5FFC2F5D7FFFFFFFFFFC7EED6FF2BC6
          67FF11BE51FF24BD59FFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          617575D898FF8DDEACFFC1E7CEFFC5E9D3FFFFFFFFFFB8E6C9FFAFE1C2FF45CE
          7AFF04B846FF59CC7EFFFFFFFFFF464646460000000000000000000000000000
          00088EBC9ECF8BDDA8FF96E2B3FF94E1B1FFB0E2C3FF79DB9FFF56D085FF46CD
          79FF1EBE57FFCBEFD7FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D7A0E3B6FFA7E7BEFF94E2B2FF89DFA9FF74DA99FF56CD
          80FFB1E7C2FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA6D2B4E5B1E8C3FFABE6BFFFA9E5BCFFC5DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000200202027D343434CE4D4D4DBF323232610505
          0516000000000000000000000000000000000000000000000000000000060000
          00151A16193C6E636A939C9399E0B9B0B6FEBAB0B6FFACA5A9FF9C9B9CFA9494
          94D94F4F4F7B00000023000000220000000D000000000000000000000009685D
          6584D4E3DAF598E2B1FF70DB96FF71DD97FF92E6AEFFD3F4DEFFF9F0F6FFD7D2
          D5FFD5D5D5FF8B8B8BB0000000340000004300000023000000014D4D4D4DBEE9
          C8FF1CBB4DFF00B540FF07B949FF09BA4AFF05B846FF09B848FF62D388FFF0FB
          F3FFF2ECF1FFEDEDEDFF878787A10000002E0000003200000004A8C4B0D210B7
          44FF00B843FF15C156FF1FC55EFF21C660FF1CC45CFF0FBD50FF00B137FF30BF
          5BFFF1FBF4FFFAF8F9FFFDFDFDFF3333334500000003000000005FCA81F900B4
          3CFF5BD58AFF7EDFA5FF76DF9FFF72DE9EFF66DA94FF57D588FF2FC86AFF00B0
          34FF4FC773FFFFFFFFFFFFFFFFFF9E9E9E9E000000000000000036C468FF0CBC
          4FFFD7F2E1FFFFFFFFFFFFFFFFFFFFFEFFFFFFFFFFFFFFFFFFFFCFF2DCFF10BF
          53FF00AF32FFC1EBCDFFFFFFFFFFDADADADA000000040000000040C770FE2BC6
          66FFC5EDD4FFFFFFFFFFC2ECD3FF86DEABFFB6E9CAFFFFFFFFFFEEFAF3FF29C6
          66FF00B33BFF6BD089FFFFFFFFFFE6E6E6E60F0F0F0F000000005DC883F541CB
          75FFC2ECD2FFC0ECD1FFA4EBC1FFF7FFFBFFB7F0CFFF98E1B5FFEAF7EEFF3FCC
          75FF00B741FF45C772FFFFFFFFFFDEDEDEDE000000070000000070B087CC56D1
          84FF8CDCAAFFC1ECD2FFFAFCFAFFF9FBF9FFFFFDFFFFCFF1DDFFA2E0BAFF41CB
          76FF00B63FFF4DCA77FFFFFFFFFFA7A7A7A700000000000000004C57505C79D8
          9AFF82DDA4FF92DEAEFF8FDFAEFF8FDFAEFF88DDA9FF86D9A6FF6AD291FF33C8
          6CFF00B33AFF91DDA8FFFDFDFDFD303030300000000000000000000000007899
          82A78BDEA7FFA0E6BAFF9BE6B8FF8FE4B1FF83E1A8FF6EDB98FF55D385FF35C7
          6BFF36C468FFF0FAF3FF64646464000000000000000000000000000000000000
          00067D9986A6A0E3B6FFA7E6BDFFA5E6BDFF93E1B0FF80DDA3FF67D38EFF63D0
          88FFD6F2DFFF7777777700000000000000000000000000000000000000000000
          000000000000565C586098BBA3CBABDDBCF4B0E8C3FFA8E5BCFFB2E3C2FAC4CD
          C5D35C5C5C5C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000005484848489B989B9BB1ADB1B15C5C5C5C0C0C
          0C0C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F03F00008003000080010000000100000003000000030000000300000001
          000000030000000300000003000080070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000039161616A6464646D5444444921717
          172F000000000000000000000000000000000000000000000000000000000000
          0006000000172B27214C7E766EACA7A09AEEBBB5AFFFB6AFA8FFA19F9DFF9999
          99E96C6C6CA00909093200000021000000110000000000000000000000000000
          000F817A719AD2E4F6FF8AC6FFFF6EBCFFFF79C2FFFFB2DCFFFFEFF4F9FFE6E1
          D9FFD2D2D2FFB3B3B3D6101010440000003F0000002500000001000000005E5E
          585EA8D0FEFF0784FFFF0088FFFF008FFFFF008DFFFF0087FFFF2D97FFFFC0E1
          FFFFFEF8F0FFEBEAEAFFB0B0B0C50303033200000033000000050F0F0D0FA2BB
          D7D90480FDFF1E9EFAFF00A4FFFF00A5FFFF00A6FFFF009DFFFF008BFFFF017E
          FFFFB7D9FFFFFFFDF8FFFDFEFEFF5656566500000001000000005B5B575B54A6
          FAFA008AFBFF50A4D6FFA1D0EBFF6DD9FFFF48D2FFFF54CBFFFF63C1F6FF0792
          FCFF1084FFFFEAF4FFFFFFFFFFFFBCBCBCBC0000000000000000979B9DA32D9C
          FFFF04A1FFFF01B3FAFF2FB2DAFF95CAD9FFAFD5E3FF9BD2E2FF3EBCEDFF01A6
          FEFF0080FFFF80BAFFFFFFFFFFFFECECECEC1111111100000000828A939637A3
          FFFF1FAEFFFF22C5FFFF1FDCFFFF01E2F9FF00E3F4FF00D5FAFF00C5FFFF00B1
          FFFF0092FFFF3297FFFFFFFFFFFFF4F4F4F41F1F1F1F0000000047494B4C54AA
          F6F637B5FFFF3FC9FDFFEBF9FEFF82F9FFFF1EF7FFFFB2F9FFFF30D4FFFF00B3
          FFFF0099FFFF158DFFFFF2F7FFFFEFEFEFEF14141414000000000B0B0A0B6DA2
          D3D44DB7FFFF5BC6F6FFFFF2F2FFB6F9FFFF41DBF3FFFFFFFAFF8DE6FFFF00B2
          FFFF0097FFFF1B8FFFFFF7FAFFFFC4C4C4C40000000000000000000000005560
          6C6D72BEFFFF70CCFDFF8ECBEAFF7DDDFAFF51D5F8FFACD2E3FF64D3FBFF17B3
          FFFF008EFFFF51A6FFFFFFFFFFFF4E4E4E4E0000000000000000000000000000
          000586A4C2C388CAFFFF8CD8FFFF7CD6FFFF70D5FFFF4EC8FAFF40BEFDFF31B0
          FFFF1592FFFFC7E2FEFF93939193000000000000000000000000000000000000
          0000131312138FABC7C89DD0FFFFA0D7FFFF93D4FFFF7DCDFFFF68C0FFFF54AE
          FFFFB0D6FFFFAFAFACAF00000001000000000000000000000000000000000000
          000000000000000000096B757E809EBCD9DBADD6FBFCACD6FFFFAAD4FFFFC1D1
          E4E68C8C888C0000000500000000000000000000000000000000000000000000
          00000000000000000000000000001919171969696669B5B2AEB5898984892929
          2729000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000100000001
          0000000100000003000080030000C0070000C00F0000F01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434444931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A2D28234F7E776FAEA7A29CEFBBB5AFFFB6AFA7FFA29F9DFF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E847C749BCEE2F7FF83C3FFFF6ABBFFFF76C0FFFFADD9FFFFEDF2F7FFE6DF
          D8FFD2D2D2FFABABACCE0A0A0A3E000000410000002500000001000000005F5F
          5A5FA3CEFEFF0984FFFF0084FFFF0088FFFF0088FFFF0085FFFF2A96FFFFBFE0
          FFFFFDF7EFFFEBEBEAFFA4A4A4BB00000030000000300000000310100E10A1B9
          D6D90281FFFF0098FFFF48BAFFFF79CEFFFF63C8FFFF15AAFFFF008AFFFF017D
          FFFFBADAFFFFFFFDF7FFFDFDFDFF4747475600000001000000005C5C595C54A7
          FAFB008AFEFF56B4EBFF98CBE0FF90C7DCFFA4CDDEFFBAD3E3FF5CBCF6FF008E
          FFFF1586FFFFEDF6FFFFFFFFFFFFACACACAC0000000000000000969A9CA12D9C
          FFFF04A0FDFF10B2F3FF00C1F9FF00D0FAFF00CDF7FF0ABAE8FF4AAFD9FF14A8
          F9FF007FFFFF87BEFFFFFFFFFFFFE2E2E2E20000000900000000838A939638A4
          FFFF20AEFFFF21C6FFFF2CDAFFFF1AEAFFFF0BF2FFFF00DFFFFF00C5FFFF00AF
          FEFF0090FFFF3B9AFFFFFFFFFFFFECECECEC141414140000000049494A4C56AB
          F6F639B6FFFF39C8FBFFE7F8FDFF93FAFFFF19F5FEFFB5F8FEFF3CD5FFFF00B1
          FFFF0097FFFF1D91FFFFF9FBFFFFE6E6E6E60B0B0B0B000000000B0B0A0B71A3
          D4D54FB9FFFF51C3F3FFE3E0E7FFC6FCFEFF37D6F0FFFFFBF6FF9AEAFFFF00B0
          FFFF0095FFFF2493FFFFFCFDFFFFB5B5B5B50000000000000000000000005862
          6C6E73BEFFFF73CFFEFF70B7DCFF78D6F3FF4ED5F8FF8EBED6FF65D0F8FF17B3
          FFFF008BFFFF5EACFFFFFFFFFFFF414141410000000000000000000000000000
          00058BA7C4C588C9FFFF90DBFFFF7DD6FFFF72D5FFFF4DC8F9FF3FBDFCFF32AF
          FFFF1A94FFFFD1E7FEFF85858385000000000000000000000000000000000000
          00001515141594AFC9CA9DCFFFFFA0D6FFFF93D5FFFF7ECDFFFF68C0FFFF56AE
          FFFFB8DAFFFFA5A5A2A500000000000000000000000000000000000000000000
          0000000000000A0A090A6F788082A1BDDBDCAED5FBFCABD6FFFFADD5FFFFC2D1
          E1E4868682860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A181A6B6B686BB0ADAAB084847F842626
          2326000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434444931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A2D28234F7E776FAEA7A29CEFBBB5AFFFB6AFA7FFA29F9DFF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E847C749BCEE2F7FF83C3FFFF6ABAFFFF76C0FFFFADDAFFFFEDF2F7FFE6DF
          D8FFD2D2D2FFABABACCE0A0A0A3E000000410000002500000001000000005F5F
          5A5FA3CEFEFF0984FFFF0088FFFF008FFFFF008DFFFF0086FFFF2A95FFFFBFE1
          FFFFFDF7EFFFEBEBEAFFA4A4A4BB00000030000000300000000310100E10A1B9
          D6D90282FFFF0097FFFF00A4FFFF00A7FFFF00A9FFFF009EFFFF008EFFFF017D
          FFFFBADAFFFFFFFDF7FFFDFDFDFF4747475600000001000000005C5C595C55A6
          FAFB008DFFFF00A4FCFF83CDF5FF53D4FFFF11C0FFFF50CAFEFF13AEFFFF008E
          FFFF1586FFFFEDF5FFFFFFFFFFFFACACACAC0000000000000000969A9CA12E9C
          FFFF05A0FFFF00B2FEFF88D1F2FFFFFFFFFFECFCFFFFFFFFFFFF1BC0FFFF00A5
          FFFF007FFFFF87BDFFFFFFFFFFFFE2E2E2E20000000900000000838A939638A4
          FFFF1EAEFFFF20C4FDFFBAE9F8FFFFFFFFFFFFFFFFFFF7FEFFFF19CAFFFF00AE
          FFFF0090FFFF3B9AFFFFFFFFFFFFECECECEC141414140000000049494A4C57AB
          F6F62CB2FFFF85CFF4FFFDF8FAFFFFFFFFFFFFFFFFFFFFFFFFFFC8F3FFFF10B5
          FFFF0097FFFF1D91FFFFF9FBFFFFE6E6E6E60B0B0B0B000000000B0B0A0B71A3
          D4D54FB7FFFF58CAFCFF56CDF5FFC0E3F5FFFFFFFFFFBFEBF9FF8ED9F4FF26B9
          FCFF0094FFFF2493FFFFFCFDFFFFB5B5B5B50000000000000000000000005861
          6C6E73BEFFFF77CEFFFF66D6FFFF6ED2F6FFD8EDF8FF42D5FDFF1EC4FEFF1CB4
          FFFF008CFFFF5EACFFFFFFFFFFFF414141410000000000000000000000000000
          00058BA7C4C587C9FFFF94D8FFFF80D6FEFF6DCFFBFF5BCDFFFF48C0FFFF30AE
          FFFF1A94FFFFD1E7FEFF85858385000000000000000000000000000000000000
          00001515141594AFC9CA9DD0FFFFA0D6FFFF91D5FFFF7DCCFFFF68BFFFFF56AE
          FFFFB8DAFFFFA5A5A2A500000000000000000000000000000000000000000000
          0000000000000A0A090A6F788082A1BDDBDCAED5FBFCABD6FFFFADD5FFFFC2D1
          E1E4868682860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A181A6B6B686BB0ADAAB084847F842626
          2326000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD5FE82DDA1FF6ADB91FF74DE99FFACEDC1FFEDF5EFFFE4DB
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF03B53DFF00B137FF00B640FF00B53FFF00B239FF28C05BFFC1F0
          D2FFFCF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0E9FC4
          A9D805B238FF26C262FF87E0A9FF89E1AAFF82DFA5FF6CD895FF0BBA4DFF03B1
          38FFBCEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005858585854C8
          79FA00B338FF96DEB1FFEDF9F2FFDBF4E5FFDEF5E8FFEDF9F2FF8DE1ADFF00B5
          3CFF19B84AFFEFFAF2FFFFFFFFFFAAAAAAAA0000000000000000959D97A233C4
          65FF10BF52FF96DFB2FFB9EDCEFF8CE2AFFF8DE2AFFFAAE6C2FFAFEBC6FF16C3
          59FF00B135FF89D9A0FFFFFFFFFFE1E1E1E10000000800000000829187993EC7
          70FF33C96CFF97DFB3FFD1F3DFFFADE9C6FFAFEAC7FFB9EBCDFFB9EECEFF27C9
          66FF09BA4AFF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5AC9
          81F748CF7BFF9CE1B6FFDFF6E8FFBAEFD0FFBEF1D4FFBDEDD1FFC3F0D4FF2FCC
          6CFF13BE53FF1FBD57FFF9FDFBFFE7E7E7E70C0C0C0C000000000D0D0D0D70B8
          89D75BD287FF88DCA8FFD8F0E2FFD3F0DEFFFFFFFFFFFFFFFFFFD8F6E4FF38CD
          72FF0FBD50FF24BE5AFFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          607577D899FF83DEA6FFA1E2B9FFD1EEDCFFFFFEFEFFFFFFFFFFE9FAF0FF43CF
          78FF03B845FF5ACD7FFFFFFFFFFF464646460000000000000000000000000000
          00088EBB9DCF8DDEAAFF9BE5B7FF98E1B3FFB6E7C8FFB1E7C5FF86DCA7FF41CC
          76FF1DBD57FFCCF0D8FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC4A8D79FE2B6FFA7E7BEFF95E2B2FF7EDCA2FF6BD793FF58CE
          81FFB1E7C3FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA7D2B3E5B1E8C3FFABE6BFFFA9E5BCFFC6DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC444344931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A282D284F777E77AEA2A7A2EFB5BBB5FFAFB6AFFFA0A2A0FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E7D847D9BE1CEE1FFC182C1FFB86BB9FFBD74BEFFD8ACD8FFF2EDF2FFDFE6
          DFFFD2D2D2FFABABABCE0A0A0A3E000000410000002500000001000000005F5F
          5F5FCCA2CCFF800881FF860087FF89008AFF870088FF840384FF922993FFDFBF
          E0FFF7FDF7FFEBEBEBFFA4A4A4BB00000030000000300000000310101010B8A0
          B9D97E047FFF951196FF9B199CFFCC9ECCFFBF60C0FF9A139CFF8C068DFF7900
          7AFFDAB9DAFFFDFFFDFFFDFDFDFF4747475600000001000000005C5C5C5CA453
          A4FB8A018AFFA92AAAFFB22EB3FFBE7FBFFFCE6DCFFFB42FB5FFA82AA9FF8C08
          8DFF831684FFF5ECF5FFFFFFFFFFACACACAC0000000000000000999599A19932
          9AFF9D1F9FFFB63DB7FFCB45CCFFCB76CCFFDD7BDDFFCA43CBFFB93BBAFFA524
          A6FF7B007CFFBC85BCFFFFFFFFFFE2E2E2E200000009000000008A828A96A13F
          A2FFAC3EADFFC358C4FFDB63DBFFD393D3FFF6D4F7FFDE54DFFFC644C7FFAF30
          B0FF8C088DFF973998FFFFFFFFFFECECECEC14141414000000004948494CA95A
          A9F6B351B4FFCA6BCAFFDF7BDFFFDB78DBFFD2C1D2FFF6CDF6FFCD4BCEFFB233
          B3FF951096FF8D1D8EFFFAF9FAFFE6E6E6E60B0B0B0B000000000B0B0B0BA272
          A2D5B45DB5FFCB7ACCFFDA88DAFFEA8CEBFFD175D2FFE8E6E8FFDD8ADEFFB131
          B2FF920D93FF902390FFFDFCFDFFB5B5B5B50000000000000000000000006157
          616EBC77BDFFCC84CDFFCFA2CFFFE3B4E4FFDB80DCFFF3E6F2FFD793D8FFAF3A
          B0FF880389FFA95DAAFFFFFFFFFF414141410000000000000000000000000000
          0005A68BA6C5C88DC9FFD19DD2FFCEB0CEFFDDC5DCFFD4AFD4FFBD60BDFFAC45
          ADFF902191FFE6D0E6FF85858585000000000000000000000000000000000000
          000015151515AD94AECAD09FD0FFD4A2D4FFCD98CDFFC580C7FFBE72BEFFAC5A
          AEFFD9B8DAFFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A776E7782BDA1BDDCD6AFD6FCD5ACD5FFD4ADD4FFD1C2
          D1E4868686860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6B6BADB0ADB0848484842626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD5FE82DDA0FF6BDA91FF75DE99FFABEEC2FFEDF5EFFFE4DB
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E1B4FF08B640FF00B643FF09BA4BFF09B94AFF02B644FF2AC15EFFC1EF
          D1FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0E9FC5
          A9D804B33CFF12BE53FF1EC45DFF29C766FF29C766FF1EC35CFF07B94AFF02B2
          39FFBCEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005858585852C7
          78FA02B845FF2EC869FF5AD68BFF4ED684FF4AD481FF43D17BFF2CC868FF0ABA
          4AFF18B749FFEFFAF2FFFFFFFFFFAAAAAAAA0000000000000000949C96A132C3
          65FF20C55EFF39C76FFFF4F6F4FFA6EFC5FF80E0A7FFF4FCF8FF4AD380FF23C6
          62FF00B135FF88D99FFFFFFFFFFFE1E1E1E10000000800000000829086983FC7
          70FF3FCD74FF59D188FFEDF5F0FFE8FDF1FFC7F3DAFFFFFFFFFF6EDF9CFF2CCA
          69FF09BA4AFF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5AC9
          81F752D282FF69D493FFCFEBD9FFFFFFFFFFFFFFFFFFFFFFFFFFA0E5BBFF2CCB
          6AFF13BE53FF1EBD57FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D70B8
          8AD75FD289FF7BDFA2FF75D89BFFD1ECDBFFFFFFFFFFCEEFDBFF59D78BFF3DCF
          76FF10BD50FF23BE59FFFCFEFDFFB8B8B8B80000000000000000000000005B6D
          607576D698FF8AE0ABFF8EE5AFFF86DDA8FFBFE8CEFF80E1A6FF65DB93FF47CF
          7BFF05B846FF59CC7EFFFFFFFFFF464646460000000000000000000000000000
          00088EBB9ECF8BDEA9FFA3E6BCFF98E6B6FF82DFA6FF7CDEA2FF66D791FF46CD
          79FF1DBD57FFCCEFD8FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D79FE2B6FFA8E7BFFF9EE5B9FF8ADFA9FF73D897FF57CE
          80FFB1E7C3FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA6D2B4E5B0E8C4FFAAE6BEFFA8E5BCFFC6DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC444444931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A24272A4F71757AAE9DA0A4EFB1B4B7FFAAADB2FF9E9FA0FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E767A809BF3E7D9FFF3D3A9FFF5CE9CFFF7D2A3FFFDE5C7FFF8F4EFFFDADE
          E2FFD2D2D2FFACACABCE0A0A0A3E000000410000002500000001000000005C5F
          5F5FF2D9BAFFE1A254FFE1A55CFFE0A85FFFE0A65CFFE0A45AFFE5B06CFFFAE9
          D3FFF2F6F9FFEAEBEBFFA4A4A4BB0000003000000030000000030F101010CEC1
          ADD9DFA051FFE3B070FFE6B87FFFEDD0A9FFF0D2ACFFE5B679FFE1AA64FFDD9D
          4CFFF7E4CBFFF9FCFFFFFDFDFDFF4747475600000001000000005B5C5C5CE4BB
          85FBE0A961FFE8BF8BFFEBC596FFF0E3D3FFFCF8F3FFECC697FFE9BF8AFFE1AA
          66FFDFA358FFFEF8F1FFFFFFFFFFACACACAC00000000000000009D9B96A1E5B4
          77FFE6B77BFFECCA9EFFF2D6B4FFF0E1CEFFFDF9F5FFF2D8BAFFEDCBA1FFE7BC
          85FFDD9E4EFFEECEA4FFFFFFFFFFE2E2E2E20000000900000000928D8696E7BA
          81FFEAC290FFF0D4B0FFF6E3CBFFF3E9DBFFFFFEFEFFF7E8D5FFF1D5B3FFEAC4
          93FFE2AB66FFE4B274FFFFFFFFFFECECECEC14141414000000004B4A484CE2BE
          8FF6EBC79AFFF1D7B7FFF7E7D2FFF2E8DAFFF4EFE9FFFAF0E2FFF2DABCFFEBC7
          98FFE4B170FFE2AB66FFFEFCF9FFE6E6E6E60B0B0B0B000000000B0B0B0BC8AF
          91D5ECC99BFFF2D9BAFFF5E3CCFFF6E9D8FFF2E4D3FFF7E8D5FFF2DBBFFFECC8
          9AFFE4AF6DFFE2AD6AFFFFFDFDFFB5B5B5B50000000000000000000000006A64
          5D6EEECDA5FFF2DABBFFF4DFC4FFF5E4CFFFFEFFFEFFF7E7D4FFF0D5B2FFEBC7
          98FFE1A75FFFE9BF8BFFFFFFFFFF414141410000000000000000000000000000
          0005BDAF9CC5F1D6B4FFF5E2CAFFF2DEC4FFEEE0CCFFF3DCC0FFEFD0A8FFEAC2
          90FFE3AE6BFFF8ECDEFF85858585000000000000000000000000000000000000
          000015151515C2B5A3CAF2DBBEFFF4E0C7FFF4DEC2FFF1D8B8FFEFCEA7FFEAC2
          90FFF5E4CDFFA4A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A7F7A7482D4C5B2DCF2DEC7FCF4E0C6FFF4E0C5FFDDD5
          CAE4848686860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A696B6B6BABADAFB0818484842526
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434444931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A2D262B4F7E747AAEA79FA4EFBBB3B8FFB6ACB2FFA29FA1FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E8479819BCCEAD5FF80DDA0FF6ADA91FF75DE98FFACEDC1FFEDF5EFFFE6DC
          E3FFD2D2D2FFABACABCE0A0A0A3E000000410000002500000001000000005F5F
          5F5F9FE1B1FF07B540FF00B743FF04B948FF05B847FF03B644FF29C15DFFC0EF
          D0FFFDF4FAFFEBEBEBFFA4A4A4BB000000300000003000000003101010109EC5
          A8D903B33CFF0EBE51FF24C561FF55D184FF44CF7AFF17C259FF08BA4AFF01B1
          38FFBBEBC8FFFFFBFFFFFDFDFDFF4747475600000001000000005B5B5B5B50C7
          78FB00B844FF3BCC73FF8BDFABFF92DBACFF92DCADFF51D282FF26C764FF0BBA
          4AFF17B748FFEEFAF1FFFFFFFFFFACACACAC0000000000000000949E97A330C3
          64FF1BC45AFF5BD088FFE3F3E9FF77DC9FFF66D995FF90E1B0FF59D78BFF23C6
          62FF00B135FF88D99EFFFFFFFFFFE2E2E2E200000009000000007F8E84963FC7
          70FF42CE76FF55D487FF74D99DFFACECC6FFC2F3D7FFF1FEF7FF71DE9DFF2AC9
          68FF08BA4AFF3BC367FFFFFFFFFFECECECEC1414141400000000474A484C5AC8
          81F654D183FF66DA94FFBDF1D3FFFFFEFFFFF7F9F7FFADE8C5FF53DA89FF36CD
          71FF12BE53FF1EBD57FFFAFDFBFFE6E6E6E60B0B0B0B000000000B0B0B0B70B6
          88D560D38AFF78DB9EFFCBEED7FFA9E6C1FF9AE2B7FFB0EFCAFF6FDF9CFF3BCE
          74FF0FBD4FFF26BF5BFFFDFEFDFFB5B5B5B50000000000000000000000005666
          5B6E78D799FF87DFA9FF96DFB2FFB5EACAFFB1EAC7FFD3EDDCFF7CE0A3FF42CE
          77FF04B845FF60CE83FFFFFFFFFF414141410000000000000000000000000000
          00058AB398C58DDEAAFF9CE4B8FFA4E2BBFFB1E4C4FF86DCA7FF61D58DFF46CC
          78FF22BE5AFFD2F1DDFF85858585000000000000000000000000000000000000
          00001515151593B8A0CAA1E2B7FFA4E6BDFF98E3B4FF87DFA9FF74D898FF5BCF
          83FFBAEAC9FFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A6E7C7282A1C9AEDCAFE5C1FCACE7C0FFADE7C0FFC3D8
          CAE4868686860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6B6BAEABAEAE838383832626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000039161616A6464646D5444444921717
          172F000000000000000000000000000000000000000000000000000000000000
          0000000000172B24294C7E737AACA79EA3EEBBB3B8FFB6ACB3FFA19EA0FF9999
          99E96C6C6CA00909093200000021000000110000000000000000000000000000
          000F82767E9AD2ECDAFF89DFA6FF6EDB94FF78DF9BFFB0EEC4FFEEF6F0FFE6DE
          E4FFD2D2D2FFB3B3B3D6101010440000003F0000002500000000000000005E5E
          5E5EAAE3B9FF0BB742FF00B642FF06B948FF09BA4AFF02B643FF29C15DFFBEEE
          CEFFFEF5FCFFEBEAEBFFB0B0B0C50303033200000033000000000F0F0F0FA3C7
          ACD905B43DFF0EBC50FF23C561FF33CA6DFF23C561FF22C460FF08BA4BFF00B1
          38FFB5E9C3FFFFFBFFFFFDFEFDFF5656566500000000000000005B5B5B5B55C8
          7BFA01B844FF18C35BFFA6E9C0FFE3F9EBFF48D580FF33CE6FFF2FC969FF0DBB
          4CFF11B543FFE8F8ECFFFFFFFFFFBBBBBBBB0000000000000000969D98A233C3
          66FF17C158FF96E5B5FFFFFFFFFFFFFFFFFFE5FAEEFF53DB89FF37D072FF2AC7
          66FF00B237FF7BD595FFFFFFFFFFECECECEC1111111100000000818F859638C6
          6BFF59D187FFFFFFFFFFE8F5EDFF89DBA9FFF9FAF9FFE5FBEEFF4DD785FF2BCA
          68FF0CBC4EFF2EC05FFFFFFFFEFFF5F5F5F51F1F1F1F00000000474A484C5BC8
          82F64BCE7CFF96DEB1FF8ADEABFF7AEAAAFF93E4B4FFFAFAF9FFE0F9EAFF3FD1
          78FF12BF53FF16BA4EFFEFFAF1FFEFEFEFEF14141414000000000B0B0B0B70B6
          89D45ED389FF72DB9BFF83E2AAFF94EAB7FF86EAB1FF8BDFACFFFFFEFFFFBCEB
          CEFF05BA4AFF1ABC52FFF5FCF7FFC4C4C4C40000000000000000000000005565
          5A6D77D799FF8ADFABFF8FE3B0FF92E6B3FF90E7B3FF74E0A0FF87DAA8FF60CF
          8AFF04B947FF4CC976FFFFFFFFFF4E4E4E4E0000000000000000000000000000
          000087B095C38CDDA9FFA3E6BCFF98E4B5FF8DE2AEFF80DFA4FF5FD68CFF43CC
          77FF1EBD57FFC4EDD2FF93939393000000000000000000000000000000000000
          00001313131390B69CC89FE2B6FFA7E6BFFF9FE4B8FF8BDFAAFF74D89AFF59CE
          82FFADE6C0FFAFAFAFAF00000000000000000000000000000000000000000000
          000000000000000000006B796F809EC8ABDBAEE5C0FCACE6C0FFAAE5BEFFBFD9
          C7E68C8C8C8C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919191969696969B5B0B4B5898889892929
          2929000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000100000001
          0000000100000003000080030000C0070000C00F0000F01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD5FE82DDA0FF6ADB91FF74DE99FFACEDC1FFEDF5EFFFE4DB
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF07B640FF00B43DFF02B846FF02B845FF00B541FF2BC25DFFC1EF
          D1FFFCF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0EA0C5
          A9D800B238FF09BB4DFF44CE79FF43CE78FF3ACC72FF28C564FF02B846FF01B1
          38FFBCEBC9FFFFFBFFFFFDFDFDFF454545550000000100000000585858584FC7
          76FA15BC51FF5AD288FFF3FBF6FFFFFFFFFFFFFFFFFFDEF8E9FF30C86BFF06B9
          47FF19B749FFEFFAF2FFFFFFFFFFAAAAAAAA0000000000000000959E97A225C0
          5CFF5ED18AFFCDEDDAFFBFE7CEFFC9ECD6FFCBECD7FFBDE9CDFFDDF7E8FF79DC
          9FFF00AC29FF89D9A0FFFFFFFFFFE1E1E1E100000008000000008391889935C6
          69FF66D28EFFE1F5E9FFB6E9CAFFC9EDD7FFC4EBD2FFA9E2BEFFE1F3E8FFA7E8
          C0FF00B53CFF3DC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5ACA
          82F753CF82FF69D794FFD4F2E0FFD7F2E1FFCEF1DCFFDEF5E7FF7ADCA0FF4CCE
          7FFF0FBE51FF1FBD57FFF9FDFBFFE7E7E7E70C0C0C0C000000000D0D0D0D70B8
          8AD75ED38AFF73DC9BFFCCEFDAFFC2ECD2FFAFE7C5FFD6F1E1FF86E6ADFF2DCB
          6BFF11BE51FF24BE5AFFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          607577D799FF81DDA4FFCAEFD8FFE0F5E8FFC9EED8FFE8F6EEFF9CE7B9FF3BCC
          73FF04B846FF5ACD7FFFFFFFFFFF464646460000000000000000000000000000
          00088EBB9DCF8ADDA8FFA8E6C0FFB2E8C7FFACE7C1FFA9E5C0FF73D99AFF43CC
          77FF1DBD57FFCCF0D8FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC4A8D79DE2B4FFA2E6BBFF96E4B4FF80DDA3FF6FD896FF58CE
          81FFB1E7C3FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA7D2B3E5B0E8C3FFAAE6BFFFA9E5BCFFC6DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434444931515
          152D000000000000000100000000000000000000000000000000000000000000
          00080000001A2D262B4F7E747AAEA79FA4EFBBB3B8FFB6ACB2FFA29FA1FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E8479809BCEEBD7FF82DDA1FF6ADA91FF74DE98FFACEDC1FFEDF5EFFFE6DC
          E3FFD2D2D2FFABACABCE0A0A0A3E000000410000002500000001000000005F5F
          5F5FA2E2B3FF09B641FF00B540FF00B641FF00B743FF02B644FF29C15DFFBFEF
          CFFFFDF4FBFFEBEBEBFFA4A4A4BB00000030000000300000000310101010A0C6
          AAD904B43DFF08BB4CFF2EC768FF69D894FF53D384FF16C257FF03B946FF02B1
          39FFB8EAC6FFFFFBFFFFFDFDFDFF4747475600000001000000005C5C5C5C53C7
          7AFB00B740FF45CD79FFECFAF1FFFDFCFCFFF7FAF7FFC8F1D8FF2CC968FF05B8
          47FF16B747FFECFAF0FFFFFFFFFFACACACAC0000000000000000959C96A134C3
          66FF14BE54FFC9ECD6FFE3FAEDFF5BDB90FF5BD58CFFE1F1E6FFBEF0D2FF1AC3
          5CFF00B136FF85D89CFFFFFFFFFFE2E2E2E20000000900000000828F869640C9
          71FF3AC76FFFEFF6F2FF9EECBFFF6DE6A2FF76EDAAFF6BDA99FFFCFBFCFF48D1
          7DFF04B946FF39C366FFFFFFFFFFECECECEC1414141400000000484A484C5CCA
          84F647CC79FFCFECD9FFD5F8E3FF84EBB0FF97F1BFFF8CE7B2FFFCFCFDFF56D5
          87FF0BBC4EFF1EBD55FFF8FDF9FFE6E6E6E60B0B0B0B000000000B0B0B0B72B6
          8AD559D185FF8DDCAAFFF0F9F4FF98ECBBFF8DE3B0FFF9FBFAFFF0FDF5FF41CF
          78FF0EBC4FFF24BE59FFFCFEFDFFB5B5B5B50000000000000000000000005766
          5C6E79D89AFF86DEA7FF90E1AFFF92E7B4FF86E2AAFFDAF0E2FFCFEFDBFF53D1
          84FF01B743FF5DCD80FFFFFFFFFF414141410000000000000000000000000000
          00058BB498C58DDDAAFFA2E6BBFF99E4B6FF8CE2AEFF7ADBA0FF5CD389FF45CB
          78FF22BE59FFD0F1DBFF85858585000000000000000000000000000000000000
          00001515151594BAA0CA9FE3B6FFA7E6BEFF9FE5B9FF8AE0AAFF74D899FF5BCF
          83FFB8E9C8FFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A6E7C7382A1C9AEDCAFE5C1FCACE7C0FFADE6C0FFC2D8
          C9E4868686860000000200000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6B6BB0ACB0B0848484842626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434344931515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A2D2D254F7E7E72AEA7A79EEFBBBBB2FFB6B6AAFFA2A29EFF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E8484779BCECEF0FF8383EBFF6A6AEBFF7676EDFFADADF7FFEDEDF7FFE6E6
          DBFFD2D2D2FFABABACCE0A0A0A3E000000410000002500000000000000005F5F
          5E5FA3A3ECFF0909D0FF0000D1FF0000D3FF0000D3FF0000D0FF2A2AD8FFBFBF
          F6FFFDFDF2FFEBEBEAFFA4A4A4BB00000030000000300000000010101010A1A1
          CBD90202CEFF0000D6FF0000DCFF0000DEFF0000DEFF0000DBFF0000D3FF0101
          CCFFBABAF2FFFFFFFAFFFDFDFDFF4747475600000000000000005C5C5C5C5454
          DAFB0000D2FF0000DEFF0000E3FF0000E7FF0000E7FF0000E3FF0000DEFF0000
          D3FF1515D0FFEDEDFCFFFFFFFFFFACACACAC000000000000000096969DA12E2E
          D9FF0000DAFF2E2EE3FF5050F0FF2F2FF2FF1818F1FF0505ECFF0000E3FF0000
          DCFF0000CDFF8787E5FFFFFFFFFFE2E2E2E20000000000000000838391963939
          DBFF0C0CE0FF8282DFFFFFFFFFFFFFFFFFFFF3F3FFFFDEDEFFFF9D9DF6FF0000
          E0FF0000D3FF3B3BD8FFFFFFFFFFECECECEC141414140000000049494B4C5757
          D8F62E2EE4FF6F6FDBFFE1E1E9FFF1F1EFFFFFFFF5FFFFFFF9FFE9E9FAFF0000
          E3FF0000D6FF1D1DD4FFF9F9FDFFE6E6E6E60B0B0B0B000000000B0B0B0B7070
          C1D54F4FE3FF5757EAFF4F4FE5FF5151E5FF5656E3FF5F5FDCFF6060DBFF0D0D
          E4FF0000D5FF2424D5FFFCFCFEFFB5B5B5B50000000000000000000000005858
          696E7373E5FF7777EDFF6F6FF1FF6565F5FF5353F5FF3D3DF2FF2929EBFF2020
          E2FF0000D2FF5E5EDEFFFFFFFFFF414141410000000000000000000000000000
          00008B8BB9C58787EAFF9494F0FF8282EFFF7070EDFF5D5DEBFF4747E6FF3030
          DFFF1A1AD5FFD1D1F6FF85858585000000000000000000000000000000000000
          0000151515159494BECA9D9DECFFA0A0EFFF9393EEFF7D7DECFF6868E7FF5656
          E0FFB8B8F1FFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A6F6F7D82A1A1CFDCAEAEEDFCABABEFFFADADEFFFC2C2
          DBE4868684860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6A6BB0B0ABB0848481842626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000039161616A6464646D5444444921717
          172F000000000000000000000000000000000000000000000000000000000000
          0000000000172C28234C7D7871ACA7A29CEEBBB7B1FFB6B1AAFFA2A09EFF9999
          99E96C6C6CA00909093200000021000000110000000000000000000000000000
          000F827D749AD0DCF1FF85AFF0FF6AA1F1FF74A7F3FFAAC9FAFFEAEFF7FFE7E3
          DCFFD2D2D2FFB3B3B3D6101010440000003F0000002500000000000000005E5E
          5C5EA6C0F0FF0958D9FF0053D7FF005CDAFF005CDAFF0059D8FF256FDFFFB7D1
          F8FFFFFBF4FFEBEBEAFFB0B0B0C50303033200000033000000000F0F0F0FA2B1
          CDD90353D7FF0060DCFF1B73E2FF0069E1FF0069E1FF0067DFFF005DDBFF004F
          D6FFB0C8F3FFFFFFFAFFFDFDFEFF5656566500000000000000005B5B5A5B568B
          DEFA004AD7FF69A4EAFFFFFFFFFF4494EDFF1A7DE8FF177DE8FF0061DFFF0058
          DAFF0E5AD7FFE5EDFBFFFFFFFFFFBBBBBBBB0000000000000000989A9EA22F78
          DFFF0364E0FF3989DBFFC2D3E1FF2F8EEAFFADD4F9FF55A0EEFF65A8EEFF3186
          E6FF0048D5FF78A0E8FFFFFFFFFFECECECEC1111111100000000848992963981
          E1FF1F7DE4FF1B84E8FF1986E4FF73BEF9FFD7E9F6FF1588EBFFFFFFFFFF6FA9
          EDFF0050D9FF2C73DDFFFEFEFEFFF5F5F5F51F1F1F1F0000000049494B4C5790
          DDF63A8AE6FF3492EBFFA5CDEFFFC9DCE9FF2195E8FF71C0FBFFFFFFFEFF2D83
          E5FF005DDDFF1363DAFFEEF3FCFFEFEFEFEF14141414000000000B0B0B0B7193
          C4D44E93E7FF5CA4EEFF58A3E8FF58AAEEFF91CEFCFFFFFFFFFFA4C9EAFF006F
          E2FF0061DDFF1866DBFFF6F8FDFFC4C4C4C4000000000000000000000000585E
          696D74A6EAFF72ADEEFF7AB5F1FFFFFFFCFFFFFEF8FFB0CCE6FF2F8CE5FF1F80
          E6FF005ADAFF4F88E3FFFFFFFFFF4E4E4E4E0000000000000000000000000000
          00008B9DB9C387B2EDFF95C0F0FF9FC2E7FF7CB0E5FF4E9BEAFF4596EBFF3285
          E4FF176BDCFFC7D9F6FF93939393000000000000000000000000000000000000
          00001313131394A4BFC89EBFF0FF99C0F2FF8FBDF2FF7FB2EFFF68A3EAFF5692
          E5FFB1CAF2FFAFAFAFAF00000000000000000000000000000000000000000000
          000000000000000000006E737D80A2B4D1DBAEC8F0FCABC8F2FFADC8F2FFC2CC
          DEE68C8C8A8C0000000000000000000000000000000000000000000000000000
          00000000000000000000000000001919191969696769B5B3B0B5898986892929
          2829000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000100000001
          0000000100000003000080030000C0070000C00F0000F01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D181818AE494949DC434444931515
          152D000000000000000000000000000000000000000000000000000000000000
          00000000001A2D262B4F7E747AAEA79FA4EFBBB3B8FFB6ACB2FFA29FA1FF9898
          98E86969699C0606063100000024000000120000000000000000000000000000
          000E8479819BCCEAD5FF80DDA0FF6ADA91FF74DE98FFACEDC1FFEDF5EFFFE6DC
          E3FFD2D2D2FFABACABCE0A0A0A3E000000410000002500000000000000005F5F
          5F5F9FE1B1FF07B63FFF00B743FF0ABA4BFF09B94AFF03B644FF2AC15DFFC0EF
          D0FFFDF4FAFFEBEBEBFFA4A4A4BB000000300000003000000000101010109EC5
          A8D902B33BFF13BE54FF27C663FF2DC868FF2DC868FF19C259FF00B741FF02B2
          3AFFBBEBC8FFFFFBFFFFFDFDFDFF4747475600000000000000005B5B5B5B50C7
          77FB03B947FF2DC969FF3DCF76FF48D47FFF36D074FF6EDC99FF86DEA7FF00B7
          42FF18B748FFEEFAF1FFFFFFFFFFACACACAC0000000000000000949E97A330C3
          64FF22C45FFF40D078FF4BD784FF52DC8CFF7BE6A7FFFFFDFEFF80D9A2FF1DC4
          5EFF00B135FF88D99EFFFFFFFFFFE2E2E2E200000000000000007F8E84963FC7
          71FF3FCC74FF5AD78CFF97EAB9FF95EFBCFFEAF9F0FF92DFB1FF38D276FF35CC
          6FFF08BA4AFF3BC367FFFFFFFFFFECECECEC1414141400000000474A484C5AC8
          82F64ED07FFFC0EFD2FFBFEDD2FFE0F5E8FFB4EDCCFF69E49DFF5ADC8EFF37CD
          71FF12BE53FF1EBD57FFFAFDFBFFE6E6E6E60B0B0B0B000000000B0B0B0B6FB6
          88D565D38DFFDBF4E5FF69DD98FFA8EBC4FFCBF6DEFF76E5A5FF63DC94FF3ECE
          76FF0FBD4FFF26BF5BFFFDFEFDFFB5B5B5B50000000000000000000000005666
          5B6E71D695FFC2ECD1FFD0F3DDFFDCF5E6FFA4E8BFFF7AE2A3FF68DA95FF46CF
          7BFF04B845FF60CE83FFFFFFFFFF414141410000000000000000000000000000
          00008AB497C587DCA5FFBCEBCEFFA6E6BEFF87E0A9FF7EDEA3FF66D690FF46CC
          78FF22BE5AFFD2F1DDFF85858585000000000000000000000000000000000000
          00001515151593B9A0CA9AE2B3FFA3E5BCFF9FE4B9FF8BDFAAFF73D898FF5BCF
          83FFBAEAC9FFA5A5A5A500000000000000000000000000000000000000000000
          0000000000000A0A0A0A6E7C7382A1C9AEDCAEE5C1FCABE7C0FFADE7C0FFC3D8
          CAE4868686860000000000000000000000000000000000000000000000000000
          00000000000000000000000000001A1A1A1A6B6B6B6BAEABAEAE838383832626
          2626000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          00000000000000000000000000000000003D171717AE484848DD424242921515
          152D000000000000000100000000000000000000000000000000000000000000
          0007000000192C25294E7C7279ADA69EA4EFBAB2B7FFB5ACB2FFA19EA0FF9798
          97E86767679B0505053100000024000000120000000000000000000000000000
          000E81767D98CCEAD6FE82DDA1FF6BDB91FF74DE98FFABEDC1FFECF5EFFFE4DC
          E2FFD2D2D2FFAAAAAACD0A0A0A3D000000410000002500000001000000005D5D
          5D5DA3E2B4FF08B641FF00B644FF0ABA4CFF09B94AFF04B745FF2AC15EFFC1EF
          D0FFFDF4FAFFEBEAEBFFA1A1A1B90000003000000030000000030E0E0E0EA0C5
          AAD804B43DFF11BE52FF1CC35CFF23C662FF21C660FF13C054FF03B946FF02B2
          3AFFBBEBC9FFFFFBFFFFFDFDFDFF4545455500000001000000005959595953C7
          79FA00B943FF36C46CFFCCEFD9FFC5F1D7FFB7ECCCFFB5ECCAFF4AD07DFF02B8
          44FF18B749FFEEFBF1FFFFFFFFFFAAAAAAAA0000000000000000939B95A032C3
          65FF1DC45CFF45C776FFFFFDFFFFD1F7E1FF91E1B1FFFFFFFFFF85E1A9FF17C3
          59FF00B135FF88D99FFFFFFFFFFFE1E1E1E10000000800000000839187983FC7
          70FF40CE75FF54CD83FFF5F7F6FFEEFEF5FFBCEED1FFFFFFFFFF99E8B9FF23C8
          62FF09BA4AFF3BC367FFFFFFFFFFECECECEC14141414000000004A4D4B4F5AC9
          81F754D183FF62D68FFFADE2C1FFCBF0DAFFB1E9C8FFD8F2E2FF7EE1A6FF30CC
          6DFF13BE53FF1EBD56FFF9FDFAFFE7E7E7E70C0C0C0C000000000D0D0D0D71B9
          8AD75ED189FF76DE9FFF9CE1B7FFAEF0CAFF69E39DFFB5EDCBFF74E09FFF3BCE
          74FF10BD50FF24BD59FFFCFEFCFFB8B8B8B80000000000000000000000005B6D
          617576D799FF89E1ABFF8FDEADFFCEEEDAFFB9F0CFFFCDF1DBFF6ADB96FF45CF
          7AFF05B946FF59CC7EFFFFFFFFFF464646460000000000000000000000000000
          00088EBC9ECF8CDDA9FF9EE6BAFF98DEB2FFB5E4C6FF84DCA5FF61D68EFF47CD
          79FF1DBD57FFCBEFD7FF91919191000000000000000000000000000000000000
          00001E1E1E1E9BC5A8D79FE3B6FFA7E7BEFF95E3B3FF88DFA8FF73D898FF56CE
          80FFB1E7C2FFB0B0B0B000000001000000000000000000000000000000000000
          0000000000001010101078877D8FA6D2B4E5B1E8C3FFABE6BEFFA9E5BCFFC5DF
          CCEC939393930000000500000000000000000000000000000000000000000000
          00000000000000000000000000002828282892909292E7E3E5E7AFADAFAF3636
          3636000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000100000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000591A1A1ABE4B4B4BDF505050A91A1A
          1A45000000000000000000000000000000000000000000000000000000000000
          00070000001B262124517E727AB0AFA5ABF2C1B5BDFFB5ABB1FFA19EA0FF9B9B
          9BEC6565659E0101013300000024000000110000000000000000000000000000
          001082767E9FD2EEDCFF8BE1A8FF72DE96FF7CE09FFFB2EEC7FFF3F7F4FFE5DD
          E2FFD3D3D3FFACACACD407070742000000410000002500000001000000005B59
          5B5BA4E5BAFF06B744FF03B745FF0DBB4DFF0CBA4CFF05B746FF2DC262FFCAF2
          D8FFFEF5FBFFEBEBEBFFA2A2A2C10000003300000030000000060F0F0F0FA4C8
          B0DB00B53FFF05BB49FF1FC45EFF22C661FF21C560FF1BC25AFF00B742FF04B4
          40FFC4EFD2FFFEFAFDFFFEFEFEFF4040405900000004000000007777777755CC
          7FFD06B646FFAEE7C3FF6DDA97FF87E0AAFF80E1A7FF63D690FF7BDCA0FF0ABA
          4AFF15BA4FFFF4FCF7FFFFFFFFFFADADADAD0000000000000000AFB3B0B936C6
          6AFF1CBD58FFEBF3EDFF9AE7B9FFB4E5C7FFCEF6DFFF92DFB1FFFFFFFFFF29C6
          65FF00B238FF8DDDA9FFFFFFFFFFE5E5E5E50000000200000000A0ABA3B344C9
          74FF37CB6FFF84D7A4FFB4EFCCFFA7E6C1FFBCF2D3FF91E4B3FFA8E6C0FF28C9
          66FF0ABB4CFF3CC56DFFFFFFFFFFF2F2F2F20A0A0A0A000000006A6B6A6C5ECD
          86FB54D183FF6FD998FF95E4B4FFBCEBCFFFD5F4E2FF9DE7BCFF72DD9DFF33CC
          6EFF15BF54FF21BE59FFFFFFFFFFEBEBEBEB00000004000000000D0D0D0D76BC
          8FDA5ED289FF7BDEA2FF77DFA1FFD7F2E2FFFFFFFFFF8EEAB4FF59DA8DFF3ECE
          76FF12BE52FF26BF5DFFFFFFFFFFBBBBBBBB0000000000000000000000005D6B
          617278D89AFF8AE0ABFF88E1ABFFB8E8CAFFDCF3E4FF93E6B4FF63D992FF46CE
          7AFF08B949FF5DCF85FFFFFFFFFF444444440000000000000000000000000000
          000498C0A5D48DDEAAFFA2E6BCFF90E2B0FF84DEA7FF7CDEA2FF65D790FF47CD
          79FF24BF5BFFD5F2DFFF91919191000000000000000000000000000000000000
          000018181818A4C9B0DAA2E4B9FFA5E6BDFF9EE5B9FF8BE0ABFF72D897FF59CF
          83FFB8E9C8FFB3B3B3B300000000000000000000000000000000000000000000
          0000000000000B0B0B0B7F8A8290AED7BCEAB2E8C4FFADE6BEFFAFE7C2FFCEE4
          D5F0939393930000000200000000000000000000000000000000000000000000
          000000000000000000000000000035353535A7A7A7A7E6E4E6E6BFBFBFBF4B4B
          4B4B000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00F83F0000C003000080010000800100000003000000030000000300000001
          0000000300000003000080030000C0070000C00F0000E01F0000F83F0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400848484008484840084848400848484008484840000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000008484
          8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000FFFFFF00FFFF
          FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
          8400848484008484840084848400848484008484840000000000C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
          8400C6C6C600C6C6C60084000000840000008400000084000000FFFFFF00FFFF
          FF00FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000008484
          8400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C6000000000084000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000008484
          8400848484008484840084848400848484008484840000000000FFFFFF008400
          0000FFFFFF00C6C6C600FFFFFF00FFFFFF000000000000000000000000000000
          0000000000000000000084848400C6C6C600C6C6C600C6C6C600C6C6C6008400
          0000C6C6C600C6C6C600C6C6C600C6C6C6000000000000000000000000000000
          0000000000000000000084848400848484008484840084000000840000008400
          0000840000008400000084848400848484000000000000000000000000000000
          0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C6008400
          0000C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
          0000000000000000000084848400C6C6C600C6C6C60084848400C6C6C600C6C6
          C600C6C6C60084848400C6C6C600C6C6C6000000000000000000000000000000
          0000000000000000000084848400848484008484840084848400848484008484
          8400848484008484840084848400848484000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF000080FF000080FF000080FF00008001000080010000800100008001
          00008001000080010000F0010000F0010000F0010000F0010000F0010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000FFFF0000E0070000E007000080070000A0070000A007
          0000BFFF0000A0070000A007000080070000E0070000E0070000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFF
          FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF0000840000848484000084
          000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000008400008484
          84000084000084848400008400008484840000840000FFFFFF00008400008484
          840000840000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000848484000084
          000084848400008400008484840000840000FFFFFF0000840000848484000084
          0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008400008484
          8400008400008484840000840000FFFFFF000084000084848400008400008484
          8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
          00008484840000840000FFFFFF00008400008484840000840000848484000084
          0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
          000000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
          C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
          0000FFFFFF00008400008484840000840000848484000084000084848400C6C6
          C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000840000FFFF
          FF00008400008484840000840000848484000084000084848400008400008484
          8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000848484000084
          0000848484000084000084848400FFFFFF008484840000840000848484000084
          0000FFFFFF00FFFFFF0000000000000000000000000000000000008400008484
          84000084000084848400FFFFFF00FFFFFF00FFFFFF0084848400008400008484
          8400FFFFFF00FFFFFF0084848400FFFFFF000000000000000000000000000000
          00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
          0000000000008484840084848400848484008484840084848400848484008484
          8400848484008484840084848400000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E0000000E0000000E0000000E0000000E000000000000000000000000000
          000080000000C000000080000000000000000000000000010000E0030000E007
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00BB000000B8000000BB000000BB000000BBFF0000B0030000B00300008003
          0000B0030000B0030000BFFF0000003F0000003F0000003F0000003F0000003F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C600000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000FFFF0000FFFF0000FF
          FF00C6C6C600C6C6C6000000000000000000000000000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60084848400848484008484
          8400C6C6C600C6C6C60000000000C6C6C6000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000C6C6C600C6C6C6000000000000000000C6C6
          C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
          C600C6C6C60000000000C6C6C60000000000C6C6C60000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000C6C6C60000000000C6C6C6000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000C6C6C60000000000C6C6C60084848400000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0084840000FFFF0000FFFF0000FFFF000000000000000000008484
          8400000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF000084840000000000000000000084848400000000000000
          0000FFFF000084840000FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
          0000FFFF0000FFFF000000000000000000000000000000000000000000008484
          8400000000000000000000000000000000000000000000000000000000000000
          000000000000FFFF000084840000000000000000000084848400000000000000
          0000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF008484840084840000FFFF0000FFFF0000FFFF000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000008484840000000000000000000000000084848400}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C007000080030000000100000001000000010000000000000000
          000080000000C0000000E0000000800000008007000080000000F0000000F800
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          80000000FF000000FF000000FF0000808000008080007F7F7F00000000007F7F
          7F0000808000008080000000FF000000FF000000FF0000808000008080000080
          8000008080000000FF000000FF000000FF000080800000000000000000000000
          0000008080000000FF000000FF000000FF000080800000808000008080000080
          800000808000008080000000FF000000FF000000FF007F7F7F00000000007F7F
          7F000000FF000000FF000000FF00008080000080800000808000008080000080
          80000080800000808000008080000000FF000000FF000000FF00008080000000
          FF000000FF000000FF0000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000000FF000000FF00000000000000
          FF000000FF000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000008000000000000000
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000000FF0000008000000000000000
          80000000FF000080800000808000008080000080800000808000008080000080
          80000080800000808000008080000000FF000000FF0000000000000000000000
          00000000FF000000FF0000808000008080000080800000808000008080000080
          800000808000008080000000FF000000FF000000FF0000000000000000000000
          00000000FF000000FF000000FF00008080000080800000808000008080000080
          8000008080000000FF000000FF000000FF000080800000000000000000000000
          0000008080000000FF000000FF000000FF000080800000808000008080000080
          80000000FF000000FF000000FF0000808000008080007F7F7F00000000007F7F
          7F0000808000008080000000FF000000FF000000FF0000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000008080000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000008080000080
          8000008080000080800000808000008080000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000008080000080
          80000080800000808000008080000080800000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000008080000000000000000000000000000000000000000000FFFFFF00FFFF
          FF0000000000FFFFFF000000000000000000FFFFFF0000000000FFFF00000000
          00000000000000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF00000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF000000
          0000FFFFFF000000000000000000FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000FFFF00FFFFFF000000000000000000000000000000
          00000000000000FFFF0000000000FFFFFF00FFFFFF0000000000FFFF00000000
          0000FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FFFF00FFFFFF0000FF
          FF00FFFFFF0000000000FFFFFF00FFFFFF00FFFFFF0000000000FFFF00000000
          000000FFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          00000000000000FFFF00FFFFFF0000FFFF00000000000000000000FFFF000000
          0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000008080000080
          8000008080000000000000000000000000000000000000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000008080000080
          80000080800000808000008080000000000000FFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000008080000080
          800000808000008080000000000000FFFF0000000000FFFFFF00FFFFFF000000
          000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000008080000080
          8000008080000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000808000008080000080
          8000000000000000FF00000000000080800000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000080800000808000008080000080
          8000008080000000000000808000008080000000000000000000000000000000
          0000000000000000000000000000008080000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000008080000080
          8000008080000000000000000000000000000000000000000000000000000000
          0000000000000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000808000008080000080800000808000008080000000
          00000080800000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000808000000000000080800000808000008080000080
          80000000000000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000000000008080000080800000808000008080000080
          80000080800000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          800000808000000000007F7F7F00000000007F7F7F00000000007F7F7F000000
          00007F7F7F000000000000808000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000008080000080800000808000008080000080
          800000000000FFFFFF00BFBFBF00BFBFBF00BFBFBF007F7F7F007F7F7F007F7F
          7F007F7F7F007F7F7F0000000000008080000080800000808000008080000080
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000008080000080800000808000008080000080
          8000008080000080800000808000000000007F7F7F007F7F7F007F7F7F000000
          0000008080000080800000808000008080000080800000808000008080000080
          8000008080000080800000808000000000000000000000000000000000000000
          0000008080000080800000808000008080000080800000808000}
        MaskColor = clOlive
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC000000000000000000CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC0066000000FFFF0000FF00000000000000CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC000000000000000000000000000000000000000000000000006600
          0000FFFF0000FF000000FF0000000000000000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600CCCCCC00CCCCCC00CCCCCC00CCCCCC0066000000FFFF
          0000FF000000FF000000CCCCCC00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF0066000000FFFF0000FF00
          0000FF000000CCCCCC00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600000000000000000066666600CCCCCC00FF000000FF00
          0000CCCCCC00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC0066666600CCCCCC00FFFF0000CCCCCC00000000006666660066666600CCCC
          CC00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC006666
          6600FFFFFF00FFFF0000CCCCCC00FFFF0000CCCCCC0000000000CCCCCC00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC006666
          6600FFFF0000FFFFFF00FFFF0000CCCCCC00FFFF000000000000CCCCCC00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC006666
          6600FFFFFF00FFFF0000FFFFFF00FFFF0000CCCCCC0000000000CCCCCC00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC0066666600FFFFFF00FFFF0000FFFFFF0000000000CCCCCC00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC00666666006666660000000000CCCCCC00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00CCCCCC0000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000000000000000000000000000CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00CCCCCC00FFFFFF0066666600CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC0066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00CCCCCC0066666600CCCCCC00CCCCCC00CCCCCC00CCCCCC00CCCC
          CC00CCCCCC006666660066666600666666006666660066666600666666006666
          66006666660066666600CCCCCC00CCCCCC00CCCCCC00CCCCCC00}
        MaskColor = 13421772
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000000000000000000000000000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF0000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C00000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF000000000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C0000000000000000000000000000000000000000000000000000000
          000000000000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000}
        MaskColor = clSilver
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000FFFF
          FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
          FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C00000000000FFFF
          FF00C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0C000C0C0
          C000C0C0C000C0C0C000C0C0C0000000FF000000FF00C0C0C00000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00808080000000
          0000000000008080800080808000808080008080800080808000808080008080
          8000808080008080800080808000808080008080800000000000BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000BFBFBF00BFBF
          BF000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF00000000000000000000000000000000000000
          0000000000000000000000000000FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF0000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00}
        MaskColor = clBlack
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F
          7F00007F7F00007F7F00007F7F00007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          00000000000000000000007F7F00007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000007F7F0000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00000000000000000000000000BFBFBF00BFBFBF000000
          0000007F7F0000000000BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF0000000000BFBFBF0000000000BFBFBF00BFBFBF000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBF
          BF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00BFBFBF00}
        MaskColor = 12566463
      end>
  end
  object dxBarDBNavigator1: TdxBarDBNavigator
    BarManager = dxBarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast, dxbnInsert, dxbnDelete, dxbnEdit, dxbnPost, dxbnCancel, dxbnRefresh]
    Left = 288
    Top = 4
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = Grid
    PopupMenus = <
      item
        HitTypes = [gvhtCell, gvhtRecord, gvhtRowIndicator]
        Index = 0
      end>
    Left = 464
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 342
    Top = 4
  end
  object cxPropertiesStore: TcxPropertiesStore
    Components = <>
    StorageName = 'cxPropertiesStore'
    StorageType = stStream
    Left = 368
    Top = 4
  end
  object cxIntl1: TcxIntl
    Connected = True
    Version = '6.29'
    cxLibrary.CantCreateRegistryKey = 'Impossivel criar a chave de registo : \%s'
    cxLibrary.ConverterCantCreateStyleRepository = 'Can'#39't create the Style Repository'
    QuantumGrid.GridRecursiveLevels = 'N'#227'o se podem criar n'#237'veis recursivos'
    QuantumGrid.GridDeletingConfirmationCaption = 'Confirmar'
    QuantumGrid.GridDeletingFocusedConfirmationText = 'Apagar registo?'
    QuantumGrid.GridDeletingSelectedConfirmationText = 'Apagar todos os registos seleccionados?'
    QuantumGrid.GridNoDataInfoText = '<N'#227'o existem dados para visualizar>'
    QuantumGrid.GridNewItemRowInfoText = 'Pressione aqui para inserir uma nova linha'
    QuantumGrid.GridFilterIsEmpty = '<Filtro Vazio>'
    QuantumGrid.GridCustomizationFormCaption = 'Personaliza'#231#227'o'
    QuantumGrid.GridCustomizationFormColumnsPageCaption = 'Colunas'
    QuantumGrid.GridGroupByBoxCaption = 'Arraste o titulo de uma coluna aqui para agrupar por essa coluna'
    QuantumGrid.GridFilterCustomizeButtonCaption = 'Personalizar...'
    QuantumGrid.GridColumnsQuickCustomizationHint = 'Pressione aqui para seleccionar as colunas vis'#237'veis'
    QuantumGrid.GridCustomizationFormBandsPageCaption = 'Bandas'
    QuantumGrid.GridBandsQuickCustomizationHint = 'Pressione aqui para seleccionar as bandas vis'#237'veis'
    QuantumGrid.GridCustomizationFormRowsPageCaption = 'Linhas'
    QuantumGrid.GridConverterIntermediaryMissing = 'Omitiu um componente intermedi'#225'rio!'
    QuantumGrid.GridConverterNotExistGrid = 'cxGrid n'#227'o existe'
    QuantumGrid.GridConverterNotExistComponent = 'O componente n'#227'o existe'
    QuantumGrid.ImportErrorCaption = 'Erro ao importar'
    QuantumGrid.NotExistGridView = 'N'#227'o existe a vista da grid'
    QuantumGrid.NotExistGridLevel = 'N'#227'o existe um nivel de grid ativo'
    QuantumGrid.CantCreateExportOutputFile = 'imposs'#237'vel criar o arquivo de exporta'#231#227'o'
    QuantumGrid.EditRepositoryExtLookupComboBoxItem = 
      'ExtLookupComboBox|Representa um ultra avan'#231'ado controle de busca' +
      ' (lookup) usando a QuantumGrid como seu controle de distribui'#231#227'o'
    QuantumGrid.GridFilterRowInfoText = 'Clique aqui para definir um filtro'
    QuantumGrid.GridFilterApplyButtonCaption = 'Aplicar Filtro'
    QuantumGrid.GridYesterday = 'Ontem'
    QuantumGrid.GridToday = 'Hoje'
    QuantumGrid.GridTomorrow = 'Amanh'#227
    QuantumGrid.GridLast30Days = 'Ultimos 30 dias'
    QuantumGrid.GridLast14Days = 'Ultimos 14 dias'
    QuantumGrid.GridLast7Days = 'Ultimos 7 dias'
    QuantumGrid.GridNext7Days = 'Pr'#243'ximos 7 dias'
    QuantumGrid.GridNext14Days = 'Pr'#243'ximos 14 dias'
    QuantumGrid.GridNext30Days = 'Pr'#243'ximos 30 dias'
    QuantumGrid.GridLastTwoWeeks = 'Utimas Duas Semanas'
    QuantumGrid.GridLastWeek = 'Ultima Semana'
    QuantumGrid.GridThisWeek = 'Esta Semana'
    QuantumGrid.GridNextWeek = 'Pr'#243'xima Semana'
    QuantumGrid.GridNextTwoWeeks = 'Pr'#243'xima duas Semanas'
    QuantumGrid.GridLastMonth = 'Ultimo M'#234's'
    QuantumGrid.GridThisMonth = 'Este M'#234's'
    QuantumGrid.GridNextMonth = 'Pr'#243'ximo M'#234's'
    QuantumGrid.GridLastYear = 'Ultimo Ano'
    QuantumGrid.GridThisYear = 'Este Ano'
    QuantumGrid.GridNextYear = 'Pr'#243'ximo Ano'
    QuantumGrid.GridPast = 'Passado'
    QuantumGrid.GridFuture = 'Futuro'
    QuantumGrid.GridMonthFormat = 'mmmm yyyy'
    QuantumGrid.GridYearFormat = 'yyyy'
    QuantumGrid.GridChartCategoriesDisplayText = 'Data'
    QuantumGrid.GridChartValueHintFormat = '%s for %s is %s'
    QuantumGrid.GridChartPercentValueTickMarkLabelFormat = '0%'
    QuantumGrid.GridChartToolBoxDataLevels = 'Data Levels:'
    QuantumGrid.GridChartToolBoxDataLevelSelectValue = 'Selecione o valor'
    QuantumGrid.GridChartToolBoxCustomizeButtonCaption = 'Customizar Gr'#225'fico'
    QuantumGrid.GridChartNoneDiagramDisplayText = 'Sem Diagrama'
    QuantumGrid.GridChartColumnDiagramDisplayText = 'Column diagram'
    QuantumGrid.GridChartBarDiagramDisplayText = 'Bar diagram'
    QuantumGrid.GridChartLineDiagramDisplayText = 'Diagrama de Linha'
    QuantumGrid.GridChartAreaDiagramDisplayText = 'Area diagram'
    QuantumGrid.GridChartPieDiagramDisplayText = 'Pie diagram'
    QuantumGrid.GridChartCustomizationFormSeriesPageCaption = 'Series'
    QuantumGrid.GridChartCustomizationFormSortBySeries = 'Ordenar por:'
    QuantumGrid.GridChartCustomizationFormNoSortedSeries = '<none series>'
    QuantumGrid.GridChartCustomizationFormDataGroupsPageCaption = 'Data Groups'
    QuantumGrid.GridChartCustomizationFormOptionsPageCaption = 'Op'#231#245'es'
    QuantumGrid.GridChartLegend = 'Legendas'
    QuantumGrid.GridChartLegendKeyBorder = 'Key Border'
    QuantumGrid.GridChartPosition = 'Posi'#231#227'o'
    QuantumGrid.GridChartPositionDefault = 'Default'
    QuantumGrid.GridChartPositionNone = 'None'
    QuantumGrid.GridChartPositionLeft = 'Esquerda'
    QuantumGrid.GridChartPositionTop = 'Topo'
    QuantumGrid.GridChartPositionRight = 'Direita'
    QuantumGrid.GridChartPositionBottom = 'Abaixo'
    QuantumGrid.GridChartAlignment = 'Alignment'
    QuantumGrid.GridChartAlignmentDefault = 'Default'
    QuantumGrid.GridChartAlignmentStart = 'Start'
    QuantumGrid.GridChartAlignmentCenter = 'Center'
    QuantumGrid.GridChartAlignmentEnd = 'End'
    QuantumGrid.GridChartOrientation = 'Orienta'#231#227'o'
    QuantumGrid.GridChartOrientationDefault = 'Default'
    QuantumGrid.GridChartOrientationHorizontal = 'Horizontal'
    QuantumGrid.GridChartOrientationVertical = 'Vertical'
    QuantumGrid.GridChartBorder = 'Border'
    QuantumGrid.GridChartTitle = 'T'#237'tulo'
    QuantumGrid.GridChartToolBox = 'Barra de Ferramentas'
    QuantumGrid.GridChartDiagramSelector = 'Seletor de Diagrama'
    QuantumGrid.GridChartOther = 'Outro'
    QuantumGrid.GridChartValueHints = 'Value Hints'
    Navigator.NavigatorHint_First = 'Primeiro registo'
    Navigator.NavigatorHint_Prior = 'Registo anterior'
    Navigator.NavigatorHint_PriorPage = 'P'#225'gina anterior'
    Navigator.NavigatorHint_Next = 'Registo seguinte'
    Navigator.NavigatorHint_NextPage = 'P'#225'gina seguinte'
    Navigator.NavigatorHint_Last = 'Ultimo registo'
    Navigator.NavigatorHint_Insert = 'Inserir registo'
    Navigator.NavigatorHint_Delete = 'Apagar registo'
    Navigator.NavigatorHint_Append = 'Append record'
    Navigator.NavigatorHint_Edit = 'Editar registo'
    Navigator.NavigatorHint_Post = 'Gravar edi'#231#227'o'
    Navigator.NavigatorHint_Cancel = 'Cancelar edi'#231#227'o'
    Navigator.NavigatorHint_Refresh = 'Actualizar dados'
    Navigator.NavigatorHint_SaveBookmark = 'Guardar Marcador'
    Navigator.NavigatorHint_GotoBookmark = 'Ir para Marcador'
    Navigator.NavigatorHint_Filter = 'Filtrar dados'
    Navigator.Navigator_DeleteRecordQuestion = 'Deseja apagar este registo?'
    Editors.EditButtonCancel = 'Cancel'
    Editors.EditButtonOK = 'OK'
    Editors.EditDateConvertError = 'Elemento de reposit'#243'rio n'#227'o v'#225'lido'
    Editors.EditInvalidRepositoryItem = 'O valor n'#227'o pode ser convertido'
    Editors.EditNumericValueConvertError = 'O valor num'#233'rico n'#227'o pode ser convertido'
    Editors.EditPopupCircularReferencingError = 'Refer'#234'ncia circular n'#227'o permitida'
    Editors.EditPostError = 'Ocurreu um erro durante a grava'#231#227'o do valor de edi'#231#227'o'
    Editors.EditTimeConvertError = 'O valor de tempo n'#227'o pode ser convertido'
    Editors.EditValidateErrorText = 'Valor inv'#225'lido. Use a tecla de <Esc> para cancelar'
    Editors.EditValueOutOfBounds = 'Valor fora de limites'
    Editors.EditCheckBoxChecked = 'True'
    Editors.EditCheckBoxUnchecked = 'False'
    Editors.TextTrue = 'True'
    Editors.TextFalse = 'False'
    Editors.BlobButtonOK = '&Ok'
    Editors.BlobButtonCancel = '&Cancelar'
    Editors.BlobButtonClose = '&Fechar'
    Editors.BlobMemo = '(MEMO)'
    Editors.BlobMemoEmpty = '(memo)'
    Editors.BlobPicture = '(IMAGEM)'
    Editors.BlobPictureEmpty = '(imagem)'
    Editors.MenuItemCaptionCut = 'Recor&tar'
    Editors.MenuItemCaptionCopy = '&Copiar'
    Editors.MenuItemCaptionPaste = 'Co&lar'
    Editors.MenuItemCaptionDelete = '&Excluir'
    Editors.MenuItemCaptionLoad = '&Carregar...'
    Editors.MenuItemCaptionSave = 'Salvar &Como...'
    Editors.DatePopupClear = 'Limpar'
    Editors.DatePopupNow = 'Agora'
    Editors.DatePopupOK = 'Ok'
    Editors.DatePopupToday = 'Hoje'
    Editors.DateError = 'Data inv'#225'lida'
    Editors.DateToday = 'hoje'
    Editors.DateYesterday = 'Ontem'
    Editors.DateTomorrow = 'amanh'#227
    Editors.DateSunday = 'Domingo'
    Editors.DateMonday = 'Segunda'
    Editors.DateTuesday = 'Ter'#231'a'
    Editors.DateWednesday = 'Quarta'
    Editors.DateThursday = 'Quinta'
    Editors.DateFriday = 'Sexta'
    Editors.DateSaturday = 'S'#225'bado'
    Editors.DateFirst = 'Primeiro'
    Editors.DateSecond = 'segundo'
    Editors.DateThird = 'terceiro'
    Editors.DateFourth = 'Quarto'
    Editors.DateFifth = 'Quinto'
    Editors.DateSixth = 'sexto'
    Editors.DateSeventh = 's'#233'timo'
    Editors.DateBOM = 'bom'
    Editors.DateEOM = 'eom'
    Editors.DateNow = 'agora'
    Editors.CalcError = 'Erro'
    Editors.HyperLinkPrefix = 'http://'
    Editors.HyperLinkDoubleSlash = '//'
    Editors.EditRepositoryBlobItem = 'BlobEdit|Representa o editor de BLOB'
    Editors.EditRepositoryButtonItem = 
      'ButtonEdit|Representa um controle de edi'#231#227'o com controles incrus' +
      'tados'
    Editors.EditRepositoryCalcItem = 
      'CalcEdit|Representa um controle de edi'#231#227'o com uma janela de calc' +
      'uladora drop-down'
    Editors.EditRepositoryCheckBoxItem = 
      'CheckBox|Representa um controle de caixa de marca que permite se' +
      'leccionar uma op'#231#227'o'
    Editors.EditRepositoryComboBoxItem = 'ComboBox|Representa o editor da caixa combo'
    Editors.EditRepositoryCurrencyItem = 
      'CurrencyEdit|Representa um editor que possibilita a edi'#231#227'o de va' +
      'lores monetarios'
    Editors.EditRepositoryDateItem = 
      'DateEdit|Representa um controle de edi'#231#227'o com um calend'#225'rio pend' +
      'ente'
    Editors.EditRepositoryHyperLinkItem = 'HyperLink|Representa um editor de texto de Hiperliga'#231#227'o'
    Editors.EditRepositoryImageComboBoxItem = 
      'ImageComboBox|Representa um editor que mostra uma lista de image' +
      'ns e texto na janela pendente'
    Editors.EditRepositoryImageItem = 'Image|Representa um editor de imagens'
    Editors.EditRepositoryLookupComboBoxItem = 'LookupComboBox|Representa uma caixa de busca'
    Editors.EditRepositoryMaskItem = 'MaskEdit|Representa um controle de edi'#231#227'o gen'#233'rico com m'#225'scara'
    Editors.EditRepositoryMemoItem = 
      'Memo|Representa um controle de edi'#231#227'o que permite editar dados m' +
      'emo'
    Editors.EditRepositoryMRUItem = 
      'MRUEdit|Representa um editor de texto mostrando a lista dos elem' +
      'entos mais recentemente usados (MRU) numa janela pendente'
    Editors.EditRepositoryPopupItem = 
      'PopupEdit|Representa um controle de edi'#231#227'o com uma lista pendent' +
      'e'
    Editors.EditRepositorySpinItem = 
      'SpinEdit|Representa um editor de incrementa'#231#227'o/desincrementa'#231#227'o ' +
      '(spin)'
    Editors.EditRepositoryRadioGroupItem = 'RadioGroup|Represents a group of radio buttons'
    Editors.EditRepositoryTextItem = 'TextEdit|Representa um editor de texto'
    Editors.EditRepositoryTimeItem = 'TimeEdit|Representa um editor mostrando valores de tempo'
    Editors.EditRepositoryColorComboBoxItem = 'ColorComboBox |Represents a editor with color functionality'
    Editors.EditRepositoryFontNameComboBoxItem = 'FontNameComboBox |Represents a editor with font functionality'
    Editors.EditRepositoryLabelItem = 'Label|Represents a Label'
    Editors.EditRepositoryProgressBarItem = 'ProgressBar|Represents a ProgressBar'
    Editors.EditRepositoryTrackBarItem = 'TrackBar|Represents a TrackBar'
    Editors.EditRepositorySpinButtonItem = 'SpinButton|Represents a SpinButton'
    Editors.EditRepositoryCheckComboBox = 'CheckComboBox|Represents a CheckComboBox'
    Editors.EditRepositoryShellComboBoxItem = 
      'ShellComboBox|Represents a combo box with a dropdown shell tree ' +
      'view'
    Editors.EditRepositoryCheckGroupItem = 'CheckGroup|Represents a group of check boxes'
    Editors.EditRepositoryRichEditItem = 'RichEdit|RichEdit control'
    Editors.EditCheckGroupCaptionStateDelimiter = ': '
    Editors.EditCheckGroupFilterColumnSeparator = '; '
    Editors.EditCheckGroupChecked = 'Checked'
    Editors.EditCheckGroupGrayed = 'Grayed'
    Editors.EditCheckGroupUnchecked = 'Unchecked'
    Editors.CheckComboBoxStatesItemsPropertyDlgCaption = 'cxCheckComboBox - CheckStates editor'
    Editors.CheckGroupStatesItemsPropertyDlgCaption = 'cxCheckGroup - CheckStates editor'
    Editors.CheckComboBoxEmptySelectionText = 'None selected'
    Editors.ColorComboBoxDefaultDescription = 'Color not selected'
    Editors.EditRichEditLibraryError = 'Cannot load a RichEdit library'
    Editors.EditRichEditLineInsertionError = 'RichEdit line insertion error'
    Editors.EditRichEditLoadFail = 'Failed to Load Stream'
    Editors.EditRichEditSaveFail = 'Failed to Save Stream'
    Editors.EditRichEditUndoCaption = '&Undo'
    Editors.EditRichEditRedoCaption = '&Redo'
    Editors.EditRichEditCutCaption = 'Cu&t'
    Editors.EditRichEditCopyCaption = '&Copy'
    Editors.EditRichEditPasteCaption = '&Paste'
    Editors.EditRichEditDeleteCaption = '&Delete'
    Editors.EditRichEditSelectAllCaption = 'Select &All'
    Editors.RegExprLine = 'Linha'
    Editors.RegExprChar = 'Caractere'
    Editors.RegExprNotAssignedSourceStream = 'N'#227'o se atribuiu o stream fonte'
    Editors.RegExprEmptySourceStream = 'O stream origem est'#225' vazio'
    Editors.RegExprCantUsePlusQuantifier = 'O quantificador '#39'+'#39' n'#227'o se pode aplicar aqui'
    Editors.RegExprCantUseStarQuantifier = 'O quantificador '#39'*'#39' n'#227'o se pode aplicar aqui'
    Editors.RegExprCantCreateEmptyAlt = 'A alternativa n'#227'o deve estar vazia'
    Editors.RegExprCantCreateEmptyBlock = 'O bloco n'#227'o deve estar vazio'
    Editors.RegExprIllegalSymbol = 'Simbolo n'#227'o permitido '#39'%s'#39
    Editors.RegExprIllegalQuantifier = 'Quantificador n'#227'o permitido '#39'%s'#39
    Editors.RegExprNotSupportQuantifier = 'O par'#226'metro quantificador n'#227'o '#233' suportado'
    Editors.RegExprIllegalIntegerValue = 'Valor inteiro n'#227'o permitido'
    Editors.RegExprTooBigReferenceNumber = 'N'#250'mero de refer'#234'ncia demasiado grande'
    Editors.RegExprCantCreateEmptyEnum = 'N'#227'o se pode criar enumera'#231#227'o vazia'
    Editors.RegExprSubrangeOrder = 'O caractere de inicio do sub Intervalo deve ser menor no fim'
    Editors.RegExprHexNumberExpected0 = 'Esperava-se n'#250'mero Hexadecimal'
    Editors.RegExprHexNumberExpected = 'N'#250'mero Hexadecimal esperado mas encontrou-se '#39'%s'#39
    Editors.RegExprMissing = 'Falta '#39'%s'#39
    Editors.RegExprUnnecessary = 'N'#227'o necess'#225'rio '#39'%s'#39
    Editors.RegExprIncorrectSpace = 'Espa'#231'o incorrecto depois de '#39'\'#39
    Editors.RegExprNotCompiled = 'Express'#227'o regular n'#227'o compilada'
    Editors.RegExprIncorrectParameterQuantifier = 'Quantificador de par'#226'metros incorrecto'
    Editors.RegExprCantUseParameterQuantifier = 'The parameter quantifier cannot be applied here'
    Editors.UDAssociated = ' is already associated with '
    Editors.HotZoneStyleMediaPlayer9 = 'MediaPlayer9'
    Editors.HotZoneStyleMediaPlayer8 = 'MediaPlayer8'
    Editors.HotZoneStyleXPTaskBar = 'XPTaskBar'
    Editors.HotZoneStyleSimple = 'Simple'
    Editors.LoadingFonts = 'Loading ...'
    Editors.MaskEditRegExprError = 'Erros nas express'#245'es regulares:'
    Editors.MaskEditInvalidEditValue = 'O valor de edi'#231#227'o '#233' inv'#225'lido'
    Editors.MaskEditNoMask = 'Nenhum'
    Editors.MaskEditIllegalFileFormat = 'Formato de arquivo ilegal'
    Editors.MaskEditEmptyMaskCollectionFile = 'O arquivo de colec'#231#227'o de m'#225'scaras est'#225' vazio'
    Editors.MaskEditMaskCollectionFiles = 'Arquivos de colec'#231#227'o de m'#225'scaras'
    Editors.SpinEditInvalidNumericValue = 'Valor num'#233'rico n'#227'o v'#225'lido'
    Datacontroller.DataReadError = 'Erro de leitura na origem dos dados'
    Datacontroller.DataWriteError = 'Erro de escrita na origem dos dados (stream)'
    Datacontroller.DataItemExistError = 'O elemento j'#225' existe'
    Datacontroller.DataRecordIndexError = 'Indice de registo fora do intervalo'
    Datacontroller.DataItemIndexError = 'Indice de elemento fora do intervalo'
    Datacontroller.DataProviderModeError = 'A opera'#231#227'o n'#227'o '#233' suportada em modo de provedor (provider)'
    Datacontroller.DataInvalidStreamFormat = 'Origem de dados (Stream) inv'#225'lido'
    Datacontroller.DataRowIndexError = 'Indice do elemento de linha fora do intervalo'
    Datacontroller.DataCustomDataSourceInvalidCompare = 'Instru'#231#227'o GetInfoForCompare n'#227'o implementada'
    Datacontroller.DBDetailFilterControllerNotFound = 'DetailFilterController n'#227'o encontrado'
    Datacontroller.DBNotInGridMode = 'A controladora de dados n'#227'o est'#225' em modo de Grid'
    Datacontroller.DBKeyFieldNotFound = 'Campo chave n'#227'o encontrado'
    Filter.FilterOperatorEqual = 'igual a'
    Filter.FilterOperatorNotEqual = 'diferente de'
    Filter.FilterOperatorLess = 'menor que'
    Filter.FilterOperatorLessEqual = 'menor ou igual a'
    Filter.FilterOperatorGreater = 'maior que'
    Filter.FilterOperatorGreaterEqual = 'maior ou igual a'
    Filter.FilterOperatorLike = 'like (SQL)'
    Filter.FilterOperatorNotLike = 'not like (SQL)'
    Filter.FilterOperatorBetween = 'entre'
    Filter.FilterOperatorNotBetween = 'n'#227'o entre'
    Filter.FilterOperatorInList = 'em'
    Filter.FilterOperatorNotInList = 'n'#227'o em'
    Filter.FilterOperatorYesterday = 'foi ontem'
    Filter.FilterOperatorToday = #233' hoje'
    Filter.FilterOperatorTomorrow = 'ser'#225' amanh'#227
    Filter.FilterOperatorLastWeek = #233' a '#250'ltima semana'
    Filter.FilterOperatorLastMonth = #233' o '#250'ltimo m'#234's'
    Filter.FilterOperatorLastYear = 'foi ano passado'
    Filter.FilterOperatorThisWeek = #233' esta semana'
    Filter.FilterOperatorThisMonth = #233' este m'#234's'
    Filter.FilterOperatorThisYear = #233' este ano'
    Filter.FilterOperatorNextWeek = #233' semana seguinte'
    Filter.FilterOperatorNextMonth = #233' m'#234's seguinte'
    Filter.FilterOperatorNextYear = #233' pr'#243'ximo ano'
    Filter.FilterOperatorLast7Days = 'is last 7 days'
    Filter.FilterOperatorLast14Days = 'is last 14 days'
    Filter.FilterOperatorLastTwoWeeks = 'is last two weeks'
    Filter.FilterOperatorLast30Days = 'is last 30 days'
    Filter.FilterOperatorPast = 'is past'
    Filter.FilterOperatorNext7Days = 'is next 7 days'
    Filter.FilterOperatorNext14Days = 'is next 14 days'
    Filter.FilterOperatorNextTwoWeeks = 'is next two weeks'
    Filter.FilterOperatorNext30Days = 'is next 30 days'
    Filter.FilterOperatorFuture = 'is future'
    Filter.FilterAndCaption = 'e'
    Filter.FilterOrCaption = 'ou'
    Filter.FilterNotCaption = 'n'#227'o'
    Filter.FilterBlankCaption = 'vazio'
    Filter.FilterOperatorIsNull = #233' vazio'
    Filter.FilterOperatorIsNotNull = 'n'#227'o '#233' vazio'
    Filter.FilterOperatorBeginsWith = 'come'#231'a com'
    Filter.FilterOperatorDoesNotBeginWith = 'n'#227'o come'#231'a com'
    Filter.FilterOperatorEndsWith = 'termina com'
    Filter.FilterOperatorDoesNotEndWith = 'n'#227'o termina com'
    Filter.FilterOperatorContains = 'cont'#233'm'
    Filter.FilterOperatorDoesNotContain = 'n'#227'o cont'#233'm'
    Filter.FilterBoxAllCaption = '(Todos)'
    Filter.FilterBoxCustomCaption = '(Filtro...)'
    Filter.FilterBoxBlanksCaption = '(Vazios)'
    Filter.FilterBoxNonBlanksCaption = '(N'#227'o Vazios)'
    Filter.FilterBoolOperatorAnd = 'E'
    Filter.FilterBoolOperatorOr = 'OU'
    Filter.FilterBoolOperatorNotAnd = 'N'#195'O E'
    Filter.FilterBoolOperatorNotOr = 'N'#195'O OU'
    Filter.FilterRootButtonCaption = 'Filtro'
    Filter.FilterAddCondition = 'Inserir &Condi'#231#227'o'
    Filter.FilterAddGroup = 'Inserir &Grupo'
    Filter.FilterRemoveRow = '&Remover Linha'
    Filter.FilterClearAll = 'Limpar &Tudo'
    Filter.FilterFooterAddCondition = 'pressione o bot'#227'o para inserir uma nova condi'#231#227'o'
    Filter.FilterGroupCaption = 'aplica-se '#225's seguintes condi'#231#245'es'
    Filter.FilterRootGroupCaption = '<ra'#237'z>'
    Filter.FilterControlNullString = '<vazio>'
    Filter.FilterErrorBuilding = 'N'#227'o se pode construir filtro desde a origem'
    Filter.FilterDialogCaption = 'Filtro Personalizado'
    Filter.FilterDialogInvalidValue = 'Valor inv'#225'lido'
    Filter.FilterDialogUse = 'Usar'
    Filter.FilterDialogSingleCharacter = 'para representar um simples caractere'
    Filter.FilterDialogCharactersSeries = 'para representar uma s'#233'rie de caracteres'
    Filter.FilterDialogOperationAnd = 'E'
    Filter.FilterDialogOperationOr = 'OU'
    Filter.FilterDialogRows = 'Mostrar linhas onde:'
    Filter.FilterControlDialogCaption = 'Construtor de Filtro'
    Filter.FilterControlDialogNewFile = 'semnome.flt'
    Filter.FilterControlDialogOpenDialogCaption = 'Abrir um filtro existente'
    Filter.FilterControlDialogSaveDialogCaption = 'Salvar o filtro ativo em arquivo'
    Filter.FilterControlDialogActionSaveCaption = '&Salvar...'
    Filter.FilterControlDialogActionOpenCaption = '&Abrir...'
    Filter.FilterControlDialogActionApplyCaption = '&Aplicar'
    Filter.FilterControlDialogActionOkCaption = 'Ok'
    Filter.FilterControlDialogActionCancelCaption = 'Cancelar'
    Filter.FilterControlDialogFileExt = 'flt'
    Filter.FilterControlDialogFileFilter = 'Filtros (*.flt)|*.flt'
    GridPopupMenu.GridNone = 'Nenhum'
    GridPopupMenu.GridSortColumnAsc = 'Ordenar Ascendente'
    GridPopupMenu.GridSortColumnDesc = 'Ordenar Descendente'
    GridPopupMenu.GridClearSorting = 'Clear Sorting'
    GridPopupMenu.GridGroupByThisField = 'Agrupar por este campo'
    GridPopupMenu.GridRemoveThisGroupItem = 'Remover do grupo'
    GridPopupMenu.GridGroupByBox = 'Painel "Agrupar por"'
    GridPopupMenu.GridAlignmentSubMenu = 'Alinhar'
    GridPopupMenu.GridAlignLeft = 'Alinhar Esquerda'
    GridPopupMenu.GridAlignRight = 'Alinhar Direita'
    GridPopupMenu.GridAlignCenter = 'Alinhar Centrado'
    GridPopupMenu.GridRemoveColumn = 'Remover esta coluna'
    GridPopupMenu.GridFieldChooser = 'Selector de campos'
    GridPopupMenu.GridBestFit = 'Melhor distribui'#231#227'o'
    GridPopupMenu.GridBestFitAllColumns = 'Melhor distribui'#231#227'o (Todas as colunas)'
    GridPopupMenu.GridShowFooter = 'Sum'#225'rio'
    GridPopupMenu.GridShowGroupFooter = 'Sum'#225'rio de grupo'
    GridPopupMenu.GridSumMenuItem = 'Somar'
    GridPopupMenu.GridMinMenuItem = 'M'#237'nimo'
    GridPopupMenu.GridMaxMenuItem = 'M'#225'ximo'
    GridPopupMenu.GridCountMenuItem = 'Contar'
    GridPopupMenu.GridAvgMenuItem = 'M'#233'dia'
    GridPopupMenu.GridNoneMenuItem = 'Nenhum'
    GridPopupMenu.GridSortByGroupValues = 'Sort by Group Value'
    GridPopupMenu.GridSortBySummaryCaption = 'Sort by Group Summary:'
    GridPopupMenu.GridSortBySummary = '%s for %s'
    GridExport.UnsupportedExport = 'Tipo de exporta'#231#227'o n'#227'o suportada: %1'
    GridExport.StyleManagerKill = 
      'O administrador de estilo est'#225' sendo utilizado e n'#227'o pode ser li' +
      'bertado neste momento'
    GridExport.StyleManagerCreate = 'N'#227'o se pode criar administrador de estilo'
    GridExport.ExportToHtml = 'Exportar para p'#225'gina Web (*.html)'
    GridExport.ExportToXml = 'Exportar para documento XML (*.xml)'
    GridExport.ExportToText = 'Exportar para formato de texto (*.txt)'
    GridExport.EmptyExportCache = 'Cache de exporta'#231#227'o vazio'
    GridExport.IncorrectUnion = 'Uni'#227'o de c'#233'lulas incorrecta'
    GridExport.IllegalWidth = 'Comprimento de coluna ilegal'
    GridExport.InvalidColumnRowCount = 'Conteudo de coluna ou linha inv'#225'lido'
    GridExport.IllegalHeight = 'Inicio de linha ilegal'
    GridExport.InvalidColumnIndex = 'O '#237'ndice de coluna %d fora de limites'
    GridExport.InvalidRowIndex = 'O '#237'ndice de linha %d est'#225' fora de limites'
    GridExport.InvalidStyleIndex = #205'ndice de estilo %d inv'#225'lido'
    GridExport.ExportToExcel = 'Exportar para MS Excel (*.xls)'
    GridExport.WorkbookWrite = 'Erro ao escrever o arquivo XLS'
    GridExport.InvalidCellDimension = 'Dimens'#227'o de c'#233'lula inv'#225'lida'
    GridExport.BoolTrue = 'True'
    GridExport.BoolFalse = 'False'
    Translate.cxLibrary = True
    Translate.QuantumGrid = True
    Translate.Editors = True
    Translate.Datacontroller = True
    Translate.Filter = True
    Translate.GridPopupMenu = True
    Translate.GridExport = True
    Translate.Navigator = True
    Left = 496
    Top = 4
  end
  object cxIntl2: TcxIntl
    Connected = True
    Version = '6.29'
    cxLibrary.CantCreateRegistryKey = 'Impossivel criar a chave de registo : \%s'
    cxLibrary.ConverterCantCreateStyleRepository = 'Can'#39't create the Style Repository'
    QuantumGrid.GridRecursiveLevels = 'N'#227'o se podem criar n'#237'veis recursivos'
    QuantumGrid.GridDeletingConfirmationCaption = 'Confirmar'
    QuantumGrid.GridDeletingFocusedConfirmationText = 'Apagar registo?'
    QuantumGrid.GridDeletingSelectedConfirmationText = 'Apagar todos os registos seleccionados?'
    QuantumGrid.GridNoDataInfoText = '<N'#227'o existem dados para visualizar>'
    QuantumGrid.GridNewItemRowInfoText = 'Pressione aqui para inserir uma nova linha'
    QuantumGrid.GridFilterIsEmpty = '<Filtro Vazio>'
    QuantumGrid.GridCustomizationFormCaption = 'Personaliza'#231#227'o'
    QuantumGrid.GridCustomizationFormColumnsPageCaption = 'Colunas'
    QuantumGrid.GridGroupByBoxCaption = 'Arraste o titulo de uma coluna aqui para agrupar por essa coluna'
    QuantumGrid.GridFilterCustomizeButtonCaption = 'Personalizar...'
    QuantumGrid.GridColumnsQuickCustomizationHint = 'Pressione aqui para seleccionar as colunas vis'#237'veis'
    QuantumGrid.GridCustomizationFormBandsPageCaption = 'Bandas'
    QuantumGrid.GridBandsQuickCustomizationHint = 'Pressione aqui para seleccionar as bandas vis'#237'veis'
    QuantumGrid.GridCustomizationFormRowsPageCaption = 'Linhas'
    QuantumGrid.GridConverterIntermediaryMissing = 'Omitiu um componente intermedi'#225'rio!'
    QuantumGrid.GridConverterNotExistGrid = 'cxGrid n'#227'o existe'
    QuantumGrid.GridConverterNotExistComponent = 'O componente n'#227'o existe'
    QuantumGrid.ImportErrorCaption = 'Erro ao importar'
    QuantumGrid.NotExistGridView = 'N'#227'o existe a vista da grid'
    QuantumGrid.NotExistGridLevel = 'N'#227'o existe um nivel de grid ativo'
    QuantumGrid.CantCreateExportOutputFile = 'imposs'#237'vel criar o arquivo de exporta'#231#227'o'
    QuantumGrid.EditRepositoryExtLookupComboBoxItem = 
      'ExtLookupComboBox|Representa um ultra avan'#231'ado controle de busca' +
      ' (lookup) usando a QuantumGrid como seu controle de distribui'#231#227'o'
    QuantumGrid.GridFilterRowInfoText = 'Clique aqui para definir um filtro'
    QuantumGrid.GridFilterApplyButtonCaption = 'Aplicar Filtro'
    QuantumGrid.GridYesterday = 'Ontem'
    QuantumGrid.GridToday = 'Hoje'
    QuantumGrid.GridTomorrow = 'Amanh'#227
    QuantumGrid.GridLast30Days = 'Ultimos 30 dias'
    QuantumGrid.GridLast14Days = 'Ultimos 14 dias'
    QuantumGrid.GridLast7Days = 'Ultimos 7 dias'
    QuantumGrid.GridNext7Days = 'Pr'#243'ximos 7 dias'
    QuantumGrid.GridNext14Days = 'Pr'#243'ximos 14 dias'
    QuantumGrid.GridNext30Days = 'Pr'#243'ximos 30 dias'
    QuantumGrid.GridLastTwoWeeks = 'Utimas Duas Semanas'
    QuantumGrid.GridLastWeek = 'Ultima Semana'
    QuantumGrid.GridThisWeek = 'Esta Semana'
    QuantumGrid.GridNextWeek = 'Pr'#243'xima Semana'
    QuantumGrid.GridNextTwoWeeks = 'Pr'#243'xima duas Semanas'
    QuantumGrid.GridLastMonth = 'Ultimo M'#234's'
    QuantumGrid.GridThisMonth = 'Este M'#234's'
    QuantumGrid.GridNextMonth = 'Pr'#243'ximo M'#234's'
    QuantumGrid.GridLastYear = 'Ultimo Ano'
    QuantumGrid.GridThisYear = 'Este Ano'
    QuantumGrid.GridNextYear = 'Pr'#243'ximo Ano'
    QuantumGrid.GridPast = 'Passado'
    QuantumGrid.GridFuture = 'Futuro'
    QuantumGrid.GridMonthFormat = 'mmmm yyyy'
    QuantumGrid.GridYearFormat = 'yyyy'
    QuantumGrid.GridChartCategoriesDisplayText = 'Data'
    QuantumGrid.GridChartValueHintFormat = '%s for %s is %s'
    QuantumGrid.GridChartPercentValueTickMarkLabelFormat = '0%'
    QuantumGrid.GridChartToolBoxDataLevels = 'Data Levels:'
    QuantumGrid.GridChartToolBoxDataLevelSelectValue = 'Selecione o valor'
    QuantumGrid.GridChartToolBoxCustomizeButtonCaption = 'Customizar Gr'#225'fico'
    QuantumGrid.GridChartNoneDiagramDisplayText = 'Sem Diagrama'
    QuantumGrid.GridChartColumnDiagramDisplayText = 'Column diagram'
    QuantumGrid.GridChartBarDiagramDisplayText = 'Bar diagram'
    QuantumGrid.GridChartLineDiagramDisplayText = 'Diagrama de Linha'
    QuantumGrid.GridChartAreaDiagramDisplayText = 'Area diagram'
    QuantumGrid.GridChartPieDiagramDisplayText = 'Pie diagram'
    QuantumGrid.GridChartCustomizationFormSeriesPageCaption = 'Series'
    QuantumGrid.GridChartCustomizationFormSortBySeries = 'Ordenar por:'
    QuantumGrid.GridChartCustomizationFormNoSortedSeries = '<none series>'
    QuantumGrid.GridChartCustomizationFormDataGroupsPageCaption = 'Data Groups'
    QuantumGrid.GridChartCustomizationFormOptionsPageCaption = 'Op'#231#245'es'
    QuantumGrid.GridChartLegend = 'Legendas'
    QuantumGrid.GridChartLegendKeyBorder = 'Key Border'
    QuantumGrid.GridChartPosition = 'Posi'#231#227'o'
    QuantumGrid.GridChartPositionDefault = 'Default'
    QuantumGrid.GridChartPositionNone = 'None'
    QuantumGrid.GridChartPositionLeft = 'Esquerda'
    QuantumGrid.GridChartPositionTop = 'Topo'
    QuantumGrid.GridChartPositionRight = 'Direita'
    QuantumGrid.GridChartPositionBottom = 'Abaixo'
    QuantumGrid.GridChartAlignment = 'Alignment'
    QuantumGrid.GridChartAlignmentDefault = 'Default'
    QuantumGrid.GridChartAlignmentStart = 'Start'
    QuantumGrid.GridChartAlignmentCenter = 'Center'
    QuantumGrid.GridChartAlignmentEnd = 'End'
    QuantumGrid.GridChartOrientation = 'Orienta'#231#227'o'
    QuantumGrid.GridChartOrientationDefault = 'Default'
    QuantumGrid.GridChartOrientationHorizontal = 'Horizontal'
    QuantumGrid.GridChartOrientationVertical = 'Vertical'
    QuantumGrid.GridChartBorder = 'Border'
    QuantumGrid.GridChartTitle = 'T'#237'tulo'
    QuantumGrid.GridChartToolBox = 'Barra de Ferramentas'
    QuantumGrid.GridChartDiagramSelector = 'Seletor de Diagrama'
    QuantumGrid.GridChartOther = 'Outro'
    QuantumGrid.GridChartValueHints = 'Value Hints'
    Navigator.NavigatorHint_First = 'Primeiro registo'
    Navigator.NavigatorHint_Prior = 'Registo anterior'
    Navigator.NavigatorHint_PriorPage = 'P'#225'gina anterior'
    Navigator.NavigatorHint_Next = 'Registo seguinte'
    Navigator.NavigatorHint_NextPage = 'P'#225'gina seguinte'
    Navigator.NavigatorHint_Last = 'Ultimo registo'
    Navigator.NavigatorHint_Insert = 'Inserir registo'
    Navigator.NavigatorHint_Delete = 'Apagar registo'
    Navigator.NavigatorHint_Append = 'Append record'
    Navigator.NavigatorHint_Edit = 'Editar registo'
    Navigator.NavigatorHint_Post = 'Gravar edi'#231#227'o'
    Navigator.NavigatorHint_Cancel = 'Cancelar edi'#231#227'o'
    Navigator.NavigatorHint_Refresh = 'Actualizar dados'
    Navigator.NavigatorHint_SaveBookmark = 'Guardar Marcador'
    Navigator.NavigatorHint_GotoBookmark = 'Ir para Marcador'
    Navigator.NavigatorHint_Filter = 'Filtrar dados'
    Navigator.Navigator_DeleteRecordQuestion = 'Deseja apagar este registo?'
    Editors.EditButtonCancel = 'Cancel'
    Editors.EditButtonOK = 'OK'
    Editors.EditDateConvertError = 'Elemento de reposit'#243'rio n'#227'o v'#225'lido'
    Editors.EditInvalidRepositoryItem = 'O valor n'#227'o pode ser convertido'
    Editors.EditNumericValueConvertError = 'O valor num'#233'rico n'#227'o pode ser convertido'
    Editors.EditPopupCircularReferencingError = 'Refer'#234'ncia circular n'#227'o permitida'
    Editors.EditPostError = 'Ocurreu um erro durante a grava'#231#227'o do valor de edi'#231#227'o'
    Editors.EditTimeConvertError = 'O valor de tempo n'#227'o pode ser convertido'
    Editors.EditValidateErrorText = 'Valor inv'#225'lido. Use a tecla de <Esc> para cancelar'
    Editors.EditValueOutOfBounds = 'Valor fora de limites'
    Editors.EditCheckBoxChecked = 'True'
    Editors.EditCheckBoxUnchecked = 'False'
    Editors.TextTrue = 'True'
    Editors.TextFalse = 'False'
    Editors.BlobButtonOK = '&Ok'
    Editors.BlobButtonCancel = '&Cancelar'
    Editors.BlobButtonClose = '&Fechar'
    Editors.BlobMemo = '(MEMO)'
    Editors.BlobMemoEmpty = '(memo)'
    Editors.BlobPicture = '(IMAGEM)'
    Editors.BlobPictureEmpty = '(imagem)'
    Editors.MenuItemCaptionCut = 'Recor&tar'
    Editors.MenuItemCaptionCopy = '&Copiar'
    Editors.MenuItemCaptionPaste = 'Co&lar'
    Editors.MenuItemCaptionDelete = '&Excluir'
    Editors.MenuItemCaptionLoad = '&Carregar...'
    Editors.MenuItemCaptionSave = 'Salvar &Como...'
    Editors.DatePopupClear = 'Limpar'
    Editors.DatePopupNow = 'Agora'
    Editors.DatePopupOK = 'Ok'
    Editors.DatePopupToday = 'Hoje'
    Editors.DateError = 'Data inv'#225'lida'
    Editors.DateToday = 'hoje'
    Editors.DateYesterday = 'Ontem'
    Editors.DateTomorrow = 'amanh'#227
    Editors.DateSunday = 'Domingo'
    Editors.DateMonday = 'Segunda'
    Editors.DateTuesday = 'Ter'#231'a'
    Editors.DateWednesday = 'Quarta'
    Editors.DateThursday = 'Quinta'
    Editors.DateFriday = 'Sexta'
    Editors.DateSaturday = 'S'#225'bado'
    Editors.DateFirst = 'Primeiro'
    Editors.DateSecond = 'segundo'
    Editors.DateThird = 'terceiro'
    Editors.DateFourth = 'Quarto'
    Editors.DateFifth = 'Quinto'
    Editors.DateSixth = 'sexto'
    Editors.DateSeventh = 's'#233'timo'
    Editors.DateBOM = 'bom'
    Editors.DateEOM = 'eom'
    Editors.DateNow = 'agora'
    Editors.CalcError = 'Erro'
    Editors.HyperLinkPrefix = 'http://'
    Editors.HyperLinkDoubleSlash = '//'
    Editors.EditRepositoryBlobItem = 'BlobEdit|Representa o editor de BLOB'
    Editors.EditRepositoryButtonItem = 
      'ButtonEdit|Representa um controle de edi'#231#227'o com controles incrus' +
      'tados'
    Editors.EditRepositoryCalcItem = 
      'CalcEdit|Representa um controle de edi'#231#227'o com uma janela de calc' +
      'uladora drop-down'
    Editors.EditRepositoryCheckBoxItem = 
      'CheckBox|Representa um controle de caixa de marca que permite se' +
      'leccionar uma op'#231#227'o'
    Editors.EditRepositoryComboBoxItem = 'ComboBox|Representa o editor da caixa combo'
    Editors.EditRepositoryCurrencyItem = 
      'CurrencyEdit|Representa um editor que possibilita a edi'#231#227'o de va' +
      'lores monetarios'
    Editors.EditRepositoryDateItem = 
      'DateEdit|Representa um controle de edi'#231#227'o com um calend'#225'rio pend' +
      'ente'
    Editors.EditRepositoryHyperLinkItem = 'HyperLink|Representa um editor de texto de Hiperliga'#231#227'o'
    Editors.EditRepositoryImageComboBoxItem = 
      'ImageComboBox|Representa um editor que mostra uma lista de image' +
      'ns e texto na janela pendente'
    Editors.EditRepositoryImageItem = 'Image|Representa um editor de imagens'
    Editors.EditRepositoryLookupComboBoxItem = 'LookupComboBox|Representa uma caixa de busca'
    Editors.EditRepositoryMaskItem = 'MaskEdit|Representa um controle de edi'#231#227'o gen'#233'rico com m'#225'scara'
    Editors.EditRepositoryMemoItem = 
      'Memo|Representa um controle de edi'#231#227'o que permite editar dados m' +
      'emo'
    Editors.EditRepositoryMRUItem = 
      'MRUEdit|Representa um editor de texto mostrando a lista dos elem' +
      'entos mais recentemente usados (MRU) numa janela pendente'
    Editors.EditRepositoryPopupItem = 
      'PopupEdit|Representa um controle de edi'#231#227'o com uma lista pendent' +
      'e'
    Editors.EditRepositorySpinItem = 
      'SpinEdit|Representa um editor de incrementa'#231#227'o/desincrementa'#231#227'o ' +
      '(spin)'
    Editors.EditRepositoryRadioGroupItem = 'RadioGroup|Represents a group of radio buttons'
    Editors.EditRepositoryTextItem = 'TextEdit|Representa um editor de texto'
    Editors.EditRepositoryTimeItem = 'TimeEdit|Representa um editor mostrando valores de tempo'
    Editors.EditRepositoryColorComboBoxItem = 'ColorComboBox |Represents a editor with color functionality'
    Editors.EditRepositoryFontNameComboBoxItem = 'FontNameComboBox |Represents a editor with font functionality'
    Editors.EditRepositoryLabelItem = 'Label|Represents a Label'
    Editors.EditRepositoryProgressBarItem = 'ProgressBar|Represents a ProgressBar'
    Editors.EditRepositoryTrackBarItem = 'TrackBar|Represents a TrackBar'
    Editors.EditRepositorySpinButtonItem = 'SpinButton|Represents a SpinButton'
    Editors.EditRepositoryCheckComboBox = 'CheckComboBox|Represents a CheckComboBox'
    Editors.EditRepositoryShellComboBoxItem = 
      'ShellComboBox|Represents a combo box with a dropdown shell tree ' +
      'view'
    Editors.EditRepositoryCheckGroupItem = 'CheckGroup|Represents a group of check boxes'
    Editors.EditRepositoryRichEditItem = 'RichEdit|RichEdit control'
    Editors.EditCheckGroupCaptionStateDelimiter = ': '
    Editors.EditCheckGroupFilterColumnSeparator = '; '
    Editors.EditCheckGroupChecked = 'Checked'
    Editors.EditCheckGroupGrayed = 'Grayed'
    Editors.EditCheckGroupUnchecked = 'Unchecked'
    Editors.CheckComboBoxStatesItemsPropertyDlgCaption = 'cxCheckComboBox - CheckStates editor'
    Editors.CheckGroupStatesItemsPropertyDlgCaption = 'cxCheckGroup - CheckStates editor'
    Editors.CheckComboBoxEmptySelectionText = 'None selected'
    Editors.ColorComboBoxDefaultDescription = 'Color not selected'
    Editors.EditRichEditLibraryError = 'Cannot load a RichEdit library'
    Editors.EditRichEditLineInsertionError = 'RichEdit line insertion error'
    Editors.EditRichEditLoadFail = 'Failed to Load Stream'
    Editors.EditRichEditSaveFail = 'Failed to Save Stream'
    Editors.EditRichEditUndoCaption = '&Undo'
    Editors.EditRichEditRedoCaption = '&Redo'
    Editors.EditRichEditCutCaption = 'Cu&t'
    Editors.EditRichEditCopyCaption = '&Copy'
    Editors.EditRichEditPasteCaption = '&Paste'
    Editors.EditRichEditDeleteCaption = '&Delete'
    Editors.EditRichEditSelectAllCaption = 'Select &All'
    Editors.RegExprLine = 'Linha'
    Editors.RegExprChar = 'Caractere'
    Editors.RegExprNotAssignedSourceStream = 'N'#227'o se atribuiu o stream fonte'
    Editors.RegExprEmptySourceStream = 'O stream origem est'#225' vazio'
    Editors.RegExprCantUsePlusQuantifier = 'O quantificador '#39'+'#39' n'#227'o se pode aplicar aqui'
    Editors.RegExprCantUseStarQuantifier = 'O quantificador '#39'*'#39' n'#227'o se pode aplicar aqui'
    Editors.RegExprCantCreateEmptyAlt = 'A alternativa n'#227'o deve estar vazia'
    Editors.RegExprCantCreateEmptyBlock = 'O bloco n'#227'o deve estar vazio'
    Editors.RegExprIllegalSymbol = 'Simbolo n'#227'o permitido '#39'%s'#39
    Editors.RegExprIllegalQuantifier = 'Quantificador n'#227'o permitido '#39'%s'#39
    Editors.RegExprNotSupportQuantifier = 'O par'#226'metro quantificador n'#227'o '#233' suportado'
    Editors.RegExprIllegalIntegerValue = 'Valor inteiro n'#227'o permitido'
    Editors.RegExprTooBigReferenceNumber = 'N'#250'mero de refer'#234'ncia demasiado grande'
    Editors.RegExprCantCreateEmptyEnum = 'N'#227'o se pode criar enumera'#231#227'o vazia'
    Editors.RegExprSubrangeOrder = 'O caractere de inicio do sub Intervalo deve ser menor no fim'
    Editors.RegExprHexNumberExpected0 = 'Esperava-se n'#250'mero Hexadecimal'
    Editors.RegExprHexNumberExpected = 'N'#250'mero Hexadecimal esperado mas encontrou-se '#39'%s'#39
    Editors.RegExprMissing = 'Falta '#39'%s'#39
    Editors.RegExprUnnecessary = 'N'#227'o necess'#225'rio '#39'%s'#39
    Editors.RegExprIncorrectSpace = 'Espa'#231'o incorrecto depois de '#39'\'#39
    Editors.RegExprNotCompiled = 'Express'#227'o regular n'#227'o compilada'
    Editors.RegExprIncorrectParameterQuantifier = 'Quantificador de par'#226'metros incorrecto'
    Editors.RegExprCantUseParameterQuantifier = 'The parameter quantifier cannot be applied here'
    Editors.UDAssociated = ' is already associated with '
    Editors.HotZoneStyleMediaPlayer9 = 'MediaPlayer9'
    Editors.HotZoneStyleMediaPlayer8 = 'MediaPlayer8'
    Editors.HotZoneStyleXPTaskBar = 'XPTaskBar'
    Editors.HotZoneStyleSimple = 'Simple'
    Editors.LoadingFonts = 'Loading ...'
    Editors.MaskEditRegExprError = 'Erros nas express'#245'es regulares:'
    Editors.MaskEditInvalidEditValue = 'O valor de edi'#231#227'o '#233' inv'#225'lido'
    Editors.MaskEditNoMask = 'Nenhum'
    Editors.MaskEditIllegalFileFormat = 'Formato de arquivo ilegal'
    Editors.MaskEditEmptyMaskCollectionFile = 'O arquivo de colec'#231#227'o de m'#225'scaras est'#225' vazio'
    Editors.MaskEditMaskCollectionFiles = 'Arquivos de colec'#231#227'o de m'#225'scaras'
    Editors.SpinEditInvalidNumericValue = 'Valor num'#233'rico n'#227'o v'#225'lido'
    Datacontroller.DataReadError = 'Erro de leitura na origem dos dados'
    Datacontroller.DataWriteError = 'Erro de escrita na origem dos dados (stream)'
    Datacontroller.DataItemExistError = 'O elemento j'#225' existe'
    Datacontroller.DataRecordIndexError = 'Indice de registo fora do intervalo'
    Datacontroller.DataItemIndexError = 'Indice de elemento fora do intervalo'
    Datacontroller.DataProviderModeError = 'A opera'#231#227'o n'#227'o '#233' suportada em modo de provedor (provider)'
    Datacontroller.DataInvalidStreamFormat = 'Origem de dados (Stream) inv'#225'lido'
    Datacontroller.DataRowIndexError = 'Indice do elemento de linha fora do intervalo'
    Datacontroller.DataCustomDataSourceInvalidCompare = 'Instru'#231#227'o GetInfoForCompare n'#227'o implementada'
    Datacontroller.DBDetailFilterControllerNotFound = 'DetailFilterController n'#227'o encontrado'
    Datacontroller.DBNotInGridMode = 'A controladora de dados n'#227'o est'#225' em modo de Grid'
    Datacontroller.DBKeyFieldNotFound = 'Campo chave n'#227'o encontrado'
    Filter.FilterOperatorEqual = 'igual a'
    Filter.FilterOperatorNotEqual = 'diferente de'
    Filter.FilterOperatorLess = 'menor que'
    Filter.FilterOperatorLessEqual = 'menor ou igual a'
    Filter.FilterOperatorGreater = 'maior que'
    Filter.FilterOperatorGreaterEqual = 'maior ou igual a'
    Filter.FilterOperatorLike = 'like (SQL)'
    Filter.FilterOperatorNotLike = 'not like (SQL)'
    Filter.FilterOperatorBetween = 'entre'
    Filter.FilterOperatorNotBetween = 'n'#227'o entre'
    Filter.FilterOperatorInList = 'em'
    Filter.FilterOperatorNotInList = 'n'#227'o em'
    Filter.FilterOperatorYesterday = 'foi ontem'
    Filter.FilterOperatorToday = #233' hoje'
    Filter.FilterOperatorTomorrow = 'ser'#225' amanh'#227
    Filter.FilterOperatorLastWeek = #233' a '#250'ltima semana'
    Filter.FilterOperatorLastMonth = #233' o '#250'ltimo m'#234's'
    Filter.FilterOperatorLastYear = 'foi ano passado'
    Filter.FilterOperatorThisWeek = #233' esta semana'
    Filter.FilterOperatorThisMonth = #233' este m'#234's'
    Filter.FilterOperatorThisYear = #233' este ano'
    Filter.FilterOperatorNextWeek = #233' semana seguinte'
    Filter.FilterOperatorNextMonth = #233' m'#234's seguinte'
    Filter.FilterOperatorNextYear = #233' pr'#243'ximo ano'
    Filter.FilterOperatorLast7Days = 'is last 7 days'
    Filter.FilterOperatorLast14Days = 'is last 14 days'
    Filter.FilterOperatorLastTwoWeeks = 'is last two weeks'
    Filter.FilterOperatorLast30Days = 'is last 30 days'
    Filter.FilterOperatorPast = 'is past'
    Filter.FilterOperatorNext7Days = 'is next 7 days'
    Filter.FilterOperatorNext14Days = 'is next 14 days'
    Filter.FilterOperatorNextTwoWeeks = 'is next two weeks'
    Filter.FilterOperatorNext30Days = 'is next 30 days'
    Filter.FilterOperatorFuture = 'is future'
    Filter.FilterAndCaption = 'e'
    Filter.FilterOrCaption = 'ou'
    Filter.FilterNotCaption = 'n'#227'o'
    Filter.FilterBlankCaption = 'vazio'
    Filter.FilterOperatorIsNull = #233' vazio'
    Filter.FilterOperatorIsNotNull = 'n'#227'o '#233' vazio'
    Filter.FilterOperatorBeginsWith = 'come'#231'a com'
    Filter.FilterOperatorDoesNotBeginWith = 'n'#227'o come'#231'a com'
    Filter.FilterOperatorEndsWith = 'termina com'
    Filter.FilterOperatorDoesNotEndWith = 'n'#227'o termina com'
    Filter.FilterOperatorContains = 'cont'#233'm'
    Filter.FilterOperatorDoesNotContain = 'n'#227'o cont'#233'm'
    Filter.FilterBoxAllCaption = '(Todos)'
    Filter.FilterBoxCustomCaption = '(Filtro...)'
    Filter.FilterBoxBlanksCaption = '(Vazios)'
    Filter.FilterBoxNonBlanksCaption = '(N'#227'o Vazios)'
    Filter.FilterBoolOperatorAnd = 'E'
    Filter.FilterBoolOperatorOr = 'OU'
    Filter.FilterBoolOperatorNotAnd = 'N'#195'O E'
    Filter.FilterBoolOperatorNotOr = 'N'#195'O OU'
    Filter.FilterRootButtonCaption = 'Filtro'
    Filter.FilterAddCondition = 'Inserir &Condi'#231#227'o'
    Filter.FilterAddGroup = 'Inserir &Grupo'
    Filter.FilterRemoveRow = '&Remover Linha'
    Filter.FilterClearAll = 'Limpar &Tudo'
    Filter.FilterFooterAddCondition = 'pressione o bot'#227'o para inserir uma nova condi'#231#227'o'
    Filter.FilterGroupCaption = 'aplica-se '#225's seguintes condi'#231#245'es'
    Filter.FilterRootGroupCaption = '<ra'#237'z>'
    Filter.FilterControlNullString = '<vazio>'
    Filter.FilterErrorBuilding = 'N'#227'o se pode construir filtro desde a origem'
    Filter.FilterDialogCaption = 'Filtro Personalizado'
    Filter.FilterDialogInvalidValue = 'Valor inv'#225'lido'
    Filter.FilterDialogUse = 'Usar'
    Filter.FilterDialogSingleCharacter = 'para representar um simples caractere'
    Filter.FilterDialogCharactersSeries = 'para representar uma s'#233'rie de caracteres'
    Filter.FilterDialogOperationAnd = 'E'
    Filter.FilterDialogOperationOr = 'OU'
    Filter.FilterDialogRows = 'Mostrar linhas onde:'
    Filter.FilterControlDialogCaption = 'Construtor de Filtro'
    Filter.FilterControlDialogNewFile = 'semnome.flt'
    Filter.FilterControlDialogOpenDialogCaption = 'Abrir um filtro existente'
    Filter.FilterControlDialogSaveDialogCaption = 'Salvar o filtro ativo em arquivo'
    Filter.FilterControlDialogActionSaveCaption = '&Salvar...'
    Filter.FilterControlDialogActionOpenCaption = '&Abrir...'
    Filter.FilterControlDialogActionApplyCaption = '&Aplicar'
    Filter.FilterControlDialogActionOkCaption = 'Ok'
    Filter.FilterControlDialogActionCancelCaption = 'Cancelar'
    Filter.FilterControlDialogFileExt = 'flt'
    Filter.FilterControlDialogFileFilter = 'Filtros (*.flt)|*.flt'
    GridPopupMenu.GridNone = 'Nenhum'
    GridPopupMenu.GridSortColumnAsc = 'Ordenar Ascendente'
    GridPopupMenu.GridSortColumnDesc = 'Ordenar Descendente'
    GridPopupMenu.GridClearSorting = 'Clear Sorting'
    GridPopupMenu.GridGroupByThisField = 'Agrupar por este campo'
    GridPopupMenu.GridRemoveThisGroupItem = 'Remover do grupo'
    GridPopupMenu.GridGroupByBox = 'Painel "Agrupar por"'
    GridPopupMenu.GridAlignmentSubMenu = 'Alinhar'
    GridPopupMenu.GridAlignLeft = 'Alinhar Esquerda'
    GridPopupMenu.GridAlignRight = 'Alinhar Direita'
    GridPopupMenu.GridAlignCenter = 'Alinhar Centrado'
    GridPopupMenu.GridRemoveColumn = 'Remover esta coluna'
    GridPopupMenu.GridFieldChooser = 'Selector de campos'
    GridPopupMenu.GridBestFit = 'Melhor distribui'#231#227'o'
    GridPopupMenu.GridBestFitAllColumns = 'Melhor distribui'#231#227'o (Todas as colunas)'
    GridPopupMenu.GridShowFooter = 'Sum'#225'rio'
    GridPopupMenu.GridShowGroupFooter = 'Sum'#225'rio de grupo'
    GridPopupMenu.GridSumMenuItem = 'Somar'
    GridPopupMenu.GridMinMenuItem = 'M'#237'nimo'
    GridPopupMenu.GridMaxMenuItem = 'M'#225'ximo'
    GridPopupMenu.GridCountMenuItem = 'Contar'
    GridPopupMenu.GridAvgMenuItem = 'M'#233'dia'
    GridPopupMenu.GridNoneMenuItem = 'Nenhum'
    GridPopupMenu.GridSortByGroupValues = 'Sort by Group Value'
    GridPopupMenu.GridSortBySummaryCaption = 'Sort by Group Summary:'
    GridPopupMenu.GridSortBySummary = '%s for %s'
    GridExport.UnsupportedExport = 'Tipo de exporta'#231#227'o n'#227'o suportada: %1'
    GridExport.StyleManagerKill = 
      'O administrador de estilo est'#225' sendo utilizado e n'#227'o pode ser li' +
      'bertado neste momento'
    GridExport.StyleManagerCreate = 'N'#227'o se pode criar administrador de estilo'
    GridExport.ExportToHtml = 'Exportar para p'#225'gina Web (*.html)'
    GridExport.ExportToXml = 'Exportar para documento XML (*.xml)'
    GridExport.ExportToText = 'Exportar para formato de texto (*.txt)'
    GridExport.EmptyExportCache = 'Cache de exporta'#231#227'o vazio'
    GridExport.IncorrectUnion = 'Uni'#227'o de c'#233'lulas incorrecta'
    GridExport.IllegalWidth = 'Comprimento de coluna ilegal'
    GridExport.InvalidColumnRowCount = 'Conteudo de coluna ou linha inv'#225'lido'
    GridExport.IllegalHeight = 'Inicio de linha ilegal'
    GridExport.InvalidColumnIndex = 'O '#237'ndice de coluna %d fora de limites'
    GridExport.InvalidRowIndex = 'O '#237'ndice de linha %d est'#225' fora de limites'
    GridExport.InvalidStyleIndex = #205'ndice de estilo %d inv'#225'lido'
    GridExport.ExportToExcel = 'Exportar para MS Excel (*.xls)'
    GridExport.WorkbookWrite = 'Erro ao escrever o arquivo XLS'
    GridExport.InvalidCellDimension = 'Dimens'#227'o de c'#233'lula inv'#225'lida'
    GridExport.BoolTrue = 'True'
    GridExport.BoolFalse = 'False'
    Translate.cxLibrary = True
    Translate.QuantumGrid = True
    Translate.Editors = True
    Translate.Datacontroller = True
    Translate.Filter = True
    Translate.GridPopupMenu = True
    Translate.GridExport = True
    Translate.Navigator = True
    Left = 496
    Top = 4
  end
  object dsRegistroDet2: TDataSource
    DataSet = dtEditDet2
    OnStateChange = dsRegistroStateChange
    Left = 168
    Top = 424
  end
  object dsPesquisaDet2: TDataSource
    DataSet = dtListDet2
    Left = 136
    Top = 424
  end
  object dsRegistroDet1: TDataSource
    AutoEdit = False
    DataSet = dtEditDet1
    OnStateChange = dsRegistroStateChange
    Left = 96
    Top = 424
  end
  object dsPesquisaDet1: TDataSource
    DataSet = dtListDet1
    Left = 64
    Top = 424
  end
  object dtListDet1: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 64
    Top = 392
  end
  object dtEditDet1: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet1NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet1
    Left = 96
    Top = 392
  end
  object dsLinkDet2: TDataSource
    DataSet = dtListDet2
    Left = 152
    Top = 356
  end
  object dsLinkDet1: TDataSource
    DataSet = dtListDet1
    Left = 80
    Top = 356
  end
  object dtEditDet2: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet2NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet2
    Left = 168
    Top = 392
  end
  object dtListDet2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 136
    Top = 392
  end
  object dsRegistroDet3: TDataSource
    DataSet = dtEditDet3
    OnStateChange = dsRegistroStateChange
    Left = 232
    Top = 424
  end
  object dtEditDet3: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet3NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet3
    Left = 232
    Top = 392
  end
  object dsLinkDet3: TDataSource
    DataSet = dtListDet3
    Left = 216
    Top = 356
  end
  object dtListDet3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 200
    Top = 392
  end
  object dsPesquisaDet3: TDataSource
    DataSet = dtListDet3
    Left = 200
    Top = 424
  end
  object dsRegistroDet4: TDataSource
    DataSet = dtEditDet4
    OnStateChange = dsRegistroStateChange
    Left = 296
    Top = 424
  end
  object dtEditDet4: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet4NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet4
    Left = 296
    Top = 392
  end
  object dsLinkDet4: TDataSource
    DataSet = dtListDet4
    Left = 280
    Top = 356
  end
  object dtListDet4: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 264
    Top = 392
  end
  object dsPesquisaDet4: TDataSource
    DataSet = dtListDet4
    Left = 264
    Top = 424
  end
  object dsRegistroDet5: TDataSource
    DataSet = dtEditDet5
    OnStateChange = dsRegistroStateChange
    Left = 360
    Top = 424
  end
  object dtEditDet5: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet5NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet5
    Left = 360
    Top = 392
  end
  object dsLinkDet5: TDataSource
    DataSet = dtListDet5
    Left = 344
    Top = 356
  end
  object dtListDet5: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 328
    Top = 392
  end
  object dsPesquisaDet5: TDataSource
    DataSet = dtListDet5
    Left = 328
    Top = 424
  end
  object dsRegistroDet6: TDataSource
    DataSet = dtEditDet6
    OnStateChange = dsRegistroStateChange
    Left = 424
    Top = 424
  end
  object dtEditDet6: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet6NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet6
    Left = 424
    Top = 392
  end
  object dsLinkDet6: TDataSource
    DataSet = dtListDet6
    Left = 408
    Top = 356
  end
  object dtListDet6: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 392
    Top = 392
  end
  object dsPesquisaDet6: TDataSource
    DataSet = dtListDet6
    Left = 392
    Top = 424
  end
  object dsRegistroDet7: TDataSource
    DataSet = dtEditDet7
    OnStateChange = dsRegistroStateChange
    Left = 488
    Top = 424
  end
  object dtEditDet7: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet7NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet7
    Left = 488
    Top = 392
  end
  object dsLinkDet7: TDataSource
    DataSet = dtListDet7
    Left = 472
    Top = 356
  end
  object dtListDet7: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 456
    Top = 392
  end
  object dsPesquisaDet7: TDataSource
    DataSet = dtListDet7
    Left = 456
    Top = 424
  end
  object dsRegistroDet8: TDataSource
    DataSet = dtEditDet8
    OnStateChange = dsRegistroStateChange
    Left = 552
    Top = 424
  end
  object dtEditDet8: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeInsert = dtEditDet1BeforeInsert
    OnNewRecord = dtEditDet8NewRecord
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsLinkDet8
    Left = 552
    Top = 392
  end
  object dsLinkDet8: TDataSource
    DataSet = dtListDet8
    Left = 536
    Top = 356
  end
  object dtListDet8: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRegistro
    Left = 520
    Top = 392
  end
  object dsPesquisaDet8: TDataSource
    DataSet = dtListDet8
    Left = 520
    Top = 424
  end
  object mtbFiltro: TdxMemData
    Indexes = <>
    Persistent.Option = poNone
    SortOptions = []
    Left = 77
    Top = 44
  end
  object dsFiltro: TDataSource
    DataSet = mtbFiltro
    Left = 47
    Top = 44
  end
end
