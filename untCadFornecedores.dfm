inherited frmCadFornecedores: TfrmCadFornecedores
  Width = 765
  Height = 442
  Caption = 'Fornecedores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 749
    Height = 378
    ClientRectBottom = 374
    ClientRectRight = 745
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 741
        Height = 330
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CPF_CGC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CGC'
            Width = 99
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2VENDEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VENDEDOR'
            Width = 225
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FONE_VEN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_VEN'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FINANCEIRO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FINANCEIRO'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FONE_FIN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_FIN'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2REPRESENTANTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'REPRESENTANTE'
            Width = 258
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FONE_REP: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FONE_REP'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BANCO_C1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANCO_C1'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2AGENCIA_C1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AGENCIA_C1'
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CC_C1: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CC_C1'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BANCO_C2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BANCO_C2'
            Width = 51
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2AGENCIA_C2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AGENCIA_C2'
            Width = 59
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CC_C2: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CC_C2'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FORMA_PAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FORMA_PAGTO'
            Width = 65
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 741
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 741
        Height = 347
        inherited cxLabel2: TcxLabel [0]
          Left = 478
          Top = 82
          Caption = 'Vendedor'
          Visible = False
        end
        inherited edtNome: TcxDBTextEdit [1]
          Tag = 0
          Left = 479
          Top = 99
          TabOrder = 5
          Visible = False
          Width = 187
        end
        object cxGroupBox1: TcxGroupBox [2]
          Left = 8
          Top = 63
          Caption = 'Contatos'
          TabOrder = 3
          Height = 165
          Width = 356
          object cxDBTextEdit1: TcxDBTextEdit
            Left = 224
            Top = 40
            DataBinding.DataField = 'FONE_VEN'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 125
          end
          object cxLabel3: TcxLabel
            Left = 224
            Top = 24
            Caption = 'Fone'
            Transparent = True
          end
          object cxDBTextEdit2: TcxDBTextEdit
            Left = 8
            Top = 120
            DataBinding.DataField = 'FINANCEIRO'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 215
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 104
            Caption = 'Financeiro'
            Transparent = True
          end
          object cxDBTextEdit3: TcxDBTextEdit
            Left = 224
            Top = 120
            DataBinding.DataField = 'FONE_FIN'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 125
          end
          object cxLabel4: TcxLabel
            Left = 224
            Top = 104
            Caption = 'Fone'
            Transparent = True
          end
          object cxDBTextEdit4: TcxDBTextEdit
            Left = 8
            Top = 40
            DataBinding.DataField = 'VENDEDOR'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 0
            Width = 215
          end
          object cxLabel6: TcxLabel
            Left = 8
            Top = 24
            Caption = 'Vendedor'
            Transparent = True
          end
          object cxDBTextEdit5: TcxDBTextEdit
            Left = 8
            Top = 80
            DataBinding.DataField = 'VENDEDOR'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 215
          end
          object cxLabel7: TcxLabel
            Left = 8
            Top = 64
            Caption = 'Representante'
            Transparent = True
          end
          object cxDBTextEdit6: TcxDBTextEdit
            Left = 224
            Top = 80
            DataBinding.DataField = 'FONE_VEN'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 3
            Width = 125
          end
          object cxLabel8: TcxLabel
            Left = 224
            Top = 64
            Caption = 'Fone'
            Transparent = True
          end
        end
        inherited edtCodigo: TcxDBTextEdit [3]
          DataBinding.DataField = 'PESSOA_FJ'
          Visible = False
        end
        inherited cxLabel1: TcxLabel [4]
        end
        object btnLogradouro: TcxButtonEdit
          Left = 577
          Top = 32
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 8
          Text = 'btnPessoa'
          Width = 25
        end
        object cbPessoaFJ: TcxDBLookupComboBox
          Tag = 1
          Left = 75
          Top = 32
          DataBinding.DataField = 'PESSOA_FJ'
          DataBinding.DataSource = dsRegistro
          Properties.CharCase = ecUpperCase
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = dsPessoa
          TabOrder = 1
          Width = 502
        end
        object cxLabel12: TcxLabel
          Left = 74
          Top = 16
          Caption = 'Pessoa '
          Transparent = True
        end
        object cxGroupBox2: TcxGroupBox
          Left = 368
          Top = 63
          Caption = 'Dados Financeiros'
          TabOrder = 4
          Height = 165
          Width = 364
          object edtConta1: TcxDBTextEdit
            Left = 268
            Top = 40
            DataBinding.DataField = 'CC_C1'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 2
            Width = 90
          end
          object cxLabel9: TcxLabel
            Left = 268
            Top = 24
            Caption = 'Conta '
            Transparent = True
          end
          object cxLabel13: TcxLabel
            Left = 8
            Top = 24
            Caption = 'Banco'
            Transparent = True
          end
          object cbBanco1: TcxDBLookupComboBox
            Left = 9
            Top = 40
            DataBinding.DataField = 'BANCO_C1'
            DataBinding.DataSource = dsBanco1
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = dsPessoa
            TabOrder = 0
            Width = 173
          end
          object btnBanco1: TcxButtonEdit
            Left = 182
            Top = 40
            Properties.Buttons = <
              item
                Caption = 'F4'
                Default = True
                Kind = bkText
              end>
            Properties.ViewStyle = vsButtonsOnly
            TabOrder = 9
            Text = 'btnPessoa'
            OnClick = btnBanco1Click
            Width = 25
          end
          object edtconta2: TcxDBTextEdit
            Left = 268
            Top = 80
            DataBinding.DataField = 'CC_C2'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 5
            Width = 90
          end
          object cxLabel10: TcxLabel
            Left = 268
            Top = 64
            Caption = 'Conta'
            Transparent = True
          end
          object btnBanco2: TcxButtonEdit
            Left = 182
            Top = 80
            Properties.Buttons = <
              item
                Caption = 'F4'
                Default = True
                Kind = bkText
              end>
            Properties.ViewStyle = vsButtonsOnly
            TabOrder = 11
            Text = 'btnPessoa'
            OnClick = btnBanco2Click
            Width = 25
          end
          object cbBanco2: TcxDBLookupComboBox
            Left = 9
            Top = 80
            DataBinding.DataField = 'BANCO_C2'
            DataBinding.DataSource = dsBanco2
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = dsPessoa
            TabOrder = 3
            Width = 173
          end
          object cxLabel11: TcxLabel
            Left = 8
            Top = 64
            Caption = 'Banco'
            Transparent = True
          end
          object cxDBTextEdit7: TcxDBTextEdit
            Left = 210
            Top = 40
            DataBinding.DataField = 'AGENCIA_C1'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 1
            Width = 56
          end
          object cxLabel14: TcxLabel
            Left = 212
            Top = 24
            Caption = 'Ag'#234'ncia'
            Transparent = True
          end
          object cxDBTextEdit8: TcxDBTextEdit
            Left = 210
            Top = 80
            DataBinding.DataField = 'AGENCIA_C2'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            TabOrder = 4
            Width = 56
          end
          object cxLabel15: TcxLabel
            Left = 212
            Top = 64
            Caption = 'Ag'#234'ncia'
            Transparent = True
          end
          object btnFormaPagto: TcxButtonEdit
            Left = 182
            Top = 120
            Properties.Buttons = <
              item
                Caption = 'F4'
                Default = True
                Kind = bkText
              end>
            Properties.ViewStyle = vsButtonsOnly
            TabOrder = 15
            Text = 'btnPessoa'
            Width = 25
          end
          object cbFormaPagto: TcxDBLookupComboBox
            Left = 9
            Top = 120
            DataBinding.DataField = 'FORMA_PAGTO'
            DataBinding.DataSource = dsRegistro
            Properties.CharCase = ecUpperCase
            Properties.KeyFieldNames = 'CODIGO'
            Properties.ListColumns = <
              item
                FieldName = 'NOME_RAZAO'
              end>
            Properties.ListSource = dsPessoa
            TabOrder = 6
            Width = 173
          end
          object cxLabel16: TcxLabel
            Left = 8
            Top = 104
            Caption = 'Forma Pagto'
            Transparent = True
          end
        end
        object ckCompartilha: TcxDBCheckBox
          Left = 610
          Top = 36
          Caption = 'Compartilha c/Filiais'
          DataBinding.DataField = 'SINCRONIZA_FILIAIS'
          DataBinding.DataSource = dsRegistro
          TabOrder = 2
          Width = 121
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from glo_fornecedores'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into glo_fornecedores'
      
        '  (AGENCIA_C1, AGENCIA_C2, BANCO_C1, BANCO_C2, CC_C1, CC_C2, CNP' +
        'J, CONTABILIDADE, '
      
        '   FINANCEIRO, FONE_FIN, FONE_REP, FONE_VEN, FORMA_PAGTO, PESSOA' +
        '_FJ, REPRESENTANTE, '
      '   SINCRONIZA_FILIAIS, VENDEDOR)'
      'values'
      
        '  (:AGENCIA_C1, :AGENCIA_C2, :BANCO_C1, :BANCO_C2, :CC_C1, :CC_C' +
        '2, :CNPJ, '
      
        '   :CONTABILIDADE, :FINANCEIRO, :FONE_FIN, :FONE_REP, :FONE_VEN,' +
        ' :FORMA_PAGTO, '
      '   :PESSOA_FJ, :REPRESENTANTE, :SINCRONIZA_FILIAIS, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_fornecedores '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select * from glo_fornecedores f'
      'where f.cnpj = :cnpj and f.pessoa_fj = :pessoa_fj')
    ModifySQL.Strings = (
      'update glo_fornecedores'
      'set'
      '  AGENCIA_C1 = :AGENCIA_C1,'
      '  AGENCIA_C2 = :AGENCIA_C2,'
      '  BANCO_C1 = :BANCO_C1,'
      '  BANCO_C2 = :BANCO_C2,'
      '  CC_C1 = :CC_C1,'
      '  CC_C2 = :CC_C2,'
      '  CNPJ = :CNPJ,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  FINANCEIRO = :FINANCEIRO,'
      '  FONE_FIN = :FONE_FIN,'
      '  FONE_REP = :FONE_REP,'
      '  FONE_VEN = :FONE_VEN,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  REPRESENTANTE = :REPRESENTANTE,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_FORNECEDORES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_FORNECEDORES"."VENDEDOR"'
      Size = 50
    end
    object dtEditFONE_VEN: TIBStringField
      FieldName = 'FONE_VEN'
      Origin = '"GLO_FORNECEDORES"."FONE_VEN"'
      EditMask = '(##)####-####;1; '
    end
    object dtEditFINANCEIRO: TIBStringField
      FieldName = 'FINANCEIRO'
      Origin = '"GLO_FORNECEDORES"."FINANCEIRO"'
      Size = 50
    end
    object dtEditFONE_FIN: TIBStringField
      FieldName = 'FONE_FIN'
      Origin = '"GLO_FORNECEDORES"."FONE_FIN"'
      EditMask = '(##)####-####;1; '
    end
    object dtEditREPRESENTANTE: TIBStringField
      FieldName = 'REPRESENTANTE'
      Origin = '"GLO_FORNECEDORES"."REPRESENTANTE"'
      Size = 50
    end
    object dtEditFONE_REP: TIBStringField
      FieldName = 'FONE_REP'
      Origin = '"GLO_FORNECEDORES"."FONE_REP"'
      EditMask = '(##)####-####;1; '
    end
    object dtEditBANCO_C1: TIBStringField
      FieldName = 'BANCO_C1'
      Origin = '"GLO_FORNECEDORES"."BANCO_C1"'
      FixedChar = True
      Size = 3
    end
    object dtEditAGENCIA_C1: TIBStringField
      FieldName = 'AGENCIA_C1'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C1"'
      Size = 6
    end
    object dtEditCC_C1: TIBStringField
      FieldName = 'CC_C1'
      Origin = '"GLO_FORNECEDORES"."CC_C1"'
      Size = 15
    end
    object dtEditBANCO_C2: TIBStringField
      FieldName = 'BANCO_C2'
      Origin = '"GLO_FORNECEDORES"."BANCO_C2"'
      FixedChar = True
      Size = 3
    end
    object dtEditAGENCIA_C2: TIBStringField
      FieldName = 'AGENCIA_C2'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C2"'
      Size = 6
    end
    object dtEditCC_C2: TIBStringField
      FieldName = 'CC_C2'
      Origin = '"GLO_FORNECEDORES"."CC_C2"'
      Size = 15
    end
    object dtEditFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Origin = '"GLO_FORNECEDORES"."FORMA_PAGTO"'
    end
    object dtEditCONTABILIDADE: TIntegerField
      FieldName = 'CONTABILIDADE'
      Origin = '"GLO_FORNECEDORES"."CONTABILIDADE"'
    end
    object dtEditSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_FORNECEDORES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select psa.nome_razao, psa.cpf_cgc, psa.codigo,'
      ' f.* from glo_fornecedores f'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = f.cnpj and psa.codi' +
        'go = f.pessoa_fj)'
      'where f.cnpj = :cnpj')
    Left = 113
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome/Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_FORNECEDORES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"GLO_FORNECEDORES"."VENDEDOR"'
      Size = 50
    end
    object dtListFONE_VEN: TIBStringField
      DisplayLabel = 'Fone Vendedor'
      FieldName = 'FONE_VEN'
      Origin = '"GLO_FORNECEDORES"."FONE_VEN"'
    end
    object dtListFINANCEIRO: TIBStringField
      DisplayLabel = 'Financeiro'
      FieldName = 'FINANCEIRO'
      Origin = '"GLO_FORNECEDORES"."FINANCEIRO"'
      Size = 50
    end
    object dtListFONE_FIN: TIBStringField
      DisplayLabel = 'Fone Financeiro'
      FieldName = 'FONE_FIN'
      Origin = '"GLO_FORNECEDORES"."FONE_FIN"'
    end
    object dtListREPRESENTANTE: TIBStringField
      DisplayLabel = 'Representante'
      FieldName = 'REPRESENTANTE'
      Origin = '"GLO_FORNECEDORES"."REPRESENTANTE"'
      Size = 50
    end
    object dtListFONE_REP: TIBStringField
      DisplayLabel = 'Fone Representante'
      FieldName = 'FONE_REP'
      Origin = '"GLO_FORNECEDORES"."FONE_REP"'
    end
    object dtListBANCO_C1: TIBStringField
      DisplayLabel = '1- Banco'
      FieldName = 'BANCO_C1'
      Origin = '"GLO_FORNECEDORES"."BANCO_C1"'
      FixedChar = True
      Size = 3
    end
    object dtListAGENCIA_C1: TIBStringField
      DisplayLabel = '1 - Agencia'
      FieldName = 'AGENCIA_C1'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C1"'
      Size = 6
    end
    object dtListCC_C1: TIBStringField
      DisplayLabel = '1 - Conta Corrente'
      FieldName = 'CC_C1'
      Origin = '"GLO_FORNECEDORES"."CC_C1"'
      Size = 15
    end
    object dtListBANCO_C2: TIBStringField
      DisplayLabel = '2 - Banco'
      FieldName = 'BANCO_C2'
      Origin = '"GLO_FORNECEDORES"."BANCO_C2"'
      FixedChar = True
      Size = 3
    end
    object dtListAGENCIA_C2: TIBStringField
      DisplayLabel = '2 - Ag'#234'ncia'
      FieldName = 'AGENCIA_C2'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C2"'
      Size = 6
    end
    object dtListCC_C2: TIBStringField
      DisplayLabel = '2 - Conta Corrente'
      FieldName = 'CC_C2'
      Origin = '"GLO_FORNECEDORES"."CC_C2"'
      Size = 15
    end
    object dtListFORMA_PAGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PAGTO'
      Origin = '"GLO_FORNECEDORES"."FORMA_PAGTO"'
    end
    object dtListCONTABILIDADE: TIntegerField
      DisplayLabel = 'Contabilidade'
      FieldName = 'CONTABILIDADE'
      Origin = '"GLO_FORNECEDORES"."CONTABILIDADE"'
    end
    object dtListSINCRONIZA_FILIAIS: TIBStringField
      DisplayLabel = 'Sinc. Filial'
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_FORNECEDORES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa FJ'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
    Left = 512
    Top = 48
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
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 483
    Top = 48
  end
  object dsBanco1: TDataSource
    AutoEdit = False
    DataSet = QryBanco1
    Left = 387
    Top = 232
  end
  object QryBanco1: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'SELECT'
      '             * '
      'FROM FIN_BANCO'
      'ORDER BY NOME')
    Left = 416
    Top = 232
    object QryBanco1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryBanco1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object QryBanco1BOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object QryBanco1GERA_ARQUIVO_MAGNETICO: TIBStringField
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object QryBanco1PADRAO_BOLETO: TIBStringField
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object QryBanco1CONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryBanco1CONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object dsBanco2: TDataSource
    AutoEdit = False
    DataSet = QryBanco2
    Left = 387
    Top = 264
  end
  object QryBanco2: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'SELECT'
      '             * '
      'FROM FIN_BANCO'
      'ORDER BY NOME')
    Left = 416
    Top = 264
    object QryBanco2CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 3
    end
    object QryBanco2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Size = 50
    end
    object QryBanco2BOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object QryBanco2GERA_ARQUIVO_MAGNETICO: TIBStringField
      FieldName = 'GERA_ARQUIVO_MAGNETICO'
      Origin = '"FIN_BANCO"."GERA_ARQUIVO_MAGNETICO"'
      FixedChar = True
      Size = 1
    end
    object QryBanco2PADRAO_BOLETO: TIBStringField
      FieldName = 'PADRAO_BOLETO'
      Origin = '"FIN_BANCO"."PADRAO_BOLETO"'
      FixedChar = True
      Size = 1
    end
    object QryBanco2CONFIG_CH: TBlobField
      FieldName = 'CONFIG_CH'
      Origin = '"FIN_BANCO"."CONFIG_CH"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryBanco2CONFIG_CHEQUE: TMemoField
      FieldName = 'CONFIG_CHEQUE'
      Origin = '"FIN_BANCO"."CONFIG_CHEQUE"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object QryFormaPagto: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    DataSource = dsPesquisa
    SQL.Strings = (
      'SELECT * '
      'FROM FIN_FORMAS_PAGTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, CODIGO')
    Left = 416
    Top = 296
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
  object dsFromaPagto: TDataSource
    AutoEdit = False
    DataSet = QryFormaPagto
    Left = 387
    Top = 296
  end
end
