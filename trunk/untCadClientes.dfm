inherited frmCadClientes: TfrmCadClientes
  Left = 72
  Top = 36
  Width = 1296
  Height = 700
  Caption = 'Clientes'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1280
    Height = 636
    ActivePage = tbsEdita
    HideTabs = True
    ClientRectBottom = 635
    ClientRectLeft = 1
    ClientRectRight = 1279
    ClientRectTop = 1
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Top = 13
        Width = 1278
        Height = 621
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroPESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroNOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroCPF_CGC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CGC'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroCOD_FPAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_FPAGTO'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object TVRegistroCOMPRADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPRADOR'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroFONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_VEND: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_VEND'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object TVRegistroCOD_VEND: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_VEND'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_FPAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_FPAGTO'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object TVRegistroREQUISICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REQUISICAO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object TVRegistroDIA_PREF_FAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIA_PREF_FAT'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object TVRegistroCLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_TEMPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_TEMPO'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_CREDITO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_CREDITO'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object TVRegistroREFERENCIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REFERENCIAS'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object TVRegistroOBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBS'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object TVRegistroBLOQUEADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLOQUEADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object TVRegistroULT_VENDEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ULT_VENDEDOR'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object TVRegistroFREQUENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FREQUENCIA'
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object TVRegistroATIVIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object TVRegistroCEP_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CEP_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object TVRegistroCIDADE_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object TVRegistroCONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object TVRegistroDT_NASC_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_NASC_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object TVRegistroENDERECO_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object TVRegistroENDERECO_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object TVRegistroFONE_LOCAL_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_LOCAL_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object TVRegistroFONE_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object TVRegistroLOCAL_TRAB_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCAL_TRAB_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object TVRegistroLOCAL_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCAL_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object TVRegistroMAE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAE'
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object TVRegistroPAI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PAI'
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object TVRegistroRAMAL_FONE_TRAB: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RAMAL_FONE_TRAB'
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object TVRegistroRAMAL_LOCAL_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RAMAL_LOCAL_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object TVRegistroRENDA_MENSAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RENDA_MENSAL'
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object TVRegistroTEMPO_SERV_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TEMPO_SERV_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object TVRegistroTEMPO_SERVICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TEMPO_SERVICO'
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ_CLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ_CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object TVRegistroCOD_CLASSIF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CLASSIF'
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object TVRegistroPRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRAZO'
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object TVRegistroPERIODO_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERIODO_FATURAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object TVRegistroTOLERANCIA_FATURAMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOLERANCIA_FATURAMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object TVRegistroAJUSTE_AUT_FATURAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AJUSTE_AUT_FATURAS'
            Position.BandIndex = 0
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object TVRegistroTAXA_JUROS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TAXA_JUROS'
            Position.BandIndex = 0
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
          object TVRegistroMEDIA_COMPRAS_MES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MEDIA_COMPRAS_MES'
            Position.BandIndex = 0
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object TVRegistroNAO_COBR_JUR_ATE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NAO_COBR_JUR_ATE'
            Position.BandIndex = 0
            Position.ColIndex = 55
            Position.RowIndex = 0
          end
          object TVRegistroASSINA_NOTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ASSINA_NOTA'
            Position.BandIndex = 0
            Position.ColIndex = 56
            Position.RowIndex = 0
          end
          object TVRegistroCONTROLA_PLACA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTROLA_PLACA'
            Position.BandIndex = 0
            Position.ColIndex = 57
            Position.RowIndex = 0
          end
          object TVRegistroCONTROLA_KM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTROLA_KM'
            Position.BandIndex = 0
            Position.ColIndex = 58
            Position.RowIndex = 0
          end
          object TVRegistroADMISSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ADMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 59
            Position.RowIndex = 0
          end
          object TVRegistroADMISSAO_CONJUGE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ADMISSAO_CONJUGE'
            Position.BandIndex = 0
            Position.ColIndex = 60
            Position.RowIndex = 0
          end
          object TVRegistroNUMERO_TRABALHO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO_TRABALHO'
            Position.BandIndex = 0
            Position.ColIndex = 61
            Position.RowIndex = 0
          end
          object TVRegistroLIMITE_RETIRADAS_DIARIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LIMITE_RETIRADAS_DIARIA'
            Position.BandIndex = 0
            Position.ColIndex = 62
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_MAXIMO_RETIRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_MAXIMO_RETIRADA'
            Position.BandIndex = 0
            Position.ColIndex = 63
            Position.RowIndex = 0
          end
          object TVRegistroNUMERO_PAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO_PAIS'
            Position.BandIndex = 0
            Position.ColIndex = 64
            Position.RowIndex = 0
          end
          object TVRegistroCHEQUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CHEQUE'
            Position.BandIndex = 0
            Position.ColIndex = 65
            Position.RowIndex = 0
          end
          object TVRegistroALIQUOTA_DESCONTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALIQUOTA_DESCONTO'
            Position.BandIndex = 0
            Position.ColIndex = 66
            Position.RowIndex = 0
          end
          object TVRegistroOPTANTE_SIMPLES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OPTANTE_SIMPLES'
            Position.BandIndex = 0
            Position.ColIndex = 67
            Position.RowIndex = 0
          end
          object TVRegistroCONS_REV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONS_REV'
            Position.BandIndex = 0
            Position.ColIndex = 68
            Position.RowIndex = 0
          end
          object TVRegistroSENHA_PDV: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA_PDV'
            Position.BandIndex = 0
            Position.ColIndex = 69
            Position.RowIndex = 0
          end
          object TVRegistroSUB_TRIBUTARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUB_TRIBUTARIO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 70
            Position.RowIndex = 0
          end
          object TVRegistroRET_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_PIS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 71
            Position.RowIndex = 0
          end
          object TVRegistroRET_INSS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_INSS'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 72
            Position.RowIndex = 0
          end
          object TVRegistroRET_IRRF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RET_IRRF'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Position.BandIndex = 0
            Position.ColIndex = 73
            Position.RowIndex = 0
          end
          object TVRegistroBAIRRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BAIRRO'
            Position.BandIndex = 0
            Position.ColIndex = 74
            Position.RowIndex = 0
          end
          object TVRegistroNEG_N_VEZES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NEG_N_VEZES'
            Position.BandIndex = 0
            Position.ColIndex = 75
            Position.RowIndex = 0
          end
          object TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPLEMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 76
            Position.RowIndex = 0
          end
          object TVRegistroCATEGORIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CATEGORIA'
            Position.BandIndex = 0
            Position.ColIndex = 77
            Position.RowIndex = 0
          end
          object TVRegistroSINCRONIZA_FILIAIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SINCRONIZA_FILIAIS'
            Position.BandIndex = 0
            Position.ColIndex = 78
            Position.RowIndex = 0
          end
          object TVRegistroFANTASIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FANTASIA'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroPSA_FONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PSA_FONE'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroFAX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FAX'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroCELULAR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CELULAR'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroCIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE'
            Width = 191
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroBAIRRO_PESSOA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BAIRRO_PESSOA'
            Width = 189
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroLOGRADOURO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOGRADOURO'
            Width = 241
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroNUMERO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO'
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroCEP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CEP'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 1278
        Height = 13
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 1278
        Height = 634
        inherited pnlSubCad: TPanel
          Top = 388
          Width = 1276
          Height = 245
          Align = alClient
          inherited PgcDetalhe: TcxPageControl
            Width = 1276
            Height = 245
            ActivePage = tbsDetalhe1
            Images = cxImageList1
            ClientRectBottom = 241
            ClientRectRight = 1272
            ClientRectTop = 28
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Pre'#231'os Especiais'
              ImageIndex = 45
              inherited PGCSub1: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 641
                    Height = 195
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1PESSOA_FJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PESSOA_FJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1PORCENTAGEM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PORCENTAGEM'
                        Width = 80
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PRODUTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_PRODUTO'
                        Width = 227
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1RESULTADO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'RESULTADO'
                        Width = 75
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1ORIGINAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ORIGINAL'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    DataBinding.DataField = 'PRODUTO'
                  end
                  inherited cxLabel8: TcxLabel
                    Top = 7
                  end
                  object cxButton1: TcxButton
                    Left = 384
                    Top = 23
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    Enabled = False
                    TabOrder = 6
                    OnClick = btnCategoriaClick
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
                  object cmbProduto: TcxDBLookupComboBox
                    Left = 73
                    Top = 24
                    DataBinding.DataField = 'PRODUTO'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsProduto
                    Properties.Revertable = True
                    TabOrder = 1
                    Width = 312
                  end
                  object cxLabel11: TcxLabel
                    Left = 72
                    Top = 7
                    Caption = 'Produto'
                    Transparent = True
                  end
                  object cxDBCalcEdit1: TcxDBCalcEdit
                    Left = 407
                    Top = 23
                    TabStop = False
                    DataBinding.DataField = 'ORIGINAL'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.ReadOnly = True
                    Style.Color = clSilver
                    TabOrder = 2
                    Width = 120
                  end
                  object cxLabel13: TcxLabel
                    Left = 407
                    Top = 7
                    Caption = 'Vlr. Original'
                    Transparent = True
                  end
                  object edtPorcentagem: TcxDBCalcEdit
                    Left = 529
                    Top = 24
                    DataBinding.DataField = 'PORCENTAGEM'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 3
                    OnExit = edtPorcentagemExit
                    Width = 72
                  end
                  object cxLabel14: TcxLabel
                    Left = 528
                    Top = 7
                    Caption = 'Pct (%)'
                    Transparent = True
                  end
                  object edtResultado: TcxDBCalcEdit
                    Left = 602
                    Top = 23
                    DataBinding.DataField = 'RESULTADO'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 4
                    OnExit = edtResultadoExit
                    Width = 120
                  end
                  object cxLabel15: TcxLabel
                    Left = 601
                    Top = 6
                    Caption = 'Vlr. L'#237'quido'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              Caption = 'Ve'#237'culos'
              ImageIndex = 42
              inherited PGCSub2: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub2: TcxTabSheet
                  inherited GridDet2: TcxGrid
                    Width = 843
                    Height = 195
                    inherited TVDet2: TcxGridDBBandedTableView
                      object TVDet2ANO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ANO'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet2CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet2CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet2PESSOA_FJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PESSOA_FJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet2TIPO_VEICULO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_VEICULO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet2MARCA_VEICULO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MARCA_VEICULO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet2MODELO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MODELO'
                        Width = 203
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet2PLACA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PLACA'
                        Width = 76
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet2KM_ATUAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'KM_ATUAL'
                        Width = 72
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet2COMBUSTIVEL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COMBUSTIVEL'
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVDet2MEDIA_KM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MEDIA_KM'
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet2ATIVO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVO'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.ValueChecked = 'S'
                        Properties.ValueUnchecked = 'N'
                        Width = 43
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVDet2MOTORISTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MOTORISTA'
                        Width = 98
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVDet2COR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COR'
                        Width = 140
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                      object TVDet2N_CHASSI: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'N_CHASSI'
                        Width = 161
                        Position.BandIndex = 0
                        Position.ColIndex = 16
                        Position.RowIndex = 0
                      end
                      object TVDet2MARCA_NOME: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MARCA_NOME'
                        Width = 149
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet2TIPO_NOME: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_NOME'
                        Width = 119
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub2: TcxTabSheet
                  inherited edtCodDet2: TcxDBTextEdit
                    DataBinding.DataField = 'CODIGO'
                  end
                  object cxDBTextEdit1: TcxDBTextEdit
                    Left = 74
                    Top = 24
                    DataBinding.DataField = 'MODELO'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    Properties.ReadOnly = False
                    TabOrder = 1
                    Width = 220
                  end
                  object cxLabel17: TcxLabel
                    Left = 74
                    Top = 8
                    Caption = 'Modelo'
                    Transparent = True
                  end
                  object cxDBTextEdit2: TcxDBTextEdit
                    Left = 386
                    Top = 24
                    DataBinding.DataField = 'COR'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 3
                    Width = 95
                  end
                  object cxLabel18: TcxLabel
                    Left = 386
                    Top = 8
                    Caption = 'Cor'
                    Transparent = True
                  end
                  object cxDBTextEdit3: TcxDBTextEdit
                    Left = 296
                    Top = 24
                    DataBinding.DataField = 'ANO'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 2
                    Width = 88
                  end
                  object cxLabel19: TcxLabel
                    Left = 296
                    Top = 8
                    Caption = 'Ano'
                    Transparent = True
                  end
                  object cxDBTextEdit4: TcxDBTextEdit
                    Left = 595
                    Top = 23
                    DataBinding.DataField = 'N_CHASSI'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 5
                    Width = 238
                  end
                  object cxLabel20: TcxLabel
                    Left = 595
                    Top = 7
                    Caption = 'Chassi'
                    Transparent = True
                  end
                  object aTfrmCadTipoVeiculo: TcxDBLookupComboBox
                    Left = 8
                    Top = 64
                    DataBinding.DataField = 'TIPO_VEICULO'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsTipoVeiculo
                    Properties.Revertable = True
                    TabOrder = 6
                    Width = 223
                  end
                  object cxButton2: TcxButton
                    Left = 229
                    Top = 63
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 18
                    OnClick = cxButton2Click
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
                  object cxLabel21: TcxLabel
                    Left = 8
                    Top = 48
                    Caption = 'Tipo'
                    Transparent = True
                  end
                  object cxButton3: TcxButton
                    Left = 476
                    Top = 63
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 20
                    OnClick = cxButton3Click
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
                  object aTfrmCadMarcaVeiculo: TcxDBLookupComboBox
                    Left = 255
                    Top = 64
                    DataBinding.DataField = 'MARCA_VEICULO'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsMarcaVeiculo
                    Properties.Revertable = True
                    TabOrder = 7
                    Width = 223
                  end
                  object cxLabel22: TcxLabel
                    Left = 255
                    Top = 48
                    Caption = 'Marca'
                    Transparent = True
                  end
                  object cxDBCalcEdit4: TcxDBCalcEdit
                    Left = 624
                    Top = 63
                    DataBinding.DataField = 'KM_ATUAL'
                    DataBinding.DataSource = dsRegistroDet2
                    TabOrder = 9
                    Width = 120
                  end
                  object cxLabel23: TcxLabel
                    Left = 624
                    Top = 47
                    Caption = 'Kilometragem'
                    Transparent = True
                  end
                  object cxLabel24: TcxLabel
                    Left = 745
                    Top = 47
                    Caption = 'M'#233'dia KM/L'
                    Transparent = True
                  end
                  object cxDBCalcEdit5: TcxDBCalcEdit
                    Left = 745
                    Top = 63
                    DataBinding.DataField = 'MEDIA_KM'
                    DataBinding.DataSource = dsRegistroDet2
                    TabOrder = 10
                    Width = 88
                  end
                  object cxDBTextEdit5: TcxDBTextEdit
                    Left = 482
                    Top = 23
                    DataBinding.DataField = 'PLACA'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 4
                    Width = 111
                  end
                  object cxLabel25: TcxLabel
                    Left = 482
                    Top = 7
                    Caption = 'Placa'
                    Transparent = True
                  end
                  object cxDBTextEdit6: TcxDBTextEdit
                    Left = 8
                    Top = 103
                    DataBinding.DataField = 'MOTORISTA'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.CharCase = ecUpperCase
                    TabOrder = 11
                    Width = 244
                  end
                  object cxLabel26: TcxLabel
                    Left = 8
                    Top = 87
                    Caption = 'Motorista'
                    Transparent = True
                  end
                  object cxDBCheckBox2: TcxDBCheckBox
                    Left = 254
                    Top = 105
                    Caption = 'Ativo'
                    DataBinding.DataField = 'ATIVO'
                    DataBinding.DataSource = dsRegistroDet2
                    ParentFont = False
                    Properties.ValueChecked = 'R'
                    Properties.ValueUnchecked = 'C'
                    TabOrder = 12
                    Width = 50
                  end
                  object cxDBComboBox1: TcxDBComboBox
                    Left = 502
                    Top = 64
                    DataBinding.DataField = 'COMBUSTIVEL'
                    DataBinding.DataSource = dsRegistroDet2
                    Properties.Items.Strings = (
                      'Alcool'
                      'Diesel'
                      'Gasolina'
                      'G'#225's'
                      'Flex(Al/Gslin)')
                    TabOrder = 8
                    Width = 121
                  end
                  object cxLabel27: TcxLabel
                    Left = 502
                    Top = 48
                    Caption = 'Combust'#237'vel'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              Caption = 'Propriedades'
              ImageIndex = 43
              inherited PGCSub3: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub3: TcxTabSheet
                  inherited GridDet3: TcxGrid
                    Width = 641
                    Height = 195
                    inherited TVDet3: TcxGridDBBandedTableView
                      object TVDet3CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet3PESSOA_FJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PESSOA_FJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet3PROPRIEDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PROPRIEDADE'
                        Width = 107
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME'
                        Width = 277
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet3PROPRIETARIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PROPRIETARIO'
                        Visible = False
                        Width = 228
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet3IE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'IE'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet3ENDERECO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ENDERECO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet3COMPLEMENTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COMPLEMENTO'
                        Visible = False
                        Width = 152
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet3CIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CIDADE'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet3UF: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'UF'
                        Visible = False
                        Width = 32
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet3CEP: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CEP'
                        Visible = False
                        Width = 26
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                      object TVDet3AREA_TOTAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'AREA_TOTAL'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet3OBS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'OBS'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVDet3NUMERO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NUMERO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVDet3BAIRRO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'BAIRRO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVDet3ATIVA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVA'
                        Width = 46
                        Position.BandIndex = 0
                        Position.ColIndex = 29
                        Position.RowIndex = 0
                      end
                      object TVDet3TIPO_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_CONTRATO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 16
                        Position.RowIndex = 0
                      end
                      object TVDet3GARANTIA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'GARANTIA'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 18
                        Position.RowIndex = 0
                      end
                      object TVDet3MODELO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MODELO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 17
                        Position.RowIndex = 0
                      end
                      object TVDet3CPF: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CPF'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 19
                        Position.RowIndex = 0
                      end
                      object TVDet3VENDEDOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VENDEDOR'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 20
                        Position.RowIndex = 0
                      end
                      object TVDet3TECNICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TECNICO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 21
                        Position.RowIndex = 0
                      end
                      object TVDet3CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTRATO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 22
                        Position.RowIndex = 0
                      end
                      object TVDet3REGIAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'REGIAO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 23
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_CIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_CIDADE'
                        Width = 173
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_LOGRADOURO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_LOGRADOURO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 24
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_BAIRRO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_BAIRRO'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 25
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_TIPO_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_TIPO_CONTRATO'
                        Width = 135
                        Position.BandIndex = 0
                        Position.ColIndex = 26
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_MODELO_PROPRIEDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_MODELO_PROPRIEDADE'
                        Width = 151
                        Position.BandIndex = 0
                        Position.ColIndex = 27
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_REGIAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_REGIAO'
                        Width = 114
                        Position.BandIndex = 0
                        Position.ColIndex = 28
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_VENDEDOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_VENDEDOR'
                        Position.BandIndex = 0
                        Position.ColIndex = 30
                        Position.RowIndex = 0
                      end
                      object TVDet3NOME_TECNICO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_TECNICO'
                        Position.BandIndex = 0
                        Position.ColIndex = 31
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub3: TcxTabSheet
                  inherited edtCodDet3: TcxDBTextEdit
                    DataBinding.DataField = 'PROPRIEDADE'
                    TabOrder = 0
                  end
                  object cxDBTextEdit11: TcxDBTextEdit
                    Left = 75
                    Top = 23
                    DataBinding.DataField = 'NOME'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    TabOrder = 1
                    Width = 257
                  end
                  object cxLabel37: TcxLabel
                    Left = 75
                    Top = 6
                    Caption = 'Nome'
                    Transparent = True
                  end
                  object btnLogradouro: TcxButton
                    Left = 554
                    Top = 21
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 17
                    OnClick = btnLogradouroClick
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
                  object btnBairro: TcxButton
                    Left = 307
                    Top = 61
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 18
                    OnClick = btnBairroClick
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
                  object btnRegiao: TcxButton
                    Left = 555
                    Top = 60
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 19
                    OnClick = btnRegiaoClick
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
                  object btnCidade: TcxButton
                    Left = 805
                    Top = 59
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 20
                    OnClick = btnCidadeClick
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
                  object cxDBMemo1: TcxDBMemo
                    Left = 81
                    Top = 124
                    DataBinding.DataField = 'OBS'
                    DataBinding.DataSource = dsRegistroDet3
                    TabOrder = 14
                    Height = 45
                    Width = 748
                  end
                  object cxLabel36: TcxLabel
                    Left = 10
                    Top = 124
                    Caption = 'Observa'#231#245'es'
                    Transparent = True
                  end
                  object bTfrmCadCidades: TcxDBLookupComboBox
                    Left = 582
                    Top = 61
                    DataBinding.DataField = 'CIDADE'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end
                      item
                        FieldName = 'UF'
                      end>
                    Properties.ListSource = dsCidades
                    TabOrder = 8
                    Width = 223
                  end
                  object cxLabel34: TcxLabel
                    Left = 582
                    Top = 45
                    Caption = 'Cidade'
                    Transparent = True
                  end
                  object cxDBMaskEdit2: TcxDBMaskEdit
                    Left = 8
                    Top = 60
                    DataBinding.DataField = 'CEP'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.EditMask = '00000\-999;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 5
                    Width = 73
                  end
                  object cxLabel28: TcxLabel
                    Left = 8
                    Top = 44
                    Caption = 'CEP'
                    Transparent = True
                  end
                  object aTfrmCadRegiao: TcxDBLookupComboBox
                    Left = 333
                    Top = 61
                    DataBinding.DataField = 'REGIAO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsRegiao
                    TabOrder = 7
                    Width = 223
                  end
                  object cxLabel35: TcxLabel
                    Left = 333
                    Top = 45
                    Caption = 'Regi'#227'o'
                    Transparent = True
                  end
                  object bTfrmCadLogradouro: TcxDBLookupComboBox
                    Left = 333
                    Top = 23
                    DataBinding.DataField = 'ENDERECO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsLogradouroProp
                    TabOrder = 2
                    Width = 223
                  end
                  object cxLabel32: TcxLabel
                    Left = 333
                    Top = 7
                    Caption = 'Logradouro'
                    Transparent = True
                  end
                  object cxDBTextEdit9: TcxDBTextEdit
                    Left = 583
                    Top = 22
                    DataBinding.DataField = 'NUMERO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    TabOrder = 3
                    Width = 58
                  end
                  object cxLabel31: TcxLabel
                    Left = 583
                    Top = 6
                    Caption = 'N'#250'mero'
                    Transparent = True
                  end
                  object cxDBTextEdit7: TcxDBTextEdit
                    Left = 642
                    Top = 22
                    DataBinding.DataField = 'COMPLEMENTO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    TabOrder = 4
                    Width = 187
                  end
                  object cxLabel30: TcxLabel
                    Left = 640
                    Top = 5
                    Caption = 'Complemento'
                    Transparent = True
                  end
                  object aTfrmCadBairros: TcxDBLookupComboBox
                    Left = 83
                    Top = 61
                    DataBinding.DataField = 'BAIRRO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsBairros
                    TabOrder = 6
                    Width = 223
                  end
                  object cxLabel33: TcxLabel
                    Left = 83
                    Top = 45
                    Caption = 'Bairro'
                    Transparent = True
                  end
                  object cxDBMaskEdit1: TcxDBMaskEdit
                    Left = 9
                    Top = 99
                    DataBinding.DataField = 'IE'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.EditMask = '00000\-999;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 9
                    Width = 73
                  end
                  object cxLabel38: TcxLabel
                    Left = 9
                    Top = 83
                    Caption = 'IE'
                    Transparent = True
                  end
                  object cxDBCalcEdit12: TcxDBCalcEdit
                    Left = 253
                    Top = 99
                    DataBinding.DataField = 'AREA_TOTAL'
                    DataBinding.DataSource = dsRegistroDet3
                    TabOrder = 11
                    Width = 78
                  end
                  object cxLabel39: TcxLabel
                    Left = 252
                    Top = 82
                    Caption = #193'rea'
                    Transparent = True
                  end
                  object cxDBMaskEdit3: TcxDBMaskEdit
                    Left = 83
                    Top = 99
                    DataBinding.DataField = 'CPF'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.EditMask = '00000\-999;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 10
                    Width = 170
                  end
                  object cxLabel40: TcxLabel
                    Left = 83
                    Top = 83
                    Caption = 'CPF/CNPJ'
                    Transparent = True
                  end
                  object btnTecnico: TcxButton
                    Left = 556
                    Top = 98
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 32
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
                  object aTfrmCadTecnicos: TcxDBLookupComboBox
                    Left = 334
                    Top = 99
                    DataBinding.DataField = 'TECNICO'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsTecnicoProp
                    TabOrder = 12
                    Width = 223
                  end
                  object cxLabel41: TcxLabel
                    Left = 334
                    Top = 83
                    Caption = 'T'#233'cnico'
                    Transparent = True
                  end
                  object btnVendedor: TcxButton
                    Left = 805
                    Top = 98
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 34
                    OnClick = btnVendedorClick
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
                  object bTfrmCadVendedor2: TcxDBLookupComboBox
                    Left = 582
                    Top = 99
                    DataBinding.DataField = 'VENDEDOR'
                    DataBinding.DataSource = dsRegistroDet3
                    Properties.CharCase = ecUpperCase
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsVendedorProp
                    TabOrder = 13
                    Width = 223
                  end
                  object cxLabel43: TcxLabel
                    Left = 582
                    Top = 83
                    Caption = 'Vendedor'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              Caption = 'Contas Correntes'
              ImageIndex = 44
              inherited PGCSub4: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub4: TcxTabSheet
                  inherited GridDet4: TcxGrid
                    Width = 837
                    Height = 172
                    inherited TVDet4: TcxGridDBBandedTableView
                      object TVDet4AGENCIA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'AGENCIA'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet4BANCO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'BANCO'
                        Width = 75
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet4CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet4CONTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTA'
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet4PESSOA_FJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PESSOA_FJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet4DV_AGENCIA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DV_AGENCIA'
                        Width = 83
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet4DV_CONTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DV_CONTA'
                        Width = 55
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet4NOME_BANCO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME_BANCO'
                        Width = 179
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub4: TcxTabSheet
                  inherited edtCodDet4: TcxDBTextEdit
                    DataBinding.DataField = 'CONTA'
                  end
                  object aTfrmCadBancos: TcxDBLookupComboBox
                    Left = 73
                    Top = 24
                    DataBinding.DataField = 'BANCO'
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsBanco
                    Properties.Revertable = True
                    TabOrder = 1
                    Width = 223
                  end
                  object btnBanco: TcxButton
                    Left = 295
                    Top = 23
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 7
                    OnClick = btnBancoClick
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
                  object cxLabel44: TcxLabel
                    Left = 72
                    Top = 8
                    Caption = 'Banco'
                    Transparent = True
                  end
                  object cxDBMaskEdit4: TcxDBMaskEdit
                    Left = 320
                    Top = 24
                    DataBinding.DataField = 'AGENCIA'
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 2
                    Width = 57
                  end
                  object cxLabel47: TcxLabel
                    Left = 320
                    Top = 7
                    Caption = 'Ag'#234'ncia'
                    Transparent = True
                  end
                  object cxDBMaskEdit5: TcxDBMaskEdit
                    Left = 380
                    Top = 24
                    DataBinding.DataField = 'DV_AGENCIA'
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 3
                    Width = 21
                  end
                  object cxDBMaskEdit6: TcxDBMaskEdit
                    Left = 491
                    Top = 24
                    DataBinding.DataField = 'DV_CONTA'
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 5
                    Width = 21
                  end
                  object cxDBMaskEdit7: TcxDBMaskEdit
                    Left = 407
                    Top = 24
                    DataBinding.DataField = 'CONTA'
                    DataBinding.DataSource = dsRegistroDet4
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 4
                    Width = 82
                  end
                  object cxLabel48: TcxLabel
                    Left = 407
                    Top = 7
                    Caption = 'Conta'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
              inherited PGCSub5: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub5: TcxTabSheet
                  inherited GridDet5: TcxGrid
                    Width = 845
                    Height = 173
                  end
                end
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
              inherited PGCSub6: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub6: TcxTabSheet
                  inherited GridDet6: TcxGrid
                    Width = 845
                    Height = 173
                  end
                end
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
              inherited PGCSub7: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub7: TcxTabSheet
                  inherited GridDet7: TcxGrid
                    Width = 845
                    Height = 173
                  end
                end
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
              inherited PGCSub8: TcxPageControl
                Width = 1268
                Height = 213
                ClientRectBottom = 209
                ClientRectRight = 1264
                inherited tbsListaSub8: TcxTabSheet
                  inherited GridDet8: TcxGrid
                    Width = 845
                    Height = 173
                  end
                end
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 1276
          Height = 387
          Align = alTop
          inherited PgcMaster: TcxPageControl
            Width = 1276
            Height = 387
            ClientRectBottom = 383
            ClientRectRight = 1272
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Geral'
              object cxGroupBox1: TcxGroupBox [0]
                Left = 0
                Top = 0
                TabStop = True
                Align = alTop
                PanelStyle.Active = True
                TabOrder = 1
                Height = 89
                Width = 1268
                object aTfrmCadPessoas: TcxDBLookupComboBox
                  Tag = 1
                  Left = 75
                  Top = 16
                  DataBinding.DataField = 'PESSOA_FJ'
                  DataBinding.DataSource = dsRegistro
                  Properties.CharCase = ecUpperCase
                  Properties.KeyFieldNames = 'CODIGO'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NOME_RAZAO'
                    end>
                  Properties.ListSource = dsPessoa
                  TabOrder = 0
                  Width = 502
                end
                object cxLabel12: TcxLabel
                  Left = 74
                  Top = 0
                  Caption = 'Pessoa '
                  Transparent = True
                end
                object btnCadPessoa: TcxButton
                  Left = 577
                  Top = 15
                  Width = 23
                  Height = 22
                  Cursor = crHandPoint
                  TabOrder = 2
                  TabStop = False
                  OnClick = btnCadPessoaClick
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
                object cxDBTextEdit12: TcxDBTextEdit
                  Left = 8
                  Top = 56
                  DataBinding.DataField = 'FANTASIA'
                  DataBinding.DataSource = dsRegistro
                  Enabled = False
                  Properties.CharCase = ecUpperCase
                  TabOrder = 3
                  Width = 591
                end
                object cxLabel49: TcxLabel
                  Left = 8
                  Top = 40
                  Caption = 'Fantasia'
                  Transparent = True
                end
              end
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'PESSOA_FJ'
                TabOrder = 0
              end
              object PCCLIENTE: TcxPageControl
                Left = 0
                Top = 89
                Width = 1268
                Height = 267
                ActivePage = dxTabSheet1
                Align = alClient
                HotTrack = True
                TabOrder = 3
                ClientRectBottom = 263
                ClientRectLeft = 4
                ClientRectRight = 1264
                ClientRectTop = 27
                object dxTabSheet1: TcxTabSheet
                  Caption = 'Dados Cliente'
                  object Btnclassificacao: TcxButton
                    Left = 464
                    Top = 25
                    Width = 25
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 17
                    TabStop = False
                    OnClick = BtnclassificacaoClick
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
                  object cxDBTextEdit8: TcxDBTextEdit
                    Left = 4
                    Top = 146
                    DataBinding.DataField = 'COMPRADOR'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    TabOrder = 9
                    Width = 220
                  end
                  object cxLabel16: TcxLabel
                    Left = 4
                    Top = 129
                    Caption = 'Contato'
                    Transparent = True
                  end
                  object cxDBMaskEdit11: TcxDBMaskEdit
                    Left = 366
                    Top = 107
                    DataBinding.DataField = 'FONE'
                    DataBinding.DataSource = dsRegistro
                    Properties.EditMask = '!\(99\)0000-0000;1;_'
                    Properties.MaxLength = 0
                    TabOrder = 8
                    Width = 117
                  end
                  object cxLabel29: TcxLabel
                    Left = 366
                    Top = 90
                    Caption = 'Fone'
                    Transparent = True
                  end
                  object aTfrmCadVendedor2: TcxDBLookupComboBox
                    Left = 4
                    Top = 66
                    DataBinding.DataField = 'COD_VEND'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsVendedor
                    Properties.Revertable = True
                    TabOrder = 2
                    Width = 223
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
                    Properties.ListSource = dsFormaPagto
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
                    Left = 253
                    Top = 90
                    Caption = 'Dia Fat.'
                    Transparent = True
                  end
                  object cxDBSpinEdit3: TcxDBSpinEdit
                    Left = 253
                    Top = 107
                    DataBinding.DataField = 'DIA_PREF_FAT'
                    DataBinding.DataSource = dsRegistro
                    Properties.MaxValue = 30.000000000000000000
                    TabOrder = 6
                    Width = 53
                  end
                  object cxLabel83: TcxLabel
                    Left = 372
                    Top = 48
                    Caption = 'Lmt. Tempo(dias)'
                    Transparent = True
                  end
                  object cxDBSpinEdit4: TcxDBSpinEdit
                    Left = 374
                    Top = 67
                    DataBinding.DataField = 'LIMITE_TEMPO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 4
                    Width = 111
                  end
                  object cxDBSpinEdit5: TcxDBSpinEdit
                    Left = 307
                    Top = 107
                    DataBinding.DataField = 'PRAZO'
                    DataBinding.DataSource = dsRegistro
                    Properties.MaxValue = 90.000000000000000000
                    TabOrder = 7
                    Width = 57
                  end
                  object cxLabel85: TcxLabel
                    Left = 307
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
                    TabOrder = 13
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
                    TabOrder = 15
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
                    TabOrder = 14
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
                    Left = 427
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
                    TabOrder = 12
                    Height = 49
                    Width = 94
                  end
                  object cxDBRadioGroup4: TcxDBRadioGroup
                    Left = 234
                    Top = 168
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
                    TabOrder = 11
                    Height = 51
                    Width = 189
                  end
                  object cxDBRadioGroup5: TcxDBRadioGroup
                    Left = 6
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
                    Width = 226
                  end
                  object cxLabel88: TcxLabel
                    Left = 253
                    Top = 8
                    Caption = 'Classifica'#231#227'o'
                    Transparent = True
                  end
                  object aTfrmCadClassificacao: TcxDBLookupComboBox
                    Left = 253
                    Top = 26
                    DataBinding.DataField = 'COD_CLASSIF'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsClassificacao
                    Properties.Revertable = True
                    TabOrder = 1
                    Width = 212
                  end
                  object cxLabel89: TcxLabel
                    Left = 253
                    Top = 48
                    Caption = 'Limite Cr'#233'dito'
                    Transparent = True
                  end
                  object cxDBCalcEdit6: TcxDBCalcEdit
                    Left = 253
                    Top = 66
                    DataBinding.DataField = 'LIMITE_CREDITO'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 3
                    Width = 120
                  end
                  object aTFrmCadCategoriaClientes: TcxDBLookupComboBox
                    Left = 4
                    Top = 26
                    DataBinding.DataField = 'CATEGORIA'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsCategoria
                    Properties.Revertable = True
                    TabOrder = 0
                    Width = 223
                  end
                  object cxLabel10: TcxLabel
                    Left = 4
                    Top = 8
                    Caption = 'Categorias'
                    Transparent = True
                  end
                  object btnCategoria: TcxButton
                    Left = 227
                    Top = 25
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 31
                    TabStop = False
                    OnClick = btnCategoriaClick
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
                    TabOrder = 16
                    Width = 121
                  end
                  object btnCadVendedor: TcxButton
                    Left = 227
                    Top = 65
                    Width = 24
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 32
                    TabStop = False
                    OnClick = btnCadVendedorClick
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
                  object cxDBMemo4: TcxDBMemo
                    Left = 634
                    Top = 21
                    DataBinding.DataField = 'OBS_PESSOA'
                    DataBinding.DataSource = dsRegistro
                    Enabled = False
                    Properties.ReadOnly = True
                    TabOrder = 33
                    Height = 211
                    Width = 335
                  end
                  object cxLabel50: TcxLabel
                    Left = 634
                    Top = 4
                    Caption = 'Observa'#231#245'es'
                    Transparent = True
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
                    Height = 87
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
                    TabOrder = 10
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
                    TabOrder = 13
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
                    TabOrder = 12
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
                    TabOrder = 11
                    Width = 146
                  end
                  object cxDBTextEdit10: TcxDBTextEdit
                    Left = 383
                    Top = 61
                    DataBinding.DataField = 'SENHA_PDV'
                    DataBinding.DataSource = dsRegistro
                    Properties.CharCase = ecUpperCase
                    Properties.PasswordChar = '*'
                    TabOrder = 9
                    Width = 121
                  end
                  object cxLabel92: TcxLabel
                    Left = 383
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
                    TabOrder = 14
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
                    TabOrder = 15
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
                    Enabled = False
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
                  object cxDBCheckBox3: TcxDBCheckBox
                    Left = 613
                    Top = 89
                    Caption = 'Ajuste Aut. Nos Pre'#231'os'
                    DataBinding.DataField = 'AJUSTE_AUT_FATURAS'
                    DataBinding.DataSource = dsRegistro
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 16
                    Width = 140
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
                    TabOrder = 14
                    TabStop = False
                    OnClick = BtnAtividadeClick
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
                    TabOrder = 15
                    TabStop = False
                    OnClick = BtnEnderecoPaiClick
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
                    Left = 631
                    Top = 97
                    Width = 23
                    Height = 22
                    Cursor = crHandPoint
                    TabOrder = 16
                    TabStop = False
                    OnClick = BtnCidadePaiClick
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
                    TabOrder = 4
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
                    TabOrder = 1
                    Width = 59
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
                    TabOrder = 5
                    Width = 90
                  end
                  object cxLabel109: TcxLabel
                    Left = 4
                    Top = 45
                    Caption = 'Atividade'
                    Transparent = True
                  end
                  object aTfrmCadAtividades: TcxDBLookupComboBox
                    Left = 4
                    Top = 62
                    DataBinding.DataField = 'ATIVIDADE'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsAtividade
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 6
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
                    TabOrder = 7
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
                    TabOrder = 8
                    Width = 253
                  end
                  object cxLabel112: TcxLabel
                    Left = 4
                    Top = 83
                    Caption = 'Endere'#231'o'
                    Transparent = True
                  end
                  object aTfrmCadLogradouro: TcxDBLookupComboBox
                    Left = 4
                    Top = 100
                    DataBinding.DataField = 'ENDERECO_PAIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsLogradouroPai
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 9
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
                  object aTfrmCadCidades: TcxDBLookupComboBox
                    Left = 344
                    Top = 99
                    DataBinding.DataField = 'CIDADE_PAIS'
                    DataBinding.DataSource = dsRegistro
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end>
                    Properties.ListSource = dsCidades
                    Style.BorderStyle = ebsUltraFlat
                    TabOrder = 11
                    Width = 285
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
                    TabOrder = 2
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
                    Properties.MaxLength = 0
                    TabOrder = 3
                    Width = 47
                  end
                  object cxLabel117: TcxLabel
                    Left = 656
                    Top = 82
                    Caption = 'Renda Cliente'
                    Transparent = True
                  end
                  object cxDBCalcEdit11: TcxDBCalcEdit
                    Left = 656
                    Top = 99
                    DataBinding.DataField = 'RENDA_MENSAL'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 12
                    Width = 121
                  end
                  object cxDBMaskEdit15: TcxDBMaskEdit
                    Left = 269
                    Top = 99
                    DataBinding.DataField = 'NUMERO_PAIS'
                    DataBinding.DataSource = dsRegistro
                    TabOrder = 10
                    Width = 73
                  end
                  object cxGroupBox7: TcxGroupBox
                    Left = 4
                    Top = 127
                    Caption = 'Dados do Conjuge'
                    TabOrder = 13
                    Height = 102
                    Width = 780
                    object BtnEnderecoTrab: TcxButton
                      Left = 752
                      Top = 27
                      Width = 23
                      Height = 22
                      Cursor = crHandPoint
                      TabOrder = 8
                      TabStop = False
                      OnClick = BtnEnderecoTrabClick
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
                    object cTfrmCadLogradouro: TcxDBLookupComboBox
                      Left = 518
                      Top = 29
                      DataBinding.DataField = 'ENDERECO_TRABALHO'
                      DataBinding.DataSource = dsRegistro
                      Properties.KeyFieldNames = 'CODIGO'
                      Properties.ListColumns = <
                        item
                          FieldName = 'NOME'
                        end>
                      Properties.ListSource = dsLogradouroConj
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
                object cxTabSheet1: TcxTabSheet
                  Caption = 'Ordens de Servi'#231'o'
                  ImageIndex = 3
                  object Panel6: TPanel
                    Left = 0
                    Top = 0
                    Width = 843
                    Height = 18
                    Align = alTop
                    Caption = 'Contratos'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -12
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 0
                  end
                  object GridContratos: TcxGrid
                    Left = 0
                    Top = 18
                    Width = 843
                    Height = 83
                    Align = alTop
                    TabOrder = 1
                    object TVContratos: TcxGridDBBandedTableView
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsLinkContrato
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                      object TVContratosCODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 92
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVContratosNUM_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NUM_CONTRATO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 160
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVContratosDT_INICIO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_INICIO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVContratosDT_FIM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_FIM'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVContratosATIVO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVO'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 49
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVContratosCOD_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_CONTRATO'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 89
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVContratosTIPO_CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_CONTRATO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 240
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVContratosDATA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DATA'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVContratosCNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                    end
                    object LVContratos: TcxGridLevel
                      GridView = TVContratos
                    end
                  end
                  object GridEquipamento: TcxGrid
                    Left = 0
                    Top = 120
                    Width = 843
                    Height = 111
                    Align = alClient
                    TabOrder = 2
                    object TVEquipamentos: TcxGridDBBandedTableView
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsEquipamento
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsView.GroupByBox = False
                      OptionsView.BandHeaders = False
                      Bands = <
                        item
                        end>
                      object TVEquipamentosCNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosCODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosCOD_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_PRODUTO'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosCONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTRATO'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 77
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDT_ADICAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_ADICAO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDATA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DATA'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosATIVO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVO'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 51
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosPRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PRODUTO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 250
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosSERIE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SERIE'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 69
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosTIPO_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_PRODUTO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 63
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosMEDIA_COPIAS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MEDIA_COPIAS'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosQTDE_COPIAS_PREVENTIVA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'QTDE_COPIAS_PREVENTIVA'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDIAS_RECHAMADO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DIAS_RECHAMADO'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosTEMPO_RESPOSTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TEMPO_RESPOSTA'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosINFORMACOES_ITENS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'INFORMACOES_ITENS'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDT_RETIRADA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_RETIRADA'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 16
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosCOD_INDEXADOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_INDEXADOR'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 17
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDT_VIGENCIA_INICIAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_VIGENCIA_INICIAL'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 18
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosDT_VIGENCIA_FINAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_VIGENCIA_FINAL'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 19
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosVALOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VALOR'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 20
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosMODELO_EQUIPAMENTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MODELO_EQUIPAMENTO'
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Width = 171
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVEquipamentosGERA_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'GERA_LEITURA'
                        Visible = False
                        Options.Editing = False
                        Options.Filtering = False
                        Options.FilteringFilteredItemsList = False
                        Options.FilteringMRUItemsList = False
                        Options.FilteringPopup = False
                        Options.FilteringPopupMultiSelect = False
                        Options.Focusing = False
                        Options.IgnoreTimeForFiltering = False
                        Options.GroupFooters = False
                        Options.Grouping = False
                        Position.BandIndex = 0
                        Position.ColIndex = 21
                        Position.RowIndex = 0
                      end
                    end
                    object LVEquipamento: TcxGridLevel
                      GridView = TVEquipamentos
                    end
                  end
                  object Panel5: TPanel
                    Left = 0
                    Top = 101
                    Width = 843
                    Height = 19
                    Align = alTop
                    Caption = 'Equipamentos do Contrato'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -13
                    Font.Name = 'Tahoma'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                  end
                end
                object cxTabSheet2: TcxTabSheet
                  Caption = 'Localiza'#231#227'o Geogr'#225'fica'
                  ImageIndex = 4
                end
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
      'select c.*, psa.fantasia from glo_clientes c'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = c.cnpj and psa.codi' +
        'go = c.pessoa_fj)'
      'where'
      '  c.CNPJ = :CNPJ and'
      '  c.PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select c.*, psa.fantasia, psa.obs OBS_PESSOA from glo_clientes c'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = c.cnpj and psa.codi' +
        'go = c.pessoa_fj)'
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
    end
    object dtEditVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
    object dtEditFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object dtEditOBS_PESSOA: TBlobField
      FieldName = 'OBS_PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      
        'select cli.*, psa.nome_razao, psa.fantasia, psa.fone psa_fone, p' +
        'sa.fax, psa.celular, cdd.nome cidade , bro.nome BAIRRO_PESSOA, l' +
        'og.nome LOGRADOURO, psa.numero, psa.cep,'
      'case                /* '#39'00.000.000/0000-00'#39'*/'
      '                                    /*'#39'000\.000\.000\-00*/'
      
        '                when substring(psa.CPF_CGC from 13 for 1) <> '#39#39' ' +
        'then'
      
        '                ( substring(psa.CPF_CGC from 1 for 2)||'#39'.'#39'||subs' +
        'tring(psa.CPF_CGC from 3 for 3)||'#39'.'#39'||substring(psa.CPF_CGC from' +
        ' 6 for 3)||'#39'/'#39'||substring(psa.CPF_CGC from 9 for 4)||'#39'-'#39'||substr' +
        'ing(psa.CPF_CGC from 13 for 2) )'
      
        '                when substring(psa.CPF_CGC from 1 for 1) <> '#39#39' t' +
        'hen '
      
        '                ( substring(psa.CPF_CGC from 1 for 3)||'#39'.'#39'||subs' +
        'tring(psa.CPF_CGC from 4 for 3)||'#39'.'#39'||substring(psa.CPF_CGC from' +
        ' 7 for 3)||'#39'-'#39'||substring(psa.CPF_CGC from 10 for 2) )'
      '                else'
      '                  psa.CPF_CGC'
      '                end  as CPF_CGC'
      '                '
      'from glo_clientes cli'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = cli.cnpj and psa.co' +
        'digo = cli.pessoa_fj)'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_bairros bro on (bro.cnpj = psa.cnpj and bro.codigo' +
        ' = psa.bairro)'
      
        'left join glo_logradouros log on (log.cnpj = psa.cnpj and log.co' +
        'digo = psa.endereco)'
      'where cli.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
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
      Tag = 1
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
    end
    object dtListVALOR_MAXIMO_RETIRADA: TFloatField
      DisplayLabel = 'Vlr. Max. Retirada'
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
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
      ProviderFlags = []
      Size = 79
    end
    object dtListFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object dtListPSA_FONE: TIBStringField
      DisplayLabel = 'Fone (Pessoa)'
      FieldName = 'PSA_FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object dtListFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object dtListCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object dtListCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListBAIRRO_PESSOA: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO_PESSOA'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object dtListLOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object dtListNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object dtListCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
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
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
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
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000FF000000FF000000FF0000000000000000007F7F7F00000000007F7F
          7F0000000000000000000000FF000000FF000000FF0000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          000000000000000000000000FF000000FF000000FF007F7F7F00000000007F7F
          7F000000FF000000FF000000FF00000000000000000000000000000000000000
          00000000000000000000000000000000FF000000FF000000FF00000000000000
          FF000000FF000000FF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FF000000FF00000000000000
          FF000000FF000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000008000000000000000
          8000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000FF0000008000000000000000
          80000000FF000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000FF000000FF0000000000000000000000
          00000000FF000000FF0000000000000000000000000000000000000000000000
          000000000000000000000000FF000000FF000000FF0000000000000000000000
          00000000FF000000FF000000FF00000000000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          0000000000000000FF000000FF000000FF000000000000000000000000000000
          00000000FF000000FF000000FF0000000000000000007F7F7F00000000007F7F
          7F0000000000000000000000FF000000FF000000FF0000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000C6310000E2230000F0070000F88F0000FC1F0000FE3F
          0000FC1F0000F80F0000F0070000E2230000C6310000FFFF0000FFFF0000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
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
          0000FFFFFF00FFFFFF000000000000000000FFFFFF0000000000000000000000
          0000000000000000000000000000000000000000000000FFFF0000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF0000000000000000000000
          00000000000000000000000000000000000000FFFF0000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          000000000000000000000000000000FFFF0000000000FFFFFF00FFFFFF000000
          000000000000FFFFFF0000000000FFFFFF00FFFFFF0000000000000000000000
          0000000000000000000000FFFF000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000FFFFFF000000000000000000000000000000
          0000000000000000FF00000000000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FC000000FC00000020000000000000000000000000000000000000000000
          00000000000000000000E0000000F8000000F0000000E0010000C4030000EC07
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF007F7F7F007F7F7F007F7F7F007F7F7F007F7F
          7F007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF0000000000BFBFBF000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF0000000000BFBFBF00000000007F7F7F000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          000000000000000000007F7F7F00000000007F7F7F00000000007F7F7F000000
          00007F7F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000FFFFFF00BFBFBF00BFBFBF00BFBFBF007F7F7F007F7F7F007F7F
          7F007F7F7F007F7F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007F7F7F007F7F7F007F7F7F000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00E00F0000E00F0000E00F0000E00F0000E00F0000E00F0000E00F0000A00B
          0000C0070000E00F0000E00F0000C0070000C0070000C0070000F83F0000F83F
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000066000000FFFF0000FF000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000006600
          0000FFFF0000FF000000FF000000000000000000000000000000000000000000
          000000000000666666000000000000000000000000000000000066000000FFFF
          0000FF000000FF00000000000000000000000000000000000000000000000000
          00000000000066666600FFFFFF00FFFFFF00FFFFFF0066000000FFFF0000FF00
          0000FF00000000000000FFFFFF00000000000000000000000000000000000000
          0000000000006666660000000000000000006666660000000000FF000000FF00
          000000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
          00006666660000000000FFFF0000000000000000000066666600666666000000
          0000FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000006666
          6600FFFFFF00FFFF000000000000FFFF0000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000006666
          6600FFFF0000FFFFFF00FFFF000000000000FFFF00000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000006666
          6600FFFFFF00FFFF0000FFFFFF00FFFF0000000000000000000000000000FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          000066666600FFFFFF00FFFF0000FFFFFF000000000000000000FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000066666600666666000000000000000000FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000000000000000000000000000000000000000000000000
          00000000000066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF0000000000FFFFFF00666666000000000000000000000000000000
          00000000000066666600FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF000000000066666600000000000000000000000000000000000000
          0000000000006666660066666600666666006666660066666600666666006666
          6600666666006666660000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFE70000FFC30000E0010000EF0D0000E0150000E1250000D44500008A85
          00008485000082850000C1050000E2050000E0010000E0130000E0170000E00F
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
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF0000000000FFFFFF0000000000000000000000000000000000000000000000
          00000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000FFFF0000E0030000E0030000E0030000E0030000E0030000E003
          0000E0030000E0030000E0030000E0030000E0070000E00F0000E01F0000FFFF
          0000}
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
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF000080000000800000008000000080000000600100003FFF00003003
          000017FA00001002000017FA00001002000016020000100200001FFE00000000
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
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F7F00007F
          7F00007F7F00007F7F00007F7F00007F7F000000000000000000000000000000
          0000007F7F00007F7F0000000000000000000000000000000000000000000000
          00000000000000000000007F7F00007F7F000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000007F7F000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000007F7F000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00FFFF0000C001000080310000803100008031000080010000800100008001
          00008FF100008FF100008FF100008FF100008FF100008FF5000080010000FFFF
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000BFBFBFC2DADA
          DADEDADADADEDADADADEDADADADEDADADADEDADADADED7D7D7DEDADADADEDADA
          DADEDADADADEDADADADEDADADADEDADADADEDADADADEBEBEBEC1DBDBDBDFFEFE
          FEFFFAFAFAFFF2F2F2FFE5E5E5FFD3D3D3FFB7B7B7FFA2A2A2FFBFBFBFFFE8E8
          E8FFFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADADEDBDBDBDFE1E1
          E1FFAAAAAAFF9D9D9CFF979691FF838079FF4F4E4DFF606060FF6A6A6AFF9494
          94FFBCBCBCFFE4E4E4FFFAFAFAFFFFFFFFFFFFFFFFFFDADADADED3D3CDDFC2C1
          BBFF9D9C97FFA6A39AFF9D9384FF7C7477FF6C6560FF5C5C5BFF3B3B3BFF6A69
          67FF81807EFF929292FFB6B6B6FFE0E0E0FFF8F8F8FFDADADADEA19B92DF9E96
          88FF878480FF8D8681FFA28B7AFF827895FF8C8481FF6A6664FF1D1C1BFF4D46
          39FF807765FF7E7971FF7D7B7AFF757575FF9F9F9FFFBFBFBFDE9C8E93DFAC9E
          92FFADA7A3FFC5C0BCFFCFC8C4FFAEA7A3FF8B837AFF958D84FF414A36FF4548
          2CFF685F48FF7C7260FF82786EFF585654FF706F6FFFABABABDEAAA9A3DFA19C
          98FF8C8884FF827D78FF868079FF98918BFF908880FF888177FF397933FF1565
          0CFF296119FF45602EFF606245FF524D41FF44403CFF908982DE959595DF5756
          56FF403E3CFF4D4944FF655F58FF8B847DFF625C57FF504D48FF2F792EFF0873
          07FF087608FF0A7E0CFF178015FF307724FF496734FF6E6E5ADEBDBDBCDF9897
          97FF7B7A7AFF6E6C6AFF797571FF928C86FF6B6661FF454441FF2B792BFF077E
          0AFF06820AFF068A0BFF06910DFF07990EFF0E9D12FF4A9646DED4D4D4DFC8C6
          C5FFB2AFACFFB1ACA7FFBAB5AFFFC7C3BEFFAFAEA4FF808775FF2E852DFF058A
          0CFF068D0CFF06920DFF07980EFF08A00FFF09A810FF46AB4ADEDBDBDBDFF8F7
          F6FFEAE7E4FFD7D7CEFF82B37DFF56A355FF419F43FF28972BFF0C9012FF0694
          0DFF06970DFF079B0EFF07A00EFF08A60FFF09AD10FF46AE4BDEDBDBDBDFFFFF
          FFFFFFFFFFFFEDF8EDFF43BE48FF09A910FF08A70FFF08A40FFF08A310FF08A3
          0FFF08A20FFF08A40FFF08A80FFF09AE10FF0AB411FF46B04BDEDBDBDBDFFFFF
          FFFFFFFFFFFFF7FDF7FF97E09AFF4CCF52FF28CB30FF14CA1DFF0FCB18FF0ECA
          16FF0DC315FF0CBD13FF0BB912FF0AB812FF0BB712FF46B14CDEDBDBDBDFFFFF
          FFFFFFFFFFFFFFFFFFFFFDFEFDFFF1FCF1FFD5F6D6FFA9EDADFF73E278FF45DA
          4CFF28D630FF26D52EFF33D53AFF48D64EFF61D766FF89C589DEDBDBDBDFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFEFBFFECFB
          EDFFD5F6D7FFD4F6D5FFE2F9E3FFEFFBEFFFF9FEF9FFDADADADEC0C0C0C3DBDB
          DBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDB
          DBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFDBDBDBDFBFBFBFC2}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000ECECECF0F7F7
          F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF6F6F6FBF6F6F6FBF5F5F5FBF3F3
          F3FBF4F4F4FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBECECECF0F7F7F7FBFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCFFF3F2F2FFE2E0DEFFCFC9C3FFC0B4
          AAFFC9C1B8FFF4F4F3FFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7FBF6F6F6FBFFFF
          FFFFF9F9F9FFEAE8E6FFD2C7BEFFC3AC8EFFC6AC8FFFCFB091FFDCB997FFE5C3
          A3FFD2AF8EFFC9BBADFFF2F1F1FFFFFFFFFFFFFFFFFFF7F7F7FBF5F5F5FBFCFB
          FBFFD3C5B9FFC09E80FFA96322FFC77712FFE6B173FFECC39BFFECC8A4FFEBCE
          B2FFDFB891FFD2AB84FFC5B6A7FFEFEEEDFFFFFFFFFFF6F6F6FBEFEEEDFBFBFA
          F9FFDCC0A6FFD9A575FFB66011FFCD780DFFE4B277FFCD945EFFD6984CFFE8CE
          AFFFDFBA95FFDFB487FFD8B78EFFD5CAB9FFFCFCFCFFF3F3F3FBEEEDEDFBFAFA
          F9FFDDC0A6FFD9A575FFB66011FFCD790DFFE2B47EFFBF7938FFD0872BFFE7D2
          B6FFE0C09DFFE4C093FFEACD9FFFF1E2C2FFFEFDFCFFF0F0F0FBF0F0EFFBFAFA
          F9FFDCC1A6FFDAA97DFFB76C28FFCF8930FFE6C399FFDBBCA0FFE4CCB0FFEAE1
          D8FFC7B4A5FFD0B79BFFEED8AAFFF8EFCDFFFFFEFDFFECECEBFBEEEDEDFBF9F8
          F8FFDCC3AAFFE8C29DFFE0BD9DFFE8CCB0FFEDDBCAFFEEE3DAFFEDE9E6FFC8CF
          E2FF4368C3FF4063BDFFA7A6AEFFEEE7CDFFFFFFFDFFE8E8E5FBF2F2F1FBD4D9
          E3FFACA3A9FFE8CCB1FFEED7C1FFEEDECFFFEEE4DCFFEEEAE8FFD1D7E6FF4E75
          CCFF0A44C6FF0743CCFF194FCDFF7490D2FFE3EAF9FFE3EDE3FBF5F5F5FBE6EA
          F2FF7D90C2FFA8A8BCFFEADCD0FFEEE5DEFFEEEAE9FFD8DBE6FF5C7DC7FF0E43
          BAFF0941C0FF0742C8FF0643CFFF114ED8FF96B1EFFFE1EEE3FBF7F7F7FBFFFF
          FFFFE0E5F0FF748BC2FFA9B3CFFFEAE8E9FFDDE0E8FF6A86C8FF1343B0FF0C3F
          B3FF0A40BBFF0841C2FF0E48CBFF6B8FE4FFEAEFFCFFE3F0E3FBF7F7F7FBFFFF
          FFFFFEFFFFFFDADFECFF647FBFFF9FB0D7FF768FCBFF1645B0FF0E3FAEFF0D3F
          B0FF0B3FB6FF1146BFFF6C8EDCFFEAEFFBFFFFFFFFFFE3F1E3FBF7F7F7FBFFFF
          FFFFFFFFFFFFFCFCFDFF7692D1FF1B4EC3FF2551B6FF1C4AB3FF1142AFFF0E3F
          AEFF1445B3FF6D8DD4FFEAEFF9FFFFFFFFFFFFFFFFFFE3F1E3FBF7F7F7FBFFFF
          FFFFFFFFFFFFFCFDFDFF86A2E0FF265DD9FF91A8DCFFBFCCE9FF9AAEDDFF6E8B
          CEFF809AD4FFEAEEF8FFFFFFFFFFFFFFFFFFFFFFFFFFECF3ECFBF7F7F7FBFFFF
          FFFFFFFFFFFFFFFFFFFFECF0FAFFDAE3F8FFF1F4FAFFFFFFFFFFFEFEFFFFFAFB
          FDFFFAFBFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F6FBEDEDEDF1F7F7
          F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7
          F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBF7F7F7FBECECECF0}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000F7F7F7FBFAFA
          F9FEE3DBD2FEB9AC9DFEB9AB9CFEC0B2A3FEC6B8A9FEC6B8AAFEC6B8AAFEC5B8
          A9FEBFB1A2FEB9AA9CFEB2A395FED6CBC0FEF9F8F8FEF7F7F7FBFAFAFAFEFEFC
          FAFFEAC090FFD79240FFD79340FFDA9643FFDD9742FFDD963FFFDB923CFFD68E
          39FFD08734FFC97D2BFFC07120FFCF9763FFFBF6F3FFFAFAFAFEF9F9F9FEE0D2
          C3FFD7A365FFE9A54EFFEBA953FFEFAE57FFF0B461FFDEB270FFDCAE6DFFE6AA
          5CFFE39E49FFDB9441FFD38835FFC58748FFDAC8BEFFFAFAFAFEF9F9F9FEE4BF
          98FFE09A44FFF2B35DFFF7BA62FFFBC267FFD3B373FF808691FF7D8590FFBBA4
          72FFEFAF55FFE5A14DFFDD9643FFCF8330FFE0B791FFF9F9F9FEF9F8F8FEEBC7
          A2FFEAA853FFFCC26AFFFEC873FFFFCF7AFFCDB26FFFB0A084FFB19F85FFC3A6
          68FFF9BD64FFEEAE59FFE5A24EFFD78F3BFFE6C19AFFF9F9F9FEF8F8F8FEEFCE
          A8FFF1B55EFFFFCC77FFFFD285FFFFDD9DFFF7DEA5FFECD59AFFECD28DFFF6CE
          7FFFFEC770FFF7BA60FFE2A855FFDE9941FFEAC7A0FFF9F9F9FEF9F9F9FEF4D5
          ADFFF5C16DFFFFDEA5FFFFECC7FFFFEDCAFFFFEAC1FFFFEAB8FFFFE4AEFFFFE0
          A5FFFFD993FFF9CE75FFC0B17FFFDCA14EFFEFCEA8FFF8F8F8FEF8F8F8FEF9DC
          B5FFF5B569FFF6B884FFF7B77CFFF8B778FFF8B877FFF8BD7CFFF8C18DFFF8C1
          90FFF8BE87FFF6B775FFF3AB52FFE79C40FFF5D6ADFFF8F8F7FEF9F9F9FEFEE5
          BEFFE3BA77FFEBC09DFFF0C07FFFECC47DFFE9C781FFE7C996FFEED4B2FFFDE0
          BFFFFDD8B4FFF9D2A4FFE7D6AAFFCDA767FFFBDDB1FFF7F8F7FEF9F9F9FEFFEC
          C7FFCAAA70FFB4A47FFFEAE6A7FFF6EACAFFF0DC9FFFDCDBA9FFDAD89EFFDFDB
          9CFFDFD98AFFDED77CFFC5B181FFA78E5DFFFEE5B7FFF7F8F7FEFAFAFAFEFFEC
          CCFFDBC180FF9B905FFFCBBA80FFE6CB9DFFE0B37EFFABA380FF9F9F7EFF9F9E
          7CFF9F9C74FF9F9B65FF9C8E4FFFC4A95CFFFFE5BAFFF7F9F7FEFAFAFAFEFDEA
          CBFFFDDE98FFFFEAAAFFFEEFB4FFFAECB7FFFCF2C5FFFFF8C6FFFFF6BDFFFEEE
          B0FFFCE8A4FFFBE093FFF9D97EFFF8CC70FFFCE6BCFFF7F9F7FEFAFAFAFEF2D4
          AEFFF4BA68FFFDC471FFFFCD7EFFFFD288FFFFD28BFFFFD289FFFFCC7FFFFBC3
          70FFF2B663FFE7A658FFDB9649FFD79545FFEFD0A8FFF7F9F7FEFAFAFAFEF8E0
          C2FFFBC370FFFFCB77FFFFD589FFFFDC97FFFFE0A1FFFFE0A1FFFFDB9AFFFFD2
          87FFFAC26CFFEEAE59FFE19F4EFFDFA154FFF5DCBFFFF8F9F8FEFAFAFAFEFFF6
          EAFFFFD38FFFFFDDA4FFFFEAC0FFFFF2D3FFFFF5DBFFFFF2D1FFFFEABFFFFFDE
          A5FFFED189FFF6BD6EFFE9AD60FFE5B16CFFFAF2E6FFF9FAF9FEF8F8F8FCFAF8
          F5FEFAEACFFEFAEBD5FEFAF1DCFEFAF2E3FEFAF7E8FEFAF2E3FEFAEFD6FEFAE8
          CCFEFAE2BEFEF8DAB2FEF0D3AFFEEED6B9FEF8F7F2FEF7F7F7FB}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000FAFAFAFEFDFD
          FCFFFAF9F7FFF4F3F1FFF4F3F1FFF3F2F0FFEDEBEAFFEBEAE8FFEBEAE8FFEEEC
          EAFFF3F2F0FFF4F2F1FFF3F2F0FFF8F7F5FFFCFCFCFFFAFAFAFEFDFDFDFFFFFF
          FFFFFFFFFFFFFCFCFCFFEFEFEFFFE4E3E3FFDDDCDCFFDAD9D8FFD8D8D7FFDAD9
          D9FFDEDEDDFFEEEEEDFFFCFCFCFFFFFFFFFFFFFFFFFFFDFDFDFFFCFCFCFFFFFF
          FFFFFAFAFAFFE9E9E9FFE5E4E4FFE9E9E8FFEAEAE9FFE4E3E3FFE5E4E3FFE7E6
          E5FFE1E0DFFFD8D8D7FFE2E1E1FFFAFAFAFFFFFFFFFFFDFDFDFFFCFCFCFFFCFC
          FCFFEBEBEBFFECEBEBFFEFEEEEFFEFEEEDFFE9E9E8FFB1B1B1FFC1C1C1FFE9E8
          E7FFE8E7E6FFE6E5E4FFDAD9D9FFE2E2E1FFFCFCFCFFFCFCFCFFFCFCFCFFF1F1
          F1FFEDECECFFF2F2F1FFF2F1F1FFE3E3E3FFA8A7A8FF6B6B6DFF777879FFB7B7
          B7FFE5E4E4FFE9E8E8FFE7E6E5FFDAD9D8FFEEEEEEFFFCFCFCFFFAFAFAFFECEC
          ECFFF5F4F4FFF5F5F4FFF1F0F0FFADACACFF676768FF6B6A6CFF717273FF6969
          6AFFC0C0C0FFEBEBEAFFEAE9E9FFE3E3E2FFDFDFDFFFFBFBFBFFF8F8F8FFF0F0
          F0FFF8F7F7FFF7F6F6FFEFEFEFFFB2B2B2FFA7A7A7FF9F9E9FFFAAAAAAFF7272
          73FFA0A0A1FFEDECEBFFECECEBFFEAEAE9FFDCDCDBFFF4F4F4FFF4F4F4FFF7F6
          F6FFF9F9F9FFF8F8F8FFF7F6F6FFF1F0F0FFE5E4E4FF9F9E9EFF848484FF6968
          6AFFB0AFB0FFEFEEEEFFEFEEEDFFEDEDECFFDCDBDBFFF2F2F2FFF4F4F4FFF8F8
          F8FFFAFAFAFFFAF9F9FFF9F8F8FFE5E5E4FF9F9D9DFF727171FF727172FF9B9B
          9BFFE1E0E0FFF2F1F1FFF1F0F0FFF0EFEEFFDEDDDDFFF3F3F3FFF9F9F9FFF7F7
          F7FFFCFBFBFFFBFBFBFFF8F8F8FFBBBABAFF807F7EFF8A8989FFBAB9B9FFEDED
          EDFFF4F4F3FFF4F3F3FFF3F2F2FFF1F0F0FFE1E0E0FFF3F4F3FFFBFBFBFFF2F2
          F2FFFDFCFCFFFCFCFCFFF9F9F8FFB3B1B1FF949392FFA9A8A7FFB4B3B2FFBCBC
          BBFFE4E3E3FFF6F5F5FFF5F4F4FFF0F0EFFFE7E6E6FFFAFBFAFFFDFDFDFFF5F5
          F5FFFAF9F9FFFDFDFDFFFCFCFCFFD3D2D2FF928F8EFF8A8887FF858382FF9493
          92FFE4E3E3FFF7F7F7FFF6F5F5FFEAEAEAFFF0F0F0FFFCFCFCFFFDFDFDFFFCFC
          FCFFF4F3F3FFFCFBFBFFFEFEFEFFF9F8F8FFD8D7D6FFA7A6A5FFB1AFAEFFE0E0
          DFFFF8F8F7FFF8F8F8FFF1F1F1FFEBEBEBFFFCFCFCFFFCFCFCFFFDFDFDFFFFFF
          FFFFFAFAFAFFF4F4F4FFFAFAFAFFFEFEFEFFFDFDFDFFF2F2F2FFF5F4F4FFFCFB
          FBFFF9F9F9FFF2F2F1FFEDEDEDFFFAFAFAFFFFFFFFFFFCFCFCFFFDFDFDFFFFFF
          FFFFFFFFFFFFFCFCFCFFF5F5F5FFF3F3F3FFF9F9F9FFFBFBFBFFFAFAFAFFF3F3
          F3FFEFEFEFFFF2F2F2FFFCFCFCFFFFFFFFFFFFFFFFFFFCFDFCFFFAFAFAFEFDFC
          FCFFFDFAF7FFFDFBF8FFFDFBF9FFFBFAF8FFF9F9F7FFF4F3F1FFF4F2EFFFF9F7
          F3FFFBF8F3FFFCF8F3FFFBF8F3FFFBF8F4FFFCFCFBFFFAFAFAFE}
        Mask.Data = {
          7E000000424D7E000000000000003E0000002800000010000000100000000100
          010000000000400000000000000000000000020000000000000000000000FFFF
          FF00000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000}
      end>
  end
  inherited cxPropertiesStore: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Action'
          'ActiveControl'
          'Align'
          'AlphaBlend'
          'AlphaBlendValue'
          'Anchors'
          'AutoScroll'
          'AutoSize'
          'BiDiMode'
          'BorderIcons'
          'BorderStyle'
          'BorderWidth'
          'Caption'
          'ClientHeight'
          'ClientWidth'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DefaultMonitor'
          'DockSite'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FormStyle'
          'Height'
          'HelpContext'
          'HelpFile'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'HorzScrollBar'
          'Icon'
          'KeyPreview'
          'Left'
          'Menu'
          'Name'
          'ObjectMenuItem'
          'OldCreateOrder'
          'ParentBiDiMode'
          'ParentFont'
          'PixelsPerInch'
          'PopupMenu'
          'Position'
          'PrintScale'
          'Scaled'
          'ScreenSnap'
          'ShowHint'
          'SnapBuffer'
          'Tag'
          'Top'
          'TransparentColor'
          'TransparentColorValue'
          'UseDockManager'
          'VertScrollBar'
          'Visible'
          'Width'
          'WindowMenu'
          'WindowState')
      end
      item
        Component = TVContratos
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
        Component = TVContratosATIVO
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
        Component = TVContratosCNPJ
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
        Component = TVContratosCOD_CONTRATO
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
        Component = TVContratosCODIGO
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
        Component = TVContratosDATA
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
        Component = TVContratosDT_FIM
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
        Component = TVContratosDT_INICIO
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
        Component = TVContratosNUM_CONTRATO
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
        Component = TVContratosTIPO_CONTRATO
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
        Component = TVDet1ORIGINAL
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
        Component = TVDet1PESSOA_FJ
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
        Component = TVDet1PORCENTAGEM
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
        Component = TVDet1PRODUTO
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
        Component = TVDet1RESULTADO
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
        Component = TVDet2
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
        Component = TVDet2ANO
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
        Component = TVDet2ATIVO
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
        Component = TVDet2CNPJ
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
        Component = TVDet2CODIGO
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
        Component = TVDet2COMBUSTIVEL
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
        Component = TVDet2COR
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
        Component = TVDet2KM_ATUAL
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
        Component = TVDet2MARCA_NOME
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
        Component = TVDet2MARCA_VEICULO
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
        Component = TVDet2MEDIA_KM
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
        Component = TVDet2MODELO
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
        Component = TVDet2MOTORISTA
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
        Component = TVDet2N_CHASSI
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
        Component = TVDet2PESSOA_FJ
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
        Component = TVDet2PLACA
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
        Component = TVDet2TIPO_NOME
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
        Component = TVDet2TIPO_VEICULO
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
        Component = TVDet3
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
        Component = TVDet3AREA_TOTAL
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
        Component = TVDet3ATIVA
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
        Component = TVDet3BAIRRO
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
        Component = TVDet3CEP
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
        Component = TVDet3CIDADE
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
        Component = TVDet3CNPJ
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
        Component = TVDet3COMPLEMENTO
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
        Component = TVDet3CONTRATO
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
        Component = TVDet3CPF
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
        Component = TVDet3ENDERECO
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
        Component = TVDet3GARANTIA
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
        Component = TVDet3IE
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
        Component = TVDet3MODELO
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
        Component = TVDet3NOME
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
        Component = TVDet3NOME_BAIRRO
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
        Component = TVDet3NOME_CIDADE
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
        Component = TVDet3NOME_LOGRADOURO
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
        Component = TVDet3NOME_MODELO_PROPRIEDADE
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
        Component = TVDet3NOME_REGIAO
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
        Component = TVDet3NOME_TECNICO
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
        Component = TVDet3NOME_TIPO_CONTRATO
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
        Component = TVDet3NOME_VENDEDOR
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
        Component = TVDet3NUMERO
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
        Component = TVDet3OBS
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
        Component = TVDet3PESSOA_FJ
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
        Component = TVDet3PROPRIEDADE
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
        Component = TVDet3PROPRIETARIO
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
        Component = TVDet3REGIAO
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
        Component = TVDet3TECNICO
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
        Component = TVDet3TIPO_CONTRATO
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
        Component = TVDet3UF
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
        Component = TVDet3VENDEDOR
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
        Component = TVDet4
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
        Component = TVDet4AGENCIA
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
        Component = TVDet4BANCO
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
        Component = TVDet4CNPJ
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
        Component = TVDet4CONTA
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
        Component = TVDet4DV_AGENCIA
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
        Component = TVDet4DV_CONTA
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
        Component = TVDet4NOME_BANCO
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
        Component = TVDet4PESSOA_FJ
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
        Component = TVEquipamentos
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
        Component = TVEquipamentosATIVO
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
        Component = TVEquipamentosCNPJ
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
        Component = TVEquipamentosCOD_INDEXADOR
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
        Component = TVEquipamentosCOD_PRODUTO
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
        Component = TVEquipamentosCODIGO
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
        Component = TVEquipamentosCONTRATO
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
        Component = TVEquipamentosDATA
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
        Component = TVEquipamentosDIAS_RECHAMADO
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
        Component = TVEquipamentosDT_ADICAO
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
        Component = TVEquipamentosDT_RETIRADA
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
        Component = TVEquipamentosDT_VIGENCIA_FINAL
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
        Component = TVEquipamentosDT_VIGENCIA_INICIAL
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
        Component = TVEquipamentosGERA_LEITURA
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
        Component = TVEquipamentosINFORMACOES_ITENS
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
        Component = TVEquipamentosMEDIA_COPIAS
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
        Component = TVEquipamentosMODELO_EQUIPAMENTO
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
        Component = TVEquipamentosPRODUTO
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
        Component = TVEquipamentosQTDE_COPIAS_PREVENTIVA
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
        Component = TVEquipamentosSERIE
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
        Component = TVEquipamentosTEMPO_RESPOSTA
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
        Component = TVEquipamentosTIPO_PRODUTO
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
        Component = TVEquipamentosVALOR
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
        Component = TVRegistroADMISSAO
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
        Component = TVRegistroADMISSAO_CONJUGE
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
        Component = TVRegistroAJUSTE_AUT_FATURAS
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
        Component = TVRegistroALIQUOTA_DESCONTO
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
        Component = TVRegistroASSINA_NOTA
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
        Component = TVRegistroATIVIDADE
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
        Component = TVRegistroBAIRRO
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
        Component = TVRegistroBAIRRO_PESSOA
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
        Component = TVRegistroBLOQUEADO
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
        Component = TVRegistroCATEGORIA
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
        Component = TVRegistroCELULAR
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
        Component = TVRegistroCEP
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
        Component = TVRegistroCEP_TRABALHO
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
        Component = TVRegistroCHEQUE
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
        Component = TVRegistroCIDADE_PAIS
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
        Component = TVRegistroCLASSIF
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
        Component = TVRegistroCNPJ_CLASSIF
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
        Component = TVRegistroCNPJ_FPAGTO
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
        Component = TVRegistroCNPJ_VEND
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
        Component = TVRegistroCOD_CLASSIF
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
        Component = TVRegistroCOD_FPAGTO
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
        Component = TVRegistroCOD_VEND
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
        Component = TVRegistroCOMPLEMENTO
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
        Component = TVRegistroCOMPRADOR
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
        Component = TVRegistroCONJUGE
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
        Component = TVRegistroCONS_REV
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
        Component = TVRegistroCONTROLA_KM
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
        Component = TVRegistroCONTROLA_PLACA
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
        Component = TVRegistroCPF_CGC
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
        Component = TVRegistroDIA_PREF_FAT
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
        Component = TVRegistroDT_NASC_CONJUGE
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
        Component = TVRegistroENDERECO_PAIS
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
        Component = TVRegistroENDERECO_TRABALHO
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
        Component = TVRegistroFANTASIA
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
        Component = TVRegistroFAX
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
        Component = TVRegistroFONE
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
        Component = TVRegistroFONE_LOCAL_CONJUGE
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
        Component = TVRegistroFONE_TRABALHO
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
        Component = TVRegistroFREQUENCIA
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
        Component = TVRegistroLIMITE_CREDITO
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
        Component = TVRegistroLIMITE_RETIRADAS_DIARIA
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
        Component = TVRegistroLIMITE_TEMPO
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
        Component = TVRegistroLOCAL_TRAB_CONJUGE
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
        Component = TVRegistroLOCAL_TRABALHO
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
        Component = TVRegistroLOGRADOURO
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
        Component = TVRegistroMAE
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
        Component = TVRegistroMEDIA_COMPRAS_MES
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
        Component = TVRegistroNAO_COBR_JUR_ATE
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
        Component = TVRegistroNEG_N_VEZES
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
        Component = TVRegistroNOME_RAZAO
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
        Component = TVRegistroNUMERO
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
        Component = TVRegistroNUMERO_PAIS
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
        Component = TVRegistroNUMERO_TRABALHO
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
        Component = TVRegistroOBS
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
        Component = TVRegistroOPTANTE_SIMPLES
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
        Component = TVRegistroPAI
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
        Component = TVRegistroPERIODO_FATURAMENTO
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
        Component = TVRegistroPESSOA_FJ
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
        Component = TVRegistroPRAZO
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
        Component = TVRegistroPSA_FONE
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
        Component = TVRegistroRAMAL_FONE_TRAB
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
        Component = TVRegistroRAMAL_LOCAL_CONJUGE
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
        Component = TVRegistroREFERENCIAS
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
        Component = TVRegistroRENDA_MENSAL
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
        Component = TVRegistroREQUISICAO
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
        Component = TVRegistroRET_INSS
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
        Component = TVRegistroRET_IRRF
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
        Component = TVRegistroRET_PIS
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
        Component = TVRegistroSENHA_PDV
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
        Component = TVRegistroSINCRONIZA_FILIAIS
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
        Component = TVRegistroSUB_TRIBUTARIO
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
        Component = TVRegistroTAXA_JUROS
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
        Component = TVRegistroTEMPO_SERV_CONJUGE
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
        Component = TVRegistroTEMPO_SERVICO
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
        Component = TVRegistroTOLERANCIA_FATURAMENTO
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
        Component = TVRegistroULT_VENDEDOR
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
        Component = TVRegistroVALOR_MAXIMO_RETIRADA
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
  inherited cxIntl1: TcxIntl
    Left = 464
  end
  inherited cxIntl2: TcxIntl
    Left = 464
  end
  inherited dsRegistroDet2: TDataSource
    Left = 336
    Top = 118
  end
  inherited dsPesquisaDet2: TDataSource
    Left = 304
    Top = 118
  end
  inherited dsRegistroDet1: TDataSource
    Left = 264
    Top = 118
  end
  inherited dsPesquisaDet1: TDataSource
    Left = 216
    Top = 118
  end
  inherited dtListDet1: TIBQuery
    SQL.Strings = (
      'select prc.CNPJ, '
      '          prc.PESSOA_FJ, '
      '          prc.PORCENTAGEM, '
      '          prc.PRODUTO,'
      '          p.nome nome_produto ,'
      '          prc.ORIGINAL,'
      '          prc.RESULTADO'
      'from GLO_PRECOS_ESPECIAIS prc'
      
        'inner join est_produtos p on (p.cnpj = prc.cnpj and prc.produto ' +
        '= p.codigo)'
      'Where prc.CNPJ = :CNPJ AND PESSOA_FJ = :pessoa_fj')
    Left = 240
    Top = 86
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
      end>
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1PORCENTAGEM: TFloatField
      DisplayLabel = 'Pct (%)'
      FieldName = 'PORCENTAGEM'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PORCENTAGEM"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtListDet1NOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListDet1RESULTADO: TFloatField
      DisplayLabel = 'Vlr. Liquido'
      FieldName = 'RESULTADO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."RESULTADO"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1ORIGINAL: TFloatField
      DisplayLabel = 'Vlr. Original'
      FieldName = 'ORIGINAL'
      Origin = '"GLO_PRECOS_ESPECIAIS"."ORIGINAL"'
      DisplayFormat = '###,##0.00'
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from GLO_PRECOS_ESPECIAIS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_PRECOS_ESPECIAIS'
      '  (CNPJ, ORIGINAL, PESSOA_FJ, PORCENTAGEM, PRODUTO, RESULTADO)'
      'values'
      
        '  (:CNPJ, :ORIGINAL, :PESSOA_FJ, :PORCENTAGEM, :PRODUTO, :RESULT' +
        'ADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PORCENTAGEM,'
      '  PRODUTO,'
      '  ORIGINAL,'
      '  RESULTADO'
      'from GLO_PRECOS_ESPECIAIS '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          PESSOA_FJ, '
      '          PORCENTAGEM, '
      '          PRODUTO,'
      '          ORIGINAL,'
      '          RESULTADO'
      'from GLO_PRECOS_ESPECIAIS'
      'Where CNPJ = :CNPJ AND PESSOA_FJ = :PESSOA_FJ')
    ModifySQL.Strings = (
      'update GLO_PRECOS_ESPECIAIS'
      'set'
      '  CNPJ = :CNPJ,'
      '  ORIGINAL = :ORIGINAL,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PORCENTAGEM = :PORCENTAGEM,'
      '  PRODUTO = :PRODUTO,'
      '  RESULTADO = :RESULTADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 264
    Top = 86
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1PORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PORCENTAGEM"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1PRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      OnValidate = dtEditDet1PRODUTOValidate
      Size = 15
    end
    object dtEditDet1ORIGINAL: TFloatField
      FieldName = 'ORIGINAL'
      Origin = '"GLO_PRECOS_ESPECIAIS"."ORIGINAL"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1RESULTADO: TFloatField
      FieldName = 'RESULTADO'
      Origin = '"GLO_PRECOS_ESPECIAIS"."RESULTADO"'
      DisplayFormat = '###,##0.00'
    end
  end
  inherited dsLinkDet2: TDataSource
    Left = 320
    Top = 50
  end
  inherited dsLinkDet1: TDataSource
    Left = 248
    Top = 50
  end
  inherited dtEditDet2: TIBDataSet
    DeleteSQL.Strings = (
      'delete from GLO_VEICULOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_VEICULOS'
      
        '  (ANO, ATIVO, CNPJ, CODIGO, COMBUSTIVEL, COR, KM_ATUAL, MARCA_V' +
        'EICULO, '
      
        '   MEDIA_KM, MODELO, MOTORISTA, N_CHASSI, PESSOA_FJ, PLACA, TIPO' +
        '_VEICULO)'
      'values'
      
        '  (:ANO, :ATIVO, :CNPJ, :CODIGO, :COMBUSTIVEL, :COR, :KM_ATUAL, ' +
        ':MARCA_VEICULO, '
      
        '   :MEDIA_KM, :MODELO, :MOTORISTA, :N_CHASSI, :PESSOA_FJ, :PLACA' +
        ', :TIPO_VEICULO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  TIPO_VEICULO,'
      '  MARCA_VEICULO,'
      '  MODELO,'
      '  PLACA,'
      '  KM_ATUAL,'
      '  COMBUSTIVEL,'
      '  MEDIA_KM,'
      '  ATIVO,'
      '  MOTORISTA,'
      '  N_CHASSI,'
      '  COR,'
      '  ANO'
      'from GLO_VEICULOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      ' SELECT'
      '    v.ANO,'
      '    v.CNPJ,'
      '    v.CODIGO,'
      '    v.PESSOA_FJ,'
      '    v.TIPO_VEICULO,'
      '    v.MARCA_VEICULO,'
      '    v.MODELO,'
      '    v.PLACA, '
      '    v.KM_ATUAL,'
      '    v.COMBUSTIVEL,'
      '    v.MEDIA_KM,'
      '    v.ATIVO,'
      '    v.MOTORISTA,'
      '    v.COR, '
      '    N_CHASSI'
      'FROM GLO_VEICULOS v'
      
        'WHERE v.CNPJ = :CNPJ AND v.codigo = :CODIGO and v.pessoa_fj = :p' +
        'essoa_fj')
    ModifySQL.Strings = (
      'update GLO_VEICULOS'
      'set'
      '  ANO = :ANO,'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  COR = :COR,'
      '  KM_ATUAL = :KM_ATUAL,'
      '  MARCA_VEICULO = :MARCA_VEICULO,'
      '  MEDIA_KM = :MEDIA_KM,'
      '  MODELO = :MODELO,'
      '  MOTORISTA = :MOTORISTA,'
      '  N_CHASSI = :N_CHASSI,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  TIPO_VEICULO = :TIPO_VEICULO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_GLO_VEICULOS_ID'
    Left = 336
    Top = 88
    object dtEditDet2ANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"GLO_VEICULOS"."ANO"'
    end
    object dtEditDet2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_VEICULOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_VEICULOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet2PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_VEICULOS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet2TIPO_VEICULO: TIntegerField
      FieldName = 'TIPO_VEICULO'
      Origin = '"GLO_VEICULOS"."TIPO_VEICULO"'
    end
    object dtEditDet2MARCA_VEICULO: TIntegerField
      FieldName = 'MARCA_VEICULO'
      Origin = '"GLO_VEICULOS"."MARCA_VEICULO"'
    end
    object dtEditDet2MODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object dtEditDet2PLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtEditDet2KM_ATUAL: TFloatField
      FieldName = 'KM_ATUAL'
      Origin = '"GLO_VEICULOS"."KM_ATUAL"'
    end
    object dtEditDet2COMBUSTIVEL: TIBStringField
      FieldName = 'COMBUSTIVEL'
      Origin = '"GLO_VEICULOS"."COMBUSTIVEL"'
      Size = 15
    end
    object dtEditDet2MEDIA_KM: TFloatField
      FieldName = 'MEDIA_KM'
      Origin = '"GLO_VEICULOS"."MEDIA_KM"'
    end
    object dtEditDet2ATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"GLO_VEICULOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet2MOTORISTA: TIBStringField
      FieldName = 'MOTORISTA'
      Origin = '"GLO_VEICULOS"."MOTORISTA"'
      Size = 50
    end
    object dtEditDet2COR: TIBStringField
      FieldName = 'COR'
      Origin = '"GLO_VEICULOS"."COR"'
      Size = 50
    end
    object dtEditDet2N_CHASSI: TIBStringField
      FieldName = 'N_CHASSI'
      Origin = '"GLO_VEICULOS"."N_CHASSI"'
      Size = 50
    end
  end
  inherited dtListDet2: TIBQuery
    SQL.Strings = (
      'SELECT'
      '    v.ANO,'
      '    v.CNPJ,'
      '    v.CODIGO,'
      '    v.PESSOA_FJ,'
      '    v.TIPO_VEICULO,'
      '    v.MARCA_VEICULO,'
      '    v.MODELO,'
      '    v.PLACA, '
      '    v.KM_ATUAL,'
      '    v.COMBUSTIVEL,'
      '    v.MEDIA_KM,'
      '    v.ATIVO,'
      '    v.MOTORISTA,'
      '    v.COR, '
      '    N_CHASSI,'
      '    m.nome marca_nome,'
      '    t.nome tipo_nome'
      'FROM GLO_VEICULOS v'
      
        'left join glo_marca_veiculos m on (m.cnpj = v.cnpj and m.codigo ' +
        '= v.marca_veiculo)'
      
        'left join glo_tipo_veiculos t on (t.cnpj = v.cnpj and t.codigo =' +
        ' v.tipo_veiculo)'
      'WHERE v.CNPJ = :CNPJ AND v.PESSOA_FJ = :pessoa_fj')
    Left = 304
    Top = 86
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
      end>
    object dtListDet2ANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"GLO_VEICULOS"."ANO"'
    end
    object dtListDet2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_VEICULOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet2CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_VEICULOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet2PESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_VEICULOS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet2TIPO_VEICULO: TIntegerField
      DisplayLabel = 'C'#243'd. Tp. Veiculo'
      FieldName = 'TIPO_VEICULO'
      Origin = '"GLO_VEICULOS"."TIPO_VEICULO"'
    end
    object dtListDet2MARCA_VEICULO: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'MARCA_VEICULO'
      Origin = '"GLO_VEICULOS"."MARCA_VEICULO"'
    end
    object dtListDet2MODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object dtListDet2PLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object dtListDet2KM_ATUAL: TFloatField
      DisplayLabel = 'KM Atual'
      FieldName = 'KM_ATUAL'
      Origin = '"GLO_VEICULOS"."KM_ATUAL"'
    end
    object dtListDet2COMBUSTIVEL: TIBStringField
      DisplayLabel = 'Combust'#237'vel'
      FieldName = 'COMBUSTIVEL'
      Origin = '"GLO_VEICULOS"."COMBUSTIVEL"'
      Size = 15
    end
    object dtListDet2MEDIA_KM: TFloatField
      DisplayLabel = 'M'#233'dia KM'
      FieldName = 'MEDIA_KM'
      Origin = '"GLO_VEICULOS"."MEDIA_KM"'
    end
    object dtListDet2ATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"GLO_VEICULOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListDet2MOTORISTA: TIBStringField
      DisplayLabel = 'Motorista'
      FieldName = 'MOTORISTA'
      Origin = '"GLO_VEICULOS"."MOTORISTA"'
      Size = 50
    end
    object dtListDet2COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"GLO_VEICULOS"."COR"'
      Size = 50
    end
    object dtListDet2N_CHASSI: TIBStringField
      DisplayLabel = 'N. Chassi'
      FieldName = 'N_CHASSI'
      Origin = '"GLO_VEICULOS"."N_CHASSI"'
      Size = 50
    end
    object dtListDet2MARCA_NOME: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_NOME'
      Origin = '"GLO_MARCA_VEICULOS"."NOME"'
      Size = 50
    end
    object dtListDet2TIPO_NOME: TIBStringField
      DisplayLabel = 'Tipo Ve'#237'culo'
      FieldName = 'TIPO_NOME'
      Origin = '"GLO_TIPO_VEICULOS"."NOME"'
      Size = 50
    end
  end
  inherited dsRegistroDet3: TDataSource
    Left = 400
    Top = 118
  end
  inherited dtEditDet3: TIBDataSet
    DeleteSQL.Strings = (
      'delete from GLO_PROPRIEDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    InsertSQL.Strings = (
      'insert into GLO_PROPRIEDADES'
      
        '  (AREA_TOTAL, ATIVA, BAIRRO, CEP, CIDADE, CNPJ, COMPLEMENTO, CO' +
        'NTRATO, '
      
        '   CPF, ENDERECO, GARANTIA, IE, MODELO, NOME, NUMERO, OBS, PESSO' +
        'A_FJ, PROPRIEDADE, '
      '   PROPRIETARIO, REGIAO, TECNICO, TIPO_CONTRATO, UF, VENDEDOR)'
      'values'
      
        '  (:AREA_TOTAL, :ATIVA, :BAIRRO, :CEP, :CIDADE, :CNPJ, :COMPLEME' +
        'NTO, :CONTRATO, '
      
        '   :CPF, :ENDERECO, :GARANTIA, :IE, :MODELO, :NOME, :NUMERO, :OB' +
        'S, :PESSOA_FJ, '
      
        '   :PROPRIEDADE, :PROPRIETARIO, :REGIAO, :TECNICO, :TIPO_CONTRAT' +
        'O, :UF, '
      '   :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PROPRIEDADE,'
      '  NOME,'
      '  PROPRIETARIO,'
      '  IE,'
      '  ENDERECO,'
      '  COMPLEMENTO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  AREA_TOTAL,'
      '  OBS,'
      '  NUMERO,'
      '  BAIRRO,'
      '  ATIVA,'
      '  TIPO_CONTRATO,'
      '  MODELO,'
      '  GARANTIA,'
      '  CPF,'
      '  VENDEDOR,'
      '  TECNICO,'
      '  CONTRATO,'
      '  REGIAO'
      'from GLO_PROPRIEDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PROPRIEDADE = :PROPRIEDADE')
    SelectSQL.Strings = (
      'SELECT * '
      'FROM GLO_PROPRIEDADES p'
      
        'WHERE p.CNPJ = :CNPJ AND p.PESSOA_FJ = :PESSOA_FJ and p.PROPRIED' +
        'ADE = :PROPRIEDADE')
    ModifySQL.Strings = (
      'update GLO_PROPRIEDADES'
      'set'
      '  AREA_TOTAL = :AREA_TOTAL,'
      '  ATIVA = :ATIVA,'
      '  BAIRRO = :BAIRRO,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONTRATO = :CONTRATO,'
      '  CPF = :CPF,'
      '  ENDERECO = :ENDERECO,'
      '  GARANTIA = :GARANTIA,'
      '  IE = :IE,'
      '  MODELO = :MODELO,'
      '  NOME = :NOME,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  PROPRIETARIO = :PROPRIETARIO,'
      '  REGIAO = :REGIAO,'
      '  TECNICO = :TECNICO,'
      '  TIPO_CONTRATO = :TIPO_CONTRATO,'
      '  UF = :UF,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PROPRIEDADE = :OLD_PROPRIEDADE')
    Left = 400
    Top = 86
    object dtEditDet3CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet3PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PROPRIEDADES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet3PROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet3NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object dtEditDet3PROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object dtEditDet3IE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object dtEditDet3ENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PROPRIEDADES"."ENDERECO"'
    end
    object dtEditDet3COMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object dtEditDet3CIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PROPRIEDADES"."CIDADE"'
    end
    object dtEditDet3UF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtEditDet3CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object dtEditDet3AREA_TOTAL: TIBStringField
      FieldName = 'AREA_TOTAL'
      Origin = '"GLO_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object dtEditDet3OBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PROPRIEDADES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditDet3NUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object dtEditDet3BAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PROPRIEDADES"."BAIRRO"'
    end
    object dtEditDet3ATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"GLO_PROPRIEDADES"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet3TIPO_CONTRATO: TIntegerField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."TIPO_CONTRATO"'
    end
    object dtEditDet3MODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"GLO_PROPRIEDADES"."MODELO"'
    end
    object dtEditDet3GARANTIA: TDateTimeField
      FieldName = 'GARANTIA'
      Origin = '"GLO_PROPRIEDADES"."GARANTIA"'
    end
    object dtEditDet3CPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"GLO_PROPRIEDADES"."CPF"'
    end
    object dtEditDet3VENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_PROPRIEDADES"."VENDEDOR"'
    end
    object dtEditDet3TECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_PROPRIEDADES"."TECNICO"'
    end
    object dtEditDet3CONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."CONTRATO"'
    end
    object dtEditDet3REGIAO: TSmallintField
      FieldName = 'REGIAO'
      Origin = '"GLO_PROPRIEDADES"."REGIAO"'
    end
  end
  inherited dsLinkDet3: TDataSource
    Left = 384
    Top = 50
  end
  inherited dtListDet3: TIBQuery
    SQL.Strings = (
      'select p.*,'
      'cdd.nome nome_cidade,'
      'lgd.nome nome_logradouro,'
      'b.nome nome_bairro,'
      'tp.nome nome_tipo_contrato,'
      'm.nome nome_modelo_propriedade,'
      'r.nome nome_regiao,'
      'vdd.nome nome_vendedor,'
      'tec.nome nome_tecnico'
      'from glo_propriedades p'
      
        'left join glo_cidades cdd on (cdd.cnpj = p.cnpj and cdd.codigo =' +
        ' p.cidade)'
      
        'left join glo_logradouros lgd on (lgd.cnpj = p.cnpj and lgd.codi' +
        'go = p.endereco)'
      
        'left join glo_bairros b on (b.cnpj = p.cnpj and b.codigo = p.bai' +
        'rro)'
      
        'left join glo_tipo_contrato tp on (tp.cnpj = p.cnpj and tp.codig' +
        'o = p.tipo_contrato)'
      
        'left join glo_modelo_propriedade m on (m.cnpj = p.cnpj and m.cod' +
        'igo = p.modelo)'
      
        'left join glo_regioes r on (r.cnpj = p.cnpj and r.codigo = p.reg' +
        'iao)'
      
        'left join ofc_mecanicos tec on (tec.cnpj = p.cnpj and tec.codigo' +
        ' = p.tecnico)'
      
        'left join fat_vendedor vdd on (vdd.cnpj = p.cnpj and vdd.codigo ' +
        '= p.vendedor)'
      'where p.cnpj = :cnpj and p.pessoa_fj = :pessoa_fj'
      'order by p.pessoa_fj, p.propriedade')
    Left = 368
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object dtListDet3CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PROPRIEDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet3PESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_PROPRIEDADES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet3PROPRIEDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"GLO_PROPRIEDADES"."PROPRIEDADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet3NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PROPRIEDADES"."NOME"'
      Size = 50
    end
    object dtListDet3PROPRIETARIO: TIBStringField
      DisplayLabel = 'Proprietario'
      FieldName = 'PROPRIETARIO'
      Origin = '"GLO_PROPRIEDADES"."PROPRIETARIO"'
      Size = 50
    end
    object dtListDet3IE: TIBStringField
      FieldName = 'IE'
      Origin = '"GLO_PROPRIEDADES"."IE"'
      Size = 15
    end
    object dtListDet3ENDERECO: TIntegerField
      DisplayLabel = 'C'#243'd. Logradouro'
      FieldName = 'ENDERECO'
      Origin = '"GLO_PROPRIEDADES"."ENDERECO"'
    end
    object dtListDet3COMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PROPRIEDADES"."COMPLEMENTO"'
      Size = 30
    end
    object dtListDet3CIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_PROPRIEDADES"."CIDADE"'
    end
    object dtListDet3UF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PROPRIEDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListDet3CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PROPRIEDADES"."CEP"'
      Size = 8
    end
    object dtListDet3AREA_TOTAL: TIBStringField
      DisplayLabel = 'Area Total'
      FieldName = 'AREA_TOTAL'
      Origin = '"GLO_PROPRIEDADES"."AREA_TOTAL"'
      Size = 30
    end
    object dtListDet3OBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"GLO_PROPRIEDADES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListDet3NUMERO: TIBStringField
      DisplayLabel = 'Numero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PROPRIEDADES"."NUMERO"'
      Size = 15
    end
    object dtListDet3BAIRRO: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_PROPRIEDADES"."BAIRRO"'
    end
    object dtListDet3ATIVA: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVA'
      Origin = '"GLO_PROPRIEDADES"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object dtListDet3TIPO_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tp. Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."TIPO_CONTRATO"'
    end
    object dtListDet3MODELO: TIntegerField
      DisplayLabel = 'C'#243'd. Modelo'
      FieldName = 'MODELO'
      Origin = '"GLO_PROPRIEDADES"."MODELO"'
    end
    object dtListDet3GARANTIA: TDateTimeField
      DisplayLabel = 'Dt. Garantia'
      FieldName = 'GARANTIA'
      Origin = '"GLO_PROPRIEDADES"."GARANTIA"'
    end
    object dtListDet3CPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"GLO_PROPRIEDADES"."CPF"'
    end
    object dtListDet3VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"GLO_PROPRIEDADES"."VENDEDOR"'
    end
    object dtListDet3TECNICO: TIntegerField
      DisplayLabel = 'C'#243'd. Tecnico'
      FieldName = 'TECNICO'
      Origin = '"GLO_PROPRIEDADES"."TECNICO"'
    end
    object dtListDet3CONTRATO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'CONTRATO'
      Origin = '"GLO_PROPRIEDADES"."CONTRATO"'
    end
    object dtListDet3REGIAO: TSmallintField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REGIAO'
      Origin = '"GLO_PROPRIEDADES"."REGIAO"'
    end
    object dtListDet3NOME_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME_CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_LOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'NOME_LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NOME_BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_TIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tip. Contrato'
      FieldName = 'NOME_TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_MODELO_PROPRIEDADE: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NOME_MODELO_PROPRIEDADE'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_REGIAO: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'NOME_REGIAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object dtListDet3NOME_TECNICO: TIBStringField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'NOME_TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
  end
  inherited dsPesquisaDet3: TDataSource
    Left = 368
    Top = 118
  end
  inherited dsRegistroDet4: TDataSource
    Left = 464
    Top = 118
  end
  inherited dtEditDet4: TIBDataSet
    DeleteSQL.Strings = (
      'delete from glo_contas_pessoas'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into glo_contas_pessoas'
      '  (AGENCIA, BANCO, CNPJ, CONTA, DV_AGENCIA, DV_CONTA, PESSOA_FJ)'
      'values'
      
        '  (:AGENCIA, :BANCO, :CNPJ, :CONTA, :DV_AGENCIA, :DV_CONTA, :PES' +
        'SOA_FJ)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_contas_pessoas '
      'where'
      '  AGENCIA = :AGENCIA and'
      '  BANCO = :BANCO and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select '
      '          p.agencia, '
      '          p.banco, '
      '          p.cnpj, '
      '          p.conta, '
      '          p.pessoa_fj ,'
      '          p.dv_agencia,'
      '          p.dv_conta'
      'from glo_contas_pessoas p'
      'where p.cnpj = :cnpj and p.pessoa_fj = :pessoa_fj'
      '      and p.agencia = :agencia and p.conta = :conta'
      '      and p.banco = :banco')
    ModifySQL.Strings = (
      'update glo_contas_pessoas'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DV_AGENCIA = :DV_AGENCIA,'
      '  DV_CONTA = :DV_CONTA,'
      '  PESSOA_FJ = :PESSOA_FJ'
      'where'
      '  AGENCIA = :OLD_AGENCIA and'
      '  BANCO = :OLD_BANCO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 464
    Top = 86
    object dtEditDet4AGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."AGENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtEditDet4BANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"GLO_CONTAS_PESSOAS"."BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object dtEditDet4CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTAS_PESSOAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet4CONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtEditDet4PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CONTAS_PESSOAS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet4DV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet4DV_CONTA: TIBStringField
      FieldName = 'DV_CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dsLinkDet4: TDataSource
    Left = 448
    Top = 50
  end
  inherited dtListDet4: TIBQuery
    SQL.Strings = (
      'select '
      '          p.agencia, '
      '          p.banco, '
      '          p.cnpj, '
      '          p.conta, '
      '          p.pessoa_fj ,'
      '          p.dv_agencia,'
      '          p.dv_conta,'
      '          b.nome nome_banco'
      'from glo_contas_pessoas p'
      'left join fin_banco b on (b.codigo = p.banco)'
      'where cnpj = :cnpj and pessoa_fj = :pessoa_fj')
    Left = 432
    Top = 86
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object dtListDet4AGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."AGENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtListDet4BANCO: TIBStringField
      DisplayLabel = 'C'#243'd. Banco'
      FieldName = 'BANCO'
      Origin = '"GLO_CONTAS_PESSOAS"."BANCO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object dtListDet4CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CONTAS_PESSOAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet4CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object dtListDet4PESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CONTAS_PESSOAS"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet4DV_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'#234'ncia'
      FieldName = 'DV_AGENCIA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object dtListDet4DV_CONTA: TIBStringField
      DisplayLabel = 'Dig. Conta'
      FieldName = 'DV_CONTA'
      Origin = '"GLO_CONTAS_PESSOAS"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
    object dtListDet4NOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
  end
  inherited dsPesquisaDet4: TDataSource
    Left = 432
    Top = 118
  end
  inherited dsRegistroDet5: TDataSource
    Left = 528
    Top = 118
  end
  inherited dtEditDet5: TIBDataSet
    Left = 528
    Top = 86
  end
  inherited dsLinkDet5: TDataSource
    Left = 512
    Top = 50
  end
  inherited dtListDet5: TIBQuery
    Left = 496
    Top = 86
  end
  inherited dsPesquisaDet5: TDataSource
    Left = 496
    Top = 118
  end
  inherited dsRegistroDet6: TDataSource
    Left = 592
    Top = 118
  end
  inherited dtEditDet6: TIBDataSet
    Left = 616
    Top = 70
  end
  inherited dsLinkDet6: TDataSource
    Left = 632
    Top = 10
  end
  inherited dtListDet6: TIBQuery
    Left = 560
    Top = 86
  end
  inherited dsPesquisaDet6: TDataSource
    Left = 560
    Top = 118
  end
  inherited dsRegistroDet7: TDataSource
    Left = 656
    Top = 118
  end
  inherited dtEditDet7: TIBDataSet
    Left = 656
    Top = 86
  end
  inherited dsLinkDet7: TDataSource
    Left = 640
    Top = 50
  end
  inherited dtListDet7: TIBQuery
    Left = 624
    Top = 86
  end
  inherited dsPesquisaDet7: TDataSource
    Left = 624
    Top = 118
  end
  inherited dsRegistroDet8: TDataSource
    Left = 720
    Top = 118
  end
  inherited dtEditDet8: TIBDataSet
    Left = 720
    Top = 86
  end
  inherited dsLinkDet8: TDataSource
    Left = 704
    Top = 50
  end
  inherited dtListDet8: TIBQuery
    Left = 688
    Top = 86
  end
  inherited dsPesquisaDet8: TDataSource
    Left = 688
    Top = 118
  end
  inherited mtbFiltro: TdxMemData
    Left = 461
    Top = 4
  end
  inherited dsFiltro: TDataSource
    Left = 503
    Top = 4
  end
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 634
    Top = 304
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
    Left = 632
    Top = 336
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptInput
        Size = 15
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
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = QryCategoria
    Left = 665
    Top = 304
  end
  object QryCategoria: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from glo_clientes_categoria c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    Left = 664
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryCategoriaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES_CATEGORIA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryCategoriaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_CATEGORIA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCategoriaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CLIENTES_CATEGORIA"."NOME"'
      Size = 50
    end
  end
  object QryClassificacao: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select '
      '        CNPJ, '
      '        CODIGO, '
      '        NOME,'
      '        DIG_SENHA '
      'from GLO_CLASSIFICACAO'
      'Where Cnpj = :CNPJ'
      'order by NOME')
    Left = 696
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryClassificacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLASSIFICACAO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryClassificacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLASSIFICACAO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClassificacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CLASSIFICACAO"."NOME"'
      Size = 50
    end
    object QryClassificacaoDIG_SENHA: TIBStringField
      FieldName = 'DIG_SENHA'
      Origin = '"GLO_CLASSIFICACAO"."DIG_SENHA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsClassificacao: TDataSource
    AutoEdit = False
    DataSet = QryClassificacao
    Left = 697
    Top = 304
  end
  object QryVendedor: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               COM_VISTA, '
      '               COM_PRAZO,'
      '               PESSOA_FJ,'
      '               SENHA,'
      '               ATIVO,'
      '               COD_PERFIL, '
      '               COD_PERFIL_PAGTO'
      'FROM FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    Left = 728
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object QryVendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object QryVendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object QryVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object QryVendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object QryVendedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryVendedorCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object QryVendedorCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = QryVendedor
    Left = 729
    Top = 304
  end
  object QryFormaPagto: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT * '
      'FROM FIN_FORMAS_PAGTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, CODIGO')
    Left = 759
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryFormaPagtoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryFormaPagtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFormaPagtoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Size = 50
    end
    object QryFormaPagtoACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
    end
    object QryFormaPagtoDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
    end
    object QryFormaPagtoNPARCELAS: TIntegerField
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
    end
    object QryFormaPagtoCOMENTRADA: TIBStringField
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
    end
    object QryFormaPagtoAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoFATURA_FUTURA: TIBStringField
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoFORMA_ECF: TIBStringField
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object QryFormaPagtoTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
    object QryFormaPagtoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FIN_FORMAS_PAGTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoINTERVALO_PRE_DEFINIDO: TIBStringField
      FieldName = 'INTERVALO_PRE_DEFINIDO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO_PRE_DEFINIDO"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoVENCTO_FIXO: TIBStringField
      FieldName = 'VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."VENCTO_FIXO"'
      FixedChar = True
      Size = 1
    end
    object QryFormaPagtoDT_VENCTO_FIXO: TDateField
      FieldName = 'DT_VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."DT_VENCTO_FIXO"'
    end
    object QryFormaPagtoOUTROS: TIBStringField
      FieldName = 'OUTROS'
      Origin = '"FIN_FORMAS_PAGTO"."OUTROS"'
      FixedChar = True
      Size = 1
    end
  end
  object dsFormaPagto: TDataSource
    AutoEdit = False
    DataSet = QryFormaPagto
    Left = 760
    Top = 304
  end
  object QryAtividades: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_ATIVIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 791
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryAtividadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_ATIVIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryAtividadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_ATIVIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryAtividadesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ATIVIDADES"."NOME"'
      Size = 50
    end
  end
  object dsAtividade: TDataSource
    AutoEdit = False
    DataSet = QryAtividades
    Left = 792
    Top = 304
  end
  object dsLogradouroPai: TDataSource
    AutoEdit = False
    DataSet = QryLogradouroPai
    Left = 632
    Top = 368
  end
  object QryLogradouroPai: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from glo_logradouros'
      'where cnpj = :cnpj')
    Left = 631
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryLogradouroPaiCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryLogradouroPaiCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryLogradouroPaiNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
  end
  object QryCidades: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select c.*'
      'from glo_cidades c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    Left = 662
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryCidadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryCidadesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object QryCidadesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryCidadesCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object QryCidadesCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = QryCidades
    Left = 663
    Top = 368
  end
  object ContratosItens: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsLinkContrato
    SQL.Strings = (
      'select cti.*, prd.nome produto, mdl.nome modelo_equipamento,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      'end tipo_produto, prd.serie'
      'from  ofc_contratos_itens cti'
      
        'inner join est_produtos prd on (prd.codigo = cti.cod_produto and' +
        ' cti.cnpj = prd.cnpj)'
      
        'left join glo_modelo_propriedade mdl on (prd.modelo = mdl.codigo' +
        ' and mdl.cnpj = prd.cnpj)'
      'where cti.contrato = :codigo and cti.cnpj = :cnpj')
    Left = 728
    Top = 400
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object ContratosItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ContratosItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CODIGO"'
      Required = True
    end
    object ContratosItensCOD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'COD_PRODUTO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."COD_PRODUTO"'
      Size = 15
    end
    object ContratosItensCONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CONTRATO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CONTRATO"'
    end
    object ContratosItensDT_ADICAO: TDateTimeField
      DisplayLabel = 'Dt. Adi'#231#227'o'
      FieldName = 'DT_ADICAO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."DT_ADICAO"'
    end
    object ContratosItensDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."DATA"'
    end
    object ContratosItensATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ContratosItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object ContratosItensSERIE: TIBStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object ContratosItensTIPO_PRODUTO: TIBStringField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'TIPO_PRODUTO'
      FixedChar = True
      Size = 7
    end
    object ContratosItensMEDIA_COPIAS: TIntegerField
      DisplayLabel = 'M'#233'dias de C'#243'pias Di'#225'ria'
      FieldName = 'MEDIA_COPIAS'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."MEDIA_COPIAS"'
    end
    object ContratosItensQTDE_COPIAS_PREVENTIVA: TIntegerField
      DisplayLabel = 'Qtde C'#243'pias para Preventiva'
      FieldName = 'QTDE_COPIAS_PREVENTIVA'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."QTDE_COPIAS_PREVENTIVA"'
    end
    object ContratosItensDIAS_RECHAMADO: TIntegerField
      DisplayLabel = 'Dias Rechamado'
      FieldName = 'DIAS_RECHAMADO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."DIAS_RECHAMADO"'
    end
    object ContratosItensTEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'T. Resposta (Hrs)'
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."TEMPO_RESPOSTA"'
    end
    object ContratosItensINFORMACOES_ITENS: TMemoField
      DisplayLabel = 'Info. do Equipamento'
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      BlobType = ftMemo
      Size = 8
    end
    object ContratosItensDT_RETIRADA: TDateField
      DisplayLabel = 'Dt. Retirada'
      FieldName = 'DT_RETIRADA'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_RETIRADA"'
    end
    object ContratosItensCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_INDEXADOR"'
    end
    object ContratosItensDT_VIGENCIA_INICIAL: TDateField
      DisplayLabel = 'Dt. Vig'#234'ncia Inicial'
      FieldName = 'DT_VIGENCIA_INICIAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_INICIAL"'
    end
    object ContratosItensDT_VIGENCIA_FINAL: TDateField
      DisplayLabel = 'Dt. Vig'#234'ncia Final'
      FieldName = 'DT_VIGENCIA_FINAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_FINAL"'
    end
    object ContratosItensVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_CONTRATOS_ITENS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object ContratosItensMODELO_EQUIPAMENTO: TIBStringField
      DisplayLabel = 'Modelo Equipamento'
      FieldName = 'MODELO_EQUIPAMENTO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object ContratosItensGERA_LEITURA: TIBStringField
      DisplayLabel = 'Gera Leitura'
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_CONTRATOS_ITENS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsEquipamento: TDataSource
    AutoEdit = False
    DataSet = ContratosItens
    Left = 730
    Top = 370
  end
  object dsLinkContrato: TDataSource
    DataSet = Contrato
    Left = 696
    Top = 368
  end
  object Contrato: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select'
      '    cp.cnpj,'
      '    cp.CODIGO,'
      '    COD_CONTRATO ,'
      '    tpc.nome tipo_contrato,'
      '    NUM_CONTRATO,'
      '    DT_INICIO,'
      '    DT_FIM,'
      '    ATIVO,'
      '    DATA'
      'from ofc_contratos cp'
      
        'inner join GLO_TIPO_CONTRATO tpc on (tpc.cnpj = cp.cnpj and tpc.' +
        'codigo = cp.cod_contrato)'
      'where cp.cnpj = :cnpj and cp.cod_cliente = :PESSOA_FJ')
    Left = 696
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object ContratoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ContratoNUM_CONTRATO: TIBStringField
      DisplayLabel = 'N. Contrato'
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object ContratoDT_INICIO: TDateTimeField
      DisplayLabel = 'Dt. Inicio'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_CONTRATOS"."DT_INICIO"'
    end
    object ContratoDT_FIM: TDateTimeField
      DisplayLabel = 'Dt. Fim'
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object ContratoATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ContratoCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object ContratoTIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object ContratoDATA: TDateField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS"."DATA"'
    end
    object ContratoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = QryProduto
    Left = 802
    Top = 362
  end
  object QryProduto: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsLinkContrato
    SQL.Strings = (
      'select p.codigo, p.serie, p.nome, prc_venda  from est_produtos p'
      'where p.cnpj = :cnpj and coalesce(p.ativo,'#39'N'#39') = '#39'S'#39)
    Left = 760
    Top = 400
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QryProdutoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object QryProdutoPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
  end
  object QryTipoVeiculo: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsLinkContrato
    SQL.Strings = (
      '               SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_TIPO_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 792
    Top = 400
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryTipoVeiculoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_VEICULOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryTipoVeiculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_VEICULOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTipoVeiculoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_VEICULOS"."NOME"'
      Size = 50
    end
  end
  object dsTipoVeiculo: TDataSource
    AutoEdit = False
    DataSet = QryTipoVeiculo
    Left = 794
    Top = 370
  end
  object QryMarcaVeiculo: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsLinkContrato
    SQL.Strings = (
      '              SELECT CNPJ,'
      '               CODIGO, '
      '               NOME '
      'FROM GLO_MARCA_VEICULOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 824
    Top = 400
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryMarcaVeiculoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_MARCA_VEICULOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryMarcaVeiculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_MARCA_VEICULOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryMarcaVeiculoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_MARCA_VEICULOS"."NOME"'
      Size = 50
    end
  end
  object dsMarcaVeiculo: TDataSource
    AutoEdit = False
    DataSet = QryMarcaVeiculo
    Left = 826
    Top = 370
  end
  object qryLogradouroConj: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_logradouros'
      'where cnpj = :cnpj')
    Left = 632
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object qryLogradouroConjCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryLogradouroConjCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLogradouroConjNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
  end
  object dsLogradouroConj: TDataSource
    AutoEdit = False
    DataSet = qryLogradouroConj
    Left = 632
    Top = 240
  end
  object QryBairro: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_bairros b'
      'where b.cnpj = :cnpj')
    Left = 696
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryBairroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_BAIRROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryBairroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_BAIRROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryBairroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
  end
  object dsBairros: TDataSource
    AutoEdit = False
    DataSet = QryBairro
    Left = 696
    Top = 240
  end
  object QryCidadeProp: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_cidades'
      'where cnpj = :cnpj')
    Left = 664
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryCidadePropCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryCidadePropCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryCidadePropNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object QryCidadePropUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryCidadePropCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object QryCidadePropCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
  end
  object dsCidadeProp: TDataSource
    AutoEdit = False
    DataSet = QryCidadeProp
    Left = 664
    Top = 240
  end
  object qryRegiao: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_regioes'
      'where cnpj = :cnpj')
    Left = 728
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object qryRegiaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_REGIOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRegiaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryRegiaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object qryRegiaoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_REGIOES"."VENDEDOR"'
    end
    object qryRegiaoTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"GLO_REGIOES"."TERCEIRO"'
    end
    object qryRegiaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_REGIOES"."DESCRICAO"'
      Size = 100
    end
    object qryRegiaoTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = qryRegiao
    Left = 728
    Top = 240
  end
  object QryVendedorProp: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select vdd.codigo, vdd.nome from fat_vendedor vdd'
      'where vdd.cnpj = :cnpj'
      'order by vdd.nome')
    Left = 760
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryVendedorPropCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryVendedorPropNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
  end
  object dsVendedorProp: TDataSource
    AutoEdit = False
    DataSet = QryVendedorProp
    Left = 760
    Top = 240
  end
  object QryTecnicoProp: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select m.codigo, m.nome from ofc_mecanicos m'
      'where m.cnpj = :cnpj'
      'order by m.nome')
    Left = 792
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryTecnicoPropCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTecnicoPropNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
  end
  object dsTecnicoProp: TDataSource
    AutoEdit = False
    DataSet = QryTecnicoProp
    Left = 792
    Top = 240
  end
  object dsBanco: TDataSource
    AutoEdit = False
    DataSet = QryBancos
    Left = 822
    Top = 304
  end
  object QryBancos: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select codigo, nome from fin_banco')
    Left = 822
    Top = 336
    object QryBancosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryBancosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
  end
  object dsLogradouroProp: TDataSource
    AutoEdit = False
    DataSet = qryLogradouroProp
    Left = 824
    Top = 240
  end
  object qryLogradouroProp: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_logradouros'
      'where cnpj = :cnpj')
    Left = 824
    Top = 272
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object qryLogradouroPropCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryLogradouroPropCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLogradouroPropNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
  end
end
