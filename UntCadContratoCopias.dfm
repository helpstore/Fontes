inherited frmCadContratoCopias: TfrmCadContratoCopias
  Left = 233
  Top = 133
  Width = 903
  Height = 586
  Caption = 'Contrato de C'#243'pias'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 895
    Height = 533
    ClientRectBottom = 529
    ClientRectRight = 891
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 887
        Height = 437
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroCLIENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLIENTE'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroTIPO_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroNUM_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUM_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroDT_INICIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_INICIO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroDT_FIM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_FIM'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 29
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroINFORMACOES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INFORMACOES'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroFRANQUIA_COPIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FRANQUIA_COPIAS'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_COPIA_EXCEDENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_COPIA_EXCEDENTE'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroDATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DATA'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroGERA_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GERA_FATURAMENTO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroGERA_LEITURA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GERA_LEITURA'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroDIA_BASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIA_BASE'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroGERA_MENSALIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GERA_MENSALIDADE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 887
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 887
        Height = 502
        inherited pnlSubCad: TPanel
          Top = 224
          Width = 885
          inherited PgcDetalhe: TcxPageControl
            Width = 885
            ActivePage = tbsDetalhe1
            ClientRectRight = 881
            inherited tbsDetalhe1: TcxTabSheet
              inherited PGCSub1: TcxPageControl
                Width = 877
                ClientRectRight = 873
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 869
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_GRUPO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_GRUPO'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1DATA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DATA'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1ATIVO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVO'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1PESSOA_FJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PESSOA_FJ'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME_RAZAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_RAZAO'
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1CPF_CGC: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CPF_CGC'
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1CIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CIDADE'
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1CDD_UF: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CDD_UF'
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    DataBinding.DataField = 'CODIGO'
                  end
                  object cxLabel21: TcxLabel
                    Left = 656
                    Top = 8
                    Caption = 'Dt. Cadastro'
                    Transparent = True
                  end
                  object cxDBDateEdit4: TcxDBDateEdit
                    Left = 653
                    Top = 24
                    DataBinding.DataField = 'DATA'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.ReadOnly = True
                    TabOrder = 3
                    Width = 121
                  end
                  object cxDBLookupComboBox1: TcxDBLookupComboBox
                    Left = 77
                    Top = 24
                    DataBinding.DataField = 'PESSOA_FJ'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME_RAZAO'
                      end
                      item
                        FieldName = 'Codigo'
                      end
                      item
                        FieldName = 'CIDADE'
                      end>
                    Properties.ListSource = dsDet1Cliente
                    TabOrder = 4
                    Width = 548
                  end
                  object cxLabel23: TcxLabel
                    Left = 77
                    Top = 8
                    Caption = 'Cliente'
                    Transparent = True
                  end
                  object cxButton2: TcxButton
                    Left = 626
                    Top = 23
                    Width = 23
                    Height = 22
                    Enabled = False
                    TabOrder = 6
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
                  object cxDBCheckBox5: TcxDBCheckBox
                    Left = 778
                    Top = 29
                    Caption = 'Ativo'
                    DataBinding.DataField = 'ATIVO'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 7
                    Transparent = True
                    Width = 49
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              inherited PGCSub2: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              inherited PGCSub3: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              inherited PGCSub4: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              inherited PGCSub5: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              inherited PGCSub6: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              inherited PGCSub7: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              inherited PGCSub8: TcxPageControl
                Width = 877
                ClientRectRight = 873
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 885
          Height = 223
          inherited PgcMaster: TcxPageControl
            Width = 885
            Height = 223
            ClientRectBottom = 219
            ClientRectRight = 881
            inherited tbsMaster1: TcxTabSheet
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'CODIGO'
                TabOrder = 0
              end
              object cxLabel10: TcxLabel
                Left = 423
                Top = 40
                Caption = 'N'#186' Contrato'
                Transparent = True
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 422
                Top = 56
                DataBinding.DataField = 'NUM_CONTRATO'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                Style.Color = clWindow
                TabOrder = 6
                Width = 102
              end
              object cxLabel11: TcxLabel
                Left = 77
                Top = 0
                Caption = 'Cliente'
                Transparent = True
              end
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 653
                Top = 16
                DataBinding.DataField = 'DATA'
                DataBinding.DataSource = dsRegistro
                Properties.ReadOnly = True
                TabOrder = 3
                Width = 121
              end
              object btnDefeitoReclamado: TcxButton
                Left = 626
                Top = 15
                Width = 23
                Height = 22
                Enabled = False
                TabOrder = 2
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
              object cxLabel12: TcxLabel
                Left = 653
                Top = 0
                Caption = 'Dt. Cadastro'
                Transparent = True
              end
              object cxButton1: TcxButton
                Left = 395
                Top = 55
                Width = 23
                Height = 22
                Enabled = False
                TabOrder = 5
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
              object cxLabel13: TcxLabel
                Left = 9
                Top = 40
                Caption = 'Modelo Contrato'
                Transparent = True
              end
              object cxLabel14: TcxLabel
                Left = 528
                Top = 40
                Caption = 'Dt. In'#237'cio'
                Transparent = True
              end
              object cxDBDateEdit2: TcxDBDateEdit
                Left = 528
                Top = 56
                DataBinding.DataField = 'DT_INICIO'
                DataBinding.DataSource = dsRegistro
                TabOrder = 7
                Width = 121
              end
              object cxLabel15: TcxLabel
                Left = 654
                Top = 40
                Caption = 'Dt. T'#233'rmino'
                Transparent = True
              end
              object cxDBDateEdit3: TcxDBDateEdit
                Left = 654
                Top = 56
                DataBinding.DataField = 'DT_FIM'
                DataBinding.DataSource = dsRegistro
                TabOrder = 8
                Width = 121
              end
              object cxDBCalcEdit1: TcxDBCalcEdit
                Left = 8
                Top = 99
                DataBinding.DataField = 'VALOR_CONTRATO'
                DataBinding.DataSource = dsRegistro
                TabOrder = 9
                Width = 121
              end
              object cxLabel16: TcxLabel
                Left = 9
                Top = 83
                Caption = 'Vlr. Mensal (R$)'
                Transparent = True
              end
              object cxLabel17: TcxLabel
                Left = 137
                Top = 83
                Caption = 'Vlr. Cp. Exc.(R$)'
                Transparent = True
              end
              object cxDBCalcEdit2: TcxDBCalcEdit
                Left = 136
                Top = 99
                DataBinding.DataField = 'VALOR_COPIA_EXCEDENTE'
                DataBinding.DataSource = dsRegistro
                TabOrder = 10
                Width = 121
              end
              object CmbCliente: TcxDBLookupComboBox
                Left = 77
                Top = 16
                DataBinding.DataField = 'COD_CLIENTE'
                DataBinding.DataSource = dsRegistro
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_RAZAO'
                  end
                  item
                    FieldName = 'Codigo'
                  end
                  item
                    FieldName = 'CIDADE'
                  end>
                Properties.ListSource = dsCliente
                TabOrder = 1
                Width = 548
              end
              object cxLabel18: TcxLabel
                Left = 264
                Top = 83
                Caption = 'Franquia de C'#243'pias'
                Transparent = True
              end
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 263
                Top = 99
                DataBinding.DataField = 'FRANQUIA_COPIAS'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                Style.Color = clWindow
                TabOrder = 11
                Width = 102
              end
              object cxDBSpinEdit1: TcxDBSpinEdit
                Left = 370
                Top = 99
                DataBinding.DataField = 'DIA_BASE'
                DataBinding.DataSource = dsRegistro
                Properties.MaxValue = 31.000000000000000000
                Properties.MinValue = 1.000000000000000000
                TabOrder = 12
                Width = 55
              end
              object cxLabel19: TcxLabel
                Left = 372
                Top = 83
                Caption = 'Dia Base'
                Transparent = True
              end
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 432
                Top = 104
                Caption = 'Ativo'
                DataBinding.DataField = 'ATIVO'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 13
                Transparent = True
                Width = 49
              end
              object cxDBLookupComboBox2: TcxDBLookupComboBox
                Left = 8
                Top = 56
                DataBinding.DataField = 'COD_CONTRATO'
                DataBinding.DataSource = dsRegistro
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsTipoContrato
                TabOrder = 4
                Width = 385
              end
              object cxDBCheckBox2: TcxDBCheckBox
                Left = 480
                Top = 104
                Caption = 'Gera Leitura'
                DataBinding.DataField = 'GERA_LEITURA'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 14
                Transparent = True
                Width = 81
              end
              object cxDBCheckBox3: TcxDBCheckBox
                Left = 562
                Top = 104
                Caption = 'Gera Faturamento'
                DataBinding.DataField = 'GERA_FATURAMENTO'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 15
                Transparent = True
                Width = 111
              end
              object cxDBCheckBox4: TcxDBCheckBox
                Left = 671
                Top = 104
                Caption = 'Gera Mensalidade'
                DataBinding.DataField = 'GERA_MENSALIDADE'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 16
                Transparent = True
                Width = 111
              end
              object cxDBMemo1: TcxDBMemo
                Left = 8
                Top = 143
                DataBinding.DataField = 'INFORMACOES'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                TabOrder = 17
                Height = 46
                Width = 769
              end
              object cxLabel20: TcxLabel
                Left = 9
                Top = 126
                Caption = 'Informa'#231#245'es'
                Transparent = True
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    OnNewRecord = dtEditNewRecord
    SelectSQL.Strings = (
      'select *'
      'from ofc_grp_contratos grp'
      'where grp.cnpj = :cnpj and grp.codigo = :codigo')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_CONTRATOS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_GRP_CONTRATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_GRP_CONTRATOS"."COD_CLIENTE"'
    end
    object dtEditCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."COD_CONTRATO"'
    end
    object dtEditNUM_CONTRATO: TIBStringField
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtEditDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_GRP_CONTRATOS"."DT_INICIO"'
    end
    object dtEditDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_GRP_CONTRATOS"."DT_FIM"'
    end
    object dtEditATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_GRP_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditINFORMACOES: TMemoField
      FieldName = 'INFORMACOES'
      Origin = '"OFC_GRP_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditVALOR_CONTRATO: TFloatField
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtEditVALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object dtEditDATA: TDateField
      FieldName = 'DATA'
      Origin = '"OFC_GRP_CONTRATOS"."DATA"'
    end
    object dtEditGERA_FATURAMENTO: TIBStringField
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditGERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtEditFRANQUIA_COPIAS: TIntegerField
      FieldName = 'FRANQUIA_COPIAS'
      Origin = '"OFC_GRP_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object dtEditDIA_BASE: TSmallintField
      FieldName = 'DIA_BASE'
      Origin = '"OFC_GRP_CONTRATOS"."DIA_BASE"'
    end
    object dtEditGERA_MENSALIDADE: TIBStringField
      FieldName = 'GERA_MENSALIDADE'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_MENSALIDADE"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select grp.CNPJ,'
      '    grp.CODIGO,'
      '    psa.nome_razao CLIENTE,'
      '    ctr.nome TIPO_CONTRATO,'
      '    grp.NUM_CONTRATO,'
      '    grp.DT_INICIO,'
      '    grp.DT_FIM,'
      '    grp.ATIVO,'
      '    grp.INFORMACOES,'
      '    grp.VALOR_CONTRATO,'
      '    grp.FRANQUIA_COPIAS,'
      '    grp.VALOR_COPIA_EXCEDENTE,'
      '    grp.DATA,'
      '    grp.GERA_FATURAMENTO,'
      '    grp.GERA_LEITURA,'
      '    grp.DIA_BASE,'
      '    grp.GERA_MENSALIDADE'
      'from ofc_grp_contratos grp'
      'inner join glo_pessoas_fj psa on grp.cod_cliente = psa.codigo'
      'left join glo_tipo_contrato ctr on grp.cod_contrato = ctr.codigo'
      'where grp.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListTIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object dtListNUM_CONTRATO: TIBStringField
      DisplayLabel = 'Num Contrato'
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtListDT_INICIO: TDateTimeField
      DisplayLabel = 'Dt Inicio'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_GRP_CONTRATOS"."DT_INICIO"'
    end
    object dtListDT_FIM: TDateTimeField
      DisplayLabel = 'Dt Fim'
      FieldName = 'DT_FIM'
      Origin = '"OFC_GRP_CONTRATOS"."DT_FIM"'
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_GRP_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListINFORMACOES: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_GRP_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListVALOR_CONTRATO: TFloatField
      DisplayLabel = 'Valor Contrato'
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtListFRANQUIA_COPIAS: TIntegerField
      DisplayLabel = 'Franquia C'#243'pias'
      FieldName = 'FRANQUIA_COPIAS'
      Origin = '"OFC_GRP_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object dtListVALOR_COPIA_EXCEDENTE: TFloatField
      DisplayLabel = 'Vl C'#243'pia Excedente'
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_GRP_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object dtListDATA: TDateField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DATA'
      Origin = '"OFC_GRP_CONTRATOS"."DATA"'
    end
    object dtListGERA_FATURAMENTO: TIBStringField
      DisplayLabel = 'Gera Faturamento'
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtListGERA_LEITURA: TIBStringField
      DisplayLabel = 'Gera Leitura'
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtListDIA_BASE: TSmallintField
      DisplayLabel = 'Dia Base'
      FieldName = 'DIA_BASE'
      Origin = '"OFC_GRP_CONTRATOS"."DIA_BASE"'
    end
    object dtListGERA_MENSALIDADE: TIBStringField
      DisplayLabel = 'Gera Mensalidade'
      FieldName = 'GERA_MENSALIDADE'
      Origin = '"OFC_GRP_CONTRATOS"."GERA_MENSALIDADE"'
      FixedChar = True
      Size = 1
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
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = TVRegistroATIVO
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
        Component = TVRegistroCLIENTE
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
        Component = TVRegistroCODIGO
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
        Component = TVRegistroDATA
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
        Component = TVRegistroDT_FIM
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
        Component = TVRegistroDT_INICIO
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
        Component = TVRegistroFRANQUIA_COPIAS
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
        Component = TVRegistroGERA_FATURAMENTO
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
        Component = TVRegistroGERA_LEITURA
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
        Component = TVRegistroGERA_MENSALIDADE
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
        Component = TVRegistroNUM_CONTRATO
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
        Component = TVRegistroVALOR_CONTRATO
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
        Component = TVRegistroVALOR_COPIA_EXCEDENTE
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
      
        'select gpi.*, psa.nome_razao, psa.cpf_cgc, cdd.nome cidade, cdd.' +
        'uf cdd_uf'
      'from ofc_grp_contratos_itens gpi'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = gpi.cnpj and psa.co' +
        'digo = gpi.pessoa_fj)'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and cdd.codigo' +
        ' = psa.cidade)'
      'where gpi.cnpj = :cnpj and gpi.cod_grupo = :codigo')
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
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1COD_GRUPO: TIntegerField
      DisplayLabel = 'Cod. Grupo'
      FieldName = 'COD_GRUPO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."COD_GRUPO"'
    end
    object dtListDet1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."DATA"'
    end
    object dtListDet1ATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListDet1PESSOA_FJ: TIntegerField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."PESSOA_FJ"'
    end
    object dtListDet1NOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListDet1CPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object dtListDet1CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListDet1CDD_UF: TIBStringField
      FieldName = 'CDD_UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  inherited dtEditDet1: TIBDataSet
    SelectSQL.Strings = (
      'select gpi.*'
      'from ofc_grp_contratos_itens gpi'
      'where gpi.codigo = :codigo')
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1COD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."COD_GRUPO"'
    end
    object dtEditDet1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."DATA"'
    end
    object dtEditDet1ATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_GRP_CONTRATOS_ITENS"."PESSOA_FJ"'
    end
  end
  inherited mtbFiltro: TdxMemData
    Left = 181
    Top = 36
  end
  inherited dsFiltro: TDataSource
    Left = 151
    Top = 36
  end
  object QryCliente: TIBQuery
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
      
        'where psa.cnpj = :cnpj and psa.codigo in (select ctr.cod_cliente' +
        '  from ofc_contratos ctr)'
      'order by  psa.nome_razao')
    Left = 553
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryClienteTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object QryClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsCliente: TDataSource
    DataSet = QryCliente
    Left = 583
    Top = 4
  end
  object QryTipoContrato: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from glo_tipo_contrato ct'
      'where ct.cnpj = :cnpj'
      'order by nome')
    Left = 617
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryTipoContratoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_CONTRATO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryTipoContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTipoContratoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
  end
  object dsTipoContrato: TDataSource
    DataSet = QryTipoContrato
    Left = 647
    Top = 4
  end
  object QryDet1Cliente: TIBQuery
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
      
        'where psa.cnpj = :cnpj and psa.codigo in (select ctr.cod_cliente' +
        '  from ofc_contratos ctr)'
      'order by  psa.nome_razao')
    Left = 561
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField1: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
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
  object dsDet1Cliente: TDataSource
    DataSet = QryDet1Cliente
    Left = 591
    Top = 276
  end
end
