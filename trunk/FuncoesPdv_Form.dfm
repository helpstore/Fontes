object FrmFuncoesPdv: TFrmFuncoesPdv
  Left = 323
  Top = 169
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = ' Fun'#231#245'es do Pdv '
  ClientHeight = 313
  ClientWidth = 511
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnFuncoes: TPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 313
    Align = alClient
    Alignment = taRightJustify
    BevelInner = bvRaised
    BevelWidth = 2
    BorderStyle = bsSingle
    Color = 7280169
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 12615680
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object BtnLeiturax: TcxButton
      Left = 256
      Top = 98
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActLeituraX
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object BtnCancelaUltimoItem: TcxButton
      Left = 14
      Top = 55
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActCancelaIUltimotem
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object BtnCancelaItem: TcxButton
      Left = 14
      Top = 98
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActCancelaItem
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object brncancelarcupom: TcxButton
      Left = 14
      Top = 141
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActCancelaCupom
      Cancel = True
      Caption = 'Cancela Cupom'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object btnabregaveta: TcxButton
      Left = 256
      Top = 15
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActAbreGaveta
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object btnacrescdesc: TcxButton
      Left = 256
      Top = 55
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActAcrescimoDesconto
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object btnsair: TcxButton
      Left = 16
      Top = 271
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActSair
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object RzBitBtn1: TcxButton
      Left = 256
      Top = 141
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActLeituraZ
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 10
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object BtnConsulta: TcxButton
      Left = 14
      Top = 15
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActConsultaProd
      Cancel = True
      Caption = 'Consulta Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object BtnArredondaTrunca: TcxButton
      Left = 256
      Top = 185
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActModoInsercao
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object BtnNominal: TcxButton
      Left = 14
      Top = 228
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActNominal
      Cancel = True
      Caption = 'Cupom Nominal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object RzBitBtn2: TcxButton
      Left = 15
      Top = 185
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActExtrato
      Cancel = True
      Caption = 'Baixa de Clientes'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
    object RzBitBtn3: TcxButton
      Left = 256
      Top = 228
      Width = 230
      Height = 25
      Cursor = crHandPoint
      Action = ActSetaPedido
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 52984
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnEnter = BtnConsultaEnter
      OnExit = BtnConsultaExit
      NumGlyphs = 2
    end
  end
  object ActLista: TActionList
    Left = 282
    Top = 106
    object ActSair: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActSairExecute
    end
    object ActLeituraX: TAction
      Caption = 'Leitura X'
      OnExecute = ActLeituraXExecute
    end
    object ActCancelaIUltimotem: TAction
      Caption = 'Cancela '#218'ltimo Item'
      OnExecute = ActCancelaIUltimotemExecute
    end
    object ActCancelaItem: TAction
      Caption = 'Cancela Item'
      OnExecute = ActCancelaItemExecute
    end
    object ActCancelaCupom: TAction
      Caption = 'ActCancelaCupom'
      OnExecute = ActCancelaCupomExecute
    end
    object ActAbreGaveta: TAction
      Caption = 'Abre Gaveta'
      OnExecute = ActAbreGavetaExecute
    end
    object ActAcrescimoDesconto: TAction
      Caption = 'Acr'#233'scimo/Desconto'
      OnExecute = ActAcrescimoDescontoExecute
    end
    object ActLeituraZ: TAction
      Caption = 'Leitura Z'
      OnExecute = ActLeituraZExecute
    end
    object ActConsultaProd: TAction
      Caption = 'ActConsultaProd'
      OnExecute = ActConsultaProdExecute
    end
    object ActArredondaTrunca: TAction
      Caption = 'Arredondar Truncar'
      OnExecute = ActArredondaTruncaExecute
    end
    object ActNominal: TAction
      Tag = 1
      Caption = 'Nominal'
      OnExecute = ActNominalExecute
    end
    object ActExtrato: TAction
      Tag = 1
      Caption = 'Extrato'
      OnExecute = ActExtratoExecute
    end
    object ActModoInsercao: TAction
      Caption = 'Modo Inser'#231#227'o'
      OnExecute = ActModoInsercaoExecute
    end
    object ActSetaPedido: TAction
      Caption = 'Seta N'#186' Pedido'
      OnExecute = ActSetaPedidoExecute
    end
  end
end
