inherited frmCadPessoas: TfrmCadPessoas
  Left = 346
  Top = 108
  Width = 790
  Height = 515
  Caption = 'Pessoas PF/PJ'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 774
    Height = 451
    ActivePage = tbsLista
    ClientRectBottom = 447
    ClientRectRight = 770
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 766
        Height = 403
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2REGIAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REGIAO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FANTASIA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FANTASIA'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ATIVIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ENDERECO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ENDERECO'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NUMERO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUMERO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COMPLEMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COMPLEMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BAIRRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BAIRRO'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2UF: TcxGridDBBandedColumn
            DataBinding.FieldName = 'UF'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CEP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CEP'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FONE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FAX: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FAX'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CELULAR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CELULAR'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA'
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CPF_CGC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CGC'
            Width = 75
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2RG_IE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'RG_IE'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTATO'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_NASCIMENTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_NASCIMENTO'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_CADASTRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_CADASTRO'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2EMAIL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EMAIL'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2OBS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'OBS'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2INSC_MUNIC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INSC_MUNIC'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONVENIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONVENIO'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2EMISSOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EMISSOR'
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ORDEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORDEM'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MAP_LAT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAP_LAT'
            Width = 70
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2MAP_LONG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAP_LONG'
            Width = 79
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_ATIVIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_ATIVIDADE'
            Width = 180
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_BAIRRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_BAIRRO'
            Width = 234
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_LOGRADOURO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_LOGRADOURO'
            Width = 203
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_CIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_CIDADE'
            Width = 217
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_REGIAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_REGIAO'
            Width = 240
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 766
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 766
        Height = 420
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'NOME_RAZAO'
          Width = 528
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
        inherited cxLabel2: TcxLabel
          Caption = 'Nome/Raz'#227'o Social'
        end
        object cxDBRadioGroup1: TcxDBRadioGroup
          Left = 610
          Top = 26
          Caption = 'Personalidade'
          DataBinding.DataField = 'PESSOA'
          DataBinding.DataSource = dsRegistro
          Properties.Columns = 2
          Properties.Items = <
            item
              Caption = 'F'#237'sica'
              Value = 'F'
            end
            item
              Caption = 'Jur'#237'dica'
              Value = 'J'
            end>
          TabOrder = 2
          Height = 41
          Width = 144
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 478
          Top = 72
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsRegistro
          TabOrder = 6
          Width = 276
        end
        object cxLabel5: TcxLabel
          Left = 478
          Top = 56
          Caption = 'Email'
          Transparent = True
        end
        object edtCPF: TcxDBMaskEdit
          Left = 354
          Top = 72
          DataBinding.DataField = 'CPF_CGC'
          DataBinding.DataSource = dsRegistro
          Properties.EditMask = '000\.000\.000\-99;1;_'
          Properties.MaxLength = 0
          TabOrder = 5
          Width = 121
        end
        object lblCPF: TcxLabel
          Left = 353
          Top = 56
          Caption = 'CPF/CNPJ'
          Transparent = True
        end
        object edtRG: TcxDBTextEdit
          Left = 219
          Top = 72
          DataBinding.DataField = 'RG_IE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 131
        end
        object lblRG: TcxLabel
          Left = 217
          Top = 55
          Caption = 'RG/IE'
          Transparent = True
        end
        object cxDBMemo1: TcxDBMemo
          Left = 7
          Top = 231
          DataBinding.DataField = 'OBS'
          DataBinding.DataSource = dsRegistro
          TabOrder = 16
          Height = 73
          Width = 559
        end
        object cxLabel7: TcxLabel
          Left = 7
          Top = 215
          Caption = 'Observa'#231#245'es'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 8
          Top = 72
          DataBinding.DataField = 'FANTASIA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 208
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Apelido/Fantasia'
          Transparent = True
        end
        object cbLogradouro: TcxDBLookupComboBox
          Left = 8
          Top = 112
          DataBinding.DataField = 'ENDERECO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsLogradouro
          TabOrder = 7
          Width = 272
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 96
          Caption = 'Logradouro'
          Transparent = True
        end
        object btnLogradouro: TcxButtonEdit
          Left = 280
          Top = 112
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 25
          Text = 'btnLogradouro'
          OnClick = btnLogradouroClick
          Width = 25
        end
        object cxDBTextEdit7: TcxDBTextEdit
          Left = 307
          Top = 112
          DataBinding.DataField = 'NUMERO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 8
          Width = 75
        end
        object cxLabel10: TcxLabel
          Left = 307
          Top = 96
          Caption = 'N'#250'mero'
          Transparent = True
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 680
          Top = 112
          DataBinding.DataField = 'CEP'
          DataBinding.DataSource = dsRegistro
          Properties.EditMask = '00000\-999;1;_'
          Properties.MaxLength = 0
          TabOrder = 10
          Width = 73
        end
        object cxLabel13: TcxLabel
          Left = 680
          Top = 96
          Caption = 'CEP'
          Transparent = True
        end
        object btnBairro: TcxButtonEdit
          Left = 223
          Top = 152
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 28
          Text = 'btnBairro'
          OnClick = btnBairroClick
          Width = 25
        end
        object cbBairro: TcxDBLookupComboBox
          Left = 8
          Top = 152
          DataBinding.DataField = 'BAIRRO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsBairros
          TabOrder = 11
          Width = 217
        end
        object cxLabel11: TcxLabel
          Left = 8
          Top = 136
          Caption = 'Bairro'
          Transparent = True
        end
        object btnCidade: TcxButtonEdit
          Left = 479
          Top = 152
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 30
          Text = 'btnCidade'
          OnClick = btnCidadeClick
          Width = 25
        end
        object cbCidade: TcxDBLookupComboBox
          Left = 251
          Top = 152
          DataBinding.DataField = 'CIDADE'
          DataBinding.DataSource = dsRegistro
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
          TabOrder = 12
          Width = 229
        end
        object cxLabel14: TcxLabel
          Left = 251
          Top = 136
          Caption = 'Cidade'
          Transparent = True
        end
        object cxDBTextEdit8: TcxDBTextEdit
          Left = 384
          Top = 112
          DataBinding.DataField = 'COMPLEMENTO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 294
        end
        object cxLabel12: TcxLabel
          Left = 384
          Top = 96
          Caption = 'Complemento'
          Transparent = True
        end
        object btnRegiao: TcxButtonEdit
          Left = 729
          Top = 152
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 33
          Text = 'btnCidade'
          OnClick = btnRegiaoClick
          Width = 25
        end
        object cbRegiao: TcxDBLookupComboBox
          Left = 507
          Top = 152
          DataBinding.DataField = 'REGIAO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsRegiao
          TabOrder = 13
          Width = 223
        end
        object cxLabel4: TcxLabel
          Left = 507
          Top = 136
          Caption = 'Regi'#227'o'
          Transparent = True
        end
        object cbAtividade: TcxDBLookupComboBox
          Left = 8
          Top = 192
          DataBinding.DataField = 'ATIVIDADE'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = dsAtividade
          TabOrder = 14
          Width = 217
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 176
          Caption = 'Atvidade'
          Transparent = True
        end
        object btnAtividade: TcxButtonEdit
          Left = 223
          Top = 192
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 36
          Text = 'btnAtividade'
          OnClick = btnAtividadeClick
          Width = 25
        end
        object cbConvenio: TcxDBLookupComboBox
          Left = 251
          Top = 192
          DataBinding.DataField = 'CONVENIO'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = dsConvenio
          TabOrder = 15
          Width = 253
        end
        object cxLabel8: TcxLabel
          Left = 251
          Top = 176
          Caption = 'Conv'#234'nio'
          Transparent = True
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    AfterEdit = dtEditAfterEdit
    AfterInsert = dtEditAfterInsert
    DeleteSQL.Strings = (
      'delete from glo_pessoas_fj'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_pessoas_fj'
      
        '  (ATIVIDADE, BAIRRO, CELULAR, CEP, CIDADE, CNPJ, CODIGO, CODIGO' +
        '_2, COMPLEMENTO, '
      
        '   CONTATO, CONTATO1, CONTATO2, CONTATO3, CONVENIO, CPF_CGC, DT_' +
        'CADASTRO, '
      
        '   DT_NASCIMENTO, EMAIL, EMISSOR, ENDERECO, FANTASIA, FAX, FJ, F' +
        'ONE, INSC_MUNIC, '
      
        '   MAP_LAT, MAP_LONG, NFE_EXP, NOME_RAZAO, NUMERO, OBS, ORDEM, P' +
        'ESSOA, '
      '   REGIAO, RG_IE, SELECIONADO, UF)'
      'values'
      
        '  (:ATIVIDADE, :BAIRRO, :CELULAR, :CEP, :CIDADE, :CNPJ, :CODIGO,' +
        ' :CODIGO_2, '
      
        '   :COMPLEMENTO, :CONTATO, :CONTATO1, :CONTATO2, :CONTATO3, :CON' +
        'VENIO, '
      
        '   :CPF_CGC, :DT_CADASTRO, :DT_NASCIMENTO, :EMAIL, :EMISSOR, :EN' +
        'DERECO, '
      
        '   :FANTASIA, :FAX, :FJ, :FONE, :INSC_MUNIC, :MAP_LAT, :MAP_LONG' +
        ', :NFE_EXP, '
      
        '   :NOME_RAZAO, :NUMERO, :OBS, :ORDEM, :PESSOA, :REGIAO, :RG_IE,' +
        ' :SELECIONADO, '
      '   :UF)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_pessoas_fj '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj and psa.codigo = :codigo')
    ModifySQL.Strings = (
      'update glo_pessoas_fj'
      'set'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONTATO = :CONTATO,'
      '  CONTATO1 = :CONTATO1,'
      '  CONTATO2 = :CONTATO2,'
      '  CONTATO3 = :CONTATO3,'
      '  CONVENIO = :CONVENIO,'
      '  CPF_CGC = :CPF_CGC,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  EMAIL = :EMAIL,'
      '  EMISSOR = :EMISSOR,'
      '  ENDERECO = :ENDERECO,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FJ = :FJ,'
      '  FONE = :FONE,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  NFE_EXP = :NFE_EXP,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORDEM = :ORDEM,'
      '  PESSOA = :PESSOA,'
      '  REGIAO = :REGIAO,'
      '  RG_IE = :RG_IE,'
      '  SELECIONADO = :SELECIONADO,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_PESSOAS_FJ_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 152
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtEditFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object dtEditATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object dtEditENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object dtEditNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object dtEditCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object dtEditBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object dtEditCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object dtEditUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtEditCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object dtEditFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object dtEditFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object dtEditCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object dtEditPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      OnGetText = dtEditPESSOAGetText
      OnValidate = dtEditPESSOAValidate
      FixedChar = True
      Size = 1
    end
    object dtEditCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object dtEditRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object dtEditCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object dtEditDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object dtEditDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object dtEditEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object dtEditOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtEditINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object dtEditCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object dtEditEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object dtEditCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO1"'
      Size = 50
    end
    object dtEditCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO2"'
      Size = 50
    end
    object dtEditCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO3"'
      Size = 50
    end
    object dtEditORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object dtEditREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object dtEditNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"GLO_PESSOAS_FJ"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object dtEditSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"GLO_PESSOAS_FJ"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditCODIGO_2: TIntegerField
      FieldName = 'CODIGO_2'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO_2"'
    end
    object dtEditMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object dtEditMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
    object dtEditFJ: TIBStringField
      FieldName = 'FJ'
      Origin = '"GLO_PESSOAS_FJ"."FJ"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT psa.CNPJ,'
      '               psa.CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               c.uf,'
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA,'
      '               case                              '
      
        '                 when substring(CPF_CGC from 13 for 1) <> '#39#39' the' +
        'n'
      
        '                ( substring(CPF_CGC from 1 for 2)||'#39'.'#39'||substrin' +
        'g(CPF_CGC from 3 for 3)||'#39'.'#39'||substring(CPF_CGC from 6 for 3)||'#39 +
        '/'#39'||substring(CPF_CGC from 9 for 4)||'#39'-'#39'||substring(CPF_CGC from' +
        ' 13 for 2) )'
      '                when substring(CPF_CGC from 1 for 1) <> '#39#39' then '
      
        '                ( substring(CPF_CGC from 1 for 3)||'#39'.'#39'||substrin' +
        'g(CPF_CGC from 4 for 3)||'#39'.'#39'||substring(CPF_CGC from 7 for 3)||'#39 +
        '-'#39'||substring(CPF_CGC from 10 for 2) )'
      '                else'
      '                  CPF_CGC'
      '                end  as CPF_CGC,'
      '               SUBSTRING (RG_IE FROM 1 FOR 15) RG_IE  , '
      '               CONTATO, '
      '               DT_NASCIMENTO, '
      '               DT_CADASTRO, '
      '               EMAIL, '
      '               OBS,'
      '               INSC_MUNIC,'
      '               CONVENIO,'
      '               EMISSOR,'
      '               ORDEM,'
      'MAP_LAT,'
      'MAP_LONG,'
      'a.nome nome_atividade,'
      'b.nome nome_bairro,'
      'l.nome nome_logradouro,'
      'c.nome nome_cidade,'
      'r.nome nome_regiao'
      ''
      'FROM GLO_PESSOAS_FJ psa'
      
        'left join glo_atividades a on (psa.cnpj = a.cnpj and psa.ativida' +
        'de = a.codigo)'
      
        'left join glo_bairros b on (psa.cnpj = b.cnpj and psa.bairro = b' +
        '.codigo)'
      
        'left join glo_logradouros l on (psa.cnpj = l.cnpj and psa.endere' +
        'co = l.codigo)'
      
        'left join glo_cidades c on (psa.cnpj = c.cnpj and psa.cidade = c' +
        '.codigo)'
      
        'left join glo_regioes r on (psa.cnpj = r.cnpj and psa.cidade = r' +
        '.codigo)'
      'WHERE psa.CNPJ = :CNPJ'
      'ORDER BY NOME_RAZAO')
    Left = 126
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListREGIAO: TIntegerField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListFANTASIA: TIBStringField
      DisplayLabel = 'Apelido/Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object dtListATIVIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Atividade'
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object dtListENDERECO: TIntegerField
      DisplayLabel = 'C'#243'd. Logradouro'
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object dtListNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object dtListCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object dtListBAIRRO: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object dtListCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object dtListUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object dtListCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object dtListFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
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
    object dtListPESSOA: TIBStringField
      DisplayLabel = 'Tp. Pessoa'
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object dtListRG_IE: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object dtListCONTATO: TIBStringField
      DisplayLabel = 'Contato'
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object dtListDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascto'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object dtListDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object dtListEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object dtListOBS: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object dtListINSC_MUNIC: TIBStringField
      DisplayLabel = 'Insc. Mun'
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object dtListCONVENIO: TIntegerField
      DisplayLabel = 'C'#243'd. Convenio'
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object dtListEMISSOR: TIBStringField
      DisplayLabel = 'Emissor'
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object dtListORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object dtListMAP_LAT: TIBStringField
      DisplayLabel = 'Map. Latitude'
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object dtListMAP_LONG: TIBStringField
      DisplayLabel = 'Map. Longitude'
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
    object dtListNOME_ATIVIDADE: TIBStringField
      DisplayLabel = 'Atividade'
      FieldName = 'NOME_ATIVIDADE'
      Origin = '"GLO_ATIVIDADES"."NOME"'
      Size = 50
    end
    object dtListNOME_BAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'NOME_BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object dtListNOME_LOGRADOURO: TIBStringField
      DisplayLabel = 'Logradouro'
      FieldName = 'NOME_LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object dtListNOME_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME_CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object dtListNOME_REGIAO: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'NOME_REGIAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object dtListCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CGC'
      FieldName = 'CPF_CGC'
      ProviderFlags = []
      Size = 79
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
        Component = GridDBBandedTableView2ATIVIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2BAIRRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CELULAR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CEP
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = GridDBBandedTableView2COMPLEMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CONTATO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CONVENIO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2CPF_CGC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DT_CADASTRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2DT_NASCIMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2EMAIL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2EMISSOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2ENDERECO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2FANTASIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2FAX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2FONE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2INSC_MUNIC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2MAP_LAT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2MAP_LONG
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_ATIVIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_BAIRRO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_CIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_LOGRADOURO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_RAZAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NOME_REGIAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2NUMERO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2OBS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2ORDEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2PESSOA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2REGIAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2RG_IE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2UF
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
  object dsBairros: TDataSource
    AutoEdit = False
    DataSet = QryBairro
    Left = 72
    Top = 168
  end
  object QryBairro: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_bairros b'
      'where b.cnpj = :cnpj')
    Left = 104
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
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
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = QryCidades
    Left = 344
    Top = 168
  end
  object QryCidades: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_cidades'
      'where cnpj = :cnpj')
    Left = 376
    Top = 168
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
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = qryRegiao
    Left = 560
    Top = 176
  end
  object qryRegiao: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_regioes'
      'where cnpj = :cnpj')
    Left = 592
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
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
  object dsAtividade: TDataSource
    AutoEdit = False
    DataSet = qryAtividade
    Left = 96
    Top = 216
  end
  object qryAtividade: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_atividades'
      'where cnpj = :cnpj')
    Left = 128
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryAtividadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_ATIVIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryAtividadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_ATIVIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryAtividadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ATIVIDADES"."NOME"'
      Size = 50
    end
  end
  object QryConvenio: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      
        'select psa.cnpj, psa.codigo, psa.nome_razao from glo_pessoas_fj ' +
        'psa'
      'where psa.cnpj = :cnpj and psa.codigo <> :codigo')
    Left = 464
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryConvenioCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryConvenioNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryConvenioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsConvenio: TDataSource
    AutoEdit = False
    DataSet = QryConvenio
    Left = 432
    Top = 216
  end
  object qryLogradouro: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select * from glo_logradouros'
      'where cnpj = :cnpj')
    Left = 152
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryLogradouroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryLogradouroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryLogradouroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
  end
  object dsLogradouro: TDataSource
    AutoEdit = False
    DataSet = qryLogradouro
    Left = 120
    Top = 128
  end
end
