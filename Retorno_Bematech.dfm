object FrmRetornoBematech: TFrmRetornoBematech
  Left = 292
  Top = 74
  BorderStyle = bsNone
  Caption = 'Impressora Fiscal'
  ClientHeight = 382
  ClientWidth = 238
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 3
    Top = 2
    Width = 233
    Height = 377
    Caption = 'Retorno da Impressora'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 0
    object Label2: TLabel
      Left = 40
      Top = 20
      Width = 25
      Height = 13
      Caption = 'ACK'
    end
    object Label3: TLabel
      Left = 192
      Top = 20
      Width = 26
      Height = 13
      Caption = 'NAK'
    end
    object GroupBox2: TGroupBox
      Left = 8
      Top = 40
      Width = 217
      Height = 161
      Caption = 'ST1'
      TabOrder = 0
      object Label4: TLabel
        Left = 8
        Top = 24
        Width = 117
        Height = 13
        Caption = 'BIT 7 - Fim de Papel'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 40
        Width = 116
        Height = 13
        Caption = 'BIT 6 - Pouco Papel'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 8
        Top = 56
        Width = 132
        Height = 13
        Caption = 'BIT 5 - Erro no Rel'#243'gio'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 8
        Top = 72
        Width = 164
        Height = 13
        Caption = 'BIT 4 - Impressora em ERRO'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 8
        Top = 88
        Width = 199
        Height = 13
        Caption = 'BIT 3 - CMD n'#227'o iniciado com ESC'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 8
        Top = 104
        Width = 162
        Height = 13
        Caption = 'BIT 2 - Comando Inexistente'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 8
        Top = 120
        Width = 123
        Height = 13
        Caption = 'BIT 1 - Cupom Aberto'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 8
        Top = 136
        Width = 198
        Height = 13
        Caption = 'BIT 0 - N'#186' de Par'#226'metros Inv'#225'lidos'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 208
      Width = 217
      Height = 161
      Caption = 'ST2'
      TabOrder = 1
      object Label12: TLabel
        Left = 8
        Top = 24
        Width = 197
        Height = 13
        Caption = 'BIT 7 - Tipo de Par'#226'metro Inv'#225'lido'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 8
        Top = 40
        Width = 171
        Height = 13
        Caption = 'BIT 6 - Mem'#243'ria Fiscal Lotada'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 9
        Top = 56
        Width = 143
        Height = 13
        Caption = 'BIT 5 - CMOS n'#227'o Vol'#225'til'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 72
        Width = 190
        Height = 13
        Caption = 'BIT 4 - Al'#237'quota N'#227'o Programada'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 8
        Top = 88
        Width = 143
        Height = 13
        Caption = 'BIT 3 - Al'#237'quotas lotadas'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 8
        Top = 104
        Width = 191
        Height = 13
        Caption = 'BIT 2 - Cancelamento '#241' Permitido'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 8
        Top = 120
        Width = 189
        Height = 13
        Caption = 'BIT 1 - CGC/IE n'#227'o Programados'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 8
        Top = 136
        Width = 185
        Height = 13
        Caption = 'BIT 0 - Comando n'#227'o Executado'
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RadioButton1: TRadioButton
      Left = 16
      Top = 19
      Width = 17
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 2
    end
    object RadioButton2: TRadioButton
      Left = 168
      Top = 19
      Width = 17
      Height = 17
      Caption = 'RadioButton2'
      TabOrder = 3
    end
  end
  object ActionList1: TActionList
    Left = 147
    Top = 74
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
