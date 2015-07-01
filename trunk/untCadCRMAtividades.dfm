inherited frmCadCRMAtividades: TfrmCadCRMAtividades
  Left = 232
  Top = 89
  Width = 973
  Height = 538
  Caption = 'CRM - Atividades'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 957
    Height = 474
    ActivePage = tbsLista
    ClientRectBottom = 470
    ClientRectRight = 953
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 949
        Height = 378
        inherited TVRegistro: TcxGridDBBandedTableView
          object TVRegistroCODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object TVRegistroCNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object TVRegistroCOD_STATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_STATUS'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCOD_CLIENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CLIENTE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCOD_VENDEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_VENDEDOR'
            Visible = False
            Width = 96
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroDESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESCRICAO'
            Width = 245
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroDT_LANCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_LANCTO'
            PropertiesClassName = 'TcxDateEditProperties'
            Properties.ReadOnly = True
            Styles.Content = cxStyle1
            Width = 113
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroPRIORIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PRIORIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroDT_AGENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_AGENDA'
            Width = 80
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroHR_AGENDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'HR_AGENDA'
            Width = 73
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroCLIENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CLIENTE'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroVENDEDOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VENDEDOR'
            Visible = False
            GroupIndex = 0
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroSTATUS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'STATUS'
            OnCustomDrawCell = TVRegistroSTATUSCustomDrawCell
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object TVRegistroCOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COR'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 949
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 949
        Height = 443
        inherited pnlSubCad: TPanel
          Top = 165
          Width = 947
          inherited PgcDetalhe: TcxPageControl
            Width = 947
            ClientRectRight = 943
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Intera'#231#245'es'
              inherited PGCSub1: TcxPageControl
                Width = 939
                ActivePage = tbsListaSub1
                ClientRectRight = 935
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 931
                    inherited TVDet1: TcxGridDBBandedTableView
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_ATIVIDADE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_ATIVIDADE'
                        Visible = False
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1DT_LANCTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_LANCTO'
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1DESCRICAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DESCRICAO'
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  object cxDBTextEdit1: TcxDBTextEdit
                    Left = 74
                    Top = 24
                    DataBinding.DataField = 'DESCRICAO'
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
                    TabOrder = 2
                    Width = 529
                  end
                  object cxLabel16: TcxLabel
                    Left = 74
                    Top = 8
                    Caption = 'Descri'#231#227'o'
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
                  object cxDBDateEdit3: TcxDBDateEdit
                    Left = 604
                    Top = 24
                    DataBinding.DataField = 'DT_LANCTO'
                    DataBinding.DataSource = dsRegistroDet1
                    ParentFont = False
                    Properties.ReadOnly = True
                    Style.Color = clInactiveBorder
                    Style.Font.Charset = DEFAULT_CHARSET
                    Style.Font.Color = clWindowText
                    Style.Font.Height = -11
                    Style.Font.Name = 'Tahoma'
                    Style.Font.Style = []
                    Style.HotTrack = False
                    Style.IsFontAssigned = True
                    StyleDisabled.BorderColor = clBtnShadow
                    StyleDisabled.Color = clBtnFace
                    StyleDisabled.TextColor = clBtnShadow
                    TabOrder = 4
                    Width = 83
                  end
                  object cxLabel17: TcxLabel
                    Left = 603
                    Top = 7
                    Caption = 'Dt. Lancto'
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
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              TabVisible = False
              inherited PGCSub2: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              TabVisible = False
              inherited PGCSub3: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              TabVisible = False
              inherited PGCSub4: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
              inherited PGCSub5: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
              inherited PGCSub6: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
              inherited PGCSub7: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
              inherited PGCSub8: TcxPageControl
                Width = 939
                ClientRectRight = 935
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 947
          Height = 164
          inherited PgcMaster: TcxPageControl
            Width = 947
            Height = 164
            ClientRectBottom = 160
            ClientRectRight = 943
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Atividades'
              inherited edtCodigo: TcxDBTextEdit
                DataBinding.DataField = 'CODIGO'
              end
              object aTfrmCadClientes: TcxDBLookupComboBox
                Left = 76
                Top = 16
                DataBinding.DataField = 'COD_CLIENTE'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.DropDownAutoSize = True
                Properties.DropDownSizeable = True
                Properties.DropDownWidth = 400
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_RAZAO'
                  end
                  item
                    FieldName = 'CODIGO'
                  end>
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 2
                Width = 355
              end
              object cxLabel12: TcxLabel
                Left = 76
                Top = 0
                Caption = 'Cliente'
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
              object btnCliente: TcxButton
                Left = 432
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 10
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
                LookAndFeel.SkinName = 'LiquidSky'
              end
              object aTfrmCadCRMStatus: TcxDBLookupComboBox
                Left = 455
                Top = 16
                DataBinding.DataField = 'COD_STATUS'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 3
                Width = 166
              end
              object cxLabel13: TcxLabel
                Left = 457
                Top = 0
                Caption = 'Status'
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
              object btnStatus: TcxButton
                Left = 621
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 12
                TabStop = False
                OnClick = btnStatusClick
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
              object btnTecnico: TcxButton
                Left = 880
                Top = 16
                Width = 23
                Height = 22
                TabOrder = 13
                TabStop = False
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
                Left = 648
                Top = 16
                DataBinding.DataField = 'COD_VENDEDOR'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                TabOrder = 4
                Width = 235
              end
              object cxLabel15: TcxLabel
                Left = 648
                Top = 0
                Caption = 'Vendedor'
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
              object edSolicitante: TcxDBTextEdit
                Left = 8
                Top = 56
                DataBinding.DataField = 'DESCRICAO'
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
                TabOrder = 5
                Width = 529
              end
              object cxLabel10: TcxLabel
                Left = 8
                Top = 40
                Caption = 'Descri'#231#227'o'
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
              object cxDBDateEdit1: TcxDBDateEdit
                Left = 820
                Top = 61
                DataBinding.DataField = 'DT_LANCTO'
                DataBinding.DataSource = dsRegistro
                ParentFont = False
                Properties.ReadOnly = True
                Style.Color = clInactiveBorder
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'Tahoma'
                Style.Font.Style = []
                Style.HotTrack = False
                Style.IsFontAssigned = True
                StyleDisabled.BorderColor = clBtnShadow
                StyleDisabled.Color = clBtnFace
                StyleDisabled.TextColor = clBtnShadow
                TabOrder = 8
                Width = 83
              end
              object cxLabel23: TcxLabel
                Left = 819
                Top = 44
                Caption = 'Dt. Lancto'
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
              object cxGroupBox2: TcxGroupBox
                Left = 629
                Top = 49
                TabStop = True
                Caption = 'Agendamento'
                TabOrder = 7
                Height = 73
                Width = 185
                object cxDBDateEdit2: TcxDBDateEdit
                  Left = 7
                  Top = 32
                  DataBinding.DataField = 'DT_AGENDA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 0
                  Width = 83
                end
                object cxDBTimeEdit1: TcxDBTimeEdit
                  Left = 92
                  Top = 32
                  DataBinding.DataField = 'HR_AGENDA'
                  DataBinding.DataSource = dsRegistro
                  ParentFont = False
                  Style.Font.Charset = DEFAULT_CHARSET
                  Style.Font.Color = clWindowText
                  Style.Font.Height = -11
                  Style.Font.Name = 'Tahoma'
                  Style.Font.Style = []
                  Style.HotTrack = False
                  Style.IsFontAssigned = True
                  TabOrder = 1
                  Width = 81
                end
                object cxLabel11: TcxLabel
                  Left = 6
                  Top = 15
                  Caption = 'Data'
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
                object cxLabel25: TcxLabel
                  Left = 90
                  Top = 15
                  Caption = 'Hora'
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
              end
              object cxDBSpinEdit1: TcxDBSpinEdit
                Left = 540
                Top = 56
                DataBinding.DataField = 'PRIORIDADE'
                DataBinding.DataSource = dsRegistro
                TabOrder = 6
                Width = 81
              end
              object cxLabel14: TcxLabel
                Left = 540
                Top = 40
                Caption = 'Prioridade'
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
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    DeleteSQL.Strings = (
      'delete from crm_atividades'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into crm_atividades'
      
        '  (CNPJ, COD_CLIENTE, COD_STATUS, COD_VENDEDOR, CODIGO, DESCRICA' +
        'O, DT_AGENDA, '
      '   DT_LANCTO, HR_AGENDA, PRIORIDADE)'
      'values'
      
        '  (:CNPJ, :COD_CLIENTE, :COD_STATUS, :COD_VENDEDOR, :CODIGO, :DE' +
        'SCRICAO, '
      '   :DT_AGENDA, :DT_LANCTO, :HR_AGENDA, :PRIORIDADE)')
    RefreshSQL.Strings = (
      'Select * '
      'from crm_atividades '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select atv.* from crm_atividades atv'
      'where atv.codigo = :codigo and atv.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update crm_atividades'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_STATUS = :COD_STATUS,'
      '  COD_VENDEDOR = :COD_VENDEDOR,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DT_AGENDA = :DT_AGENDA,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  HR_AGENDA = :HR_AGENDA,'
      '  PRIORIDADE = :PRIORIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CRM_ATIVIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRM_ATIVIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"CRM_ATIVIDADES"."COD_STATUS"'
    end
    object dtEditCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"CRM_ATIVIDADES"."COD_CLIENTE"'
    end
    object dtEditCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"CRM_ATIVIDADES"."COD_VENDEDOR"'
    end
    object dtEditDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CRM_ATIVIDADES"."DESCRICAO"'
      Size = 200
    end
    object dtEditDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"CRM_ATIVIDADES"."DT_LANCTO"'
    end
    object dtEditPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = '"CRM_ATIVIDADES"."PRIORIDADE"'
    end
    object dtEditDT_AGENDA: TDateField
      FieldName = 'DT_AGENDA'
      Origin = '"CRM_ATIVIDADES"."DT_AGENDA"'
    end
    object dtEditHR_AGENDA: TTimeField
      FieldName = 'HR_AGENDA'
      Origin = '"CRM_ATIVIDADES"."HR_AGENDA"'
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      
        'select atv.*, st.nome status, st.cor, psa.nome_razao cliente, vd' +
        'd.nome vendedor from crm_atividades atv'
      
        'left join crm_status st on (atv.cnpj = st.cnpj and atv.cod_statu' +
        's = st.codigo)'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = atv.cnpj and psa.cod' +
        'igo = atv.cod_cliente)'
      
        'left join fat_vendedor vdd on (atv.cnpj = vdd.cnpj and vdd.codig' +
        'o = atv.cod_vendedor)'
      'where atv.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRM_ATIVIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRM_ATIVIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCOD_STATUS: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'COD_STATUS'
      Origin = '"CRM_ATIVIDADES"."COD_STATUS"'
    end
    object dtListCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"CRM_ATIVIDADES"."COD_CLIENTE"'
    end
    object dtListCOD_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'COD_VENDEDOR'
      Origin = '"CRM_ATIVIDADES"."COD_VENDEDOR"'
    end
    object dtListDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"CRM_ATIVIDADES"."DESCRICAO"'
      Size = 200
    end
    object dtListDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"CRM_ATIVIDADES"."DT_LANCTO"'
    end
    object dtListPRIORIDADE: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'PRIORIDADE'
      Origin = '"CRM_ATIVIDADES"."PRIORIDADE"'
    end
    object dtListDT_AGENDA: TDateField
      DisplayLabel = 'Dt. Agenda'
      FieldName = 'DT_AGENDA'
      Origin = '"CRM_ATIVIDADES"."DT_AGENDA"'
    end
    object dtListHR_AGENDA: TTimeField
      DisplayLabel = 'Hr. Agenda'
      FieldName = 'HR_AGENDA'
      Origin = '"CRM_ATIVIDADES"."HR_AGENDA"'
    end
    object dtListCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object dtListSTATUS: TIBStringField
      FieldName = 'Status'
      Origin = '"CRM_STATUS"."NOME"'
      Size = 50
    end
    object dtListCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"CRM_STATUS"."COR"'
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
        Component = TVDet1COD_ATIVIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
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
        Component = TVDet1DESCRICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVDet1DT_LANCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroCLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroCOD_CLIENTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_STATUS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroCOD_VENDEDOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
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
        Component = TVRegistroDESCRICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroDT_AGENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroDT_LANCTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroHR_AGENDA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroPRIORIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroSTATUS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = TVRegistroVENDEDOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
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
      'select * from crm_iteracoes i'
      'where i.cnpj = :cnpj and i.cod_atividade = :codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRM_ITERACOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1COD_ATIVIDADE: TIntegerField
      DisplayLabel = 'C'#243'd. Atividade'
      FieldName = 'COD_ATIVIDADE'
      Origin = '"CRM_ITERACOES"."COD_ATIVIDADE"'
    end
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRM_ITERACOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1DT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"CRM_ITERACOES"."DT_LANCTO"'
    end
    object dtListDet1DESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"CRM_ITERACOES"."DESCRICAO"'
      Size = 200
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from crm_iteracoes'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into crm_iteracoes'
      '  (CNPJ, COD_ATIVIDADE, CODIGO, DESCRICAO, DT_LANCTO)'
      'values'
      '  (:CNPJ, :COD_ATIVIDADE, :CODIGO, :DESCRICAO, :DT_LANCTO)')
    RefreshSQL.Strings = (
      'Select * '
      'from crm_iteracoes '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from crm_iteracoes i'
      'where i.cnpj = :cnpj and i.codigo = :codigo')
    ModifySQL.Strings = (
      'update crm_iteracoes'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_ATIVIDADE = :COD_ATIVIDADE,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  DT_LANCTO = :DT_LANCTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_CRM_ITERACOES_ID'
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRM_ITERACOES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1COD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"CRM_ITERACOES"."COD_ATIVIDADE"'
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CRM_ITERACOES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1DT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"CRM_ITERACOES"."DT_LANCTO"'
    end
    object dtEditDet1DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CRM_ITERACOES"."DESCRICAO"'
      Size = 200
    end
  end
  inherited mtbFiltro: TdxMemData
    Left = 733
    Top = 4
  end
  inherited dsFiltro: TDataSource
    Left = 703
    Top = 4
  end
  object cxStyleRepository1: TcxStyleRepository
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svColor]
      Color = clInactiveCaptionText
    end
  end
  object QryClientes: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, reg.tecnico, psa.email, (coal' +
        'esce(cdd.nome,'#39#39')||'#39' ('#39'||coalesce(psa.uf,'#39#39')||'#39')'#39') cidade'
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (psa.cnpj = cdd.cnpj and psa.cidade' +
        ' = cdd.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_regioes reg on (reg.cnpj = psa.cnpj and reg.codigo' +
        ' = psa.regiao)'
      'where psa.cnpj = :cnpj'
      'order by  psa.nome_razao')
    Left = 534
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object QryClientesNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object QryClientesTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object QryClientesEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsClientes: TDataSource
    DataSet = QryClientes
    Left = 535
    Top = 2
  end
  object QryStatusCRM: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from crm_status s'
      'where s.cnpj = :cnpj')
    Left = 566
    Top = 34
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object QryStatusCRMCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CRM_STATUS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryStatusCRMCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CRM_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryStatusCRMNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CRM_STATUS"."NOME"'
      Size = 50
    end
    object QryStatusCRMCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"CRM_STATUS"."COR"'
    end
    object QryStatusCRMFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CRM_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object QryStatusCRMPADRAO_ABERTURA: TIBStringField
      FieldName = 'PADRAO_ABERTURA'
      Origin = '"CRM_STATUS"."PADRAO_ABERTURA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsStatus: TDataSource
    DataSet = QryStatusCRM
    Left = 567
    Top = 2
  end
  object QryVendedor: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisa
    SQL.Strings = (
      'SELECT CNPJ,'
      '               PESSOA_FJ, '
      '               NOME,'
      '               CODIGO'
      'FROM FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 600
    Top = 32
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object QryVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object QryVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object QryVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = QryVendedor
    Left = 599
  end
end
