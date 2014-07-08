object frmHelpPDV: TfrmHelpPDV
  Left = 258
  Top = 188
  BorderIcons = [biSystemMenu]
  BorderStyle = bsNone
  Caption = 'Help de Fun'#231#245'es - Atalhos PDV'
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
    object Label1: TcxLabel
      Left = 16
      Top = 40
      Caption = 'Cupom Fiscal'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 24
      Top = 64
      Caption = 'Abre Cupom - Z'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 24
      Top = 80
      Caption = 'Insere Item - Enter'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 24
      Top = 96
      Caption = 'Insere Qtde - X'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 24
      Top = 128
      Caption = 'Fecha Cupom '#224' Prazo - P'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 24
      Top = 112
      Caption = 'Fecha Cupom '#224' Vista - A'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 288
      Top = 40
      Caption = 'Especiais'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 296
      Top = 80
      Caption = 'Altera Produto - F2'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 296
      Top = 96
      Caption = 'Altera Vendedor - F8'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 296
      Top = 112
      Caption = 'Localizar Produto  - F3'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 296
      Top = 64
      Caption = 'Form. de Fun'#231#245'es - F1'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 288
      Top = 196
      Caption = 'Fast Food'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 296
      Top = 236
      Caption = 'Transfere Mesas - F11'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 296
      Top = 220
      Caption = 'Seleciona Mesa - F9'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 16
      Top = 196
      Caption = 'Administrativos'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 24
      Top = 220
      Caption = 'Contas '#224' Pagar - Ctrl+P'
      ParentFont = False
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 24
      Top = 236
      Caption = 'Contas '#224' Receber - Ctrl+R'
      ParentFont = False
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 24
      Top = 252
      Caption = 'Movimentos - Ctrl+M'
      ParentFont = False
      Transparent = True
    end
    object Label19: TcxLabel
      Left = 296
      Top = 128
      Caption = 'Exibir Help - F5'
      ParentFont = False
      Transparent = True
    end
    object Label20: TcxLabel
      Left = 24
      Top = 268
      Caption = 'Calculadora - Ctrl+C'
      ParentFont = False
      Transparent = True
    end
    object Label21: TcxLabel
      Left = 24
      Top = 144
      Caption = 'Altera Nat. Opera'#231#227'o - Ctrl+N'
      ParentFont = False
      Transparent = True
    end
    object Label22: TcxLabel
      Left = 24
      Top = 160
      Caption = 'Imprime Venda - Ctrl+V'
      ParentFont = False
      Transparent = True
    end
    object Label23: TcxLabel
      Left = 296
      Top = 144
      Caption = 'Form. de Fun'#231#245'es Aux.- F6'
      ParentFont = False
      Transparent = True
    end
    object Label24: TcxLabel
      Left = 16
      Top = 8
      Caption = 'Help Fun'#231#245'es - Atalhos PDV'
      ParentFont = False
      Transparent = True
    end
    object Label25: TcxLabel
      Left = 24
      Top = 176
      Caption = 'Fechar PDV - G ou Alt+F4'
      ParentFont = False
      Transparent = True
    end
  end
  object ActLista: TActionList
    Left = 466
    Top = 82
    object ActSair: TAction
      Caption = 'Cancelar'
      ShortCut = 27
      OnExecute = ActSairExecute
    end
    object ActLeituraX: TAction
      Caption = 'Leitura X'
    end
    object ActCancelaIUltimotem: TAction
      Caption = 'Cancela '#218'ltimo Item'
    end
    object ActCancelaItem: TAction
      Caption = 'Cancela Item'
    end
    object ActCancelaCupom: TAction
      Caption = 'ActCancelaCupom'
    end
    object ActAbreGaveta: TAction
      Caption = 'Abre Gaveta'
    end
    object ActAcrescimoDesconto: TAction
      Caption = 'Acr'#233'scimo/Desconto'
    end
    object ActLeituraZ: TAction
      Caption = 'Leitura Z'
    end
    object ActConsultaProd: TAction
      Caption = 'ActConsultaProd'
    end
    object ActArredondaTrunca: TAction
      Caption = 'Arredondar Truncar'
    end
    object ActNominal: TAction
      Tag = 1
      Caption = 'Nominal'
    end
    object ActExtrato: TAction
      Tag = 1
      Caption = 'Extrato'
    end
    object ActModoInsercao: TAction
      Caption = 'Modo Inser'#231#227'o'
    end
    object ActSetaPedido: TAction
      Caption = 'Seta N'#186' Pedido'
    end
  end
end
