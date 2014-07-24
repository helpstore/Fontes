object FrmSelOrdens: TFrmSelOrdens
  Left = 1
  Top = 4
  Width = 1276
  Height = 756
  Caption = 'Manuten'#231#227'o de OS'
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDefault
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgcOServico: TcxPageControl
    Left = 0
    Top = 0
    Width = 1071
    Height = 692
    ActivePage = tabManutencao
    Align = alClient
    TabOrder = 0
    OnChange = pgcOServicoChange
    ClientRectBottom = 688
    ClientRectLeft = 4
    ClientRectRight = 1067
    ClientRectTop = 27
    object tabManutencao: TcxTabSheet
      Caption = 'Manutencao de OS'
      object pnlClient: TPanel
        Left = 0
        Top = 0
        Width = 1063
        Height = 661
        Align = alClient
        BevelOuter = bvNone
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnResize = pnlClientResize
        object Bevel1: TBevel
          Left = 0
          Top = 659
          Width = 1063
          Height = 2
          Align = alBottom
          Shape = bsTopLine
        end
        object Panel5: TPanel
          Left = 0
          Top = 0
          Width = 1063
          Height = 659
          Align = alClient
          BevelOuter = bvNone
          Color = clWhite
          TabOrder = 0
          object pc: TcxPageControl
            Left = 0
            Top = 148
            Width = 1063
            Height = 511
            ActivePage = cxTabSheet1
            Align = alClient
            HotTrack = True
            TabOrder = 0
            ClientRectBottom = 507
            ClientRectLeft = 4
            ClientRectRight = 1059
            ClientRectTop = 27
            object cxTabSheet1: TcxTabSheet
              Caption = 'Lista de OS'
              ImageIndex = 0
              object Grid: TcxGrid
                Left = 0
                Top = 0
                Width = 1055
                Height = 480
                Align = alClient
                TabOrder = 0
                OnMouseEnter = GridMouseEnter
                object GridDBBandedTableView1: TcxGridDBBandedTableView
                  NavigatorButtons.ConfirmDelete = False
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  Bands = <
                    item
                    end>
                end
                object GridTV: TcxGridDBBandedTableView
                  OnKeyDown = GridTVKeyDown
                  NavigatorButtons.ConfirmDelete = False
                  DataController.DataSource = DataSource
                  DataController.Summary.DefaultGroupSummaryItems = <>
                  DataController.Summary.FooterSummaryItems = <>
                  DataController.Summary.SummaryGroups = <>
                  OptionsBehavior.IncSearch = True
                  OptionsData.CancelOnExit = False
                  OptionsData.Deleting = False
                  OptionsData.DeletingConfirmation = False
                  OptionsData.Editing = False
                  OptionsData.Inserting = False
                  OptionsSelection.MultiSelect = True
                  OptionsView.Footer = True
                  OptionsView.GroupFooters = gfAlwaysVisible
                  OptionsView.BandHeaders = False
                  Bands = <
                    item
                    end>
                  object GridTVOFC_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 0
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_DATA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_DATA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 1
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_DT_ATRIBUICAO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_DT_ATRIBUICAO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 2
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_DATA_FECHAMENTO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_DATA_FECHAMENTO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 3
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_TOTAL: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_TOTAL'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 4
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_SOLICITANTE: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_SOLICITANTE'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 5
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_VENDA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_VENDA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 6
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_KM_RODADO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_KM_RODADO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 7
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_HORAS_TRABALHADAS: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_HORAS_TRABALHADAS'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 8
                    Position.RowIndex = 0
                  end
                  object GridTVMEC_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MEC_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 9
                    Position.RowIndex = 0
                  end
                  object GridTVMEC_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MEC_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 10
                    Position.RowIndex = 0
                  end
                  object GridTVDEF_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'DEF_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 11
                    Position.RowIndex = 0
                  end
                  object GridTVDEF_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'DEF_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 12
                    Position.RowIndex = 0
                  end
                  object GridTVMTC_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MTC_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 13
                    Position.RowIndex = 0
                  end
                  object GridTVMTC_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MTC_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 14
                    Position.RowIndex = 0
                  end
                  object GridTVTPA_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'TPA_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 15
                    Position.RowIndex = 0
                  end
                  object GridTVTPA_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'TPA_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 16
                    Position.RowIndex = 0
                  end
                  object GridTVST_COR: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ST_COR'
                    OnCustomDrawCell = GridTVST_NOMECustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 17
                    Position.RowIndex = 0
                  end
                  object GridTVST_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ST_NOME'
                    OnCustomDrawCell = GridTVST_NOMECustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 18
                    Position.RowIndex = 0
                  end
                  object GridTVCLI_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CLI_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 19
                    Position.RowIndex = 0
                  end
                  object GridTVCLI_NOME_RAZAO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CLI_NOME_RAZAO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 20
                    Position.RowIndex = 0
                  end
                  object GridTVREG_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'REG_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 21
                    Position.RowIndex = 0
                  end
                  object GridTVPRD_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PRD_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 22
                    Position.RowIndex = 0
                  end
                  object GridTVPRD_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PRD_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 23
                    Position.RowIndex = 0
                  end
                  object GridTVPRD_SERIE: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PRD_SERIE'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 24
                    Position.RowIndex = 0
                  end
                  object GridTVMDL_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MDL_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 25
                    Position.RowIndex = 0
                  end
                  object GridTVST_CODIGO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ST_CODIGO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 26
                    Position.RowIndex = 0
                  end
                  object GridTVCP_TEMPO_RESPOSTA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CP_TEMPO_RESPOSTA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 27
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_DT_ENTRADA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_DT_ENTRADA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 28
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_HR_ATRIBUICAO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_HR_ATRIBUICAO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 29
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_HR_ENTRADA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_HR_ENTRADA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 30
                    Position.RowIndex = 0
                  end
                  object GridTVCP_COD_CONTRATO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CP_COD_CONTRATO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 31
                    Position.RowIndex = 0
                  end
                  object GridTVTPC_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'TPC_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 32
                    Position.RowIndex = 0
                  end
                  object GridTVOFC_HR_FECHAMENTO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OFC_HR_FECHAMENTO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 33
                    Position.RowIndex = 0
                  end
                  object GridTVCIDADE: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CIDADE'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 34
                    Position.RowIndex = 0
                  end
                  object GridTVTEMPO_GASTO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'TEMPO_GASTO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 35
                    Position.RowIndex = 0
                  end
                  object GridTVTEMPO_RESPOSTA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'TEMPO_RESPOSTA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 36
                    Position.RowIndex = 0
                  end
                  object GridTVREG_DESCRICAO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'REG_DESCRICAO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 37
                    Position.RowIndex = 0
                  end
                  object GridTVMDL_NOME: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MDL_NOME'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 38
                    Position.RowIndex = 0
                  end
                  object GridTVID_CONTRATO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ID_CONTRATO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 39
                    Position.RowIndex = 0
                  end
                  object GridTVPRIORIDADE: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PRIORIDADE'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 40
                    Position.RowIndex = 0
                  end
                  object GridTVCUSTO_OS: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CUSTO_OS'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 41
                    Position.RowIndex = 0
                  end
                  object GridTVINFORMACOES: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'INFORMACOES'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 42
                    Position.RowIndex = 0
                  end
                  object GridTVOBS_FECHAMENTO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'OBS_FECHAMENTO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 43
                    Position.RowIndex = 0
                  end
                  object GridTVCONTROLE: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CONTROLE'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 44
                    Position.RowIndex = 0
                  end
                  object GridTVVEICULO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'VEICULO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 45
                    Position.RowIndex = 0
                  end
                  object GridTVPLACA: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PLACA'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Position.BandIndex = 0
                    Position.ColIndex = 46
                    Position.RowIndex = 0
                  end
                  object GridTVPROTOCOLO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'PROTOCOLO'
                    OnCustomDrawCell = GridTVOFC_CODIGOCustomDrawCell
                    Width = 78
                    Position.BandIndex = 0
                    Position.ColIndex = 47
                    Position.RowIndex = 0
                  end
                  object GridTVMAP_LAT: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MAP_LAT'
                    Width = 180
                    Position.BandIndex = 0
                    Position.ColIndex = 48
                    Position.RowIndex = 0
                  end
                  object GridTVMAP_LONG: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'MAP_LONG'
                    Width = 205
                    Position.BandIndex = 0
                    Position.ColIndex = 49
                    Position.RowIndex = 0
                  end
                  object GridTVDT_CILINDRO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'DT_CILINDRO'
                    Position.BandIndex = 0
                    Position.ColIndex = 50
                    Position.RowIndex = 0
                  end
                  object GridTVCT_CILINDRO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CT_CILINDRO'
                    Width = 88
                    Position.BandIndex = 0
                    Position.ColIndex = 51
                    Position.RowIndex = 0
                  end
                  object GridTVULT_DT_CILINDRO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ULT_DT_CILINDRO'
                    Width = 124
                    Position.BandIndex = 0
                    Position.ColIndex = 52
                    Position.RowIndex = 0
                  end
                  object GridTVULT_CT_CILINDRO: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'ULT_CT_CILINDRO'
                    Width = 112
                    Position.BandIndex = 0
                    Position.ColIndex = 53
                    Position.RowIndex = 0
                  end
                  object GridTVCT_CILINDRO_SALDO_DIAS: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CT_CILINDRO_SALDO_DIAS'
                    Position.BandIndex = 0
                    Position.ColIndex = 54
                    Position.RowIndex = 0
                  end
                  object GridTVCT_CILINDRO_SALDO_CONTADOR: TcxGridDBBandedColumn
                    DataBinding.FieldName = 'CT_CILINDRO_SALDO_CONTADOR'
                    Position.BandIndex = 0
                    Position.ColIndex = 55
                    Position.RowIndex = 0
                  end
                end
                object GridLV: TcxGridLevel
                  GridView = GridTV
                end
              end
            end
          end
          object Panel3: TPanel
            Left = 0
            Top = 38
            Width = 1063
            Height = 110
            Align = alTop
            BevelOuter = bvNone
            TabOrder = 1
            OnExit = Panel3Exit
            object Label3: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Dt. Inicial'
              ParentFont = False
              Transparent = True
            end
            object Label4: TcxLabel
              Left = 112
              Top = 26
              Caption = #224' '
              ParentFont = False
              Transparent = True
            end
            object Label2: TcxLabel
              Left = 235
              Top = 8
              Caption = 'Cliente'
              ParentFont = False
              Transparent = True
            end
            object Label5: TcxLabel
              Left = 130
              Top = 8
              Caption = 'Dt. Final'
              ParentFont = False
              Transparent = True
            end
            object edDtInicial: TdxDateEdit
              Left = 6
              Top = 22
              Width = 97
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
              OnEnter = EdTipoContratoEnter
              OnExit = EdTipoContratoExit
              OnKeyDown = edDataBaseKeyDown
              Date = -700000.000000000000000000
              UseEditMask = True
              StoredValues = 4
            end
            object edDtFinal: TdxDateEdit
              Left = 128
              Top = 22
              Width = 97
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
              OnEnter = EdTipoContratoEnter
              OnExit = EdTipoContratoExit
              OnKeyDown = edDataBaseKeyDown
              Date = -700000.000000000000000000
              UseEditMask = True
              StoredValues = 4
            end
            object RdStatus: TcxRadioGroup
              Left = 7
              Top = 49
              Caption = 'Tipo de Status'
              ParentFont = False
              Properties.Columns = 3
              Properties.Items = <
                item
                  Caption = 'Abertos'
                end
                item
                  Caption = 'Fechados'
                end
                item
                  Caption = 'Ambos'
                end>
              TabOrder = 4
              Height = 55
              Width = 219
            end
            object lkpCliente: TdxLookupEdit
              Left = 233
              Top = 22
              Width = 501
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              Style.BorderColor = clBtnShadow
              Style.BorderStyle = xbsSingle
              Style.ButtonStyle = btsSimple
              TabOrder = 2
              OnEnter = EdTipoContratoEnter
              OnExit = EdTipoContratoExit
              OnKeyDown = CmbClienteKeyDown
              DropDownWidth = 500
              ClearKey = 46
              ListFieldName = 'NOME_RAZAO;PESSOA_FJ'
              CanDeleteText = True
              KeyFieldName = 'CODIGO'
              ListSource = dsClientes
              LookupKeyValue = Null
            end
            object edtSerie: TcxTextEdit
              Left = 738
              Top = 22
              ParentFont = False
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clWindowText
              Style.Font.Height = -13
              Style.Font.Name = 'Tahoma'
              Style.Font.Style = []
              Style.IsFontAssigned = True
              TabOrder = 3
              Text = 'edtSerie'
              OnEnter = EdTipoContratoEnter
              OnExit = EdTipoContratoExit
              OnKeyDown = CmbClienteKeyDown
              Width = 159
            end
            object cxLabel1: TcxLabel
              Left = 738
              Top = 6
              Caption = 'S'#233'rie'
              ParentFont = False
              Transparent = True
            end
          end
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 1063
            Height = 38
            Align = alTop
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 2
            object Image2: TImage
              Left = 8
              Top = 2
              Width = 32
              Height = 32
              AutoSize = True
              Picture.Data = {
                055449636F6E0000010001002020000100000000A80800001600000028000000
                2000000040000000010008000000000080040000000000000000000000000000
                0000000000000000000080000080000000808000800000008000800080800000
                C0C0C000C0DCC000F0CAA6000020400000206000002080000020A0000020C000
                0020E00000400000004020000040400000406000004080000040A0000040C000
                0040E00000600000006020000060400000606000006080000060A0000060C000
                0060E00000800000008020000080400000806000008080000080A0000080C000
                0080E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C000
                00A0E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C000
                00C0E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C000
                00E0E00040000000400020004000400040006000400080004000A0004000C000
                4000E00040200000402020004020400040206000402080004020A0004020C000
                4020E00040400000404020004040400040406000404080004040A0004040C000
                4040E00040600000406020004060400040606000406080004060A0004060C000
                4060E00040800000408020004080400040806000408080004080A0004080C000
                4080E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C000
                40A0E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C000
                40C0E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C000
                40E0E00080000000800020008000400080006000800080008000A0008000C000
                8000E00080200000802020008020400080206000802080008020A0008020C000
                8020E00080400000804020008040400080406000804080008040A0008040C000
                8040E00080600000806020008060400080606000806080008060A0008060C000
                8060E00080800000808020008080400080806000808080008080A0008080C000
                8080E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C000
                80A0E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C000
                80C0E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C000
                80E0E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000
                C000E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000
                C020E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000
                C040E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000
                C060E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000
                C080E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000
                C0A0E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00
                A4A0A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000
                FFFFFF000000000000000000000000000000A4A4A4A4000000A4A4A400000000
                00000000000000000000000000000000A4A4FFFF00009E9E0D00A4A4A4000000
                0000000000000000000000000000A4A4FFFF00009E9E9E9E0D0100A4A4A40000
                0000000000000000000000000000000000009E9E9E9E9E9E0D0D0100A4A4A400
                000000000000000000000000A4A4A4A4000000009E9E9E9E0D0D010D00A4A4A4
                00000000000000000000000000A4A4A4009E9E9E00009E9E0D0D010D0D00A4A4
                A40000000000000000000000FF00A4A4009E9E9E9E9E00000D0D010D0D0100A4
                A4A4000000000000000000FFF6FF00A4009E9E9E9E9E9E9E00000D0D0D0100A4
                0000000000000000000000FFF6FFFF00009E9E9E9E9E9E9E0D0D00000D010000
                00000000000000000000FFFFF6F6F6FF009E9E9E9E9EFFFFAF0D010D000D0000
                00000000000000000000BFBFF6F6F6F6009E9E9EFFFFAFAFAFAF0D010D000000
                000000000000000000FFBFBFF6F6F6F6009EFFFFAFAFAFAFAFAFAF0D010D0000
                000000000000000000FFBFBFF6F6F6F6F600AFAFAFAFAFAFAFAFAFAF0D010000
                0000000000000000FFBFBFBFF65B5BF6F6F600AFAFAFAFAFAFAFAFAFAF0D0000
                0000000000000000FFBFBFBFF65B5BF6F6F6F600AFAFAFAFAFAFAFAFAFAF0000
                00000000000000FFFFBFBFBF5B5B5B5BF6F6F6F600AFAFAFAFAFAFAF00000000
                00000000000000FBFBBFBFBF5BADADB6B6B6F6000000AFAFAFAF000092000000
                000000000000FFFBFBBF5B5B5B5B5BB6F6F6F600EDED00AF0000929292000000
                000000000000FFFBFBBF5B5B5B5B5BB6F6F600EDEDEDED00EDED929292000000
                0000000000FFFBFBFBBF5B5BADB6B6B6F6F600EDEDEDEDEDEDED929292000000
                000000000000FFFBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDEDED929292000000
                00000000000000FBFBBFBFBF5BB6B6F6F60000EDEDEDEDEDFFFF929292000000
                0000000000000000FFBFBFBFF6B6B6F6000000EDEDEDFFFF0909090992000000
                000000000000000000FFBFBFF6F6F6F6000000EDFFFF92929292929209000000
                00000000000000000000BFBFF6F6F600000000FF095B00000000920000000000
                0000000000000000000000FFF6F6F6000000000009005B5B525B000000000000
                000000000000000000000000FFF60000000000000052F7F7F75B520000000000
                00000000000000000000000000F600000000000049F7080807F7520000000000
                00000000000000000000000000000000000000000008FFFF08F75B0000000000
                00000000000000000000000000000000000000004908FFFF08F7520000000000
                000000000000000000000000000000000000000000490807F752000000000000
                0000000000000000000000000000000000000000000000000052000000000000
                00000000FFFC00FFFFF0007FFFC0003FFC00001FF300000FEF000007DE000003
                DC00000FDC00001FD800001FD800001FD000001FE000000FE000000FE0000017
                C0000037C000003B8000003B8000003B0000003B8000003BC0000037E0040037
                F004000FF80C003FFC0E01FFFE1F00FFFF1F00FFFFBF00FFFFFF00FFFFFF81FF
                FFFFC3FF}
            end
            object Bevel2: TBevel
              Left = 8
              Top = 35
              Width = 266
              Height = 2
              Shape = bsTopLine
            end
            object lblTitulo: TcxLabel
              Left = 48
              Top = 6
              Caption = 'Manuten'#231#227'o de OS'
              ParentFont = False
              Transparent = True
            end
          end
        end
      end
    end
    object tabMovimentos: TcxTabSheet
      Caption = 'Movimentos'
      object Panel11: TPanel
        Left = 0
        Top = 0
        Width = 1063
        Height = 661
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        Color = clHighlightText
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 1063
          Height = 110
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          OnExit = Panel1Exit
          object Label7: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Dt. Inicial'
            ParentFont = False
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 112
            Top = 26
            Caption = #224' '
            ParentFont = False
            Transparent = True
          end
          object Label11: TcxLabel
            Left = 235
            Top = 8
            Caption = 'Cliente'
            ParentFont = False
            Transparent = True
          end
          object Label13: TcxLabel
            Left = 130
            Top = 8
            Caption = 'Dt. Final'
            ParentFont = False
            Transparent = True
          end
          object edDtInicialMvto: TdxDateEdit
            Left = 6
            Top = 22
            Width = 97
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
            OnEnter = EdTipoContratoEnter
            OnExit = EdTipoContratoExit
            OnKeyDown = edDataBaseKeyDown
            Date = -700000.000000000000000000
            UseEditMask = True
            StoredValues = 4
          end
          object edDtFinalMvto: TdxDateEdit
            Left = 128
            Top = 22
            Width = 97
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
            OnEnter = EdTipoContratoEnter
            OnExit = EdTipoContratoExit
            OnKeyDown = edDataBaseKeyDown
            Date = -700000.000000000000000000
            UseEditMask = True
            StoredValues = 4
          end
          object lkpClienteMovto: TdxLookupEdit
            Left = 233
            Top = 22
            Width = 501
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            OnEnter = EdTipoContratoEnter
            OnExit = EdTipoContratoExit
            OnKeyDown = CmbClienteKeyDown
            DropDownWidth = 500
            ClearKey = 46
            ListFieldName = 'NOME_RAZAO;PESSOA_FJ'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsClientes3
            LookupKeyValue = Null
          end
          object RdStatusMovto: TcxRadioGroup
            Left = 7
            Top = 49
            Caption = 'Tipo de Status'
            ParentFont = False
            Properties.Columns = 3
            Properties.Items = <
              item
                Caption = 'Abertos'
              end
              item
                Caption = 'Fechados'
              end
              item
                Caption = 'Ambos'
              end>
            TabOrder = 7
            Height = 55
            Width = 219
          end
        end
        object GridMovimentos: TcxGrid
          Left = 0
          Top = 110
          Width = 1063
          Height = 551
          Align = alClient
          TabOrder = 1
          OnMouseEnter = GridMovimentosMouseEnter
          object GridMovimentosDBBandedTableView1: TcxGridDBBandedTableView
            OnKeyDown = GridMovimentosDBBandedTableView1KeyDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsMovimentos
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsData.Deleting = False
            OptionsData.Editing = False
            OptionsData.Inserting = False
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object GridMovimentosDBBandedTableView1COD_GRAVIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_GRAVIDADE'
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TITULO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TITULO'
              Width = 163
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CNPJ: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CNPJ'
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO'
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DT_FIM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_FIM'
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DT_INICIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_INICIO'
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1HR_INICIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HR_INICIO'
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1HR_FIM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'HR_FIM'
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1SEQUENCIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'SEQUENCIA'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1OBSERVACAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'OBSERVACAO'
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1QTDE_HORA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QTDE_HORA'
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1KM_RODADO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KM_RODADO'
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1KM_INICIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KM_INICIAL'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1KM_FINAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'KM_FINAL'
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TEMPO_VIAJEM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TEMPO_VIAJEM'
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1USUARIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'USUARIO'
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_TIPO_MOVTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_TIPO_MOVTO'
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1NOME_USUARIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_USUARIO'
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1NOME_TECNICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_TECNICO'
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_TECNICO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_TECNICO'
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1NOME_TECNICO_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_TECNICO_OS'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_TECNICO_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_TECNICO_OS'
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CUSTO_HORA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTO_HORA'
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CUSTO_ATIVIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CUSTO_ATIVIDADE'
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TIPO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TIPO'
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DT_LANCTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_LANCTO'
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DT_VENCTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_VENCTO'
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DT_CONCLUSAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_CONCLUSAO'
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_CONTATO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_CONTATO'
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_VEICULO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_VEICULO'
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_STATUS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_STATUS'
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1ST_COR: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ST_COR'
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1STATUS_MOVTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'STATUS_MOVTO'
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_TIPO_MOVTO1: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_TIPO_MOVTO1'
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TIPO_MOVTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TIPO_MOVTO'
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_STATUS_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_STATUS_OS'
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1ST_COR_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ST_COR_OS'
              Position.BandIndex = 0
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1STATUS_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'STATUS_OS'
              Position.BandIndex = 0
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_CONTATO_MOVTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_CONTATO_MOVTO'
              Position.BandIndex = 0
              Position.ColIndex = 38
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CONTATO_MOVTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTATO_MOVTO'
              Position.BandIndex = 0
              Position.ColIndex = 39
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_CONTATO_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_CONTATO_OS'
              Position.BandIndex = 0
              Position.ColIndex = 40
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CONTATO_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTATO_OS'
              Position.BandIndex = 0
              Position.ColIndex = 41
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1COD_CLIENTES: TcxGridDBBandedColumn
              DataBinding.FieldName = 'COD_CLIENTES'
              Position.BandIndex = 0
              Position.ColIndex = 42
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1CLIENTE_OS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CLIENTE_OS'
              Position.BandIndex = 0
              Position.ColIndex = 43
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DEF_CODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEF_CODIGO'
              Position.BandIndex = 0
              Position.ColIndex = 44
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1DEF_NOME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DEF_NOME'
              Position.BandIndex = 0
              Position.ColIndex = 45
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1MTC_CODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MTC_CODIGO'
              Position.BandIndex = 0
              Position.ColIndex = 46
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1MTC_NOME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MTC_NOME'
              Position.BandIndex = 0
              Position.ColIndex = 47
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TPA_CODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TPA_CODIGO'
              Position.BandIndex = 0
              Position.ColIndex = 48
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1TPA_NOME: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TPA_NOME'
              Position.BandIndex = 0
              Position.ColIndex = 49
              Position.RowIndex = 0
            end
            object GridMovimentosDBBandedTableView1ASSUNTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ASSUNTO'
              Position.BandIndex = 0
              Position.ColIndex = 50
              Position.RowIndex = 0
            end
          end
          object GridMovimentosLevel1: TcxGridLevel
            GridView = GridMovimentosDBBandedTableView1
          end
        end
      end
    end
    object tabPreventiva: TcxTabSheet
      Caption = 'Visita Preventiva'
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1063
        Height = 661
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        Color = clHighlightText
        TabOrder = 0
        object Panel6: TPanel
          Left = 0
          Top = 0
          Width = 1063
          Height = 105
          Align = alTop
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 0
          OnEnter = Panel6Enter
          OnExit = Panel6Exit
          object Label6: TcxLabel
            Left = 107
            Top = 14
            Caption = 'Data '
            ParentFont = False
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 6
            Top = 14
            Caption = 'Contrato'
            ParentFont = False
            Transparent = True
          end
          object Label1: TcxLabel
            Left = 484
            Top = 71
            Caption = 
              '* Data Base para an'#225'lise:'#13#10'-  Qtde M'#233'dia de C'#243'pia at'#233' data aplic' +
              'ada'
            ParentFont = False
            Transparent = True
          end
          object Label12: TcxLabel
            Left = 211
            Top = 14
            Caption = 'T'#233'cnico'
            ParentFont = False
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 482
            Top = 14
            Caption = 'Cidade'
            ParentFont = False
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 6
            Top = 56
            Caption = 'Cliente'
            ParentFont = False
            Transparent = True
          end
          object edAs1: TcxLabel
            Left = 200
            Top = 19
            Cursor = crHandPoint
            Hint = 'Campo Requerido'
            Caption = '*'
            ParentFont = False
            ParentShowHint = False
            ShowHint = True
            Transparent = True
          end
          object edDataBase: TdxDateEdit
            Left = 106
            Top = 29
            Width = 97
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
            OnEnter = edDataBaseEnter
            OnExit = edDataBaseExit
            OnKeyDown = edDataBaseKeyDown
            Date = -700000.000000000000000000
            UseEditMask = True
            StoredValues = 4
          end
          object EdTipoContrato: TdxPickEdit
            Left = 6
            Top = 29
            Width = 97
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
            OnEnter = EdTipoContratoEnter
            OnExit = EdTipoContratoExit
            OnKeyDown = edDataBaseKeyDown
            Text = 'Ativos'
            DropDownListStyle = True
            Items.Strings = (
              'Ativos'
              'Inativos')
            CanDeleteText = True
            Sorted = True
          end
          object cmbTecnico: TdxLookupEdit
            Left = 211
            Top = 29
            Width = 267
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            OnEnter = CmbClienteEnter
            OnKeyDown = CmbClienteKeyDown
            ClearKey = 46
            ListFieldName = 'NOME'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsMecanico
            LookupKeyValue = Null
          end
          object cmbCidade: TdxLookupEdit
            Left = 482
            Top = 29
            Width = 267
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            OnEnter = CmbClienteEnter
            OnKeyDown = CmbClienteKeyDown
            ClearKey = 46
            ListFieldName = 'CIDADE'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsCidade
            LookupKeyValue = Null
          end
          object cmbCliente: TdxLookupEdit
            Left = 6
            Top = 70
            Width = 472
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            OnEnter = CmbClienteEnter
            OnKeyDown = CmbClienteKeyDown
            DropDownWidth = 500
            ClearKey = 46
            ListFieldName = 'NOME_RAZAO;PESSOA_FJ'
            CanDeleteText = True
            KeyFieldName = 'CODIGO'
            ListSource = dsClientes
            LookupKeyValue = Null
          end
        end
        object GridPreventiva: TcxGrid
          Left = 0
          Top = 105
          Width = 1063
          Height = 556
          Align = alClient
          TabOrder = 1
          OnMouseEnter = GridPreventivaMouseEnter
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            Bands = <
              item
              end>
          end
          object GridPreventivaTV: TcxGridDBBandedTableView
            OnKeyDown = GridTVKeyDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsPreventivaOS
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
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
            object GridPreventivaTVCONTRATO_ATIVO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_ATIVO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_CODIGO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_CODIGO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_DIAS_RECHAMADO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_DIAS_RECHAMADO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_DT_FIM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_DT_FIM'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_DT_INICIO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_DT_INICIO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object GridPreventivaTVNUMERO_CONTRATO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NUMERO_CONTRATO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object GridPreventivaTVTEMPO_RESPOSTA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TEMPO_RESPOSTA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object GridPreventivaTVATIVIDADE_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ATIVIDADE_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object GridPreventivaTVBAIRRO_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BAIRRO_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object GridPreventivaTVCIDADE_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CIDADE_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object GridPreventivaTVCODIGO_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object GridPreventivaTVCPF_CNPJ: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CPF_CNPJ'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_FANTASIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_FANTASIA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object GridPreventivaTVRAZAO_SOCIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RAZAO_SOCIAL'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object GridPreventivaTVREGIAO_CLIENTE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'REGIAO_CLIENTE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object GridPreventivaTVRG_INSC_ESTADUAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RG_INSC_ESTADUAL'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object GridPreventivaTVUF: TcxGridDBBandedColumn
              DataBinding.FieldName = 'UF'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object GridPreventivaTVPRODUTO_ATIVO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRODUTO_ATIVO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object GridPreventivaTVCODIGO_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_PRODUTO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object GridPreventivaTVCODIGO_PRODUTO_SEC: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_PRODUTO_SEC'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object GridPreventivaTVCODIGO_MARCA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CODIGO_MARCA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_PRODUTO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object GridPreventivaTVMARCA_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MARCA_PRODUTO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object GridPreventivaTVMODELO_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MODELO_PRODUTO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object GridPreventivaTVTIPO_CONTRATO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TIPO_CONTRATO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_CONTRATO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_CONTRATO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object GridPreventivaTVMEDIA_COPIA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'MEDIA_COPIA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTRATO_COPIAS_PREVENTIVA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTRATO_COPIAS_PREVENTIVA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object GridPreventivaTVQTDE_COPIA_ATUAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QTDE_COPIA_ATUAL'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object GridPreventivaTVQTDE_COPIA_PREVISTA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QTDE_COPIA_PREVISTA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object GridPreventivaTVDT_FECHAMENTO_ULTIMO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT_FECHAMENTO_ULTIMO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object GridPreventivaTVCONTADOR_ULTIMO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CONTADOR_ULTIMO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object GridPreventivaTVPONTO_VISITA_PREVENTIVA: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PONTO_VISITA_PREVENTIVA'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object GridPreventivaTVDIAS_EM_ATRASO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DIAS_EM_ATRASO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_CIDADE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_CIDADE'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_REGIAO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_REGIAO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 36
              Position.RowIndex = 0
            end
            object GridPreventivaTVNOME_TIPO_CONTRATO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'NOME_TIPO_CONTRATO'
              OnCustomDrawCell = GridPreventivaTVCONTRATO_ATIVOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 37
              Position.RowIndex = 0
            end
          end
          object GridPreventivaLV: TcxGridLevel
            GridView = GridPreventivaTV
          end
        end
      end
    end
  end
  object Panel4: TPanel
    Left = 1071
    Top = 0
    Width = 189
    Height = 692
    Align = alRight
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 5
    DesignSize = (
      189
      692)
    object btnTimer: TcxButton
      Left = 0
      Top = 91
      Width = 184
      Height = 40
      Anchors = [akTop, akRight]
      Caption = 'Timer [ Desabilitado]'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = btnTimerClick
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00010649819E4A88AC4C88AC4C8BA7478BA8478AA9478AA93F7C
        9E3C76993D73963E688B395F8237577B3651763044672F3F642A39602E386000
        000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0003073E8AA73184AA3384A93A8AA94984AC4C88B24886AF4074
        A23C6D9D3A6A9A3266942D5B8A2A5282294D7D2C466E273D6623366329366200
        0011FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0001060000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000091ADB491ADB491ADB491ADB491ADB492A6AB8FABB290AA
        B696A9B698AAB594AAB694AAB694AAB694AAB691ADB491ADB491ADB491ADB400
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF00000091ADB491ADB491ADB491ADB491ADB492A6AB8EABB28DAB
        B690AAB694AAB594AAB694AAB694AAB694AAB68AA8B391ADB491ADB496A4AA00
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000D2DDE1A0ABAF91ADB491ADB491ADB494A7AE8FAAB48BAB
        B68FACB590ABB590AAB690AAB690AAB690AAB68FADB891ADB491ADB4C1CFD500
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000A5ACAF91ADB491ADB491ADB499A9B091ADB491AD
        B491ADB491ADB491ADB491ADB491ADB491ADB491ADB491ADB49AABB4000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000001D3D8D9A8ACADFFFEFFFEFEFEB0B9BD91ADB491AD
        B491ADB491ADB491ADB491ADB491ADB491ADB491ADB4A2AEB4B4BDC105080CFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF020404CCCECFD5D4D6F8F7F3FFFFFFDBDDDEDCDE
        DE91ADB491ADB491ADB491ADB491ADB4E1DCDDE7E7E7E4E4E4020000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF141414D3D3D3F8F8F8FFFFFFF9F9F9DCDC
        DCDDDDDDDEDEDEDDDDDDDEDEDED8D8D8E0E0E0DDDDDD000000FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF262626ECECECFFFFFFFFFFFFD8D8
        D8DDDDDDDCDCDCDDDDDDDDDDDDD8D8D8EAEAEA282828FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0F0F0F000000000000EEEE
        EE91ADB491ADB4DDDDDD000000000000040404FFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0091ADB491ADB4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0091ADB491ADB4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0091ADB491ADB4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
        0091ADB491ADB4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000D7DD
        E2F3FFFF91ADB4000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000100D3D8D9EAF8
        FE91A5AA98AEB48EA0A7070A12FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000100BFC7C79FA8ABCEE2
        E795AFB58FACB18FA4AC91ADB4000001FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000CAE1E3A0AFB2DFEDF391A9
        AF90AEB38CACB28FA5B186A0A691ADB4010908F6F4F4FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFF0C0E0E00000098A2A2F6FFFFF8FDFFDFE4E7A2AB
        AF9BAAAD9AAAB097A4AC97AAB2A2B4BB91ADB4000000000000F7F7F7FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF9E9E9E050707E4E9EADAE4E4F6FBFAFDFFFFDADCDDD8DD
        E091ADB491ADB491ADB491ADB491ADB491ADB491ADB4000000000000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF020000EAEAEAD6DADBDEE6E6FCFDFBFDFDFDD9D9D9DBDD
        DED9DDDEDBDDDE91ADB491ADB491ADB491ADB491ADB491ADB40000008F8F8FFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFF000000E7E5E5DDDADCFEFDFFFFFFFCEFF0EEDBDCDADDDD
        DDDFDCDEDFDCDEDDDCDEDFDCDE91ADB491ADB491ADB491ADB491ADB4000000FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000E2E8E3D7E2DAF5FEFBF8FEFDF8FDFFD4D9E2D5DCE5D6DB
        E4D6DBE4D6DBE4D4DCE3D4DCE3D4DCE3D4DCE3DCDEDEE1DFDEDCDAD9E5E3E200
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000000B7BCC5B0B0BCB4B0BCB0B1BBB3B6B4B3B6B4B5B6B4B7B5
        B4B7B5B4B7B5B4B3B5B5B6B8B8B4B6B6B6B6B6B6B8B9B3B6BBB2B5BDB4B6C021
        2127FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0002040000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0008FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF000B132680983087A73786A73B86A63D87AB3F86AB4086AB397A
        A03473993270962F6B952C618C2C55822A4E7C2A4070283C6C23376625376002
        0C1EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object RzBitBtn1: TcxButton
      Left = 0
      Top = 5
      Width = 184
      Height = 42
      Action = ActAtualizar
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      TabStop = False
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000FFFFFFFFFFFF
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000FFFFFFFFFFFF000000
        BFBFBF000000BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F000000FFFFFF000000
        7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000
        0000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00FFFFFFFF
        FF00FFFF00000000BFBFBFBFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000007F7F00FFFFFF00000000
        0000FFFFFF7F7F00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7F000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7F0000007F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
        7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        BFBFBF0000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        7F7F7FBFBFBF000000FFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBFBFBFBFBFBFBF
        BFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFF7F7F7F000000000000FFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBFBFBFBF
        BFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFFBFBFBF0000007F7F7F000000FFFFFFFFFFFFFFFFFFBFBFBFFFFFFFBFBF
        BFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFF00000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFF7F7F7F000000FFFFFF7F7F7F000000FFFFFFFFFFFFFFFFFFBFBFBFFFFF
        FFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFFBFBFBF000000FFFFFFBFBFBF7F7F7F000000FFFFFFFFFFFFFFFFFFBFBF
        BFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000BFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFF7F7F7F000000FFFFFFBFBFBFBFBFBF7F7F7F000000FFFFFFFFFFFFFFFF
        FFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        FFFFFFFFFFFF000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFFFFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFF000000
        000000000000000000FFFFFFBFBFBFBFBFBFBFBFBFBFBFBF7F7F7F000000FFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFFFF000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFFFFFFFF
        FFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7F0000
        00FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBF000000FFFF00000000BFBFBFBFBFBFBFBFBF7F7F7F000000FFFFFFFFFFFF
        FFFFFFFFFFFF0000000000000000000000000000000000000000000000000000
        00000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFBFBFBF000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF00000000000000000000000000000000000000000000000000000000
        0000000000FFFF00000000000000000000000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F00000000FFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F00000000FFFFFFFFFFFFFFFFFFFF
        FFFF000000FFFF00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFF0000007F7F00FFFF00000000FFFFFFFFFFFF00
        0000FFFF007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFF00000000000000FF
        FF007F7F00000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFFFFFF00FF
        FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000
        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
    end
    object RzBitBtn4: TcxButton
      Left = 0
      Top = 48
      Width = 184
      Height = 42
      Action = ActResumoGrafico
      Anchors = [akTop, akRight]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      TabStop = False
      Glyph.Data = {
        360C0000424D360C000000000000360000002800000020000000200000000100
        180000000000000C000000000000000000000000000000000000C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080C8D0D4808080C8D0
        D4808080C8D0D4808080C8D0D4808080C8D0D4808080C8D0D4808080C8D0D480
        8080C8D0D4808080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D40000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D40000FF0000FFC8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D400008000
        0080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D40000FF0000FFC8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D400008000
        0080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D40000FF0000FFC8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D400008000
        0080C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D40000FF0000FFC8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D40000FF0000FFC8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D4C8D0D4C8D0D4C8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4FF0000FF0000C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4008000008000C8D0D4FFFF00FFFF00C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4008000008000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4008000008000C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4808080000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4000000C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4
        C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0
        D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8
        D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4C8D0D4}
    end
    object cxSplitter1: TcxSplitter
      Left = 2
      Top = 2
      Width = 6
      Height = 688
      Control = Panel4
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 269
    Top = 215
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'DB Navigator'
      'Default')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 421
    Top = 216
    DockControlHeights = (
      0
      0
      0
      26)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 863
      FloatTop = 452
      FloatClientWidth = 140
      FloatClientHeight = 132
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBDBNavFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavPrev'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavNext'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavLast'
        end
        item
          Visible = True
          ItemName = 'opIncluir'
        end
        item
          Visible = True
          ItemName = 'btnAlterar'
        end
        item
          Visible = True
          ItemName = 'BntExcluir'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'btnExportExcel'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarBDBNavFirst: TdxBarDBNavButton
      Caption = 'ActInicio'
      Category = 0
      Enabled = False
      Hint = 'Ir ao primeiro registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnFirst
    end
    object dxBarBDBNavPrev: TdxBarDBNavButton
      Caption = 'ActPrior'
      Category = 0
      Enabled = False
      Hint = 'Ir ao registro anterior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnPrior
    end
    object dxBarBDBNavNext: TdxBarDBNavButton
      Caption = 'ActNext'
      Category = 0
      Enabled = False
      Hint = 'Ir ao pr'#243'ximo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnNext
    end
    object dxBarBDBNavLast: TdxBarDBNavButton
      Caption = 'ActLast'
      Category = 0
      Enabled = False
      Hint = 'Ir ao '#250'ltimo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnLast
    end
    object BtnFechar: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 1
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
    end
    object btnAlterar: TdxBarButton
      Action = ActAlterar
      Caption = 'Alterar a Ordem ( F6 )'
      Category = 1
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
    end
    object opIncluir: TdxBarButton
      Action = ActIncluir
      Category = 1
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        0400000000007800000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object BntExcluir: TdxBarButton
      Action = ActExcluir
      Caption = 'Excluir Ordem ( Del )'
      Category = 1
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
    end
    object dxBarButton1: TdxBarButton
      Action = ActConfCampos
      Category = 1
      Glyph.Data = {
        96030000424D9603000000000000360000002800000010000000120000000100
        1800000000006003000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000A4A3E44C4B6100000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000A4A3E44C4B610000000000000000000000000000000000000000000000
        000000000000000000000000000000000000003D3BE03836F76463D115151800
        0000000000000000000000000000000000000000000000000000000000000000
        5453694443F83735F83C3AF76060B10000000000000000000000000000000000
        000000000000000000000000000000008684EB3836F83735F83735F84846D419
        191C000000000000000000000000000000000000000000000000000000333339
        3A38EF3735F85755F93E3CF73836F76261B90000000000000000000000000000
        000000000000000000000000007A79F53937F73735F862618E3F3EA43634F73B
        39D85352620000000000000000000000000000000000000000000000003634F7
        3735F85A58F81212203030504D4BF83735F77271DD2121250000000000000000
        000000000000000000000000007575B67271F94B4A590000000000005756893B
        39F73634F7494989000000000000000000000000000000000000000000000000
        0000000000000000000000001F1E246B69DD3634F76261F94141510000000000
        0000000000000000000000000000000000000000000000000000000000000032
        32406D6CF93634F77B79E62A2A2D000000000000000000000000000000000000
        0000000000000000000000000000000000004A4A5E4341D43D3BF77372D90000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000005858725856F84442F87979A3000000000000000000000000000000
        00000000000000000000000000000000000000000000000056566A706FF94341
        F89191AB00000000000000000000000000000000000000000000000000000000
        00000000000000000000004342514B49C8504EF05F5F7A000000000000000000
        0000000000000000000000000000000000000000000000000000000000000F0F
        187A78F94F4DF800000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
    object btnExportExcel: TdxBarButton
      Action = ActExportarExcel
      Category = 1
      Glyph.Data = {
        06030000424D060300000000000036000000280000000F0000000F0000000100
        180000000000D002000000000000000000000000000000000000FFFFFFFFFFFF
        FEFEFEF0F2EFDCE1DAF3F4F2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFFEEF0EC5EC15C34D8394BD44FCBF0CCFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
        8CB88675DE7717B41B0BCC112EE535FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000FFFFFFFFFFFF889D7FC7EAC916B31A0BD5122CCC2EFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF52A64D49E64EC6F3C8000000FFFFFFFFFFFF
        C4CBBF9BAB939ADD9C69D46AABD1ABFFFFFFFFFFFFFFFFFFFFFFFFD3D8D0148B
        0E6ADF6E8BF58E000000FFFFFFFFFFFFFFFFFFC4CBBF84947C75997191B98EA8
        BAA3AEB7A8B1BAABABB5A464AF604CC34F28B92BBAF1BC000000FFFFFFFFFFFF
        FFFFFF83F18626E32C15DA1C18DB1F14E21B1CEA231EED2520E72722C82638B4
        3970C471FFFFFF000000FFFFFFFFFFFF54E7573ACA3F11B6150CB5112AAD2B6B
        9D66758A7172876E6F85676E8664BAC6B8E5EEE5FFFFFF000000FFFFFF48B546
        60CC630EBF130CC91211B716AACEABFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000CBD9C85EB55C2DC9320BD7120BD31241C645FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFF49CF4838F24091ED95FFFFFF00000088AA8178D27A
        0ED6160AE6130CC4118AF08EFFFFFFFFFFFFFFFFFFFFFFFF96B59069D2691CCC
        2287F78CFFFFFF000000589C5492EB950AE5130AE7130CC411A1EDA3FFFFFFFF
        FFFFFFFFFFFFFFFF899E809CE09B1DBE20B9EBB9FFFFFF0000002C862654EA5A
        0AED130AE2121DC320EEFBF0FFFFFFFFFFFFFFFFFFFFFFFFA6B4A0758D6BBDCF
        B9FFFFFFFFFFFF00000084A37C50EE5610E61731C734A2CDA1FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000687D5C9DB299
        81A37BC9D2C7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFF000000}
      PaintStyle = psCaptionGlyph
    end
    object dxBarButton2: TdxBarButton
      Action = ActExibirMapa
      Category = 1
      Glyph.Data = {
        36090000424D3609000000000000360000002800000018000000180000000100
        20000000000000090000C40E0000C40E00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FF0000017F7F
        0002AA555503FF555503AA555503AA5555037F7F0002FF000001000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000007F7F0002B66D2407AF5F1F10B770
        2819C7772720C0752925BF782A24BD73291FB1632117B062270D7F552A067F7F
        0002000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000007F3F0004A1501A13A25C1C2CB46C2144C073
        2656CD7E2C61D1803265D0803063C4792C5CBA6F234EA5611D3C9A571A26874B
        0F113F3F00040000000000000000000000000000000000000000000000000000
        000000000000000000007F7F00028D540E1296561638A8611C61C07B347ED79B
        5A95E5B37AA9ECBD8AB3EABE8AB2E4B47AA4D39B588DB573307398541757824B
        0F33783C00117F00000200000000000000000000000000000000000000000000
        000000000000000000007F3F00048F470F209E60215AC7955A9BE9CE9ECBF7E8
        C7E7FCF5E0F6FDFAEEFBFDF8EEFBFBF3DEF6F6E6C5E6E5CB9BC7C09057928D52
        1B537F44081E7F3F000400000000000000000000000000000000000000000000
        00000000000000000000AA550003A7743A23D3AC768EF5E5B5E6FDFAD7FCFFFF
        E5FFFFFFF1FFFDF8F2FFF2CDBCFFF6D9C2FFFEFBDDFFFDFAD2FCF2E0B2E5D0A9
        748AA06D3A235555000300000000000000000000000000000000000000000000
        00000000000000000000DAB69107EDB2745AFAD49ADAFEF8C8FDFFFED3FFFFFF
        DFFFFFFEEEFFF6DBCDFFD96643FFD96640FFF2CBA3FFFCF2C2FFFCEBBAFDF9DD
        AADAE8C3905ADAB6910700000000000000000000000000000000000000000000
        00000000000000000000F5B07F34FCAB5CC3FDCD8DFCFFF0BDFFFFFCCDFFFFFF
        DAFFFEFDE6FFECB294FFD13F12FFCD3405FFDB6E3EFFEEB280FFF5BF8CFFFDD8
        A3FCFCD198C3FAD2A13400000000000000000000000000000000000000000000
        000000000000ECC8B60EE87D4188F08333F6FDC685FFFFE7B4FFFFF6C3FFFFFD
        D0FFFEFCD9FFEEB287FFD74C13FFD44308FFD64F17FFE9945FFFF8C592FFFFC9
        91FFFEC181F6FFC48588FEDAB60E000000000000000000000000000000000000
        000000000000ED9C6E2CDD6027C6E5671DFFFCB062FFFFD69DFFFFEAB7FFFFF6
        C4FFFDF0C0FFEB9457FFDF5915FFDE5713FFDE5F1FFFED965CFFFDCF99FFFFC1
        83FFFFB368FFFEB467C6FEC6872D000000000000000000000000000000000000
        0000FFFFAA03E37D474BDF5E1CE9F27F27FFFEA143FFFFBC74FFFBC78EFFF8C4
        89FFF6BA7BFFEB7C30FFE86A1CFFE6681BFFE5671DFFE7712DFFF7A96AFFFEB7
        70FFFFAB56FFFDA449E9FEB4694BFFFFAA030000000000000000000000000000
        0000FFFFD406E2794563E5671BF6FA8D2DFFFF9C3BFFFCA755FFF18B41FFEE7C
        2CFFF07F2BFFF07C25FFF07B24FFEE7822FFEB721FFFE86C1FFFF1893FFFFDAB
        5BFFFFA346FFFB9635F6FCAC5F63FFFFD4060000000000000000000000000000
        0000FFDFBF08F098556BF07D26F8F98D2DFFFD9838FFFA9B45FFF1802BFFF482
        27FFF7892AFFF98C2DFFF98C2DFFF7882BFFF4852CFFF28431FFF48B39FFFC9F
        45FFFB9334FFF38229F8F7A45A6BFFDFBF080000000000000000000000000000
        0000FFCCCC05F9A3585CF6882DF2FA8E2FFFFC9838FFFC9C41FFF98E31FFFC94
        34FFFE9E40FFFFA146FFFFA246FFFE9D3FFFFC983BFFF88D32FFF28027FFF789
        2EFFF07A24FFE86D20F2F398535CFFCCCC050000000000000000000000000000
        0000FFFFFF01F6A05A3EF18130DCF38026FFF98C2EFFFC9A3EFFFEA855FFFFB2
        64FFFFB86FFFFFC07CFFFFC785FFFFC27EFFFFB366FFFDA149FFF88F34FFF27E
        27FFE96A1AFFE66C26DCEE94563EFFFFFF010000000000000000000000000000
        000000000000F6C3881EEC7F37B0EA701EFEF58B36FFFDAF63FFFFC68BFFFFCB
        92FFFFD098FFFFDEA9FFFFDEABFFFFD29CFFFFC182FFFFB56BFFFEA854FFF58A
        34FFE86C1BFEE97832AFF6BB7F1E000000000000000000000000000000000000
        000000000000FFFFAA06EC8A486DE66B20EDF69749FFFFC181FFFFD4A0FFFFDF
        AAFFFFE1AEFFFFE6B2FFFFE0ADFFFFD3A0FFFFC78FFFFFBD7BFFFFB367FFFA9A
        44FFED7826EDEC8E4A6DFFD4AA06000000000000000000000000000000000000
        00000000000000000000F0B47822EA7C36AAF4974DF7FFC78DFFFFDEACFFFFF0
        BDFFFFF6C8FFFFF5CAFFFFF2C4FFFFE5B3FFFFD49FFFFFC489FFFFB76EFFF898
        44F7F38B3DAAF7B47F2200000000000000000000000000000000000000000000
        00000000000000000000BFBF7F04F1AB693AF79F51B6FDBC7AF6FFDEA8FFFFF5
        C4FFFFFFD9FFFFFEE3FFFFFDDBFFFFF5C6FFFFE0ADFFFFC78DFFFCAE60F6F79B
        48B6F6AF6D3AFF7F7F0400000000000000000000000000000000000000000000
        0000000000000000000000000000FFCC9905F9BC7532FEB56895FEC781E0FEDF
        A4F9FEF3C9FDFEFBE3FEFEFBE0FEFEF1C5FDFED699F9FEBA71E0FBAE5C95F9B7
        7032FFCC99050000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000FFFFFF01FED08B16FEC57C4CFED2
        8E8AFEDB9FB6FFE4ACCCFFE1A8CCFED797B6FECB858AFEBF754CFED08B16FFFF
        FF01000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000FFFFBF04FEDA
        A30EFED7931AFEE3A525FEE39E25FECD891AFEDA910EFFFFBF04000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000FFFF0001FFFF0001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      PaintStyle = psCaptionGlyph
    end
  end
  object Actions: TActionList
    Left = 201
    Top = 368
    object ActIncluir: TAction
      Tag = 1
      Caption = 'Incluir ( Ins )'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'Visualizar ( Enter )'
      OnExecute = ActAlterarExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object kdofoco: TAction
      Caption = 'kdofoco'
      ShortCut = 115
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'Excluir Venda ( Shift + Del )'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActPaginaDn: TAction
      Caption = 'ActPaginaDn'
      ShortCut = 16418
      OnExecute = ActPaginaDnExecute
    end
    object ActPagUp: TAction
      Caption = 'ActPagUp'
      ShortCut = 16417
      OnExecute = ActPagUpExecute
    end
    object ActImprimir: TAction
      Tag = 1
      Caption = 'Imprimir'
      ShortCut = 116
    end
    object ActAtualizar: TAction
      Caption = 'Atualizar (F7)'
      ShortCut = 118
      OnExecute = ActAtualizarExecute
    end
    object ActRelatorio: TAction
      Caption = 'ActRelatorio'
      ShortCut = 16464
    end
    object ActConfCampos: TAction
      Caption = 'Configura Campos ( F2 )'
      ShortCut = 113
    end
    object ActExportarExcel: TAction
      Tag = 1
      Caption = 'Exportar para Excel'
      OnExecute = ActExportarExcelExecute
    end
    object ActExportarHtml: TAction
      Tag = 1
      Caption = 'Exportar para Html'
    end
    object ActResumoGrafico: TAction
      Tag = 1
      Caption = 'Resumo Gr'#225'fico de O.S.'
      OnExecute = ActResumoGraficoExecute
    end
    object ActAlterarMovimento: TAction
      Caption = 'ActAlterarMovimento'
    end
    object ActExibirMapa: TAction
      Caption = 'Exibir Mapa'
      OnExecute = ActExibirMapaExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelOrdens_Servicos
    OnStateChange = DataSourceStateChange
    Left = 491
    Top = 215
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPessoasFJ
    Left = 526
    Top = 15
  end
  object DsMotor: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMotor
    Left = 422
    Top = 271
  end
  object stgGrdOS: TcxPropertiesStore
    Components = <
      item
        Component = edtSerie
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BeepOnEnter'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FakeStyleController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'Properties'
          'RepositoryItem'
          'ShowHint'
          'Style'
          'StyleDisabled'
          'StyleFocused'
          'StyleHot'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridPreventivaLV
        Properties.Strings = (
          'Caption'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'GridView'
          'ImageIndex'
          'MaxDetailHeight'
          'Name'
          'Options'
          'Styles'
          'Tag'
          'Visible')
      end
      item
        Component = GridPreventivaTV
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = GridPreventivaTVATIVIDADE_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVBAIRRO_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCIDADE_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCODIGO_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCODIGO_MARCA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCODIGO_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCODIGO_PRODUTO_SEC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTADOR_ULTIMO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_ATIVO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_COPIAS_PREVENTIVA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_DIAS_RECHAMADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_DT_FIM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCONTRATO_DT_INICIO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVCPF_CNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVDIAS_EM_ATRASO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVDT_FECHAMENTO_ULTIMO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVMARCA_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVMEDIA_COPIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVMODELO_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_CIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_FANTASIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_REGIAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNOME_TIPO_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVNUMERO_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVPONTO_VISITA_PREVENTIVA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVPRODUTO_ATIVO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVQTDE_COPIA_ATUAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVQTDE_COPIA_PREVISTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVRAZAO_SOCIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVREGIAO_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVRG_INSC_ESTADUAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVTEMPO_RESPOSTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVTIPO_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridPreventivaTVUF
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTV
        Properties.Strings = (
          'BackgroundBitmaps'
          'Bands'
          'DataController'
          'DateTimeHandling'
          'DragMode'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FilterBox'
          'Filtering'
          'FilterRow'
          'Name'
          'NavigatorButtons'
          'NewItemRow'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsData'
          'OptionsSelection'
          'OptionsView'
          'PopupMenu'
          'Preview'
          'Styles'
          'Synchronization'
          'Tag')
      end
      item
        Component = GridTVCIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCLI_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCLI_NOME_RAZAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCONTROLE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCP_COD_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCP_TEMPO_RESPOSTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCT_CILINDRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCT_CILINDRO_SALDO_CONTADOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCT_CILINDRO_SALDO_DIAS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVCUSTO_OS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDEF_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDEF_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVDT_CILINDRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVID_CONTRATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVINFORMACOES
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMAP_LAT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMAP_LONG
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMDL_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMDL_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMEC_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMEC_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMTC_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVMTC_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOBS_FECHAMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_DATA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_DATA_FECHAMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_DT_ATRIBUICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_DT_ENTRADA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_HORAS_TRABALHADAS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_HR_ATRIBUICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_HR_ENTRADA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_HR_FECHAMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_KM_RODADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_SOLICITANTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_TOTAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVOFC_VENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPLACA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPRD_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPRD_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPRD_SERIE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPRIORIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVPROTOCOLO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVREG_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVREG_DESCRICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVST_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVST_COR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVST_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTEMPO_GASTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTEMPO_RESPOSTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTPA_CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTPA_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVTPC_NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVULT_CT_CILINDRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVULT_DT_CILINDRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridTVVEICULO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    StorageName = 'c:\Sistemas\HelpStore\Filtros\stgGrdOS.ini'
    Left = 562
    Top = 376
  end
  object Timer: TTimer
    Interval = 900000
    OnTimer = TimerTimer
    Left = 289
    Top = 274
  end
  object dsPreventivaOS: TDataSource
    DataSet = DmServicos.PreventivaOS
    Left = 537
    Top = 217
  end
  object dsMecanico: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelMecanico
    Left = 477
    Top = 15
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelCidade
    Left = 560
    Top = 18
  end
  object DsIntervalos: TDataSource
    DataSet = DmServicos.OS_INTERVALO
    Left = 603
    Top = 15
  end
  object dsMovimentos: TDataSource
    DataSet = DmServicos.SelOrdens_ServicosMovto
    Left = 577
    Top = 217
  end
  object dsClientes3: TDataSource
    AutoEdit = False
    DataSet = DmServicos.SelPessoasF3
    Left = 534
    Top = 79
  end
  object GridPopupMenu: TcxGridPopupMenu
    Grid = GridMovimentos
    PopupMenus = <>
    Left = 336
    Top = 311
  end
end
