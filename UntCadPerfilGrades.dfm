inherited FrmCadPerfilGrades: TFrmCadPerfilGrades
  Caption = 'Perfil de Grades'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroNOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroINICIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INICIAL'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroFINAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FINAL'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroINTERVALO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INTERVALO'
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Visible = False
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        inherited pnlSubCad: TPanel
          inherited PgcDetalhe: TcxPageControl
            ActivePage = tbsDetalhe1
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Grade Ordem'
              inherited PGCSub1: TcxPageControl
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 635
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1ORDEM: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ORDEM'
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  object cxLabel14: TcxLabel
                    Left = 77
                    Top = 8
                    Caption = 'Ordem'
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
                  object cxDBTextEdit5: TcxDBTextEdit
                    Left = 76
                    Top = 24
                    DataBinding.DataField = 'ORDEM'
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
                    TabOrder = 1
                    Width = 65
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
              inherited PGCSub8: TcxPageControl
                ActivePage = tbsListaSub8
                inherited tbsListaSub8: TcxTabSheet
                  inherited GridDet8: TcxGrid
                    Width = 635
                  end
                end
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          inherited PgcMaster: TcxPageControl
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Grade'
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'CODIGO'
                TabOrder = 0
              end
              object cxLabel11: TcxLabel
                Left = 77
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
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 76
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
                TabOrder = 1
                Width = 487
              end
              object cxLabel10: TcxLabel
                Left = 9
                Top = 40
                Caption = 'Inicial'
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
              object cxDBTextEdit2: TcxDBTextEdit
                Left = 8
                Top = 56
                DataBinding.DataField = 'INICIAL'
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
                TabOrder = 2
                Width = 65
              end
              object cxDBTextEdit3: TcxDBTextEdit
                Left = 76
                Top = 56
                DataBinding.DataField = 'FINAL'
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
                Width = 65
              end
              object cxLabel12: TcxLabel
                Left = 77
                Top = 40
                Caption = 'Final'
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
              object cxLabel13: TcxLabel
                Left = 144
                Top = 40
                Caption = 'Intervalo'
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
              object cxDBTextEdit4: TcxDBTextEdit
                Left = 143
                Top = 56
                DataBinding.DataField = 'INTERVALO'
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
                TabOrder = 4
                Width = 65
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_GRADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_GRADES'
      '  (CNPJ, CODIGO, FINAL, INICIAL, INTERVALO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :FINAL, :INICIAL, :INTERVALO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  INICIAL,'
      '  FINAL,'
      '  INTERVALO'
      'from EST_GRADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME,'
      '          INICIAL,'
      '          FINAL,'
      '          INTERVALO '
      'from EST_GRADES'
      'Where CNPJ = :CNPJ and CODIGO = :codigo')
    ModifySQL.Strings = (
      'update EST_GRADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  FINAL = :FINAL,'
      '  INICIAL = :INICIAL,'
      '  INTERVALO = :INTERVALO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_GRADES"."NOME"'
      Size = 50
    end
    object dtEditINICIAL: TIntegerField
      FieldName = 'INICIAL'
      Origin = '"EST_GRADES"."INICIAL"'
    end
    object dtEditFINAL: TIntegerField
      FieldName = 'FINAL'
      Origin = '"EST_GRADES"."FINAL"'
    end
    object dtEditINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"EST_GRADES"."INTERVALO"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME,'
      '          INICIAL,'
      '          FINAL,'
      '          INTERVALO '
      'from EST_GRADES'
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
      Origin = '"EST_GRADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_GRADES"."NOME"'
      Size = 50
    end
    object dtListINICIAL: TIntegerField
      DisplayLabel = 'Inicial'
      FieldName = 'INICIAL'
      Origin = '"EST_GRADES"."INICIAL"'
    end
    object dtListFINAL: TIntegerField
      DisplayLabel = 'Final'
      FieldName = 'FINAL'
      Origin = '"EST_GRADES"."FINAL"'
    end
    object dtListINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      Origin = '"EST_GRADES"."INTERVALO"'
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
        Component = TVDet1CODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1ORDEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroFINAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroINICIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroINTERVALO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    GRADE,'
      '    ORDEM'
      'from EST_GRADES_ADICIONAL'
      'Where CNPJ = :CNPJ AND GRADE = :CODIGO')
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
      Origin = '"EST_GRADES_ADICIONAL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1CODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES_ADICIONAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object dtListDet1GRADE: TIntegerField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_GRADES_ADICIONAL"."GRADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1ORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"EST_GRADES_ADICIONAL"."ORDEM"'
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from EST_GRADES_ADICIONAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE')
    InsertSQL.Strings = (
      'insert into EST_GRADES_ADICIONAL'
      '  (CNPJ, CODIGO, GRADE, ORDEM)'
      'values'
      '  (:CNPJ, :CODIGO, :GRADE, :ORDEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  GRADE,'
      '  ORDEM'
      'from EST_GRADES_ADICIONAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  GRADE = :GRADE')
    SelectSQL.Strings = (
      'select'
      '    CNPJ,'
      '    CODIGO,'
      '    GRADE,'
      '    ORDEM'
      'from EST_GRADES_ADICIONAL'
      'Where CNPJ = :CNPJ AND GRADE = :CODIGO')
    ModifySQL.Strings = (
      'update EST_GRADES_ADICIONAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  GRADE = :GRADE,'
      '  ORDEM = :ORDEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  GRADE = :OLD_GRADE')
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_GRADES_ADICIONAL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_GRADES_ADICIONAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object dtEditDet1GRADE: TIntegerField
      FieldName = 'GRADE'
      Origin = '"EST_GRADES_ADICIONAL"."GRADE"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1ORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"EST_GRADES_ADICIONAL"."ORDEM"'
    end
  end
  inherited mtbFiltro: TdxMemData
    Top = 20
  end
end
