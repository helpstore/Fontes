inherited frmCadOS: TfrmCadOS
  Left = 12
  Top = 4
  Width = 1270
  Height = 760
  Caption = 'Manuten'#231#227'o de Ordens de Servi'#231'o'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1254
    Height = 696
    ActivePage = tbsEdita
    ClientRectBottom = 692
    ClientRectRight = 1250
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Top = 124
        Width = 1246
        Height = 541
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroST_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ST_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroOFC_HR_ATRIBUICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_HR_ATRIBUICAO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroOFC_HR_ENTRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_HR_ENTRADA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroOFC_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroOFC_DATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_DATA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Width = 95
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroOFC_DT_ENTRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_DT_ENTRADA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroOFC_DT_ATRIBUICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_DT_ATRIBUICAO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroOFC_HR_FECHAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_HR_FECHAMENTO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroOFC_DATA_FECHAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_DATA_FECHAMENTO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroOFC_TOTAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_TOTAL'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroOFC_SOLICITANTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_SOLICITANTE'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroOFC_VENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_VENDA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroOFC_KM_RODADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_KM_RODADO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroOFC_HORAS_TRABALHADAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OFC_HORAS_TRABALHADAS'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroMEC_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEC_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroMEC_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEC_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object TVRegistroDEF_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEF_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object TVRegistroDEF_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEF_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object TVRegistroMTC_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MTC_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object TVRegistroMTC_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MTC_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object TVRegistroTPA_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TPA_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object TVRegistroTPA_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TPA_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object TVRegistroST_COR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ST_COR'
            OnCustomDrawCell = TVRegistroST_CORCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object TVRegistroST_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ST_NOME'
            OnCustomDrawCell = TVRegistroST_CORCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object TVRegistroCLI_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object TVRegistroCLI_NOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_NOME_RAZAO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object TVRegistroREG_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REG_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object TVRegistroREG_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REG_DESCRICAO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object TVRegistroPRD_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object TVRegistroPRD_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object TVRegistroPRD_SERIE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRD_SERIE'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object TVRegistroMDL_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MDL_CODIGO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object TVRegistroMDL_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MDL_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object TVRegistroCP_COD_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CP_COD_CONTRATO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object TVRegistroTPC_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TPC_NOME'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object TVRegistroCIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object TVRegistroID_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ID_CONTRATO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object TVRegistroCP_TEMPO_RESPOSTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CP_TEMPO_RESPOSTA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object TVRegistroCUSTO_OS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTO_OS'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object TVRegistroINFORMACOES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INFORMACOES'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object TVRegistroOBS_FECHAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBS_FECHAMENTO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object TVRegistroVEICULO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VEICULO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object TVRegistroPLACA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PLACA'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object TVRegistroMAP_LAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAP_LAT'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object TVRegistroMAP_LONG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAP_LONG'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Width = 942
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object TVRegistroDT_CILINDRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_CILINDRO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object TVRegistroCT_CILINDRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_CILINDRO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object TVRegistroULT_DT_CILINDRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ULT_DT_CILINDRO'
            OnCustomDrawCell = TVRegistroDT_CILINDROCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object TVRegistroULT_CT_CILINDRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ULT_CT_CILINDRO'
            OnCustomDrawCell = TVRegistroDT_CILINDROCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object TVRegistroCONTADOR_TOTAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTADOR_TOTAL'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object TVRegistroCT_CILINDRO_SALDO_DIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_CILINDRO_SALDO_DIAS'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object TVRegistroCT_CILINDRO_SALDO_CONTADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_CILINDRO_SALDO_CONTADOR'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object TVRegistroTEMPO_GASTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TEMPO_GASTO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object TVRegistroTROCA_CILINDRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TROCA_CILINDRO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
          object TVRegistroTROCA_BELT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TROCA_BELT'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object TVRegistroTROCA_FUSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TROCA_FUSAO'
            OnCustomDrawCell = TVRegistroOFC_CODIGOCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 55
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 1246
        Height = 124
        Color = clWhite
        DesignSize = (
          1246
          124)
        object edtInicial: TcxDBDateEdit
          Left = 8
          Top = 32
          DataBinding.DataField = 'DATA_INICIAL'
          DataBinding.DataSource = dsFiltro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 100
        end
        object cxLabel33: TcxLabel
          Left = 8
          Top = 16
          Caption = 'Data Inicial'
          Style.HotTrack = False
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'GlassOceans'
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'GlassOceans'
          Transparent = True
        end
        object edtFinal: TcxDBDateEdit
          Left = 112
          Top = 32
          DataBinding.DataField = 'DATA_FINAL'
          DataBinding.DataSource = dsFiltro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 100
        end
        object cxLabel34: TcxLabel
          Left = 112
          Top = 16
          Caption = 'Data Final'
          Style.HotTrack = False
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'GlassOceans'
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'GlassOceans'
          Transparent = True
        end
        object bTfrmCadClientes: TcxDBLookupComboBox
          Left = 217
          Top = 32
          DataBinding.DataField = 'CLIENTE'
          DataBinding.DataSource = dsFiltro
          ParentFont = False
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end
            item
              FieldName = 'CODIGO'
            end>
          Properties.ListSource = dsClienteFiltro
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 355
        end
        object cxLabel35: TcxLabel
          Left = 217
          Top = 16
          Caption = 'Cliente'
          Style.HotTrack = False
          Style.LookAndFeel.Kind = lfUltraFlat
          Style.LookAndFeel.NativeStyle = False
          Style.LookAndFeel.SkinName = 'GlassOceans'
          Style.Shadow = False
          Style.TransparentBorder = True
          StyleDisabled.LookAndFeel.Kind = lfUltraFlat
          StyleDisabled.LookAndFeel.NativeStyle = False
          StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
          StyleFocused.LookAndFeel.Kind = lfUltraFlat
          StyleFocused.LookAndFeel.NativeStyle = False
          StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
          StyleHot.LookAndFeel.Kind = lfUltraFlat
          StyleHot.LookAndFeel.NativeStyle = False
          StyleHot.LookAndFeel.SkinName = 'GlassOceans'
          Transparent = True
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 9
          Top = 59
          Caption = 'Tipo Status'
          DataBinding.DataField = 'TIPO_STATUS'
          DataBinding.DataSource = dsFiltro
          Properties.Columns = 3
          Properties.DefaultValue = 0
          Properties.Items = <
            item
              Caption = 'Abertos'
              Value = '0'
            end
            item
              Caption = 'Fechados'
              Value = '1'
            end
            item
              Caption = 'Ambos'
              Value = '2'
            end>
          TabOrder = 6
          Height = 55
          Width = 223
        end
        object cxLabel36: TcxLabel
          Left = 599
          Top = 16
          Caption = 'S'#233'rie'
          ParentFont = False
          Transparent = True
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 599
          Top = 32
          DataBinding.DataField = 'SERIE'
          DataBinding.DataSource = dsFiltro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 8
          Width = 183
        end
        object btnFiltroCliente: TcxButton
          Left = 571
          Top = 31
          Width = 23
          Height = 22
          TabOrder = 9
          TabStop = False
          OnClick = btnFiltroClienteClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
            0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
            BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
            0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
            BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
            00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBF}
          LookAndFeel.SkinName = 'LiquidSky'
        end
        object btnTimer: TcxButton
          Left = 1015
          Top = 0
          Width = 230
          Height = 40
          Hint = 
            'Habilita/Desabilita a atualiza'#231#227'o autom'#225'tica das OS listadas, ut' +
            'ilizado para avaliar o Tempo  Resposta ('
          Anchors = [akTop, akRight]
          Caption = 'Timer 3 Minutos [ Desabilitado]'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
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
        object pbTimer: TcxProgressBar
          Left = 1016
          Top = 40
          Anchors = [akTop, akRight]
          TabOrder = 11
          Visible = False
          Width = 229
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 1246
        Height = 665
        inherited pnlSubCad: TPanel
          Top = 368
          Width = 1244
          Height = 296
          inherited PgcDetalhe: TcxPageControl
            Width = 1244
            Height = 296
            ActivePage = tbsDetalhe2
            ClientRectBottom = 292
            ClientRectRight = 1240
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Itens'
              inherited PGCSub1: TcxPageControl
                Width = 1236
                Height = 265
                ActivePage = tbsListaSub1
                ClientRectBottom = 261
                ClientRectRight = 1232
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 1228
                    Height = 234
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1QUANTIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'QUANTIDADE'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1UNITARIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'UNITARIO'
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_PRODUTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO_TECNICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO_TECNICO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_PRODUTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1NOMETEC: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOMETEC'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1TIPO_SERVICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_SERVICO'
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet1SELECIONADO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SELECIONADO'
                        Visible = False
                        Width = 64
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    DataBinding.DataField = 'CODIGO'
                  end
                  object cxDBLookupComboBox1: TcxDBLookupComboBox
                    Left = 73
                    Top = 24
                    DataBinding.DataField = 'PRODUTO'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end
                      item
                        FieldName = 'CODIGO'
                      end>
                    Properties.ListSource = dsProdutosItens
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 2
                    Width = 295
                  end
                  object cxLabel11: TcxLabel
                    Left = 72
                    Top = 8
                    Caption = 'Produto'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                  object btnProduto: TcxButton
                    Left = 369
                    Top = 23
                    Width = 23
                    Height = 22
                    Enabled = False
                    TabOrder = 4
                    TabStop = False
                    Glyph.Data = {
                      06030000424D06030000000000003600000028000000100000000F0000000100
                      180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                      FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                      000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                      FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                      FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                      000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                      FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                      0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                      000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                      FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                      0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                      BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                      FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                      BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                      00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                      00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBF}
                  end
                  object cxDBCalcEdit1: TcxDBCalcEdit
                    Left = 394
                    Top = 24
                    DataBinding.DataField = 'QUANTIDADE'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 5
                    Width = 105
                  end
                  object cxLabel30: TcxLabel
                    Left = 394
                    Top = 8
                    Caption = 'Qtde'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                  object cxDBCalcEdit2: TcxDBCalcEdit
                    Left = 502
                    Top = 24
                    DataBinding.DataField = 'UNITARIO'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 7
                    Width = 105
                  end
                  object cxLabel31: TcxLabel
                    Left = 502
                    Top = 8
                    Caption = 'Vlr. Unit'#225'rio'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              Caption = 'Movimentos'
              inherited PGCSub2: TcxPageControl
                Width = 1236
                Height = 265
                ActivePage = tbsListaSub2
                ClientRectBottom = 261
                ClientRectRight = 1232
                inherited tbsListaSub2: TcxTabSheet
                  inherited GridDet2: TcxGrid
                    Width = 1228
                    Height = 234
                    inherited TVDet2: TcxGridDBBandedTableView
                      object TVDet2CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet2CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet2DT_FIM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_FIM'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet2DT_INICIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_INICIO'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet2HR_INICIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'HR_INICIO'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet2HR_FIM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'HR_FIM'
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet2SEQUENCIA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SEQUENCIA'
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet2OBSERVACAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'OBSERVACAO'
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet2QTDE_HORA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'QTDE_HORA'
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet2KM_RODADO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'KM_RODADO'
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet2KM_INICIAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'KM_INICIAL'
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet2KM_FINAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'KM_FINAL'
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet2TEMPO_VIAJEM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TEMPO_VIAJEM'
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVDet2USUARIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'USUARIO'
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVDet2COD_TIPO_MOVTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_TIPO_MOVTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVDet2NOME_USUARIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_USUARIO'
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                      object TVDet2NOME_TECNICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_TECNICO'
                        Position.BandIndex = 0
                        Position.ColIndex = 16
                        Position.RowIndex = 0
                      end
                      object TVDet2COD_TECNICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_TECNICO'
                        Position.BandIndex = 0
                        Position.ColIndex = 17
                        Position.RowIndex = 0
                      end
                      object TVDet2CUSTO_HORA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CUSTO_HORA'
                        Position.BandIndex = 0
                        Position.ColIndex = 18
                        Position.RowIndex = 0
                      end
                      object TVDet2CUSTO_ATIVIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CUSTO_ATIVIDADE'
                        Position.BandIndex = 0
                        Position.ColIndex = 19
                        Position.RowIndex = 0
                      end
                      object TVDet2TIPO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO'
                        Position.BandIndex = 0
                        Position.ColIndex = 20
                        Position.RowIndex = 0
                      end
                      object TVDet2DT_LANCTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_LANCTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 21
                        Position.RowIndex = 0
                      end
                      object TVDet2DT_VENCTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_VENCTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 22
                        Position.RowIndex = 0
                      end
                      object TVDet2DT_CONCLUSAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_CONCLUSAO'
                        Position.BandIndex = 0
                        Position.ColIndex = 23
                        Position.RowIndex = 0
                      end
                      object TVDet2COD_CONTATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_CONTATO'
                        Position.BandIndex = 0
                        Position.ColIndex = 24
                        Position.RowIndex = 0
                      end
                      object TVDet2COD_STATUS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_STATUS'
                        Position.BandIndex = 0
                        Position.ColIndex = 25
                        Position.RowIndex = 0
                      end
                      object TVDet2COD_VEICULO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_VEICULO'
                        Position.BandIndex = 0
                        Position.ColIndex = 26
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub2: TcxTabSheet
                  inherited edtCodDet2: TcxDBTextEdit
                    DataBinding.DataField = 'CODIGO'
                  end
                  object cxDBDateEdit4: TcxDBDateEdit
                    Left = 221
                    Top = 25
                    DataBinding.DataField = 'DT_LANCTO'
                    DataBinding.DataSource = dsRegistroDet2
                    Enabled = False
                    ParentFont = False
                    Style.BorderColor = clBtnShadow
                    Style.BorderStyle = ebsSingle
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clBlack
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.TransparentBorder = False
                    Style.IsFontAssigned = True
                    TabOrder = 2
                    Width = 117
                  end
                  object cxDBTextEdit1: TcxDBTextEdit
                    Left = 74
                    Top = 24
                    DataBinding.DataField = 'USUARIO'
                    DataBinding.DataSource = dsRegistroDet2
                    Enabled = False
                    ParentFont = False
                    Style.BorderColor = clBtnShadow
                    Style.BorderStyle = ebsSingle
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clBlack
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Width = 145
                  end
                  object Label11: TcxLabel
                    Left = 75
                    Top = 8
                    Caption = 'Usu'#225'rio'
                    ParentFont = False
                    Transparent = True
                  end
                  object Label14: TcxLabel
                    Left = 220
                    Top = 8
                    Caption = 'Dt. Lan'#231'amento'
                    ParentFont = False
                    Transparent = True
                  end
                  object cxGroupBox5: TcxGroupBox
                    Left = 8
                    Top = 48
                    TabStop = True
                    Caption = 'Horas Trabalhadas'
                    TabOrder = 6
                    Height = 110
                    Width = 254
                    object dtInicial: TcxDBDateEdit
                      Left = 8
                      Top = 32
                      DataBinding.DataField = 'DT_INICIO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.TransparentBorder = False
                      Style.IsFontAssigned = True
                      TabOrder = 0
                      Width = 87
                    end
                    object Label2: TcxLabel
                      Left = 8
                      Top = 16
                      Caption = 'Dt. Inicial'
                      ParentFont = False
                      Transparent = True
                    end
                    object hrInicial: TcxDBTimeEdit
                      Left = 98
                      Top = 32
                      DataBinding.DataField = 'HR_INICIO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.ButtonStyle = btsSimple
                      Style.IsFontAssigned = True
                      TabOrder = 1
                      Width = 74
                    end
                    object Label3: TcxLabel
                      Left = 98
                      Top = 16
                      Caption = 'Hr. Inicial'
                      ParentFont = False
                      Transparent = True
                    end
                    object dtFinal: TcxDBDateEdit
                      Left = 8
                      Top = 72
                      DataBinding.DataField = 'DT_FIM'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.TransparentBorder = False
                      Style.IsFontAssigned = True
                      TabOrder = 2
                      Width = 87
                    end
                    object Label6: TcxLabel
                      Left = 8
                      Top = 56
                      Caption = 'Dt. Final'
                      ParentFont = False
                      Transparent = True
                    end
                    object hrFinal: TcxDBTimeEdit
                      Left = 98
                      Top = 72
                      DataBinding.DataField = 'HR_FIM'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.ButtonStyle = btsSimple
                      Style.IsFontAssigned = True
                      TabOrder = 3
                      Width = 74
                    end
                    object Label5: TcxLabel
                      Left = 98
                      Top = 56
                      Caption = 'Hr. Final'
                      ParentFont = False
                      Transparent = True
                    end
                    object hrTotal: TcxDBTextEdit
                      Left = 176
                      Top = 72
                      DataBinding.DataField = 'QTDE_HORA'
                      DataBinding.DataSource = dsRegistroDet2
                      Enabled = False
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.IsFontAssigned = True
                      TabOrder = 4
                      Width = 70
                    end
                    object Label8: TcxLabel
                      Left = 176
                      Top = 56
                      Caption = 'Total'
                      ParentFont = False
                      Transparent = True
                    end
                  end
                  object cxGroupBox6: TcxGroupBox
                    Left = 536
                    Top = 48
                    TabStop = True
                    Caption = 'Tarefas'
                    TabOrder = 8
                    Height = 110
                    Width = 377
                    object cxDBDateEdit2: TcxDBDateEdit
                      Left = 8
                      Top = 35
                      DataBinding.DataField = 'DT_VENCTO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.TransparentBorder = False
                      Style.IsFontAssigned = True
                      TabOrder = 0
                      Width = 81
                    end
                    object cxDBDateEdit5: TcxDBDateEdit
                      Left = 95
                      Top = 35
                      DataBinding.DataField = 'DT_CONCLUSAO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.TransparentBorder = False
                      Style.IsFontAssigned = True
                      TabOrder = 1
                      Width = 81
                    end
                    object Label16: TcxLabel
                      Left = 95
                      Top = 20
                      Caption = 'Dt. Conclus'#227'o'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label15: TcxLabel
                      Left = 8
                      Top = 20
                      Caption = 'Dt. Vencto'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label20: TcxLabel
                      Left = 181
                      Top = 61
                      Caption = 'Tipo Movimento'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label17: TcxLabel
                      Left = 9
                      Top = 61
                      Caption = 'Contato'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label18: TcxLabel
                      Left = 181
                      Top = 20
                      Caption = 'Status'
                      ParentFont = False
                      Transparent = True
                    end
                    object bTfrmCadStatusServico: TcxDBLookupComboBox
                      Left = 181
                      Top = 34
                      DataBinding.DataField = 'COD_STATUS'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.KeyFieldNames = 'CODIGO'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NOME'
                        end>
                      Properties.ListSource = DsMovimentoStatus
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 3
                      Width = 166
                    end
                    object BtnMovimentoStatus: TcxButton
                      Left = 348
                      Top = 33
                      Width = 23
                      Height = 22
                      TabOrder = 4
                      TabStop = False
                      OnClick = BtnMovimentoStatusClick
                      Glyph.Data = {
                        06030000424D06030000000000003600000028000000100000000F0000000100
                        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBF}
                    end
                    object cmbContato: TcxDBLookupComboBox
                      Left = 8
                      Top = 77
                      DataBinding.DataField = 'COD_CONTATO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.KeyFieldNames = 'IDCLIENTE_RELACIONADO'
                      Properties.ListColumns = <
                        item
                          FieldName = 'CONTATO_NOME'
                        end
                        item
                          FieldName = 'IDCLIENTE_RELACIONADO'
                        end>
                      Properties.ListSource = DsContato
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 5
                      Width = 145
                    end
                    object cxButton2: TcxButton
                      Left = 153
                      Top = 75
                      Width = 24
                      Height = 22
                      Enabled = False
                      TabOrder = 7
                      TabStop = False
                      OnClick = btnStatusClick
                      Glyph.Data = {
                        06030000424D06030000000000003600000028000000100000000F0000000100
                        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBF}
                    end
                    object BtnTipoMovimento: TcxButton
                      Left = 349
                      Top = 76
                      Width = 24
                      Height = 22
                      TabOrder = 8
                      TabStop = False
                      OnClick = BtnTipoMovimentoClick
                      Glyph.Data = {
                        06030000424D06030000000000003600000028000000100000000F0000000100
                        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBF}
                    end
                    object aTfrmCadTipoMovimento: TcxDBLookupComboBox
                      Left = 181
                      Top = 77
                      DataBinding.DataField = 'COD_TIPO_MOVTO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.KeyFieldNames = 'CODIGO'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NOME'
                        end>
                      Properties.ListSource = DsTipoMovimento
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 6
                      Width = 166
                    end
                  end
                  object cxGroupBox7: TcxGroupBox
                    Left = 270
                    Top = 48
                    TabStop = True
                    Caption = 'Deslocamentos'
                    TabOrder = 7
                    Height = 110
                    Width = 259
                    object cxDBTextEdit6: TcxDBTextEdit
                      Left = 147
                      Top = 35
                      DataBinding.DataField = 'KM_RODADO'
                      DataBinding.DataSource = dsRegistroDet2
                      Enabled = False
                      ParentFont = False
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.IsFontAssigned = True
                      TabOrder = 2
                      Width = 78
                    end
                    object cxDBSpinEdit2: TcxDBSpinEdit
                      Left = 77
                      Top = 35
                      DataBinding.DataField = 'KM_FINAL'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.MaxValue = 10000000.000000000000000000
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.LookAndFeel.Kind = lfUltraFlat
                      Style.IsFontAssigned = True
                      StyleDisabled.BorderColor = clBtnShadow
                      StyleDisabled.BorderStyle = ebsSingle
                      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                      StyleDisabled.ButtonStyle = btsSimple
                      StyleFocused.LookAndFeel.Kind = lfUltraFlat
                      StyleHot.LookAndFeel.Kind = lfUltraFlat
                      TabOrder = 1
                      Width = 67
                    end
                    object cxLabel38: TcxLabel
                      Left = 77
                      Top = 20
                      Caption = 'Km. Final'
                      ParentFont = False
                      Transparent = True
                    end
                    object cxLabel39: TcxLabel
                      Left = 145
                      Top = 20
                      Caption = 'Total'
                      ParentFont = False
                      Transparent = True
                    end
                    object cxDBSpinEdit4: TcxDBSpinEdit
                      Left = 8
                      Top = 35
                      DataBinding.DataField = 'KM_INICIAL'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.MaxValue = 10000000.000000000000000000
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.LookAndFeel.Kind = lfUltraFlat
                      Style.IsFontAssigned = True
                      StyleDisabled.BorderColor = clBtnShadow
                      StyleDisabled.BorderStyle = ebsSingle
                      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                      StyleDisabled.ButtonStyle = btsSimple
                      StyleFocused.LookAndFeel.Kind = lfUltraFlat
                      StyleHot.LookAndFeel.Kind = lfUltraFlat
                      TabOrder = 0
                      Width = 67
                    end
                    object cxLabel40: TcxLabel
                      Left = 9
                      Top = 20
                      Caption = 'Km. Inicial'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label4: TcxLabel
                      Left = 8
                      Top = 60
                      Caption = 'Tmp. Viagem'
                      ParentFont = False
                      Transparent = True
                    end
                    object cxDBCalcEdit4: TcxDBCalcEdit
                      Left = 8
                      Top = 75
                      DataBinding.DataField = 'TEMPO_VIAJEM'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.ButtonGlyph.Data = {
                        46020000424D460200000000000036000000280000000E0000000C0000000100
                        1800000000001002000000000000000000000000000000000000CED3D6000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00CED3D600008486008486008400008400008400008400008400008400008400
                        008400008400008400008400000000000000848600FFFFFF8486008486008486
                        0084860084860084860084860084860084860084860084000000000000008486
                        00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
                        00008400000000000000848600FFFFFF84860084860084860084860084860084
                        86008486008486008486008486008400000000000000848600FFFF0084860000
                        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
                        0000848600FFFFFF848600848600848600848600848600848600848600848600
                        8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
                        C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
                        000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
                        000000000000848600FFFF000000000000000000000000000000000000000000
                        000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
                        00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
                        D684860084860084860084860084860084860084860084860084860084860084
                        8600848600CED3D60000}
                      Properties.ClearKey = 8
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.IsFontAssigned = True
                      TabOrder = 3
                      Width = 65
                    end
                    object cxButton4: TcxButton
                      Left = 226
                      Top = 74
                      Width = 24
                      Height = 22
                      Enabled = False
                      TabOrder = 6
                      TabStop = False
                      OnClick = btnStatusClick
                      Glyph.Data = {
                        06030000424D06030000000000003600000028000000100000000F0000000100
                        180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                        FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                        FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                        000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                        FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                        0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                        000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                        FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                        0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                        BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                        0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                        FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                        BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                        00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                        00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                        BFBFBFBFBFBFBFBFBFBF}
                    end
                    object cxDBLookupComboBox2: TcxDBLookupComboBox
                      Left = 75
                      Top = 75
                      DataBinding.DataField = 'COD_VEICULO'
                      DataBinding.DataSource = dsRegistroDet2
                      ParentFont = False
                      Properties.KeyFieldNames = 'PLACA'
                      Properties.ListColumns = <
                        item
                          FieldName = 'DESCRICAO'
                        end>
                      Properties.ListSource = dsVeiculos
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 4
                      Width = 150
                    end
                    object cxLabel41: TcxLabel
                      Left = 73
                      Top = 59
                      Caption = 'Veiculo'
                      ParentFont = False
                      Transparent = True
                    end
                  end
                  object bTfrmCadTecnicos: TcxDBLookupComboBox
                    Left = 341
                    Top = 24
                    DataBinding.DataField = 'COD_TECNICO'
                    DataBinding.DataSource = dsRegistroDet2
                    ParentFont = False
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = DsMovimentoTecnico
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 4
                    Width = 235
                  end
                  object cxButton1: TcxButton
                    Left = 577
                    Top = 23
                    Width = 23
                    Height = 22
                    TabOrder = 5
                    TabStop = False
                    OnClick = cxButton1Click
                    Glyph.Data = {
                      06030000424D06030000000000003600000028000000100000000F0000000100
                      180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                      0000000000000000000000000000000000000000000000000000000000000000
                      00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                      FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                      000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                      FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                      FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                      000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                      FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                      0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                      000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                      FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                      0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                      BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                      FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                      0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                      FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                      BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                      00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                      00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                      BFBFBFBFBFBFBFBFBFBF}
                  end
                  object cxDBMemo3: TcxDBMemo
                    Left = 919
                    Top = 66
                    DataBinding.DataField = 'OBSERVACAO'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 9
                    Height = 93
                    Width = 300
                  end
                  object cxLabel32: TcxLabel
                    Left = 920
                    Top = 49
                    Caption = 'Observa'#231#227'o'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              TabVisible = False
              inherited PGCSub3: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              TabVisible = False
              inherited PGCSub4: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
                inherited tbsListaSub4: TcxTabSheet
                  inherited GridDet4: TcxGrid
                    Height = 234
                  end
                end
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
              inherited PGCSub5: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
              inherited PGCSub6: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
              inherited PGCSub7: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
              inherited PGCSub8: TcxPageControl
                Width = 1236
                Height = 265
                ClientRectBottom = 261
                ClientRectRight = 1232
                inherited tbsListaSub8: TcxTabSheet
                  inherited GridDet8: TcxGrid
                    Width = 1254
                    Height = 234
                  end
                end
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 1244
          Height = 367
          inherited PgcMaster: TcxPageControl
            Width = 1244
            Height = 367
            ClientRectBottom = 363
            ClientRectRight = 1240
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Geral'
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'CODIGO'
                TabOrder = 0
              end
              object aTfrmCadClientes: TcxDBLookupComboBox
                Left = 212
                Top = 16
                DataBinding.DataField = 'PESSOA_FJ'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.DropDownAutoSize = True
                Properties.DropDownSizeable = True
                Properties.DropDownWidth = 400
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_RAZAO'
                  end
                  item
                    FieldName = 'CODIGO'
                  end>
                Properties.ListSource = dsClientes
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                Width = 355
              end
              object btnCliente: TcxButton
                Left = 568
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 14
                TabStop = False
                OnClick = btnClienteClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
                LookAndFeel.SkinName = 'LiquidSky'
              end
              object aTfrmCadStatusServico: TcxDBLookupComboBox
                Left = 591
                Top = 16
                DataBinding.DataField = 'COD_STATUS'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsStatus
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 166
              end
              object btnStatus: TcxButton
                Left = 757
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 15
                TabStop = False
                OnClick = btnStatusClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object btnTecnico: TcxButton
                Left = 757
                Top = 55
                Width = 23
                Height = 22
                TabOrder = 16
                TabStop = False
                OnClick = btnTecnicoClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object btnServicoExecutado: TcxButton
                Left = 757
                Top = 95
                Width = 23
                Height = 21
                TabOrder = 17
                TabStop = False
                OnClick = btnServicoExecutadoClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object aTfrmCadServicoExecutado: TcxDBLookupComboBox
                Left = 524
                Top = 96
                DataBinding.DataField = 'ID_TIPO_ATENDIMENTO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsServicoExecutado
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 8
                Width = 235
              end
              object aTfrmCadTecnicos: TcxDBLookupComboBox
                Left = 524
                Top = 56
                DataBinding.DataField = 'MECANICO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsTecnico
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 5
                Width = 235
              end
              object btnEquipamento: TcxButton
                Left = 500
                Top = 55
                Width = 23
                Height = 22
                Enabled = False
                TabOrder = 18
                TabStop = False
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object btnDefeitoReclamado: TcxButton
                Left = 243
                Top = 95
                Width = 23
                Height = 22
                TabOrder = 19
                TabStop = False
                OnClick = btnDefeitoReclamadoClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object btnMotivo: TcxButton
                Left = 501
                Top = 95
                Width = 23
                Height = 22
                TabOrder = 20
                TabStop = False
                OnClick = btnMotivoClick
                Glyph.Data = {
                  06030000424D06030000000000003600000028000000100000000F0000000100
                  180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
                  FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
                  FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
                  000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
                  FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
                  0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
                  000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
                  FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
                  0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
                  BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
                  0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
                  FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
                  BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
                  00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
                  00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                  BFBFBFBFBFBFBFBFBFBF}
              end
              object aTfrmCadMotivoChamado: TcxDBLookupComboBox
                Left = 267
                Top = 96
                DataBinding.DataField = 'ID_MOTIVO_CHAMADO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsMotivoChamado
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 7
                Width = 235
              end
              object edSolicitante: TcxDBTextEdit
                Left = 8
                Top = 136
                DataBinding.DataField = 'CLIENTE'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 9
                Width = 283
              end
              object cmbEquipamento: TcxDBLookupComboBox
                Left = 8
                Top = 56
                DataBinding.DataField = 'PRODUTO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.DropDownSizeable = True
                Properties.DropDownWidth = 800
                Properties.GridMode = True
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end
                  item
                    FieldName = 'MODELO'
                  end
                  item
                    FieldName = 'SERIE'
                  end
                  item
                    FieldName = 'TIPO_CONTRATO'
                  end
                  item
                    FieldName = 'ATIVO'
                  end
                  item
                    FieldName = 'COD_ITEM'
                  end>
                Properties.ListOptions.SyncMode = True
                Properties.ListSource = dsEquipamento
                Properties.MaxLength = 800
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 4
                Width = 493
              end
              object aTfrmCadDefeitos: TcxDBLookupComboBox
                Left = 8
                Top = 96
                DataBinding.DataField = 'DEFEITO_RECLAMADO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsDefeitoReclamado
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 6
                Width = 235
              end
              object cxLabel10: TcxLabel
                Left = 75
                Top = 0
                Caption = 'S'#233'rie'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object edtSerie: TcxDBTextEdit
                Left = 75
                Top = 16
                DataBinding.DataField = 'SERIE'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 1
                Width = 137
              end
              object cxLabel12: TcxLabel
                Left = 212
                Top = 0
                Caption = 'Cliente'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel13: TcxLabel
                Left = 593
                Top = 0
                Caption = 'Status'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel14: TcxLabel
                Left = 8
                Top = 40
                Caption = 'Equipamento'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel15: TcxLabel
                Left = 524
                Top = 40
                Caption = 'Tecnico'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel16: TcxLabel
                Left = 9
                Top = 120
                Caption = 'Solicitante'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel17: TcxLabel
                Left = 5
                Top = 80
                Caption = 'Defeito Reclamado'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel18: TcxLabel
                Left = 524
                Top = 80
                Caption = 'Servico Executado'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxLabel19: TcxLabel
                Left = 267
                Top = 80
                Caption = 'Motivo do Chamado'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxGroupBox1: TcxGroupBox
                Left = 194
                Top = 163
                TabStop = True
                Caption = 'Programa'#231#227'o'
                TabOrder = 11
                Height = 76
                Width = 181
                object edDataAtribuicao: TcxDBDateEdit
                  Left = 8
                  Top = 32
                  DataBinding.DataField = 'DT_ATRIBUICAO'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 83
                end
                object edtHoraAtribuicao: TcxDBTimeEdit
                  Left = 92
                  Top = 32
                  DataBinding.DataField = 'HR_ATRIBUICAO'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 81
                end
                object cxLabel22: TcxLabel
                  Left = 8
                  Top = 15
                  Caption = 'Data'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
                object cxLabel24: TcxLabel
                  Left = 90
                  Top = 15
                  Caption = 'Hora'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
              end
              object cxGroupBox2: TcxGroupBox
                Left = 8
                Top = 163
                TabStop = True
                Caption = 'Solicita'#231#227'o'
                TabOrder = 10
                Height = 76
                Width = 182
                object cxDBDateEdit1: TcxDBDateEdit
                  Left = 7
                  Top = 32
                  DataBinding.DataField = 'ENTRADA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 83
                end
                object cxDBTimeEdit1: TcxDBTimeEdit
                  Left = 92
                  Top = 32
                  DataBinding.DataField = 'HR_ENTRADA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 81
                end
                object cxLabel23: TcxLabel
                  Left = 6
                  Top = 15
                  Caption = 'Data'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
                object cxLabel25: TcxLabel
                  Left = 90
                  Top = 15
                  Caption = 'Hora'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
              end
              object cxDBMemo1: TcxDBMemo
                Left = 784
                Top = 16
                DataBinding.DataField = 'INFORMACOES_ITENS'
                DataBinding.DataSource = dsEquipamento
                Properties.ReadOnly = True
                Style.HotTrack = False
                TabOrder = 30
                Height = 312
                Width = 216
              end
              object cxLabel20: TcxLabel
                Left = 784
                Top = 0
                Caption = 'Informa'#231#245'es'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object cxGroupBox3: TcxGroupBox
                Left = 387
                Top = 120
                TabStop = True
                Caption = 'Dados de Fechamento'
                TabOrder = 12
                Height = 207
                Width = 391
                object edtDataFechamento: TcxDBDateEdit
                  Left = 8
                  Top = 30
                  DataBinding.DataField = 'DATA_FECHAMENTO'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 83
                end
                object cxDBTimeEdit2: TcxDBTimeEdit
                  Left = 92
                  Top = 30
                  DataBinding.DataField = 'HR_FECHAMENTO'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 81
                end
                object cxLabel21: TcxLabel
                  Left = 8
                  Top = 15
                  Caption = 'Data'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
                object cxLabel26: TcxLabel
                  Left = 90
                  Top = 15
                  Caption = 'Hora'
                  Style.HotTrack = False
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.LookAndFeel.NativeStyle = False
                  Style.LookAndFeel.SkinName = 'GlassOceans'
                  Style.Shadow = False
                  Style.TransparentBorder = True
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.LookAndFeel.NativeStyle = False
                  StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleFocused.LookAndFeel.NativeStyle = False
                  StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.NativeStyle = False
                  StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                  Transparent = True
                end
                object cxGroupBox4: TcxGroupBox
                  Left = 9
                  Top = 55
                  TabStop = True
                  Caption = 'Contadores'
                  PanelStyle.Active = True
                  TabOrder = 2
                  Height = 99
                  Width = 162
                  object EdtContadorTotal: TcxDBTextEdit
                    Left = 8
                    Top = 32
                    DataBinding.DataField = 'CONTADOR_TOTAL'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Width = 67
                  end
                  object cxLabel27: TcxLabel
                    Left = 8
                    Top = 16
                    Caption = 'PB'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                  object cxLabel28: TcxLabel
                    Left = 82
                    Top = 16
                    Caption = 'Colorido'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                  object cxDBTextEdit2: TcxDBTextEdit
                    Left = 82
                    Top = 32
                    DataBinding.DataField = 'CONTADOR_COR'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Width = 67
                  end
                  object cxDBTextEdit3: TcxDBTextEdit
                    Left = 8
                    Top = 72
                    DataBinding.DataField = 'CONTADOR_IMPRESSAO'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 2
                    Width = 67
                  end
                  object cxLabel29: TcxLabel
                    Left = 8
                    Top = 56
                    Caption = 'Digitaliza'#231#227'o'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                end
                object cxDBMemo2: TcxDBMemo
                  Left = 175
                  Top = 29
                  DataBinding.DataField = 'OBS_FECHAMENTO'
                  DataBinding.DataSource = dsRegistro
                  Properties.CharCase = ecUpperCase
                  TabOrder = 3
                  Height = 84
                  Width = 206
                end
                object cxDBCheckBox1: TcxDBCheckBox
                  Left = 175
                  Top = 114
                  Caption = 'Troca de Cilindro'
                  DataBinding.DataField = 'TROCA_CILINDRO'
                  DataBinding.DataSource = dsRegistro
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.TransparentBorder = True
                  TabOrder = 4
                  Width = 116
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 183
                  Top = 173
                  DataBinding.DataField = 'KM_RODADO'
                  DataBinding.DataSource = dsRegistro
                  Enabled = False
                  ParentFont = False
                  Style.BorderColor = clBtnShadow
                  Style.BorderStyle = ebsSingle
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clBlack
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.IsFontAssigned = True
                  TabOrder = 11
                  Width = 87
                end
                object Label10: TcxLabel
                  Left = 183
                  Top = 156
                  Caption = 'Total'
                  ParentFont = False
                  Transparent = True
                end
                object EdtKmFinal: TcxDBSpinEdit
                  Left = 95
                  Top = 173
                  DataBinding.DataField = 'KM_FINAL'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Properties.MaxValue = 10000000.000000000000000000
                  Style.BorderColor = clBtnShadow
                  Style.BorderStyle = ebsSingle
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clBlack
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.IsFontAssigned = True
                  StyleDisabled.BorderColor = clBtnShadow
                  StyleDisabled.BorderStyle = ebsSingle
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.ButtonStyle = btsSimple
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  TabOrder = 8
                  Width = 87
                end
                object Label9: TcxLabel
                  Left = 95
                  Top = 156
                  Caption = 'Km. Final'
                  ParentFont = False
                  Transparent = True
                end
                object Label7: TcxLabel
                  Left = 8
                  Top = 156
                  Caption = 'Km. Inicial'
                  ParentFont = False
                  Transparent = True
                end
                object cxDBSpinEdit1: TcxDBSpinEdit
                  Left = 7
                  Top = 173
                  DataBinding.DataField = 'KM_INICIAL'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Properties.MaxValue = 10000000.000000000000000000
                  Style.BorderColor = clBtnShadow
                  Style.BorderStyle = ebsSingle
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clBlack
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.LookAndFeel.Kind = lfUltraFlat
                  Style.IsFontAssigned = True
                  StyleDisabled.BorderColor = clBtnShadow
                  StyleDisabled.BorderStyle = ebsSingle
                  StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                  StyleDisabled.ButtonStyle = btsSimple
                  StyleFocused.LookAndFeel.Kind = lfUltraFlat
                  StyleHot.LookAndFeel.Kind = lfUltraFlat
                  TabOrder = 7
                  Width = 87
                end
                object cxDBCheckBox2: TcxDBCheckBox
                  Left = 175
                  Top = 134
                  Caption = 'Troca de Fus'#227'o'
                  DataBinding.DataField = 'TROCA_FUSAO'
                  DataBinding.DataSource = dsRegistro
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.TransparentBorder = True
                  TabOrder = 6
                  Width = 116
                end
                object cxDBCheckBox3: TcxDBCheckBox
                  Left = 293
                  Top = 115
                  Caption = 'Troca de Belt'
                  DataBinding.DataField = 'TROCA_BELT'
                  DataBinding.DataSource = dsRegistro
                  Properties.ValueChecked = 'S'
                  Properties.ValueUnchecked = 'N'
                  Style.TransparentBorder = True
                  TabOrder = 5
                  Width = 87
                end
              end
              object cxDBDateEdit3: TcxDBDateEdit
                Left = 292
                Top = 136
                DataBinding.DataField = 'DATA'
                DataBinding.DataSource = dsRegistro
                Enabled = False
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 32
                Width = 83
              end
              object cxLabel37: TcxLabel
                Left = 291
                Top = 119
                Caption = 'Data Lancto'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    AfterPost = dtEditAfterPost
    OnNewRecord = dtEditNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO'
      
        '  (ALIQUOTA_ISS, ASSUNTO, CAUSA_CHAMADO, CHASSI, CLIENTE, CNPJ, ' +
        'COD_CONTATO, '
      
        '   COD_GRAVIDADE, COD_STATUS, CODIGO, CONDICAO_FINAL_EQUIPAMENTO' +
        ', CONTADOR_CILINDRO, '
      
        '   CONTADOR_COR, CONTADOR_IMPRESSAO, CONTADOR_PRETO, CONTADOR_RE' +
        'VELADOR, '
      
        '   CONTADOR_TOTAL, CONTROLE, CREDITOS, CT_CILINDRO, CT_REVELADOR' +
        ', CUSTO_OS, '
      
        '   DATA, DATA_FECHAMENTO, DEBITOS, DEFEITO_RECLAMADO, DESC_ACRES' +
        'C, DT_ATRIBUICAO, '
      
        '   DT_CILINDRO, DT_FINALIZACAO, DT_INICIALIZACAO, DT_REVELADOR, ' +
        'ENTRADA, '
      
        '   ENVIADA_CAIXA, FECHADO, FORMA_PAGTO, HISTORICO, HORA_CHEGADA,' +
        ' HORA_SAIDA, '
      
        '   HORAS_TRABALHADAS, HR_ATRIBUICAO, HR_ENTRADA, HR_FECHAMENTO, ' +
        'HR_FINALIZACAO, '
      
        '   HR_INICIALIZACAO, ID_CONTRATO, ID_MOTIVO_CHAMADO, ID_TIPO_ATE' +
        'NDIMENTO, '
      
        '   INFORMACOES, KM, KM_FINAL, KM_INICIAL, KM_RODADO, LOCAL_COBRA' +
        'NCA, MAP_LAT, '
      
        '   MAP_LONG, MECANICO, MED_BIELA, MED_CARCACA, MED_CILINDRO, MED' +
        '_VIRABREQUIM, '
      
        '   MOTOR, NATUREZA, NF, NOME, NOME_DEFEITO, NOME_FORMA, NOME_MEC' +
        'ANICO, '
      
        '   NOME_MOTOR, NOME_NATUREZA, NOME_PROPRIEDADE, NOME_VIAJANTE, N' +
        'UMERO_VENDA, '
      
        '   OBS_FECHAMENTO, ORCAMENTO, OS_RECHAMADO, PESSOA_FJ, PLACA, PR' +
        'EVENTIVO, '
      
        '   PRIORIDADE, PRODUTO, PROPRIEDADE, PROTOCOLO, SERIE, TAG, TEMP' +
        'O_RESPOSTA, '
      
        '   TIPO_ATENDIMENTO, TIPO_DOCTO, TIPO_TECNICO, TOTAL, TROCA_BELT' +
        ', TROCA_CILINDRO, '
      
        '   TROCA_FUSAO, ULT_CT_CILINDRO, ULT_DT_CILINDRO, VEICULO, VENDA' +
        ', VIAJANTE, '
      '   VLR_ENTRADA, VLR_PARC_LC)'
      'values'
      
        '  (:ALIQUOTA_ISS, :ASSUNTO, :CAUSA_CHAMADO, :CHASSI, :CLIENTE, :' +
        'CNPJ, :COD_CONTATO, '
      
        '   :COD_GRAVIDADE, :COD_STATUS, :CODIGO, :CONDICAO_FINAL_EQUIPAM' +
        'ENTO, :CONTADOR_CILINDRO, '
      
        '   :CONTADOR_COR, :CONTADOR_IMPRESSAO, :CONTADOR_PRETO, :CONTADO' +
        'R_REVELADOR, '
      
        '   :CONTADOR_TOTAL, :CONTROLE, :CREDITOS, :CT_CILINDRO, :CT_REVE' +
        'LADOR, '
      
        '   :CUSTO_OS, :DATA, :DATA_FECHAMENTO, :DEBITOS, :DEFEITO_RECLAM' +
        'ADO, :DESC_ACRESC, '
      
        '   :DT_ATRIBUICAO, :DT_CILINDRO, :DT_FINALIZACAO, :DT_INICIALIZA' +
        'CAO, :DT_REVELADOR, '
      
        '   :ENTRADA, :ENVIADA_CAIXA, :FECHADO, :FORMA_PAGTO, :HISTORICO,' +
        ' :HORA_CHEGADA, '
      
        '   :HORA_SAIDA, :HORAS_TRABALHADAS, :HR_ATRIBUICAO, :HR_ENTRADA,' +
        ' :HR_FECHAMENTO, '
      
        '   :HR_FINALIZACAO, :HR_INICIALIZACAO, :ID_CONTRATO, :ID_MOTIVO_' +
        'CHAMADO, '
      
        '   :ID_TIPO_ATENDIMENTO, :INFORMACOES, :KM, :KM_FINAL, :KM_INICI' +
        'AL, :KM_RODADO, '
      
        '   :LOCAL_COBRANCA, :MAP_LAT, :MAP_LONG, :MECANICO, :MED_BIELA, ' +
        ':MED_CARCACA, '
      
        '   :MED_CILINDRO, :MED_VIRABREQUIM, :MOTOR, :NATUREZA, :NF, :NOM' +
        'E, :NOME_DEFEITO, '
      
        '   :NOME_FORMA, :NOME_MECANICO, :NOME_MOTOR, :NOME_NATUREZA, :NO' +
        'ME_PROPRIEDADE, '
      
        '   :NOME_VIAJANTE, :NUMERO_VENDA, :OBS_FECHAMENTO, :ORCAMENTO, :' +
        'OS_RECHAMADO, '
      
        '   :PESSOA_FJ, :PLACA, :PREVENTIVO, :PRIORIDADE, :PRODUTO, :PROP' +
        'RIEDADE, '
      
        '   :PROTOCOLO, :SERIE, :TAG, :TEMPO_RESPOSTA, :TIPO_ATENDIMENTO,' +
        ' :TIPO_DOCTO, '
      
        '   :TIPO_TECNICO, :TOTAL, :TROCA_BELT, :TROCA_CILINDRO, :TROCA_F' +
        'USAO, :ULT_CT_CILINDRO, '
      
        '   :ULT_DT_CILINDRO, :VEICULO, :VENDA, :VIAJANTE, :VLR_ENTRADA, ' +
        ':VLR_PARC_LC)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  NATUREZA,'
      '  MECANICO,'
      '  VIAJANTE,'
      '  ENTRADA,'
      '  HR_ENTRADA,'
      '  HISTORICO,'
      '  CHASSI,'
      '  INFORMACOES,'
      '  TOTAL,'
      '  DESC_ACRESC,'
      '  CLIENTE,'
      '  FECHADO,'
      '  NOME_NATUREZA,'
      '  NOME_MECANICO,'
      '  NOME_VIAJANTE,'
      '  MOTOR,'
      '  NOME_MOTOR,'
      '  ENVIADA_CAIXA,'
      '  PLACA,'
      '  DATA_FECHAMENTO,'
      '  HR_FECHAMENTO,'
      '  OBS_FECHAMENTO,'
      '  FORMA_PAGTO,'
      '  NOME_FORMA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  VLR_ENTRADA,'
      '  CREDITOS,'
      '  DEBITOS,'
      '  NF,'
      '  ALIQUOTA_ISS,'
      '  ORCAMENTO,'
      '  MED_VIRABREQUIM,'
      '  MED_BIELA,'
      '  MED_CILINDRO,'
      '  MED_CARCACA,'
      '  NUMERO_VENDA,'
      '  DEFEITO_RECLAMADO,'
      '  CONDICAO_FINAL_EQUIPAMENTO,'
      '  HORA_CHEGADA,'
      '  HORA_SAIDA,'
      '  CONTADOR_TOTAL,'
      '  CONTADOR_CILINDRO,'
      '  CONTADOR_REVELADOR,'
      '  NOME_DEFEITO,'
      '  PROPRIEDADE,'
      '  NOME_PROPRIEDADE,'
      '  CAUSA_CHAMADO,'
      '  TIPO_ATENDIMENTO,'
      '  CONTADOR_COR,'
      '  CONTADOR_PRETO,'
      '  CONTADOR_IMPRESSAO,'
      '  VENDA,'
      '  PRODUTO,'
      '  ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO,'
      '  COD_STATUS,'
      '  DT_ATRIBUICAO,'
      '  HR_ATRIBUICAO,'
      '  DT_INICIALIZACAO,'
      '  HR_INICIALIZACAO,'
      '  DT_FINALIZACAO,'
      '  HR_FINALIZACAO,'
      '  CT_REVELADOR,'
      '  DT_REVELADOR,'
      '  DT_CILINDRO,'
      '  CT_CILINDRO,'
      '  KM_INICIAL,'
      '  KM_FINAL,'
      '  OS_RECHAMADO,'
      '  KM_RODADO,'
      '  HORAS_TRABALHADAS,'
      '  TEMPO_RESPOSTA,'
      '  TIPO_TECNICO,'
      '  PREVENTIVO,'
      '  ID_CONTRATO,'
      '  COD_CONTATO,'
      '  PRIORIDADE,'
      '  CUSTO_OS,'
      '  CONTROLE,'
      '  ASSUNTO,'
      '  VEICULO,'
      '  KM,'
      '  PROTOCOLO,'
      '  COD_GRAVIDADE,'
      '  MAP_LAT,'
      '  MAP_LONG,'
      '  TAG,'
      '  SERIE,'
      '  ULT_DT_CILINDRO,'
      '  ULT_CT_CILINDRO,'
      '  TROCA_CILINDRO,'
      '  TROCA_FUSAO,'
      '  TROCA_BELT'
      'from OFC_ORDEM_SERVICO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select os.*,'
      '        '#39'T'#39' as ATIVO, '
      '        st.fechado st_fechado'
      'from OFC_ORDEM_SERVICO os'
      
        'left join ofc_status st on (st.cnpj = os.cnpj and os.cod_status ' +
        '= st.codigo)'
      'Where os.CNPJ = :CNPJ AND os.CODIGO = :OFC_CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO'
      'set'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  ASSUNTO = :ASSUNTO,'
      '  CAUSA_CHAMADO = :CAUSA_CHAMADO,'
      '  CHASSI = :CHASSI,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_GRAVIDADE = :COD_GRAVIDADE,'
      '  COD_STATUS = :COD_STATUS,'
      '  CODIGO = :CODIGO,'
      '  CONDICAO_FINAL_EQUIPAMENTO = :CONDICAO_FINAL_EQUIPAMENTO,'
      '  CONTADOR_CILINDRO = :CONTADOR_CILINDRO,'
      '  CONTADOR_COR = :CONTADOR_COR,'
      '  CONTADOR_IMPRESSAO = :CONTADOR_IMPRESSAO,'
      '  CONTADOR_PRETO = :CONTADOR_PRETO,'
      '  CONTADOR_REVELADOR = :CONTADOR_REVELADOR,'
      '  CONTADOR_TOTAL = :CONTADOR_TOTAL,'
      '  CONTROLE = :CONTROLE,'
      '  CREDITOS = :CREDITOS,'
      '  CT_CILINDRO = :CT_CILINDRO,'
      '  CT_REVELADOR = :CT_REVELADOR,'
      '  CUSTO_OS = :CUSTO_OS,'
      '  DATA = :DATA,'
      '  DATA_FECHAMENTO = :DATA_FECHAMENTO,'
      '  DEBITOS = :DEBITOS,'
      '  DEFEITO_RECLAMADO = :DEFEITO_RECLAMADO,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DT_ATRIBUICAO = :DT_ATRIBUICAO,'
      '  DT_CILINDRO = :DT_CILINDRO,'
      '  DT_FINALIZACAO = :DT_FINALIZACAO,'
      '  DT_INICIALIZACAO = :DT_INICIALIZACAO,'
      '  DT_REVELADOR = :DT_REVELADOR,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CAIXA = :ENVIADA_CAIXA,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  HISTORICO = :HISTORICO,'
      '  HORA_CHEGADA = :HORA_CHEGADA,'
      '  HORA_SAIDA = :HORA_SAIDA,'
      '  HORAS_TRABALHADAS = :HORAS_TRABALHADAS,'
      '  HR_ATRIBUICAO = :HR_ATRIBUICAO,'
      '  HR_ENTRADA = :HR_ENTRADA,'
      '  HR_FECHAMENTO = :HR_FECHAMENTO,'
      '  HR_FINALIZACAO = :HR_FINALIZACAO,'
      '  HR_INICIALIZACAO = :HR_INICIALIZACAO,'
      '  ID_CONTRATO = :ID_CONTRATO,'
      '  ID_MOTIVO_CHAMADO = :ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO = :ID_TIPO_ATENDIMENTO,'
      '  INFORMACOES = :INFORMACOES,'
      '  KM = :KM,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_INICIAL = :KM_INICIAL,'
      '  KM_RODADO = :KM_RODADO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  MECANICO = :MECANICO,'
      '  MED_BIELA = :MED_BIELA,'
      '  MED_CARCACA = :MED_CARCACA,'
      '  MED_CILINDRO = :MED_CILINDRO,'
      '  MED_VIRABREQUIM = :MED_VIRABREQUIM,'
      '  MOTOR = :MOTOR,'
      '  NATUREZA = :NATUREZA,'
      '  NF = :NF,'
      '  NOME = :NOME,'
      '  NOME_DEFEITO = :NOME_DEFEITO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_MECANICO = :NOME_MECANICO,'
      '  NOME_MOTOR = :NOME_MOTOR,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_PROPRIEDADE = :NOME_PROPRIEDADE,'
      '  NOME_VIAJANTE = :NOME_VIAJANTE,'
      '  NUMERO_VENDA = :NUMERO_VENDA,'
      '  OBS_FECHAMENTO = :OBS_FECHAMENTO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  OS_RECHAMADO = :OS_RECHAMADO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  PREVENTIVO = :PREVENTIVO,'
      '  PRIORIDADE = :PRIORIDADE,'
      '  PRODUTO = :PRODUTO,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  SERIE = :SERIE,'
      '  TAG = :TAG,'
      '  TEMPO_RESPOSTA = :TEMPO_RESPOSTA,'
      '  TIPO_ATENDIMENTO = :TIPO_ATENDIMENTO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TIPO_TECNICO = :TIPO_TECNICO,'
      '  TOTAL = :TOTAL,'
      '  TROCA_BELT = :TROCA_BELT,'
      '  TROCA_CILINDRO = :TROCA_CILINDRO,'
      '  TROCA_FUSAO = :TROCA_FUSAO,'
      '  ULT_CT_CILINDRO = :ULT_CT_CILINDRO,'
      '  ULT_DT_CILINDRO = :ULT_DT_CILINDRO,'
      '  VEICULO = :VEICULO,'
      '  VENDA = :VENDA,'
      '  VIAJANTE = :VIAJANTE,'
      '  VLR_ENTRADA = :VLR_ENTRADA,'
      '  VLR_PARC_LC = :VLR_PARC_LC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'OFC_ORDEM_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Top = 8
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_ORDEM_SERVICO"."PESSOA_FJ"'
      OnChange = dtEditPESSOA_FJChange
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object dtEditNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NATUREZA"'
    end
    object dtEditMECANICO: TIntegerField
      FieldName = 'MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
    end
    object dtEditVIAJANTE: TIntegerField
      FieldName = 'VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."VIAJANTE"'
    end
    object dtEditENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
    end
    object dtEditHR_ENTRADA: TTimeField
      FieldName = 'HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object dtEditHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"OFC_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object dtEditCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"OFC_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object dtEditINFORMACOES: TBlobField
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
    end
    object dtEditDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"OFC_ORDEM_SERVICO"."DESC_ACRESC"'
    end
    object dtEditCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object dtEditFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"OFC_ORDEM_SERVICO"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object dtEditNOME_MECANICO: TIBStringField
      FieldName = 'NOME_MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object dtEditNOME_VIAJANTE: TIBStringField
      FieldName = 'NOME_VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object dtEditMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."MOTOR"'
    end
    object dtEditNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MOTOR"'
      Size = 50
    end
    object dtEditENVIADA_CAIXA: TIBStringField
      FieldName = 'ENVIADA_CAIXA'
      Origin = '"OFC_ORDEM_SERVICO"."ENVIADA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object dtEditPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"OFC_ORDEM_SERVICO"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtEditDATA_FECHAMENTO: TDateTimeField
      FieldName = 'DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object dtEditHR_FECHAMENTO: TTimeField
      FieldName = 'HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object dtEditOBS_FECHAMENTO: TBlobField
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Origin = '"OFC_ORDEM_SERVICO"."FORMA_PAGTO"'
    end
    object dtEditNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_FORMA"'
      Size = 50
    end
    object dtEditTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object dtEditLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"OFC_ORDEM_SERVICO"."LOCAL_COBRANCA"'
    end
    object dtEditVLR_PARC_LC: TFloatField
      FieldName = 'VLR_PARC_LC'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_PARC_LC"'
    end
    object dtEditVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_ENTRADA"'
    end
    object dtEditCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = '"OFC_ORDEM_SERVICO"."CREDITOS"'
    end
    object dtEditDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = '"OFC_ORDEM_SERVICO"."DEBITOS"'
    end
    object dtEditNF: TIntegerField
      FieldName = 'NF'
      Origin = '"OFC_ORDEM_SERVICO"."NF"'
    end
    object dtEditALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"OFC_ORDEM_SERVICO"."ALIQUOTA_ISS"'
    end
    object dtEditORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ORCAMENTO"'
    end
    object dtEditMED_VIRABREQUIM: TIBStringField
      FieldName = 'MED_VIRABREQUIM'
      Origin = '"OFC_ORDEM_SERVICO"."MED_VIRABREQUIM"'
    end
    object dtEditMED_BIELA: TIBStringField
      FieldName = 'MED_BIELA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_BIELA"'
    end
    object dtEditMED_CILINDRO: TIBStringField
      FieldName = 'MED_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CILINDRO"'
    end
    object dtEditMED_CARCACA: TIBStringField
      FieldName = 'MED_CARCACA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CARCACA"'
    end
    object dtEditNUMERO_VENDA: TIntegerField
      FieldName = 'NUMERO_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."NUMERO_VENDA"'
    end
    object dtEditDEFEITO_RECLAMADO: TIntegerField
      FieldName = 'DEFEITO_RECLAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."DEFEITO_RECLAMADO"'
    end
    object dtEditCONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'CONDICAO_FINAL_EQUIPAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."CONDICAO_FINAL_EQUIPAMENTO"'
      Size = 50
    end
    object dtEditHORA_CHEGADA: TTimeField
      FieldName = 'HORA_CHEGADA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_CHEGADA"'
    end
    object dtEditHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_SAIDA"'
    end
    object dtEditCONTADOR_TOTAL: TFloatField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_TOTAL"'
    end
    object dtEditCONTADOR_CILINDRO: TFloatField
      FieldName = 'CONTADOR_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_CILINDRO"'
    end
    object dtEditCONTADOR_REVELADOR: TFloatField
      FieldName = 'CONTADOR_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_REVELADOR"'
    end
    object dtEditNOME_DEFEITO: TIBStringField
      FieldName = 'NOME_DEFEITO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_DEFEITO"'
      Size = 50
    end
    object dtEditPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PROPRIEDADE"'
    end
    object dtEditNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object dtEditCAUSA_CHAMADO: TIBStringField
      FieldName = 'CAUSA_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."CAUSA_CHAMADO"'
      Size = 200
    end
    object dtEditTIPO_ATENDIMENTO: TIBStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_ATENDIMENTO"'
      Size = 50
    end
    object dtEditCONTADOR_COR: TFloatField
      FieldName = 'CONTADOR_COR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_COR"'
    end
    object dtEditCONTADOR_PRETO: TFloatField
      FieldName = 'CONTADOR_PRETO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_PRETO"'
    end
    object dtEditCONTADOR_IMPRESSAO: TFloatField
      FieldName = 'CONTADOR_IMPRESSAO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_IMPRESSAO"'
    end
    object dtEditVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object dtEditPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"OFC_ORDEM_SERVICO"."PRODUTO"'
      Size = 15
    end
    object dtEditID_MOTIVO_CHAMADO: TIntegerField
      FieldName = 'ID_MOTIVO_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_MOTIVO_CHAMADO"'
    end
    object dtEditID_TIPO_ATENDIMENTO: TIntegerField
      FieldName = 'ID_TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_TIPO_ATENDIMENTO"'
    end
    object dtEditCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO"."COD_STATUS"'
      OnChange = dtEditCOD_STATUSChange
    end
    object dtEditDT_ATRIBUICAO: TDateTimeField
      FieldName = 'DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
    end
    object dtEditHR_ATRIBUICAO: TTimeField
      FieldName = 'HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object dtEditDT_INICIALIZACAO: TDateTimeField
      FieldName = 'DT_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_INICIALIZACAO"'
    end
    object dtEditHR_INICIALIZACAO: TTimeField
      FieldName = 'HR_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_INICIALIZACAO"'
    end
    object dtEditDT_FINALIZACAO: TDateTimeField
      FieldName = 'DT_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_FINALIZACAO"'
    end
    object dtEditHR_FINALIZACAO: TTimeField
      FieldName = 'HR_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FINALIZACAO"'
    end
    object dtEditCT_REVELADOR: TIntegerField
      FieldName = 'CT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CT_REVELADOR"'
    end
    object dtEditDT_REVELADOR: TDateTimeField
      FieldName = 'DT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."DT_REVELADOR"'
    end
    object dtEditDT_CILINDRO: TDateTimeField
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object dtEditCT_CILINDRO: TIntegerField
      FieldName = 'CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CT_CILINDRO"'
    end
    object dtEditKM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_INICIAL"'
      OnChange = dtEditKM_FINALChange
    end
    object dtEditKM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_FINAL"'
      OnChange = dtEditKM_FINALChange
    end
    object dtEditOS_RECHAMADO: TIntegerField
      FieldName = 'OS_RECHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."OS_RECHAMADO"'
    end
    object dtEditKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object dtEditHORAS_TRABALHADAS: TFloatField
      FieldName = 'HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object dtEditTEMPO_RESPOSTA: TFloatField
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_ORDEM_SERVICO"."TEMPO_RESPOSTA"'
    end
    object dtEditTIPO_TECNICO: TIBStringField
      FieldName = 'TIPO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_TECNICO"'
      FixedChar = True
      Size = 1
    end
    object dtEditPREVENTIVO: TIBStringField
      FieldName = 'PREVENTIVO'
      Origin = '"OFC_ORDEM_SERVICO"."PREVENTIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object dtEditCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO"."COD_CONTATO"'
    end
    object dtEditPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PRIORIDADE"'
    end
    object dtEditCUSTO_OS: TFloatField
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
    end
    object dtEditCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = '"OFC_ORDEM_SERVICO"."CONTROLE"'
    end
    object dtEditASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_ORDEM_SERVICO"."ASSUNTO"'
      Size = 200
    end
    object dtEditVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = '"OFC_ORDEM_SERVICO"."VEICULO"'
    end
    object dtEditKM: TIntegerField
      FieldName = 'KM'
      Origin = '"OFC_ORDEM_SERVICO"."KM"'
    end
    object dtEditPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"OFC_ORDEM_SERVICO"."PROTOCOLO"'
      Size = 15
    end
    object dtEditCOD_GRAVIDADE: TIntegerField
      FieldName = 'COD_GRAVIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."COD_GRAVIDADE"'
    end
    object dtEditMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LAT"'
      Size = 200
    end
    object dtEditMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LONG"'
      Size = 200
    end
    object dtEditTAG: TIBStringField
      FieldName = 'TAG'
      Origin = '"OFC_ORDEM_SERVICO"."TAG"'
      FixedChar = True
      Size = 1
    end
    object dtEditSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"OFC_ORDEM_SERVICO"."SERIE"'
      Size = 30
    end
    object dtEditULT_DT_CILINDRO: TDateField
      FieldName = 'ULT_DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_DT_CILINDRO"'
    end
    object dtEditULT_CT_CILINDRO: TIntegerField
      FieldName = 'ULT_CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_CT_CILINDRO"'
    end
    object dtEditTROCA_CILINDRO: TIBStringField
      FieldName = 'TROCA_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_CILINDRO"'
      FixedChar = True
      Size = 1
    end
    object dtEditTROCA_FUSAO: TIBStringField
      FieldName = 'TROCA_FUSAO'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_FUSAO"'
      FixedChar = True
      Size = 1
    end
    object dtEditTROCA_BELT: TIBStringField
      FieldName = 'TROCA_BELT'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_BELT"'
      FixedChar = True
      Size = 1
    end
    object dtEditATIVO: TIBStringField
      FieldName = 'ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object dtEditST_FECHADO: TIBStringField
      FieldName = 'ST_FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    OnCalcFields = dtListCalcFields
    SQL.Strings = (
      'select distinct'
      'ofc.cnpj,'
      'ofc.troca_belt,'
      'ofc.troca_fusao,'
      'ofc.troca_cilindro, '
      'st.codigo st_codigo,'
      'ofc.hr_atribuicao ofc_hr_atribuicao,'
      'ofc.hr_entrada ofc_hr_entrada,'
      'ofc.codigo ofc_codigo,'
      'ofc.data ofc_data,'
      'ofc.entrada ofc_dt_entrada,'
      'ofc.dt_atribuicao ofc_dt_atribuicao,'
      'ofc.HR_FECHAMENTO ofc_HR_FECHAMENTO,'
      'ofc.data_fechamento ofc_data_fechamento,'
      'ofc.total ofc_total,'
      'ofc.cliente ofc_solicitante,'
      'ofc.venda ofc_venda,'
      'ofc.KM_RODADO ofc_KM_RODADO,'
      'ofc.HORAS_TRABALHADAS ofc_HORAS_TRABALHADAS,'
      'mec.codigo mec_codigo,'
      'mec.nome mec_nome,'
      'def.codigo def_codigo,'
      'def.nome def_nome,'
      ''
      'mtc.codigo mtc_codigo,'
      'mtc.nome mtc_nome,'
      'tpa.codigo tpa_codigo,'
      'tpa.nome tpa_nome,'
      'st.cor st_cor,'
      'st.nome st_nome,'
      'cli.codigo cli_codigo,'
      'cli.nome_razao cli_nome_razao,'
      'reg.codigo reg_codigo,'
      'reg.nome reg_descricao,'
      'prd.codigo prd_codigo,'
      'prd.nome prd_nome,'
      'prd.serie prd_serie,'
      'mdl.codigo mdl_codigo,'
      'mdl.nome mdl_nome,'
      'ct.cod_contrato cp_cod_contrato,'
      'tpc.nome tpc_nome, cdd.nome cidade,'
      ''
      'ofc.id_contrato,'
      'cti.tempo_resposta cp_tempo_resposta,'
      ''
      'ofc.custo_os,'
      'ofc.informacoes,'
      'ofc.obs_fechamento,'
      'v.modelo veiculo,'
      'v.placa,'
      'ofc.map_lat ,'
      'ofc.map_long,'
      'ofc.DT_CILINDRO,'
      'ofc.CT_CILINDRO,'
      'ofc.ult_dt_cilindro,'
      'ofc.ult_ct_cilindro,'
      'ofc.contador_total,'
      ''
      'case '
      
        ' when (cast(ofc.DT_CILINDRO as date) - cast(ofc.ult_dt_cilindro ' +
        'as date)) > 0 then  (cast(ofc.DT_CILINDRO as date) - cast(ofc.ul' +
        't_dt_cilindro as date))'
      ' else 0'
      'end ct_cilindro_saldo_dias,'
      ''
      'case '
      
        ' when (ofc.contador_total - ofc.ult_ct_cilindro) > 0 then  (ofc.' +
        'contador_total - ofc.ult_ct_cilindro)'
      ' else 0'
      'end ct_cilindro_saldo_contador'
      'from ofc_ordem_servico ofc'
      
        'left join ofc_status st on (st.codigo = ofc.cod_status and st.cn' +
        'pj=ofc.cnpj)'
      
        'left join ofc_mecanicos mec on (mec.codigo = ofc.mecanico and me' +
        'c.cnpj = ofc.cnpj)'
      
        'left join ofc_defeito def on (def.codigo = ofc.defeito_reclamado' +
        ' and def.cnpj = ofc.cnpj)'
      
        'left join ofc_motivo_chamado mtc on (mtc.codigo = ofc.id_motivo_' +
        'chamado and mtc.cnpj = ofc.cnpj)'
      
        'left join ofc_tipo_atendimento tpa on (tpa.cnpj= ofc.id_tipo_ate' +
        'ndimento and tpa.codigo = ofc.cnpj)'
      
        'left join glo_pessoas_fj cli on (cli.codigo = ofc.pessoa_fj and ' +
        'cli.cnpj = ofc.cnpj)'
      
        'left join glo_cidades cdd on (cdd.codigo = cli.cidade and cli.cn' +
        'pj = cdd.cnpj)'
      
        'left join glo_regioes reg on (reg.codigo = cli.regiao and reg.cn' +
        'pj = ofc.cnpj)'
      
        'left join est_produtos prd on (prd.codigo = ofc.produto and prd.' +
        'cnpj = ofc.cnpj)'
      
        'left join ofc_contratos_itens cti on (ofc.cnpj = cti.cnpj and ct' +
        'i.cod_produto = ofc.produto and ofc.id_contrato = cti.contrato)'
      
        'left join ofc_contratos ct on (cli.cnpj = ct.cnpj and cli.codigo' +
        ' = ct.cod_cliente and ct.codigo = cti.contrato)'
      
        'left join glo_tipo_contrato tpc on (tpc.cnpj = ct.cnpj and tpc.c' +
        'odigo = ct.cod_contrato)'
      
        'left join glo_modelo_propriedade mdl on (mdl.codigo = prd.modelo' +
        '  and mdl.cnpj = prd.cnpj)'
      
        'left join glo_veiculos v on (v.cnpj = ofc.cnpj and v.pessoa_fj =' +
        ' ofc.pessoa_fj and v.codigo = ofc.veiculo)'
      'where  ofc.cnpj = :cnpj')
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListST_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'ST_CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
    end
    object dtListOFC_HR_ATRIBUICAO: TTimeField
      DisplayLabel = 'Hr. Atribui'#231#227'o'
      FieldName = 'OFC_HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object dtListOFC_HR_ENTRADA: TTimeField
      DisplayLabel = 'Hr. Entrada'
      FieldName = 'OFC_HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object dtListOFC_CODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd. OS'
      FieldName = 'OFC_CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object dtListOFC_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OFC_DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
    end
    object dtListOFC_DT_ENTRADA: TDateTimeField
      DisplayLabel = 'Dt. Entrada'
      FieldName = 'OFC_DT_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
    end
    object dtListOFC_DT_ATRIBUICAO: TDateTimeField
      DisplayLabel = 'Dt. Atribui'#231#227'o'
      FieldName = 'OFC_DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
    end
    object dtListOFC_HR_FECHAMENTO: TTimeField
      DisplayLabel = 'Hr. Fechamento'
      FieldName = 'OFC_HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object dtListOFC_DATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Dt. Fechamento'
      FieldName = 'OFC_DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object dtListOFC_TOTAL: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'OFC_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
    end
    object dtListOFC_SOLICITANTE: TIBStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'OFC_SOLICITANTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object dtListOFC_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'OFC_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object dtListOFC_KM_RODADO: TFloatField
      DisplayLabel = 'KM Rodado'
      FieldName = 'OFC_KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object dtListOFC_HORAS_TRABALHADAS: TFloatField
      DisplayLabel = 'Hrs. Trabalhadas'
      FieldName = 'OFC_HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object dtListMEC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Tecnico'
      FieldName = 'MEC_CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
    end
    object dtListMEC_NOME: TIBStringField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'MEC_NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object dtListDEF_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Defeito Reclamado'
      FieldName = 'DEF_CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
    end
    object dtListDEF_NOME: TIBStringField
      DisplayLabel = 'Defeito Reclamado'
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object dtListMTC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Motivo Chamado'
      FieldName = 'MTC_CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
    end
    object dtListMTC_NOME: TIBStringField
      DisplayLabel = 'Motivo Chamado'
      FieldName = 'MTC_NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object dtListTPA_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Serv. Executado'
      FieldName = 'TPA_CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
    end
    object dtListTPA_NOME: TIBStringField
      DisplayLabel = 'Servi'#231'o Executado'
      FieldName = 'TPA_NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object dtListST_COR: TIntegerField
      DisplayLabel = 'Status Cor'
      FieldName = 'ST_COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object dtListST_NOME: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ST_NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object dtListCLI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object dtListCLI_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListREG_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REG_CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
    end
    object dtListREG_DESCRICAO: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REG_DESCRICAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object dtListPRD_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      FieldName = 'PRD_CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object dtListPRD_NOME: TIBStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'PRD_NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListPRD_SERIE: TIBStringField
      DisplayLabel = 'S'#233'rie Equipamento'
      FieldName = 'PRD_SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object dtListMDL_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Modelo'
      FieldName = 'MDL_CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
    end
    object dtListMDL_NOME: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDL_NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object dtListCP_COD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CP_COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object dtListTPC_NOME: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TPC_NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object dtListCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListID_CONTRATO: TIntegerField
      DisplayLabel = 'ID. Contrato'
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object dtListCP_TEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'Tempo Resposta'
      FieldName = 'CP_TEMPO_RESPOSTA'
      Origin = '"OFC_CONTRATOS_ITENS"."TEMPO_RESPOSTA"'
    end
    object dtListCUSTO_OS: TFloatField
      DisplayLabel = 'Vlr. Custo OS'
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
    end
    object dtListINFORMACOES: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListOBS_FECHAMENTO: TBlobField
      DisplayLabel = 'Obs. Fechamento'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListVEICULO: TIBStringField
      DisplayLabel = 'Ve'#237'culo'
      FieldName = 'VEICULO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object dtListPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtListMAP_LAT: TIBStringField
      DisplayLabel = 'Map. Latitude'
      FieldName = 'MAP_LAT'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LAT"'
      Size = 200
    end
    object dtListMAP_LONG: TIBStringField
      DisplayLabel = 'Map. Longitude'
      FieldName = 'MAP_LONG'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LONG"'
      Size = 200
    end
    object dtListDT_CILINDRO: TDateTimeField
      DisplayLabel = 'Dt. Troca Cilindro'
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object dtListCT_CILINDRO: TIntegerField
      DisplayLabel = 'Contador Cilindro'
      FieldName = 'CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CT_CILINDRO"'
    end
    object dtListULT_DT_CILINDRO: TDateField
      DisplayLabel = 'Dt. Troca Cilindro Ant.'
      FieldName = 'ULT_DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_DT_CILINDRO"'
    end
    object dtListULT_CT_CILINDRO: TIntegerField
      DisplayLabel = 'Contador Cilindro Ant.'
      FieldName = 'ULT_CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_CT_CILINDRO"'
    end
    object dtListCONTADOR_TOTAL: TFloatField
      DisplayLabel = 'Contador Total PB'
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_TOTAL"'
    end
    object dtListCT_CILINDRO_SALDO_DIAS: TIntegerField
      DisplayLabel = 'Sld. Troca Cilindro Dias'
      FieldName = 'CT_CILINDRO_SALDO_DIAS'
      ProviderFlags = []
    end
    object dtListCT_CILINDRO_SALDO_CONTADOR: TFloatField
      DisplayLabel = 'Sld. Troca Cilindro Copias'
      FieldName = 'CT_CILINDRO_SALDO_CONTADOR'
      ProviderFlags = []
    end
    object dtListTEMPO_GASTO: TFloatField
      DisplayLabel = 'Tempo Decorrido'
      FieldKind = fkCalculated
      FieldName = 'TEMPO_GASTO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object dtListTROCA_CILINDRO: TIBStringField
      DisplayLabel = 'Troca de Cilindro'
      FieldName = 'TROCA_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_CILINDRO"'
      FixedChar = True
      Size = 1
    end
    object dtListTROCA_BELT: TIBStringField
      DisplayLabel = 'Troca de Belt'
      FieldName = 'TROCA_BELT'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_BELT"'
      FixedChar = True
      Size = 1
    end
    object dtListTROCA_FUSAO: TIBStringField
      DisplayLabel = 'Troca de Fus'#227'o'
      FieldName = 'TROCA_FUSAO'
      Origin = '"OFC_ORDEM_SERVICO"."TROCA_FUSAO"'
      FixedChar = True
      Size = 1
    end
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      26)
    inherited dxBarManager1Bar1: TdxBar
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
        end
        item
          Visible = True
          ItemName = 'BtnImprimirOS'
        end>
    end
    object BtnImprimirOS: TdxBarButton [11]
      Action = ActImprimirOS
      Category = 0
      ImageIndex = 34
      PaintStyle = psCaptionGlyph
    end
  end
  inherited ActionList1: TActionList
    object ActImprimirOS: TAction
      Caption = 'Imprimir OS'
      OnExecute = ActImprimirOSExecute
    end
    object ActGeraVenda: TAction
      Caption = 'ActGeraVenda'
      OnExecute = ActGeraVendaExecute
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = TVRegistro
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
        Component = TVRegistroCIDADE
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
        Component = TVRegistroCLI_CODIGO
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
        Component = TVRegistroCLI_NOME_RAZAO
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
        Component = TVRegistroCONTADOR_TOTAL
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
        Component = TVRegistroCP_COD_CONTRATO
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
        Component = TVRegistroCP_TEMPO_RESPOSTA
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
        Component = TVRegistroCT_CILINDRO
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
        Component = TVRegistroCT_CILINDRO_SALDO_CONTADOR
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
        Component = TVRegistroCT_CILINDRO_SALDO_DIAS
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
        Component = TVRegistroCUSTO_OS
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
        Component = TVRegistroDEF_CODIGO
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
        Component = TVRegistroDEF_NOME
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
        Component = TVRegistroDT_CILINDRO
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
        Component = TVRegistroID_CONTRATO
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
        Component = TVRegistroINFORMACOES
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
        Component = TVRegistroMAP_LAT
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
        Component = TVRegistroMAP_LONG
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
        Component = TVRegistroMDL_CODIGO
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
        Component = TVRegistroMDL_NOME
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
        Component = TVRegistroMEC_CODIGO
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
        Component = TVRegistroMEC_NOME
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
        Component = TVRegistroMTC_CODIGO
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
        Component = TVRegistroMTC_NOME
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
        Component = TVRegistroOBS_FECHAMENTO
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
        Component = TVRegistroOFC_CODIGO
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
        Component = TVRegistroOFC_DATA
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
        Component = TVRegistroOFC_DATA_FECHAMENTO
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
        Component = TVRegistroOFC_DT_ATRIBUICAO
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
        Component = TVRegistroOFC_DT_ENTRADA
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
        Component = TVRegistroOFC_HORAS_TRABALHADAS
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
        Component = TVRegistroOFC_HR_ATRIBUICAO
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
        Component = TVRegistroOFC_HR_ENTRADA
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
        Component = TVRegistroOFC_HR_FECHAMENTO
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
        Component = TVRegistroOFC_KM_RODADO
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
        Component = TVRegistroOFC_SOLICITANTE
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
        Component = TVRegistroOFC_TOTAL
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
        Component = TVRegistroOFC_VENDA
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
        Component = TVRegistroPLACA
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
        Component = TVRegistroPRD_CODIGO
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
        Component = TVRegistroPRD_NOME
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
        Component = TVRegistroPRD_SERIE
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
        Component = TVRegistroREG_CODIGO
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
        Component = TVRegistroREG_DESCRICAO
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
        Component = TVRegistroST_CODIGO
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
        Component = TVRegistroST_COR
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
        Component = TVRegistroST_NOME
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
        Component = TVRegistroTEMPO_GASTO
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
        Component = TVRegistroTPA_CODIGO
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
        Component = TVRegistroTPA_NOME
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
        Component = TVRegistroTPC_NOME
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
        Component = TVRegistroTROCA_BELT
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
        Component = TVRegistroTROCA_CILINDRO
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
        Component = TVRegistroTROCA_FUSAO
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
        Component = TVRegistroULT_CT_CILINDRO
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
        Component = TVRegistroULT_DT_CILINDRO
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
        Component = TVRegistroVEICULO
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
  end
  inherited dsRegistroDet2: TDataSource
    Left = 744
    Top = 456
  end
  inherited dsPesquisaDet2: TDataSource
    Left = 712
    Top = 456
  end
  inherited dsRegistroDet1: TDataSource
    Left = 672
    Top = 456
  end
  inherited dsPesquisaDet1: TDataSource
    Left = 640
    Top = 456
  end
  inherited dtListDet1: TIBQuery
    SQL.Strings = (
      'select osi.cnpj,'
      '  osi.codigo,'
      '  osi.quantidade,'
      '  osi.unitario,'
      '  osi.selecionado,'
      '  osi.produto as cod_produto,'
      '  osi.codigo_tecnico,'
      '  prd.nome nome_produto,'
      '  tec.nome as nometec,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico'
      ''
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where osi.cnpj = :cnpj and osi.codigo = :codigo')
    Left = 640
    Top = 424
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Item'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
    end
    object dtListDet1QUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      DisplayFormat = '###,##0.0000'
    end
    object dtListDet1UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1COD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object dtListDet1CODIGO_TECNICO: TIntegerField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'CODIGO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO_TECNICO"'
    end
    object dtListDet1NOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListDet1NOMETEC: TIBStringField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'NOMETEC'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object dtListDet1TIPO_SERVICO: TIBStringField
      DisplayLabel = 'Tp. Serv.'
      FieldName = 'TIPO_SERVICO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object dtListDet1SELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from ofc_ordem_servico_servico'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into ofc_ordem_servico_servico'
      
        '  (CNPJ, CODIGO, CODIGO_TECNICO, NOME, PRODUTO, QUANTIDADE, SELE' +
        'CIONADO, '
      '   SERVICO, UNITARIO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :CODIGO_TECNICO, :NOME, :PRODUTO, :QUANTIDADE' +
        ', :SELECIONADO, '
      '   :SERVICO, :UNITARIO)')
    RefreshSQL.Strings = (
      'Select *'
      'from ofc_ordem_servico_servico '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select osi.*'
      'from ofc_ordem_servico_servico osi'
      'where osi.cnpj = :cnpj and osi.codigo = :codigo')
    ModifySQL.Strings = (
      'update ofc_ordem_servico_servico'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_TECNICO = :CODIGO_TECNICO,'
      '  NOME = :NOME,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SELECIONADO = :SELECIONADO,'
      '  SERVICO = :SERVICO,'
      '  UNITARIO = :UNITARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    Left = 672
    Top = 424
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
    end
    object dtEditDet1PRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."PRODUTO"'
      Size = 15
    end
    object dtEditDet1SERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
    end
    object dtEditDet1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Size = 50
    end
    object dtEditDet1QUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      OnChange = dtEditDet1QUANTIDADEChange
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1UNITARIO: TFloatField
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      OnChange = dtEditDet1UNITARIOChange
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1SELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1CODIGO_TECNICO: TIntegerField
      FieldName = 'CODIGO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO_TECNICO"'
    end
    object dtEditDet1Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  inherited dsLinkDet2: TDataSource
    Left = 736
    Top = 388
  end
  inherited dsLinkDet1: TDataSource
    Left = 656
    Top = 388
  end
  inherited dtEditDet2: TIBDataSet
    AfterInsert = dtEditDet2AfterInsert
    AfterPost = dtEditDet2AfterPost
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_INTERVALO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_INTERVALO'
      
        '  (CNPJ, COD_CONTATO, COD_STATUS, COD_TECNICO, COD_TIPO_MOVTO, C' +
        'OD_VEICULO, '
      
        '   CODIGO, CUSTO_HORA, CUSTO_INTERVALO, DT_CONCLUSAO, DT_FIM, DT' +
        '_INICIO, '
      
        '   DT_LANCTO, DT_VENCTO, HR_FIM, HR_INICIO, KM_FINAL, KM_INICIAL' +
        ', KM_RODADO, '
      
        '   MSG, OBSERVACAO, OBSERVACAO2, QTDE_HORA, SEQUENCIA, TEMPO_VIA' +
        'JEM, TIPO, '
      '   USUARIO)'
      'values'
      
        '  (:CNPJ, :COD_CONTATO, :COD_STATUS, :COD_TECNICO, :COD_TIPO_MOV' +
        'TO, :COD_VEICULO, '
      
        '   :CODIGO, :CUSTO_HORA, :CUSTO_INTERVALO, :DT_CONCLUSAO, :DT_FI' +
        'M, :DT_INICIO, '
      
        '   :DT_LANCTO, :DT_VENCTO, :HR_FIM, :HR_INICIO, :KM_FINAL, :KM_I' +
        'NICIAL, '
      
        '   :KM_RODADO, :MSG, :OBSERVACAO, :OBSERVACAO2, :QTDE_HORA, :SEQ' +
        'UENCIA, '
      '   :TEMPO_VIAJEM, :TIPO, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  SEQUENCIA,'
      '  DT_INICIO,'
      '  HR_INICIO,'
      '  DT_FIM,'
      '  HR_FIM,'
      '  QTDE_HORA,'
      '  OBSERVACAO,'
      '  KM_RODADO,'
      '  KM_INICIAL,'
      '  KM_FINAL,'
      '  TEMPO_VIAJEM,'
      '  MSG,'
      '  USUARIO,'
      '  COD_TECNICO,'
      '  CUSTO_INTERVALO,'
      '  CUSTO_HORA,'
      '  TIPO,'
      '  DT_LANCTO,'
      '  DT_VENCTO,'
      '  DT_CONCLUSAO,'
      '  COD_STATUS,'
      '  COD_CONTATO,'
      '  COD_VEICULO,'
      '  COD_TIPO_MOVTO,'
      '  OBSERVACAO2'
      'from OFC_ORDEM_SERVICO_INTERVALO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select * from OFC_ORDEM_SERVICO_INTERVALO i'
      
        'where i.cnpj = :cnpj and i.codigo = :codigo and i.sequencia = :s' +
        'equencia')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_INTERVALO'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_STATUS = :COD_STATUS,'
      '  COD_TECNICO = :COD_TECNICO,'
      '  COD_TIPO_MOVTO = :COD_TIPO_MOVTO,'
      '  COD_VEICULO = :COD_VEICULO,'
      '  CODIGO = :CODIGO,'
      '  CUSTO_HORA = :CUSTO_HORA,'
      '  CUSTO_INTERVALO = :CUSTO_INTERVALO,'
      '  DT_CONCLUSAO = :DT_CONCLUSAO,'
      '  DT_FIM = :DT_FIM,'
      '  DT_INICIO = :DT_INICIO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  HR_FIM = :HR_FIM,'
      '  HR_INICIO = :HR_INICIO,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_INICIAL = :KM_INICIAL,'
      '  KM_RODADO = :KM_RODADO,'
      '  MSG = :MSG,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  OBSERVACAO2 = :OBSERVACAO2,'
      '  QTDE_HORA = :QTDE_HORA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TEMPO_VIAJEM = :TEMPO_VIAJEM,'
      '  TIPO = :TIPO,'
      '  USUARIO = :USUARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    GeneratorField.Field = 'sEQUENCIA'
    GeneratorField.Generator = 'GEN_OFC_INTERVALO'
    Left = 744
    Top = 424
    object dtEditDet2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet2SEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet2DT_INICIO: TDateField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_INICIO"'
    end
    object dtEditDet2HR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_INICIO"'
      OnChange = dtEditDet2HR_FIMChange
    end
    object dtEditDet2DT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_FIM"'
    end
    object dtEditDet2HR_FIM: TTimeField
      FieldName = 'HR_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_FIM"'
      OnChange = dtEditDet2HR_FIMChange
    end
    object dtEditDet2QTDE_HORA: TFloatField
      FieldName = 'QTDE_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."QTDE_HORA"'
      DisplayFormat = '###,##0.0000'
    end
    object dtEditDet2OBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO"'
      Size = 80
    end
    object dtEditDet2KM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_RODADO"'
    end
    object dtEditDet2KM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_INICIAL"'
      OnChange = dtEditDet2KM_FINALChange
    end
    object dtEditDet2KM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_FINAL"'
      OnChange = dtEditDet2KM_FINALChange
    end
    object dtEditDet2TEMPO_VIAJEM: TFloatField
      FieldName = 'TEMPO_VIAJEM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TEMPO_VIAJEM"'
    end
    object dtEditDet2MSG: TIBStringField
      FieldName = 'MSG'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."MSG"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet2USUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."USUARIO"'
    end
    object dtEditDet2COD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TECNICO"'
    end
    object dtEditDet2CUSTO_INTERVALO: TFloatField
      FieldName = 'CUSTO_INTERVALO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_INTERVALO"'
    end
    object dtEditDet2CUSTO_HORA: TFloatField
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_HORA"'
    end
    object dtEditDet2TIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet2DT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_LANCTO"'
    end
    object dtEditDet2DT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_VENCTO"'
    end
    object dtEditDet2DT_CONCLUSAO: TDateField
      FieldName = 'DT_CONCLUSAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_CONCLUSAO"'
    end
    object dtEditDet2COD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object dtEditDet2COD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_CONTATO"'
    end
    object dtEditDet2COD_VEICULO: TIBStringField
      FieldName = 'COD_VEICULO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_VEICULO"'
      FixedChar = True
      Size = 8
    end
    object dtEditDet2COD_TIPO_MOVTO: TIntegerField
      FieldName = 'COD_TIPO_MOVTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object dtEditDet2OBSERVACAO2: TMemoField
      FieldName = 'OBSERVACAO2'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO2"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dtListDet2: TIBQuery
    SQL.Strings = (
      'select'
      '   s.CNPJ,'
      '   s.CODIGO, '
      '   s.DT_FIM, '
      '   s.DT_INICIO, '
      '   s.HR_INICIO, '
      '   s.HR_FIM, '
      '   s.SEQUENCIA,'
      '   s.OBSERVACAO, '
      '   s.QTDE_HORA,'
      '   s.KM_RODADO,'
      '   s.KM_INICIAL,'
      '   s.KM_FINAL,'
      '   s.TEMPO_VIAJEM,'
      '   s.usuario,'
      ' S.cod_tipo_movto,'
      '   case s.usuario'
      '    when (null) then 0'
      '    else s.usuario||'#39'-'#39'||coalesce(u.nome,'#39#39')'
      '   end nome_usuario, '
      ''
      '   t.nome nome_tecnico,'
      '   s.cod_tecnico,'
      '  '
      '   s.custo_hora, '
      '   s.custo_intervalo custo_atividade,'
      '   s.tipo,'
      '   s.dt_lancto,'
      '   s.dt_vencto,'
      '   s.dt_conclusao,'
      's.cod_contato,'
      '   s.cod_status,'
      '   s.cod_veiculo'
      'from OFC_ORDEM_SERVICO_INTERVALO s'
      'left join sis_usuarios u on (u.codigo = s.usuario)'
      
        'left join ofc_mecanicos t on (t.cnpj = s.cnpj and t.codigo = s.c' +
        'od_tecnico)'
      'WHERE s.CNPJ = :CNPJ AND s.CODIGO = :CODIGO '
      'ORDER BY  DT_INICIO, HR_INICIO ')
    Left = 712
    Top = 424
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end>
    object dtListDet2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet2CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet2DT_FIM: TDateField
      DisplayLabel = 'Dt. Fim'
      FieldName = 'DT_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_FIM"'
    end
    object dtListDet2DT_INICIO: TDateField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_INICIO"'
    end
    object dtListDet2HR_INICIO: TTimeField
      DisplayLabel = 'Hr. Inicio'
      FieldName = 'HR_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_INICIO"'
    end
    object dtListDet2HR_FIM: TTimeField
      DisplayLabel = 'Hr. Fim'
      FieldName = 'HR_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_FIM"'
    end
    object dtListDet2SEQUENCIA: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet2OBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO"'
      Size = 80
    end
    object dtListDet2QTDE_HORA: TFloatField
      DisplayLabel = 'Qtde Horas'
      FieldName = 'QTDE_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."QTDE_HORA"'
    end
    object dtListDet2KM_RODADO: TFloatField
      DisplayLabel = 'KM Rodado'
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_RODADO"'
    end
    object dtListDet2KM_INICIAL: TFloatField
      DisplayLabel = 'KM Inicial'
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_INICIAL"'
    end
    object dtListDet2KM_FINAL: TFloatField
      DisplayLabel = 'KM Final'
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_FINAL"'
    end
    object dtListDet2TEMPO_VIAJEM: TFloatField
      DisplayLabel = 'Tmp. Viagem'
      FieldName = 'TEMPO_VIAJEM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TEMPO_VIAJEM"'
    end
    object dtListDet2USUARIO: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."USUARIO"'
    end
    object dtListDet2COD_TIPO_MOVTO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Movto'
      FieldName = 'COD_TIPO_MOVTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object dtListDet2NOME_USUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 62
    end
    object dtListDet2NOME_TECNICO: TIBStringField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'NOME_TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object dtListDet2COD_TECNICO: TIntegerField
      DisplayLabel = 'C'#243'd. Tecnico'
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TECNICO"'
    end
    object dtListDet2CUSTO_HORA: TFloatField
      DisplayLabel = 'Custo/Hora'
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_HORA"'
    end
    object dtListDet2CUSTO_ATIVIDADE: TFloatField
      DisplayLabel = 'Custo Atividade'
      FieldName = 'CUSTO_ATIVIDADE'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_INTERVALO"'
    end
    object dtListDet2TIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtListDet2DT_LANCTO: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_LANCTO"'
    end
    object dtListDet2DT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_VENCTO"'
    end
    object dtListDet2DT_CONCLUSAO: TDateField
      DisplayLabel = 'Dt. Conclus'#227'o'
      FieldName = 'DT_CONCLUSAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_CONCLUSAO"'
    end
    object dtListDet2COD_CONTATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contato'
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_CONTATO"'
    end
    object dtListDet2COD_STATUS: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object dtListDet2COD_VEICULO: TIBStringField
      DisplayLabel = 'C'#243'd. Ve'#237'culo'
      FieldName = 'COD_VEICULO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_VEICULO"'
      FixedChar = True
      Size = 8
    end
  end
  inherited dsRegistroDet3: TDataSource
    Left = 808
    Top = 456
  end
  inherited dtEditDet3: TIBDataSet
    Left = 808
    Top = 424
  end
  inherited dsLinkDet3: TDataSource
    Left = 792
    Top = 388
  end
  inherited dtListDet3: TIBQuery
    Left = 776
    Top = 424
  end
  inherited dsPesquisaDet3: TDataSource
    Left = 776
    Top = 456
  end
  inherited dsRegistroDet4: TDataSource
    Left = 872
    Top = 456
  end
  inherited dtEditDet4: TIBDataSet
    Left = 872
    Top = 424
  end
  inherited dsLinkDet4: TDataSource
    Left = 856
    Top = 388
  end
  inherited dtListDet4: TIBQuery
    Left = 840
    Top = 424
  end
  inherited dsPesquisaDet4: TDataSource
    Left = 840
    Top = 456
  end
  inherited dsRegistroDet5: TDataSource
    Left = 936
    Top = 456
  end
  inherited dtEditDet5: TIBDataSet
    Left = 936
    Top = 424
  end
  inherited dsLinkDet5: TDataSource
    Left = 920
    Top = 388
  end
  inherited dtListDet5: TIBQuery
    Left = 904
    Top = 424
  end
  inherited dsPesquisaDet5: TDataSource
    Left = 904
    Top = 456
  end
  inherited dsRegistroDet6: TDataSource
    Left = 1000
    Top = 456
  end
  inherited dtEditDet6: TIBDataSet
    Left = 1000
    Top = 424
  end
  inherited dsLinkDet6: TDataSource
    Left = 984
    Top = 388
  end
  inherited dtListDet6: TIBQuery
    Left = 968
    Top = 424
  end
  inherited dsPesquisaDet6: TDataSource
    Left = 968
    Top = 456
  end
  inherited dsRegistroDet7: TDataSource
    Left = 1064
    Top = 456
  end
  inherited dtEditDet7: TIBDataSet
    Left = 1064
    Top = 424
  end
  inherited dsLinkDet7: TDataSource
    Left = 1048
    Top = 388
  end
  inherited dtListDet7: TIBQuery
    Left = 1032
    Top = 424
  end
  inherited dsPesquisaDet7: TDataSource
    Left = 1032
    Top = 456
  end
  inherited dsRegistroDet8: TDataSource
    Left = 1128
    Top = 456
  end
  inherited dtEditDet8: TIBDataSet
    Left = 1128
    Top = 424
  end
  inherited dsLinkDet8: TDataSource
    Left = 1112
    Top = 388
  end
  inherited dtListDet8: TIBQuery
    Left = 1096
    Top = 424
  end
  inherited dsPesquisaDet8: TDataSource
    Left = 1096
    Top = 456
  end
  inherited mtbFiltro: TdxMemData
    Left = 348
    Top = 59
    object mtbFiltroDATA_INICIAL: TDateField
      FieldName = 'DATA_INICIAL'
    end
    object mtbFiltroDATA_FINAL: TDateField
      FieldName = 'DATA_FINAL'
    end
    object mtbFiltroCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object mtbFiltroTIPO_STATUS: TIntegerField
      FieldName = 'TIPO_STATUS'
    end
    object mtbFiltroSERIE: TStringField
      FieldName = 'SERIE'
      Size = 15
    end
  end
  inherited dsFiltro: TDataSource
    Left = 319
    Top = 60
  end
  object SelSeries: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select o.cod_cliente, psa.nome_razao, p.codigo cod_equipamento f' +
        'rom ofc_contratos_itens i'
      
        'inner join ofc_contratos o on (o.cnpj = i.cnpj and o.codigo = i.' +
        'contrato)'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj =o.cnpj and psa.codig' +
        'o = o.cod_cliente)'
      
        'inner join est_produtos p on (p.cnpj = i.cnpj and p.codigo = i.c' +
        'od_produto)'
      
        'where coalesce(o.ativo,'#39'S'#39') = '#39'S'#39' and coalesce(i.ativo,'#39'S'#39') = '#39'S' +
        #39
      'and p.serie = :serie and p.cnpj = :cnpj')
    Left = 808
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelSeriesCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
    object SelSeriesNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelSeriesCOD_EQUIPAMENTO: TIBStringField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
  end
  object SelEndereco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select psa.map_lat, psa.map_long, lgd.nome logradouro , psa.nume' +
        'ro, cdd.nome cidade, psa.uf from glo_pessoas_fj psa'
      
        'left join glo_logradouros lgd on (lgd.cnpj = psa.cnpj and psa.en' +
        'dereco = lgd.codigo)'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and cdd.codigo' +
        ' = psa.cidade)'
      'where psa.cnpj = :cnpj and psa.codigo = :codigo')
    Left = 840
    Top = 217
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object SelEnderecoMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object SelEnderecoMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
    object SelEnderecoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object SelEnderecoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object SelEnderecoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object SelEnderecoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object QryProdutosItens: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from est_produtos p'
      'where p.cnpj = :cnpj')
    Left = 876
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryProdutosItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryProdutosItensCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QryProdutosItensCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object QryProdutosItensCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object QryProdutosItensCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object QryProdutosItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object QryProdutosItensMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PRODUTOS"."MARCA"'
    end
    object QryProdutosItensNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object QryProdutosItensGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PRODUTOS"."GRUPO"'
    end
    object QryProdutosItensSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PRODUTOS"."SUBGRUPO"'
    end
    object QryProdutosItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PRODUTOS"."REDUCAO"'
    end
    object QryProdutosItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object QryProdutosItensUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"EST_PRODUTOS"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object QryProdutosItensCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS"."CTE"'
    end
    object QryProdutosItensCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS"."CTIE"'
    end
    object QryProdutosItensQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
    end
    object QryProdutosItensQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object QryProdutosItensLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object QryProdutosItensLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object QryProdutosItensLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object QryProdutosItensNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PRODUTOS"."QTDADE_MIN"'
    end
    object QryProdutosItensQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PRODUTOS"."QTDADE_MAX"'
    end
    object QryProdutosItensCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object QryProdutosItensQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object QryProdutosItensDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object QryProdutosItensMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object QryProdutosItensPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
    end
    object QryProdutosItensPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_ANT"'
    end
    object QryProdutosItensPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_MED"'
    end
    object QryProdutosItensPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object QryProdutosItensPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_ANT"'
    end
    object QryProdutosItensPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_MED"'
    end
    object QryProdutosItensALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object QryProdutosItensORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PRODUTOS"."ORIGEM"'
    end
    object QryProdutosItensPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PRODUTOS"."PESO_LIQ"'
    end
    object QryProdutosItensPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PRODUTOS"."PERC_FRETE"'
    end
    object QryProdutosItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object QryProdutosItensVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
    end
    object QryProdutosItensPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object QryProdutosItensFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTOS"."FORNECEDOR"'
    end
    object QryProdutosItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object QryProdutosItensPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object QryProdutosItensCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object QryProdutosItensDT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object QryProdutosItensCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
    end
    object QryProdutosItensVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"EST_PRODUTOS"."QNTDE_EXPOSTA"'
    end
    object QryProdutosItensPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MAXIMA_VENDA"'
    end
    object QryProdutosItensPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"EST_PRODUTOS"."PIS"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"EST_PRODUTOS"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"EST_PRODUTOS"."COM_VENDA_VLR"'
    end
    object QryProdutosItensCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"EST_PRODUTOS"."COM_VENDA_PCT"'
    end
    object QryProdutosItensPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"EST_PRODUTOS"."PARTICIP_LUCRO"'
    end
    object QryProdutosItensNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"EST_PRODUTOS"."NAO_COBR_JUR_ATE"'
    end
    object QryProdutosItensPREVISAO_ENTREGA: TDateTimeField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"EST_PRODUTOS"."PREVISAO_ENTREGA"'
    end
    object QryProdutosItensQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"EST_PRODUTOS"."QNTDE_PEDIDA"'
    end
    object QryProdutosItensATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"EST_PRODUTOS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object QryProdutosItensCUSTO_INDEXADO: TFloatField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"EST_PRODUTOS"."CUSTO_INDEXADO"'
    end
    object QryProdutosItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object QryProdutosItensATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = '"EST_PRODUTOS"."ATUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
    end
    object QryProdutosItensEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
    end
    object QryProdutosItensMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"EST_PRODUTOS"."MODELO"'
    end
    object QryProdutosItensNOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"EST_PRODUTOS"."NOME_MODELO"'
      Size = 80
    end
    object QryProdutosItensSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryProdutosItensDEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"EST_PRODUTOS"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"EST_PRODUTOS"."SECAO"'
    end
    object QryProdutosItensNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"EST_PRODUTOS"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_PRODUTOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensQNTDE_MINIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MINIMA_VENDA"'
    end
    object QryProdutosItensVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"EST_PRODUTOS"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"EST_PRODUTOS"."FATOR_CONVERSAO"'
    end
    object QryProdutosItensSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"EST_PRODUTOS"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object QryProdutosItensQNTDE_PDR_CARGA: TFloatField
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"EST_PRODUTOS"."QNTDE_PDR_CARGA"'
    end
    object QryProdutosItensUND_CARREGAMENTO: TIBStringField
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"EST_PRODUTOS"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object QryProdutosItensTRIB_ALIQ_EST: TFloatField
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_EST"'
    end
    object QryProdutosItensTRIB_ALIQ_INT: TFloatField
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_INT"'
    end
    object QryProdutosItensTRIB_MODALIDADE: TIBStringField
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"EST_PRODUTOS"."TRIB_MODALIDADE"'
      Size = 50
    end
    object QryProdutosItensBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
    object QryProdutosItensCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = '"EST_PRODUTOS"."CODIGO_NCM"'
      Size = 50
    end
    object QryProdutosItensAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS"."APLICACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryProdutosItensIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = '"EST_PRODUTOS"."IMG_2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryProdutosItensIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = '"EST_PRODUTOS"."IMG_1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryProdutosItensIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = '"EST_PRODUTOS"."IMG_3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryProdutosItensIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = '"EST_PRODUTOS"."IMG_4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryProdutosItensCODIGO_FABRICANTE: TIBStringField
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"EST_PRODUTOS"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object QryProdutosItensCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"EST_PRODUTOS"."COR"'
    end
    object QryProdutosItensMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = '"EST_PRODUTOS"."MATERIAL"'
    end
    object QryProdutosItensTRIB_PIS: TIBStringField
      FieldName = 'TRIB_PIS'
      Origin = '"EST_PRODUTOS"."TRIB_PIS"'
      FixedChar = True
      Size = 2
    end
    object QryProdutosItensTRIB_COFINS: TIBStringField
      FieldName = 'TRIB_COFINS'
      Origin = '"EST_PRODUTOS"."TRIB_COFINS"'
      FixedChar = True
      Size = 2
    end
    object QryProdutosItensTRIB_IPI: TIBStringField
      FieldName = 'TRIB_IPI'
      Origin = '"EST_PRODUTOS"."TRIB_IPI"'
      FixedChar = True
      Size = 2
    end
    object QryProdutosItensVENCTO_PRC_VENDA: TDateField
      FieldName = 'VENCTO_PRC_VENDA'
      Origin = '"EST_PRODUTOS"."VENCTO_PRC_VENDA"'
    end
    object QryProdutosItensCSOSN: TIntegerField
      FieldName = 'CSOSN'
      Origin = '"EST_PRODUTOS"."CSOSN"'
    end
    object QryProdutosItensCOD_GETIN: TIBStringField
      FieldName = 'COD_GETIN'
      Origin = '"EST_PRODUTOS"."COD_GETIN"'
      Size = 15
    end
    object QryProdutosItensCOD_LOCALIZACAO_1: TIntegerField
      FieldName = 'COD_LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_1"'
    end
    object QryProdutosItensCOD_LOCALIZACAO_2: TIntegerField
      FieldName = 'COD_LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_2"'
    end
    object QryProdutosItensCOD_LOCALIZACAO_3: TIntegerField
      FieldName = 'COD_LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_3"'
    end
    object QryProdutosItensCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"EST_PRODUTOS"."COD_TECNICO"'
    end
  end
  object dsProdutosItens: TDataSource
    DataSet = QryProdutosItens
    Left = 928
    Top = 4
  end
  object dsTecnico: TDataSource
    DataSet = QryTecnico
    Left = 631
    Top = 2
  end
  object dsDefeitoReclamado: TDataSource
    DataSet = QryDefeito
    Left = 663
    Top = 2
  end
  object dsServicoExecutado: TDataSource
    DataSet = QryServicoExecutado
    Left = 695
    Top = 2
  end
  object dsMotivoChamado: TDataSource
    DataSet = QryMotivoChamado
    Left = 727
    Top = 2
  end
  object QryServicoExecutado: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from ofc_tipo_atendimento ta'
      'where ta.cnpj = :cnpj')
    Left = 936
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
  end
  object QryEquipCliente: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsRegistro
    SQL.Strings = (
      
        'select distinct cti.codigo cod_item, prd.codigo||'#39'-'#39'||prd.nome c' +
        'odigo_nome, prd.codigo, substring(prd.nome from 1 for 25) nome, ' +
        ' prd.serie, DT_FIM,'
      'ct.codigo codigo_contrato,cti.ativo ativo2,'
      'case coalesce(cti.ativo,'#39'N'#39')'
      '     when '#39'S'#39' then '#39'Ativo'#39
      '     when '#39'N'#39' then '#39'Inativo'#39
      'end ativo,'
      'cti.informacoes_itens,'
      'mdl.nome modelo,'
      'tp.nome tipo_contrato'
      ''
      'from ofc_contratos_itens cti'
      
        'inner join ofc_contratos ct on (ct.codigo = cti.contrato and ct.' +
        'cnpj = cti.cnpj)'
      
        'inner join est_produtos prd on (prd.cnpj = cti.cnpj and prd.codi' +
        'go = cti.cod_produto)'
      
        'left join glo_tipo_contrato tp on (tp.cnpj = ct.cnpj and tp.codi' +
        'go = ct.COD_CONTRATO)'
      
        'left join glo_modelo_propriedade mdl on (prd.cnpj = mdl.cnpj and' +
        ' prd.modelo = mdl.codigo)'
      
        'where ct.cnpj = :cnpj and ct.ativo = '#39'S'#39' and ct.cod_cliente = :p' +
        'essoa_fj'
      'and ((cti.ativo = :ativo) or (:ativo = '#39'T'#39'))'
      
        'order by  coalesce(cti.ativo,'#39'N'#39'), prd.codigo||'#39'-'#39'||prd.nome des' +
        'c')
    Left = 809
    Top = 131
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object QryEquipClienteCODIGO_NOME: TIBStringField
      FieldName = 'CODIGO_NOME'
      Required = True
      Size = 66
    end
    object QryEquipClienteCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object QryEquipClienteSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryEquipClienteDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object QryEquipClienteCODIGO_CONTRATO: TIntegerField
      FieldName = 'CODIGO_CONTRATO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
    object QryEquipClienteATIVO: TIBStringField
      FieldName = 'ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object QryEquipClienteINFORMACOES_ITENS: TMemoField
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object QryEquipClienteMODELO: TIBStringField
      DisplayWidth = 25
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object QryEquipClienteNOME: TIBStringField
      DisplayWidth = 25
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object QryEquipClienteATIVO2: TIBStringField
      FieldName = 'ATIVO2'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryEquipClienteCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
      Required = True
    end
    object QryEquipClienteTIPO_CONTRATO: TIBStringField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
  end
  object dsEquipamento: TDataSource
    DataSet = QryEquipCliente
    Left = 567
    Top = 2
  end
  object dsStatus: TDataSource
    DataSet = QryStatus
    Left = 599
    Top = 2
  end
  object QryStatus: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsRegistro
    SQL.Strings = (
      'select * from ofc_status s'
      'where s.cnpj = :cnpj')
    Left = 808
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryStatusCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_STATUS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryStatusCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryStatusNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object QryStatusCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object QryStatusFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object QryStatusOS: TIBStringField
      FieldName = 'OS'
      Origin = '"OFC_STATUS"."OS"'
      FixedChar = True
      Size = 1
    end
    object QryStatusMOVIMENTO: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"OFC_STATUS"."MOVIMENTO"'
      FixedChar = True
      Size = 1
    end
    object QryStatusPADRAO_ENVIO: TIBStringField
      FieldName = 'PADRAO_ENVIO'
      Origin = '"OFC_STATUS"."PADRAO_ENVIO"'
      FixedChar = True
      Size = 1
    end
    object QryStatusPADRAO_ABERTURA: TIBStringField
      FieldName = 'PADRAO_ABERTURA'
      Origin = '"OFC_STATUS"."PADRAO_ABERTURA"'
      FixedChar = True
      Size = 1
    end
  end
  object QryTecnico: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 840
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object QryTecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object QryTecnicoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object QryTecnicoASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object QryMotivoChamado: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from ofc_motivo_chamado mc'
      'where mc.cnpj = :cnpj'
      'and coalesce(mc.ativo,'#39'N'#39') = '#39'S'#39
      'order by mc.nome')
    Left = 904
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryMotivoChamadoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTIVO_CHAMADO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryMotivoChamadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
      Required = True
    end
    object QryMotivoChamadoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object QryMotivoChamadoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTIVO_CHAMADO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object QryDefeito: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, ATIVO'
      'from OFC_DEFEITO'
      'Where CNPJ = :CNPJ '
      'and coalesce(ATIVO,'#39'N'#39') = '#39'S'#39
      'Order by NOME')
    Left = 872
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryDefeitoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_DEFEITO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryDefeitoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
      Required = True
    end
    object QryDefeitoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Required = True
      Size = 50
    end
    object QryDefeitoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_DEFEITO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object QryClientes: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, reg.tecnico, psa.email, (coal' +
        'esce(cdd.nome,'#39#39')||'#39' ('#39'||coalesce(psa.uf,'#39#39')||'#39')'#39') cidade'
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_regioes reg on (reg.cnpj = psa.cnpj and reg.codigo' +
        ' = psa.regiao)'
      'where psa.cnpj = :cnpj'
      'order by  psa.nome_razao')
    Left = 844
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object QryClientesNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object QryClientesTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object QryClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsClientes: TDataSource
    DataSet = QryClientes
    Left = 535
    Top = 2
  end
  object QryClienteFiltro: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, reg.tecnico, psa.email, (coal' +
        'esce(cdd.nome,'#39#39')||'#39' ('#39'||coalesce(psa.uf,'#39#39')||'#39')'#39') cidade'
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_regioes reg on (reg.cnpj = psa.cnpj and reg.codigo' +
        ' = psa.regiao)'
      'where psa.cnpj = :cnpj'
      'order by  psa.nome_razao')
    Left = 876
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object IBStringField2: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object IBStringField3: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsClienteFiltro: TDataSource
    DataSet = qryFiltroCliente
    Left = 759
    Top = 2
  end
  object qryFiltroCliente: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, reg.tecnico, psa.email, (coal' +
        'esce(cdd.nome,'#39#39')||'#39' ('#39'||coalesce(psa.uf,'#39#39')||'#39')'#39') cidade'
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_regioes reg on (reg.cnpj = psa.cnpj and reg.codigo' +
        ' = psa.regiao)'
      'where psa.cnpj = :cnpj'
      'order by  psa.nome_razao')
    Left = 908
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryFiltroClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFiltroClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryFiltroClienteTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object qryFiltroClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object qryFiltroClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsVeiculos: TDataSource
    DataSet = QryVeiculos
    Left = 896
    Top = 4
  end
  object QryVeiculos: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT'
      '               PLACA, '
      '               DESCRICAO'
      'FROM CRG_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER by DESCRICAO, PLACA')
    Left = 884
    Top = 170
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryVeiculosPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"CRG_VEICULOS"."PLACA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 8
    end
    object QryVeiculosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CRG_VEICULOS"."DESCRICAO"'
      Size = 50
    end
  end
  object Timer: TTimer
    Interval = 120000
    OnTimer = TimerTimer
    Left = 977
    Top = 34
  end
  object TimerRetroceder: TTimer
    Enabled = False
    OnTimer = TimerRetrocederTimer
    Left = 980
    Top = 67
  end
  object QryMovimentoStatus: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsRegistro
    SQL.Strings = (
      'select * from ofc_status s'
      'where s.cnpj = :cnpj and s.MOVIMENTO = '#39'S'#39)
    Left = 944
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object IBStringField4: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_STATUS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField3: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField5: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object IBStringField6: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField7: TIBStringField
      FieldName = 'OS'
      Origin = '"OFC_STATUS"."OS"'
      FixedChar = True
      Size = 1
    end
    object IBStringField8: TIBStringField
      FieldName = 'MOVIMENTO'
      Origin = '"OFC_STATUS"."MOVIMENTO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField9: TIBStringField
      FieldName = 'PADRAO_ENVIO'
      Origin = '"OFC_STATUS"."PADRAO_ENVIO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField10: TIBStringField
      FieldName = 'PADRAO_ABERTURA'
      Origin = '"OFC_STATUS"."PADRAO_ABERTURA"'
      FixedChar = True
      Size = 1
    end
  end
  object DsMovimentoStatus: TDataSource
    DataSet = QryMovimentoStatus
    Left = 791
    Top = 2
  end
  object DsTipoMovimento: TDataSource
    DataSet = QryTipoMovimento
    Left = 823
    Top = 4
  end
  object QryTipoMovimento: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from ofc_tipo_movto'
      'where cnpj = :cnpj')
    Left = 809
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IBStringField11: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_TIPO_MOVTO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_TIPO_MOVTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_TIPO_MOVTO"."NOME"'
      Size = 50
    end
  end
  object DsContato: TDataSource
    DataSet = QryContato
    Left = 863
    Top = 4
  end
  object QryContato: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select  glo_pessoas_fj.nome_razao as contato_nome,'
      '        glo_contatos.observacao,'
      '        glo_contatos.idcliente_relacionado,'
      '        glo_tipo_contato.nome as tipocontato,'
      '        glo_contatos.CNPJ,'
      '        glo_contatos.IDCLIENTE as ID_Cliente,'
      '        glo_contatos.IDCLIENTE,'
      '        glo_contatos.tipo_contato,'
      '        glo_contatos.celular,'
      '        glo_contatos.residencial,'
      '        glo_contatos.Codigo'
      'from    glo_contatos'
      
        'left join glo_pessoas_fj on (glo_contatos.idcliente_relacionado ' +
        '= GLO_PESSOAS_FJ.codigo'
      'AND glo_pessoas_fj.cnpj = glo_contatos.cnpj)'
      
        'left join glo_TIPO_contato on (glo_contatos.tipo_contato = glo_t' +
        'ipo_contato.CODIGO'
      'and glo_tipo_contato.cnpj = glo_contatos.cnpj)'
      
        'where(glo_contatos.idcliente = :ID_CLIENTE and glo_contatos.CNPJ' +
        ' = :CNPJ)'
      'order by contato_nome')
    Left = 849
    Top = 164
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ID_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryContatoCONTATO_NOME: TIBStringField
      FieldName = 'CONTATO_NOME'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryContatoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"GLO_CONTATOS"."OBSERVACAO"'
      Size = 80
    end
    object QryContatoIDCLIENTE_RELACIONADO: TIntegerField
      FieldName = 'IDCLIENTE_RELACIONADO'
      Origin = '"GLO_CONTATOS"."IDCLIENTE_RELACIONADO"'
    end
    object QryContatoTIPOCONTATO: TIBStringField
      FieldName = 'TIPOCONTATO'
      Origin = '"GLO_TIPO_CONTATO"."NOME"'
      Size = 50
    end
    object QryContatoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryContatoID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_CONTATOS"."IDCLIENTE"'
    end
    object QryContatoIDCLIENTE: TIntegerField
      FieldName = 'IDCLIENTE'
      Origin = '"GLO_CONTATOS"."IDCLIENTE"'
    end
    object QryContatoTIPO_CONTATO: TIntegerField
      FieldName = 'TIPO_CONTATO'
      Origin = '"GLO_CONTATOS"."TIPO_CONTATO"'
    end
    object QryContatoCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_CONTATOS"."CELULAR"'
    end
    object QryContatoRESIDENCIAL: TIBStringField
      FieldName = 'RESIDENCIAL'
      Origin = '"GLO_CONTATOS"."RESIDENCIAL"'
    end
    object QryContatoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CONTATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object QryMovimentoTecnico: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 920
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IntegerField5: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object IBStringField12: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object IBStringField13: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object MemoField1: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object DsMovimentoTecnico: TDataSource
    DataSet = QryMovimentoTecnico
    Left = 967
    Top = 2
  end
end
