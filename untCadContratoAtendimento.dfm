inherited frmCadContratoAtendimento: TfrmCadContratoAtendimento
  Left = 164
  Top = 56
  Width = 1031
  Height = 645
  Caption = 'Contratos de Atendimento'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1015
    Height = 581
    ActivePage = tbsEdita
    ClientRectBottom = 577
    ClientRectRight = 1011
    ClientRectTop = 4
    inherited tbsLista: TcxTabSheet
      TabVisible = False
      inherited Grid: TcxGrid
        Top = 5
        Width = 1007
        Height = 568
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
          object TVRegistroCOD_CLIENTE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CLIENTE'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object TVRegistroCOD_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CONTRATO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object TVRegistroNUM_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NUM_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object TVRegistroDT_INICIO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_INICIO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object TVRegistroDT_FIM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_FIM'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object TVRegistroATIVO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ATIVO'
            Width = 36
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object TVRegistroINFORMACOES: TcxGridDBBandedColumn
            DataBinding.FieldName = 'INFORMACOES'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object TVRegistroVALOR_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_CONTRATO'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object TVRegistroDATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DATA'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object TVRegistroDIA_BASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DIA_BASE'
            Visible = False
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object TVRegistroNOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object TVRegistroCPF_CGC: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CPF_CGC'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object TVRegistroNOME_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_CONTRATO'
            Width = 233
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
        end
      end
      inherited pnlFiltro: TPanel
        Width = 1007
        Height = 5
      end
    end
    inherited tbsEdita: TcxTabSheet
      TabVisible = False
      inherited Panel2: TPanel
        Width = 1007
        Height = 573
        inherited pnlSubCad: TPanel
          Top = 151
          Width = 1005
          Height = 421
          inherited PgcDetalhe: TcxPageControl
            Width = 1005
            Height = 421
            ActivePage = tbsDetalhe1
            ClientRectBottom = 417
            ClientRectRight = 1001
            inherited tbsDetalhe1: TcxTabSheet
              Caption = 'Equipamentos '
              inherited PGCSub1: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub1: TcxTabSheet
                  inherited GridDet1: TcxGrid
                    Width = 989
                    Height = 359
                    inherited TVDet1: TcxGridDBBandedTableView
                      OptionsView.BandHeaders = True
                      Bands = <
                        item
                          Caption = 'Geral'
                          Width = 651
                        end
                        item
                          Caption = 'Par'#226'metros - Dias'
                          Width = 268
                        end
                        item
                          Caption = 'VMC - Volume M'#233'dio de C'#243'pias (Mensal)'
                          Width = 344
                        end
                        item
                          Caption = 'Par'#226'metros - Datas do Contrato'
                          Width = 433
                        end>
                      object TVDet1CNPJ: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CNPJ'
                        Visible = False
                        Width = 82
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1CODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Width = 60
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1COD_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'COD_PRODUTO'
                        Width = 96
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1CONTRATO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONTRATO'
                        Visible = False
                        Width = 144
                        Position.BandIndex = 0
                        Position.ColIndex = 5
                        Position.RowIndex = 0
                      end
                      object TVDet1DT_ADICAO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_ADICAO'
                        Width = 81
                        Position.BandIndex = 3
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1DT_RETIRADA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_RETIRADA'
                        Width = 82
                        Position.BandIndex = 3
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1DATA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DATA'
                        Width = 90
                        Position.BandIndex = 3
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1ATIVO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'ATIVO'
                        Width = 48
                        Position.BandIndex = 0
                        Position.ColIndex = 10
                        Position.RowIndex = 0
                      end
                      object TVDet1VALOR: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VALOR'
                        Visible = False
                        Width = 57
                        Position.BandIndex = 0
                        Position.ColIndex = 6
                        Position.RowIndex = 0
                      end
                      object TVDet1QTDE_COPIAS_PREVENTIVA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'QTDE_COPIAS_PREVENTIVA'
                        Width = 78
                        Position.BandIndex = 1
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1DIAS_RECHAMADO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DIAS_RECHAMADO'
                        Width = 79
                        Position.BandIndex = 1
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1MEDIA_COPIAS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MEDIA_COPIAS'
                        Width = 56
                        Position.BandIndex = 2
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVDet1TEMPO_RESPOSTA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TEMPO_RESPOSTA'
                        Width = 88
                        Position.BandIndex = 1
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1INFORMACOES_ITENS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'INFORMACOES_ITENS'
                        Visible = False
                        Width = 80
                        Position.BandIndex = 0
                        Position.ColIndex = 7
                        Position.RowIndex = 0
                      end
                      object TVDet1DT_VIGENCIA_INICIAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_VIGENCIA_INICIAL'
                        Width = 92
                        Position.BandIndex = 3
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1DT_VIGENCIA_FINAL: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DT_VIGENCIA_FINAL'
                        Width = 88
                        Position.BandIndex = 3
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1VMC_DATA_UPD: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VMC_DATA_UPD'
                        Width = 82
                        Position.BandIndex = 2
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVDet1VMC_TIPO_UPD: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VMC_TIPO_UPD'
                        Width = 91
                        Position.BandIndex = 2
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVDet1VMC_COD_UPD: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'VMC_COD_UPD'
                        Width = 115
                        Position.BandIndex = 2
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                      object TVDet1PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'PRODUTO'
                        Width = 116
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVDet1MODELO_EQUIPAMENTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'MODELO_EQUIPAMENTO'
                        Width = 80
                        Position.BandIndex = 0
                        Position.ColIndex = 8
                        Position.RowIndex = 0
                      end
                      object TVDet1TIPO_PRODUTO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'TIPO_PRODUTO'
                        Visible = False
                        Width = 58
                        Position.BandIndex = 0
                        Position.ColIndex = 9
                        Position.RowIndex = 0
                      end
                      object TVDet1SERIE: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SERIE'
                        Width = 151
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                    end
                  end
                end
                inherited tbsEditaSub1: TcxTabSheet
                  inherited edtCodDet1: TcxDBTextEdit
                    Top = 15
                    DataBinding.DataField = 'CODIGO'
                  end
                  inherited cxLabel8: TcxLabel
                    Top = -1
                  end
                  object cxButton2: TcxButton
                    Left = 493
                    Top = 14
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
                  end
                  object cmbEquipamento: TcxDBLookupComboBox
                    Left = 74
                    Top = 15
                    DataBinding.DataField = 'COD_PRODUTO'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.DropDownAutoSize = True
                    Properties.KeyFieldNames = 'CODIGO'
                    Properties.ListColumns = <
                      item
                        FieldName = 'NOME'
                      end
                      item
                        FieldName = 'SERIE'
                      end
                      item
                        FieldName = 'CODIGO'
                      end>
                    Properties.ListSource = dsProduto
                    Properties.MaxLength = 500
                    TabOrder = 1
                    Width = 417
                  end
                  object cxLabel15: TcxLabel
                    Left = 74
                    Top = -1
                    Caption = 'Equipamento'
                    Transparent = True
                  end
                  object edtValor: TcxDBCalcEdit
                    Left = 520
                    Top = 15
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
                    TabOrder = 2
                    Width = 125
                  end
                  object cxLabel16: TcxLabel
                    Left = 499
                    Top = -1
                    Caption = 'Valor'
                    Transparent = True
                  end
                  object cxGroupBox1: TcxGroupBox
                    Left = 8
                    Top = 40
                    TabStop = True
                    Caption = 'Par'#226'metros - Datas do Contrato'
                    TabOrder = 4
                    Height = 64
                    Width = 441
                    object cxDBDateEdit2: TcxDBDateEdit
                      Left = 91
                      Top = 32
                      Hint = 
                        'Data em que o equipamento foi adicionado no contrato de atendime' +
                        'nto.'
                      DataBinding.DataField = 'DT_ADICAO'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 1
                      Width = 83
                    end
                    object cxLabel17: TcxLabel
                      Left = 91
                      Top = 16
                      Caption = 'Dt Adi'#231#227'o'
                      Transparent = True
                    end
                    object cxDBDateEdit3: TcxDBDateEdit
                      Left = 176
                      Top = 32
                      Hint = 
                        'Data em que o equipamento foi retirado do contrato de atendiment' +
                        'o.'
                      DataBinding.DataField = 'DT_RETIRADA'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 2
                      Width = 83
                    end
                    object cxLabel18: TcxLabel
                      Left = 176
                      Top = 16
                      Caption = 'Dt. Retirada'
                      ParentFont = False
                      Transparent = True
                    end
                    object cxDBDateEdit4: TcxDBDateEdit
                      Left = 8
                      Top = 32
                      DataBinding.DataField = 'DATA'
                      DataBinding.DataSource = dsRegistroDet1
                      Enabled = False
                      TabOrder = 0
                      Width = 81
                    end
                    object cxLabel19: TcxLabel
                      Left = 8
                      Top = 16
                      Caption = 'Dt. Cadastro'
                      Transparent = True
                    end
                    object cxDBDateEdit5: TcxDBDateEdit
                      Left = 346
                      Top = 32
                      Hint = 
                        'Data de vig'#234'ncia final do equipamento no contrato de atendimento' +
                        '.'
                      DataBinding.DataField = 'DT_VIGENCIA_FINAL'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 4
                      Width = 83
                    end
                    object cxLabel20: TcxLabel
                      Left = 346
                      Top = 16
                      Caption = 'Dt. Vig. Final'
                      ParentFont = False
                      Transparent = True
                    end
                    object cxLabel21: TcxLabel
                      Left = 261
                      Top = 16
                      Caption = 'Dt. Vig. Inicial'
                      Transparent = True
                    end
                    object cxDBDateEdit6: TcxDBDateEdit
                      Left = 261
                      Top = 32
                      Hint = 
                        'Data de vig'#234'ncia inicial do equipamento no contrato de atendimen' +
                        'to.'
                      DataBinding.DataField = 'DT_VIGENCIA_INICIAL'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      ShowHint = True
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clWindowText
                      Style.Font.Height = -11
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.IsFontAssigned = True
                      TabOrder = 3
                      Width = 83
                    end
                  end
                  object cxGroupBox3: TcxGroupBox
                    Left = 455
                    Top = 40
                    TabStop = True
                    Caption = 'Par'#226'metros - Dias/Horas'
                    TabOrder = 5
                    Height = 64
                    Width = 234
                    object cxDBSpinEdit3: TcxDBSpinEdit
                      Left = 80
                      Top = 32
                      Hint = 'N'#186' de dias para disparar uma visita preventiva.'
                      DataBinding.DataField = 'QTDE_COPIAS_PREVENTIVA'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      Properties.MaxValue = 365.000000000000000000
                      Properties.MinValue = 1.000000000000000000
                      ShowHint = True
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -13
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.LookAndFeel.Kind = lfUltraFlat
                      Style.IsFontAssigned = True
                      StyleDisabled.BorderColor = clBtnShadow
                      StyleDisabled.BorderStyle = ebsSingle
                      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                      StyleDisabled.ButtonStyle = btsSimple
                      StyleFocused.LookAndFeel.Kind = lfUltraFlat
                      StyleHot.LookAndFeel.Kind = lfUltraFlat
                      TabOrder = 1
                      Width = 68
                    end
                    object cxDBSpinEdit2: TcxDBSpinEdit
                      Left = 152
                      Top = 32
                      Hint = 'Tempo de resposta definido em contrato. '
                      DataBinding.DataField = 'TEMPO_RESPOSTA'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      Properties.MaxValue = 365.000000000000000000
                      Properties.MinValue = 1.000000000000000000
                      ShowHint = True
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -13
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.LookAndFeel.Kind = lfUltraFlat
                      Style.IsFontAssigned = True
                      StyleDisabled.BorderColor = clBtnShadow
                      StyleDisabled.BorderStyle = ebsSingle
                      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                      StyleDisabled.ButtonStyle = btsSimple
                      StyleFocused.LookAndFeel.Kind = lfUltraFlat
                      StyleHot.LookAndFeel.Kind = lfUltraFlat
                      TabOrder = 2
                      Width = 68
                    end
                    object cxDBSpinEdit1: TcxDBSpinEdit
                      Left = 8
                      Top = 32
                      Hint = 'N'#186' de dias para caracterizar um rechamado'
                      DataBinding.DataField = 'DIAS_RECHAMADO'
                      DataBinding.DataSource = dsRegistroDet1
                      ParentFont = False
                      ParentShowHint = False
                      Properties.MaxValue = 365.000000000000000000
                      Properties.MinValue = 1.000000000000000000
                      ShowHint = True
                      Style.BorderColor = clBtnShadow
                      Style.BorderStyle = ebsSingle
                      Style.Font.Charset = DEFAULT_CHARSET
                      Style.Font.Color = clBlack
                      Style.Font.Height = -13
                      Style.Font.Name = 'Tahoma'
                      Style.Font.Style = []
                      Style.HotTrack = False
                      Style.LookAndFeel.Kind = lfUltraFlat
                      Style.IsFontAssigned = True
                      StyleDisabled.BorderColor = clBtnShadow
                      StyleDisabled.BorderStyle = ebsSingle
                      StyleDisabled.LookAndFeel.Kind = lfUltraFlat
                      StyleDisabled.ButtonStyle = btsSimple
                      StyleFocused.LookAndFeel.Kind = lfUltraFlat
                      StyleHot.LookAndFeel.Kind = lfUltraFlat
                      TabOrder = 0
                      Width = 68
                    end
                    object Label4: TcxLabel
                      Left = 8
                      Top = 16
                      Caption = 'Rechamado'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label13: TcxLabel
                      Left = 80
                      Top = 16
                      Caption = 'Preventiva'
                      ParentFont = False
                      Transparent = True
                    end
                    object Label5: TcxLabel
                      Left = 150
                      Top = 16
                      Caption = 'Tmp. Resposta'
                      ParentFont = False
                      Transparent = True
                    end
                  end
                  object GridHistorico: TcxGrid
                    Left = 0
                    Top = 180
                    Width = 989
                    Height = 154
                    Align = alBottom
                    TabOrder = 8
                    TabStop = False
                    object GridHistoricoDBBandedTableView1: TcxGridDBBandedTableView
                      NavigatorButtons.ConfirmDelete = False
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      Bands = <
                        item
                        end>
                    end
                    object TVHistorico: TcxGridDBBandedTableView
                      NavigatorButtons.ConfirmDelete = False
                      DataController.DataSource = dsHistorico
                      DataController.Summary.DefaultGroupSummaryItems = <>
                      DataController.Summary.FooterSummaryItems = <>
                      DataController.Summary.SummaryGroups = <>
                      OptionsBehavior.IncSearch = True
                      OptionsCustomize.ColumnFiltering = False
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
                      object TVHistoricoCODIGO: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CODIGO'
                        Position.BandIndex = 0
                        Position.ColIndex = 0
                        Position.RowIndex = 0
                      end
                      object TVHistoricoCONT_LEITURA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'CONT_LEITURA'
                        Width = 177
                        Position.BandIndex = 0
                        Position.ColIndex = 1
                        Position.RowIndex = 0
                      end
                      object TVHistoricoDATA: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'DATA'
                        Width = 139
                        Position.BandIndex = 0
                        Position.ColIndex = 2
                        Position.RowIndex = 0
                      end
                      object TVHistoricoSALDO_DIAS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SALDO_DIAS'
                        Width = 76
                        Position.BandIndex = 0
                        Position.ColIndex = 4
                        Position.RowIndex = 0
                      end
                      object TVHistoricoSALDO_COPIAS: TcxGridDBBandedColumn
                        DataBinding.FieldName = 'SALDO_COPIAS'
                        Width = 92
                        Position.BandIndex = 0
                        Position.ColIndex = 3
                        Position.RowIndex = 0
                      end
                    end
                    object LVHistorico: TcxGridLevel
                      GridView = TVHistorico
                    end
                  end
                  object Panel4: TPanel
                    Left = 0
                    Top = 334
                    Width = 989
                    Height = 25
                    Align = alBottom
                    TabOrder = 13
                    object BitBtn1: TBitBtn
                      Left = 2
                      Top = 1
                      Width = 77
                      Height = 23
                      Caption = 'Exportar'
                      TabOrder = 0
                      TabStop = False
                      OnClick = BitBtn1Click
                      Glyph.Data = {
                        36040000424D3604000000000000360000002800000010000000100000000100
                        2000000000000004000000000000000000000000000000000000000000000000
                        0000000000008484840000000000000000000000000000000000000000000000
                        0000000000000000000000000000000000000000000000000000000000000000
                        00000000000084848400C6C6C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6
                        C600C6C6C600C6C6C600C6C6C600C6C6C600C6C6C60000000000000000000000
                        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000000000000000
                        00000000000084848400FFFFFF00C6C6C600C6C6C600C6C6C600C6C6C600FFFF
                        FF00C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000000
                        00000000000084848400FFFFFF00FFFFFF00FFFFFF0000840000848484000084
                        000084848400FFFFFF00C6C6C600FFFFFF00C6C6C60000000000008400008484
                        84000084000084848400008400008484840000840000FFFFFF00008400008484
                        840000840000FFFFFF00C6C6C600FFFFFF00C6C6C60000000000848484000084
                        000084848400008400008484840000840000FFFFFF0000840000848484000084
                        0000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C6C6C60000000000008400008484
                        8400008400008484840000840000FFFFFF000084000084848400008400008484
                        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
                        00008484840000840000FFFFFF00008400008484840000840000848484000084
                        0000FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C60000000000000000000000
                        000000840000FFFFFF0000840000848484000084000084848400C6C6C600C6C6
                        C600C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000000000000084
                        0000FFFFFF00008400008484840000840000848484000084000084848400C6C6
                        C600FFFFFF00FFFFFF00C6C6C600FFFFFF00C6C6C6000000000000840000FFFF
                        FF00008400008484840000840000848484000084000084848400008400008484
                        8400C6C6C600C6C6C600C6C6C600FFFFFF00C6C6C60000000000848484000084
                        0000848484000084000084848400FFFFFF008484840000840000848484000084
                        0000FFFFFF00FFFFFF0000000000000000000000000000000000008400008484
                        84000084000084848400FFFFFF00FFFFFF00FFFFFF0084848400008400008484
                        8400FFFFFF00FFFFFF0084848400FFFFFF000000000000000000000000000000
                        00000000000084848400FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
                        FF00FFFFFF00FFFFFF0084848400000000000000000000000000000000000000
                        0000000000008484840084848400848484008484840084848400848484008484
                        8400848484008484840084848400000000000000000000000000}
                    end
                  end
                  object Panel1: TPanel
                    Left = 0
                    Top = 159
                    Width = 989
                    Height = 21
                    Align = alBottom
                    Caption = 'Hist'#243'rico VMC'
                    TabOrder = 14
                  end
                  object cxGroupBox4: TcxGroupBox
                    Left = 401
                    Top = 107
                    TabStop = True
                    Caption = 'VMC - Volume M'#233'dio de C'#243'pias (Mensal)'
                    Enabled = False
                    TabOrder = 7
                    Height = 64
                    Width = 288
                    object cxDBTextEdit2: TcxDBTextEdit
                      Left = 6
                      Top = 32
                      DataBinding.DataField = 'MEDIA_COPIAS'
                      DataBinding.DataSource = dsRegistroDet1
                      Enabled = False
                      TabOrder = 0
                      Width = 64
                    end
                    object cxLabel22: TcxLabel
                      Left = 5
                      Top = 16
                      Caption = 'VMC'
                      Transparent = True
                    end
                    object cxLabel23: TcxLabel
                      Left = 135
                      Top = 16
                      Caption = 'Tipo'
                      Transparent = True
                    end
                    object cxDBTextEdit3: TcxDBTextEdit
                      Left = 135
                      Top = 32
                      DataBinding.DataField = 'VMC_TIPO_UPD'
                      DataBinding.DataSource = dsRegistroDet1
                      Enabled = False
                      TabOrder = 3
                      Width = 64
                    end
                    object cxDBTextEdit4: TcxDBTextEdit
                      Left = 71
                      Top = 32
                      DataBinding.DataField = 'VMC_COD_UPD'
                      DataBinding.DataSource = dsRegistroDet1
                      Enabled = False
                      TabOrder = 4
                      Width = 64
                    end
                    object cxLabel24: TcxLabel
                      Left = 71
                      Top = 16
                      Caption = 'C'#243'digo'
                      Transparent = True
                    end
                    object cxDBDateEdit7: TcxDBDateEdit
                      Left = 200
                      Top = 32
                      DataBinding.DataField = 'VMC_DATA_UPD'
                      DataBinding.DataSource = dsRegistroDet1
                      Enabled = False
                      TabOrder = 6
                      Width = 81
                    end
                    object cxLabel25: TcxLabel
                      Left = 200
                      Top = 16
                      Caption = 'Data'
                      Transparent = True
                    end
                  end
                  object cxDBCheckBox2: TcxDBCheckBox
                    Left = 647
                    Top = 19
                    Caption = 'Ativo'
                    DataBinding.DataField = 'ATIVO'
                    DataBinding.DataSource = dsRegistroDet1
                    Properties.ValueChecked = 'S'
                    Properties.ValueUnchecked = 'N'
                    Style.TransparentBorder = True
                    TabOrder = 3
                    Transparent = True
                    Width = 58
                  end
                  object cxDBMemo1: TcxDBMemo
                    Left = 7
                    Top = 122
                    DataBinding.DataField = 'INFORMACOES_ITENS'
                    DataBinding.DataSource = dsRegistroDet1
                    TabOrder = 6
                    Height = 50
                    Width = 390
                  end
                  object cxLabel27: TcxLabel
                    Left = 8
                    Top = 105
                    Caption = 'Informa'#231#245'es'
                    Transparent = True
                  end
                end
              end
            end
            inherited tbsDetalhe2: TcxTabSheet
              TabVisible = False
              inherited PGCSub2: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub2: TcxTabSheet
                  inherited GridDet2: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
            inherited tbsDetalhe3: TcxTabSheet
              TabVisible = False
              inherited PGCSub3: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub3: TcxTabSheet
                  inherited GridDet3: TcxGrid
                    Width = 989
                    Height = 335
                  end
                end
              end
            end
            inherited tbsDetalhe4: TcxTabSheet
              TabVisible = False
              inherited PGCSub4: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub4: TcxTabSheet
                  inherited GridDet4: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
            inherited tbsDetalhe5: TcxTabSheet
              TabVisible = False
              inherited PGCSub5: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub5: TcxTabSheet
                  inherited GridDet5: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
            inherited tbsDetalhe6: TcxTabSheet
              TabVisible = False
              inherited PGCSub6: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub6: TcxTabSheet
                  inherited GridDet6: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
            inherited tbsDetalhe7: TcxTabSheet
              TabVisible = False
              inherited PGCSub7: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub7: TcxTabSheet
                  inherited GridDet7: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
            inherited tbsDetalhe8: TcxTabSheet
              TabVisible = False
              inherited PGCSub8: TcxPageControl
                Width = 997
                Height = 390
                ClientRectBottom = 386
                ClientRectRight = 993
                inherited tbsListaSub8: TcxTabSheet
                  inherited GridDet8: TcxGrid
                    Width = 907
                    Height = 227
                  end
                end
              end
            end
          end
        end
        inherited pnlMaster: TPanel
          Width = 1005
          Height = 150
          inherited PgcMaster: TcxPageControl
            Width = 1005
            Height = 150
            ClientRectBottom = 146
            ClientRectRight = 1001
            inherited tbsMaster1: TcxTabSheet
              Caption = 'Geral'
              object DBText1: TDBText [0]
                Left = 767
                Top = 65
                Width = 236
                Height = 13
                DataField = 'RESPOSTA'
                DataSource = dsRegistro
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -11
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                Transparent = True
                WordWrap = True
              end
              inherited edtCodigo: TcxDBTextEdit
                TabOrder = 0
              end
              object cxDBLookupComboBox1: TcxDBLookupComboBox
                Left = 74
                Top = 16
                DataBinding.DataField = 'COD_CLIENTE'
                DataBinding.DataSource = dsRegistro
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME_RAZAO'
                  end
                  item
                    FieldName = 'Codigo'
                  end>
                Properties.ListSource = dsCliente
                TabOrder = 1
                Width = 432
              end
              object cxLabel10: TcxLabel
                Left = 74
                Top = 0
                Caption = 'Cliente'
                Transparent = True
              end
              object aTfrmCadTipoContrato: TcxDBLookupComboBox
                Left = 532
                Top = 16
                DataBinding.DataField = 'COD_CONTRATO'
                DataBinding.DataSource = dsRegistro
                Properties.KeyFieldNames = 'CODIGO'
                Properties.ListColumns = <
                  item
                    FieldName = 'NOME'
                  end>
                Properties.ListSource = dsTipoContrato
                TabOrder = 2
                Width = 210
              end
              object cxLabel12: TcxLabel
                Left = 532
                Top = 0
                Caption = 'Tipo Contrato'
                Transparent = True
              end
              object cxDBTextEdit1: TcxDBTextEdit
                Left = 767
                Top = 16
                DataBinding.DataField = 'NUM_CONTRATO'
                DataBinding.DataSource = dsRegistro
                Properties.CharCase = ecUpperCase
                TabOrder = 3
                Width = 122
              end
              object cxLabel13: TcxLabel
                Left = 767
                Top = 0
                Caption = 'N'#186' Contrato'
                Transparent = True
              end
              object btnTipoContrato: TcxButton
                Left = 742
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 11
                TabStop = False
                OnClick = btnTipoContratoClick
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
              object cxButton1: TcxButton
                Left = 507
                Top = 15
                Width = 23
                Height = 22
                TabOrder = 12
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
              end
              object cxGroupBox2: TcxGroupBox
                Left = 9
                Top = 41
                TabStop = True
                Caption = 'Per'#237'odo de Vig'#234'ncia'
                TabOrder = 4
                Height = 75
                Width = 277
                object edtDtInicio: TcxDBDateEdit
                  Left = 8
                  Top = 32
                  DataBinding.DataField = 'DT_INICIO'
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
                object cxLabel14: TcxLabel
                  Left = 8
                  Top = 16
                  Caption = 'Dt. Inicio'
                  Transparent = True
                end
                object edtDtFinal: TcxDBDateEdit
                  Left = 96
                  Top = 32
                  DataBinding.DataField = 'DT_FIM'
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
                  Width = 83
                end
                object Label2: TcxLabel
                  Left = 96
                  Top = 16
                  Caption = 'Dt. T'#233'rmino'
                  ParentFont = False
                  Transparent = True
                end
                object cxDBDateEdit1: TcxDBDateEdit
                  Left = 184
                  Top = 32
                  DataBinding.DataField = 'DATA'
                  DataBinding.DataSource = dsRegistro
                  Enabled = False
                  TabOrder = 4
                  Width = 81
                end
                object cxLabel11: TcxLabel
                  Left = 184
                  Top = 16
                  Caption = 'Dt. Cadastro'
                  Transparent = True
                end
              end
              object cxDBCheckBox1: TcxDBCheckBox
                Left = 767
                Top = 44
                Caption = 'Ativo'
                DataBinding.DataField = 'ATIVO'
                DataBinding.DataSource = dsRegistro
                Properties.ValueChecked = 'S'
                Properties.ValueUnchecked = 'N'
                Style.TransparentBorder = True
                TabOrder = 6
                Transparent = True
                Width = 58
              end
              object cxDBMemo2: TcxDBMemo
                Left = 291
                Top = 57
                DataBinding.DataField = 'INFORMACOES'
                DataBinding.DataSource = dsRegistro
                TabOrder = 5
                Height = 60
                Width = 474
              end
              object cxLabel26: TcxLabel
                Left = 290
                Top = 40
                Caption = 'Observa'#231#245'es'
                Transparent = True
              end
            end
          end
        end
      end
    end
  end
  inherited dtEdit: TIBDataSet
    OnNewRecord = dtEditNewRecord
    DeleteSQL.Strings = (
      'delete from ofc_contratos'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_contratos'
      
        '  (ATIVO, CNPJ, COD_CLIENTE, COD_CONTRATO, CODIGO, DATA, DIA_BAS' +
        'E, DT_FIM, '
      
        '   DT_INICIO, FRANQUIA_COPIAS, GERA_FATURAMENTO, GERA_LEITURA, G' +
        'ERA_MENSALIDADE, '
      
        '   INFORMACOES, NUM_CONTRATO, VALOR_CONTRATO, VALOR_COPIA_EXCEDE' +
        'NTE)'
      'values'
      
        '  (:ATIVO, :CNPJ, :COD_CLIENTE, :COD_CONTRATO, :CODIGO, :DATA, :' +
        'DIA_BASE, '
      
        '   :DT_FIM, :DT_INICIO, :FRANQUIA_COPIAS, :GERA_FATURAMENTO, :GE' +
        'RA_LEITURA, '
      
        '   :GERA_MENSALIDADE, :INFORMACOES, :NUM_CONTRATO, :VALOR_CONTRA' +
        'TO, :VALOR_COPIA_EXCEDENTE)')
    RefreshSQL.Strings = (
      'Select *'
      'from ofc_contratos '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '    CODIGO,'
      '    COD_CLIENTE,'
      '    COD_CONTRATO ,'
      '    NUM_CONTRATO,'
      '    DT_INICIO,'
      '    DT_FIM,'
      '    ATIVO,'
      '    INFORMACOES,'
      '    VALOR_CONTRATO,'
      '    FRANQUIA_COPIAS,'
      '    VALOR_COPIA_EXCEDENTE,'
      '    DATA,'
      '    GERA_FATURAMENTO,'
      '    GERA_LEITURA,'
      '    DIA_BASE,'
      '    GERA_MENSALIDADE,'
      
        ' (select * from PCD_VERIF_CLI_GERA_LEITURA(cp.cnpj,cp.cod_client' +
        'e)) resposta '
      'from ofc_contratos cp'
      'where cp.cnpj = :cnpj and cp.CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update ofc_contratos'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  COD_CLIENTE = :COD_CLIENTE,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DIA_BASE = :DIA_BASE,'
      '  DT_FIM = :DT_FIM,'
      '  DT_INICIO = :DT_INICIO,'
      '  FRANQUIA_COPIAS = :FRANQUIA_COPIAS,'
      '  GERA_FATURAMENTO = :GERA_FATURAMENTO,'
      '  GERA_LEITURA = :GERA_LEITURA,'
      '  GERA_MENSALIDADE = :GERA_MENSALIDADE,'
      '  INFORMACOES = :INFORMACOES,'
      '  NUM_CONTRATO = :NUM_CONTRATO,'
      '  VALOR_CONTRATO = :VALOR_CONTRATO,'
      '  VALOR_COPIA_EXCEDENTE = :VALOR_COPIA_EXCEDENTE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_CONTRATOS_ID'
    GeneratorField.ApplyEvent = gamOnPost
    object dtEditCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
    object dtEditCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object dtEditNUM_CONTRATO: TIBStringField
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtEditDT_INICIO: TDateTimeField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_CONTRATOS"."DT_INICIO"'
    end
    object dtEditDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object dtEditATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditINFORMACOES: TMemoField
      FieldName = 'INFORMACOES'
      Origin = '"OFC_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditVALOR_CONTRATO: TFloatField
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtEditFRANQUIA_COPIAS: TIntegerField
      FieldName = 'FRANQUIA_COPIAS'
      Origin = '"OFC_CONTRATOS"."FRANQUIA_COPIAS"'
    end
    object dtEditVALOR_COPIA_EXCEDENTE: TFloatField
      FieldName = 'VALOR_COPIA_EXCEDENTE'
      Origin = '"OFC_CONTRATOS"."VALOR_COPIA_EXCEDENTE"'
    end
    object dtEditDATA: TDateField
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS"."DATA"'
    end
    object dtEditGERA_FATURAMENTO: TIBStringField
      FieldName = 'GERA_FATURAMENTO'
      Origin = '"OFC_CONTRATOS"."GERA_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object dtEditGERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_CONTRATOS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtEditDIA_BASE: TSmallintField
      FieldName = 'DIA_BASE'
      Origin = '"OFC_CONTRATOS"."DIA_BASE"'
    end
    object dtEditGERA_MENSALIDADE: TIBStringField
      FieldName = 'GERA_MENSALIDADE'
      Origin = '"OFC_CONTRATOS"."GERA_MENSALIDADE"'
      FixedChar = True
      Size = 1
    end
    object dtEditRESPOSTA: TIBStringField
      FieldName = 'RESPOSTA'
      ProviderFlags = []
      Size = 100
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
      'select cp.CNPJ,'
      '    cp.CODIGO,'
      '    cp.COD_CLIENTE,'
      '    cp.COD_CONTRATO ,'
      '    cp.NUM_CONTRATO,'
      '    cp.DT_INICIO,'
      '    cp.DT_FIM,'
      '    cp.ATIVO,'
      '    cp.INFORMACOES,'
      '    cp.VALOR_CONTRATO,'
      '    cp.DATA,'
      '    cp.DIA_BASE,'
      '  '
      '    psa.nome_razao,'
      '    psa.cpf_cgc,'
      '    tp.nome nome_contrato'
      'from ofc_contratos cp'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = cp.cnpj and psa.cod' +
        'igo = cp.cod_cliente)'
      
        'left join GLO_TIPO_CONTRATO tp on (tp.cnpj = cp.cnpj and tp.codi' +
        'go = cp.cod_contrato)'
      'where cp.cnpj = :cnpj'
      '')
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListCOD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
    object dtListCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object dtListNUM_CONTRATO: TIBStringField
      DisplayLabel = 'N'#250'mero do Contrato'
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object dtListDT_INICIO: TDateTimeField
      DisplayLabel = 'Data Inicial'
      FieldName = 'DT_INICIO'
      Origin = '"OFC_CONTRATOS"."DT_INICIO"'
    end
    object dtListDT_FIM: TDateTimeField
      DisplayLabel = 'Data Final'
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object dtListATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListINFORMACOES: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_CONTRATOS"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListVALOR_CONTRATO: TFloatField
      DisplayLabel = 'Valor do Contrato'
      FieldName = 'VALOR_CONTRATO'
      Origin = '"OFC_CONTRATOS"."VALOR_CONTRATO"'
    end
    object dtListDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS"."DATA"'
    end
    object dtListDIA_BASE: TSmallintField
      DisplayLabel = 'Dia Base'
      FieldName = 'DIA_BASE'
      Origin = '"OFC_CONTRATOS"."DIA_BASE"'
    end
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
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
    object dtListNOME_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOME_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
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
        Component = TVDet1ATIVO
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
        Component = TVDet1COD_PRODUTO
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
        Component = TVDet1CONTRATO
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
        Component = TVDet1DATA
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
        Component = TVDet1DIAS_RECHAMADO
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
        Component = TVDet1DT_ADICAO
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
        Component = TVDet1DT_RETIRADA
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
        Component = TVDet1DT_VIGENCIA_FINAL
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
        Component = TVDet1DT_VIGENCIA_INICIAL
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
        Component = TVDet1INFORMACOES_ITENS
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
        Component = TVDet1MEDIA_COPIAS
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
        Component = TVDet1MODELO_EQUIPAMENTO
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
        Component = TVDet1PRODUTO
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
        Component = TVDet1QTDE_COPIAS_PREVENTIVA
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
        Component = TVDet1SERIE
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
        Component = TVDet1TEMPO_RESPOSTA
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
        Component = TVDet1TIPO_PRODUTO
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
        Component = TVDet1VALOR
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
        Component = TVDet1VMC_COD_UPD
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
        Component = TVDet1VMC_DATA_UPD
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
        Component = TVDet1VMC_TIPO_UPD
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
        Component = TVHistorico
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
        Component = TVHistoricoCODIGO
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
        Component = TVHistoricoCONT_LEITURA
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
        Component = TVHistoricoDATA
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
        Component = TVHistoricoSALDO_COPIAS
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
        Component = TVHistoricoSALDO_DIAS
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
        Component = TVRegistroCOD_CONTRATO
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
        Component = TVRegistroCPF_CGC
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
        Component = TVRegistroDATA
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
        Component = TVRegistroDIA_BASE
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
        Component = TVRegistroDT_FIM
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
        Component = TVRegistroDT_INICIO
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
        Component = TVRegistroINFORMACOES
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
        Component = TVRegistroNOME_CONTRATO
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
        Component = TVRegistroNOME_RAZAO
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
        Component = TVRegistroNUM_CONTRATO
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
        Component = TVRegistroVALOR_CONTRATO
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
      'select cti.*, prd.nome produto, mdl.nome modelo_equipamento,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      'end tipo_produto, prd.serie, ct.cod_cliente'
      'from  ofc_contratos_itens cti'
      
        'inner join ofc_contratos ct on (ct.cnpj = cti.cnpj and ct.codigo' +
        ' = cti.contrato)'
      
        'inner join est_produtos prd on (prd.codigo = cti.cod_produto and' +
        ' cti.cnpj = prd.cnpj)'
      
        'left join glo_modelo_propriedade mdl on (prd.modelo = mdl.codigo' +
        ' and mdl.cnpj = prd.cnpj)'
      'where cti.contrato = :codigo and cti.cnpj = :cnpj')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object dtListDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListDet1CODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListDet1COD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      FieldName = 'COD_PRODUTO'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_PRODUTO"'
      Size = 15
    end
    object dtListDet1CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CONTRATO'
      Origin = '"OFC_CONTRATOS_ITENS"."CONTRATO"'
    end
    object dtListDet1DT_ADICAO: TDateTimeField
      DisplayLabel = 'Dt. Adi'#231#227'o'
      FieldName = 'DT_ADICAO'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_ADICAO"'
    end
    object dtListDet1DT_RETIRADA: TDateField
      DisplayLabel = 'Dt. Retirada'
      FieldName = 'DT_RETIRADA'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_RETIRADA"'
    end
    object dtListDet1DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS_ITENS"."DATA"'
    end
    object dtListDet1ATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtListDet1VALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_CONTRATOS_ITENS"."VALOR"'
    end
    object dtListDet1QTDE_COPIAS_PREVENTIVA: TIntegerField
      DisplayLabel = 'Preventiva'
      FieldName = 'QTDE_COPIAS_PREVENTIVA'
      Origin = '"OFC_CONTRATOS_ITENS"."QTDE_COPIAS_PREVENTIVA"'
    end
    object dtListDet1DIAS_RECHAMADO: TIntegerField
      DisplayLabel = 'Rechamado'
      FieldName = 'DIAS_RECHAMADO'
      Origin = '"OFC_CONTRATOS_ITENS"."DIAS_RECHAMADO"'
    end
    object dtListDet1MEDIA_COPIAS: TIntegerField
      DisplayLabel = 'Qde VMC'
      FieldName = 'MEDIA_COPIAS'
      Origin = '"OFC_CONTRATOS_ITENS"."MEDIA_COPIAS"'
    end
    object dtListDet1TEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'Tempo Resposta'
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_CONTRATOS_ITENS"."TEMPO_RESPOSTA"'
    end
    object dtListDet1INFORMACOES_ITENS: TMemoField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtListDet1COD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_INDEXADOR"'
    end
    object dtListDet1DT_VIGENCIA_INICIAL: TDateField
      DisplayLabel = 'Dt. Vig'#234'ncia Inicial'
      FieldName = 'DT_VIGENCIA_INICIAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_INICIAL"'
    end
    object dtListDet1DT_VIGENCIA_FINAL: TDateField
      DisplayLabel = 'Dt. Vig'#234'ncia Final'
      FieldName = 'DT_VIGENCIA_FINAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_FINAL"'
    end
    object dtListDet1GERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_CONTRATOS_ITENS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtListDet1DECONTINUADO: TIBStringField
      DisplayLabel = 'Descontinuado'
      FieldName = 'DECONTINUADO'
      Origin = '"OFC_CONTRATOS_ITENS"."DECONTINUADO"'
      FixedChar = True
      Size = 1
    end
    object dtListDet1VMC_DATA_UPD: TDateTimeField
      DisplayLabel = 'Dt. Atualiza'#231#227'o'
      FieldName = 'VMC_DATA_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_DATA_UPD"'
    end
    object dtListDet1VMC_TIPO_UPD: TIBStringField
      DisplayLabel = 'Tipo Atualiza'#231#227'o'
      FieldName = 'VMC_TIPO_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_TIPO_UPD"'
      Size = 10
    end
    object dtListDet1VMC_COD_UPD: TIntegerField
      DisplayLabel = 'C'#243'd. Atualiza'#231#227'o'
      FieldName = 'VMC_COD_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_COD_UPD"'
    end
    object dtListDet1PRODUTO: TIBStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object dtListDet1MODELO_EQUIPAMENTO: TIBStringField
      DisplayLabel = 'Modelo '
      FieldName = 'MODELO_EQUIPAMENTO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object dtListDet1TIPO_PRODUTO: TIBStringField
      DisplayLabel = 'Tipo Item'
      FieldName = 'TIPO_PRODUTO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object dtListDet1SERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object dtListDet1COD_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
  end
  inherited dtEditDet1: TIBDataSet
    DeleteSQL.Strings = (
      'delete from ofc_contratos_itens'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_contratos_itens'
      
        '  (ATIVO, CNPJ, COD_INDEXADOR, COD_PRODUTO, CODIGO, CONTRATO, DA' +
        'TA, DECONTINUADO, '
      
        '   DIAS_RECHAMADO, DT_ADICAO, DT_RETIRADA, DT_VIGENCIA_FINAL, DT' +
        '_VIGENCIA_INICIAL, '
      
        '   GERA_LEITURA, INFORMACOES_ITENS, MEDIA_COPIAS, QTDE_COPIAS_PR' +
        'EVENTIVA, '
      
        '   TEMPO_RESPOSTA, VALOR, VMC_COD_UPD, VMC_DATA_UPD, VMC_TIPO_UP' +
        'D)'
      'values'
      
        '  (:ATIVO, :CNPJ, :COD_INDEXADOR, :COD_PRODUTO, :CODIGO, :CONTRA' +
        'TO, :DATA, '
      
        '   :DECONTINUADO, :DIAS_RECHAMADO, :DT_ADICAO, :DT_RETIRADA, :DT' +
        '_VIGENCIA_FINAL, '
      
        '   :DT_VIGENCIA_INICIAL, :GERA_LEITURA, :INFORMACOES_ITENS, :MED' +
        'IA_COPIAS, '
      
        '   :QTDE_COPIAS_PREVENTIVA, :TEMPO_RESPOSTA, :VALOR, :VMC_COD_UP' +
        'D, :VMC_DATA_UPD, '
      '   :VMC_TIPO_UPD)')
    RefreshSQL.Strings = (
      'Select * '
      'from ofc_contratos_itens '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from  ofc_contratos_itens cti'
      'where cti.codigo = :codigo and cti.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update ofc_contratos_itens'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  CODIGO = :CODIGO,'
      '  CONTRATO = :CONTRATO,'
      '  DATA = :DATA,'
      '  DECONTINUADO = :DECONTINUADO,'
      '  DIAS_RECHAMADO = :DIAS_RECHAMADO,'
      '  DT_ADICAO = :DT_ADICAO,'
      '  DT_RETIRADA = :DT_RETIRADA,'
      '  DT_VIGENCIA_FINAL = :DT_VIGENCIA_FINAL,'
      '  DT_VIGENCIA_INICIAL = :DT_VIGENCIA_INICIAL,'
      '  GERA_LEITURA = :GERA_LEITURA,'
      '  INFORMACOES_ITENS = :INFORMACOES_ITENS,'
      '  MEDIA_COPIAS = :MEDIA_COPIAS,'
      '  QTDE_COPIAS_PREVENTIVA = :QTDE_COPIAS_PREVENTIVA,'
      '  TEMPO_RESPOSTA = :TEMPO_RESPOSTA,'
      '  VALOR = :VALOR,'
      '  VMC_COD_UPD = :VMC_COD_UPD,'
      '  VMC_DATA_UPD = :VMC_DATA_UPD,'
      '  VMC_TIPO_UPD = :VMC_TIPO_UPD'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_CONTRATOS_ITENS_ID'
    object dtEditDet1CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_CONTRATOS_ITENS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtEditDet1CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtEditDet1COD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_PRODUTO"'
      Size = 15
    end
    object dtEditDet1CONTRATO: TIntegerField
      FieldName = 'CONTRATO'
      Origin = '"OFC_CONTRATOS_ITENS"."CONTRATO"'
    end
    object dtEditDet1DT_ADICAO: TDateTimeField
      FieldName = 'DT_ADICAO'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_ADICAO"'
    end
    object dtEditDet1DT_RETIRADA: TDateField
      FieldName = 'DT_RETIRADA'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_RETIRADA"'
    end
    object dtEditDet1DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"OFC_CONTRATOS_ITENS"."DATA"'
    end
    object dtEditDet1ATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1VALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"OFC_CONTRATOS_ITENS"."VALOR"'
    end
    object dtEditDet1QTDE_COPIAS_PREVENTIVA: TIntegerField
      FieldName = 'QTDE_COPIAS_PREVENTIVA'
      Origin = '"OFC_CONTRATOS_ITENS"."QTDE_COPIAS_PREVENTIVA"'
    end
    object dtEditDet1DIAS_RECHAMADO: TIntegerField
      FieldName = 'DIAS_RECHAMADO'
      Origin = '"OFC_CONTRATOS_ITENS"."DIAS_RECHAMADO"'
    end
    object dtEditDet1MEDIA_COPIAS: TIntegerField
      FieldName = 'MEDIA_COPIAS'
      Origin = '"OFC_CONTRATOS_ITENS"."MEDIA_COPIAS"'
    end
    object dtEditDet1TEMPO_RESPOSTA: TIntegerField
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_CONTRATOS_ITENS"."TEMPO_RESPOSTA"'
    end
    object dtEditDet1INFORMACOES_ITENS: TMemoField
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object dtEditDet1COD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"OFC_CONTRATOS_ITENS"."COD_INDEXADOR"'
    end
    object dtEditDet1DT_VIGENCIA_INICIAL: TDateField
      FieldName = 'DT_VIGENCIA_INICIAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_INICIAL"'
    end
    object dtEditDet1DT_VIGENCIA_FINAL: TDateField
      FieldName = 'DT_VIGENCIA_FINAL'
      Origin = '"OFC_CONTRATOS_ITENS"."DT_VIGENCIA_FINAL"'
    end
    object dtEditDet1GERA_LEITURA: TIBStringField
      FieldName = 'GERA_LEITURA'
      Origin = '"OFC_CONTRATOS_ITENS"."GERA_LEITURA"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1DECONTINUADO: TIBStringField
      FieldName = 'DECONTINUADO'
      Origin = '"OFC_CONTRATOS_ITENS"."DECONTINUADO"'
      FixedChar = True
      Size = 1
    end
    object dtEditDet1VMC_DATA_UPD: TDateTimeField
      FieldName = 'VMC_DATA_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_DATA_UPD"'
    end
    object dtEditDet1VMC_TIPO_UPD: TIBStringField
      FieldName = 'VMC_TIPO_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_TIPO_UPD"'
      Size = 10
    end
    object dtEditDet1VMC_COD_UPD: TIntegerField
      FieldName = 'VMC_COD_UPD'
      Origin = '"OFC_CONTRATOS_ITENS"."VMC_COD_UPD"'
    end
  end
  inherited mtbFiltro: TdxMemData
    Top = 28
  end
  inherited dsFiltro: TDataSource
    Top = 28
  end
  object QryCliente: TIBQuery
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
    Left = 841
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryClienteTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
    object QryClienteEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryClienteCIDADE: TIBStringField
      FieldName = 'CIDADE'
      ProviderFlags = []
      Size = 55
    end
  end
  object dsCliente: TDataSource
    DataSet = QryCliente
    Left = 871
    Top = 92
  end
  object QryTipoContrato: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      'select * from glo_tipo_contrato ct'
      'where ct.cnpj = :cnpj'
      'order by nome')
    Left = 841
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryTipoContratoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPO_CONTRATO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryTipoContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TIPO_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryTipoContratoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
  end
  object dsTipoContrato: TDataSource
    DataSet = QryTipoContrato
    Left = 871
    Top = 140
  end
  object dsHistorico: TDataSource
    AutoEdit = False
    DataSet = QryHistorico
    Left = 611
    Top = 435
  end
  object QryHistorico: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPesquisaDet1
    SQL.Strings = (
      'select  * from PCD_LST_HISTORICO_VMC(:cnpj,:VMC_TIPO_UPD'
      ',:codigo,'
      ':COD_CLIENTE,:COD_PRODUTO)')
    Left = 641
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VMC_TIPO_UPD'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PRODUTO'
        ParamType = ptUnknown
      end>
    object QryHistoricoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_LST_HISTORICO_VMC"."CODIGO"'
    end
    object QryHistoricoCONT_LEITURA: TIntegerField
      DisplayLabel = 'Cont. Leitura / Cont. Total OS'
      FieldName = 'CONT_LEITURA'
      Origin = '"PCD_LST_HISTORICO_VMC"."CONT_LEITURA"'
    end
    object QryHistoricoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PCD_LST_HISTORICO_VMC"."DATA"'
    end
    object QryHistoricoSALDO_DIAS: TIntegerField
      DisplayLabel = 'Saldo Dias'
      FieldName = 'SALDO_DIAS'
      Origin = '"PCD_LST_HISTORICO_VMC"."SALDO_DIAS"'
    end
    object QryHistoricoSALDO_COPIAS: TIntegerField
      DisplayLabel = 'Saldo Copias'
      FieldName = 'SALDO_COPIAS'
      Origin = '"PCD_LST_HISTORICO_VMC"."SALDO_COPIAS"'
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = GridHistorico
    PopupMenus = <>
    Left = 775
    Top = 437
  end
  object dsProduto: TDataSource
    DataSet = QryProduto
    Left = 611
    Top = 405
  end
  object QryProduto: TIBQuery
    Tag = 4
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = dtListBeforeOpen
    SQL.Strings = (
      
        'select p.codigo, p.serie, (coalesce(p.serie,'#39#39')||'#39' - '#39'||p.nome) ' +
        'nome from est_produtos p'
      'where p.cnpj = :cnpj and coalesce(p.ativo,'#39'N'#39') = '#39'S'#39)
    Left = 642
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryProdutoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object QryProdutoSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryProdutoNOME: TIBStringField
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 81
    end
  end
end
