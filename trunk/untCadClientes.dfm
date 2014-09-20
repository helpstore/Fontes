inherited frmCadClientes: TfrmCadClientes
  Left = 170
  Top = 75
  Width = 879
  Height = 678
  Caption = 'Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 863
    Height = 614
    ClientRectBottom = 610
    ClientRectRight = 859
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 855
        Height = 566
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroPESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroNOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 68
            Position.RowIndex = 0
          end
          object TVRegistroCPF_CGC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CGC'
            Position.BandIndex = 0
            Position.ColIndex = 69
            Position.RowIndex = 0
          end
          object TVRegistroCOD_FPAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_FPAGTO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroCOMPRADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPRADOR'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroFONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_VEND: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_VEND'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroCOD_VEND: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_VEND'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_FPAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_FPAGTO'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroREQUISICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REQUISICAO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroDIA_PREF_FAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIA_PREF_FAT'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroCLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_TEMPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_TEMPO'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_CREDITO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_CREDITO'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroREFERENCIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFERENCIAS'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroOBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBS'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroBLOQUEADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLOQUEADO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object TVRegistroULT_VENDEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ULT_VENDEDOR'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object TVRegistroFREQUENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FREQUENCIA'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object TVRegistroATIVIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object TVRegistroCEP_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CEP_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object TVRegistroCIDADE_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object TVRegistroCONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object TVRegistroDT_NASC_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_NASC_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object TVRegistroENDERECO_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object TVRegistroENDERECO_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object TVRegistroFONE_LOCAL_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_LOCAL_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object TVRegistroFONE_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object TVRegistroLOCAL_TRAB_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCAL_TRAB_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object TVRegistroLOCAL_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCAL_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object TVRegistroMAE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAE'
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object TVRegistroPAI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PAI'
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object TVRegistroRAMAL_FONE_TRAB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RAMAL_FONE_TRAB'
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object TVRegistroRAMAL_LOCAL_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RAMAL_LOCAL_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object TVRegistroRENDA_MENSAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RENDA_MENSAL'
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object TVRegistroTEMPO_SERV_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TEMPO_SERV_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object TVRegistroTEMPO_SERVICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TEMPO_SERVICO'
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_CLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object TVRegistroCOD_CLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object TVRegistroPRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRAZO'
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object TVRegistroPERIODO_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERIODO_FATURAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object TVRegistroTOLERANCIA_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOLERANCIA_FATURAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object TVRegistroAJUSTE_AUT_FATURAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AJUSTE_AUT_FATURAS'
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object TVRegistroTAXA_JUROS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TAXA_JUROS'
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object TVRegistroMEDIA_COMPRAS_MES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDIA_COMPRAS_MES'
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object TVRegistroNAO_COBR_JUR_ATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAO_COBR_JUR_ATE'
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object TVRegistroASSINA_NOTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ASSINA_NOTA'
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object TVRegistroCONTROLA_PLACA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTROLA_PLACA'
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object TVRegistroCONTROLA_KM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTROLA_KM'
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object TVRegistroADMISSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ADMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object TVRegistroADMISSAO_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ADMISSAO_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object TVRegistroNUMERO_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_RETIRADAS_DIARIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_RETIRADAS_DIARIA'
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_MAXIMO_RETIRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_MAXIMO_RETIRADA'
            Position.BandIndex = 0
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object TVRegistroNUMERO_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
          object TVRegistroCHEQUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHEQUE'
            Position.BandIndex = 0
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object TVRegistroALIQUOTA_DESCONTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALIQUOTA_DESCONTO'
            Position.BandIndex = 0
            Position.ColIndex = 55
            Position.RowIndex = 0
          end
          object TVRegistroOPTANTE_SIMPLES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OPTANTE_SIMPLES'
            Position.BandIndex = 0
            Position.ColIndex = 56
            Position.RowIndex = 0
          end
          object TVRegistroCONS_REV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONS_REV'
            Position.BandIndex = 0
            Position.ColIndex = 57
            Position.RowIndex = 0
          end
          object TVRegistroSENHA_PDV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA_PDV'
            Position.BandIndex = 0
            Position.ColIndex = 58
            Position.RowIndex = 0
          end
          object TVRegistroSUB_TRIBUTARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUB_TRIBUTARIO'
            Position.BandIndex = 0
            Position.ColIndex = 59
            Position.RowIndex = 0
          end
          object TVRegistroRET_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_PIS'
            Position.BandIndex = 0
            Position.ColIndex = 60
            Position.RowIndex = 0
          end
          object TVRegistroRET_INSS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_INSS'
            Position.BandIndex = 0
            Position.ColIndex = 61
            Position.RowIndex = 0
          end
          object TVRegistroRET_IRRF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_IRRF'
            Position.BandIndex = 0
            Position.ColIndex = 62
            Position.RowIndex = 0
          end
          object TVRegistroBAIRRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BAIRRO'
            Position.BandIndex = 0
            Position.ColIndex = 63
            Position.RowIndex = 0
          end
          object TVRegistroNEG_N_VEZES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NEG_N_VEZES'
            Position.BandIndex = 0
            Position.ColIndex = 64
            Position.RowIndex = 0
          end
          object TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPLEMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 65
            Position.RowIndex = 0
          end
          object TVRegistroCATEGORIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CATEGORIA'
            Position.BandIndex = 0
            Position.ColIndex = 66
            Position.RowIndex = 0
          end
          object TVRegistroSINCRONIZA_FILIAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SINCRONIZA_FILIAIS'
            Position.BandIndex = 0
            Position.ColIndex = 67
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 855
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 855
        Height = 583
        inherited pnlSubCad: TPanel
          Top = 347
          Width = 853
          Height = 235
          inherited PgcDetalhe: TcxPageControl
            Width = 853
            Height = 235
            ActivePage = tbsDetalhe1
            ClientRectBottom = 231
            ClientRectRight = 849
            inherited tbsDetalhe1: TcxTabSheet
              inherited PGCSub1: TcxPageControl
                Width = 845
                Height = 204
                ActivePage = tbsListaSub1
                ClientRectBottom = 200
                ClientRectRight = 841
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 837
                    Height = 173
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              inherited PGCSub2: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              inherited PGCSub3: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              inherited PGCSub4: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
                inherited tbsListaSub4: TcxTabSheet
                  inherited GridDet4: TcxGrid
                    Width = 837
                    Height = 173
                  end
                end
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              inherited PGCSub5: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              inherited PGCSub6: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              inherited PGCSub7: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              inherited PGCSub8: TcxPageControl
                Width = 845
                Height = 204
                ClientRectBottom = 200
                ClientRectRight = 841
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 853
          Height = 346
          inherited PgcMaster: TcxPageControl
            Width = 853
            Height = 346
            ClientRectBottom = 342
            ClientRectRight = 849
            inherited tbsMaster1: TcxTabSheet
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'PESSOA_FJ'
              end
              object cbPessoaFJ: TcxDBLookupComboBox
                Tag = 1
                Left = 75
                Top = 24
                DataBinding.DataField = 'PESSOA_FJ'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_RAZAO'
                  end>
                Properties.ListSource = dsPessoa
                TabOrder = 2
                Width = 502
              end
              object cxLabel12: TcxLabel
                Left = 74
                Top = 8
                Caption = 'Pessoa '
                Transparent = True
              end
              object btnPessoa: TcxButtonEdit
                Left = 577
                Top = 24
                Properties.Buttons = <
                  item
                    Caption = 'F4'
                    Default = True
                    Kind = bkText
                  end>
                Properties.ViewStyle = vsButtonsOnly
                TabOrder = 4
                Text = 'btnPessoa'
                Width = 25
              end
              object ckCompartilha: TcxDBCheckBox
                Left = 610
                Top = 28
                Caption = 'Compartilha c/Filiais'
                DataBinding.DataField = 'SINCRONIZA_FILIAIS'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                TabOrder = 5
                Width = 121
              end
              object PCCLIENTE: TcxPageControl
                Left = 0
                Top = 51
                Width = 845
                Height = 264
                ActivePage = dxTabSheet1
                Align = alBottom
                HotTrack = True
                TabOrder = 6
                ClientRectBottom = 260
                ClientRectLeft = 4
                ClientRectRight = 841
                ClientRectTop = 27
                object dxTabSheet1: TcxTabSheet
                  Caption = 'Dados Cliente'
                  object Btnclassificacao: TcxButton
                    Left = 460
                    Top = 25
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 15
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
                  object BtnForma: TcxButton
                    Left = 227
                    Top = 106
                    Width = 22
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 16
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
                  object cxDBTextEdit8: TcxDBTextEdit
                    Left = 4
                    Top = 146
                    DataBinding.DataField = 'COMPRADOR'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 0
                    Width = 220
                  end
                  object cxLabel16: TcxLabel
                    Left = 4
                    Top = 129
                    Caption = 'Contato'
                    Transparent = True
                  end
                  object cxDBMaskEdit11: TcxDBMaskEdit
                    Left = 364
                    Top = 107
                    DataBinding.DataField = 'FONE'
                    DataBinding.DataSource = dsRegistro
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 8
                    Width = 117
                  end
                  object cxLabel29: TcxLabel
                    Left = 364
                    Top = 90
                    Caption = 'Fone'
                    Transparent = True
                  end
                  object cmbVendedor: TcxDBLookupComboBox
                    Left = 4
                    Top = 66
                    DataBinding.DataField = 'COD_VEND'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.Revertable = True
                    TabOrder = 2
                    Width = 262
                  end
                  object cxLabel42: TcxLabel
                    Left = 4
                    Top = 48
                    Caption = 'Vendedor'
                    Transparent = True
                  end
                  object cmbForma: TcxDBLookupComboBox
                    Left = 4
                    Top = 108
                    DataBinding.DataField = 'COD_FPAGTO'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.Revertable = True
                    TabOrder = 5
                    Width = 223
                  end
                  object cxLabel45: TcxLabel
                    Left = 4
                    Top = 91
                    Caption = 'Forma Pagto.'
                    Transparent = True
                  end
                  object cxLabel46: TcxLabel
                    Left = 252
                    Top = 90
                    Caption = 'Dia Fat.'
                    Transparent = True
                  end
                  object cxDBSpinEdit3: TcxDBSpinEdit
                    Left = 252
                    Top = 107
                    DataBinding.DataField = 'DIA_PREF_FAT'
                    DataBinding.DataSource = dsRegistro
                    Properties.MaxValue = 30.000000000000000000
                    TabOrder = 6
                    Width = 53
                  end
                  object cxLabel83: TcxLabel
                    Left = 392
                    Top = 48
                    Caption = 'Lmt. Tempo(dias)'
                    Transparent = True
                  end
                  object cxDBSpinEdit4: TcxDBSpinEdit
                    Left = 394
                    Top = 67
                    DataBinding.DataField = 'LIMITE_TEMPO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 4
                    Width = 88
                  end
                  object cxDBSpinEdit5: TcxDBSpinEdit
                    Left = 305
                    Top = 107
                    DataBinding.DataField = 'PRAZO'
                    DataBinding.DataSource = dsRegistro
                    Properties.MaxValue = 90.000000000000000000
                    TabOrder = 7
                    Width = 57
                  end
                  object cxLabel85: TcxLabel
                    Left = 305
                    Top = 90
                    Caption = 'Prazo'
                    Transparent = True
                  end
                  object cxDBCheckBox11: TcxDBCheckBox
                    Left = 505
                    Top = 24
                    Caption = 'Usa Requisi'#231#227'o ?'
                    DataBinding.DataField = 'REQUISICAO'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 12
                    Width = 121
                  end
                  object cxDBCheckBox12: TcxDBCheckBox
                    Left = 505
                    Top = 71
                    Caption = 'Optante Simples?'
                    DataBinding.DataField = 'OPTANTE_SIMPLES'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 14
                    Width = 121
                  end
                  object cxDBCheckBox13: TcxDBCheckBox
                    Left = 505
                    Top = 48
                    Caption = 'Revenda?'
                    DataBinding.DataField = 'CONS_REV'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Properties.ValueChecked = 'R'
                    Properties.ValueUnchecked = 'C'
                    TabOrder = 13
                    Width = 81
                  end
                  object cxLabel86: TcxLabel
                    Left = 505
                    Top = 138
                    Caption = 'Desativa (Ctrl+ T)'
                    Transparent = True
                  end
                  object cxLabel87: TcxLabel
                    Left = 505
                    Top = 121
                    Caption = 'Ativa       (Ctrl+ A)'
                    Transparent = True
                  end
                  object cxDBRadioGroup1: TcxDBRadioGroup
                    Left = 423
                    Top = 169
                    DataBinding.DataField = 'BLOQUEADO'
                    DataBinding.DataSource = dsRegistro
                    Properties.ClearKey = 16468
                    Properties.DefaultCaption = 'Desativado'
                    Properties.DefaultValue = 'N'
                    Properties.Items = <
                      item
                        Caption = 'Desativado'
                        Value = 'S'
                        Tag = 1
                      end>
                    TabOrder = 11
                    Height = 49
                    Width = 89
                  end
                  object cxDBRadioGroup4: TcxDBRadioGroup
                    Left = 230
                    Top = 169
                    Caption = 'Avalia'#231#227'o'
                    DataBinding.DataField = 'CLASSIF'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Properties.Columns = 3
                    Properties.Items = <
                      item
                        Caption = 'Bom'
                        Value = 'B'
                        Tag = 1
                      end
                      item
                        Caption = 'M'#233'dio'
                        Value = 'M'
                      end
                      item
                        Caption = 'Regular  '
                        Value = 'R'
                      end>
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 9
                    Height = 50
                    Width = 189
                  end
                  object cxDBRadioGroup5: TcxDBRadioGroup
                    Left = 5
                    Top = 169
                    Caption = 'Tipo'
                    DataBinding.DataField = 'FREQUENCIA'
                    DataBinding.DataSource = dsRegistro
                    ParentFont = False
                    Properties.Columns = 3
                    Properties.Items = <
                      item
                        Caption = 'Frequente'
                        Value = 'Fre'
                        Tag = 1
                      end
                      item
                        Caption = 'Espor'#225'dico'
                        Value = 'Esp'
                      end
                      item
                        Caption = 'Eventual'
                        Value = 'Eve'
                      end>
                    Style.Font.Charset = ANSI_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.IsFontAssigned = True
                    TabOrder = 10
                    Height = 50
                    Width = 218
                  end
                  object cxLabel88: TcxLabel
                    Left = 247
                    Top = 8
                    Caption = 'Classifica'#231#227'o'
                    Transparent = True
                  end
                  object CmbClassificacao: TcxDBLookupComboBox
                    Left = 249
                    Top = 26
                    DataBinding.DataField = 'COD_CLASSIF'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.Revertable = True
                    TabOrder = 1
                    Width = 210
                  end
                  object cxLabel89: TcxLabel
                    Left = 272
                    Top = 48
                    Caption = 'Limite Cr'#233'dito'
                    Transparent = True
                  end
                  object cxDBCalcEdit6: TcxDBCalcEdit
                    Left = 271
                    Top = 66
                    DataBinding.DataField = 'LIMITE_CREDITO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 3
                    Width = 120
                  end
                  object cmbCategorias: TcxDBLookupComboBox
                    Left = 4
                    Top = 26
                    DataBinding.DataField = 'CATEGORIA'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.Revertable = True
                    TabOrder = 28
                    Width = 210
                  end
                  object cxLabel10: TcxLabel
                    Left = 4
                    Top = 8
                    Caption = 'Categorias'
                    Transparent = True
                  end
                  object btnCategoria: TcxButton
                    Left = 218
                    Top = 25
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 30
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
                  object cxDBCheckBox1: TcxDBCheckBox
                    Left = 505
                    Top = 95
                    Caption = 'Compartilha C/Filiais'
                    DataBinding.DataField = 'SINCRONIZA_FILIAIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 31
                    Width = 121
                  end
                end
                object dxTabSheet8: TcxTabSheet
                  Caption = 'Informa'#231#245'es Adicionais'
                  object cxDBMemo2: TcxDBMemo
                    Left = 4
                    Top = 126
                    DataBinding.DataField = 'REFERENCIAS'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 17
                    Height = 89
                    Width = 374
                  end
                  object cxDBMemo3: TcxDBMemo
                    Left = 387
                    Top = 127
                    DataBinding.DataField = 'OBS'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 18
                    Height = 89
                    Width = 406
                  end
                  object cxLabel90: TcxLabel
                    Left = 4
                    Top = 109
                    Caption = 'Refer'#234'ncias'
                    Transparent = True
                  end
                  object cxLabel91: TcxLabel
                    Left = 387
                    Top = 110
                    Caption = 'Observa'#231#245'es'
                    Transparent = True
                  end
                  object cxDBCheckBox14: TcxDBCheckBox
                    Left = 4
                    Top = 89
                    Caption = 'Sub. Tribut'#225'rio'
                    DataBinding.DataField = 'SUB_TRIBUTARIO'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 11
                    Width = 121
                  end
                  object cxDBCheckBox15: TcxDBCheckBox
                    Left = 336
                    Top = 89
                    Caption = 'Ret'#233'm. INSS'
                    DataBinding.DataField = 'RET_INSS'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 14
                    Width = 91
                  end
                  object cxDBCheckBox16: TcxDBCheckBox
                    Left = 251
                    Top = 89
                    Caption = 'Ret'#233'm. IRRF'
                    DataBinding.DataField = 'RET_IRRF'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 13
                    Width = 84
                  end
                  object cxDBCheckBox17: TcxDBCheckBox
                    Left = 101
                    Top = 89
                    Caption = 'Ret'#233'm. PIS/CSLL/COFINS'
                    DataBinding.DataField = 'RET_PIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 12
                    Width = 146
                  end
                  object cxDBTextEdit10: TcxDBTextEdit
                    Left = 503
                    Top = 61
                    DataBinding.DataField = 'SENHA_PDV'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 10
                    Width = 121
                  end
                  object cxLabel92: TcxLabel
                    Left = 503
                    Top = 44
                    Caption = 'Senha Pdv'
                    Transparent = True
                  end
                  object cxDBCheckBox18: TcxDBCheckBox
                    Left = 421
                    Top = 89
                    Caption = 'Cliente Cheque'
                    DataBinding.DataField = 'CHEQUE'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 15
                    Width = 102
                  end
                  object cxDBCheckBox19: TcxDBCheckBox
                    Left = 520
                    Top = 89
                    Caption = 'Assina Nota'
                    DataBinding.DataField = 'ASSINA_NOTA'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 16
                    Width = 91
                  end
                  object cxLabel93: TcxLabel
                    Left = 504
                    Top = 10
                    Caption = 'Desconto Conc'
                    Transparent = True
                  end
                  object cxDBCalcEdit7: TcxDBCalcEdit
                    Left = 504
                    Top = 27
                    DataBinding.DataField = 'ALIQUOTA_DESCONTO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 4
                    Width = 121
                  end
                  object cxLabel94: TcxLabel
                    Left = 131
                    Top = 46
                    Caption = 'Per'#237'odo Faturamento'
                    Transparent = True
                  end
                  object cxDBSpinEdit6: TcxDBSpinEdit
                    Left = 255
                    Top = 62
                    DataBinding.DataField = 'TOLERANCIA_FATURAMENTO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 8
                    Width = 121
                  end
                  object cxDBDateEdit8: TcxDBDateEdit
                    Left = 380
                    Top = 61
                    DataBinding.DataField = 'DATA_INICIAL'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 9
                    Width = 121
                  end
                  object cxLabel95: TcxLabel
                    Left = 380
                    Top = 44
                    Caption = 'Ajuste Aut. Nos Pre'#231'os'
                    Transparent = True
                  end
                  object cxLabel96: TcxLabel
                    Left = 627
                    Top = 10
                    Caption = 'N'#227'o Cobrar Juros At'#233
                    Transparent = True
                  end
                  object cxLabel97: TcxLabel
                    Left = 4
                    Top = 8
                    Caption = 'Taxa de Juros'
                    Transparent = True
                  end
                  object cxLabel98: TcxLabel
                    Left = 255
                    Top = 45
                    Caption = 'Toler'#226'ncia Faturamento'
                    Transparent = True
                  end
                  object cxDBSpinEdit7: TcxDBSpinEdit
                    Left = 627
                    Top = 27
                    DataBinding.DataField = 'NAO_COBR_JUR_ATE'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 5
                    Width = 78
                  end
                  object cxLabel99: TcxLabel
                    Left = 711
                    Top = 29
                    Caption = 'Dias'
                    Transparent = True
                  end
                  object cxDBCalcEdit8: TcxDBCalcEdit
                    Left = 4
                    Top = 25
                    DataBinding.DataField = 'TAXA_JUROS'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 0
                    Width = 121
                  end
                  object cxDBTextEdit13: TcxDBTextEdit
                    Left = 131
                    Top = 25
                    DataBinding.DataField = 'MEDIA_COMPRAS_MES'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 1
                    Width = 121
                  end
                  object cxLabel100: TcxLabel
                    Left = 131
                    Top = 8
                    Caption = 'Compras Mensais'
                    Transparent = True
                  end
                  object cxLabel101: TcxLabel
                    Left = 4
                    Top = 46
                    Caption = #218'lt. Vendedor'
                    Transparent = True
                  end
                  object cxDBCalcEdit9: TcxDBCalcEdit
                    Left = 380
                    Top = 25
                    DataBinding.DataField = 'VALOR_MAXIMO_RETIRADA'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 3
                    Width = 121
                  end
                  object cxLabel102: TcxLabel
                    Left = 379
                    Top = 8
                    Caption = 'Valor M'#225'ximo'
                    Transparent = True
                  end
                  object cxDBCalcEdit10: TcxDBCalcEdit
                    Left = 255
                    Top = 25
                    DataBinding.DataField = 'LIMITE_RETIRADAS_DIARIA'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 2
                    Width = 121
                  end
                  object cxLabel103: TcxLabel
                    Left = 255
                    Top = 8
                    Caption = 'Limite Di'#225'rio'
                    Transparent = True
                  end
                  object cxDBTextEdit14: TcxDBTextEdit
                    Left = 4
                    Top = 63
                    DataBinding.DataField = 'ULT_VENDEDOR'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 6
                    Width = 121
                  end
                  object cxDBTextEdit15: TcxDBTextEdit
                    Left = 131
                    Top = 63
                    DataBinding.DataField = 'PERIODO_FATURAMENTO'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 7
                    Width = 121
                  end
                end
                object dxTabSheet10: TcxTabSheet
                  Caption = 'Dados Cadastrais'
                  object BtnAtividade: TcxButton
                    Left = 243
                    Top = 60
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 15
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
                  object BtnEnderecoPai: TcxButton
                    Left = 243
                    Top = 98
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 16
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
                  object BtnCidadePai: TcxButton
                    Left = 582
                    Top = 97
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 17
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
                  object cmbLogradouroTrabalho1: TcxDBTextEdit
                    Left = 4
                    Top = 26
                    DataBinding.DataField = 'LOCAL_TRABALHO'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 0
                    Width = 255
                  end
                  object cxLabel104: TcxLabel
                    Left = 4
                    Top = 9
                    Caption = 'Local de Trabalho'
                    Transparent = True
                  end
                  object cxDBTextEdit17: TcxDBTextEdit
                    Left = 497
                    Top = 25
                    DataBinding.DataField = 'TEMPO_SERVICO'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 5
                    Width = 90
                  end
                  object cxLabel105: TcxLabel
                    Left = 495
                    Top = 9
                    Caption = 'Tempo Servi'#231'o'
                    Transparent = True
                  end
                  object cxDBMaskEdit12: TcxDBMaskEdit
                    Left = 267
                    Top = 25
                    DataBinding.DataField = 'NUMERO_TRABALHO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 2
                    Width = 59
                  end
                  object cxLabel106: TcxLabel
                    Left = 675
                    Top = 8
                    Caption = 'Aj. Aut. Pre'#231'os'
                    Transparent = True
                  end
                  object cxDBDateEdit10: TcxDBDateEdit
                    Left = 679
                    Top = 25
                    DataBinding.DataField = 'DATA_INICIAL'
                    DataBinding.DataSource = dsRegistro
                    Properties.DateOnError = deToday
                    TabOrder = 7
                    Width = 97
                  end
                  object cxLabel107: TcxLabel
                    Left = 267
                    Top = 8
                    Caption = 'N'#250'mero'
                    Transparent = True
                  end
                  object cxLabel108: TcxLabel
                    Left = 588
                    Top = 8
                    Caption = 'Dt. Adminiss'#227'o'
                    Transparent = True
                  end
                  object cxDBDateEdit11: TcxDBDateEdit
                    Left = 588
                    Top = 25
                    DataBinding.DataField = 'ADMISSAO'
                    DataBinding.DataSource = dsRegistro
                    Properties.DateOnError = deToday
                    TabOrder = 6
                    Width = 90
                  end
                  object cxLabel109: TcxLabel
                    Left = 4
                    Top = 45
                    Caption = 'Atividade'
                    Transparent = True
                  end
                  object CmbAtividade: TcxDBLookupComboBox
                    Left = 4
                    Top = 62
                    DataBinding.DataField = 'ATIVIDADE'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 8
                    Width = 239
                  end
                  object cxLabel110: TcxLabel
                    Left = 268
                    Top = 44
                    Caption = 'Pai'
                    Transparent = True
                  end
                  object cxDBTextEdit18: TcxDBTextEdit
                    Left = 268
                    Top = 61
                    DataBinding.DataField = 'PAI'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 9
                    Width = 252
                  end
                  object cxLabel111: TcxLabel
                    Left = 521
                    Top = 44
                    Caption = 'M'#227'e'
                    Transparent = True
                  end
                  object cxDBTextEdit19: TcxDBTextEdit
                    Left = 522
                    Top = 61
                    DataBinding.DataField = 'MAE'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 10
                    Width = 253
                  end
                  object cxLabel112: TcxLabel
                    Left = 4
                    Top = 83
                    Caption = 'Endere'#231'o'
                    Transparent = True
                  end
                  object cmbLogradouroPai: TcxDBLookupComboBox
                    Left = 4
                    Top = 100
                    DataBinding.DataField = 'ENDERECO_PAIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 11
                    Width = 239
                  end
                  object cxLabel113: TcxLabel
                    Left = 269
                    Top = 82
                    Caption = 'N'#250'mero'
                    Transparent = True
                  end
                  object cxLabel114: TcxLabel
                    Left = 344
                    Top = 84
                    Caption = 'Cidade'
                    Transparent = True
                  end
                  object cmbCidadePai: TcxDBLookupComboBox
                    Left = 344
                    Top = 99
                    DataBinding.DataField = 'CIDADE_PAIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 13
                    Width = 235
                  end
                  object cxLabel115: TcxLabel
                    Left = 327
                    Top = 8
                    Caption = 'Fone'
                    Transparent = True
                  end
                  object cxDBMaskEdit13: TcxDBMaskEdit
                    Left = 327
                    Top = 25
                    DataBinding.DataField = 'FONE_TRABALHO'
                    DataBinding.DataSource = dsRegistro
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 3
                    Width = 119
                  end
                  object cxLabel116: TcxLabel
                    Left = 447
                    Top = 8
                    Caption = 'Ramal'
                    Transparent = True
                  end
                  object cxDBMaskEdit14: TcxDBMaskEdit
                    Left = 447
                    Top = 25
                    DataBinding.DataField = 'RAMAL_FONE_TRAB'
                    DataBinding.DataSource = dsRegistro
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 4
                    Width = 47
                  end
                  object cxLabel117: TcxLabel
                    Left = 608
                    Top = 82
                    Caption = 'Renda Cliente'
                    Transparent = True
                  end
                  object cxDBCalcEdit11: TcxDBCalcEdit
                    Left = 608
                    Top = 99
                    DataBinding.DataField = 'RENDA_MENSAL'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 14
                    Width = 121
                  end
                  object cxDBMaskEdit15: TcxDBMaskEdit
                    Left = 269
                    Top = 99
                    DataBinding.DataField = 'NUMERO_PAIS'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 12
                    Width = 73
                  end
                  object cxGroupBox7: TcxGroupBox
                    Left = 4
                    Top = 127
                    Caption = 'Dados do Conjuge'
                    TabOrder = 1
                    Height = 102
                    Width = 780
                    object BtnEnderecoTrab: TcxButton
                      Left = 752
                      Top = 27
                      Width = 23
                      Height = 22
                      Cursor = crHandPoint
                      TabOrder = 8
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
                    object cxDBTextEdit20: TcxDBTextEdit
                      Left = 5
                      Top = 31
                      DataBinding.DataField = 'CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.CharCase = ecUpperCase
                      TabOrder = 0
                      Width = 255
                    end
                    object cxDBDateEdit12: TcxDBDateEdit
                      Left = 388
                      Top = 68
                      DataBinding.DataField = 'ADMISSAO_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.DateOnError = deToday
                      TabOrder = 7
                      Width = 111
                    end
                    object cxLabel118: TcxLabel
                      Left = 386
                      Top = 52
                      Caption = 'Dt. Admiss'#227'o'
                      Transparent = True
                    end
                    object cxLabel119: TcxLabel
                      Left = 5
                      Top = 15
                      Caption = 'Nome'
                      Transparent = True
                    end
                    object cxLabel120: TcxLabel
                      Left = 261
                      Top = 13
                      Caption = 'Local Trabalho Conjugue'
                      Transparent = True
                    end
                    object cxDBTextEdit21: TcxDBTextEdit
                      Left = 261
                      Top = 30
                      DataBinding.DataField = 'LOCAL_TRAB_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.CharCase = ecUpperCase
                      TabOrder = 1
                      Width = 255
                    end
                    object cmbLogradouroTrab: TcxDBLookupComboBox
                      Left = 518
                      Top = 29
                      DataBinding.DataField = 'ENDERECO_TRABALHO'
                      DataBinding.DataSource = dsRegistro
                      Properties.KeyFieldNames = 'CODIGO'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NOME'
                        end>
                      Style.BorderStyle = ebsUltraFlat
                      TabOrder = 2
                      Width = 235
                    end
                    object cxLabel121: TcxLabel
                      Left = 518
                      Top = 13
                      Caption = 'End. do Trabalho'
                      Transparent = True
                    end
                    object cxDBDateEdit13: TcxDBDateEdit
                      Left = 267
                      Top = 68
                      DataBinding.DataField = 'DT_NASC_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.DateOnError = deToday
                      TabOrder = 6
                      Width = 121
                    end
                    object cxLabel122: TcxLabel
                      Left = 267
                      Top = 51
                      Caption = 'Data de Nascimento'
                      Transparent = True
                    end
                    object cxDBMaskEdit16: TcxDBMaskEdit
                      Left = 218
                      Top = 68
                      DataBinding.DataField = 'RAMAL_LOCAL_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.EditMask = '!\(99\)0000-0000;1;_'
                      Properties.MaxLength = 0
                      TabOrder = 5
                      Width = 47
                    end
                    object cxLabel123: TcxLabel
                      Left = 218
                      Top = 51
                      Caption = 'Ramal'
                      Transparent = True
                    end
                    object cxDBMaskEdit17: TcxDBMaskEdit
                      Left = 97
                      Top = 68
                      DataBinding.DataField = 'FONE_LOCAL_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.EditMask = '!\(99\)0000-0000;1;_'
                      Properties.MaxLength = 0
                      TabOrder = 4
                      Width = 119
                    end
                    object cxLabel124: TcxLabel
                      Left = 97
                      Top = 51
                      Caption = 'Fone'
                      Transparent = True
                    end
                    object cxLabel125: TcxLabel
                      Left = 4
                      Top = 51
                      Caption = 'Tmp. Serv. Conj.'
                      Transparent = True
                    end
                    object cxDBTextEdit22: TcxDBTextEdit
                      Left = 5
                      Top = 68
                      DataBinding.DataField = 'TEMPO_SERV_CONJUGE'
                      DataBinding.DataSource = dsRegistro
                      Properties.CharCase = ecUpperCase
                      TabOrder = 3
                      Width = 90
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from glo_clientes'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into glo_clientes'
      
        '  (ADMISSAO, ADMISSAO_CONJUGE, AJUSTE_AUT_FATURAS, ALIQUOTA_DESC' +
        'ONTO, ASSINA_NOTA, '
      
        '   ATIVIDADE, BAIRRO, BLOQUEADO, CATEGORIA, CEP_TRABALHO, CHEQUE' +
        ', CIDADE_PAIS, '
      
        '   CLASSIF, CNPJ, CNPJ_CLASSIF, CNPJ_FPAGTO, CNPJ_VEND, COD_CLAS' +
        'SIF, COD_FPAGTO, '
      
        '   COD_VEND, COMPLEMENTO, COMPRADOR, CONJUGE, CONS_REV, CONTROLA' +
        '_KM, CONTROLA_PLACA, '
      
        '   DIA_PREF_FAT, DT_NASC_CONJUGE, ENDERECO_PAIS, ENDERECO_TRABAL' +
        'HO, FONE, '
      
        '   FONE_LOCAL_CONJUGE, FONE_TRABALHO, FREQUENCIA, LIMITE_CREDITO' +
        ', LIMITE_RETIRADAS_DIARIA, '
      
        '   LIMITE_TEMPO, LOCAL_TRAB_CONJUGE, LOCAL_TRABALHO, MAE, MEDIA_' +
        'COMPRAS_MES, '
      
        '   NAO_COBR_JUR_ATE, NEG_N_VEZES, NUMERO_PAIS, NUMERO_TRABALHO, ' +
        'OBS, OPTANTE_SIMPLES, '
      
        '   PAI, PERIODO_FATURAMENTO, PESSOA_FJ, PRAZO, RAMAL_FONE_TRAB, ' +
        'RAMAL_LOCAL_CONJUGE, '
      
        '   REFERENCIAS, RENDA_MENSAL, REQUISICAO, RET_INSS, RET_IRRF, RE' +
        'T_PIS, '
      
        '   SENHA_PDV, SINCRONIZA_FILIAIS, SUB_TRIBUTARIO, TAXA_JUROS, TE' +
        'MPO_SERV_CONJUGE, '
      
        '   TEMPO_SERVICO, TOLERANCIA_FATURAMENTO, ULT_VENDEDOR, VALOR_MA' +
        'XIMO_RETIRADA)'
      'values'
      
        '  (:ADMISSAO, :ADMISSAO_CONJUGE, :AJUSTE_AUT_FATURAS, :ALIQUOTA_' +
        'DESCONTO, '
      
        '   :ASSINA_NOTA, :ATIVIDADE, :BAIRRO, :BLOQUEADO, :CATEGORIA, :C' +
        'EP_TRABALHO, '
      
        '   :CHEQUE, :CIDADE_PAIS, :CLASSIF, :CNPJ, :CNPJ_CLASSIF, :CNPJ_' +
        'FPAGTO, '
      
        '   :CNPJ_VEND, :COD_CLASSIF, :COD_FPAGTO, :COD_VEND, :COMPLEMENT' +
        'O, :COMPRADOR, '
      
        '   :CONJUGE, :CONS_REV, :CONTROLA_KM, :CONTROLA_PLACA, :DIA_PREF' +
        '_FAT, :DT_NASC_CONJUGE, '
      
        '   :ENDERECO_PAIS, :ENDERECO_TRABALHO, :FONE, :FONE_LOCAL_CONJUG' +
        'E, :FONE_TRABALHO, '
      
        '   :FREQUENCIA, :LIMITE_CREDITO, :LIMITE_RETIRADAS_DIARIA, :LIMI' +
        'TE_TEMPO, '
      
        '   :LOCAL_TRAB_CONJUGE, :LOCAL_TRABALHO, :MAE, :MEDIA_COMPRAS_ME' +
        'S, :NAO_COBR_JUR_ATE, '
      
        '   :NEG_N_VEZES, :NUMERO_PAIS, :NUMERO_TRABALHO, :OBS, :OPTANTE_' +
        'SIMPLES, '
      
        '   :PAI, :PERIODO_FATURAMENTO, :PESSOA_FJ, :PRAZO, :RAMAL_FONE_T' +
        'RAB, :RAMAL_LOCAL_CONJUGE, '
      
        '   :REFERENCIAS, :RENDA_MENSAL, :REQUISICAO, :RET_INSS, :RET_IRR' +
        'F, :RET_PIS, '
      
        '   :SENHA_PDV, :SINCRONIZA_FILIAIS, :SUB_TRIBUTARIO, :TAXA_JUROS' +
        ', :TEMPO_SERV_CONJUGE, '
      
        '   :TEMPO_SERVICO, :TOLERANCIA_FATURAMENTO, :ULT_VENDEDOR, :VALO' +
        'R_MAXIMO_RETIRADA)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_clientes '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select * from glo_clientes c'
      'where c.cnpj = :cnpj and c.pessoa_fj = :pessoa_fj')
    ModifySQL.Strings = (
      'update glo_clientes'
      'set'
      '  ADMISSAO = :ADMISSAO,'
      '  ADMISSAO_CONJUGE = :ADMISSAO_CONJUGE,'
      '  AJUSTE_AUT_FATURAS = :AJUSTE_AUT_FATURAS,'
      '  ALIQUOTA_DESCONTO = :ALIQUOTA_DESCONTO,'
      '  ASSINA_NOTA = :ASSINA_NOTA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  BLOQUEADO = :BLOQUEADO,'
      '  CATEGORIA = :CATEGORIA,'
      '  CEP_TRABALHO = :CEP_TRABALHO,'
      '  CHEQUE = :CHEQUE,'
      '  CIDADE_PAIS = :CIDADE_PAIS,'
      '  CLASSIF = :CLASSIF,'
      '  CNPJ = :CNPJ,'
      '  CNPJ_CLASSIF = :CNPJ_CLASSIF,'
      '  CNPJ_FPAGTO = :CNPJ_FPAGTO,'
      '  CNPJ_VEND = :CNPJ_VEND,'
      '  COD_CLASSIF = :COD_CLASSIF,'
      '  COD_FPAGTO = :COD_FPAGTO,'
      '  COD_VEND = :COD_VEND,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  COMPRADOR = :COMPRADOR,'
      '  CONJUGE = :CONJUGE,'
      '  CONS_REV = :CONS_REV,'
      '  CONTROLA_KM = :CONTROLA_KM,'
      '  CONTROLA_PLACA = :CONTROLA_PLACA,'
      '  DIA_PREF_FAT = :DIA_PREF_FAT,'
      '  DT_NASC_CONJUGE = :DT_NASC_CONJUGE,'
      '  ENDERECO_PAIS = :ENDERECO_PAIS,'
      '  ENDERECO_TRABALHO = :ENDERECO_TRABALHO,'
      '  FONE = :FONE,'
      '  FONE_LOCAL_CONJUGE = :FONE_LOCAL_CONJUGE,'
      '  FONE_TRABALHO = :FONE_TRABALHO,'
      '  FREQUENCIA = :FREQUENCIA,'
      '  LIMITE_CREDITO = :LIMITE_CREDITO,'
      '  LIMITE_RETIRADAS_DIARIA = :LIMITE_RETIRADAS_DIARIA,'
      '  LIMITE_TEMPO = :LIMITE_TEMPO,'
      '  LOCAL_TRAB_CONJUGE = :LOCAL_TRAB_CONJUGE,'
      '  LOCAL_TRABALHO = :LOCAL_TRABALHO,'
      '  MAE = :MAE,'
      '  MEDIA_COMPRAS_MES = :MEDIA_COMPRAS_MES,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NEG_N_VEZES = :NEG_N_VEZES,'
      '  NUMERO_PAIS = :NUMERO_PAIS,'
      '  NUMERO_TRABALHO = :NUMERO_TRABALHO,'
      '  OBS = :OBS,'
      '  OPTANTE_SIMPLES = :OPTANTE_SIMPLES,'
      '  PAI = :PAI,'
      '  PERIODO_FATURAMENTO = :PERIODO_FATURAMENTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRAZO = :PRAZO,'
      '  RAMAL_FONE_TRAB = :RAMAL_FONE_TRAB,'
      '  RAMAL_LOCAL_CONJUGE = :RAMAL_LOCAL_CONJUGE,'
      '  REFERENCIAS = :REFERENCIAS,'
      '  RENDA_MENSAL = :RENDA_MENSAL,'
      '  REQUISICAO = :REQUISICAO,'
      '  RET_INSS = :RET_INSS,'
      '  RET_IRRF = :RET_IRRF,'
      '  RET_PIS = :RET_PIS,'
      '  SENHA_PDV = :SENHA_PDV,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  SUB_TRIBUTARIO = :SUB_TRIBUTARIO,'
      '  TAXA_JUROS = :TAXA_JUROS,'
      '  TEMPO_SERV_CONJUGE = :TEMPO_SERV_CONJUGE,'
      '  TEMPO_SERVICO = :TEMPO_SERVICO,'
      '  TOLERANCIA_FATURAMENTO = :TOLERANCIA_FATURAMENTO,'
      '  ULT_VENDEDOR = :ULT_VENDEDOR,'
      '  VALOR_MAXIMO_RETIRADA = :VALOR_MAXIMO_RETIRADA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object dtEditFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_CLIENTES"."FONE"'
    end
    object dtEditCNPJ_VEND: TIBStringField
      FieldName = 'CNPJ_VEND'
      Origin = '"GLO_CLIENTES"."CNPJ_VEND"'
      FixedChar = True
      Size = 14
    end
    object dtEditCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object dtEditCNPJ_FPAGTO: TIBStringField
      FieldName = 'CNPJ_FPAGTO'
      Origin = '"GLO_CLIENTES"."CNPJ_FPAGTO"'
      FixedChar = True
      Size = 14
    end
    object dtEditCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object dtEditREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object dtEditCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object dtEditLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
    end
    object dtEditLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
    end
    object dtEditREFERENCIAS: TBlobField
      FieldName = 'REFERENCIAS'
      Origin = '"GLO_CLIENTES"."REFERENCIAS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditULT_VENDEDOR: TIntegerField
      FieldName = 'ULT_VENDEDOR'
      Origin = '"GLO_CLIENTES"."ULT_VENDEDOR"'
    end
    object dtEditFREQUENCIA: TIBStringField
      FieldName = 'FREQUENCIA'
      Origin = '"GLO_CLIENTES"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object dtEditATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_CLIENTES"."ATIVIDADE"'
    end
    object dtEditCEP_TRABALHO: TIBStringField
      FieldName = 'CEP_TRABALHO'
      Origin = '"GLO_CLIENTES"."CEP_TRABALHO"'
      Size = 8
    end
    object dtEditCIDADE_PAIS: TIntegerField
      FieldName = 'CIDADE_PAIS'
      Origin = '"GLO_CLIENTES"."CIDADE_PAIS"'
    end
    object dtEditCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"GLO_CLIENTES"."CONJUGE"'
      Size = 50
    end
    object dtEditDT_NASC_CONJUGE: TDateTimeField
      FieldName = 'DT_NASC_CONJUGE'
      Origin = '"GLO_CLIENTES"."DT_NASC_CONJUGE"'
    end
    object dtEditENDERECO_PAIS: TIntegerField
      FieldName = 'ENDERECO_PAIS'
      Origin = '"GLO_CLIENTES"."ENDERECO_PAIS"'
    end
    object dtEditENDERECO_TRABALHO: TIntegerField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"GLO_CLIENTES"."ENDERECO_TRABALHO"'
    end
    object dtEditFONE_LOCAL_CONJUGE: TIBStringField
      FieldName = 'FONE_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."FONE_LOCAL_CONJUGE"'
    end
    object dtEditFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object dtEditLOCAL_TRAB_CONJUGE: TIBStringField
      FieldName = 'LOCAL_TRAB_CONJUGE'
      Origin = '"GLO_CLIENTES"."LOCAL_TRAB_CONJUGE"'
      Size = 50
    end
    object dtEditLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object dtEditMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"GLO_CLIENTES"."MAE"'
      Size = 50
    end
    object dtEditPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"GLO_CLIENTES"."PAI"'
      Size = 50
    end
    object dtEditRAMAL_FONE_TRAB: TIBStringField
      FieldName = 'RAMAL_FONE_TRAB'
      Origin = '"GLO_CLIENTES"."RAMAL_FONE_TRAB"'
      FixedChar = True
      Size = 3
    end
    object dtEditRAMAL_LOCAL_CONJUGE: TIBStringField
      FieldName = 'RAMAL_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."RAMAL_LOCAL_CONJUGE"'
      FixedChar = True
      Size = 3
    end
    object dtEditRENDA_MENSAL: TFloatField
      FieldName = 'RENDA_MENSAL'
      Origin = '"GLO_CLIENTES"."RENDA_MENSAL"'
    end
    object dtEditTEMPO_SERV_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERV_CONJUGE'
      Origin = '"GLO_CLIENTES"."TEMPO_SERV_CONJUGE"'
      Size = 10
    end
    object dtEditTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"GLO_CLIENTES"."TEMPO_SERVICO"'
      Size = 10
    end
    object dtEditCNPJ_CLASSIF: TIBStringField
      FieldName = 'CNPJ_CLASSIF'
      Origin = '"GLO_CLIENTES"."CNPJ_CLASSIF"'
      FixedChar = True
      Size = 14
    end
    object dtEditCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
      Origin = '"GLO_CLIENTES"."COD_CLASSIF"'
    end
    object dtEditPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"GLO_CLIENTES"."PRAZO"'
    end
    object dtEditPERIODO_FATURAMENTO: TIBStringField
      FieldName = 'PERIODO_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."PERIODO_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditTOLERANCIA_FATURAMENTO: TIntegerField
      FieldName = 'TOLERANCIA_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."TOLERANCIA_FATURAMENTO"'
    end
    object dtEditAJUSTE_AUT_FATURAS: TIBStringField
      FieldName = 'AJUSTE_AUT_FATURAS'
      Origin = '"GLO_CLIENTES"."AJUSTE_AUT_FATURAS"'
      FixedChar = True
      Size = 1
    end
    object dtEditTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      Origin = '"GLO_CLIENTES"."TAXA_JUROS"'
    end
    object dtEditMEDIA_COMPRAS_MES: TIntegerField
      FieldName = 'MEDIA_COMPRAS_MES'
      Origin = '"GLO_CLIENTES"."MEDIA_COMPRAS_MES"'
    end
    object dtEditNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"GLO_CLIENTES"."NAO_COBR_JUR_ATE"'
    end
    object dtEditASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"GLO_CLIENTES"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object dtEditCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"GLO_CLIENTES"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object dtEditCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"GLO_CLIENTES"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object dtEditADMISSAO: TDateTimeField
      FieldName = 'ADMISSAO'
      Origin = '"GLO_CLIENTES"."ADMISSAO"'
    end
    object dtEditADMISSAO_CONJUGE: TDateTimeField
      FieldName = 'ADMISSAO_CONJUGE'
      Origin = '"GLO_CLIENTES"."ADMISSAO_CONJUGE"'
    end
    object dtEditNUMERO_TRABALHO: TIBStringField
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"GLO_CLIENTES"."NUMERO_TRABALHO"'
      Size = 15
    end
    object dtEditLIMITE_RETIRADAS_DIARIA: TFloatField
      FieldName = 'LIMITE_RETIRADAS_DIARIA'
      Origin = '"GLO_CLIENTES"."LIMITE_RETIRADAS_DIARIA"'
    end
    object dtEditVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
    end
    object dtEditNUMERO_PAIS: TIBStringField
      FieldName = 'NUMERO_PAIS'
      Origin = '"GLO_CLIENTES"."NUMERO_PAIS"'
      Size = 15
    end
    object dtEditCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"GLO_CLIENTES"."CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object dtEditALIQUOTA_DESCONTO: TFloatField
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"GLO_CLIENTES"."ALIQUOTA_DESCONTO"'
    end
    object dtEditOPTANTE_SIMPLES: TIBStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"GLO_CLIENTES"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object dtEditCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"GLO_CLIENTES"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object dtEditSENHA_PDV: TIBStringField
      FieldName = 'SENHA_PDV'
      Origin = '"GLO_CLIENTES"."SENHA_PDV"'
      Size = 6
    end
    object dtEditSUB_TRIBUTARIO: TIBStringField
      FieldName = 'SUB_TRIBUTARIO'
      Origin = '"GLO_CLIENTES"."SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object dtEditRET_PIS: TIBStringField
      FieldName = 'RET_PIS'
      Origin = '"GLO_CLIENTES"."RET_PIS"'
      FixedChar = True
      Size = 1
    end
    object dtEditRET_INSS: TIBStringField
      FieldName = 'RET_INSS'
      Origin = '"GLO_CLIENTES"."RET_INSS"'
      FixedChar = True
      Size = 1
    end
    object dtEditRET_IRRF: TIBStringField
      FieldName = 'RET_IRRF'
      Origin = '"GLO_CLIENTES"."RET_IRRF"'
      FixedChar = True
      Size = 1
    end
    object dtEditBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_CLIENTES"."BAIRRO"'
    end
    object dtEditNEG_N_VEZES: TSmallintField
      FieldName = 'NEG_N_VEZES'
      Origin = '"GLO_CLIENTES"."NEG_N_VEZES"'
    end
    object dtEditCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_CLIENTES"."COMPLEMENTO"'
      Size = 80
    end
    object dtEditCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"GLO_CLIENTES"."CATEGORIA"'
    end
    object dtEditSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_CLIENTES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select cli.*, psa.nome_razao, psa.cpf_cgc'
      'from glo_clientes cli'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = cli.cnpj and psa.co' +
        'digo = cli.pessoa_fj)'
      'where cli.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCOMPRADOR: TIBStringField
      DisplayLabel = 'Comprador'
      FieldName = 'COMPRADOR'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object dtListFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_CLIENTES"."FONE"'
    end
    object dtListCNPJ_VEND: TIBStringField
      DisplayLabel = 'CNPJ - Vendedor'
      FieldName = 'CNPJ_VEND'
      Origin = '"GLO_CLIENTES"."CNPJ_VEND"'
      FixedChar = True
      Size = 14
    end
    object dtListCOD_VEND: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object dtListCNPJ_FPAGTO: TIBStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'CNPJ_FPAGTO'
      Origin = '"GLO_CLIENTES"."CNPJ_FPAGTO"'
      FixedChar = True
      Size = 14
    end
    object dtListCOD_FPAGTO: TIntegerField
      DisplayLabel = 'C'#243'd. Form. Pagto'
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object dtListREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object dtListDIA_PREF_FAT: TIntegerField
      DisplayLabel = 'Dia Fat. Padr'#227'o'
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object dtListCLASSIF: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object dtListLIMITE_TEMPO: TIntegerField
      DisplayLabel = 'Limite de Tempo'
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
    end
    object dtListLIMITE_CREDITO: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
    end
    object dtListREFERENCIAS: TBlobField
      DisplayLabel = 'Refer'#234'ncias'
      FieldName = 'REFERENCIAS'
      Origin = '"GLO_CLIENTES"."REFERENCIAS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListBLOQUEADO: TIBStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object dtListULT_VENDEDOR: TIntegerField
      DisplayLabel = 'Ult. Vendedor'
      FieldName = 'ULT_VENDEDOR'
      Origin = '"GLO_CLIENTES"."ULT_VENDEDOR"'
    end
    object dtListFREQUENCIA: TIBStringField
      DisplayLabel = 'Frequencia'
      FieldName = 'FREQUENCIA'
      Origin = '"GLO_CLIENTES"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object dtListATIVIDADE: TIntegerField
      DisplayLabel = 'Atividade'
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_CLIENTES"."ATIVIDADE"'
    end
    object dtListCEP_TRABALHO: TIBStringField
      DisplayLabel = 'Trabalho - CEP'
      FieldName = 'CEP_TRABALHO'
      Origin = '"GLO_CLIENTES"."CEP_TRABALHO"'
      Size = 8
    end
    object dtListCIDADE_PAIS: TIntegerField
      DisplayLabel = 'Pais - Cidade'
      FieldName = 'CIDADE_PAIS'
      Origin = '"GLO_CLIENTES"."CIDADE_PAIS"'
    end
    object dtListCONJUGE: TIBStringField
      DisplayLabel = 'Conjuge'
      FieldName = 'CONJUGE'
      Origin = '"GLO_CLIENTES"."CONJUGE"'
      Size = 50
    end
    object dtListDT_NASC_CONJUGE: TDateTimeField
      DisplayLabel = 'Conjuge - Dt. Nascto'
      FieldName = 'DT_NASC_CONJUGE'
      Origin = '"GLO_CLIENTES"."DT_NASC_CONJUGE"'
    end
    object dtListENDERECO_PAIS: TIntegerField
      DisplayLabel = 'Pais - Endere'#231'o'
      FieldName = 'ENDERECO_PAIS'
      Origin = '"GLO_CLIENTES"."ENDERECO_PAIS"'
    end
    object dtListENDERECO_TRABALHO: TIntegerField
      DisplayLabel = 'Trabalho - Endere'#231'o'
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"GLO_CLIENTES"."ENDERECO_TRABALHO"'
    end
    object dtListFONE_LOCAL_CONJUGE: TIBStringField
      DisplayLabel = 'Conjuge - Fone'
      FieldName = 'FONE_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."FONE_LOCAL_CONJUGE"'
    end
    object dtListFONE_TRABALHO: TIBStringField
      DisplayLabel = 'Trabalho - Fone'
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object dtListLOCAL_TRAB_CONJUGE: TIBStringField
      DisplayLabel = 'Conjuge - Local Trabalho'
      FieldName = 'LOCAL_TRAB_CONJUGE'
      Origin = '"GLO_CLIENTES"."LOCAL_TRAB_CONJUGE"'
      Size = 50
    end
    object dtListLOCAL_TRABALHO: TIBStringField
      DisplayLabel = 'Local Trabalho'
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object dtListMAE: TIBStringField
      DisplayLabel = 'Nome M'#227'e'
      FieldName = 'MAE'
      Origin = '"GLO_CLIENTES"."MAE"'
      Size = 50
    end
    object dtListPAI: TIBStringField
      DisplayLabel = 'Nome Pai'
      FieldName = 'PAI'
      Origin = '"GLO_CLIENTES"."PAI"'
      Size = 50
    end
    object dtListRAMAL_FONE_TRAB: TIBStringField
      DisplayLabel = 'Trabalho - Ramal'
      FieldName = 'RAMAL_FONE_TRAB'
      Origin = '"GLO_CLIENTES"."RAMAL_FONE_TRAB"'
      FixedChar = True
      Size = 3
    end
    object dtListRAMAL_LOCAL_CONJUGE: TIBStringField
      DisplayLabel = 'Conjuge - Ramal'
      FieldName = 'RAMAL_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."RAMAL_LOCAL_CONJUGE"'
      FixedChar = True
      Size = 3
    end
    object dtListRENDA_MENSAL: TFloatField
      DisplayLabel = 'Renda Mensal'
      FieldName = 'RENDA_MENSAL'
      Origin = '"GLO_CLIENTES"."RENDA_MENSAL"'
    end
    object dtListTEMPO_SERV_CONJUGE: TIBStringField
      DisplayLabel = 'Conjuge - Temp. Servi'#231'o'
      FieldName = 'TEMPO_SERV_CONJUGE'
      Origin = '"GLO_CLIENTES"."TEMPO_SERV_CONJUGE"'
      Size = 10
    end
    object dtListTEMPO_SERVICO: TIBStringField
      DisplayLabel = 'Tempo Servi'#231'o'
      FieldName = 'TEMPO_SERVICO'
      Origin = '"GLO_CLIENTES"."TEMPO_SERVICO"'
      Size = 10
    end
    object dtListCNPJ_CLASSIF: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CNPJ_CLASSIF'
      Origin = '"GLO_CLIENTES"."CNPJ_CLASSIF"'
      FixedChar = True
      Size = 14
    end
    object dtListCOD_CLASSIF: TIntegerField
      DisplayLabel = 'C'#243'd. Classifica'#231#227'o'
      FieldName = 'COD_CLASSIF'
      Origin = '"GLO_CLIENTES"."COD_CLASSIF"'
    end
    object dtListPRAZO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
      Origin = '"GLO_CLIENTES"."PRAZO"'
    end
    object dtListPERIODO_FATURAMENTO: TIBStringField
      DisplayLabel = 'Per'#237'odo Faturamento'
      FieldName = 'PERIODO_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."PERIODO_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtListTOLERANCIA_FATURAMENTO: TIntegerField
      DisplayLabel = 'Tolerancia Faturamento'
      FieldName = 'TOLERANCIA_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."TOLERANCIA_FATURAMENTO"'
    end
    object dtListAJUSTE_AUT_FATURAS: TIBStringField
      DisplayLabel = 'Ajuste Aut. Faturas'
      FieldName = 'AJUSTE_AUT_FATURAS'
      Origin = '"GLO_CLIENTES"."AJUSTE_AUT_FATURAS"'
      FixedChar = True
      Size = 1
    end
    object dtListTAXA_JUROS: TFloatField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"GLO_CLIENTES"."TAXA_JUROS"'
    end
    object dtListMEDIA_COMPRAS_MES: TIntegerField
      DisplayLabel = 'M'#233'dia Compra/M'#234's'
      FieldName = 'MEDIA_COMPRAS_MES'
      Origin = '"GLO_CLIENTES"."MEDIA_COMPRAS_MES"'
    end
    object dtListNAO_COBR_JUR_ATE: TIntegerField
      DisplayLabel = 'N'#227'o Cob. Juros/At'#233
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"GLO_CLIENTES"."NAO_COBR_JUR_ATE"'
    end
    object dtListASSINA_NOTA: TIBStringField
      DisplayLabel = 'Ass. Nota'
      FieldName = 'ASSINA_NOTA'
      Origin = '"GLO_CLIENTES"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object dtListCONTROLA_PLACA: TIBStringField
      DisplayLabel = 'Contr. Placa'
      FieldName = 'CONTROLA_PLACA'
      Origin = '"GLO_CLIENTES"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object dtListCONTROLA_KM: TIBStringField
      DisplayLabel = 'Contr. KM'
      FieldName = 'CONTROLA_KM'
      Origin = '"GLO_CLIENTES"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object dtListADMISSAO: TDateTimeField
      DisplayLabel = 'Admiss'#227'o'
      FieldName = 'ADMISSAO'
      Origin = '"GLO_CLIENTES"."ADMISSAO"'
    end
    object dtListADMISSAO_CONJUGE: TDateTimeField
      DisplayLabel = 'Conjuge - Admiss'#227'o'
      FieldName = 'ADMISSAO_CONJUGE'
      Origin = '"GLO_CLIENTES"."ADMISSAO_CONJUGE"'
    end
    object dtListNUMERO_TRABALHO: TIBStringField
      DisplayLabel = 'Trabalho - Numero'
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"GLO_CLIENTES"."NUMERO_TRABALHO"'
      Size = 15
    end
    object dtListLIMITE_RETIRADAS_DIARIA: TFloatField
      DisplayLabel = 'Limite Ret. Diaria'
      FieldName = 'LIMITE_RETIRADAS_DIARIA'
      Origin = '"GLO_CLIENTES"."LIMITE_RETIRADAS_DIARIA"'
    end
    object dtListVALOR_MAXIMO_RETIRADA: TFloatField
      DisplayLabel = 'Vlr. Max. Retirada'
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
    end
    object dtListNUMERO_PAIS: TIBStringField
      DisplayLabel = 'Pais - Numero'
      FieldName = 'NUMERO_PAIS'
      Origin = '"GLO_CLIENTES"."NUMERO_PAIS"'
      Size = 15
    end
    object dtListCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"GLO_CLIENTES"."CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object dtListALIQUOTA_DESCONTO: TFloatField
      DisplayLabel = 'Aliq. Desconto'
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"GLO_CLIENTES"."ALIQUOTA_DESCONTO"'
    end
    object dtListOPTANTE_SIMPLES: TIBStringField
      DisplayLabel = 'Op. Simples Nacional'
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"GLO_CLIENTES"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object dtListCONS_REV: TIBStringField
      DisplayLabel = 'Cons. Rev'
      FieldName = 'CONS_REV'
      Origin = '"GLO_CLIENTES"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object dtListSENHA_PDV: TIBStringField
      DisplayLabel = 'Senha PDV'
      FieldName = 'SENHA_PDV'
      Origin = '"GLO_CLIENTES"."SENHA_PDV"'
      Size = 6
    end
    object dtListSUB_TRIBUTARIO: TIBStringField
      DisplayLabel = 'Sub. Tribut'#225'rio'
      FieldName = 'SUB_TRIBUTARIO'
      Origin = '"GLO_CLIENTES"."SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object dtListRET_PIS: TIBStringField
      DisplayLabel = 'Ret. PIS'
      FieldName = 'RET_PIS'
      Origin = '"GLO_CLIENTES"."RET_PIS"'
      FixedChar = True
      Size = 1
    end
    object dtListRET_INSS: TIBStringField
      DisplayLabel = 'Ret. INSS'
      FieldName = 'RET_INSS'
      Origin = '"GLO_CLIENTES"."RET_INSS"'
      FixedChar = True
      Size = 1
    end
    object dtListRET_IRRF: TIBStringField
      DisplayLabel = 'Ret. IRRPF'
      FieldName = 'RET_IRRF'
      Origin = '"GLO_CLIENTES"."RET_IRRF"'
      FixedChar = True
      Size = 1
    end
    object dtListBAIRRO: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_CLIENTES"."BAIRRO"'
    end
    object dtListNEG_N_VEZES: TSmallintField
      DisplayLabel = 'Neg. N/Vezes'
      FieldName = 'NEG_N_VEZES'
      Origin = '"GLO_CLIENTES"."NEG_N_VEZES"'
    end
    object dtListCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_CLIENTES"."COMPLEMENTO"'
      Size = 80
    end
    object dtListCATEGORIA: TIntegerField
      DisplayLabel = 'C'#243'd. Categoria'
      FieldName = 'CATEGORIA'
      Origin = '"GLO_CLIENTES"."CATEGORIA"'
    end
    object dtListSINCRONIZA_FILIAIS: TIBStringField
      DisplayLabel = 'Sinc. Filial'
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_CLIENTES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
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
  inherited dsRegistroDet2: TDataSource
    Top = 446
  end
  inherited dsPesquisaDet2: TDataSource
    Top = 446
  end
  inherited dsRegistroDet1: TDataSource
    Top = 446
  end
  inherited dsPesquisaDet1: TDataSource
    Top = 446
  end
  inherited dtListDet1: TIBQuery
    Top = 414
  end
  inherited dtEditDet1: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet2: TDataSource
    Top = 378
  end
  inherited dsLinkDet1: TDataSource
    Top = 378
  end
  inherited dtEditDet2: TIBDataSet
    Top = 414
  end
  inherited dtListDet2: TIBQuery
    Top = 414
  end
  inherited dsRegistroDet3: TDataSource
    Top = 446
  end
  inherited dtEditDet3: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet3: TDataSource
    Top = 378
  end
  inherited dtListDet3: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet3: TDataSource
    Top = 446
  end
  inherited dsRegistroDet4: TDataSource
    Top = 446
  end
  inherited dtEditDet4: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet4: TDataSource
    Top = 378
  end
  inherited dtListDet4: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet4: TDataSource
    Top = 446
  end
  inherited dsRegistroDet5: TDataSource
    Top = 446
  end
  inherited dtEditDet5: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet5: TDataSource
    Top = 378
  end
  inherited dtListDet5: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet5: TDataSource
    Top = 446
  end
  inherited dsRegistroDet6: TDataSource
    Top = 446
  end
  inherited dtEditDet6: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet6: TDataSource
    Top = 378
  end
  inherited dtListDet6: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet6: TDataSource
    Top = 446
  end
  inherited dsRegistroDet7: TDataSource
    Top = 446
  end
  inherited dtEditDet7: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet7: TDataSource
    Top = 378
  end
  inherited dtListDet7: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet7: TDataSource
    Top = 446
  end
  inherited dsRegistroDet8: TDataSource
    Top = 446
  end
  inherited dtEditDet8: TIBDataSet
    Top = 414
  end
  inherited dsLinkDet8: TDataSource
    Top = 378
  end
  inherited dtListDet8: TIBQuery
    Top = 414
  end
  inherited dsPesquisaDet8: TDataSource
    Top = 446
  end
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 635
    Top = 72
  end
  object QryPessoa: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select psa.codigo, psa.nome_razao from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj'
      'order by psa.nome_razao')
    Left = 664
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object QryPessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPessoaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
  end
end
