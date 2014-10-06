inherited frmCadTecnicos: TfrmCadTecnicos
  Left = 262
  Caption = 'T'#233'cnicos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
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
          object GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_PRAZO'
            Width = 89
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_VISTA'
            Width = 85
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Width = 179
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = DsPessoaFJ
            Width = 132
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SENHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CREA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CREA'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CTPS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTPS'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2EMAIL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'EMAIL'
            Width = 205
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_USUARIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_USUARIO'
            PropertiesClassName = 'TcxLookupComboBoxProperties'
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME'
              end>
            Properties.ListSource = DsUsuario
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CUSTO_HORA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CUSTO_HORA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ASSINATURA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ASSINATURA'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 12
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
        inherited cxLabel2: TcxLabel
          Caption = 'T'#233'cnico'
        end
        object cbPessoa: TcxDBLookupComboBox
          Left = 7
          Top = 80
          DataBinding.DataField = 'PESSOA_FJ'
          DataBinding.DataSource = dsRegistro
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = DsPessoaFJ
          TabOrder = 2
          Width = 218
        end
        object cxLabel3: TcxLabel
          Left = 7
          Top = 63
          Caption = 'Pessoa F'#237'sica/Jur'#237'dica'
          Transparent = True
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 418
          Top = 80
          DataBinding.DataField = 'COM_VISTA'
          DataBinding.DataSource = dsRegistro
          TabOrder = 5
          Width = 74
        end
        object cxLabel6: TcxLabel
          Left = 418
          Top = 63
          Caption = 'Comis. '#224' Vista'
          Transparent = True
        end
        object cxTextEdit1: TcxTextEdit
          Left = 102
          Top = 128
          Properties.PasswordChar = '*'
          TabOrder = 8
          Width = 89
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 196
          Top = 128
          DataBinding.DataField = 'EMAIL'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 9
          Width = 373
        end
        object cxLabel10: TcxLabel
          Left = 196
          Top = 111
          Caption = 'Email'
          Transparent = True
        end
        object cxLabel11: TcxLabel
          Left = 7
          Top = 151
          Caption = 'Usu'#225'rio'
          Transparent = True
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 7
          Top = 168
          DataBinding.DataField = 'COD_USUARIO'
          DataBinding.DataSource = dsRegistro
          Properties.ClearKey = 46
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME'
            end>
          Properties.ListSource = DsUsuario
          TabOrder = 10
          Width = 222
        end
        object cxDBMemo1: TcxDBMemo
          Left = 8
          Top = 208
          DataBinding.DataField = 'ASSINATURA'
          DataBinding.DataSource = dsRegistro
          TabOrder = 12
          Height = 105
          Width = 561
        end
        object cxLabel13: TcxLabel
          Left = 8
          Top = 191
          Caption = 'Assinatura Email'
          Transparent = True
        end
        object cxLabel4: TcxLabel
          Left = 249
          Top = 63
          Caption = 'CREA'
          Transparent = True
        end
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 249
          Top = 80
          DataBinding.DataField = 'CREA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 3
          Width = 72
        end
        object cxLabel5: TcxLabel
          Left = 325
          Top = 63
          Caption = 'CTPS'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 325
          Top = 80
          DataBinding.DataField = 'CTPS'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          TabOrder = 4
          Width = 89
        end
        object cxLabel7: TcxLabel
          Left = 496
          Top = 63
          Caption = 'Comis. '#224' Prazo'
          Transparent = True
        end
        object cxDBCalcEdit2: TcxDBCalcEdit
          Left = 495
          Top = 80
          DataBinding.DataField = 'COM_PRAZO'
          DataBinding.DataSource = dsRegistro
          TabOrder = 6
          Width = 74
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 111
          Caption = 'Senha'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 8
          Top = 128
          DataBinding.DataField = 'SENHA'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.PasswordChar = '*'
          TabOrder = 7
          Width = 89
        end
        object cxLabel9: TcxLabel
          Left = 102
          Top = 111
          Caption = 'Confirmar'
          Transparent = True
        end
        object cxLabel12: TcxLabel
          Left = 234
          Top = 151
          Caption = 'Custo Hora'
          Transparent = True
        end
        object cxDBCalcEdit3: TcxDBCalcEdit
          Left = 233
          Top = 168
          DataBinding.DataField = 'CUSTO_HORA'
          DataBinding.DataSource = dsRegistro
          TabOrder = 11
          Width = 74
        end
        object btnPessoa: TcxButtonEdit
          Left = 224
          Top = 80
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 26
          Text = 'btnPessoa'
          OnClick = btnPessoaClick
          Width = 25
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from OFC_MECANICOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_MECANICOS'
      
        '  (ASSINATURA, CNPJ, COD_USUARIO, CODIGO, COM_PRAZO, COM_VISTA, ' +
        'CREA, CTPS, '
      '   CUSTO_HORA, EMAIL, NOME, PESSOA_FJ, SENHA)'
      'values'
      
        '  (:ASSINATURA, :CNPJ, :COD_USUARIO, :CODIGO, :COM_PRAZO, :COM_V' +
        'ISTA, :CREA, '
      '   :CTPS, :CUSTO_HORA, :EMAIL, :NOME, :PESSOA_FJ, :SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA,'
      '  CREA,'
      '  CTPS,'
      '  EMAIL,'
      '  CUSTO_HORA,'
      '  COD_USUARIO,'
      '  ASSINATURA'
      'from OFC_MECANICOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ,'
      '          SENHA,'
      '          CREA, CTPS,'
      '          email,'
      '          cod_usuario,'
      'custo_hora, assinatura'
      'from OFC_MECANICOS'
      'Where CNPJ = :CNPJ and'
      'CODIGO =:CODIGO')
    ModifySQL.Strings = (
      'update OFC_MECANICOS'
      'set'
      '  ASSINATURA = :ASSINATURA,'
      '  CNPJ = :CNPJ,'
      '  COD_USUARIO = :COD_USUARIO,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  CREA = :CREA,'
      '  CTPS = :CTPS,'
      '  CUSTO_HORA = :CUSTO_HORA,'
      '  EMAIL = :EMAIL,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SENHA = :SENHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'OFC_MECANICOS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MECANICOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"OFC_MECANICOS"."COM_PRAZO"'
      DisplayFormat = '% ###,##0.00'
    end
    object dtEditCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"OFC_MECANICOS"."COM_VISTA"'
      DisplayFormat = '% ###,##0.00'
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_MECANICOS"."PESSOA_FJ"'
    end
    object dtEditSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"OFC_MECANICOS"."SENHA"'
      Size = 6
    end
    object dtEditCREA: TIBStringField
      FieldName = 'CREA'
      Origin = '"OFC_MECANICOS"."CREA"'
    end
    object dtEditCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = '"OFC_MECANICOS"."CTPS"'
    end
    object dtEditEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object dtEditCOD_USUARIO: TIntegerField
      FieldName = 'COD_USUARIO'
      Origin = '"OFC_MECANICOS"."COD_USUARIO"'
    end
    object dtEditCUSTO_HORA: TFloatField
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_MECANICOS"."CUSTO_HORA"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ,'
      '          SENHA,'
      '          CREA, CTPS,'
      '          email,'
      '          cod_usuario,'
      'custo_hora, assinatura'
      'from OFC_MECANICOS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MECANICOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCOM_PRAZO: TFloatField
      DisplayLabel = 'Comiss'#227'o '#224' Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"OFC_MECANICOS"."COM_PRAZO"'
    end
    object dtListCOM_VISTA: TFloatField
      DisplayLabel = 'Comiss'#227'o '#224' Vista'
      FieldName = 'COM_VISTA'
      Origin = '"OFC_MECANICOS"."COM_VISTA"'
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F'#237'sica/Jur'#237'dica'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_MECANICOS"."PESSOA_FJ"'
    end
    object dtListSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"OFC_MECANICOS"."SENHA"'
      Size = 6
    end
    object dtListCREA: TIBStringField
      FieldName = 'CREA'
      Origin = '"OFC_MECANICOS"."CREA"'
    end
    object dtListCTPS: TIBStringField
      FieldName = 'CTPS'
      Origin = '"OFC_MECANICOS"."CTPS"'
    end
    object dtListEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object dtListCOD_USUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'COD_USUARIO'
      Origin = '"OFC_MECANICOS"."COD_USUARIO"'
    end
    object dtListCUSTO_HORA: TFloatField
      DisplayLabel = 'Custo Hora'
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_MECANICOS"."CUSTO_HORA"'
    end
    object dtListASSINATURA: TMemoField
      DisplayLabel = 'Assinatura Email'
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
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
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  object QryPessoaFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               Regiao,'
      '               NOME_RAZAO, '
      '               FANTASIA, '
      '               ATIVIDADE,'
      '               ENDERECO, '
      '               NUMERO, '
      '               COMPLEMENTO, '
      '               BAIRRO, '
      '               CIDADE, '
      '               UF, '
      '               CEP, '
      '               FONE,'
      '               FAX, '
      '               CELULAR, '
      '               PESSOA, '
      '               CPF_CGC, '
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
      '               CODIGO AS ID_CLIENTE,'
      'MAP_LAT,'
      'MAP_LONG'
      ''
      'FROM GLO_PESSOAS_FJ'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME_RAZAO')
    Left = 745
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryPessoaFJCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryPessoaFJCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryPessoaFJREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object QryPessoaFJNOME_RAZAO: TIBStringField
      DisplayLabel = 'Pessoa F'#237'sica/Jur'#237'dica'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryPessoaFJFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object QryPessoaFJATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object QryPessoaFJENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object QryPessoaFJNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object QryPessoaFJCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object QryPessoaFJBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object QryPessoaFJCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object QryPessoaFJUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryPessoaFJCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object QryPessoaFJFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object QryPessoaFJFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object QryPessoaFJCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object QryPessoaFJPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object QryPessoaFJCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object QryPessoaFJRG_IE: TIBStringField
      FieldName = 'RG_IE'
      ProviderFlags = []
    end
    object QryPessoaFJCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object QryPessoaFJDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object QryPessoaFJDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object QryPessoaFJEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryPessoaFJOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryPessoaFJINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object QryPessoaFJCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object QryPessoaFJEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object QryPessoaFJORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object QryPessoaFJID_CLIENTE: TIntegerField
      FieldName = 'ID_CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object QryPessoaFJMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object QryPessoaFJMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
  object DsPessoaFJ: TDataSource
    DataSet = QryPessoaFJ
    Left = 711
    Top = 4
  end
  object DsUsuario: TDataSource
    DataSet = QryUsuario
    Left = 711
    Top = 36
  end
  object QryUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select codigo, '
      '          login, '
      '          nome, '
      '          perfil, '
      '          senha '
      'from sis_usuarios u'
      '')
    Left = 744
    Top = 36
    object QryUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Size = 10
    end
    object QryUsuarioNOME: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Size = 50
    end
    object QryUsuarioPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
    end
    object QryUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
    end
  end
end
