inherited FrmCadGrupos: TFrmCadGrupos
  Left = 294
  Top = 46
  Caption = 'Grupos de Estoques'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    ActivePage = tbsEdita
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
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
          object TVRegistroBASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BASE'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroMINIMO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MINIMO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroMAXIMO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'MAXIMO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited pnlSubCad: TPanel
          inherited PgcDetalhe: TcxPageControl
            ActivePage = tbsDetalhe1
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'SubGrupo'
              inherited PGCSub1: TcxPageControl
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 635
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1GRUPO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'GRUPO'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1SUBGRUPO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SUBGRUPO'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1NOME: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'NOME'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1DESCONTO_MAX: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DESCONTO_MAX'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1DIGITA_PRC: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DIGITA_PRC'
                        PropertiesClassName = 'TcxCheckBoxProperties'
                        Properties.ValueChecked = 'S'
                        Properties.ValueUnchecked = 'N'
                        Width = 57
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1COMPRAS_C: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COMPRAS_C'
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1COMPRAS_D: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COMPRAS_D'
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1TRANSFERENCIA_C: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TRANSFERENCIA_C'
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet1TRANSFERENCIA_D: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TRANSFERENCIA_D'
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet1VENDAS_C: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VENDAS_C'
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet1VENDAS_D: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VENDAS_D'
                        Position.BandIndex = 0
                        Position.ColIndex = 11
                        Position.RowIndex = 0
                      end
                      object TVDet1ESTOQUE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ESTOQUE'
                        Position.BandIndex = 0
                        Position.ColIndex = 12
                        Position.RowIndex = 0
                      end
                      object TVDet1ESTOQUE_INI: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ESTOQUE_INI'
                        Position.BandIndex = 0
                        Position.ColIndex = 13
                        Position.RowIndex = 0
                      end
                      object TVDet1ESTOQUE_FIM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ESTOQUE_FIM'
                        Position.BandIndex = 0
                        Position.ColIndex = 14
                        Position.RowIndex = 0
                      end
                      object TVDet1OBS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'OBS'
                        Position.BandIndex = 0
                        Position.ColIndex = 15
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    DataBinding.DataField = 'SUBGRUPO'
                  end
                  object cxLabel14: TcxLabel
                    Left = 75
                    Top = 8
                    Caption = 'Nome'
                    Style.HotTrack = False
                    Style.LookAndFeel.Kind = lfUltraFlat
                    Style.LookAndFeel.NativeStyle = False
                    Style.LookAndFeel.SkinName = 'GlassOceans'
                    Style.Shadow = False
                    Style.TransparentBorder = True
                    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                    StyleDisabled.LookAndFeel.NativeStyle = False
                    StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                    StyleFocused.LookAndFeel.Kind = lfUltraFlat
                    StyleFocused.LookAndFeel.NativeStyle = False
                    StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                    StyleHot.LookAndFeel.Kind = lfUltraFlat
                    StyleHot.LookAndFeel.NativeStyle = False
                    StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                    Transparent = True
                  end
                  object cxDBTextEdit1: TcxDBTextEdit
                    Left = 75
                    Top = 24
                    DataBinding.DataField = 'NOME'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.CharCase = ecUpperCase
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    TabOrder = 3
                    Width = 302
                  end
                  object cxLabel15: TcxLabel
                    Left = 8
                    Top = 53
                    Caption = 'Desc. M'#225'ximo'
                    Transparent = True
                  end
                  object cxDBCalcEdit4: TcxDBCalcEdit
                    Left = 8
                    Top = 69
                    DataBinding.DataField = 'DESCONTO_MAX'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 5
                    Width = 121
                  end
                  object cxDBMemo1: TcxDBMemo
                    Left = 9
                    Top = 114
                    DataBinding.DataField = 'OBS'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.CharCase = ecUpperCase
                    TabOrder = 6
                    Height = 60
                    Width = 368
                  end
                  object cxLabel16: TcxLabel
                    Left = 8
                    Top = 98
                    Caption = 'Observa'#231#227'o'
                    Transparent = True
                  end
                  object cxDBCheckBox1: TcxDBCheckBox
                    Left = 129
                    Top = 74
                    Caption = 'Digita Pre'#231'o ?'
                    DataBinding.DataField = 'DIGITA_PRC'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    TabOrder = 8
                    Transparent = True
                    Width = 96
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
          inherited PgcMaster: TcxPageControl
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Grupo'
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'CODIGO'
              end
              object cxLabel10: TcxLabel
                Left = 75
                Top = 0
                Caption = 'Nome'
                Style.HotTrack = False
                Style.LookAndFeel.Kind = lfUltraFlat
                Style.LookAndFeel.NativeStyle = False
                Style.LookAndFeel.SkinName = 'GlassOceans'
                Style.Shadow = False
                Style.TransparentBorder = True
                StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleDisabled.LookAndFeel.SkinName = 'GlassOceans'
                StyleFocused.LookAndFeel.Kind = lfUltraFlat
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.SkinName = 'GlassOceans'
                StyleHot.LookAndFeel.Kind = lfUltraFlat
                StyleHot.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.SkinName = 'GlassOceans'
                Transparent = True
              end
              object edtSerie: TcxDBTextEdit
                Left = 75
                Top = 16
                DataBinding.DataField = 'NOME'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.CharCase = ecUpperCase
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 302
              end
              object cxDBCalcEdit1: TcxDBCalcEdit
                Left = 8
                Top = 64
                DataBinding.DataField = 'BASE'
                DataBinding.DataSource = dsRegistro
                TabOrder = 4
                Width = 121
              end
              object cxLabel11: TcxLabel
                Left = 8
                Top = 48
                Caption = 'Base'
                Transparent = True
              end
              object cxLabel12: TcxLabel
                Left = 131
                Top = 48
                Caption = 'M'#237'nimo'
                Transparent = True
              end
              object cxDBCalcEdit2: TcxDBCalcEdit
                Left = 131
                Top = 64
                DataBinding.DataField = 'MINIMO'
                DataBinding.DataSource = dsRegistro
                TabOrder = 7
                Width = 121
              end
              object cxLabel13: TcxLabel
                Left = 255
                Top = 48
                Caption = 'M'#225'ximo'
                Transparent = True
              end
              object cxDBCalcEdit3: TcxDBCalcEdit
                Left = 255
                Top = 64
                DataBinding.DataField = 'MAXIMO'
                DataBinding.DataSource = dsRegistro
                TabOrder = 9
                Width = 121
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_GRUPOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_GRUPOS'
      '  (BASE, CNPJ, CODIGO, MAXIMO, MINIMO, NOME)'
      'values'
      '  (:BASE, :CNPJ, :CODIGO, :MAXIMO, :MINIMO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  BASE,'
      '  MINIMO,'
      '  MAXIMO,'
      '  SELECIONADO'
      'from EST_GRUPOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME, '
      '               BASE, '
      '               MINIMO, '
      '               MAXIMO '
      'FROM EST_GRUPOS'
      'WHERE CNPJ = :CNPJ and codigo = :codigo')
    ModifySQL.Strings = (
      'update EST_GRUPOS'
      'set'
      '  BASE = :BASE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  MAXIMO = :MAXIMO,'
      '  MINIMO = :MINIMO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'EST_GRUPOS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRUPOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_GRUPOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object dtEditBASE: TSmallintField
      FieldName = 'BASE'
      Origin = '"EST_GRUPOS"."BASE"'
    end
    object dtEditMINIMO: TSmallintField
      FieldName = 'MINIMO'
      Origin = '"EST_GRUPOS"."MINIMO"'
    end
    object dtEditMAXIMO: TSmallintField
      FieldName = 'MAXIMO'
      Origin = '"EST_GRUPOS"."MAXIMO"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME, '
      '               BASE, '
      '               MINIMO, '
      '               MAXIMO '
      'FROM EST_GRUPOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRUPOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRUPOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object dtListBASE: TSmallintField
      DisplayLabel = 'Base'
      FieldName = 'BASE'
      Origin = '"EST_GRUPOS"."BASE"'
    end
    object dtListMINIMO: TSmallintField
      DisplayLabel = 'M'#237'nimo'
      FieldName = 'MINIMO'
      Origin = '"EST_GRUPOS"."MINIMO"'
    end
    object dtListMAXIMO: TSmallintField
      DisplayLabel = 'M'#225'ximo'
      FieldName = 'MAXIMO'
      Origin = '"EST_GRUPOS"."MAXIMO"'
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
        Component = TVDet1COMPRAS_C
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1COMPRAS_D
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1DESCONTO_MAX
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1DIGITA_PRC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1ESTOQUE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1ESTOQUE_FIM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1ESTOQUE_INI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1GRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1NOME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1OBS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1SUBGRUPO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1TRANSFERENCIA_C
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1TRANSFERENCIA_D
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1VENDAS_C
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1VENDAS_D
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroBASE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroMAXIMO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroMINIMO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
      end>
  end
  inherited dtListDet1: TIBQuery
    SQL.Strings = (
      'SELECT CNPJ,'
      '               GRUPO, '
      '               SUBGRUPO, '
      '               NOME, '
      '               DESCONTO_MAX, '
      '               DIGITA_PRC ,'
      '               COMPRAS_C,'
      '               COMPRAS_D,'
      '               TRANSFERENCIA_C,'
      '               TRANSFERENCIA_D,'
      '                VENDAS_C,'
      '                VENDAS_D,'
      '                ESTOQUE,'
      '                ESTOQUE_INI,'
      '                ESTOQUE_FIM,'
      '                OBS'
      'FROM EST_SUBGRUPOS'
      'WHERE CNPJ = :CNPJ AND'
      '               GRUPO = :CODIGO'
      'ORDER BY NOME')
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
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1GRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS"."GRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1SUBGRUPO: TIntegerField
      DisplayLabel = 'SubGrupo'
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1NOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
    object dtListDet1DESCONTO_MAX: TFloatField
      DisplayLabel = 'Desc. M'#225'ximo'
      FieldName = 'DESCONTO_MAX'
      Origin = '"EST_SUBGRUPOS"."DESCONTO_MAX"'
    end
    object dtListDet1DIGITA_PRC: TIBStringField
      DisplayLabel = 'Digita PRC'
      FieldName = 'DIGITA_PRC'
      Origin = '"EST_SUBGRUPOS"."DIGITA_PRC"'
      FixedChar = True
      Size = 1
    end
    object dtListDet1COMPRAS_C: TIntegerField
      DisplayLabel = 'Compras C'
      FieldName = 'COMPRAS_C'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_C"'
    end
    object dtListDet1COMPRAS_D: TIntegerField
      DisplayLabel = 'Compras D'
      FieldName = 'COMPRAS_D'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_D"'
    end
    object dtListDet1TRANSFERENCIA_C: TIntegerField
      DisplayLabel = 'Tranfer'#234'ncia C'
      FieldName = 'TRANSFERENCIA_C'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_C"'
    end
    object dtListDet1TRANSFERENCIA_D: TIntegerField
      DisplayLabel = 'Tranfer'#234'ncia D'
      FieldName = 'TRANSFERENCIA_D'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_D"'
    end
    object dtListDet1VENDAS_C: TIntegerField
      DisplayLabel = 'Vendas C'
      FieldName = 'VENDAS_C'
      Origin = '"EST_SUBGRUPOS"."VENDAS_C"'
    end
    object dtListDet1VENDAS_D: TIntegerField
      DisplayLabel = 'Vendas D'
      FieldName = 'VENDAS_D'
      Origin = '"EST_SUBGRUPOS"."VENDAS_D"'
    end
    object dtListDet1ESTOQUE: TIntegerField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE"'
    end
    object dtListDet1ESTOQUE_INI: TIntegerField
      DisplayLabel = 'Estoque Ini'
      FieldName = 'ESTOQUE_INI'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_INI"'
    end
    object dtListDet1ESTOQUE_FIM: TIntegerField
      DisplayLabel = 'Estoque Fim'
      FieldName = 'ESTOQUE_FIM'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_FIM"'
    end
    object dtListDet1OBS: TMemoField
      DisplayLabel = 'Obs.'
      FieldName = 'OBS'
      Origin = '"EST_SUBGRUPOS"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  inherited dtEditDet1: TIBDataSet
    AfterInsert = dtEditDet1AfterInsert
    BeforePost = dtEditDet1BeforePost
    DeleteSQL.Strings = (
      'delete from EST_SUBGRUPOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    InsertSQL.Strings = (
      'insert into EST_SUBGRUPOS'
      
        '  (CNPJ, COMPRAS_C, COMPRAS_D, DESCONTO_MAX, DIGITA_PRC, ESTOQUE' +
        ', ESTOQUE_FIM, '
      
        '   ESTOQUE_INI, GRUPO, NOME, OBS, SUBGRUPO, TRANSFERENCIA_C, TRA' +
        'NSFERENCIA_D, '
      '   VENDAS_C, VENDAS_D)'
      'values'
      
        '  (:CNPJ, :COMPRAS_C, :COMPRAS_D, :DESCONTO_MAX, :DIGITA_PRC, :E' +
        'STOQUE, '
      
        '   :ESTOQUE_FIM, :ESTOQUE_INI, :GRUPO, :NOME, :OBS, :SUBGRUPO, :' +
        'TRANSFERENCIA_C, '
      '   :TRANSFERENCIA_D, :VENDAS_C, :VENDAS_D)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  GRUPO,'
      '  SUBGRUPO,'
      '  NOME,'
      '  DESCONTO_MAX,'
      '  DIGITA_PRC,'
      '  COMPRAS_C,'
      '  COMPRAS_D,'
      '  TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D,'
      '  VENDAS_C,'
      '  VENDAS_D,'
      '  ESTOQUE,'
      '  ESTOQUE_INI,'
      '  ESTOQUE_FIM,'
      '  OBS'
      'from EST_SUBGRUPOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRUPO = :GRUPO and'
      '  SUBGRUPO = :SUBGRUPO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               GRUPO, '
      '               SUBGRUPO, '
      '               NOME, '
      '               DESCONTO_MAX, '
      '               DIGITA_PRC ,'
      '               COMPRAS_C,'
      '               COMPRAS_D,'
      '               TRANSFERENCIA_C,'
      '               TRANSFERENCIA_D,'
      '                VENDAS_C,'
      '                VENDAS_D,'
      '                ESTOQUE,'
      '                ESTOQUE_INI,'
      '                ESTOQUE_FIM,'
      '                OBS'
      'FROM EST_SUBGRUPOS'
      'WHERE CNPJ = :CNPJ AND'
      '               GRUPO = :CODIGO AND'
      '               SUBGRUPO = :SUBGRUPO')
    ModifySQL.Strings = (
      'update EST_SUBGRUPOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COMPRAS_C = :COMPRAS_C,'
      '  COMPRAS_D = :COMPRAS_D,'
      '  DESCONTO_MAX = :DESCONTO_MAX,'
      '  DIGITA_PRC = :DIGITA_PRC,'
      '  ESTOQUE = :ESTOQUE,'
      '  ESTOQUE_FIM = :ESTOQUE_FIM,'
      '  ESTOQUE_INI = :ESTOQUE_INI,'
      '  GRUPO = :GRUPO,'
      '  NOME = :NOME,'
      '  OBS = :OBS,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  TRANSFERENCIA_C = :TRANSFERENCIA_C,'
      '  TRANSFERENCIA_D = :TRANSFERENCIA_D,'
      '  VENDAS_C = :VENDAS_C,'
      '  VENDAS_D = :VENDAS_D'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRUPO = :OLD_GRUPO and'
      '  SUBGRUPO = :OLD_SUBGRUPO')
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1GRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS"."GRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1SUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
    object dtEditDet1DESCONTO_MAX: TFloatField
      FieldName = 'DESCONTO_MAX'
      Origin = '"EST_SUBGRUPOS"."DESCONTO_MAX"'
    end
    object dtEditDet1DIGITA_PRC: TIBStringField
      FieldName = 'DIGITA_PRC'
      Origin = '"EST_SUBGRUPOS"."DIGITA_PRC"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1COMPRAS_C: TIntegerField
      FieldName = 'COMPRAS_C'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_C"'
    end
    object dtEditDet1COMPRAS_D: TIntegerField
      FieldName = 'COMPRAS_D'
      Origin = '"EST_SUBGRUPOS"."COMPRAS_D"'
    end
    object dtEditDet1TRANSFERENCIA_C: TIntegerField
      FieldName = 'TRANSFERENCIA_C'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_C"'
    end
    object dtEditDet1TRANSFERENCIA_D: TIntegerField
      FieldName = 'TRANSFERENCIA_D'
      Origin = '"EST_SUBGRUPOS"."TRANSFERENCIA_D"'
    end
    object dtEditDet1VENDAS_C: TIntegerField
      FieldName = 'VENDAS_C'
      Origin = '"EST_SUBGRUPOS"."VENDAS_C"'
    end
    object dtEditDet1VENDAS_D: TIntegerField
      FieldName = 'VENDAS_D'
      Origin = '"EST_SUBGRUPOS"."VENDAS_D"'
    end
    object dtEditDet1ESTOQUE: TIntegerField
      FieldName = 'ESTOQUE'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE"'
    end
    object dtEditDet1ESTOQUE_INI: TIntegerField
      FieldName = 'ESTOQUE_INI'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_INI"'
    end
    object dtEditDet1ESTOQUE_FIM: TIntegerField
      FieldName = 'ESTOQUE_FIM'
      Origin = '"EST_SUBGRUPOS"."ESTOQUE_FIM"'
    end
    object dtEditDet1OBS: TMemoField
      FieldName = 'OBS'
      Origin = '"EST_SUBGRUPOS"."OBS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
end
