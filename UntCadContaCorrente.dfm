inherited frmCadContaCorrente: TfrmCadContaCorrente
  Left = 296
  Top = 210
  Caption = 'Conta Corrente'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsEdita
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          OptionsView.BandHeaders = True
          Bands = <
            item
              Caption = 'Dados da Conta'
            end
            item
              Caption = 'Dados do Boleto'
            end>
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTAPAI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTAPAI'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Width = 238
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BANCO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANCO'
            Width = 53
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ULTIMO_CHEQUE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ULTIMO_CHEQUE'
            Width = 74
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TIPO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO'
            Width = 43
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2AGENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AGENCIA'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DV_AGENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DV_AGENCIA'
            Width = 62
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTA_CORRENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTA_CORRENTE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DV_CONTA_CORRENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DV_CONTA_CORRENTE'
            Width = 90
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DV_AGENCIA_CONTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DV_AGENCIA_CONTA'
            Visible = False
            Width = 116
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CTB_FLUXO_CAIXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTB_FLUXO_CAIXA'
            Width = 117
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2GERA_BOLETOS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'GERA_BOLETOS'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_INSTRUCAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_INSTRUCAO'
            Position.BandIndex = 1
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_LOCAL_PAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_LOCAL_PAGTO'
            Width = 148
            Position.BandIndex = 1
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_COD_CEDENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_COD_CEDENTE'
            Position.BandIndex = 1
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIG_COD_CEDENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIG_COD_CEDENTE'
            Position.BandIndex = 1
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIG_AGENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIG_AGENCIA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_AGENCIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_AGENCIA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_CONVENIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_CONVENIO'
            Position.BandIndex = 1
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_CONTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_CONTA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIG_CONTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIG_CONTA'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_CARTEIRA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_CARTEIRA'
            Position.BandIndex = 1
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_LAYOUT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_LAYOUT'
            Position.BandIndex = 1
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_ACEITE_DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_ACEITE_DOCTO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIAS_ABATIMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIAS_ABATIMENTO'
            Position.BandIndex = 1
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIAS_DESCONTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIAS_DESCONTO'
            Position.BandIndex = 1
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIAS_MORA_JUROS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIAS_MORA_JUROS'
            Position.BandIndex = 1
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIAS_PROTESTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIAS_PROTESTO'
            Position.BandIndex = 1
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_PCT_ABATIMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_PCT_ABATIMENTO'
            Position.BandIndex = 1
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_PCT_DESCONTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_PCT_DESCONTO'
            Position.BandIndex = 1
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DESP_BANCARIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESP_BANCARIA'
            Position.BandIndex = 1
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MORA_DIARIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MORA_DIARIA'
            Position.BandIndex = 1
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_VLR_IOF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_VLR_IOF'
            Position.BandIndex = 1
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_VLR_OUTRAS_DESP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_VLR_OUTRAS_DESP'
            Position.BandIndex = 1
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIR_REMESSA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIR_REMESSA'
            Width = 181
            Position.BandIndex = 1
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_DIR_RETORNO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_DIR_RETORNO'
            Width = 176
            Position.BandIndex = 1
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_MULTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_MULTA'
            Position.BandIndex = 1
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_NOSSO_NUM_INI: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_NOSSO_NUM_INI'
            Position.BandIndex = 1
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_NOSSO_NUM_FIM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_NOSSO_NUM_FIM'
            Position.BandIndex = 1
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_NOSSO_NUM_PROX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_NOSSO_NUM_PROX'
            Position.BandIndex = 1
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_MODALIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_MODALIDADE'
            Position.BandIndex = 1
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_LAYOUT_IMPRESSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_LAYOUT_IMPRESSAO'
            Position.BandIndex = 1
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BLT_NUM_COPIAS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BLT_NUM_COPIAS'
            Position.BandIndex = 1
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from CTB_PLANOCONTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_PLANOCONTA'
      
        '  (AGENCIA, BANCO, BLT_ACEITE_DOCTO, BLT_AGENCIA, BLT_CARTEIRA, ' +
        'BLT_COD_CEDENTE, '
      
        '   BLT_CONTA, BLT_CONVENIO, BLT_DIAS_ABATIMENTO, BLT_DIAS_DESCON' +
        'TO, BLT_DIAS_MORA_JUROS, '
      
        '   BLT_DIAS_PROTESTO, BLT_DIG_AGENCIA, BLT_DIG_COD_CEDENTE, BLT_' +
        'DIG_CONTA, '
      
        '   BLT_DIR_REMESSA, BLT_DIR_RETORNO, BLT_INSTRUCAO, BLT_LAYOUT, ' +
        'BLT_LAYOUT_IMPRESSAO, '
      
        '   BLT_LOCAL_PAGTO, BLT_MODALIDADE, BLT_MULTA, BLT_NOSSO_NUM_FIM' +
        ', BLT_NOSSO_NUM_INI, '
      
        '   BLT_NOSSO_NUM_PROX, BLT_NUM_COPIAS, BLT_PCT_ABATIMENTO, BLT_P' +
        'CT_DESCONTO, '
      
        '   BLT_VLR_IOF, BLT_VLR_OUTRAS_DESP, CNPJ, CODIGO, CONTA, CONTA_' +
        'CORRENTE, '
      
        '   CONTAPAI, CTB_FLUXO_CAIXA, DESP_BANCARIA, DV_AGENCIA, DV_AGEN' +
        'CIA_CONTA, '
      
        '   DV_CONTA_CORRENTE, GERA_BOLETOS, MORA_DIARIA, NOME, TIPO, ULT' +
        'IMO_CHEQUE)'
      'values'
      
        '  (:AGENCIA, :BANCO, :BLT_ACEITE_DOCTO, :BLT_AGENCIA, :BLT_CARTE' +
        'IRA, :BLT_COD_CEDENTE, '
      
        '   :BLT_CONTA, :BLT_CONVENIO, :BLT_DIAS_ABATIMENTO, :BLT_DIAS_DE' +
        'SCONTO, '
      
        '   :BLT_DIAS_MORA_JUROS, :BLT_DIAS_PROTESTO, :BLT_DIG_AGENCIA, :' +
        'BLT_DIG_COD_CEDENTE, '
      
        '   :BLT_DIG_CONTA, :BLT_DIR_REMESSA, :BLT_DIR_RETORNO, :BLT_INST' +
        'RUCAO, '
      
        '   :BLT_LAYOUT, :BLT_LAYOUT_IMPRESSAO, :BLT_LOCAL_PAGTO, :BLT_MO' +
        'DALIDADE, '
      
        '   :BLT_MULTA, :BLT_NOSSO_NUM_FIM, :BLT_NOSSO_NUM_INI, :BLT_NOSS' +
        'O_NUM_PROX, '
      
        '   :BLT_NUM_COPIAS, :BLT_PCT_ABATIMENTO, :BLT_PCT_DESCONTO, :BLT' +
        '_VLR_IOF, '
      
        '   :BLT_VLR_OUTRAS_DESP, :CNPJ, :CODIGO, :CONTA, :CONTA_CORRENTE' +
        ', :CONTAPAI, '
      
        '   :CTB_FLUXO_CAIXA, :DESP_BANCARIA, :DV_AGENCIA, :DV_AGENCIA_CO' +
        'NTA, :DV_CONTA_CORRENTE, '
      '   :GERA_BOLETOS, :MORA_DIARIA, :NOME, :TIPO, :ULTIMO_CHEQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CONTA,'
      '  CODIGO,'
      '  CONTAPAI,'
      '  NOME,'
      '  BANCO,'
      '  ULTIMO_CHEQUE,'
      '  TIPO,'
      '  AGENCIA,'
      '  DV_AGENCIA,'
      '  CONTA_CORRENTE,'
      '  DV_CONTA_CORRENTE,'
      '  DV_AGENCIA_CONTA,'
      '  CTB_FLUXO_CAIXA,'
      '  GERA_BOLETOS,'
      '  BLT_INSTRUCAO,'
      '  BLT_LOCAL_PAGTO,'
      '  BLT_COD_CEDENTE,'
      '  BLT_DIG_COD_CEDENTE,'
      '  BLT_AGENCIA,'
      '  BLT_DIG_AGENCIA,'
      '  BLT_CONVENIO,'
      '  BLT_CONTA,'
      '  BLT_DIG_CONTA,'
      '  BLT_CARTEIRA,'
      '  BLT_LAYOUT,'
      '  BLT_ACEITE_DOCTO,'
      '  BLT_DIAS_ABATIMENTO,'
      '  BLT_DIAS_DESCONTO,'
      '  BLT_DIAS_MORA_JUROS,'
      '  BLT_DIAS_PROTESTO,'
      '  BLT_PCT_ABATIMENTO,'
      '  BLT_PCT_DESCONTO,'
      '  DESP_BANCARIA,'
      '  MORA_DIARIA,'
      '  BLT_VLR_IOF,'
      '  BLT_VLR_OUTRAS_DESP,'
      '  BLT_DIR_REMESSA,'
      '  BLT_DIR_RETORNO,'
      '  BLT_MULTA,'
      '  BLT_NOSSO_NUM_INI,'
      '  BLT_NOSSO_NUM_FIM,'
      '  BLT_NOSSO_NUM_PROX,'
      '  BLT_MODALIDADE,'
      '  BLT_LAYOUT_IMPRESSAO,'
      '  BLT_NUM_COPIAS'
      'from CTB_PLANOCONTA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      'from CTB_PLANOCONTA'
      'WHERE CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update CTB_PLANOCONTA'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  BLT_ACEITE_DOCTO = :BLT_ACEITE_DOCTO,'
      '  BLT_AGENCIA = :BLT_AGENCIA,'
      '  BLT_CARTEIRA = :BLT_CARTEIRA,'
      '  BLT_COD_CEDENTE = :BLT_COD_CEDENTE,'
      '  BLT_CONTA = :BLT_CONTA,'
      '  BLT_CONVENIO = :BLT_CONVENIO,'
      '  BLT_DIAS_ABATIMENTO = :BLT_DIAS_ABATIMENTO,'
      '  BLT_DIAS_DESCONTO = :BLT_DIAS_DESCONTO,'
      '  BLT_DIAS_MORA_JUROS = :BLT_DIAS_MORA_JUROS,'
      '  BLT_DIAS_PROTESTO = :BLT_DIAS_PROTESTO,'
      '  BLT_DIG_AGENCIA = :BLT_DIG_AGENCIA,'
      '  BLT_DIG_COD_CEDENTE = :BLT_DIG_COD_CEDENTE,'
      '  BLT_DIG_CONTA = :BLT_DIG_CONTA,'
      '  BLT_DIR_REMESSA = :BLT_DIR_REMESSA,'
      '  BLT_DIR_RETORNO = :BLT_DIR_RETORNO,'
      '  BLT_INSTRUCAO = :BLT_INSTRUCAO,'
      '  BLT_LAYOUT = :BLT_LAYOUT,'
      '  BLT_LAYOUT_IMPRESSAO = :BLT_LAYOUT_IMPRESSAO,'
      '  BLT_LOCAL_PAGTO = :BLT_LOCAL_PAGTO,'
      '  BLT_MODALIDADE = :BLT_MODALIDADE,'
      '  BLT_MULTA = :BLT_MULTA,'
      '  BLT_NOSSO_NUM_FIM = :BLT_NOSSO_NUM_FIM,'
      '  BLT_NOSSO_NUM_INI = :BLT_NOSSO_NUM_INI,'
      '  BLT_NOSSO_NUM_PROX = :BLT_NOSSO_NUM_PROX,'
      '  BLT_NUM_COPIAS = :BLT_NUM_COPIAS,'
      '  BLT_PCT_ABATIMENTO = :BLT_PCT_ABATIMENTO,'
      '  BLT_PCT_DESCONTO = :BLT_PCT_DESCONTO,'
      '  BLT_VLR_IOF = :BLT_VLR_IOF,'
      '  BLT_VLR_OUTRAS_DESP = :BLT_VLR_OUTRAS_DESP,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA,'
      '  CONTA_CORRENTE = :CONTA_CORRENTE,'
      '  CONTAPAI = :CONTAPAI,'
      '  CTB_FLUXO_CAIXA = :CTB_FLUXO_CAIXA,'
      '  DESP_BANCARIA = :DESP_BANCARIA,'
      '  DV_AGENCIA = :DV_AGENCIA,'
      '  DV_AGENCIA_CONTA = :DV_AGENCIA_CONTA,'
      '  DV_CONTA_CORRENTE = :DV_CONTA_CORRENTE,'
      '  GERA_BOLETOS = :GERA_BOLETOS,'
      '  MORA_DIARIA = :MORA_DIARIA,'
      '  NOME = :NOME,'
      '  TIPO = :TIPO,'
      '  ULTIMO_CHEQUE = :ULTIMO_CHEQUE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Size = 15
    end
    object dtEditCONTAPAI: TIBStringField
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Size = 10
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object dtEditBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object dtEditULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object dtEditTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtEditAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object dtEditDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object dtEditCONTA_CORRENTE: TIBStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object dtEditDV_CONTA_CORRENTE: TIBStringField
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object dtEditDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
    object dtEditCTB_FLUXO_CAIXA: TIBStringField
      FieldName = 'CTB_FLUXO_CAIXA'
      Origin = '"CTB_PLANOCONTA"."CTB_FLUXO_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object dtEditGERA_BOLETOS: TIBStringField
      FieldName = 'GERA_BOLETOS'
      Origin = '"CTB_PLANOCONTA"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"CTB_PLANOCONTA"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"CTB_PLANOCONTA"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object dtEditBLT_COD_CEDENTE: TIntegerField
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_COD_CEDENTE"'
    end
    object dtEditBLT_DIG_COD_CEDENTE: TIBStringField
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_AGENCIA"'
      Size = 10
    end
    object dtEditBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_CONVENIO: TIntegerField
      FieldName = 'BLT_CONVENIO'
      Origin = '"CTB_PLANOCONTA"."BLT_CONVENIO"'
    end
    object dtEditBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_CONTA"'
      Size = 10
    end
    object dtEditBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"CTB_PLANOCONTA"."BLT_CARTEIRA"'
      Size = 10
    end
    object dtEditBLT_LAYOUT: TSmallintField
      FieldName = 'BLT_LAYOUT'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT"'
    end
    object dtEditBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"CTB_PLANOCONTA"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_DIAS_ABATIMENTO: TIBStringField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object dtEditBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_DESCONTO"'
    end
    object dtEditBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_MORA_JUROS"'
    end
    object dtEditBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_PROTESTO"'
    end
    object dtEditBLT_PCT_ABATIMENTO: TFloatField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_ABATIMENTO"'
    end
    object dtEditBLT_PCT_DESCONTO: TFloatField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_DESCONTO"'
    end
    object dtEditDESP_BANCARIA: TFloatField
      FieldName = 'DESP_BANCARIA'
      Origin = '"CTB_PLANOCONTA"."DESP_BANCARIA"'
    end
    object dtEditMORA_DIARIA: TFloatField
      FieldName = 'MORA_DIARIA'
      Origin = '"CTB_PLANOCONTA"."MORA_DIARIA"'
    end
    object dtEditBLT_VLR_IOF: TFloatField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_IOF"'
    end
    object dtEditBLT_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_OUTRAS_DESP"'
    end
    object dtEditBLT_DIR_REMESSA: TIBStringField
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object dtEditBLT_DIR_RETORNO: TIBStringField
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object dtEditBLT_MULTA: TFloatField
      FieldName = 'BLT_MULTA'
      Origin = '"CTB_PLANOCONTA"."BLT_MULTA"'
    end
    object dtEditBLT_NOSSO_NUM_INI: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_INI"'
    end
    object dtEditBLT_NOSSO_NUM_FIM: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_FIM"'
    end
    object dtEditBLT_NOSSO_NUM_PROX: TIntegerField
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_PROX"'
    end
    object dtEditBLT_MODALIDADE: TIBStringField
      FieldName = 'BLT_MODALIDADE'
      Origin = '"CTB_PLANOCONTA"."BLT_MODALIDADE"'
      Size = 10
    end
    object dtEditBLT_LAYOUT_IMPRESSAO: TIBStringField
      FieldName = 'BLT_LAYOUT_IMPRESSAO'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
    object dtEditBLT_NUM_COPIAS: TIntegerField
      FieldName = 'BLT_NUM_COPIAS'
      Origin = '"CTB_PLANOCONTA"."BLT_NUM_COPIAS"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select *'
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Size = 15
    end
    object dtListCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Size = 10
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object dtListBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object dtListULTIMO_CHEQUE: TIntegerField
      DisplayLabel = #218'ltimo Cheque'
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object dtListTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"CTB_PLANOCONTA"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object dtListAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object dtListDV_AGENCIA: TIBStringField
      DisplayLabel = 'D'#237'g. Ag.'
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object dtListCONTA_CORRENTE: TIBStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object dtListDV_CONTA_CORRENTE: TIBStringField
      DisplayLabel = 'D'#237'g. Cnt. Corr.'
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object dtListDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
    object dtListCTB_FLUXO_CAIXA: TIBStringField
      DisplayLabel = 'Cont. no Fluxo de Caixa'
      FieldName = 'CTB_FLUXO_CAIXA'
      Origin = '"CTB_PLANOCONTA"."CTB_FLUXO_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object dtListGERA_BOLETOS: TIBStringField
      DisplayLabel = 'Imprime Boletos'
      FieldName = 'GERA_BOLETOS'
      Origin = '"CTB_PLANOCONTA"."GERA_BOLETOS"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_INSTRUCAO: TMemoField
      DisplayLabel = 'Instru'#231#245'es do Boleto'
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"CTB_PLANOCONTA"."BLT_INSTRUCAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListBLT_LOCAL_PAGTO: TIBStringField
      DisplayLabel = 'Local de Pagto.'
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"CTB_PLANOCONTA"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object dtListBLT_COD_CEDENTE: TIntegerField
      DisplayLabel = 'Cedente'
      FieldName = 'BLT_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_COD_CEDENTE"'
    end
    object dtListBLT_DIG_COD_CEDENTE: TIBStringField
      DisplayLabel = 'Dig. Cedente'
      FieldName = 'BLT_DIG_COD_CEDENTE'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_COD_CEDENTE"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_AGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'BLT_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_AGENCIA"'
      Size = 10
    end
    object dtListBLT_DIG_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'#234'ncia'
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_CONVENIO: TIntegerField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'BLT_CONVENIO'
      Origin = '"CTB_PLANOCONTA"."BLT_CONVENIO"'
    end
    object dtListBLT_CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'BLT_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_CONTA"'
      Size = 10
    end
    object dtListBLT_DIG_CONTA: TIBStringField
      DisplayLabel = 'Dig. Conta'
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_CARTEIRA: TIBStringField
      DisplayLabel = 'Carteira'
      FieldName = 'BLT_CARTEIRA'
      Origin = '"CTB_PLANOCONTA"."BLT_CARTEIRA"'
      Size = 10
    end
    object dtListBLT_LAYOUT: TSmallintField
      DisplayLabel = 'Layout'
      FieldName = 'BLT_LAYOUT'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT"'
    end
    object dtListBLT_ACEITE_DOCTO: TIBStringField
      DisplayLabel = 'Aceite Docto'
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"CTB_PLANOCONTA"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_DIAS_ABATIMENTO: TIBStringField
      DisplayLabel = 'Abatimento'
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_ABATIMENTO"'
      FixedChar = True
      Size = 14
    end
    object dtListBLT_DIAS_DESCONTO: TIntegerField
      DisplayLabel = 'Descontos'
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_DESCONTO"'
    end
    object dtListBLT_DIAS_MORA_JUROS: TIntegerField
      DisplayLabel = 'Juros'
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_MORA_JUROS"'
    end
    object dtListBLT_DIAS_PROTESTO: TIntegerField
      DisplayLabel = 'Protestos\Despesas'
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIAS_PROTESTO"'
    end
    object dtListBLT_PCT_ABATIMENTO: TFloatField
      DisplayLabel = 'Pct. Abatimento'
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_ABATIMENTO"'
    end
    object dtListBLT_PCT_DESCONTO: TFloatField
      DisplayLabel = 'Pct. Desconto'
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"CTB_PLANOCONTA"."BLT_PCT_DESCONTO"'
    end
    object dtListDESP_BANCARIA: TFloatField
      DisplayLabel = 'Desp. Banc'#225'rias'
      FieldName = 'DESP_BANCARIA'
      Origin = '"CTB_PLANOCONTA"."DESP_BANCARIA"'
    end
    object dtListMORA_DIARIA: TFloatField
      DisplayLabel = 'Mora Di'#225'ria'
      FieldName = 'MORA_DIARIA'
      Origin = '"CTB_PLANOCONTA"."MORA_DIARIA"'
    end
    object dtListBLT_VLR_IOF: TFloatField
      DisplayLabel = 'IOF'
      FieldName = 'BLT_VLR_IOF'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_IOF"'
    end
    object dtListBLT_VLR_OUTRAS_DESP: TFloatField
      DisplayLabel = 'Outras Desp.'
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"CTB_PLANOCONTA"."BLT_VLR_OUTRAS_DESP"'
    end
    object dtListBLT_DIR_REMESSA: TIBStringField
      DisplayLabel = 'Diret'#243'rio Remessa'
      FieldName = 'BLT_DIR_REMESSA'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_REMESSA"'
      Size = 200
    end
    object dtListBLT_DIR_RETORNO: TIBStringField
      DisplayLabel = 'Diret'#243'rio Retorno'
      FieldName = 'BLT_DIR_RETORNO'
      Origin = '"CTB_PLANOCONTA"."BLT_DIR_RETORNO"'
      Size = 200
    end
    object dtListBLT_MULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'BLT_MULTA'
      Origin = '"CTB_PLANOCONTA"."BLT_MULTA"'
    end
    object dtListBLT_NOSSO_NUM_INI: TIntegerField
      DisplayLabel = 'Nosso N'#250'mero In'#237'cio'
      FieldName = 'BLT_NOSSO_NUM_INI'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_INI"'
    end
    object dtListBLT_NOSSO_NUM_FIM: TIntegerField
      DisplayLabel = 'Nosso N'#250'mero Fim'
      FieldName = 'BLT_NOSSO_NUM_FIM'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_FIM"'
    end
    object dtListBLT_NOSSO_NUM_PROX: TIntegerField
      DisplayLabel = 'Nosso N'#250'mero In'#237'cio Pr'#243'ximo'
      FieldName = 'BLT_NOSSO_NUM_PROX'
      Origin = '"CTB_PLANOCONTA"."BLT_NOSSO_NUM_PROX"'
    end
    object dtListBLT_MODALIDADE: TIBStringField
      DisplayLabel = 'Modalidade'
      FieldName = 'BLT_MODALIDADE'
      Origin = '"CTB_PLANOCONTA"."BLT_MODALIDADE"'
      Size = 10
    end
    object dtListBLT_LAYOUT_IMPRESSAO: TIBStringField
      DisplayLabel = 'Layout Impress'#227'o'
      FieldName = 'BLT_LAYOUT_IMPRESSAO'
      Origin = '"CTB_PLANOCONTA"."BLT_LAYOUT_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
    object dtListBLT_NUM_COPIAS: TIntegerField
      DisplayLabel = 'N'#250'mero C'#243'pias'
      FieldName = 'BLT_NUM_COPIAS'
      Origin = '"CTB_PLANOCONTA"."BLT_NUM_COPIAS"'
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
        Component = Grid
        Properties.Strings = (
          'Align'
          'Anchors'
          'BevelEdges'
          'BevelInner'
          'BevelKind'
          'BevelOuter'
          'BevelWidth'
          'BorderStyle'
          'BorderWidth'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DragOpening'
          'DragOpeningWaitTime'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'LevelTabs'
          'LookAndFeel'
          'Name'
          'ParentFont'
          'PopupMenu'
          'RootLevelOptions'
          'RootLevelStyles'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = GridDBBandedTableView1
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
        Component = GridDBBandedTableView2
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
        Component = GridDBBandedTableView2AGENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BANCO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_ACEITE_DOCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_AGENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_CARTEIRA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_COD_CEDENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_CONTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_CONVENIO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIAS_ABATIMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIAS_DESCONTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIAS_MORA_JUROS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIAS_PROTESTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIG_AGENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIG_COD_CEDENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIG_CONTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIR_REMESSA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_DIR_RETORNO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_INSTRUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_LAYOUT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_LAYOUT_IMPRESSAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_LOCAL_PAGTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_MODALIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_MULTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_NOSSO_NUM_FIM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_NOSSO_NUM_INI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_NOSSO_NUM_PROX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_NUM_COPIAS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_PCT_ABATIMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_PCT_DESCONTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_VLR_IOF
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BLT_VLR_OUTRAS_DESP
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CONTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CONTA_CORRENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CONTAPAI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CTB_FLUXO_CAIXA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DESP_BANCARIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DV_AGENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DV_AGENCIA_CONTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DV_CONTA_CORRENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2GERA_BOLETOS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2MORA_DIARIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2TIPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2ULTIMO_CHEQUE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
