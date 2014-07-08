inherited frmCadVendedor: TfrmCadVendedor
  Caption = 'Vendedores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsLista
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
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Width = 50
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COM_VISTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_VISTA'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COM_PRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_PRAZO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SENHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            PropertiesClassName = 'TcxCheckBoxProperties'
            Properties.ValueChecked = 'S'
            Properties.ValueUnchecked = 'N'
            Width = 44
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_PESSOA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_PESSOA'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Height = 129
        Align = alTop
        inherited edtNome: TcxDBTextEdit
          DataBinding.DataField = 'NOME'
        end
        inherited edtCodigo: TcxDBTextEdit
          DataBinding.DataField = 'CODIGO'
        end
        object btnLogradouro: TcxButtonEdit
          Left = 371
          Top = 72
          Properties.Buttons = <
            item
              Caption = 'F4'
              Default = True
              Kind = bkText
            end>
          Properties.ViewStyle = vsButtonsOnly
          TabOrder = 7
          Text = 'btnPessoa'
          OnClick = btnLogradouroClick
          Width = 25
        end
        object cbPessoaFJ: TcxDBLookupComboBox
          Left = 8
          Top = 72
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
          Width = 363
        end
        object cxLabel9: TcxLabel
          Left = 8
          Top = 56
          Caption = 'Pessoa '
          Transparent = True
        end
        object cxDBCalcEdit1: TcxDBCalcEdit
          Left = 400
          Top = 72
          DataBinding.DataField = 'COM_VISTA'
          DataBinding.DataSource = dsRegistro
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
          Style.LookAndFeel.Kind = lfOffice11
          Style.ButtonStyle = btsFlat
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 3
          Width = 83
        end
        object cxLabel3: TcxLabel
          Left = 400
          Top = 56
          Caption = 'Com '#224' Vista (%)'
          Transparent = True
        end
        object cxDBCalcEdit2: TcxDBCalcEdit
          Left = 488
          Top = 72
          DataBinding.DataField = 'COM_PRAZO'
          DataBinding.DataSource = dsRegistro
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
          Style.LookAndFeel.Kind = lfOffice11
          Style.ButtonStyle = btsFlat
          StyleDisabled.LookAndFeel.Kind = lfOffice11
          StyleFocused.LookAndFeel.Kind = lfOffice11
          StyleHot.LookAndFeel.Kind = lfOffice11
          TabOrder = 4
          Width = 83
        end
        object cxLabel4: TcxLabel
          Left = 488
          Top = 56
          Caption = 'Com '#224' Prazo (%)'
          Transparent = True
        end
      end
      object pnlSubCad: TPanel
        Left = 0
        Top = 129
        Width = 767
        Height = 220
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 1
        object PgcComplementar: TcxPageControl
          Left = 0
          Top = 0
          Width = 767
          Height = 220
          ActivePage = cxTabSheet1
          Align = alClient
          ShowFrame = True
          TabOrder = 0
          ClientRectBottom = 216
          ClientRectLeft = 4
          ClientRectRight = 763
          ClientRectTop = 27
          object cxTabSheet1: TcxTabSheet
            Caption = '  Faixas de Comiss'#227'o     '
            ImageIndex = 0
            object PGCSub1: TcxPageControl
              Left = 0
              Top = 0
              Width = 759
              Height = 189
              ActivePage = tbsListaComp1
              Align = alClient
              HideTabs = True
              TabOrder = 0
              ClientRectBottom = 188
              ClientRectLeft = 1
              ClientRectRight = 758
              ClientRectTop = 1
              object tbsListaComp1: TcxTabSheet
                Caption = 'Pesquisa'
                ImageIndex = 0
                object cxGrid1: TcxGrid
                  Left = 0
                  Top = 0
                  Width = 757
                  Height = 187
                  Align = alClient
                  TabOrder = 0
                  object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
                    OnKeyDown = GridDBBandedTableView2KeyDown
                    NavigatorButtons.ConfirmDelete = False
                    DataController.Summary.DefaultGroupSummaryItems = <
                      item
                        Kind = skSum
                        Position = spFooter
                        Column = cxGrid1DBBandedTableView1TOTAL
                      end
                      item
                        Kind = skSum
                        Column = cxGrid1DBBandedTableView1TOTAL
                      end>
                    DataController.Summary.FooterSummaryItems = <
                      item
                        Kind = skSum
                        Column = cxGrid1DBBandedTableView1TOTAL
                      end>
                    DataController.Summary.SummaryGroups = <>
                    OptionsBehavior.IncSearch = True
                    OptionsData.CancelOnExit = False
                    OptionsData.Deleting = False
                    OptionsData.DeletingConfirmation = False
                    OptionsData.Editing = False
                    OptionsData.Inserting = False
                    OptionsView.Footer = True
                    OptionsView.GroupByBox = False
                    OptionsView.GroupFooters = gfAlwaysVisible
                    OptionsView.BandHeaders = False
                    Bands = <
                      item
                      end>
                    object cxGrid1DBBandedTableView1CODIGO: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'CODIGO'
                      Position.BandIndex = 0
                      Position.ColIndex = 0
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1PRODUTO: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'PRODUTO'
                      Position.BandIndex = 0
                      Position.ColIndex = 1
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1QTDE: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'QTDE'
                      Position.BandIndex = 0
                      Position.ColIndex = 2
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1VALOR: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'VALOR'
                      Position.BandIndex = 0
                      Position.ColIndex = 3
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1TOTAL: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'TOTAL'
                      Width = 107
                      Position.BandIndex = 0
                      Position.ColIndex = 4
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1NOTA_FISCAL: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NOTA_FISCAL'
                      Position.BandIndex = 0
                      Position.ColIndex = 5
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1NOME_PRODUTO: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'NOME_PRODUTO'
                      Position.BandIndex = 0
                      Position.ColIndex = 6
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1QTDE_QUEBRA: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'QTDE_QUEBRA'
                      Position.BandIndex = 0
                      Position.ColIndex = 7
                      Position.RowIndex = 0
                    end
                    object cxGrid1DBBandedTableView1QTDE_LIQUIDA: TcxGridDBBandedColumn
                      DataBinding.FieldName = 'QTDE_LIQUIDA'
                      Position.BandIndex = 0
                      Position.ColIndex = 8
                      Position.RowIndex = 0
                    end
                  end
                  object cxGridLevel1: TcxGridLevel
                    GridView = cxGrid1DBBandedTableView1
                  end
                end
              end
              object tbsEditaComp1: TcxTabSheet
                Caption = 'Registro'
                ImageIndex = 1
                object edtCodigoEnd: TcxDBTextEdit
                  Left = 9
                  Top = 24
                  TabStop = False
                  DataBinding.DataField = 'CODIGO'
                  Properties.CharCase = ecUpperCase
                  Properties.ReadOnly = True
                  Style.Color = clInactiveBorder
                  TabOrder = 0
                  Width = 65
                end
                object cxLabel8: TcxLabel
                  Left = 8
                  Top = 8
                  Caption = 'C'#243'digo'
                  Transparent = True
                end
                object cbProduto: TcxDBLookupComboBox
                  Left = 74
                  Top = 24
                  DataBinding.DataField = 'PRODUTO'
                  Properties.CharCase = ecUpperCase
                  Properties.DropDownAutoSize = True
                  Properties.KeyFieldNames = 'CODIGO'
                  Properties.ListColumns = <
                    item
                      FieldName = 'NOME'
                    end
                    item
                      FieldName = 'CODIGO'
                    end>
                  TabOrder = 1
                  Width = 375
                end
                object cxLabel5: TcxLabel
                  Left = 72
                  Top = 8
                  Caption = 'Produto'
                  Transparent = True
                end
                object btnProduto: TcxButtonEdit
                  Left = 448
                  Top = 24
                  TabStop = False
                  Properties.Buttons = <
                    item
                      Caption = 'F9'
                      Default = True
                      Kind = bkText
                    end>
                  Properties.ViewStyle = vsButtonsOnly
                  TabOrder = 9
                  Text = 'btnProduto'
                  Width = 25
                end
                object cxDBCalcEdit6: TcxDBCalcEdit
                  Left = 581
                  Top = 23
                  DataBinding.DataField = 'VALOR'
                  Style.LookAndFeel.Kind = lfOffice11
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.Kind = lfOffice11
                  StyleFocused.LookAndFeel.Kind = lfOffice11
                  StyleHot.LookAndFeel.Kind = lfOffice11
                  TabOrder = 3
                  Width = 103
                end
                object cxLabel10: TcxLabel
                  Left = 581
                  Top = 7
                  Caption = 'Valor Unit'#225'rio'
                  Transparent = True
                end
                object cxDBCalcEdit7: TcxDBCalcEdit
                  Left = 474
                  Top = 24
                  DataBinding.DataField = 'QTDE'
                  Style.LookAndFeel.Kind = lfOffice11
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.Kind = lfOffice11
                  StyleFocused.LookAndFeel.Kind = lfOffice11
                  StyleHot.LookAndFeel.Kind = lfOffice11
                  TabOrder = 2
                  Width = 103
                end
                object cxLabel11: TcxLabel
                  Left = 472
                  Top = 8
                  Caption = 'Quantidade (KG)'
                  Transparent = True
                end
                object cxDBCalcEdit8: TcxDBCalcEdit
                  Left = 685
                  Top = 23
                  DataBinding.DataField = 'TOTAL'
                  Properties.ReadOnly = True
                  Style.Color = clInactiveBorder
                  Style.LookAndFeel.Kind = lfOffice11
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.Kind = lfOffice11
                  StyleFocused.LookAndFeel.Kind = lfOffice11
                  StyleHot.LookAndFeel.Kind = lfOffice11
                  TabOrder = 4
                  Width = 103
                end
                object cxLabel12: TcxLabel
                  Left = 685
                  Top = 7
                  Caption = 'Total(KG)'
                  Transparent = True
                end
                object cxDBCalcEdit9: TcxDBCalcEdit
                  Left = 10
                  Top = 66
                  DataBinding.DataField = 'QTDE_QUEBRA'
                  Style.LookAndFeel.Kind = lfOffice11
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.Kind = lfOffice11
                  StyleFocused.LookAndFeel.Kind = lfOffice11
                  StyleHot.LookAndFeel.Kind = lfOffice11
                  TabOrder = 5
                  Width = 103
                end
                object cxLabel13: TcxLabel
                  Left = 7
                  Top = 50
                  Caption = 'Descto/Quebra(KG) '
                  Transparent = True
                end
                object cxDBCalcEdit10: TcxDBCalcEdit
                  Left = 115
                  Top = 66
                  DataBinding.DataField = 'QTDE_LIQUIDA'
                  Style.LookAndFeel.Kind = lfOffice11
                  Style.ButtonStyle = btsFlat
                  StyleDisabled.LookAndFeel.Kind = lfOffice11
                  StyleFocused.LookAndFeel.Kind = lfOffice11
                  StyleHot.LookAndFeel.Kind = lfOffice11
                  TabOrder = 6
                  Width = 103
                end
                object cxLabel14: TcxLabel
                  Left = 116
                  Top = 50
                  Caption = 'Qtde. Liquida'
                  Transparent = True
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
      'delete from FAT_VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDEDOR'
      
        '  (ATIVO, CNPJ, COD_PERFIL, COD_PERFIL_PAGTO, CODIGO, COM_PRAZO,' +
        ' COM_VISTA, '
      '   NOME, PESSOA_FJ, SENHA)'
      'values'
      
        '  (:ATIVO, :CNPJ, :COD_PERFIL, :COD_PERFIL_PAGTO, :CODIGO, :COM_' +
        'PRAZO, '
      '   :COM_VISTA, :NOME, :PESSOA_FJ, :SENHA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  COM_VISTA,'
      '  COM_PRAZO,'
      '  PESSOA_FJ,'
      '  SENHA,'
      '  ATIVO,'
      '  COD_PERFIL,'
      '  COD_PERFIL_PAGTO'
      'from FAT_VENDEDOR '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
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
      'WHERE CNPJ = :CNPJ  and codigo = :codigo'
      '')
    ModifySQL.Strings = (
      'update FAT_VENDEDOR'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  COD_PERFIL = :COD_PERFIL,'
      '  COD_PERFIL_PAGTO = :COD_PERFIL_PAGTO,'
      '  CODIGO = :CODIGO,'
      '  COM_PRAZO = :COM_PRAZO,'
      '  COM_VISTA = :COM_VISTA,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SENHA = :SENHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FAT_VENDEDOR_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object dtEditCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object dtEditCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object dtEditPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object dtEditSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object dtEditATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object dtEditCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      ''
      'select vdd.*, psa.nome_razao nome_pessoa'
      'from fat_vendedor vdd'
      
        'inner join glo_pessoas_fj psa on (vdd.cnpj = psa.cnpj and vdd.pe' +
        'ssoa_fj = psa.codigo)'
      'where vdd.cnpj = :cnpj'
      'order by nome')
    Left = 97
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object dtListCOM_VISTA: TFloatField
      DisplayLabel = 'Com. '#224' Vista (%)'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object dtListCOM_PRAZO: TFloatField
      DisplayLabel = 'Com. '#224' Vista (%)'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cad. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object dtListSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListNOME_PESSOA: TIBStringField
      DisplayLabel = 'Nome Cad. Pessoa'
      FieldName = 'NOME_PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
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
  inherited ActionList1: TActionList
    inherited ActCadLookup: TAction
      OnExecute = ActCadLookupExecute
    end
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
        Component = GridDBBandedTableView2ATIVO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = GridDBBandedTableView2COM_PRAZO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2COM_VISTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = GridDBBandedTableView2NOME_PESSOA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2PESSOA_FJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridDBBandedTableView2SENHA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 19
    Top = 120
  end
  object QryPessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'select psa.codigo, psa.nome_razao from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj'
      'order by psa.nome_razao')
    Left = 48
    Top = 120
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
