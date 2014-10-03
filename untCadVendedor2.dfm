inherited frmCadVendedor2: TfrmCadVendedor2
  Left = 278
  Top = 114
  Height = 526
  Caption = 'Vendedores'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Height = 473
    ClientRectBottom = 469
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Height = 414
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroNOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCOM_VISTA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_VISTA'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCOM_PRAZO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COM_PRAZO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroPESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroSENHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SENHA'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroCOD_PERFIL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_PERFIL'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroCOD_PERFIL_PAGTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_PERFIL_PAGTO'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroNOME_PESSOA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_PESSOA'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Height = 442
        inherited pnlSubCad: TPanel
          Top = 164
          inherited PgcDetalhe: TcxPageControl
            inherited tbsDetalhe1: TcxTabSheet
              Caption = '  Faixas de Comiss'#227'o     '
              inherited PGCSub1: TcxPageControl
                ActivePage = tbsEditaSub1
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    inherited TVDet1: TcxGridDBBandedTableView
                      DataController.DetailKeyFieldNames = 'CODIGO'
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1VALOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VALOR'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1PRAZO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PRAZO'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1VISTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VISTA'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1ID: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ID'
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    TabStop = True
                    DataBinding.DataField = 'CODIGO'
                    Style.Color = clBtnShadow
                    Width = 49
                  end
                  object cxDBCalcEdit3: TcxDBCalcEdit
                    Left = 60
                    Top = 24
                    DataBinding.DataField = 'VALOR'
                    DataBinding.DataSource = dsRegistroDet1
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
                    TabOrder = 1
                    Width = 125
                  end
                  object cxLabel14: TcxLabel
                    Left = 60
                    Top = 8
                    Caption = 'Valor'
                    Transparent = True
                  end
                  object cxDBCalcEdit4: TcxDBCalcEdit
                    Left = 188
                    Top = 24
                    DataBinding.DataField = 'VISTA'
                    DataBinding.DataSource = dsRegistroDet1
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
                    TabOrder = 2
                    Width = 83
                  end
                  object cxLabel15: TcxLabel
                    Left = 188
                    Top = 8
                    Caption = 'Com '#224' Vista (%)'
                    Transparent = True
                  end
                  object cxDBCalcEdit5: TcxDBCalcEdit
                    Left = 273
                    Top = 24
                    DataBinding.DataField = 'PRAZO'
                    DataBinding.DataSource = dsRegistroDet1
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
                    OnKeyDown = cxDBCalcEdit5KeyDown
                    Width = 83
                  end
                  object cxLabel16: TcxLabel
                    Left = 273
                    Top = 8
                    Caption = 'Com '#224' Prazo (%)'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe3: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe4: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
            end
          end
        end
        inherited pnlMaster: TPanel
          Height = 163
          inherited PgcMaster: TcxPageControl
            Height = 163
            ClientRectBottom = 159
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Vendedor'
              inherited edtCodigo: TcxDBTextEdit
                TabOrder = 5
              end
              object cxDBCalcEdit2: TcxDBCalcEdit
                Left = 488
                Top = 64
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
              object cxLabel10: TcxLabel
                Left = 488
                Top = 48
                Caption = 'Com '#224' Prazo (%)'
                Transparent = True
              end
              object cxLabel11: TcxLabel
                Left = 400
                Top = 48
                Caption = 'Com '#224' Vista (%)'
                Transparent = True
              end
              object cxDBCalcEdit1: TcxDBCalcEdit
                Left = 400
                Top = 64
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
              object btnLogradouro: TcxButtonEdit
                Tag = 4
                Left = 371
                Top = 64
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
                Left = 8
                Top = 64
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
              object cxLabel12: TcxLabel
                Left = 8
                Top = 48
                Caption = 'Pessoa '
                Transparent = True
              end
              object edtNome: TcxDBTextEdit
                Left = 76
                Top = 24
                DataBinding.DataField = 'NOME'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                TabOrder = 1
                Width = 493
              end
              object cxLabel13: TcxLabel
                Left = 76
                Top = 7
                Caption = 'Nome'
                Transparent = True
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
      'SELECT'
      '               CNPJ, '
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
      'select vdd.*, psa.nome_razao nome_pessoa'
      'from fat_vendedor vdd'
      
        'inner join glo_pessoas_fj psa on (vdd.cnpj = psa.cnpj and vdd.pe' +
        'ssoa_fj = psa.codigo)'
      'where vdd.cnpj = :cnpj'
      'order by nome')
    Left = 113
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
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
      DisplayLabel = 'Com. '#224' Prazo (%)'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa FJ'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object dtListSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object dtListATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object dtListCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
    object dtListNOME_PESSOA: TIBStringField
      DisplayLabel = 'Nome Pessoa FJ'
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
        Component = TVRegistroCOD_PERFIL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_PERFIL_PAGTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroCOM_PRAZO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOM_VISTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroNOME_PESSOA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroSENHA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
      'select CNPJ, '
      '           CODIGO, '
      '            PRAZO, '
      '            VALOR, '
      '            VISTA ,'
      'ID'
      'from FAT_VENDEDOR_FAIXAS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'ORDER BY VALOR')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CODIGO"'
    end
    object dtListDet1VALOR: TFloatField
      DisplayLabel = 'Valor (R$)'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1PRAZO: TFloatField
      DisplayLabel = #224' Prazo (%)'
      FieldName = 'PRAZO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1VISTA: TFloatField
      DisplayLabel = #224' Vista (%)'
      FieldName = 'VISTA'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object dtListDet1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"FAT_VENDEDOR_FAIXAS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from FAT_VENDEDOR_FAIXAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into FAT_VENDEDOR_FAIXAS'
      '  (CNPJ, CODIGO, ID, PRAZO, VALOR, VISTA)'
      'values'
      '  (:CNPJ, :CODIGO, :ID, :PRAZO, :VALOR, :VISTA)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
      '  CNPJ,'
      '  CODIGO,'
      '  VALOR,'
      '  VISTA,'
      '  PRAZO'
      'from FAT_VENDEDOR_FAIXAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  ID = :ID')
    SelectSQL.Strings = (
      'select CNPJ, '
      '           ID,'
      '           CODIGO, '
      '            PRAZO, '
      '            VALOR, '
      '            VISTA '
      'from FAT_VENDEDOR_FAIXAS'
      'WHERE CNPJ = :CNPJ AND ID = :ID'
      '')
    ModifySQL.Strings = (
      'update FAT_VENDEDOR_FAIXAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  ID = :ID,'
      '  PRAZO = :PRAZO,'
      '  VALOR = :VALOR,'
      '  VISTA = :VISTA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  ID = :OLD_ID')
    GeneratorField.Field = 'ID'
    GeneratorField.Generator = 'GEN_FAT_VENDEDOR_FAIXAS_ID'
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CODIGO"'
    end
    object dtEditDet1PRAZO: TFloatField
      FieldName = 'PRAZO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1VALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1VISTA: TFloatField
      FieldName = 'VISTA'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object dtEditDet1ID: TIntegerField
      FieldName = 'ID'
      Origin = '"FAT_VENDEDOR_FAIXAS"."ID"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
  end
  object dsPessoa: TDataSource
    AutoEdit = False
    DataSet = QryPessoa
    Left = 331
    Top = 152
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
    Left = 360
    Top = 152
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
