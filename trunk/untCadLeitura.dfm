inherited frmCadLeituras: TfrmCadLeituras
  Left = 0
  Top = 0
  Width = 1280
  Height = 728
  Caption = 'Leituras de C'#243'pia'
  OldCreateOrder = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1264
    Height = 664
    ActivePage = tbsLista
    ClientRectBottom = 660
    ClientRectRight = 1260
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Top = 101
        Width = 1256
        Height = 532
        inherited TVRegistro: TcxGridDBBandedTableView
          OptionsView.BandHeaders = True
          Bands = <
            item
              Caption = 'Leitura'
              Width = 1208
            end
            item
              Caption = 'Dados Cliente'
            end
            item
              Caption = 'Dados Contrato'
            end>
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroDESC_ACRESC_CP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESC_ACRESC_CP'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_TOTAL_COPIAS_EXCENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_TOTAL_COPIAS_EXCENTE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroVENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VENDA'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroLT_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroLT_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroLT_DATA_REFERENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_DATA_REFERENCIA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroLT_DATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_DATA'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroLT_FECHADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_FECHADA'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroLT_GERA_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_GERA_FATURAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroLT_TOTAL_COPIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_TOTAL_COPIAS'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroLT_COPIAS_EXCESSO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_COPIAS_EXCESSO'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroLT_VALOR_LEITURA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_VALOR_LEITURA'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroLT_CTR_VALOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_CTR_VALOR'
            Position.BandIndex = 2
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroLT_CTR_FRANQUIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_CTR_FRANQUIA'
            Position.BandIndex = 2
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroLT_CTR_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LT_CTR_VALOR_COPIA_EXCEDENTE'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroCLI_CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_CODIGO'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroCLI_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_NOME'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroCLI_FONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_FONE'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCLI_CONTATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLI_CONTATO'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCDD_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CDD_NOME'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroREG_NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REG_NOME'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroTIPO_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroCT_NUM_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_NUM_CONTRATO'
            Position.BandIndex = 2
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCT_DT_INICIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_DT_INICIO'
            Position.BandIndex = 2
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCT_DT_FIM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_DT_FIM'
            Position.BandIndex = 2
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroCT_FRANQUIA_COPIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_FRANQUIA_COPIAS'
            Position.BandIndex = 2
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroCT_GERA_LEITURA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_GERA_LEITURA'
            Position.BandIndex = 2
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroCT_VALOR_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_VALOR_CONTRATO'
            Position.BandIndex = 2
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroCT_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_VALOR_COPIA_EXCEDENTE'
            Position.BandIndex = 2
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroCT_ATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CT_ATIVO'
            Position.BandIndex = 2
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroDIA_BASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIA_BASE'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object TVRegistroINFORMACOES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INFORMACOES'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 1256
        Height = 101
        object btnFiltroCliente: TcxButton
          Left = 571
          Top = 15
          Width = 23
          Height = 22
          TabOrder = 0
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
        object bTfrmCadClientes: TcxDBLookupComboBox
          Left = 217
          Top = 16
          DataBinding.DataField = 'COD_CLIENTE'
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
          TabOrder = 1
          Width = 355
        end
        object edtFinal: TcxDBDateEdit
          Left = 112
          Top = 16
          DataBinding.DataField = 'DT_FIM'
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
        object edtInicial: TcxDBDateEdit
          Left = 8
          Top = 16
          DataBinding.DataField = 'DT_INI'
          DataBinding.DataSource = dsFiltro
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 100
        end
        object cxLabel33: TcxLabel
          Left = 8
          Top = 0
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
        object cxLabel34: TcxLabel
          Left = 112
          Top = 0
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
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 9
          Top = 39
          Caption = 'Tipo Status'
          DataBinding.DataField = 'STATUS'
          DataBinding.DataSource = dsFiltro
          Properties.Columns = 4
          Properties.DefaultValue = 0
          Properties.Items = <
            item
              Caption = 'Abertas'
              Value = '0'
            end
            item
              Caption = 'Fechadas'
              Value = '1'
            end
            item
              Caption = 'Fat. Gerado'
              Value = '2'
            end
            item
              Caption = 'Todas'
              Value = '3'
            end>
          TabOrder = 6
          Height = 55
          Width = 344
        end
        object cxGroupBox1: TcxGroupBox
          Left = 1010
          Top = 2
          Anchors = [akTop, akRight]
          Caption = 'Legendas'
          TabOrder = 7
          Height = 94
          Width = 248
          object cxTextEdit1: TcxTextEdit
            Left = 8
            Top = 24
            TabStop = False
            Properties.ReadOnly = True
            Style.Color = 10675896
            TabOrder = 0
            Text = 'Abertas'
            Width = 113
          end
          object cxTextEdit2: TcxTextEdit
            Left = 128
            Top = 24
            TabStop = False
            Properties.ReadOnly = True
            Style.Color = 15510916
            TabOrder = 1
            Text = 'Fat. Gerado'
            Width = 113
          end
          object cxTextEdit3: TcxTextEdit
            Left = 8
            Top = 56
            TabStop = False
            Properties.ReadOnly = True
            Style.Color = 4714488
            TabOrder = 2
            Text = 'Fechadas'
            Width = 113
          end
        end
        object cxLabel10: TcxLabel
          Left = 218
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
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 1256
        Height = 633
        inherited pnlSubCad: TPanel
          Top = 208
          Width = 1254
          Height = 424
          inherited PgcDetalhe: TcxPageControl
            Width = 1254
            Height = 424
            ActivePage = tbsDetalhe1
            ClientRectBottom = 420
            ClientRectRight = 1250
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Itens '
              inherited PGCSub1: TcxPageControl
                Width = 1122
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1118
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 1114
                    Height = 362
                    inherited TVDet1: TcxGridDBBandedTableView
                      OptionsView.BandHeaders = True
                      Bands = <
                        item
                          Caption = 'Dados Leitura'
                          Width = 760
                        end
                        item
                          Caption = 'Dados Cliente - Equipamento Instalado'
                          Width = 2234
                        end>
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Width = 47
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'LEITURA'
                        Visible = False
                        Width = 106
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_ITEM_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_ITEM_CONTRATO'
                        Visible = False
                        Width = 113
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1ULTIMA_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ULTIMA_LEITURA'
                        Width = 70
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet1LEITURA_ATUAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'LEITURA_ATUAL'
                        Width = 65
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet1SALDO_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SALDO_LEITURA'
                        Width = 45
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_CLIENTE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_CLIENTE'
                        Visible = False
                        Width = 143
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet1TESTE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TESTE'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVDet1HISTORICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'HISTORICO'
                        Visible = False
                        Position.BandIndex = -1
                        Position.ColIndex = -1
                        Position.RowIndex = -1
                      end
                      object TVDet1ULTIMA_LEITURA_COR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ULTIMA_LEITURA_COR'
                        Visible = False
                        Width = 126
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVDet1LEITURA_ATUAL_COR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'LEITURA_ATUAL_COR'
                        Visible = False
                        Width = 138
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVDet1SALDO_LEITURA_COR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SALDO_LEITURA_COR'
                        Visible = False
                        Width = 122
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                      object TVDet1ULT_LEITURA_DIG: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ULT_LEITURA_DIG'
                        Visible = False
                        Width = 103
                        Position.BandIndex = 0
                        Position.ColIndex = 16
                        Position.RowIndex = 0
                      end
                      object TVDet1LEITURA_ATUAL_DIG: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'LEITURA_ATUAL_DIG'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 17
                        Position.RowIndex = 0
                      end
                      object TVDet1CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTRATO'
                        Width = 105
                        Position.BandIndex = 1
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet1SALDO_LEITURA_DIG: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SALDO_LEITURA_DIG'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 18
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_PRODUTO'
                        Width = 154
                        Position.BandIndex = 1
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet1SERIE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SERIE'
                        Width = 67
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1MARCA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MARCA'
                        Visible = False
                        Width = 50
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_PRODUTO'
                        Width = 211
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME_CLIENTE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_CLIENTE'
                        Width = 208
                        Position.BandIndex = 1
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1CIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CIDADE'
                        Width = 201
                        Position.BandIndex = 1
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1LOGRADOURO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'LOGRADOURO'
                        Width = 169
                        Position.BandIndex = 1
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1FONE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'FONE'
                        Width = 75
                        Position.BandIndex = 1
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1FAX: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'FAX'
                        Width = 203
                        Position.BandIndex = 1
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1CELULAR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CELULAR'
                        Width = 85
                        Position.BandIndex = 1
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1FAX1: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'FAX1'
                        Width = 204
                        Position.BandIndex = 1
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1CELULAR1: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CELULAR1'
                        Width = 206
                        Position.BandIndex = 1
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1EMAIL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'EMAIL'
                        Width = 256
                        Position.BandIndex = 1
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet1MODELO_EQUIPAMENTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MODELO_EQUIPAMENTO'
                        Width = 182
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1INFORMACOES_ITENS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'INFORMACOES_ITENS'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 19
                        Position.RowIndex = 0
                      end
                      object TVDet1BAIRRO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'BAIRRO'
                        Width = 275
                        Position.BandIndex = 1
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet1DADOS_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DADOS_CONTRATO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 20
                        Position.RowIndex = 0
                      end
                      object TVDet1CONTAGEM_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTAGEM_LEITURA'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 21
                        Position.RowIndex = 0
                      end
                      object TVDet1TOTAL_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TOTAL_LEITURA'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 22
                        Position.RowIndex = 0
                      end
                      object TVDet1CTR_VALOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CTR_VALOR'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 23
                        Position.RowIndex = 0
                      end
                      object TVDet1CTR_FRANQUIA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CTR_FRANQUIA'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 24
                        Position.RowIndex = 0
                      end
                      object TVDet1CTR_VALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CTR_VALOR_COPIA_EXCEDENTE'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 25
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  Tag = 1
                  inherited edtCodDet1: TcxDBTextEdit
                    TabStop = True
                    DataBinding.DataField = 'CODIGO'
                    Properties.ReadOnly = False
                    Style.Color = clBtnShadow
                    TabOrder = 2
                  end
                  object cxDBTextEdit7: TcxDBTextEdit
                    Left = 74
                    Top = 24
                    DataBinding.DataField = 'ULTIMA_LEITURA'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.ReadOnly = False
                    Style.Color = clBtnShadow
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    StyleHot.Color = clGrayText
                    TabOrder = 4
                    Width = 71
                  end
                  object EdtLeituraAtual: TcxDBTextEdit
                    Tag = 1
                    Left = 146
                    Top = 24
                    TabStop = False
                    DataBinding.DataField = 'LEITURA_ATUAL'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.ReadOnly = False
                    Style.Color = clInactiveBorder
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 0
                    Width = 75
                  end
                  object Label10: TcxLabel
                    Left = 74
                    Top = 8
                    Caption = 'Ult. Leitura'
                    ParentFont = False
                    Transparent = True
                  end
                  object Label17: TcxLabel
                    Left = 222
                    Top = 8
                    Caption = 'Hist'#243'rico'
                    ParentFont = False
                    Transparent = True
                  end
                  object Label9: TcxLabel
                    Left = 146
                    Top = 8
                    Caption = 'Leitura Atual'
                    ParentFont = False
                    Transparent = True
                  end
                  object cxDBTextEdit9: TcxDBTextEdit
                    Left = 222
                    Top = 24
                    TabStop = False
                    DataBinding.DataField = 'HISTORICO'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.ReadOnly = False
                    Style.Color = clInactiveBorder
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 1
                    Width = 539
                  end
                end
              end
              object cxDBMemo1: TcxDBMemo
                Left = 1122
                Top = 0
                Align = alRight
                DataBinding.DataField = 'INFORMACOES_ITENS'
                DataBinding.DataSource = dsPesquisaDet1
                Properties.CharCase = ecUpperCase
                TabOrder = 1
                Height = 393
                Width = 124
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              TabVisible = False
              inherited PGCSub2: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              TabVisible = False
              inherited PGCSub3: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              TabVisible = False
              inherited PGCSub4: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
              inherited PGCSub5: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
              inherited PGCSub6: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
              inherited PGCSub7: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
              inherited PGCSub8: TcxPageControl
                Width = 1246
                Height = 393
                ClientRectBottom = 389
                ClientRectRight = 1242
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 1254
          Height = 207
          inherited PgcMaster: TcxPageControl
            Width = 1254
            Height = 207
            ClientRectBottom = 203
            ClientRectRight = 1250
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Leitura'
              inherited cxLabel1: TcxLabel
                Top = 8
              end
              inherited edtCodigo: TcxDBTextEdit
                Top = 24
                DataBinding.DataField = 'CODIGO'
                TabOrder = 2
              end
              object aTfrmCadContratoCopias: TcxDBLookupComboBox
                Tag = 1
                Left = 74
                Top = 24
                DataBinding.DataField = 'CONTRATO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'CONTRATO'
                  end>
                Properties.ListSource = dsContratoLeitura
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 0
                Width = 527
              end
              object cxLabel11: TcxLabel
                Left = 75
                Top = 8
                Caption = 'Contrato'
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
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 635
                Top = 24
                DataBinding.DataField = 'DATA_REFERENCIA'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 4
                Width = 123
              end
              object cxLabel12: TcxLabel
                Left = 635
                Top = 8
                Caption = 'Dt. Refer'#234'ncia'
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
              object edSolicitante: TcxDBTextEdit
                Left = 8
                Top = 64
                DataBinding.DataField = 'PERIODO'
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
                TabOrder = 6
                Width = 750
              end
              object cxLabel16: TcxLabel
                Left = 8
                Top = 48
                Caption = 'Per'#237'odo'
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
              object cxDBMemo2: TcxDBMemo
                Left = 765
                Top = 24
                DataBinding.DataField = 'OBSERVACAO'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                TabOrder = 8
                Height = 145
                Width = 380
              end
              object cxLabel13: TcxLabel
                Left = 765
                Top = 8
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
              object cxGroupBox2: TcxGroupBox
                Left = 8
                Top = 93
                TabStop = True
                Caption = 'Dados Contrato'
                Enabled = False
                TabOrder = 10
                Height = 73
                Width = 307
                object Label8: TcxLabel
                  Left = 185
                  Top = 16
                  Caption = 'C'#243'pia Excedente (R$)'
                  ParentFont = False
                  Transparent = True
                end
                object Label6: TcxLabel
                  Left = 78
                  Top = 16
                  Caption = 'Franquia de C'#243'pias'
                  ParentFont = False
                  Transparent = True
                end
                object Label1: TcxLabel
                  Left = 8
                  Top = 16
                  Caption = 'Valor (R$)'
                  ParentFont = False
                  Transparent = True
                end
                object EdtContadorTotal: TcxDBTextEdit
                  Left = 8
                  Top = 34
                  DataBinding.DataField = 'CTR_VALOR'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 3
                  Width = 67
                end
                object cxDBTextEdit1: TcxDBTextEdit
                  Left = 78
                  Top = 34
                  DataBinding.DataField = 'CTR_FRANQUIA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 4
                  Width = 105
                end
                object cxDBTextEdit2: TcxDBTextEdit
                  Left = 185
                  Top = 34
                  DataBinding.DataField = 'CTR_VALOR_COPIA_EXCEDENTE'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 5
                  Width = 112
                end
              end
              object cxGroupBox3: TcxGroupBox
                Left = 320
                Top = 94
                TabStop = True
                Caption = 'Leitura'
                TabOrder = 11
                Height = 73
                Width = 438
                object cxDBTextEdit3: TcxDBTextEdit
                  Left = 8
                  Top = 32
                  TabStop = False
                  DataBinding.DataField = 'TOTAL_COPIAS'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 81
                end
                object cxDBTextEdit4: TcxDBTextEdit
                  Left = 91
                  Top = 32
                  TabStop = False
                  DataBinding.DataField = 'COPIAS_EXCESSO'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 75
                end
                object cxDBTextEdit5: TcxDBTextEdit
                  Left = 276
                  Top = 32
                  TabStop = False
                  DataBinding.DataField = 'VALOR_TOTAL_COPIAS_EXCENTE'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 2
                  Width = 72
                end
                object Label5: TcxLabel
                  Left = 350
                  Top = 16
                  Caption = 'Valor Total (R$)'
                  ParentFont = False
                  Transparent = True
                end
                object Label13: TcxLabel
                  Left = 276
                  Top = 16
                  Caption = 'Vlr. Total Exc.'
                  ParentFont = False
                  Transparent = True
                end
                object Label7: TcxLabel
                  Left = 168
                  Top = 16
                  Caption = 'D/Ac. Copias'
                  ParentFont = False
                  Transparent = True
                end
                object Label14: TcxLabel
                  Left = 90
                  Top = 16
                  Caption = 'Cp. Excesso'
                  ParentFont = False
                  Transparent = True
                end
                object Label3: TcxLabel
                  Left = 8
                  Top = 16
                  Caption = 'Total de C'#243'pias '
                  ParentFont = False
                  Transparent = True
                end
                object cxDBTextEdit6: TcxDBTextEdit
                  Left = 350
                  Top = 32
                  TabStop = False
                  DataBinding.DataField = 'VALOR_LEITURA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Color = clInactiveBorder
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 8
                  Width = 80
                end
                object cxDBCalcEdit2: TcxDBCalcEdit
                  Left = 168
                  Top = 32
                  DataBinding.DataField = 'DESC_ACRESC_CP'
                  DataBinding.DataSource = dsRegistro
                  TabOrder = 9
                  Width = 106
                end
              end
              object BtnContratoCopias: TcxButton
                Left = 600
                Top = 24
                Width = 25
                Height = 20
                Cursor = crHandPoint
                TabOrder = 12
                TabStop = False
                OnClick = BtnContratoCopiasClick
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
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    OnNewRecord = dtEditNewRecord
    DeleteSQL.Strings = (
      'delete from ofc_leituras'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_leituras'
      
        '  (CNPJ, CODIGO, CONTRATO, COPIAS_EXCESSO, CTR_FRANQUIA, CTR_VAL' +
        'OR, CTR_VALOR_COPIA_EXCEDENTE, '
      
        '   DATA, DATA_REFERENCIA, DESC_ACRESC_CP, FECHADA, GERA_FATURAME' +
        'NTO, OBSERVACAO, '
      
        '   PERIODO, TOTAL_COPIAS, VALOR_LEITURA, VALOR_TOTAL_COPIAS_EXCE' +
        'NTE, VENDA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :CONTRATO, :COPIAS_EXCESSO, :CTR_FRANQUIA, :C' +
        'TR_VALOR, '
      
        '   :CTR_VALOR_COPIA_EXCEDENTE, :DATA, :DATA_REFERENCIA, :DESC_AC' +
        'RESC_CP, '
      
        '   :FECHADA, :GERA_FATURAMENTO, :OBSERVACAO, :PERIODO, :TOTAL_CO' +
        'PIAS, :VALOR_LEITURA, '
      '   :VALOR_TOTAL_COPIAS_EXCENTE, :VENDA)')
    RefreshSQL.Strings = (
      'Select * '
      'from ofc_leituras '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ofc_leituras l'
      'where l.cnpj = :cnpj and l.codigo = :LT_CODIGO')
    ModifySQL.Strings = (
      'update ofc_leituras'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTRATO = :CONTRATO,'
      '  COPIAS_EXCESSO = :COPIAS_EXCESSO,'
      '  CTR_FRANQUIA = :CTR_FRANQUIA,'
      '  CTR_VALOR = :CTR_VALOR,'
      '  CTR_VALOR_COPIA_EXCEDENTE = :CTR_VALOR_COPIA_EXCEDENTE,'
      '  DATA = :DATA,'
      '  DATA_REFERENCIA = :DATA_REFERENCIA,'
      '  DESC_ACRESC_CP = :DESC_ACRESC_CP,'
      '  FECHADA = :FECHADA,'
      '  GERA_FATURAMENTO = :GERA_FATURAMENTO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PERIODO = :PERIODO,'
      '  TOTAL_COPIAS = :TOTAL_COPIAS,'
      '  VALOR_LEITURA = :VALOR_LEITURA,'
      '  VALOR_TOTAL_COPIAS_EXCENTE = :VALOR_TOTAL_COPIAS_EXCENTE,'
      '  VENDA = :VENDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_LEITURAS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_LEITURAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_LEITURAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = '"OFC_LEITURAS"."CONTRATO"'
    end
    object dtEditDATA_REFERENCIA: TDateField
      FieldName = 'DATA_REFERENCIA'
      Origin = '"OFC_LEITURAS"."DATA_REFERENCIA"'
    end
    object dtEditDATA: TDateField
      FieldName = 'DATA'
      Origin = '"OFC_LEITURAS"."DATA"'
    end
    object dtEditFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"OFC_LEITURAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object dtEditGERA_FATURAMENTO: TIBStringField
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_LEITURAS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditTOTAL_COPIAS: TIntegerField
      FieldName = 'TOTAL_COPIAS'
      Origin = '"OFC_LEITURAS"."TOTAL_COPIAS"'
    end
    object dtEditCOPIAS_EXCESSO: TIntegerField
      FieldName = 'COPIAS_EXCESSO'
      Origin = '"OFC_LEITURAS"."COPIAS_EXCESSO"'
    end
    object dtEditVALOR_LEITURA: TFloatField
      FieldName = 'VALOR_LEITURA'
      Origin = '"OFC_LEITURAS"."VALOR_LEITURA"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditCTR_VALOR: TFloatField
      FieldName = 'CTR_VALOR'
      Origin = '"OFC_LEITURAS"."CTR_VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditCTR_FRANQUIA: TIntegerField
      FieldName = 'CTR_FRANQUIA'
      Origin = '"OFC_LEITURAS"."CTR_FRANQUIA"'
    end
    object dtEditCTR_VALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'CTR_VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_LEITURAS"."CTR_VALOR_COPIA_EXCEDENTE"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"OFC_LEITURAS"."VENDA"'
    end
    object dtEditDESC_ACRESC_CP: TIntegerField
      FieldName = 'DESC_ACRESC_CP'
      Origin = '"OFC_LEITURAS"."DESC_ACRESC_CP"'
      OnValidate = dtEditDESC_ACRESC_CPValidate
    end
    object dtEditVALOR_TOTAL_COPIAS_EXCENTE: TFloatField
      FieldName = 'VALOR_TOTAL_COPIAS_EXCENTE'
      Origin = '"OFC_LEITURAS"."VALOR_TOTAL_COPIAS_EXCENTE"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_LEITURAS"."OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditPERIODO: TIBStringField
      FieldName = 'PERIODO'
      Origin = '"OFC_LEITURAS"."PERIODO"'
      Size = 100
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      
        'select lt.CNPJ, lt.DESC_ACRESC_CP, lt.VALOR_TOTAL_COPIAS_EXCENTE' +
        ',  lt.venda,'
      '    lt.CODIGO lt_CODIGO,'
      '    lt.CONTRATO lt_CONTRATO,'
      '    lt.DATA_REFERENCIA lt_DATA_REFERENCIA,'
      '    lt.DATA lt_DATA,'
      ''
      '    case lt.FECHADA'
      '    when '#39'S'#39' then '#39'Sim'#39
      '      else '#39'N'#227'o'#39
      '    end lt_FECHADA,'
      ''
      '    case lt.GERA_FATURAMENTO'
      '    when '#39'S'#39' then '#39'Sim'#39
      '      else '#39'N'#227'o'#39
      '    end lt_GERA_FATURAMENTO,'
      '    lt.TOTAL_COPIAS lt_TOTAL_COPIAS,'
      '    lt.COPIAS_EXCESSO lt_COPIAS_EXCESSO,'
      '    lt.VALOR_LEITURA lt_VALOR_LEITURA,'
      '    lt.CTR_VALOR lt_CTR_VALOR,'
      '    lt.CTR_FRANQUIA lt_CTR_FRANQUIA,'
      '    lt.CTR_VALOR_COPIA_EXCEDENTE lt_CTR_VALOR_COPIA_EXCEDENTE,'
      '    cli.codigo cli_codigo,'
      '    cli.nome_razao cli_nome,'
      '    cli.fone cli_fone,'
      '    cli.contato cli_contato,'
      '    cdd.nome cdd_nome,'
      '    reg.nome reg_nome,'
      '    tpc.nome tipo_contrato,'
      '    ct.num_contrato ct_num_contrato,'
      '    ct.dt_inicio ct_dt_inicio,'
      '    ct.dt_fim ct_dt_fim,'
      '    ct.franquia_copias ct_franquia_copias,'
      '    case ct.gera_leitura'
      '      when '#39'S'#39' then '#39'Sim'#39
      '      else '#39'N'#227'o'#39
      '    end ct_gera_leitura,'
      '    ct.valor_contrato ct_valor_contrato,'
      '    ct.valor_copia_excedente ct_valor_copia_excedente,'
      '    case ct.ativo'
      '    when '#39'S'#39' then '#39'Sim'#39
      '      else '#39'N'#227'o'#39
      '    end ct_ativo, ct.dia_base,'
      '    ct.informacoes'
      'from ofc_leituras lt'
      
        'inner join ofc_grp_contratos ct on (ct.codigo = lt.contrato and ' +
        'ct.cnpj = lt.cnpj)'
      
        'inner join glo_pessoas_fj cli on (cli.codigo = ct.cod_cliente an' +
        'd cli.cnpj = ct.cnpj)'
      
        'left join glo_cidades cdd on (cdd.codigo = cli.cidade and cli.cn' +
        'pj = cdd.cnpj)'
      
        'left join glo_tipo_contrato tpc on (tpc.cnpj = ct.cnpj and tpc.c' +
        'odigo = ct.cod_contrato)'
      
        'left join glo_regioes reg on (reg.codigo = cli.regiao and reg.cn' +
        'pj = cli.cnpj)'
      'where lt.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_LEITURAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDESC_ACRESC_CP: TIntegerField
      DisplayLabel = 'Desc./Acr'#233'scim.'
      FieldName = 'DESC_ACRESC_CP'
      Origin = '"OFC_LEITURAS"."DESC_ACRESC_CP"'
    end
    object dtListVALOR_TOTAL_COPIAS_EXCENTE: TFloatField
      DisplayLabel = 'Valor Total C'#243'p. Exced.'
      FieldName = 'VALOR_TOTAL_COPIAS_EXCENTE'
      Origin = '"OFC_LEITURAS"."VALOR_TOTAL_COPIAS_EXCENTE"'
    end
    object dtListVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"OFC_LEITURAS"."VENDA"'
    end
    object dtListLT_CODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'd. Leitura'
      FieldName = 'LT_CODIGO'
      Origin = '"OFC_LEITURAS"."CODIGO"'
      Required = True
    end
    object dtListLT_CONTRATO: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'LT_CONTRATO'
      Origin = '"OFC_LEITURAS"."CONTRATO"'
    end
    object dtListLT_DATA_REFERENCIA: TDateField
      DisplayLabel = 'Dt. Refer'#234'ncia'
      FieldName = 'LT_DATA_REFERENCIA'
      Origin = '"OFC_LEITURAS"."DATA_REFERENCIA"'
    end
    object dtListLT_DATA: TDateField
      DisplayLabel = 'Dt. Leitura'
      FieldName = 'LT_DATA'
      Origin = '"OFC_LEITURAS"."DATA"'
    end
    object dtListLT_FECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'LT_FECHADA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object dtListLT_GERA_FATURAMENTO: TIBStringField
      DisplayLabel = 'Gera Fat.'
      FieldName = 'LT_GERA_FATURAMENTO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object dtListLT_TOTAL_COPIAS: TIntegerField
      DisplayLabel = 'Total C'#243'pia'
      FieldName = 'LT_TOTAL_COPIAS'
      Origin = '"OFC_LEITURAS"."TOTAL_COPIAS"'
    end
    object dtListLT_COPIAS_EXCESSO: TIntegerField
      DisplayLabel = 'C'#243'pias Exc.'
      FieldName = 'LT_COPIAS_EXCESSO'
      Origin = '"OFC_LEITURAS"."COPIAS_EXCESSO"'
    end
    object dtListLT_VALOR_LEITURA: TFloatField
      DisplayLabel = 'Valor Leitura'
      FieldName = 'LT_VALOR_LEITURA'
      Origin = '"OFC_LEITURAS"."VALOR_LEITURA"'
    end
    object dtListLT_CTR_VALOR: TFloatField
      FieldName = 'LT_CTR_VALOR'
      Origin = '"OFC_LEITURAS"."CTR_VALOR"'
    end
    object dtListLT_CTR_FRANQUIA: TIntegerField
      DisplayLabel = 'Franquia Leitura'
      FieldName = 'LT_CTR_FRANQUIA'
      Origin = '"OFC_LEITURAS"."CTR_FRANQUIA"'
    end
    object dtListLT_CTR_VALOR_COPIA_EXCEDENTE: TFloatField
      DisplayLabel = 'Valor C'#243'pia Exced.'
      FieldName = 'LT_CTR_VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_LEITURAS"."CTR_VALOR_COPIA_EXCEDENTE"'
    end
    object dtListCLI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object dtListCLI_NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'CLI_NOME'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListCLI_FONE: TIBStringField
      DisplayLabel = 'Fone Cliente'
      FieldName = 'CLI_FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object dtListCLI_CONTATO: TIBStringField
      DisplayLabel = 'Contato Cliente'
      FieldName = 'CLI_CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object dtListCDD_NOME: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CDD_NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListREG_NOME: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REG_NOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object dtListTIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object dtListCT_NUM_CONTRATO: TIBStringField
      DisplayLabel = 'Num. Contrato'
      FieldName = 'CT_NUM_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtListCT_DT_INICIO: TDateTimeField
      DisplayLabel = 'Dt. Ini. Contrato'
      FieldName = 'CT_DT_INICIO'
      Origin = '"OFC_GRP_CONTRATOS"."DT_INICIO"'
    end
    object dtListCT_DT_FIM: TDateTimeField
      DisplayLabel = 'Dt. Fim Contrato'
      FieldName = 'CT_DT_FIM'
      Origin = '"OFC_GRP_CONTRATOS"."DT_FIM"'
    end
    object dtListCT_FRANQUIA_COPIAS: TIntegerField
      DisplayLabel = 'Franquia C'#243'pias'
      FieldName = 'CT_FRANQUIA_COPIAS'
      Origin = '"OFC_GRP_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object dtListCT_GERA_LEITURA: TIBStringField
      DisplayLabel = 'Gera Leitura'
      FieldName = 'CT_GERA_LEITURA'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object dtListCT_VALOR_CONTRATO: TFloatField
      DisplayLabel = 'Valor Contrato'
      FieldName = 'CT_VALOR_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtListCT_VALOR_COPIA_EXCEDENTE: TFloatField
      DisplayLabel = 'Valor C'#243'pia Excedente'
      FieldName = 'CT_VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object dtListCT_ATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'CT_ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
    object dtListDIA_BASE: TSmallintField
      DisplayLabel = 'Dia Base'
      FieldName = 'DIA_BASE'
      Origin = '"OFC_GRP_CONTRATOS"."DIA_BASE"'
    end
    object dtListINFORMACOES: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_GRP_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
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
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end>
    end
    object dxBarButton1: TdxBarButton [11]
      Action = ActGerarItens
      Category = 0
    end
    object dxBarButton2: TdxBarButton [12]
      Action = ActFecharLeituras
      Category = 0
    end
    object dxBarButton3: TdxBarButton [13]
      Action = ActEstornarLeitura
      Category = 0
    end
  end
  inherited ActionList1: TActionList
    inherited ActInsert: TAction
      Enabled = False
    end
    inherited ActFilter: TAction
      ShortCut = 0
    end
    object ActGerarItens: TAction
      Caption = 'ActGerarItens'
      Hint = 'Gerar Itens'
      ImageIndex = 2
      ShortCut = 119
      OnExecute = ActGerarItensExecute
    end
    object ActFecharLeituras: TAction
      Caption = 'ActFecharLeituras'
      Hint = 'Fechar Leitura'
      ImageIndex = 28
      ShortCut = 120
      OnExecute = ActFecharLeiturasExecute
    end
    object ActEstornarLeitura: TAction
      Caption = 'ActEstornarLeitura'
      Hint = 'Estornar Leitura'
      ImageIndex = 27
      ShortCut = 118
      OnExecute = ActEstornarLeituraExecute
    end
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = TVDet1
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
        Component = TVDet1BAIRRO
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
        Component = TVDet1CELULAR
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
        Component = TVDet1CELULAR1
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
        Component = TVDet1CIDADE
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
        Component = TVDet1CNPJ
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
        Component = TVDet1COD_CLIENTE
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
        Component = TVDet1COD_ITEM_CONTRATO
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
        Component = TVDet1COD_PRODUTO
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
        Component = TVDet1CODIGO
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
        Component = TVDet1CONTAGEM_LEITURA
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
        Component = TVDet1CONTRATO
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
        Component = TVDet1CTR_FRANQUIA
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
        Component = TVDet1CTR_VALOR
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
        Component = TVDet1CTR_VALOR_COPIA_EXCEDENTE
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
        Component = TVDet1DADOS_CONTRATO
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
        Component = TVDet1EMAIL
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
        Component = TVDet1FAX
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
        Component = TVDet1FAX1
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
        Component = TVDet1FONE
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
        Component = TVDet1HISTORICO
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
        Component = TVDet1INFORMACOES_ITENS
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
        Component = TVDet1LEITURA
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
        Component = TVDet1LEITURA_ATUAL
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
        Component = TVDet1LEITURA_ATUAL_COR
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
        Component = TVDet1LEITURA_ATUAL_DIG
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
        Component = TVDet1LOGRADOURO
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
        Component = TVDet1MARCA
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
        Component = TVDet1MODELO_EQUIPAMENTO
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
        Component = TVDet1NOME_CLIENTE
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
        Component = TVDet1NOME_PRODUTO
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
        Component = TVDet1SALDO_LEITURA
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
        Component = TVDet1SALDO_LEITURA_COR
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
        Component = TVDet1SALDO_LEITURA_DIG
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
        Component = TVDet1SERIE
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
        Component = TVDet1TESTE
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
        Component = TVDet1TOTAL_LEITURA
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
        Component = TVDet1ULT_LEITURA_DIG
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
        Component = TVDet1ULTIMA_LEITURA
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
        Component = TVDet1ULTIMA_LEITURA_COR
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
        Component = TVRegistroCDD_NOME
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
        Component = TVRegistroCLI_CONTATO
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
        Component = TVRegistroCLI_FONE
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
        Component = TVRegistroCLI_NOME
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
        Component = TVRegistroCNPJ
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
        Component = TVRegistroCT_ATIVO
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
        Component = TVRegistroCT_DT_FIM
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
        Component = TVRegistroCT_DT_INICIO
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
        Component = TVRegistroCT_FRANQUIA_COPIAS
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
        Component = TVRegistroCT_GERA_LEITURA
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
        Component = TVRegistroCT_NUM_CONTRATO
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
        Component = TVRegistroCT_VALOR_CONTRATO
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
        Component = TVRegistroCT_VALOR_COPIA_EXCEDENTE
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
        Component = TVRegistroDESC_ACRESC_CP
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
        Component = TVRegistroDIA_BASE
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
        Component = TVRegistroLT_CODIGO
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
        Component = TVRegistroLT_CONTRATO
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
        Component = TVRegistroLT_COPIAS_EXCESSO
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
        Component = TVRegistroLT_CTR_FRANQUIA
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
        Component = TVRegistroLT_CTR_VALOR
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
        Component = TVRegistroLT_CTR_VALOR_COPIA_EXCEDENTE
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
        Component = TVRegistroLT_DATA
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
        Component = TVRegistroLT_DATA_REFERENCIA
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
        Component = TVRegistroLT_FECHADA
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
        Component = TVRegistroLT_GERA_FATURAMENTO
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
        Component = TVRegistroLT_TOTAL_COPIAS
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
        Component = TVRegistroLT_VALOR_LEITURA
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
        Component = TVRegistroREG_NOME
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
        Component = TVRegistroTIPO_CONTRATO
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
        Component = TVRegistroVALOR_TOTAL_COPIAS_EXCENTE
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
        Component = TVRegistroVENDA
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
  inherited dtListDet1: TIBQuery
    SQL.Strings = (
      
        'select lti.*, cti.contrato, prd.codigo cod_produto, prd.serie, m' +
        'rc.nome marca, prd.nome nome_produto,'
      'psa.nome_razao nome_cliente,'
      
        'coalesce(cdd.nome,'#39#39')||'#39'-'#39'||coalesce(cdd.uf,'#39#39') cidade, lgd.nome' +
        ' logradouro, psa.fone,PSA.fax, PSA.celular, psa.fax, psa.celular' +
        ', psa.email,'
      
        'pp.nome modelo_equipamento, cti.informacoes_itens, br.nome bairr' +
        'o,'
      
        '('#39'Cliente: '#39'||coalesce(psa2.nome_razao,'#39#39')||'#39'('#39'||coalesce(psa2.c' +
        'pf_cgc,'#39#39')||'
      
        ' '#39' - Valor Contrato (R$): '#39'||cast(coalesce(gp.valor_contrato,0) ' +
        'as numeric(18,2))||'
      
        ' '#39' Franquia de C'#243'pias: '#39'||cast(coalesce(gp.franquia_copias,0) as' +
        ' integer)||'
      
        ' '#39', Vlr. C'#243'pia Excedente (R$): '#39'||cast(coalesce(gp.valor_copia_e' +
        'xcedente,0) as numeric(18,2))) DADOS_CONTRATO,'
      ' ('
      
        ' '#39' Total de C'#243'pias : '#39'||cast(coalesce(LT.TOTAL_COPIAS,0) as Inte' +
        'ger)||'
      
        ' '#39', Cp. Excesso : '#39'||cast(coalesce(LT.copias_excesso,0) as integ' +
        'er)||'
      
        ' '#39', Cr'#233'dito de C'#243'pias : '#39'||cast(coalesce(LT.desc_acresc_cp,0) as' +
        ' integer)||'
      
        ' '#39', Saldo Cp. Excedente: '#39'||cast((coalesce(LT.copias_excesso,0) ' +
        '+ coalesce(LT.desc_acresc_cp,0)) as integer)) CONTAGEM_LEITURA,'
      
        ' ('#39' Vlr. Total Exc. (R$): '#39'||cast(coalesce(LT.valor_total_copias' +
        '_excente,0)as numeric(18,2))||'
      
        ' '#39' Vlr. Total Leitura (R$): '#39'||cast(coalesce(LT.valor_leitura,0)' +
        ' as numeric(18,2))'
      ') TOTAL_LEITURA'
      ' from ofc_leituras_itens lti'
      
        'inner join ofc_contratos_itens cti on (cti.cnpj = lti.cnpj and c' +
        'ti.codigo = lti.cod_item_contrato)'
      
        'inner join ofc_contratos ct on (ct.cnpj = cti.cnpj and ct.codigo' +
        ' = cti.contrato)'
      
        'inner join glo_pessoas_fj psa on (ct.cnpj = psa.cnpj and ct.cod_' +
        'cliente = psa.codigo)'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_logradouros lgd on (psa.cnpj = lgd.cnpj and psa.en' +
        'dereco = lgd.codigo)'
      
        'left join glo_bairros br on (psa.cnpj = br.cnpj and psa.bairro =' +
        ' br.codigo)'
      
        'inner join est_produtos prd on (prd.codigo = cti.cod_produto and' +
        ' prd.cnpj = cti.cnpj)'
      
        'left join est_marcas mrc on (prd.marca = mrc.codigo and prd.cnpj' +
        ' = mrc.cnpj)'
      
        'left join glo_modelo_propriedade pp on (prd.modelo = pp.codigo a' +
        'nd prd.cnpj = pp.cnpj)'
      
        'inner join ofc_leituras lt on (lt.cnpj = lti.cnpj and lt.codigo ' +
        '= lti.leitura)'
      
        'inner join ofc_grp_contratos gp on (lt.cnpj = gp.cnpj and lt.con' +
        'trato = gp.codigo)'
      
        'inner join glo_pessoas_fj psa2 on (gp.cnpj = psa2.cnpj and gp.co' +
        'd_cliente = psa2.codigo)'
      'where lti.cnpj = :cnpj and lti.leitura = :codigo')
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
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_LEITURAS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_LEITURAS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1LEITURA: TIntegerField
      DisplayLabel = 'C'#243'd. Leitura'
      FieldName = 'LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA"'
    end
    object dtListDet1COD_ITEM_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Item Contrato Atd.'
      FieldName = 'COD_ITEM_CONTRATO'
      Origin = '"OFC_LEITURAS_ITENS"."COD_ITEM_CONTRATO"'
    end
    object dtListDet1ULTIMA_LEITURA: TIntegerField
      DisplayLabel = 'Ult. Leitura'
      FieldName = 'ULTIMA_LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."ULTIMA_LEITURA"'
    end
    object dtListDet1LEITURA_ATUAL: TIntegerField
      DisplayLabel = 'Leitura Atual'
      FieldName = 'LEITURA_ATUAL'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL"'
    end
    object dtListDet1SALDO_LEITURA: TIntegerField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO_LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA"'
    end
    object dtListDet1COD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_LEITURAS_ITENS"."COD_CLIENTE"'
    end
    object dtListDet1TESTE: TIBStringField
      FieldName = 'TESTE'
      Origin = '"OFC_LEITURAS_ITENS"."TESTE"'
      Size = 50
    end
    object dtListDet1CTR_VALOR: TFloatField
      FieldName = 'CTR_VALOR'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_VALOR"'
    end
    object dtListDet1CTR_FRANQUIA: TIntegerField
      FieldName = 'CTR_FRANQUIA'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_FRANQUIA"'
    end
    object dtListDet1CTR_VALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'CTR_VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_VALOR_COPIA_EXCEDENTE"'
    end
    object dtListDet1HISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"OFC_LEITURAS_ITENS"."HISTORICO"'
      Size = 100
    end
    object dtListDet1ULTIMA_LEITURA_COR: TIntegerField
      FieldName = 'ULTIMA_LEITURA_COR'
      Origin = '"OFC_LEITURAS_ITENS"."ULTIMA_LEITURA_COR"'
    end
    object dtListDet1LEITURA_ATUAL_COR: TIntegerField
      FieldName = 'LEITURA_ATUAL_COR'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL_COR"'
    end
    object dtListDet1SALDO_LEITURA_COR: TIntegerField
      FieldName = 'SALDO_LEITURA_COR'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA_COR"'
    end
    object dtListDet1ULT_LEITURA_DIG: TIntegerField
      FieldName = 'ULT_LEITURA_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."ULT_LEITURA_DIG"'
    end
    object dtListDet1LEITURA_ATUAL_DIG: TIntegerField
      FieldName = 'LEITURA_ATUAL_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL_DIG"'
    end
    object dtListDet1CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato Atendimento'
      FieldName = 'CONTRATO'
      Origin = '"OFC_CONTRATOS_ITENS"."CONTRATO"'
    end
    object dtListDet1SALDO_LEITURA_DIG: TIntegerField
      FieldName = 'SALDO_LEITURA_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA_DIG"'
    end
    object dtListDet1COD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object dtListDet1SERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object dtListDet1MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object dtListDet1NOME_PRODUTO: TIBStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListDet1NOME_CLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListDet1CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 53
    end
    object dtListDet1LOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object dtListDet1FONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object dtListDet1FAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object dtListDet1CELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object dtListDet1FAX1: TIBStringField
      FieldName = 'FAX1'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object dtListDet1CELULAR1: TIBStringField
      FieldName = 'CELULAR1'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object dtListDet1EMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object dtListDet1MODELO_EQUIPAMENTO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO_EQUIPAMENTO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object dtListDet1INFORMACOES_ITENS: TMemoField
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListDet1BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object dtListDet1DADOS_CONTRATO: TIBStringField
      FieldName = 'DADOS_CONTRATO'
      ProviderFlags = []
      Size = 204
    end
    object dtListDet1CONTAGEM_LEITURA: TIBStringField
      FieldName = 'CONTAGEM_LEITURA'
      ProviderFlags = []
      Size = 124
    end
    object dtListDet1TOTAL_LEITURA: TIBStringField
      FieldName = 'TOTAL_LEITURA'
      ProviderFlags = []
      Size = 93
    end
  end
  inherited dtEditDet1: TIBDataSet
    BeforePost = dtEditDet1BeforePost
    DeleteSQL.Strings = (
      'delete from ofc_leituras_itens'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_leituras_itens'
      
        '  (CNPJ, COD_CLIENTE, COD_ITEM_CONTRATO, CODIGO, CTR_FRANQUIA, C' +
        'TR_VALOR, '
      
        '   CTR_VALOR_COPIA_EXCEDENTE, HISTORICO, LEITURA, LEITURA_ATUAL,' +
        ' LEITURA_ATUAL_COR, '
      
        '   LEITURA_ATUAL_DIG, SALDO_LEITURA, SALDO_LEITURA_COR, SALDO_LE' +
        'ITURA_DIG, '
      '   TESTE, ULT_LEITURA_DIG, ULTIMA_LEITURA, ULTIMA_LEITURA_COR)'
      'values'
      
        '  (:CNPJ, :COD_CLIENTE, :COD_ITEM_CONTRATO, :CODIGO, :CTR_FRANQU' +
        'IA, :CTR_VALOR, '
      
        '   :CTR_VALOR_COPIA_EXCEDENTE, :HISTORICO, :LEITURA, :LEITURA_AT' +
        'UAL, :LEITURA_ATUAL_COR, '
      
        '   :LEITURA_ATUAL_DIG, :SALDO_LEITURA, :SALDO_LEITURA_COR, :SALD' +
        'O_LEITURA_DIG, '
      
        '   :TESTE, :ULT_LEITURA_DIG, :ULTIMA_LEITURA, :ULTIMA_LEITURA_CO' +
        'R)')
    RefreshSQL.Strings = (
      'Select * '
      'from ofc_leituras_itens '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from ofc_leituras_itens li'
      'where li.cnpj = :cnpj and li.codigo = :codigo')
    ModifySQL.Strings = (
      'update ofc_leituras_itens'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_ITEM_CONTRATO = :COD_ITEM_CONTRATO,'
      '  CODIGO = :CODIGO,'
      '  CTR_FRANQUIA = :CTR_FRANQUIA,'
      '  CTR_VALOR = :CTR_VALOR,'
      '  CTR_VALOR_COPIA_EXCEDENTE = :CTR_VALOR_COPIA_EXCEDENTE,'
      '  HISTORICO = :HISTORICO,'
      '  LEITURA = :LEITURA,'
      '  LEITURA_ATUAL = :LEITURA_ATUAL,'
      '  LEITURA_ATUAL_COR = :LEITURA_ATUAL_COR,'
      '  LEITURA_ATUAL_DIG = :LEITURA_ATUAL_DIG,'
      '  SALDO_LEITURA = :SALDO_LEITURA,'
      '  SALDO_LEITURA_COR = :SALDO_LEITURA_COR,'
      '  SALDO_LEITURA_DIG = :SALDO_LEITURA_DIG,'
      '  TESTE = :TESTE,'
      '  ULT_LEITURA_DIG = :ULT_LEITURA_DIG,'
      '  ULTIMA_LEITURA = :ULTIMA_LEITURA,'
      '  ULTIMA_LEITURA_COR = :ULTIMA_LEITURA_COR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_LEITURAS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_LEITURAS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1LEITURA: TIntegerField
      FieldName = 'LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA"'
    end
    object dtEditDet1COD_ITEM_CONTRATO: TIntegerField
      FieldName = 'COD_ITEM_CONTRATO'
      Origin = '"OFC_LEITURAS_ITENS"."COD_ITEM_CONTRATO"'
    end
    object dtEditDet1ULTIMA_LEITURA: TIntegerField
      FieldName = 'ULTIMA_LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."ULTIMA_LEITURA"'
    end
    object dtEditDet1LEITURA_ATUAL: TIntegerField
      FieldName = 'LEITURA_ATUAL'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL"'
    end
    object dtEditDet1SALDO_LEITURA: TIntegerField
      FieldName = 'SALDO_LEITURA'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA"'
    end
    object dtEditDet1COD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_LEITURAS_ITENS"."COD_CLIENTE"'
    end
    object dtEditDet1TESTE: TIBStringField
      FieldName = 'TESTE'
      Origin = '"OFC_LEITURAS_ITENS"."TESTE"'
      Size = 50
    end
    object dtEditDet1CTR_VALOR: TFloatField
      FieldName = 'CTR_VALOR'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_VALOR"'
    end
    object dtEditDet1CTR_FRANQUIA: TIntegerField
      FieldName = 'CTR_FRANQUIA'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_FRANQUIA"'
    end
    object dtEditDet1CTR_VALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'CTR_VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_LEITURAS_ITENS"."CTR_VALOR_COPIA_EXCEDENTE"'
    end
    object dtEditDet1HISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"OFC_LEITURAS_ITENS"."HISTORICO"'
      Size = 100
    end
    object dtEditDet1ULTIMA_LEITURA_COR: TIntegerField
      FieldName = 'ULTIMA_LEITURA_COR'
      Origin = '"OFC_LEITURAS_ITENS"."ULTIMA_LEITURA_COR"'
    end
    object dtEditDet1LEITURA_ATUAL_COR: TIntegerField
      FieldName = 'LEITURA_ATUAL_COR'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL_COR"'
    end
    object dtEditDet1SALDO_LEITURA_COR: TIntegerField
      FieldName = 'SALDO_LEITURA_COR'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA_COR"'
    end
    object dtEditDet1ULT_LEITURA_DIG: TIntegerField
      FieldName = 'ULT_LEITURA_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."ULT_LEITURA_DIG"'
    end
    object dtEditDet1LEITURA_ATUAL_DIG: TIntegerField
      FieldName = 'LEITURA_ATUAL_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."LEITURA_ATUAL_DIG"'
    end
    object dtEditDet1SALDO_LEITURA_DIG: TIntegerField
      FieldName = 'SALDO_LEITURA_DIG'
      Origin = '"OFC_LEITURAS_ITENS"."SALDO_LEITURA_DIG"'
    end
  end
  inherited mtbFiltro: TdxMemData
    Left = 653
    Top = 12
    object mtbFiltroDT_FIM: TDateField
      FieldName = 'DT_FIM'
    end
    object mtbFiltroDT_INI: TDateField
      FieldName = 'DT_INI'
    end
    object mtbFiltroCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
    end
    object mtbFiltroSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  inherited dsFiltro: TDataSource
    Left = 623
    Top = 12
  end
  object dsClienteFiltro: TDataSource
    DataSet = qryFiltroCliente
    Left = 695
    Top = 10
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
    Left = 772
    Top = 18
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
  object QryContratosLeitura: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select gp.codigo, 1 TIPO,'
      
        '('#39'GRP. Contrato: '#39'||gp.codigo||'#39' ('#39'||coalesce(NUM_CONTRATO,'#39#39')||' +
        #39' - '#39'||coalesce(tp.nome,'#39#39')||'#39')  Cli: '#39'||coalesce(COD_CLIENTE,0)' +
        '||'#39'-'#39'||coalesce(psa.nome_razao,'#39#39'))'
      'contrato,'
      'coalesce(gp.franquia_copias,0)'
      
        'franquia_copias, coalesce(gp.valor_contrato,0) valor_contrato, c' +
        'oalesce(gp.valor_copia_excedente,0) valor_copia_excedente'
      'from ofc_grp_contratos gp'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = gp.cod_cliente an' +
        'd psa.cnpj = gp.cnpj)'
      
        'inner join glo_tipo_contrato tp on (tp.codigo = gp.cod_contrato ' +
        'and gp.cnpj = tp.cnpj)'
      'where gp.cnpj = :cnpj  and gp.ativo = '#39'S'#39)
    Left = 812
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryContratosLeituraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryContratosLeituraTIPO: TIntegerField
      FieldName = 'TIPO'
      ProviderFlags = []
    end
    object QryContratosLeituraCONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      ProviderFlags = []
      Size = 181
    end
    object QryContratosLeituraFRANQUIA_COPIAS: TIntegerField
      FieldName = 'FRANQUIA_COPIAS'
      ProviderFlags = []
    end
    object QryContratosLeituraVALOR_CONTRATO: TFloatField
      FieldName = 'VALOR_CONTRATO'
      ProviderFlags = []
    end
    object QryContratosLeituraVALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      ProviderFlags = []
    end
  end
  object dsContratoLeitura: TDataSource
    DataSet = QryContratosLeitura
    Left = 727
    Top = 10
  end
  object SprGerarItens: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_OFC_LEITURA_GERA_ITENS'
    Left = 192
    Top = 232
  end
  object SprEstornaLeitura: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PCD_OFC_EST_LEITURA'
    Left = 232
    Top = 232
  end
  object SprGeraTodasLeituras: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_GERA_LEITURAS_AUT'
    Left = 272
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CONT2'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_REFERENCIA'
        ParamType = ptInput
      end>
  end
end
