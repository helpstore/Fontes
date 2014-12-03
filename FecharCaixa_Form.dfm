object FrmFecharCaixas: TFrmFecharCaixas
  Left = 190
  Top = 131
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fechamento de Caixa'
  ClientHeight = 549
  ClientWidth = 792
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 792
    Height = 549
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object Bevel2: TBevel
      Left = 16
      Top = 48
      Width = 161
      Height = 88
      Shape = bsFrame
    end
    object Bevel1: TBevel
      Left = 2
      Top = 515
      Width = 788
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 173
      Height = 6
      Shape = bsTopLine
    end
    object Bevel3: TBevel
      Left = 17
      Top = 146
      Width = 161
      Height = 206
      Shape = bsFrame
    end
    object Bevel5: TBevel
      Left = 16
      Top = 358
      Width = 769
      Height = 156
      Shape = bsFrame
    end
    object Label6: TcxLabel
      Left = 24
      Top = 39
      Caption = 'Abertura do Caixa'
      ParentFont = False
    end
    object Label1: TcxLabel
      Left = 234
      Top = 9
      Caption = 'Data'
      ParentFont = False
    end
    object Label2: TcxLabel
      Left = 349
      Top = 10
      Caption = 'Nome'
      ParentFont = False
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Fechamento de Caixas'
      ParentFont = False
    end
    object Label3: TcxLabel
      Left = 48
      Top = 60
      Caption = 'Dinheiro'
      ParentFont = False
    end
    object Label4: TcxLabel
      Left = 57
      Top = 84
      Caption = 'Ticket'
      ParentFont = False
    end
    object Label5: TcxLabel
      Left = 21
      Top = 109
      Caption = 'Saldo Anterior'
      ParentFont = False
    end
    object Label7: TcxLabel
      Left = 24
      Top = 138
      Caption = 'Vendas no Caixa'
      ParentFont = False
    end
    object Label9: TcxLabel
      Left = 47
      Top = 156
      Caption = 'Dinheiro'
      ParentFont = False
    end
    object Label10: TcxLabel
      Left = 49
      Top = 180
      Caption = 'Cheque'
      ParentFont = False
    end
    object Label11: TcxLabel
      Left = 54
      Top = 204
      Caption = 'Cart'#227'o'
      ParentFont = False
    end
    object Label12: TcxLabel
      Left = 55
      Top = 228
      Caption = 'Ticket'
      ParentFont = False
    end
    object Label14: TcxLabel
      Left = 58
      Top = 252
      Caption = 'Prazo'
      ParentFont = False
    end
    object Label15: TcxLabel
      Left = 61
      Top = 324
      Caption = 'Total'
      ParentFont = False
    end
    object Label13: TcxLabel
      Left = 24
      Top = 353
      Caption = 'Entradas'
      ParentFont = False
    end
    object Label20: TcxLabel
      Left = 640
      Top = 5
      Caption = 'Resultado'
      ParentFont = False
    end
    object Label22: TcxLabel
      Left = 57
      Top = 276
      Caption = 'Tr'#244'co'
      ParentFont = False
    end
    object Label23: TcxLabel
      Left = 62
      Top = 300
      Caption = 'Vista'
      ParentFont = False
    end
    object Label26: TcxLabel
      Left = 43
      Top = 395
      Caption = 'Produtos'
      ParentFont = False
    end
    object Label27: TcxLabel
      Left = 51
      Top = 419
      Caption = 'Rectos'
      ParentFont = False
    end
    object Label28: TcxLabel
      Left = 43
      Top = 443
      Caption = 'Entradas'
      ParentFont = False
    end
    object Label30: TcxLabel
      Left = 31
      Top = 467
      Caption = 'Acr'#233'scimos'
      ParentFont = False
    end
    object Label31: TcxLabel
      Left = 169
      Top = 369
      Caption = 'Juros'
      ParentFont = False
    end
    object Label32: TcxLabel
      Left = 27
      Top = 371
      Caption = 'Tr'#244'co Inicial'
      ParentFont = False
    end
    object Label33: TcxLabel
      Left = 285
      Top = 353
      Caption = 'Sa'#237'das'
      ParentFont = False
    end
    object Label34: TcxLabel
      Left = 347
      Top = 370
      Caption = 'Dinheiro'
      ParentFont = False
    end
    object Label35: TcxLabel
      Left = 348
      Top = 396
      Caption = 'Moedas'
      ParentFont = False
    end
    object Label36: TcxLabel
      Left = 356
      Top = 420
      Caption = 'Ticket'
      ParentFont = False
    end
    object Label37: TcxLabel
      Left = 309
      Top = 444
      Caption = 'Cheques a Vista'
      ParentFont = False
    end
    object Label38: TcxLabel
      Left = 314
      Top = 468
      Caption = 'Cheques Prazo'
      ParentFont = False
    end
    object Label39: TcxLabel
      Left = 298
      Top = 492
      Caption = 'Troco Cx Seguinte'
      ParentFont = False
    end
    object Label40: TcxLabel
      Left = 529
      Top = 369
      Caption = 'Cart'#227'o'
      ParentFont = False
    end
    object Label41: TcxLabel
      Left = 654
      Top = 368
      Caption = 'Notas'
      ParentFont = False
    end
    object Label42: TcxLabel
      Left = 526
      Top = 393
      Caption = 'Sa'#237'das'
      ParentFont = False
    end
    object Label44: TcxLabel
      Left = 509
      Top = 441
      Caption = 'Descontos'
      ParentFont = False
    end
    object Label45: TcxLabel
      Left = 493
      Top = 465
      Caption = 'Tr'#244'co Vendas'
      ParentFont = False
    end
    object Label16: TcxLabel
      Left = 499
      Top = 489
      Caption = 'Notas Pagas'
      ParentFont = False
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 517
      Width = 788
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 9
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 788
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 788
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pc: TcxPageControl
      Left = 178
      Top = 44
      Width = 605
      Height = 309
      ActivePage = tbsImpressoes
      TabOrder = 6
      OnChange = pcChange
      ClientRectBottom = 305
      ClientRectLeft = 4
      ClientRectRight = 601
      ClientRectTop = 27
      object TabVendas: TcxTabSheet
        Caption = 'Vendas '
        object DBGrid3: TDBGrid
          Left = 0
          Top = 1
          Width = 583
          Height = 284
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsVendas
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CODIGO'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESSOA_FJ'
              Width = 32
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'NOME'
              Width = 248
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Width = 62
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DESC_ACRES'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Liquido'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'HISTORICO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'NATUREZA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NUM_NF'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'NUM_CUPOM'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO_VENDA'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DINHEIRO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHEQUE'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CARTAO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TICKET'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'TROCO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APRAZO'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'AVISTA'
              Visible = True
            end>
        end
      end
      object TABRECEBIDAS: TcxTabSheet
        Caption = 'Recebidas'
        object DBGrid2: TDBGrid
          Left = -8
          Top = 1
          Width = 583
          Height = 284
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsRecebidas
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CODIGO'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESSOA_FJ'
              Width = 40
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'NOME'
              Width = 215
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_BAIXA'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DT_BAIXA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VENCTO'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DT_LANCTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCTO'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'PARCELA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO_BX'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'VALOR'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTOS'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'JUROS_REC'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTOS_REC'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CPF_CGC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FATURA'
              Title.Caption = 'Fatura'
              Visible = True
            end>
        end
      end
      object TABPAGAS: TcxTabSheet
        Caption = ' Pagas '
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 597
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 1
          Width = 583
          Height = 284
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsPagas
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CODIGO'
              Width = 34
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PESSOA_FJ'
              Width = 40
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'NOME'
              Width = 215
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_BAIXA'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DT_BAIXA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DT_VENCTO'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DT_LANCTO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DOCTO'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'PARCELA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO_BX'
              Width = 64
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'VALOR'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTOS'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'JUROS_PAG'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCONTOS_PAG'
              Width = 70
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CPF_CGC'
              Width = 64
              Visible = True
            end>
        end
      end
      object TABSAIDAS: TcxTabSheet
        Caption = 'Ent/Sai do Caixa'
        object DBGrid4: TDBGrid
          Left = 0
          Top = 1
          Width = 583
          Height = 284
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsMovimento
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 173
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DOCUMENTO'
              Width = 99
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'HISTORICO'
              Width = 228
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'VALOR'
              Visible = True
            end>
        end
      end
      object TABAGRUPADAS: TcxTabSheet
        Caption = 'Vendas Agrupadas/Trocas'
        object DBGrid5: TDBGrid
          Left = 0
          Top = 1
          Width = 583
          Height = 144
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsAgrupadas
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'VENDEDOR'
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Width = 138
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'AVISTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APRAZO'
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DESC_ACRES'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Width = 75
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'DINHEIRO'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHEQUE'
              Width = 75
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'CARTAO'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TICKET'
              Width = 75
              Visible = True
            end
            item
              Color = clMenu
              Expanded = False
              FieldName = 'TROCO'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Width = 75
              Visible = True
            end>
        end
        object GRIDTROCAS: TDBGrid
          Left = -2
          Top = 149
          Width = 583
          Height = 138
          TabStop = False
          BorderStyle = bsNone
          DataSource = DsTrocas
          Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'PESSOA_FJ'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CODIGO'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_RAZAO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME_VENDEDOR'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VLR_TOTAL_2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_ACRESC'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESC_ACRESC_2'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'FORMA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ENTRADA'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DINHEIRO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CHEQUE'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CARTAO'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TICKET'
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'AVISTA'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'APRAZO'
              Visible = True
            end>
        end
      end
      object tbsImpressoes: TcxTabSheet
        Caption = 'Impress'#245'es'
        object Bevel6: TBevel
          Left = 1
          Top = 8
          Width = 216
          Height = 278
          Shape = bsFrame
        end
        object Label8: TcxLabel
          Left = 8
          Top = 1
          Caption = 'Fun'#231#245'es'
          ParentFont = False
        end
        object Label21: TcxLabel
          Left = 224
          Top = 8
          Caption = 'Op'#231#245'es de Impress'#227'o'
          ParentFont = False
        end
        object Label17: TcxLabel
          Left = 234
          Top = 235
          Caption = 'Saldo Entradas'
          ParentFont = False
          Visible = False
        end
        object Label18: TcxLabel
          Left = 242
          Top = 211
          Caption = 'Saldo Sa'#237'das'
          ParentFont = False
          Visible = False
        end
        object Label24: TcxLabel
          Left = 447
          Top = 64
          Caption = 'Saldo Prazo'
          ParentFont = False
          Visible = False
        end
        object Label25: TcxLabel
          Left = 451
          Top = 40
          Caption = 'Saldo Vista'
          ParentFont = False
          Visible = False
        end
        object Label19: TcxLabel
          Left = 259
          Top = 259
          Caption = 'Diferen'#231'a'
          ParentFont = False
          Visible = False
        end
        object Label46: TcxLabel
          Left = 432
          Top = 16
          Caption = 'Cheques Prazo'
          ParentFont = False
          Visible = False
        end
        object Label47: TcxLabel
          Left = 408
          Top = 187
          Caption = 'Chq Conciliados Data'
          ParentFont = False
          Visible = False
        end
        object Label48: TcxLabel
          Left = 427
          Top = 211
          Caption = 'Contas Banc'#225'rias'
          ParentFont = False
          Visible = False
        end
        object Label49: TcxLabel
          Left = 432
          Top = 235
          Caption = 'Contas Receber'
          ParentFont = False
          Visible = False
        end
        object Label50: TcxLabel
          Left = 445
          Top = 259
          Caption = 'Contas Pagar'
          ParentFont = False
          Visible = False
        end
        object BtnFecharCaixa: TcxButton
          Left = 14
          Top = 256
          Width = 199
          Height = 25
          Cursor = crHandPoint
          Action = ActFecharCaixa
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Glyph.Data = {
            9E050000424D9E05000000000000360400002800000012000000120000000100
            0800000000006801000000000000000000000001000000000000000000009484
            7B00948C8C00A5948C00A5949400A59C9400B5A59400A5A59C00ADA59C00B5A5
            9C00A5A5A500B5ADA500BDADA500ADADAD00B5ADAD00B5B5AD00CEBDAD00D6BD
            AD00B5B5B500BDB5B500D6BDB500D6C6B500BDBDBD00C6BDBD00C6C6BD00D6C6
            BD00C6C6C600CEC6C600E7D6C600CECECE00DED6CE00E7D6CE00F7DECE00DED6
            D600E7DED600F7DED600F7E7D600DEDEDE00EFE7DE00F7E7DE00F7EFDE00E7E7
            E700F7EFE700FFF7EF00F7F7F700FFF7F700FFFFF700FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF001D1D1D1D1D1D
            1D1D1D1D1D1D1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
            00001D1D1D1D1B170B0301030B171B1D1D1D1D1D00001D1D1D1A0E0B191C201C
            100609181D1D1D1D00001D1D1A0E1E2A2727272423201008181D1D1D00001D1D
            12212B2A2A2A002A27242014091B1D1D00001D1A162D2D2D2D0000002A2A2420
            09171D1D00001D16252F2F2F00002F00002B2A27150B1D1D00001D0D2C2F2F00
            002F2F2F00002A2A1F051D1D00001D0A2F2F2F2F2F2F002F2F2D2B2A27021D1D
            00001D122C2F2F2F2F0000002F2E2D2B26071D1D00001D1A252F2F2F00002F00
            002F2D2D1E131D1D00001D1D1A2F2F00002F2F2F00002F2F161A1D1D00001D1D
            1A292F2F2F2F2F2F2F2F2F25161D1D1D00001D1D1D16292F2F2F2F2F2F2F2512
            1A1D1D1D00001D1D1D1D1A1D252C2F2C251A161D1D1D1D1D00001D1D1D1D1D1D
            1A120D121A1A1D1D1D1D1D1D00001D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D
            0000}
        end
        object BtnImprimeVendas: TcxButton
          Left = 11
          Top = 19
          Width = 199
          Height = 25
          Cursor = crHandPoint
          Action = ActListagem
          Caption = 'Listagem de Caixa (F5)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          Glyph.Data = {
            EE030000424DEE03000000000000360000002800000012000000110000000100
            180000000000B803000000000000000000000000000000000000BFBFBF000000
            000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000080808000000000000080808080808080808080808080
            8080808080808080808080808080808080808080808080000000000000808080
            0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
            000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
            FF000000000000000000000000000000000000000000000000FFFFFF000000BF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
            000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
            FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
            000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        end
        object RzBitBtn1: TcxButton
          Left = 11
          Top = 47
          Width = 199
          Height = 25
          Cursor = crHandPoint
          Action = ActResumo
          Caption = 'Resumo de Caixa ( F11 )'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Glyph.Data = {
            EE030000424DEE03000000000000360000002800000012000000110000000100
            180000000000B803000000000000000000000000000000000000BFBFBF000000
            000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
            0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
            C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
            C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF000000000080808000000000000080808080808080808080808080
            8080808080808080808080808080808080808080808080000000000000808080
            0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
            000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
            FF000000000000000000000000000000000000000000000000FFFFFF000000BF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
            000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
            FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
            BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
            0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
            000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
            BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
        end
        object dxDBEdit5: TcxDBTextEdit
          Left = 511
          Top = 15
          TabStop = False
          DataBinding.DataField = 'SALDO_CHEQUE'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 10
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object EdSaldoVista: TcxDBTextEdit
          Left = 511
          Top = 39
          TabStop = False
          DataBinding.DataField = 'SALDO_VISTA'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 8
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object EdSaldoPrazo: TcxDBTextEdit
          Left = 511
          Top = 63
          TabStop = False
          DataBinding.DataField = 'SALDO_PRAZO'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object EdSaidas: TcxDBTextEdit
          Left = 314
          Top = 210
          TabStop = False
          DataBinding.DataField = '_Saidas'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object EdEntradas: TcxDBTextEdit
          Left = 314
          Top = 234
          TabStop = False
          DataBinding.DataField = '_Entradas'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object EdDiferenca: TcxDBTextEdit
          Left = 314
          Top = 258
          TabStop = False
          DataBinding.DataField = '_Diferenca'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 9
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object CkImpRecAgrup: TcxCheckBox
          Left = 226
          Top = 26
          Caption = 'Imprimir Receber Agrupado Cliente'
          TabOrder = 3
          Width = 200
        end
        object ckdesdobramento: TcxCheckBox
          Left = 226
          Top = 47
          Caption = 'Imprime Desdobramento de Valores'
          TabOrder = 4
          Width = 200
        end
        object CKPRAZO: TcxCheckBox
          Left = 226
          Top = 69
          Caption = 'N'#227'o Imprimir Vendas a Prazo'
          TabOrder = 11
          Width = 200
        end
        object ckResumoGrafico: TcxCheckBox
          Left = 226
          Top = 91
          Caption = 'Resumo de Caixa (F11) Gr'#225'fico '
          TabOrder = 12
          Width = 200
        end
        object ckVdAgrupadaVend: TcxCheckBox
          Left = 226
          Top = 115
          Caption = 'Imprimir Vendas Agrupadas/Vendedor'
          TabOrder = 13
          Width = 200
        end
        object dxDBEdit6: TcxDBTextEdit
          Left = 519
          Top = 185
          TabStop = False
          DataBinding.DataField = 'SALDO_CHEQUE_CONC_DATA'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 26
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object dxDBEdit19: TcxDBTextEdit
          Left = 519
          Top = 210
          TabStop = False
          DataBinding.DataField = 'SALDO_CONTAS_BANCARIAS'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 27
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object dxDBEdit20: TcxDBTextEdit
          Left = 519
          Top = 234
          TabStop = False
          DataBinding.DataField = 'SALDO_RECEBER'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 28
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
        object dxDBEdit21: TcxDBTextEdit
          Left = 519
          Top = 257
          TabStop = False
          DataBinding.DataField = 'SALDO_PAGAR'
          DataBinding.DataSource = DataSource
          Enabled = False
          Properties.ReadOnly = True
          TabOrder = 29
          OnKeyDown = dxDBEdit1KeyDown
          Width = 76
        end
      end
      object dxTabSheet2: TcxTabSheet
        Caption = 'Acompanhamento'
      end
    end
    object dxDBEdit1: TcxDBTextEdit
      Left = 264
      Top = 8
      DataBinding.DataField = 'DATA'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 8
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object EdInicial: TcxDBTextEdit
      Left = 384
      Top = 8
      DataBinding.DataField = 'Nome'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 7
      OnKeyDown = dxDBEdit1KeyDown
      Width = 217
    end
    object dxDBEdit2: TcxDBTextEdit
      Left = 94
      Top = 58
      DataBinding.DataField = 'DINHEIRO'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 10
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit3: TcxDBTextEdit
      Left = 94
      Top = 82
      DataBinding.DataField = 'TICKET'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 11
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit4: TcxDBTextEdit
      Left = 94
      Top = 106
      DataBinding.DataField = 'SALDO_ANTERIOR'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 12
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit8: TcxDBTextEdit
      Left = 94
      Top = 251
      DataBinding.DataField = '_Notas'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 17
      OnKeyDown = dxDBEdit1KeyDown
      Width = 72
    end
    object dxDBEdit11: TcxDBTextEdit
      Left = 92
      Top = 367
      DataBinding.DataField = 'TROCO_INICIAL'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 27
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object EDPRODUTOS: TcxDBTextEdit
      Left = 92
      Top = 391
      DataBinding.DataField = '_Produtos'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 22
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object EDRECEBIMENTOS: TcxDBTextEdit
      Left = 92
      Top = 415
      DataBinding.DataField = 'RECEBIMENTOS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 23
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit7: TcxDBTextEdit
      Left = 92
      Top = 439
      DataBinding.DataField = 'OUTRAS_ENTRADAS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 24
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit9: TcxDBTextEdit
      Left = 92
      Top = 463
      DataBinding.DataField = 'ACRESCIMOS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 25
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit10: TcxDBTextEdit
      Left = 201
      Top = 367
      DataBinding.DataField = 'JUROS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 26
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit12: TcxDBTextEdit
      Left = 568
      Top = 367
      DataBinding.DataField = 'CARTAO'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 28
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit14: TcxDBTextEdit
      Left = 568
      Top = 391
      DataBinding.DataField = 'OUTRAS_SAIDAS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 30
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit15: TcxDBTextEdit
      Left = 568
      Top = 415
      DataBinding.DataField = 'OUTRAS_SAIDAS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 31
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit16: TcxDBTextEdit
      Left = 568
      Top = 439
      DataBinding.DataField = 'DESCONTOS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 32
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit17: TcxDBTextEdit
      Left = 568
      Top = 463
      DataBinding.DataField = 'TROCO_VENDAS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 34
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit13: TcxDBTextEdit
      Left = 690
      Top = 367
      DataBinding.DataField = '_Notas'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 29
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBEdit18: TcxDBTextEdit
      Left = 568
      Top = 487
      DataBinding.DataField = 'PAGAMENTOS'
      DataBinding.DataSource = DataSource
      Enabled = False
      Properties.ReadOnly = True
      TabOrder = 33
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object edresultado: TcxTextEdit
      Left = 632
      Top = 21
      Enabled = False
      TabOrder = 19
      Width = 72
    end
    object EdDinheiro: TcxTextEdit
      Left = 94
      Top = 155
      Enabled = False
      TabOrder = 13
      Width = 72
    end
    object EdCheque: TcxTextEdit
      Left = 94
      Top = 179
      Enabled = False
      TabOrder = 14
      Width = 72
    end
    object edcartao: TcxTextEdit
      Left = 94
      Top = 203
      Enabled = False
      TabOrder = 15
      Width = 72
    end
    object edticket: TcxTextEdit
      Left = 94
      Top = 227
      Enabled = False
      TabOrder = 16
      Width = 72
    end
    object EdTroco: TcxTextEdit
      Left = 94
      Top = 275
      Enabled = False
      TabOrder = 20
      Width = 72
    end
    object EdVista: TcxTextEdit
      Left = 94
      Top = 299
      Enabled = False
      TabOrder = 21
      Width = 72
    end
    object edtotal: TcxTextEdit
      Left = 94
      Top = 323
      Enabled = False
      TabOrder = 18
      Width = 72
    end
    object EdValor: TcxDBCalcEdit
      Left = 394
      Top = 368
      DataBinding.DataField = 'DINHEIRO'
      DataBinding.DataSource = DataSource
      TabOrder = 0
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBCalcEdit11: TcxDBCalcEdit
      Left = 394
      Top = 392
      DataBinding.DataField = 'MOEDAS'
      DataBinding.DataSource = DataSource
      TabOrder = 1
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBCalcEdit4: TcxDBCalcEdit
      Left = 394
      Top = 416
      DataBinding.DataField = 'TICKET'
      DataBinding.DataSource = DataSource
      TabOrder = 2
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBCalcEdit9: TcxDBCalcEdit
      Left = 394
      Top = 440
      DataBinding.DataField = 'CHEQUE'
      DataBinding.DataSource = DataSource
      TabOrder = 3
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBCalcEdit13: TcxDBCalcEdit
      Left = 394
      Top = 464
      DataBinding.DataField = 'CHEQUE_PRAZO'
      DataBinding.DataSource = DataSource
      TabOrder = 4
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
    object dxDBCalcEdit5: TcxDBCalcEdit
      Left = 394
      Top = 488
      DataBinding.DataField = 'TROCO'
      DataBinding.DataSource = DataSource
      TabOrder = 5
      OnEnter = EdValorEnter
      OnExit = EdValorExit
      OnKeyDown = dxDBEdit1KeyDown
      Width = 73
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    Left = 749
    Top = 7
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 749
    Top = 40
    DockControlHeights = (
      0
      0
      0
      0)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 23
      FloatClientHeight = 198
      ItemLinks = <
        item
          Visible = True
          ItemName = 'BtnListagem'
        end
        item
          Visible = True
          ItemName = 'Anda'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object BtnListagem: TdxBarButton
      Action = ActListagem
      Category = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000BFBFBF000000
        000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000080808000000000000080808080808080808080808080
        8080808080808080808080808080808080808080808080000000000000808080
        0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000000000000000000000000000000000000000FFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
        000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
        000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
    end
    object BtnFechar: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
    end
    object Anda: TdxBarProgressItem
      Caption = 'Progresso'
      Category = 0
      Hint = 'Progresso'
      Visible = ivNever
      BorderStyle = sbsRaised
      Width = 230
      Step = 1
    end
    object BtnSalvar: TdxBarButton
      Action = ActSalvar
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Action = ActCancelar
      Category = 0
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
    end
  end
  object Actions: TActionList
    Left = 525
    Top = 188
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
      OnExecute = ActListagemExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActImprimirTab: TAction
      Tag = 1
      Caption = 'Imprimir Fun'#231#227'o'
    end
    object ActFecharCaixa: TAction
      Tag = 1
      Caption = 'Fechar Caixa ( F9 )'
      ShortCut = 120
      OnExecute = ActFecharCaixaExecute
    end
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActSalvar: TAction
      Caption = 'Salvar'
      ShortCut = 121
      OnExecute = ActSalvarExecute
    end
    object ActResumo: TAction
      Tag = 1
      Caption = 'Resumo'
      ShortCut = 122
      OnExecute = ActResumoExecute
    end
    object ActComissoes: TAction
      Tag = 1
      Caption = 'Comiss'#245'es'
      OnExecute = ActComissoesExecute
    end
  end
  object DataSource: TDataSource
    DataSet = DmCaixa.Caixas
    OnStateChange = DataSourceStateChange
    Left = 169
    Top = 6
  end
  object DsPagas: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Pagas
    Left = 291
    Top = 78
  end
  object DsRecebidas: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Recebidas
    Left = 245
    Top = 74
  end
  object Print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 720
    Top = 8
  end
  object DsVendas: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Vendas
    Left = 189
    Top = 80
  end
  object DsMovimento: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Saidas
    Left = 353
    Top = 74
  end
  object DsAgrupadas: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Vendas_Agrupadas
    Left = 445
    Top = 76
  end
  object DsTrocas: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.Trocas
    Left = 13
    Top = 88
  end
  object rptF5: TppReport
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210x297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 210100
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 310
    Top = 119
    Version = '12.03'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 16139
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 16140
        mmLeft = 0
        mmTop = 265
        mmWidth = 197644
        BandType = 1
      end
      object lblTituloRel: TppLabel
        UserName = 'lblTituloRel'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Listagem de Caixa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5556
        mmLeft = 794
        mmTop = 1852
        mmWidth = 42863
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 794
        mmWidth = 33338
        BandType = 1
      end
      object lblCaixa: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblCaixa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 14552
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 79640
      mmPrintPosition = 0
      object subEntEstoque: TppSubReport
        UserName = 'subEntEstoque'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubEntSaida
        TraverseAllData = False
        DataPipelineName = 'Ent_EstAdm'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 29898
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = Ent_EstAdm
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'Ent_EstAdm'
          object ppTitleBand3: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel9: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Entradas No Estoque'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4498
              mmLeft = 1852
              mmTop = 2910
              mmWidth = 41804
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 11642
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 185738
              mmTop = 11642
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel39: TppLabel
              UserName = 'Label104'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nome'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 18256
              mmTop = 11642
              mmWidth = 9790
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 15875
              mmWidth = 197909
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText12: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = Ent_EstAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Ent_EstAdm'
              mmHeight = 3662
              mmLeft = 186627
              mmTop = 0
              mmWidth = 10753
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCUMENTO'
              DataPipeline = Ent_EstAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_EstAdm'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = Ent_EstAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_EstAdm'
              mmHeight = 4233
              mmLeft = 19050
              mmTop = 0
              mmWidth = 106098
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 175684
              mmTop = 0
              mmWidth = 21960
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = Ent_EstAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Ent_EstAdm'
              mmHeight = 3768
              mmLeft = 174901
              mmTop = 264
              mmWidth = 23008
              BandType = 7
            end
            object ppLabel16: TppLabel
              UserName = 'Label103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Entradas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 124354
              mmTop = 265
              mmWidth = 18785
              BandType = 7
            end
          end
        end
      end
      object SubVdGeral: TppSubReport
        UserName = 'SubVdGeral'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = subEntEstoque
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppVendasADM'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 35983
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppVendasADM
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppVendasADM'
          object ppTitleBand4: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel20: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendas'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 13547
              BandType = 1
            end
          end
          object DetalheVenda: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppRegion1: TppRegion
              UserName = 'Region1'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 6350
              mmLeft = 794
              mmTop = 0
              mmWidth = 202407
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText19: TppDBText
                UserName = 'DBText2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CODIGO'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3514
                mmLeft = 2064
                mmTop = 1059
                mmWidth = 11430
                BandType = 4
              end
              object ppDBText18: TppDBText
                UserName = 'DBText3'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3528
                mmLeft = 14288
                mmTop = 1058
                mmWidth = 67733
                BandType = 4
              end
              object ppDBText17: TppDBText
                UserName = 'DBText17'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VENDEDOR'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 4233
                mmLeft = 87313
                mmTop = 1058
                mmWidth = 6879
                BandType = 4
              end
              object ppDBText20: TppDBText
                UserName = 'DBText20'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NATUREZA'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 4233
                mmLeft = 96044
                mmTop = 1058
                mmWidth = 8996
                BandType = 4
              end
              object ppDBText21: TppDBText
                UserName = 'DBText21'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DOCTO'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 4233
                mmLeft = 107156
                mmTop = 1058
                mmWidth = 18256
                BandType = 4
              end
              object ppDBText22: TppDBText
                UserName = 'DBText201'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3239
                mmLeft = 155777
                mmTop = 1059
                mmWidth = 9059
                BandType = 4
              end
              object ppDBText23: TppDBText
                UserName = 'DBText23'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3239
                mmLeft = 165831
                mmTop = 1059
                mmWidth = 19114
                BandType = 4
              end
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3239
                mmLeft = 181939
                mmTop = 1058
                mmWidth = 20468
                BandType = 4
              end
              object ppDBText62: TppDBText
                UserName = 'DBText62'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENTRADA'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3239
                mmLeft = 132060
                mmTop = 1058
                mmWidth = 13462
                BandType = 4
              end
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 14552
            mmPrintPosition = 0
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL_BRUTO'
              DataPipeline = ppVendasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADM'
              mmHeight = 3302
              mmLeft = 173324
              mmTop = 2646
              mmWidth = 29083
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRES'
              DataPipeline = ppVendasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADM'
              mmHeight = 3302
              mmLeft = 156496
              mmTop = 2646
              mmWidth = 27390
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppVendasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADM'
              mmHeight = 3302
              mmLeft = 147617
              mmTop = 2646
              mmWidth = 17484
              BandType = 7
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 132557
              mmTop = 1852
              mmWidth = 69850
              BandType = 7
            end
            object RegionVenda: TppRegion
              UserName = 'RegionVenda'
              Pen.Color = clBlue
              Pen.Mode = pmNotXor
              Pen.Style = psInsideFrame
              mmHeight = 10848
              mmLeft = 0
              mmTop = 2117
              mmWidth = 94192
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppLabel83: TppLabel
                UserName = 'Label83'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dinheiro:  '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3302
                mmLeft = 1058
                mmTop = 3704
                mmWidth = 13970
                BandType = 7
              end
              object ppLabel84: TppLabel
                UserName = 'Label84'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cheque:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3302
                mmLeft = 33073
                mmTop = 3704
                mmWidth = 11906
                BandType = 7
              end
              object ppLabel85: TppLabel
                UserName = 'Label85'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cart'#227'o:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 33073
                mmTop = 7673
                mmWidth = 11113
                BandType = 7
              end
              object ppLabel86: TppLabel
                UserName = 'Label86'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ticket....:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 794
                mmTop = 7938
                mmWidth = 13758
                BandType = 7
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc24'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DINHEIRO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 15346
                mmTop = 3704
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc25: TppDBCalc
                UserName = 'DBCalc25'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHEQUE'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 44979
                mmTop = 3704
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc26: TppDBCalc
                UserName = 'DBCalc26'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CARTAO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3175
                mmLeft = 44450
                mmTop = 7673
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc27: TppDBCalc
                UserName = 'DBCalc27'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TICKET'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3175
                mmLeft = 14817
                mmTop = 7673
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc30: TppDBCalc
                UserName = 'DBCalc30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TROCO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3175
                mmLeft = 78317
                mmTop = 3704
                mmWidth = 14288
                BandType = 7
              end
              object ppLabel92: TppLabel
                UserName = 'Label92'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Troco($)....:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 60590
                mmTop = 3704
                mmWidth = 16404
                BandType = 7
              end
              object ppDBCalc31: TppDBCalc
                UserName = 'DBCalc301'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALE_TROCO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 78052
                mmTop = 7938
                mmWidth = 14552
                BandType = 7
              end
              object ppLabel96: TppLabel
                UserName = 'Label96'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vale Troco:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 60325
                mmTop = 7938
                mmWidth = 17198
                BandType = 7
              end
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc29'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ENTRADA'
              DataPipeline = ppVendasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADM'
              mmHeight = 3302
              mmLeft = 123677
              mmTop = 2646
              mmWidth = 21844
              BandType = 7
            end
            object ppLabel139: TppLabel
              UserName = 'Label139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Vendas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 94722
              mmTop = 2646
              mmWidth = 16933
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'TIPO'
            DataPipeline = ppVendasADM
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppVendasADM'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 12700
              mmPrintPosition = 0
              object ppLabel25: TppLabel
                UserName = 'Label2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Tipo de Venda:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3969
                mmLeft = 14552
                mmTop = 8731
                mmWidth = 22225
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 14552
                mmTop = 11641
                mmWidth = 187855
                BandType = 3
                GroupNo = 0
              end
              object lblTipoVenda: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO'
                DataPipeline = ppVendasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 4233
                mmLeft = 37571
                mmTop = 8466
                mmWidth = 19579
                BandType = 3
                GroupNo = 0
              end
              object ppLabel22: TppLabel
                UserName = 'Label10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Venda'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 4233
                mmTop = 0
                mmWidth = 9260
                BandType = 3
                GroupNo = 0
              end
              object ppLine7: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 265
                mmTop = 3969
                mmWidth = 202407
                BandType = 3
                GroupNo = 0
              end
              object ppLabel23: TppLabel
                UserName = 'Label101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cliente '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 14552
                mmTop = 0
                mmWidth = 11113
                BandType = 3
                GroupNo = 0
              end
              object ppLabel27: TppLabel
                UserName = 'Label27'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vend.'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 85725
                mmTop = 0
                mmWidth = 8467
                BandType = 3
                GroupNo = 0
              end
              object ppLabel28: TppLabel
                UserName = 'Label28'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'CFOP'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 96044
                mmTop = 0
                mmWidth = 8996
                BandType = 3
                GroupNo = 0
              end
              object ppLabel29: TppLabel
                UserName = 'Label29'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 157692
                mmTop = 0
                mmWidth = 7408
                BandType = 3
                GroupNo = 0
              end
              object ppLabel30: TppLabel
                UserName = 'Label30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Desc/Acr'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 170921
                mmTop = 0
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
              end
              object ppLabel31: TppLabel
                UserName = 'Label301'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = ' L'#237'quido'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 190765
                mmTop = 0
                mmWidth = 12171
                BandType = 3
                GroupNo = 0
              end
              object ppLabel24: TppLabel
                UserName = 'Label24'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Docto '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3969
                mmLeft = 107156
                mmTop = 0
                mmWidth = 9790
                BandType = 3
                GroupNo = 0
              end
              object ppLabel111: TppLabel
                UserName = 'Label111'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Entrada'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3969
                mmLeft = 133879
                mmTop = 0
                mmWidth = 11642
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppDBCalc3: TppDBCalc
                OnPrint = ppDBCalc3Print
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 173588
                mmTop = 529
                mmWidth = 29083
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 156761
                mmTop = 529
                mmWidth = 27390
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 147617
                mmTop = 529
                mmWidth = 17484
                BandType = 5
                GroupNo = 0
              end
              object ppLine8: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 128059
                mmTop = 0
                mmWidth = 74613
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc28: TppDBCalc
                UserName = 'DBCalc28'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENTRADA'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 123413
                mmTop = 265
                mmWidth = 21844
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object SubTrocas: TppSubReport
        UserName = 'SubTrocas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubVdCancel
        TraverseAllData = False
        DataPipelineName = 'TrocasAdm'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 54769
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = TrocasAdm
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'TrocasAdm'
          object ppTitleBand5: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel32: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Trocas'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 12488
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label105'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Troca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 2381
              mmTop = 11906
              mmWidth = 8467
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 529
              mmTop = 15875
              mmWidth = 196850
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 12700
              mmTop = 11906
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 64823
              mmTop = 11906
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Entradas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 118004
              mmTop = 11906
              mmWidth = 13229
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Sa'#237'das'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 138377
              mmTop = 11906
              mmWidth = 10054
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vista'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 174096
              mmTop = 11906
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L'#237'quido'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 153988
              mmTop = 11906
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Prazo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 188913
              mmTop = 11906
              mmWidth = 8731
              BandType = 1
            end
          end
          object ppDetailBand5: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = TrocasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3440
              mmLeft = 11906
              mmTop = 265
              mmWidth = 50006
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_RAZAO'
              DataPipeline = TrocasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3440
              mmLeft = 64558
              mmTop = 265
              mmWidth = 47890
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRAZO'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 182563
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 166423
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_LIQUIDO'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 150284
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_SAIDA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 133350
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_ENTRADA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 116152
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = TrocasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 10848
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object RegionTroca: TppRegion
              UserName = 'RegionTroca'
              Caption = 'RegionTroca'
              Pen.Color = clBlue
              Pen.Mode = pmNotXor
              Pen.Style = psInsideFrame
              mmHeight = 9790
              mmLeft = 0
              mmTop = 265
              mmWidth = 61913
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppLabel135: TppLabel
                UserName = 'Label135'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dinheiro:  '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 2117
                mmTop = 1323
                mmWidth = 14023
                BandType = 7
              end
              object ppLabel136: TppLabel
                UserName = 'Label136'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cheque:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 32808
                mmTop = 1588
                mmWidth = 11906
                BandType = 7
              end
              object ppLabel137: TppLabel
                UserName = 'Label137'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cart'#227'o:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3302
                mmLeft = 33073
                mmTop = 5292
                mmWidth = 11113
                BandType = 7
              end
              object ppLabel138: TppLabel
                UserName = 'Label138'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ticket....:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 2117
                mmTop = 5292
                mmWidth = 13758
                BandType = 7
              end
              object ppDBCalc32: TppDBCalc
                UserName = 'DBCalc32'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DINHEIRO'
                DataPipeline = TrocasAdm
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'TrocasAdm'
                mmHeight = 3175
                mmLeft = 15346
                mmTop = 1323
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc33: TppDBCalc
                UserName = 'DBCalc33'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHEQUE'
                DataPipeline = TrocasAdm
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'TrocasAdm'
                mmHeight = 3175
                mmLeft = 44715
                mmTop = 1588
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc34: TppDBCalc
                UserName = 'DBCalc34'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CARTAO'
                DataPipeline = TrocasAdm
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'TrocasAdm'
                mmHeight = 3302
                mmLeft = 44450
                mmTop = 5292
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc35: TppDBCalc
                UserName = 'DBCalc35'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TICKET'
                DataPipeline = TrocasAdm
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'TrocasAdm'
                mmHeight = 3175
                mmLeft = 16140
                mmTop = 5292
                mmWidth = 13494
                BandType = 7
              end
            end
            object ppLine12: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 115359
              mmTop = 0
              mmWidth = 82550
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRAZO'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3881
              mmLeft = 183621
              mmTop = 264
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3683
              mmLeft = 166688
              mmTop = 264
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_LIQUIDO'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3881
              mmLeft = 150548
              mmTop = 264
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_SAIDA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3881
              mmLeft = 134144
              mmTop = 264
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TTL_ENTRADA'
              DataPipeline = TrocasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'TrocasAdm'
              mmHeight = 3881
              mmLeft = 117211
              mmTop = 264
              mmWidth = 14023
              BandType = 7
            end
            object ppLabel41: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Trocas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 94721
              mmTop = 529
              mmWidth = 15610
              BandType = 7
            end
          end
        end
      end
      object SubPagas: TppSubReport
        UserName = 'SubPagas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubTrocas
        TraverseAllData = False
        DataPipelineName = 'PagasAdm'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 60590
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = PagasAdm
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'PagasAdm'
          object ppTitleBand6: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16140
            mmPrintPosition = 0
            object ppLabel42: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contas Pagas'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 25188
              BandType = 1
            end
            object ppLabel44: TppLabel
              UserName = 'Label105'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Codigo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 1852
              mmTop = 11642
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel45: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Vencto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 14288
              mmTop = 11642
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 82550
              mmTop = 11906
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3768
              mmLeft = 113750
              mmTop = 11642
              mmWidth = 18542
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 138907
              mmTop = 11642
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Pago'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3768
              mmLeft = 183335
              mmTop = 11642
              mmWidth = 13780
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Desconto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 156634
              mmTop = 11642
              mmWidth = 20108
              BandType = 1
            end
            object ppLabel53: TppLabel
              UserName = 'Label53'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fornecedor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 31221
              mmTop = 11642
              mmWidth = 17198
              BandType = 1
            end
            object ppLine10: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 0
              mmTop = 15875
              mmWidth = 196850
              BandType = 1
            end
          end
          object ppDetailBand6: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText30: TppDBText
              UserName = 'DBText34'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 179917
              mmTop = 0
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText35'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCONTOS'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 160602
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText36'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 136261
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText37'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 117740
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText26'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = PagasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3440
              mmLeft = 31750
              mmTop = 0
              mmWidth = 49742
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = PagasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3440
              mmLeft = 82815
              mmTop = 265
              mmWidth = 30692
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = PagasAdm
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 15610
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = PagasAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLine13: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 115623
              mmTop = 0
              mmWidth = 82550
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clRed
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3302
              mmLeft = 173334
              mmTop = 0
              mmWidth = 24045
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCONTOS'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3302
              mmLeft = 151014
              mmTop = 0
              mmWidth = 25993
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3302
              mmLeft = 136208
              mmTop = 0
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = PagasAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'PagasAdm'
              mmHeight = 3302
              mmLeft = 114078
              mmTop = 0
              mmWidth = 17949
              BandType = 7
            end
            object ppLabel52: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Pagas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 82815
              mmTop = 0
              mmWidth = 14605
              BandType = 7
            end
          end
        end
      end
      object SubRecebidas: TppSubReport
        UserName = 'SubRecebidas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubPagas
        TraverseAllData = False
        DataPipelineName = 'RecebidasADM'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 67469
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = RecebidasADM
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'RecebidasADM'
          object ppTitleBand7: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel51: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contas Recebidas'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 33020
              BandType = 1
            end
            object ppLabel54: TppLabel
              UserName = 'Label105'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Codigo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 11642
              mmWidth = 10848
              BandType = 1
            end
            object ppLine14: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 15875
              mmWidth = 197909
              BandType = 1
            end
            object ppLabel55: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Vencto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 14552
              mmTop = 11642
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel56: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 95779
              mmTop = 11906
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel57: TppLabel
              UserName = 'Label35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Original'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 135732
              mmTop = 11377
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel58: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 161396
              mmTop = 11642
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel60: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 183357
              mmTop = 11377
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel61: TppLabel
              UserName = 'Label53'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 31485
              mmTop = 11642
              mmWidth = 10372
              BandType = 1
            end
          end
          object ppDetailBand7: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 4498
            mmPrintPosition = 0
            object ppDBText41: TppDBText
              UserName = 'DBText35'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3260
              mmLeft = 182235
              mmTop = 0
              mmWidth = 15409
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText36'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3260
              mmLeft = 166339
              mmTop = 0
              mmWidth = 9610
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText37'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3260
              mmLeft = 143848
              mmTop = 0
              mmWidth = 9610
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText26'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = RecebidasADM
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3440
              mmLeft = 31750
              mmTop = 0
              mmWidth = 61648
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = RecebidasADM
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3440
              mmLeft = 95779
              mmTop = 265
              mmWidth = 30692
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = RecebidasADM
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 14552
              mmTop = 0
              mmWidth = 15875
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText39'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = RecebidasADM
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 15875
            mmPrintPosition = 0
            object ppLine15: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 158486
              mmTop = 0
              mmWidth = 39952
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3302
              mmLeft = 173864
              mmTop = 0
              mmWidth = 24045
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3302
              mmLeft = 158697
              mmTop = 265
              mmWidth = 17780
              BandType = 7
            end
            object ppLabel62: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Recebidas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 95779
              mmTop = 0
              mmWidth = 20955
              BandType = 7
            end
            object RegiRecebido: TppRegion
              UserName = 'RegiRecebido'
              Caption = 'RegiRecebido'
              Pen.Color = clBlue
              Pen.Mode = pmNotXor
              Pen.Style = psInsideFrame
              mmHeight = 14552
              mmLeft = 0
              mmTop = 794
              mmWidth = 94191
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppLabel165: TppLabel
                UserName = 'Label165'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cheque Prazo:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 1323
                mmTop = 5556
                mmWidth = 23019
                BandType = 7
              end
              object ppDBCalc55: TppDBCalc
                UserName = 'DBCalc55'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHEQUE_PRAZO'
                DataPipeline = RecebidasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'RecebidasADM'
                mmHeight = 3175
                mmLeft = 25135
                mmTop = 5556
                mmWidth = 30427
                BandType = 7
              end
              object ppLabel161: TppLabel
                UserName = 'Label161'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cheque '#224' Vista:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 1323
                mmTop = 10319
                mmWidth = 23019
                BandType = 7
              end
              object ppDBCalc54: TppDBCalc
                UserName = 'DBCalc54'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHEQUE_VISTA'
                DataPipeline = RecebidasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'RecebidasADM'
                mmHeight = 3175
                mmLeft = 25135
                mmTop = 10319
                mmWidth = 30956
                BandType = 7
              end
            end
          end
        end
      end
      object ppRegion: TppRegion
        UserName = 'Region'
        Caption = 'Region'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 23548
        mmLeft = 0
        mmTop = 265
        mmWidth = 197909
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          Shape = stRoundRect
          mmHeight = 16933
          mmLeft = 794
          mmTop = 1852
          mmWidth = 196586
          BandType = 4
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Dinheiro:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 1588
          mmTop = 5822
          mmWidth = 13928
          BandType = 4
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Ch. Vista:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 65617
          mmTop = 5821
          mmWidth = 14552
          BandType = 4
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Ticket:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 135202
          mmTop = 5822
          mmWidth = 10319
          BandType = 4
        end
        object lblSaldos: TppLabel
          UserName = 'lblSaldos'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sld. Abert.:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 162719
          mmTop = 5822
          mmWidth = 16933
          BandType = 4
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Ttl. Abert.:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 31485
          mmTop = 12171
          mmWidth = 15875
          BandType = 4
        end
        object lblDinheiro: TppLabel
          UserName = 'lblDinheiro'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblDinheiro'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 16140
          mmTop = 5822
          mmWidth = 15113
          BandType = 4
        end
        object lblChequeVista: TppLabel
          UserName = 'lblChequeVista'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblChequeVista'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 81492
          mmTop = 5822
          mmWidth = 21505
          BandType = 4
        end
        object lblTicket: TppLabel
          UserName = 'lblTicket'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblTicket'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 146050
          mmTop = 5822
          mmWidth = 11642
          BandType = 4
        end
        object lblSldAbert: TppLabel
          UserName = 'lblSldAbert'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblSldAbert'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 179917
          mmTop = 5822
          mmWidth = 15346
          BandType = 4
        end
        object lblTtlAbertura: TppLabel
          UserName = 'lblTtlAbertura'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblTtlAbertura'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 47625
          mmTop = 12171
          mmWidth = 19050
          BandType = 4
        end
        object ppLabel5: TppLabel
          UserName = 'lblSaldos1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sld. Ant.:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3704
          mmLeft = 1588
          mmTop = 12171
          mmWidth = 13758
          BandType = 4
        end
        object lblSldAnt: TppLabel
          UserName = 'lblSldAnt'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblSldAnt'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3704
          mmLeft = 16140
          mmTop = 12171
          mmWidth = 12700
          BandType = 4
        end
        object lblMoeda: TppLabel
          UserName = 'lblMoeda'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblMoeda'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 48948
          mmTop = 5822
          mmWidth = 12912
          BandType = 4
        end
        object ppLabel162: TppLabel
          UserName = 'Label162'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Moedas:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 35190
          mmTop = 5822
          mmWidth = 12912
          BandType = 4
        end
        object lblChequePrazo: TppLabel
          UserName = 'lblChequePrazo'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblChequePrazo'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = []
          Transparent = True
          mmHeight = 3598
          mmLeft = 116417
          mmTop = 5822
          mmWidth = 22691
          BandType = 4
        end
        object ppLabel164: TppLabel
          UserName = 'Label164'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Ch. Prazo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3810
          mmLeft = 101336
          mmTop = 5822
          mmWidth = 15706
          BandType = 4
        end
      end
      object SubEntSaida: TppSubReport
        UserName = 'SubEntSaida'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = ppRegion
        TraverseAllData = False
        DataPipelineName = 'Ent_SaidAdm'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 24077
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = Ent_SaidAdm
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'Ent_SaidAdm'
          object ppTitleBand2: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Entradas e Sa'#237'das do Caixa '
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 0
              mmTop = 1852
              mmWidth = 50800
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nome '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 0
              mmTop = 11642
              mmWidth = 10848
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 15875
              mmWidth = 197380
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 55827
              mmTop = 11377
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 87048
              mmTop = 11642
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 4233
              mmLeft = 154517
              mmTop = 11377
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Valor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 10
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 4233
              mmLeft = 185738
              mmTop = 11906
              mmWidth = 11642
              BandType = 1
            end
          end
          object ppHeaderBand2: TppHeaderBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppDetailBand2: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText10: TppDBText
              OnPrint = ppDBText10Print
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = Ent_SaidAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 4233
              mmLeft = 175684
              mmTop = 0
              mmWidth = 21696
              BandType = 4
            end
            object lblTipoEntrada: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO'
              DataPipeline = Ent_SaidAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 4233
              mmLeft = 154517
              mmTop = 0
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = Ent_SaidAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 3440
              mmLeft = 86784
              mmTop = 265
              mmWidth = 65352
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCUMENTO'
              DataPipeline = Ent_SaidAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 3440
              mmLeft = 55563
              mmTop = 0
              mmWidth = 28575
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME'
              DataPipeline = Ent_SaidAdm
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 3528
              mmLeft = 0
              mmTop = 0
              mmWidth = 53446
              BandType = 4
            end
          end
          object ppFooterBand2: TppFooterBand
            Visible = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLabel15: TppLabel
              UserName = 'Label102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo Sa'#237'das/Entradas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 74613
              mmTop = 0
              mmWidth = 33338
              BandType = 7
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 175419
              mmTop = 0
              mmWidth = 21960
              BandType = 7
            end
            object ppDBCalc1: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = Ent_SaidAdm
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'Ent_SaidAdm'
              mmHeight = 3387
              mmLeft = 179822
              mmTop = 264
              mmWidth = 17822
              BandType = 7
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object SubRecebidasAg: TppSubReport
        UserName = 'SubRecebidasAg'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubPagas
        TraverseAllData = False
        DataPipelineName = 'RecebidasADM'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 73819
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport7: TppChildReport
          AutoStop = False
          DataPipeline = RecebidasADM
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'RecebidasADM'
          object ppTitleBand8: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel7: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contas Recebidas-Agrupadas Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 67945
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label105'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Codigo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 2117
              mmTop = 11642
              mmWidth = 10848
              BandType = 1
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 15875
              mmWidth = 197909
              BandType = 1
            end
            object ppLabel59: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt. Vencto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 16933
              mmTop = 11642
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel64: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35190
              mmTop = 12171
              mmWidth = 8996
              BandType = 1
            end
            object ppLabel66: TppLabel
              UserName = 'Label35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Original'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 92604
              mmTop = 11642
              mmWidth = 17727
              BandType = 1
            end
            object ppLabel68: TppLabel
              UserName = 'Label36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 118269
              mmTop = 11642
              mmWidth = 14288
              BandType = 1
            end
            object ppLabel69: TppLabel
              UserName = 'Label38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 137848
              mmTop = 11113
              mmWidth = 14288
              BandType = 1
            end
          end
          object ppDetailBand8: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 135732
              mmTop = 0
              mmWidth = 16404
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 115094
              mmTop = 0
              mmWidth = 17463
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 95250
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = RecebidasADM
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3440
              mmLeft = 34660
              mmTop = 0
              mmWidth = 46567
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = RecebidasADM
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 17198
              mmTop = 0
              mmWidth = 14817
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = RecebidasADM
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 4233
              mmLeft = 2117
              mmTop = 0
              mmWidth = 12965
              BandType = 4
            end
          end
          object ppSummaryBand8: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 4233
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 112184
              mmTop = 0
              mmWidth = 39952
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BAIXA'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3881
              mmLeft = 137584
              mmTop = 0
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = RecebidasADM
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'RecebidasADM'
              mmHeight = 3881
              mmLeft = 116152
              mmTop = 264
              mmWidth = 14023
              BandType = 7
            end
            object ppLabel71: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Recebidas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 68263
              mmTop = 0
              mmWidth = 20955
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'NOME'
            DataPipeline = RecebidasADM
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'RecebidasADM'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5292
              mmPrintPosition = 0
              object ppLine17: TppLine
                UserName = 'Line17'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 1852
                mmTop = 4498
                mmWidth = 75142
                BandType = 3
                GroupNo = 0
              end
              object ppLabel70: TppLabel
                UserName = 'Label53'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cliente: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3881
                mmLeft = 2381
                mmTop = 529
                mmWidth = 12277
                BandType = 3
                GroupNo = 0
              end
              object ppDBText4: TppDBText
                UserName = 'DBText4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME'
                DataPipeline = RecebidasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'RecebidasADM'
                mmHeight = 3528
                mmLeft = 14817
                mmTop = 794
                mmWidth = 61648
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 4233
              mmPrintPosition = 0
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc22'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = RecebidasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'RecebidasADM'
                mmHeight = 3969
                mmLeft = 116152
                mmTop = 264
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc23'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_BAIXA'
                DataPipeline = RecebidasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'RecebidasADM'
                mmHeight = 3969
                mmLeft = 137319
                mmTop = 264
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppLine18: TppLine
                UserName = 'Line18'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 111654
                mmTop = 0
                mmWidth = 39952
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object SubVdCancel: TppSubReport
        UserName = 'SubVdCancel'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubVdAg
        TraverseAllData = False
        DataPipelineName = 'CanceladasADM'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 48154
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport8: TppChildReport
          AutoStop = False
          DataPipeline = CanceladasADM
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'CanceladasADM'
          object ppTitleBand9: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16140
            mmPrintPosition = 0
            object ppLabel26: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendas Canceladas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 35772
              BandType = 1
            end
            object ppLabel72: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Venda'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 4233
              mmTop = 12169
              mmWidth = 9260
              BandType = 1
            end
            object ppLine19: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 1852
              mmTop = 15875
              mmWidth = 195527
              BandType = 1
            end
            object ppLabel73: TppLabel
              UserName = 'Label101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 14552
              mmTop = 12169
              mmWidth = 11113
              BandType = 1
            end
            object ppLabel74: TppLabel
              UserName = 'Label27'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vend.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 91546
              mmTop = 12169
              mmWidth = 8467
              BandType = 1
            end
            object ppLabel79: TppLabel
              UserName = 'Label24'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 102129
              mmTop = 11906
              mmWidth = 13547
              BandType = 1
            end
            object ppLabel75: TppLabel
              UserName = 'Label75'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N'#186' Cupom'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 167482
              mmTop = 11642
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel76: TppLabel
              UserName = 'Label76'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N'#186' NF'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 188648
              mmTop = 11642
              mmWidth = 8467
              BandType = 1
            end
          end
          object ppDetailBand4: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppRegion2: TppRegion
              UserName = 'Region1'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 6350
              mmLeft = 0
              mmTop = 265
              mmWidth = 197909
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText11: TppDBText
                UserName = 'DBText2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CODIGO'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 3528
                mmLeft = 1270
                mmTop = 1324
                mmWidth = 11430
                BandType = 4
              end
              object ppDBText24: TppDBText
                UserName = 'DBText3'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME_RAZAO'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 3440
                mmLeft = 14288
                mmTop = 1588
                mmWidth = 74348
                BandType = 4
              end
              object ppDBText48: TppDBText
                UserName = 'DBText17'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VENDEDOR'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 4233
                mmLeft = 90488
                mmTop = 1323
                mmWidth = 9260
                BandType = 4
              end
              object ppDBText49: TppDBText
                UserName = 'DBText49'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'HISTORICO'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 3440
                mmLeft = 101865
                mmTop = 1588
                mmWidth = 60061
                BandType = 4
              end
              object ppDBText50: TppDBText
                UserName = 'DBText50'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NUM_NF'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 4763
                mmLeft = 184944
                mmTop = 794
                mmWidth = 12171
                BandType = 4
              end
              object ppDBText51: TppDBText
                UserName = 'DBText501'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NUM_CUPOM'
                DataPipeline = CanceladasADM
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'CanceladasADM'
                mmHeight = 4763
                mmLeft = 173567
                mmTop = 794
                mmWidth = 9260
                BandType = 4
              end
            end
          end
          object ppSummaryBand9: TppSummaryBand
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
        end
      end
      object SubVdAg: TppSubReport
        UserName = 'SubVdAg'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubVdGeral
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'ppVendasADMAG'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 41804
        mmWidth = 197400
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport9: TppChildReport
          AutoStop = False
          DataPipeline = ppVendasADMAG
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.PaperName = 'A4 210x297 mm'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 296900
          PrinterSetup.mmPaperWidth = 210100
          PrinterSetup.PaperSize = 9
          Left = 480
          Top = 356
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppVendasADMAG'
          object ppTitleBand11: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 16139
            mmPrintPosition = 0
            object ppLabel140: TppLabel
              UserName = 'Label1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendas'
              Color = clGray
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 11
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4586
              mmLeft = 1852
              mmTop = 2822
              mmWidth = 13547
              BandType = 1
            end
            object ppLine27: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 0
              mmTop = 15875
              mmWidth = 197380
              BandType = 1
            end
            object ppLabel153: TppLabel
              UserName = 'Label29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 155575
              mmTop = 11906
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel154: TppLabel
              UserName = 'Label30'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Desc/Acr'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 166952
              mmTop = 11906
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel155: TppLabel
              UserName = 'Label301'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = ' L'#237'quido'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 185738
              mmTop = 11906
              mmWidth = 12171
              BandType = 1
            end
            object ppLabel157: TppLabel
              UserName = 'Label111'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Entrada'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 133615
              mmTop = 11906
              mmWidth = 11642
              BandType = 1
            end
          end
          object ppDetailBand10: TppDetailBand
            Background1.Brush.Style = bsClear
            Background1.Gradient.EndColor = clWhite
            Background1.Gradient.StartColor = clWhite
            Background1.Gradient.Style = gsNone
            Background2.Brush.Style = bsClear
            Background2.Gradient.EndColor = clWhite
            Background2.Gradient.StartColor = clWhite
            Background2.Gradient.Style = gsNone
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 6615
            mmPrintPosition = 0
            object ppRegion3: TppRegion
              UserName = 'Region1'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 6350
              mmLeft = 794
              mmTop = 0
              mmWidth = 197380
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppDBText94: TppDBText
                UserName = 'DBText201'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 4233
                mmLeft = 146844
                mmTop = 1059
                mmWidth = 16140
                BandType = 4
              end
              object ppDBText95: TppDBText
                UserName = 'DBText23'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 4233
                mmLeft = 165100
                mmTop = 1059
                mmWidth = 16140
                BandType = 4
              end
              object ppDBText96: TppDBText
                UserName = 'DBText13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 4233
                mmLeft = 182298
                mmTop = 1058
                mmWidth = 15346
                BandType = 4
              end
              object ppDBText97: TppDBText
                UserName = 'DBText62'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENTRADA'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 4233
                mmLeft = 129382
                mmTop = 1058
                mmWidth = 16140
                BandType = 4
              end
            end
          end
          object ppSummaryBand10: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 14552
            mmPrintPosition = 0
            object ppDBCalc36: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL_BRUTO'
              DataPipeline = ppVendasADMAG
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADMAG'
              mmHeight = 3881
              mmLeft = 184150
              mmTop = 2646
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc37: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRES'
              DataPipeline = ppVendasADMAG
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADMAG'
              mmHeight = 3881
              mmLeft = 167482
              mmTop = 2646
              mmWidth = 13494
              BandType = 7
            end
            object ppDBCalc38: TppDBCalc
              UserName = 'DBCalc9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppVendasADMAG
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADMAG'
              mmHeight = 3881
              mmLeft = 149754
              mmTop = 2646
              mmWidth = 13494
              BandType = 7
            end
            object ppLine25: TppLine
              UserName = 'Line16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 127794
              mmTop = 1852
              mmWidth = 69850
              BandType = 7
            end
            object ppRegion4: TppRegion
              UserName = 'RegionVenda'
              Caption = 'Region4'
              Pen.Color = clBlue
              Pen.Mode = pmNotXor
              Pen.Style = psInsideFrame
              mmHeight = 10848
              mmLeft = 0
              mmTop = 2117
              mmWidth = 96309
              BandType = 7
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppLabel141: TppLabel
                UserName = 'Label83'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dinheiro:  '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3302
                mmLeft = 1058
                mmTop = 3704
                mmWidth = 13970
                BandType = 7
              end
              object ppLabel142: TppLabel
                UserName = 'Label84'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cheque:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3302
                mmLeft = 33073
                mmTop = 3704
                mmWidth = 11906
                BandType = 7
              end
              object ppLabel143: TppLabel
                UserName = 'Label85'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cart'#227'o:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 33073
                mmTop = 7673
                mmWidth = 11113
                BandType = 7
              end
              object ppLabel144: TppLabel
                UserName = 'Label86'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ticket....:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 794
                mmTop = 7938
                mmWidth = 13758
                BandType = 7
              end
              object ppDBCalc39: TppDBCalc
                UserName = 'DBCalc24'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DINHEIRO'
                DataPipeline = ppVendasADM
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'ppVendasADM'
                mmHeight = 3302
                mmLeft = 15346
                mmTop = 3704
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc40: TppDBCalc
                UserName = 'DBCalc25'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CHEQUE'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3302
                mmLeft = 44979
                mmTop = 3704
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc41: TppDBCalc
                UserName = 'DBCalc26'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CARTAO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3175
                mmLeft = 44450
                mmTop = 7673
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc42: TppDBCalc
                UserName = 'DBCalc27'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TICKET'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3175
                mmLeft = 14817
                mmTop = 7673
                mmWidth = 13494
                BandType = 7
              end
              object ppDBCalc43: TppDBCalc
                UserName = 'DBCalc30'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TROCO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3175
                mmLeft = 80433
                mmTop = 3969
                mmWidth = 14288
                BandType = 7
              end
              object ppLabel145: TppLabel
                UserName = 'Label92'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Troco($)....:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 62706
                mmTop = 3969
                mmWidth = 16404
                BandType = 7
              end
              object ppDBCalc44: TppDBCalc
                UserName = 'DBCalc301'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALE_TROCO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clTeal
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3302
                mmLeft = 80169
                mmTop = 8202
                mmWidth = 14552
                BandType = 7
              end
              object ppLabel146: TppLabel
                UserName = 'Label96'
                HyperlinkColor = clBlue
                AutoSize = False
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vale Troco:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3175
                mmLeft = 62442
                mmTop = 8202
                mmWidth = 17198
                BandType = 7
              end
            end
            object ppDBCalc45: TppDBCalc
              UserName = 'DBCalc29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ENTRADA'
              DataPipeline = ppVendasADMAG
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendasADMAG'
              mmHeight = 3881
              mmLeft = 132027
              mmTop = 2646
              mmWidth = 13494
              BandType = 7
            end
            object ppLabel147: TppLabel
              UserName = 'Label139'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Vendas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 98161
              mmTop = 2381
              mmWidth = 17018
              BandType = 7
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'TIPO'
            DataPipeline = ppVendasADMAG
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group4'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppVendasADMAG'
            NewFile = False
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 9260
              mmPrintPosition = 0
              object ppLabel148: TppLabel
                UserName = 'Label2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Tipo de Venda:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3969
                mmLeft = 13229
                mmTop = 4498
                mmWidth = 22225
                BandType = 3
                GroupNo = 0
              end
              object ppLine26: TppLine
                UserName = 'Line11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1588
                mmLeft = 12700
                mmTop = 8731
                mmWidth = 184944
                BandType = 3
                GroupNo = 0
              end
              object ppDBText98: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO'
                DataPipeline = ppVendasADMAG
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsItalic, fsUnderline]
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 4233
                mmLeft = 36248
                mmTop = 4233
                mmWidth = 19579
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 8202
              mmPrintPosition = 0
              object ppDBCalc50: TppDBCalc
                OnPrint = ppDBCalc50Print
                UserName = 'DBCalc50'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 184150
                mmTop = 2381
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc51: TppDBCalc
                UserName = 'DBCalc51'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 167482
                mmTop = 2381
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc52: TppDBCalc
                UserName = 'DBCalc52'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 149754
                mmTop = 2381
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppLine31: TppLine
                UserName = 'Line31'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 12700
                mmTop = 0
                mmWidth = 184944
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc53: TppDBCalc
                UserName = 'DBCalc53'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENTRADA'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3969
                mmLeft = 132027
                mmTop = 2117
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'VENDEDOR'
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = ''
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 9260
              mmPrintPosition = 0
              object ppLine29: TppLine
                UserName = 'Line29'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 61913
                mmTop = 7673
                mmWidth = 135202
                BandType = 3
                GroupNo = 1
              end
              object ppLabel158: TppLabel
                UserName = 'Label158'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vendedor:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic, fsUnderline]
                Transparent = True
                mmHeight = 3704
                mmLeft = 61648
                mmTop = 3440
                mmWidth = 15875
                BandType = 3
                GroupNo = 1
              end
              object ppDBText90: TppDBText
                UserName = 'DBText2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME_VENDEDOR'
                DataPipeline = ppVendasADMAG
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = []
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3440
                mmLeft = 78317
                mmTop = 3969
                mmWidth = 67733
                BandType = 3
                GroupNo = 1
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppDBCalc46: TppDBCalc
                OnPrint = ppDBCalc3Print
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_BRUTO'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 184150
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc47: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 167482
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc48: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3881
                mmLeft = 149754
                mmTop = 529
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
              object ppLine28: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 61383
                mmTop = 0
                mmWidth = 135996
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc49: TppDBCalc
                UserName = 'DBCalc28'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ENTRADA'
                DataPipeline = ppVendasADMAG
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppVendasADMAG'
                mmHeight = 3969
                mmLeft = 132027
                mmTop = 265
                mmWidth = 13494
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule5: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 264
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText104: TppDBText
        UserName = 'DBText104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 114300
        BandType = 8
      end
    end
    object ppSummaryBand7: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 9525
        mmLeft = 265
        mmTop = 13758
        mmWidth = 197380
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sld. Inicial:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 15875
        mmWidth = 19050
        BandType = 7
      end
      object lblSldInicial: TppLabel
        UserName = 'lblDinheiro1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSaldoInicial'
        Color = clOlive
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 22490
        mmTop = 15875
        mmWidth = 23813
        BandType = 7
      end
      object ppLabel63: TppLabel
        UserName = 'Label63'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entradas:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 58738
        mmTop = 15875
        mmWidth = 16140
        BandType = 7
      end
      object lblEntradas: TppLabel
        UserName = 'lblEntradas'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblEntradas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 75406
        mmTop = 15875
        mmWidth = 19050
        BandType = 7
      end
      object ppLabel65: TppLabel
        UserName = 'Label65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 116417
        mmTop = 15875
        mmWidth = 12435
        BandType = 7
      end
      object lblSaidas: TppLabel
        UserName = 'lblSaidas'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSaidas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 129382
        mmTop = 15875
        mmWidth = 15346
        BandType = 7
      end
      object ppLabel67: TppLabel
        UserName = 'Label67'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Saldo:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 165100
        mmTop = 15875
        mmWidth = 10848
        BandType = 7
      end
      object lblSaldo: TppLabel
        OnPrint = lblSaldoPrint
        UserName = 'lblSaldo'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblSaldo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 176742
        mmTop = 15875
        mmWidth = 18521
        BandType = 7
      end
    end
    object raCodeModule3: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsVendasADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryVendasADMCx
    Left = 375
    Top = 178
  end
  object ppVendasADM: TppDBPipeline
    DataSource = dsVendasADM
    UserName = 'VendasADM'
    Left = 343
    Top = 178
    object ppVendasADMppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppVendasADMppField2: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppVendasADMppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppVendasADMppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppVendasADMppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NATUREZA'
      FieldName = 'NATUREZA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppVendasADMppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRES'
      FieldName = 'DESC_ACRES'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppVendasADMppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppVendasADMppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DINHEIRO'
      FieldName = 'DINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppVendasADMppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppVendasADMppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppVendasADMppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET'
      FieldName = 'TICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppVendasADMppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppVendasADMppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppVendasADMppField14: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppVendasADMppField15: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 14
    end
    object ppVendasADMppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object ppVendasADMppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIQUIDO'
      FieldName = 'LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppVendasADMppField18: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 17
    end
    object ppVendasADMppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'teste'
      FieldName = 'teste'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppVendasADMppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALE_TROCO'
      FieldName = 'VALE_TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppVendasADMppField21: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
  end
  object TrocasAdm: TppDBPipeline
    DataSource = dsTrocasADM
    UserName = 'TrocasAdm'
    Left = 343
    Top = 210
    object TrocasAdmppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object TrocasAdmppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object TrocasAdmppField3: TppField
      FieldAlias = 'ENVIADA_CX'
      FieldName = 'ENVIADA_CX'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object TrocasAdmppField4: TppField
      FieldAlias = 'FECHADO'
      FieldName = 'FECHADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object TrocasAdmppField5: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 4
    end
    object TrocasAdmppField6: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object TrocasAdmppField7: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object TrocasAdmppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object TrocasAdmppField9: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object TrocasAdmppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object TrocasAdmppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DINHEIRO'
      FieldName = 'DINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object TrocasAdmppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object TrocasAdmppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object TrocasAdmppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET'
      FieldName = 'TICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object TrocasAdmppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VISTA'
      FieldName = 'VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object TrocasAdmppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO'
      FieldName = 'PRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object TrocasAdmppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TTL_ENTRADA'
      FieldName = 'TTL_ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object TrocasAdmppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TTL_SAIDA'
      FieldName = 'TTL_SAIDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object TrocasAdmppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TTL_LIQUIDO'
      FieldName = 'TTL_LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object TrocasAdmppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Teste'
      FieldName = 'Teste'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
  end
  object dsTrocasADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryTrocasADMCx
    Left = 375
    Top = 210
  end
  object PagasAdm: TppDBPipeline
    DataSource = dsPagasADM
    UserName = 'PagasAdm'
    Left = 344
    Top = 240
    object PagasAdmppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object PagasAdmppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object PagasAdmppField3: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 2
    end
    object PagasAdmppField4: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object PagasAdmppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object PagasAdmppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object PagasAdmppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object PagasAdmppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_PARCIAL'
      FieldName = 'VLR_PARCIAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object PagasAdmppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object PagasAdmppField10: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object PagasAdmppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'teste'
      FieldName = 'teste'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  object dsPagasADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryPagasADMCx
    Left = 372
    Top = 240
  end
  object Ent_SaidAdm: TppDBPipeline
    DataSource = dsEnt_SaidADM
    UserName = 'Ent_SaidAdm'
    Left = 343
    Top = 118
    object Ent_SaidAdmppField1: TppField
      FieldAlias = 'DOCUMENTO'
      FieldName = 'DOCUMENTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object Ent_SaidAdmppField2: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object Ent_SaidAdmppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object Ent_SaidAdmppField4: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object Ent_SaidAdmppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object Ent_SaidAdmppField6: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
  end
  object dsEnt_SaidADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryEnt_SaiADMCx
    Left = 371
    Top = 118
  end
  object Ent_EstAdm: TppDBPipeline
    DataSource = dsEnt_EstADM
    UserName = 'Ent_EstAdm'
    Left = 343
    Top = 146
    object Ent_EstAdmppField1: TppField
      FieldAlias = 'DOCUMENTO'
      FieldName = 'DOCUMENTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object Ent_EstAdmppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object Ent_EstAdmppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 62
      DisplayWidth = 62
      Position = 2
    end
  end
  object dsEnt_EstADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryEnt_EstADMCx
    Left = 371
    Top = 146
  end
  object dsRecebidasADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryRecebidasADMCx
    Left = 372
    Top = 272
  end
  object RecebidasADM: TppDBPipeline
    DataSource = dsRecebidasADM
    UserName = 'RecebidasADM'
    Left = 344
    Top = 270
    object RecebidasADMppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object RecebidasADMppField2: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object RecebidasADMppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object RecebidasADMppField4: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object RecebidasADMppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object RecebidasADMppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object RecebidasADMppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object RecebidasADMppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE_VISTA'
      FieldName = 'CHEQUE_VISTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object RecebidasADMppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE_PRAZO'
      FieldName = 'CHEQUE_PRAZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object RecebidasADMppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
  end
  object CanceladasADM: TppDBPipeline
    DataSource = dsCanceladasADM
    UserName = 'CanceladasAdm'
    Left = 344
    Top = 304
  end
  object dsCanceladasADM: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryVndCancADMCx
    Left = 372
    Top = 304
  end
  object dsF11: TDataSource
    AutoEdit = False
    DataSet = DmCaixa.qryResumoCaixa
    Left = 475
    Top = 222
  end
  object dbF11: TppDBPipeline
    DataSource = dsF11
    UserName = 'dbF11'
    Left = 447
    Top = 222
    object dbF11ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIN_VDVISTA'
      FieldName = 'DIN_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 0
    end
    object dbF11ppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIN_VDPRAZO'
      FieldName = 'DIN_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object dbF11ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DIN_RECBTO'
      FieldName = 'DIN_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object dbF11ppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHVISTA_VDVISTA'
      FieldName = 'CHVISTA_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object dbF11ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHVISTA_VDPRAZO'
      FieldName = 'CHVISTA_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object dbF11ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHVISTA_RECBTO'
      FieldName = 'CHVISTA_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object dbF11ppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHPRE_VDVISTA'
      FieldName = 'CHPRE_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object dbF11ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHPRE_VDPRAZO'
      FieldName = 'CHPRE_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object dbF11ppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHPRE_RECBTO'
      FieldName = 'CHPRE_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object dbF11ppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTVISTA_VDVISTA'
      FieldName = 'CRTVISTA_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object dbF11ppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTVISTA_VDPRAZO'
      FieldName = 'CRTVISTA_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object dbF11ppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTVISTA_RECBTO'
      FieldName = 'CRTVISTA_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object dbF11ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTPRE_VDVISTA'
      FieldName = 'CRTPRE_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object dbF11ppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTPRE_VDPRAZO'
      FieldName = 'CRTPRE_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object dbF11ppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CRTPRE_RECBTO'
      FieldName = 'CRTPRE_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object dbF11ppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET_VDVISTA'
      FieldName = 'TICKET_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 15
    end
    object dbF11ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET_VDPRAZO'
      FieldName = 'TICKET_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object dbF11ppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET_RECBTO'
      FieldName = 'TICKET_RECBTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object dbF11ppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_DINHEIRO'
      FieldName = 'TOTAL_DINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object dbF11ppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHEQUE_VISTA'
      FieldName = 'TOTAL_CHEQUE_VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object dbF11ppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHEQUE_PRE'
      FieldName = 'TOTAL_CHEQUE_PRE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object dbF11ppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CARTAO_VISTA'
      FieldName = 'TOTAL_CARTAO_VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object dbF11ppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CARTAO_PRE'
      FieldName = 'TOTAL_CARTAO_PRE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object dbF11ppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_TROCO'
      FieldName = 'TOTAL_TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 23
    end
    object dbF11ppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_GERAL'
      FieldName = 'TOTAL_GERAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object dbF11ppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CHEQUE'
      FieldName = 'TOTAL_CHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 25
    end
    object dbF11ppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CARTAO'
      FieldName = 'TOTAL_CARTAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object dbF11ppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_TICKET'
      FieldName = 'TOTAL_TICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 27
    end
    object dbF11ppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_VALE_TROCO'
      FieldName = 'TOTAL_VALE_TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
    object dbF11ppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ENTCX'
      FieldName = 'TOTAL_ENTCX'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object dbF11ppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_SAIDACX'
      FieldName = 'TOTAL_SAIDACX'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object dbF11ppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_VDVISTA'
      FieldName = 'TOTAL_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 31
    end
    object dbF11ppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_VDPRAZO'
      FieldName = 'TOTAL_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 32
    end
    object dbF11ppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_PARCELADO'
      FieldName = 'TOTAL_PARCELADO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 33
    end
    object dbF11ppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_CAIXA'
      FieldName = 'TOTAL_CAIXA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 34
    end
    object dbF11ppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO_VDVISTA'
      FieldName = 'TROCO_VDVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 35
    end
    object dbF11ppField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO_VDPRAZO'
      FieldName = 'TROCO_VDPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 36
    end
    object dbF11ppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_ANTERIOR'
      FieldName = 'SALDO_ANTERIOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 37
    end
    object dbF11ppField39: TppField
      FieldAlias = 'CP_SLD_ANT'
      FieldName = 'CP_SLD_ANT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 38
    end
    object dbF11ppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXDINHEIRO'
      FieldName = 'AB_CXDINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 39
    end
    object dbF11ppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXCHEQUE'
      FieldName = 'AB_CXCHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 40
    end
    object dbF11ppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXTICKET'
      FieldName = 'AB_CXTICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 41
    end
    object dbF11ppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXTOTAL'
      FieldName = 'AB_CXTOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 42
    end
    object dbF11ppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXMOEDA'
      FieldName = 'AB_CXMOEDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 43
    end
    object dbF11ppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'AB_CXCHEQUE_PRAZO'
      FieldName = 'AB_CXCHEQUE_PRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 44
    end
  end
  object rptF11: TppReport
    AutoStop = False
    DataPipeline = dbF11
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4 210x297 mm'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 296900
    PrinterSetup.mmPaperWidth = 210100
    PrinterSetup.PaperSize = 9
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 418
    Top = 223
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbF11'
    object ppTitleBand10: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 16139
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 16140
        mmLeft = 0
        mmTop = 265
        mmWidth = 197644
        BandType = 1
      end
      object lblEmpresaF11: TppLabel
        UserName = 'lblEmpresaF11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resumo de Caixa '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5644
        mmLeft = 794
        mmTop = 1852
        mmWidth = 42122
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163513
        mmTop = 794
        mmWidth = 33338
        BandType = 1
      end
      object lblCaixaF11: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Caixa do Dia:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 26723
        BandType = 1
      end
    end
    object ppDetailBand9: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 245534
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape21'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 11642
        mmLeft = 0
        mmTop = 1323
        mmWidth = 197644
        BandType = 4
      end
      object ppShape7: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 33338
        mmLeft = 13494
        mmTop = 203730
        mmWidth = 78317
        BandType = 4
      end
      object ppShape5: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 37835
        mmLeft = 113242
        mmTop = 202936
        mmWidth = 78317
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 32544
        mmTop = 24606
        mmWidth = 137319
        BandType = 4
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 13494
        mmLeft = 32279
        mmTop = 146844
        mmWidth = 137319
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32544
        mmTop = 43127
        mmWidth = 30692
        BandType = 4
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32544
        mmTop = 18785
        mmWidth = 20638
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sld. Anterior:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3302
        mmLeft = 794
        mmTop = 2116
        mmWidth = 19844
        BandType = 4
      end
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 794
        mmWidth = 191294
        BandType = 4
      end
      object ppLabel78: TppLabel
        UserName = 'Label78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entradas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4586
        mmLeft = 265
        mmTop = 13494
        mmWidth = 16298
        BandType = 4
      end
      object ppLabel101: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dinheiro $$'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 34131
        mmTop = 19844
        mmWidth = 17357
        BandType = 4
      end
      object ppLine24: TppLine
        UserName = 'Line24'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 265
        mmTop = 18256
        mmWidth = 191823
        BandType = 4
      end
      object ppLabel122: TppLabel
        UserName = 'Label122'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 26723
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel123: TppLabel
        UserName = 'Label123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 30956
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel124: TppLabel
        UserName = 'Label124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebimento..........................R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 35454
        mmWidth = 76200
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 32544
        mmTop = 48948
        mmWidth = 137318
        BandType = 4
      end
      object ppLabel95: TppLabel
        UserName = 'Label95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebimento..........................R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 60061
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel100: TppLabel
        UserName = 'Label100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 55563
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel102: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 51329
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel103: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheques '#224' Vista'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 34131
        mmTop = 44186
        mmWidth = 24638
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape101'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32544
        mmTop = 67733
        mmWidth = 30692
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 32544
        mmTop = 73554
        mmWidth = 137318
        BandType = 4
      end
      object ppLabel104: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebimento..........................R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 84667
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel105: TppLabel
        UserName = 'Label1001'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 80169
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel106: TppLabel
        UserName = 'Label106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 75936
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel107: TppLabel
        UserName = 'Label107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheques '#224' Prazo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 34131
        mmTop = 68792
        mmWidth = 25696
        BandType = 4
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32544
        mmTop = 92340
        mmWidth = 30692
        BandType = 4
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 32544
        mmTop = 98161
        mmWidth = 137318
        BandType = 4
      end
      object ppLabel108: TppLabel
        UserName = 'Label108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebimento..........................R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 109273
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel109: TppLabel
        UserName = 'Label109'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 104775
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel110: TppLabel
        UserName = 'Label110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 34131
        mmTop = 100542
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel125: TppLabel
        UserName = 'Label125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Vista'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 34131
        mmTop = 93398
        mmWidth = 20743
        BandType = 4
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32279
        mmTop = 116681
        mmWidth = 30692
        BandType = 4
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 17198
        mmLeft = 32279
        mmTop = 122502
        mmWidth = 137318
        BandType = 4
      end
      object ppLabel126: TppLabel
        UserName = 'Label126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Recebimento..........................R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33602
        mmTop = 134144
        mmWidth = 76465
        BandType = 4
      end
      object ppLabel127: TppLabel
        UserName = 'Label127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 129646
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel128: TppLabel
        UserName = 'Label1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 125413
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel129: TppLabel
        UserName = 'Label129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Prazo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3881
        mmLeft = 33867
        mmTop = 117740
        mmWidth = 22013
        BandType = 4
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 5821
        mmLeft = 32279
        mmTop = 141023
        mmWidth = 30692
        BandType = 4
      end
      object ppLabel131: TppLabel
        UserName = 'Label131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Entradas Credi'#225'rio).R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 153988
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel132: TppLabel
        UserName = 'Label132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas & Trocas (Vista)..............R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 33867
        mmTop = 149754
        mmWidth = 76200
        BandType = 4
      end
      object ppLabel133: TppLabel
        UserName = 'Label133'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tickets'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 33867
        mmTop = 142082
        mmWidth = 11007
        BandType = 4
      end
      object ppLabel134: TppLabel
        UserName = 'Label134'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resumo de Vendas & Trocas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3881
        mmLeft = 265
        mmTop = 190765
        mmWidth = 48048
        BandType = 4
      end
      object ppLine23: TppLine
        UserName = 'Line23'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 196586
        mmWidth = 192352
        BandType = 4
      end
      object ppDBText61: TppDBText
        UserName = 'DBText61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DIN_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 26723
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DIN_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 30956
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText73: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DIN_RECBTO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 35454
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHVISTA_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 51329
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHVISTA_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 55563
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHVISTA_RECBTO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 60061
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText79: TppDBText
        UserName = 'DBText79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHPRE_RECBTO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 84667
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHPRE_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 80169
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHPRE_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 111125
        mmTop = 75936
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTVISTA_RECBTO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 109273
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText83: TppDBText
        UserName = 'DBText801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTVISTA_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 104775
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText84: TppDBText
        UserName = 'DBText84'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTVISTA_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 100542
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTPRE_RECBTO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 134144
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText802'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTPRE_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 129646
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTPRE_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110861
        mmTop = 125413
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText803'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TICKET_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110596
        mmTop = 153988
        mmWidth = 21590
        BandType = 4
      end
      object ppDBText89: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TICKET_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 110596
        mmTop = 149754
        mmWidth = 21590
        BandType = 4
      end
      object ppLabel77: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Vendas & Trocas '#224' Vista: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3881
        mmLeft = 794
        mmTop = 198438
        mmWidth = 52493
        BandType = 4
      end
      object ppLine21: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 14288
        mmTop = 203200
        mmWidth = 77523
        BandType = 4
      end
      object ppLabel80: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Vista..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 208757
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel81: TppLabel
        UserName = 'Label81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Prazo..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 213255
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel82: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheque '#224' Prazo..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 222250
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel87: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheque '#224' Vista..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 217753
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel88: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dinheiro ($$).....:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 204259
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel89: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Vendas & Trocas '#224' Prazo: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3881
        mmLeft = 97631
        mmTop = 197380
        mmWidth = 53340
        BandType = 4
      end
      object ppLine22: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 114036
        mmTop = 202407
        mmWidth = 77523
        BandType = 4
      end
      object ppLabel90: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Vista..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 207963
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel91: TppLabel
        UserName = 'Label91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cart'#227'o '#224' Prazo..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 212461
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel93: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheque '#224' Prazo..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 221457
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel94: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Cheque '#224' Vista..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 216959
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel97: TppLabel
        UserName = 'Label1010'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dinheiro ($$).....:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 203465
        mmWidth = 40217
        BandType = 4
      end
      object ppShape37: TppShape
        UserName = 'Shape201'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 26458
        mmLeft = 10848
        mmTop = 161661
        mmWidth = 180975
        BandType = 4
      end
      object ppLabel98: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl. Cheque '#224' vista:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 12171
        mmTop = 179388
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel99: TppLabel
        UserName = 'Label99'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl. Cheque '#224' Prazo:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 12171
        mmTop = 182827
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel113: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl.Cart'#227'o:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 82815
        mmTop = 164307
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel115: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Troco VDs.:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3598
        mmLeft = 82550
        mmTop = 173567
        mmWidth = 20955
        BandType = 4
      end
      object ppLabel118: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl.Dinheiro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 12171
        mmTop = 164307
        mmWidth = 24871
        BandType = 4
      end
      object ppLabel119: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vale Troco:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 142875
        mmTop = 168805
        mmWidth = 20902
        BandType = 4
      end
      object ppLabel120: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl.Cheque:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3598
        mmLeft = 142875
        mmTop = 164307
        mmWidth = 20955
        BandType = 4
      end
      object ppLabel121: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl.Ticket:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3598
        mmLeft = 82550
        mmTop = 169069
        mmWidth = 20955
        BandType = 4
      end
      object ppDBText52: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_DINHEIRO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 164307
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText53: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CARTAO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 164307
        mmWidth = 18521
        BandType = 4
      end
      object ppDBText54: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CHEQUE'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 165629
        mmTop = 164307
        mmWidth = 24342
        BandType = 4
      end
      object ppDBText55: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_TICKET'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 169069
        mmWidth = 18521
        BandType = 4
      end
      object ppLabel112: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl. Cart'#227'o '#224' vista:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 179123
        mmWidth = 37042
        BandType = 4
      end
      object ppLabel185: TppLabel
        UserName = 'Label185'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl. Cart'#227'o Prazo..:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 80698
        mmTop = 183092
        mmWidth = 37306
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Color = clOlive
        DataField = 'TOTAL_VALE_TROCO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 165365
        mmTop = 168805
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText57: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_TROCO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 103981
        mmTop = 173567
        mmWidth = 18785
        BandType = 4
      end
      object ppLine30: TppLine
        UserName = 'Line30'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 2117
        mmLeft = 11906
        mmTop = 178330
        mmWidth = 128852
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CHEQUE_VISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 49477
        mmTop = 179388
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CHEQUE_PRE'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 49477
        mmTop = 182827
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText60: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CARTAO_PRE'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 182827
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText63: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_CARTAO_VISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 118269
        mmTop = 179388
        mmWidth = 22490
        BandType = 4
      end
      object ppDBText65: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ENTCX'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3598
        mmLeft = 37306
        mmTop = 169069
        mmWidth = 23019
        BandType = 4
      end
      object ppLabel186: TppLabel
        UserName = 'Label186'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Entradas CX.:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 12171
        mmTop = 169069
        mmWidth = 24765
        BandType = 4
      end
      object ppLabel114: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sa'#237'das CX...:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3598
        mmLeft = 12171
        mmTop = 173567
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText64: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_SAIDACX'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3704
        mmLeft = 37306
        mmTop = 173567
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText66: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DIN_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 204259
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText67: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTVISTA_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 208757
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText69: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTPRE_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 213255
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText70: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHPRE_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 222250
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText71: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHVISTA_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 217753
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText72: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHPRE_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 221457
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText75: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHVISTA_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 216959
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText125'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTPRE_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 212461
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText126'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CRTVISTA_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 207963
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText127'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DIN_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 203465
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText128: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 198438
        mmWidth = 21960
        BandType = 4
      end
      object ppDBText129: TppDBText
        UserName = 'DBText129'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 197644
        mmWidth = 21960
        BandType = 4
      end
      object ppLabel187: TppLabel
        UserName = 'Label187'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl. Parcelado..R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 229923
        mmWidth = 40217
        BandType = 4
      end
      object ppDBText130: TppDBText
        UserName = 'DBText130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_PARCELADO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157692
        mmTop = 229923
        mmWidth = 21696
        BandType = 4
      end
      object ppDBText131: TppDBText
        UserName = 'DBText131'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TICKET_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 58208
        mmTop = 226484
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel188: TppLabel
        UserName = 'Label188'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tickets.........R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21696
        mmTop = 226484
        mmWidth = 40217
        BandType = 4
      end
      object ppDBText132: TppDBText
        UserName = 'DBText132'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TICKET_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157427
        mmTop = 225690
        mmWidth = 22225
        BandType = 4
      end
      object ppLabel189: TppLabel
        UserName = 'Label189'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Tickets.........R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 225690
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel130: TppLabel
        UserName = 'Label130'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ttl.Caixa:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 3895
        mmLeft = 142875
        mmTop = 173567
        mmWidth = 21167
        BandType = 4
      end
      object lblSaldoAnterior: TppLabel
        UserName = 'lblSaldoAnterior'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3302
        mmLeft = 20902
        mmTop = 2116
        mmWidth = 5503
        BandType = 4
      end
      object lblTotalCaixa: TppLabel
        UserName = 'lblTotalCaixa'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblTotalCaixa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 165365
        mmTop = 173567
        mmWidth = 24606
        BandType = 4
      end
      object ppDBText74: TppDBText
        UserName = 'DBText74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TROCO_VDVISTA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 57944
        mmTop = 230717
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel149: TppLabel
        UserName = 'Label149'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Troco...........R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 21431
        mmTop = 230717
        mmWidth = 40217
        BandType = 4
      end
      object ppDBText91: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TROCO_VDPRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 4233
        mmLeft = 157957
        mmTop = 234421
        mmWidth = 21696
        BandType = 4
      end
      object ppLabel150: TppLabel
        UserName = 'Label150'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Troco...........R$:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold, fsUnderline]
        Transparent = True
        mmHeight = 4586
        mmLeft = 121444
        mmTop = 234421
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel152: TppLabel
        UserName = 'Label152'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ch. Vista:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3302
        mmLeft = 38894
        mmTop = 2116
        mmWidth = 14023
        BandType = 4
      end
      object ppLabel159: TppLabel
        UserName = 'Label159'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dinheiro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 105569
        mmTop = 2116
        mmWidth = 14288
        BandType = 4
      end
      object ppLabel160: TppLabel
        UserName = 'Label160'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ticket:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 172773
        mmTop = 2116
        mmWidth = 10319
        BandType = 4
      end
      object ppLabel163: TppLabel
        UserName = 'Label1601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Sld. Abertura:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3175
        mmLeft = 1058
        mmTop = 7408
        mmWidth = 18785
        BandType = 4
      end
      object ppDBText92: TppDBText
        UserName = 'DBText203'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXCHEQUE'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3302
        mmLeft = 53446
        mmTop = 2116
        mmWidth = 13758
        BandType = 4
      end
      object ppDBText93: TppDBText
        UserName = 'DBText93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXDINHEIRO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 120650
        mmTop = 2116
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText99: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXTICKET'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 183357
        mmTop = 2117
        mmWidth = 13229
        BandType = 4
      end
      object ppDBText100: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXTOTAL'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 21167
        mmTop = 7144
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText101: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXCHEQUE_PRAZO'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 88371
        mmTop = 2116
        mmWidth = 13758
        BandType = 4
      end
      object ppLabel151: TppLabel
        UserName = 'Label151'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ch. Prazo:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3302
        mmLeft = 72231
        mmTop = 2116
        mmWidth = 15610
        BandType = 4
      end
      object ppDBText102: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'AB_CXMOEDA'
        DataPipeline = dbF11
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        DataPipelineName = 'dbF11'
        mmHeight = 3175
        mmLeft = 156369
        mmTop = 2117
        mmWidth = 14552
        BandType = 4
      end
      object ppLabel156: TppLabel
        UserName = 'Label156'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Moedas:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic, fsUnderline]
        Transparent = True
        mmHeight = 3302
        mmLeft = 141023
        mmTop = 2116
        mmWidth = 11430
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText103: TppDBText
        UserName = 'DBText103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 2910
        mmTop = 1852
        mmWidth = 109273
        BandType = 8
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppVendasADMAG: TppDBPipeline
    DataSource = dsVdAgrup
    UserName = 'VendasADMAG'
    Left = 344
    Top = 336
    object ppVendasADMAGppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 0
    end
    object ppVendasADMAGppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object ppVendasADMAGppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DINHEIRO'
      FieldName = 'DINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object ppVendasADMAGppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET'
      FieldName = 'TICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppVendasADMAGppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppVendasADMAGppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRES'
      FieldName = 'DESC_ACRES'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppVendasADMAGppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppVendasADMAGppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppVendasADMAGppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIQUIDO'
      FieldName = 'LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppVendasADMAGppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALE_TROCO'
      FieldName = 'VALE_TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppVendasADMAGppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppVendasADMAGppField12: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 11
    end
    object ppVendasADMAGppField13: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
  end
  object dsVdAgrup: TDataSource
    DataSet = DmCaixa.qryVendasADMCxAG
    Left = 376
    Top = 336
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 446
    Top = 161
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 415
    Top = 161
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppAppRepresentanteppField2: TppField
      FieldAlias = 'PARC_NOME_FANTASIA'
      FieldName = 'PARC_NOME_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppAppRepresentanteppField3: TppField
      FieldAlias = 'PARC_CNPJ'
      FieldName = 'PARC_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object ppAppRepresentanteppField4: TppField
      FieldAlias = 'PARC_FONE'
      FieldName = 'PARC_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object ppAppRepresentanteppField5: TppField
      FieldAlias = 'PARC_SITE'
      FieldName = 'PARC_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppAppRepresentanteppField6: TppField
      FieldAlias = 'PARC_EMAIL'
      FieldName = 'PARC_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppAppRepresentanteppField7: TppField
      FieldAlias = 'PARC_SLOGAN'
      FieldName = 'PARC_SLOGAN'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppAppRepresentanteppField8: TppField
      FieldAlias = 'PARC_SUPORTE_EMAIL'
      FieldName = 'PARC_SUPORTE_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAppRepresentanteppField9: TppField
      FieldAlias = 'PARC_SUPORTE_FONE'
      FieldName = 'PARC_SUPORTE_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object ppAppRepresentanteppField10: TppField
      FieldAlias = 'PARC_SUPORTE_SITE'
      FieldName = 'PARC_SUPORTE_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppAppRepresentanteppField11: TppField
      FieldAlias = 'PARC_LOGO'
      FieldName = 'PARC_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppAppRepresentanteppField12: TppField
      FieldAlias = 'PARC_TEXTO_RELATORIO'
      FieldName = 'PARC_TEXTO_RELATORIO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 11
    end
    object ppAppRepresentanteppField13: TppField
      FieldAlias = 'PARC_PATH_ICONE'
      FieldName = 'PARC_PATH_ICONE'
      FieldLength = 200
      DisplayWidth = 200
      Position = 12
    end
  end
end
