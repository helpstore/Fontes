inherited frmCadProdutos: TfrmCadProdutos
  Left = -4
  Top = -4
  Width = 1374
  Height = 748
  Caption = 'Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1366
    Height = 695
    ClientRectBottom = 691
    ClientRectRight = 1362
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Top = 27
        Width = 1358
        Height = 637
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroCOD_GETIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_GETIN'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCODIGO_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_2'
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroNOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroMARCA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MARCA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroMODELO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MODELO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroGRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GRUPO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroSUBGRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBGRUPO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroREDUCAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REDUCAO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroUNIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UNIDADE'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object TVRegistroCTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object TVRegistroCTIE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTIE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object TVRegistroCOMPLEMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPLEMENTO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroQTDADE_1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTDADE_1'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object TVRegistroQTDADE_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTDADE_2'
            Width = 37
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object TVRegistroCOD_TECNICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_TECNICO'
            Visible = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroQNTDE_MINIMA_VENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNTDE_MINIMA_VENDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object TVRegistroLOCALIZACAO_1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCALIZACAO_1'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object TVRegistroLOCALIZACAO_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCALIZACAO_2'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object TVRegistroLOCALIZACAO_3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'LOCALIZACAO_3'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object TVRegistroNEG_QTDADE_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NEG_QTDADE_2'
            Width = 86
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object TVRegistroQTDADE_MIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTDADE_MIN'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object TVRegistroQTDADE_MAX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QTDADE_MAX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object TVRegistroCOMPLEMENTO_NF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPLEMENTO_NF'
            Visible = False
            Width = 123
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object TVRegistroDT_ULT_COMPRA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_ULT_COMPRA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object TVRegistroQT_ULT_COMPRA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QT_ULT_COMPRA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object TVRegistroDT_ULT_VENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_ULT_VENDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
          object TVRegistroPRC_VENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRC_VENDA'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_PIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_PIS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 43
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_COFINS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_COFINS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 44
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_IPI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_IPI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 45
            Position.RowIndex = 0
          end
          object TVRegistroPESO_LIQ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESO_LIQ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 46
            Position.RowIndex = 0
          end
          object TVRegistroPERC_FRETE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PERC_FRETE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 47
            Position.RowIndex = 0
          end
          object TVRegistroCSOSN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CSOSN'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 48
            Position.RowIndex = 0
          end
          object TVRegistroIPI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IPI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 49
            Position.RowIndex = 0
          end
          object TVRegistroVOLUME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VOLUME'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 50
            Position.RowIndex = 0
          end
          object TVRegistroPROD_PESAVEL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PROD_PESAVEL'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 60
            Position.BandIndex = 0
            Position.ColIndex = 51
            Position.RowIndex = 0
          end
          object TVRegistroETIQUETA_ENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ETIQUETA_ENT'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 52
            Position.RowIndex = 0
          end
          object TVRegistroATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 29
            Position.BandIndex = 0
            Position.ColIndex = 53
            Position.RowIndex = 0
          end
          object TVRegistroSUBUNIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SUBUNIDADE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 54
            Position.RowIndex = 0
          end
          object TVRegistroCODIGO_NCM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_NCM'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 55
            Position.RowIndex = 0
          end
          object TVRegistroNOME_MODELO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_MODELO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 56
            Position.RowIndex = 0
          end
          object TVRegistroVENDE_FRACIONADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VENDE_FRACIONADO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 57
            Position.RowIndex = 0
          end
          object TVRegistroPOSSUI_LOTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'POSSUI_LOTE'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Visible = False
            Width = 43
            Position.BandIndex = 0
            Position.ColIndex = 58
            Position.RowIndex = 0
          end
          object TVRegistroQNTDE_PEDIDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNTDE_PEDIDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 59
            Position.RowIndex = 0
          end
          object TVRegistroPREVISAO_ENTREGA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PREVISAO_ENTREGA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 60
            Position.RowIndex = 0
          end
          object TVRegistroQNTDE_MAXIMA_VENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'QNTDE_MAXIMA_VENDA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 61
            Position.RowIndex = 0
          end
          object TVRegistroPIS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PIS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 62
            Position.RowIndex = 0
          end
          object TVRegistroCOFINS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COFINS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 63
            Position.RowIndex = 0
          end
          object TVRegistroSERVICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SERVICO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 64
            Position.RowIndex = 0
          end
          object TVRegistroVALIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALIDADE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 65
            Position.RowIndex = 0
          end
          object TVRegistroSECAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SECAO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 66
            Position.RowIndex = 0
          end
          object TVRegistroCOMPROMETIDO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPROMETIDO'
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object TVRegistroEST_MIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EST_MIN'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 67
            Position.RowIndex = 0
          end
          object TVRegistroEST_MAX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EST_MAX'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 68
            Position.RowIndex = 0
          end
          object TVRegistroSERIE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SERIE'
            Width = 178
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroDEBITA_ICMS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DEBITA_ICMS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 69
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_ALIQ_EST: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_ALIQ_EST'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 70
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_ALIQ_INT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_ALIQ_INT'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 71
            Position.RowIndex = 0
          end
          object TVRegistroTRIB_MODALIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TRIB_MODALIDADE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 72
            Position.RowIndex = 0
          end
          object TVRegistroCOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COR'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 73
            Position.RowIndex = 0
          end
          object TVRegistroMATERIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MATERIAL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 74
            Position.RowIndex = 0
          end
          object TVRegistroCOD_LOCALIZACAO_1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_LOCALIZACAO_1'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 75
            Position.RowIndex = 0
          end
          object TVRegistroCOD_LOCALIZACAO_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_LOCALIZACAO_2'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 76
            Position.RowIndex = 0
          end
          object TVRegistroCOD_LOCALIZACAO_3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_LOCALIZACAO_3'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 77
            Position.RowIndex = 0
          end
          object TVRegistroNOME_GRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_GRUPO'
            Visible = False
            Width = 128
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object TVRegistroNOME_SUBGRUPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_SUBGRUPO'
            Visible = False
            Width = 128
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object TVRegistroNOME_SECAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_SECAO'
            Visible = False
            Width = 150
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object TVRegistroNOME_MODELO1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_MODELO1'
            Width = 122
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object TVRegistroNOME_MARCA1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_MARCA1'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroNOME_MATERIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_MATERIAL'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object TVRegistroNOME_UNIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_UNIDADE'
            Visible = False
            Width = 161
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object TVRegistroNOME_COR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_COR'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object TVRegistroNOME_LOC_1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_LOC_1'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object TVRegistroNOME_LOC_2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_LOC_2'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object TVRegistroNOME_LOC_3: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_LOC_3'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object TVRegistroALIQUOTA_ECF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ALIQUOTA_ECF'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 78
            Position.RowIndex = 0
          end
          object TVRegistroNOME_MARCA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_MARCA'
            Width = 171
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 1358
        Height = 27
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 1358
        Height = 664
        inherited pnlSubCad: TPanel
          Top = 386
          Width = 1356
          inherited PgcDetalhe: TcxPageControl
            Width = 1356
            ClientRectRight = 1352
            inherited tbsDetalhe1: TcxTabSheet
              inherited PGCSub1: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              inherited PGCSub2: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              inherited PGCSub3: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              inherited PGCSub4: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              inherited PGCSub5: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              inherited PGCSub6: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              inherited PGCSub7: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              inherited PGCSub8: TcxPageControl
                Width = 1348
                ClientRectRight = 1344
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 1356
          Height = 385
          inherited PgcMaster: TcxPageControl
            Width = 1356
            Height = 385
            ClientRectBottom = 381
            ClientRectRight = 1352
          end
        end
      end
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select p.*,'
      'g.nome nome_grupo,'
      'sg.nome nome_subgrupo,'
      's.nome nome_secao,'
      'mdl.nome nome_modelo,'
      'm.nome nome_marca,'
      'mt.nome nome_material,'
      'u.nome nome_unidade,'
      'c.nome nome_cor,'
      'l1.descricao nome_loc_1,'
      'l1.descricao nome_loc_2,'
      'l1.descricao nome_loc_3'
      ''
      'from pcd_lista_produto(:cnpj, '#39' '#39') p'
      
        'left join est_grupos g on (g.cnpj = p.cnpj and g.codigo = p.grup' +
        'o)'
      
        'left join est_subgrupos sg on (sg.cnpj = g.cnpj and sg.grupo = p' +
        '.grupo and p.subgrupo = sg.subgrupo)'
      
        'left join est_secao s on (p.cnpj = s.cnpj and p.secao = s.cod_se' +
        'cao)'
      
        'left join glo_modelo_propriedade mdl on (p.cnpj = mdl.cnpj and p' +
        '.modelo = mdl.codigo)'
      
        'left join est_marcas m on (m.cnpj = p.cnpj and m.codigo = p.marc' +
        'a)'
      
        'left join est_material mt on (p.cnpj = mt.cnpj and p.material = ' +
        'mt.codigo)'
      
        'left join est_unidades u on (p.cnpj = u.cnpj and p.unidade = u.s' +
        'igla)'
      'left join est_cor c on (p.cnpj = c.cnpj and p.cor = c.codigo)'
      
        'left join est_localizacao l1 on (p.cnpj = l1.cnpj and p.cod_loca' +
        'lizacao_1 = l1.codigo)'
      
        'left join est_localizacao l2 on (p.cnpj = l2.cnpj and p.cod_loca' +
        'lizacao_1 = l2.codigo)'
      
        'left join est_localizacao l3 on (p.cnpj = l3.cnpj and p.cod_loca' +
        'lizacao_1 = l3.codigo)'
      'order by p.nome')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_LISTA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object dtListCOD_TECNICO: TIntegerField
      DisplayLabel = 'C'#243'd. Tecnico'
      FieldName = 'COD_TECNICO'
      Origin = '"PCD_LISTA_PRODUTO"."COD_TECNICO"'
    end
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PCD_LISTA_PRODUTO"."CNPJ"'
      Size = 14
    end
    object dtListCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO"'
      Size = 15
    end
    object dtListCOD_GETIN: TIBStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'COD_GETIN'
      Origin = '"PCD_LISTA_PRODUTO"."COD_GETIN"'
      Size = 15
    end
    object dtListCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'd. Secund'#225'rio'
      FieldName = 'CODIGO_2'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_2"'
      Size = 15
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"PCD_LISTA_PRODUTO"."NOME"'
      Size = 50
    end
    object dtListMARCA: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'MARCA'
      Origin = '"PCD_LISTA_PRODUTO"."MARCA"'
    end
    object dtListMODELO: TIntegerField
      DisplayLabel = 'C'#243'd. Modelo'
      FieldName = 'MODELO'
      Origin = '"PCD_LISTA_PRODUTO"."MODELO"'
    end
    object dtListGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Grupo'
      FieldName = 'GRUPO'
      Origin = '"PCD_LISTA_PRODUTO"."GRUPO"'
    end
    object dtListSUBGRUPO: TIntegerField
      DisplayLabel = 'C'#243'd. Subgrupo'
      FieldName = 'SUBGRUPO'
      Origin = '"PCD_LISTA_PRODUTO"."SUBGRUPO"'
    end
    object dtListREDUCAO: TIntegerField
      DisplayLabel = 'Redu'#231#227'o'
      FieldName = 'REDUCAO'
      Origin = '"PCD_LISTA_PRODUTO"."REDUCAO"'
    end
    object dtListUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object dtListCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"PCD_LISTA_PRODUTO"."CTE"'
    end
    object dtListCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"PCD_LISTA_PRODUTO"."CTIE"'
    end
    object dtListQTDADE_1: TFloatField
      DisplayLabel = 'Qtde 1'
      FieldName = 'QTDADE_1'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_1"'
    end
    object dtListQTDADE_2: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QTDADE_2'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_2"'
    end
    object dtListQNTDE_MINIMA_VENDA: TFloatField
      DisplayLabel = 'Qtde Min. Venda'
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_MINIMA_VENDA"'
    end
    object dtListLOCALIZACAO_1: TIBStringField
      DisplayLabel = 'Loc. 1 (Texto)'
      FieldName = 'LOCALIZACAO_1'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_1"'
      Size = 30
    end
    object dtListLOCALIZACAO_2: TIBStringField
      DisplayLabel = 'Loc. 2 (Texto)'
      FieldName = 'LOCALIZACAO_2'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_2"'
      Size = 30
    end
    object dtListLOCALIZACAO_3: TIBStringField
      DisplayLabel = 'Loc. 3 (Texto)'
      FieldName = 'LOCALIZACAO_3'
      Origin = '"PCD_LISTA_PRODUTO"."LOCALIZACAO_3"'
      Size = 30
    end
    object dtListNEG_QTDADE_2: TIBStringField
      DisplayLabel = 'Est. Negativo'
      FieldName = 'NEG_QTDADE_2'
      Origin = '"PCD_LISTA_PRODUTO"."NEG_QTDADE_2"'
      Size = 1
    end
    object dtListQTDADE_MIN: TIntegerField
      DisplayLabel = 'Qtde Min'
      FieldName = 'QTDADE_MIN'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_MIN"'
    end
    object dtListQTDADE_MAX: TIntegerField
      DisplayLabel = 'Qtde Max'
      FieldName = 'QTDADE_MAX'
      Origin = '"PCD_LISTA_PRODUTO"."QTDADE_MAX"'
    end
    object dtListCOMPLEMENTO_NF: TIBStringField
      DisplayLabel = 'Complemento NF'
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"PCD_LISTA_PRODUTO"."COMPLEMENTO_NF"'
      Size = 1
    end
    object dtListDT_ULT_COMPRA: TDateField
      DisplayLabel = 'Dt. Ult. Compra'
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"PCD_LISTA_PRODUTO"."DT_ULT_COMPRA"'
    end
    object dtListQT_ULT_COMPRA: TIntegerField
      DisplayLabel = 'Qtde Ult. Compra'
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"PCD_LISTA_PRODUTO"."QT_ULT_COMPRA"'
    end
    object dtListDT_ULT_VENDA: TDateField
      DisplayLabel = 'Dt. Ult. Venda'
      FieldName = 'DT_ULT_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."DT_ULT_VENDA"'
    end
    object dtListPRC_VENDA: TFloatField
      DisplayLabel = 'Prc. Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."PRC_VENDA"'
    end
    object dtListTRIB_PIS: TIBStringField
      DisplayLabel = 'Trib. PIS'
      FieldName = 'TRIB_PIS'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_PIS"'
      FixedChar = True
      Size = 2
    end
    object dtListTRIB_COFINS: TIBStringField
      DisplayLabel = 'Trib. COFINS'
      FieldName = 'TRIB_COFINS'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_COFINS"'
      FixedChar = True
      Size = 2
    end
    object dtListTRIB_IPI: TIBStringField
      DisplayLabel = 'Trib. IPI'
      FieldName = 'TRIB_IPI'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_IPI"'
      FixedChar = True
      Size = 2
    end
    object dtListPESO_LIQ: TFloatField
      DisplayLabel = 'Peso Liq'
      FieldName = 'PESO_LIQ'
      Origin = '"PCD_LISTA_PRODUTO"."PESO_LIQ"'
    end
    object dtListPERC_FRETE: TFloatField
      DisplayLabel = 'Pct(%) Frete'
      FieldName = 'PERC_FRETE'
      Origin = '"PCD_LISTA_PRODUTO"."PERC_FRETE"'
    end
    object dtListCSOSN: TIntegerField
      FieldName = 'CSOSN'
      Origin = '"PCD_LISTA_PRODUTO"."CSOSN"'
    end
    object dtListIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"PCD_LISTA_PRODUTO"."IPI"'
    end
    object dtListVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"PCD_LISTA_PRODUTO"."VOLUME"'
    end
    object dtListPROD_PESAVEL: TIBStringField
      DisplayLabel = 'Pesavel'
      FieldName = 'PROD_PESAVEL'
      Origin = '"PCD_LISTA_PRODUTO"."PROD_PESAVEL"'
      Size = 1
    end
    object dtListETIQUETA_ENT: TIBStringField
      DisplayLabel = 'Etiqueta Ent'
      FieldName = 'ETIQUETA_ENT'
      Origin = '"PCD_LISTA_PRODUTO"."ETIQUETA_ENT"'
      Size = 1
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"PCD_LISTA_PRODUTO"."ATIVO"'
      Size = 1
    end
    object dtListSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub. Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."SUBUNIDADE"'
    end
    object dtListCODIGO_NCM: TIBStringField
      DisplayLabel = 'C'#243'd. NCM'
      FieldName = 'CODIGO_NCM'
      Origin = '"PCD_LISTA_PRODUTO"."CODIGO_NCM"'
      Size = 50
    end
    object dtListNOME_MODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NOME_MODELO'
      Origin = '"PCD_LISTA_PRODUTO"."NOME_MODELO"'
      Size = 80
    end
    object dtListVENDE_FRACIONADO: TIBStringField
      DisplayLabel = 'Fracionado'
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"PCD_LISTA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object dtListPOSSUI_LOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'POSSUI_LOTE'
      Origin = '"PCD_LISTA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object dtListQNTDE_PEDIDA: TFloatField
      DisplayLabel = 'Qtde Pedida'
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_PEDIDA"'
    end
    object dtListPREVISAO_ENTREGA: TDateField
      DisplayLabel = 'Prev. Entrega'
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"PCD_LISTA_PRODUTO"."PREVISAO_ENTREGA"'
    end
    object dtListQNTDE_MAXIMA_VENDA: TFloatField
      DisplayLabel = 'Qtd. Max Venda'
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"PCD_LISTA_PRODUTO"."QNTDE_MAXIMA_VENDA"'
    end
    object dtListPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"PCD_LISTA_PRODUTO"."PIS"'
      FixedChar = True
      Size = 1
    end
    object dtListCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"PCD_LISTA_PRODUTO"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object dtListSERVICO: TIBStringField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"PCD_LISTA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object dtListVALIDADE: TIntegerField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."VALIDADE"'
    end
    object dtListSECAO: TIntegerField
      DisplayLabel = 'C'#243'd. Se'#231#227'o'
      FieldName = 'SECAO'
      Origin = '"PCD_LISTA_PRODUTO"."SECAO"'
    end
    object dtListCOMPROMETIDO: TIBBCDField
      DisplayLabel = 'Qtde Comprometido'
      FieldName = 'COMPROMETIDO'
      Origin = '"PCD_LISTA_PRODUTO"."COMPROMETIDO"'
      Precision = 18
      Size = 4
    end
    object dtListEST_MIN: TIBBCDField
      DisplayLabel = 'Est. Min'
      FieldName = 'EST_MIN'
      Origin = '"PCD_LISTA_PRODUTO"."EST_MIN"'
      Precision = 18
      Size = 4
    end
    object dtListEST_MAX: TIBBCDField
      DisplayLabel = 'Est. Max'
      FieldName = 'EST_MAX'
      Origin = '"PCD_LISTA_PRODUTO"."EST_MAX"'
      Precision = 18
      Size = 4
    end
    object dtListSERIE: TIBStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE'
      Origin = '"PCD_LISTA_PRODUTO"."SERIE"'
      Size = 30
    end
    object dtListDEBITA_ICMS: TIBStringField
      DisplayLabel = 'Deb. ICMS'
      FieldName = 'DEBITA_ICMS'
      Origin = '"PCD_LISTA_PRODUTO"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object dtListTRIB_ALIQ_EST: TIBBCDField
      DisplayLabel = 'Trib. Aliq. Estadual'
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_ALIQ_EST"'
      Precision = 18
      Size = 4
    end
    object dtListTRIB_ALIQ_INT: TIBBCDField
      DisplayLabel = 'Trib. Aliq. Interestadual'
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_ALIQ_INT"'
      Precision = 18
      Size = 4
    end
    object dtListTRIB_MODALIDADE: TIBStringField
      DisplayLabel = 'Trib. Modalidade'
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"PCD_LISTA_PRODUTO"."TRIB_MODALIDADE"'
      Size = 50
    end
    object dtListCOR: TIntegerField
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'COR'
      Origin = '"PCD_LISTA_PRODUTO"."COR"'
    end
    object dtListMATERIAL: TIntegerField
      DisplayLabel = 'C'#243'd. Material'
      FieldName = 'MATERIAL'
      Origin = '"PCD_LISTA_PRODUTO"."MATERIAL"'
    end
    object dtListCOD_LOCALIZACAO_1: TIntegerField
      DisplayLabel = 'C'#243'd. Loc. 1'
      FieldName = 'COD_LOCALIZACAO_1'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_1"'
    end
    object dtListCOD_LOCALIZACAO_2: TIntegerField
      DisplayLabel = 'C'#243'd. Loc. 2'
      FieldName = 'COD_LOCALIZACAO_2'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_2"'
    end
    object dtListCOD_LOCALIZACAO_3: TIntegerField
      DisplayLabel = 'C'#243'd. Loc. 3'
      FieldName = 'COD_LOCALIZACAO_3'
      Origin = '"PCD_LISTA_PRODUTO"."COD_LOCALIZACAO_3"'
    end
    object dtListNOME_GRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOME_GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object dtListNOME_SUBGRUPO: TIBStringField
      DisplayLabel = 'Sub. Grupo'
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
    object dtListNOME_SECAO: TIBStringField
      DisplayLabel = 'Se'#231#227'o'
      FieldName = 'NOME_SECAO'
      Origin = '"EST_SECAO"."NOME"'
      Size = 50
    end
    object dtListNOME_MODELO1: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'NOME_MODELO1'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object dtListNOME_MARCA1: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA1'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
    end
    object dtListNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"EST_MATERIAL"."NOME"'
      Size = 50
    end
    object dtListNOME_UNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'NOME_UNIDADE'
      Origin = '"EST_UNIDADES"."NOME"'
      Size = 50
    end
    object dtListNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"EST_COR"."NOME"'
      Size = 50
    end
    object dtListNOME_LOC_1: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 1'
      FieldName = 'NOME_LOC_1'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
    object dtListNOME_LOC_2: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 2'
      FieldName = 'NOME_LOC_2'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
    object dtListNOME_LOC_3: TIBStringField
      DisplayLabel = 'Localiza'#231#227'o 3'
      FieldName = 'NOME_LOC_3'
      Origin = '"EST_LOCALIZACAO"."DESCRICAO"'
      Size = 50
    end
    object dtListALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'Aliq. ECF'
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"PCD_LISTA_PRODUTO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object dtListNOME_MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Size = 50
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
        Component = TVRegistroALIQUOTA_ECF
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
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
        Component = TVRegistroCOD_GETIN
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_LOCALIZACAO_1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_LOCALIZACAO_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_LOCALIZACAO_3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_TECNICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroCODIGO_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCODIGO_NCM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOFINS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroCOMPLEMENTO_NF
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOMPROMETIDO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCSOSN
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCTIE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroDEBITA_ICMS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroDT_ULT_COMPRA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroDT_ULT_VENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroEST_MAX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroEST_MIN
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroETIQUETA_ENT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroGRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroIPI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroLOCALIZACAO_1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroLOCALIZACAO_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroLOCALIZACAO_3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroMARCA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroMATERIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroMODELO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNEG_QTDADE_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_COR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_GRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_LOC_1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_LOC_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_LOC_3
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_MARCA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_MARCA1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_MATERIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_MODELO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_MODELO1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_SECAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_SUBGRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroNOME_UNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPERC_FRETE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPESO_LIQ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPOSSUI_LOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPRC_VENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPREVISAO_ENTREGA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPROD_PESAVEL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQNTDE_MAXIMA_VENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQNTDE_MINIMA_VENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQNTDE_PEDIDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQT_ULT_COMPRA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQTDADE_1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQTDADE_2
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQTDADE_MAX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroQTDADE_MIN
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroREDUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSECAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSERIE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSERVICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSUBGRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSUBUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_ALIQ_EST
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_ALIQ_INT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_COFINS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_IPI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_MODALIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroTRIB_PIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroVALIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroVENDE_FRACIONADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroVOLUME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
end
