object Filtra_Fluxo_Caixas_Frm: TFiltra_Fluxo_Caixas_Frm
  Left = 99
  Top = 116
  Width = 636
  Height = 416
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Fluxo de Caixas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
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
    Width = 628
    Height = 389
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 203
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Filtra Fluxo de Caixas'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 11
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 175
      Top = 51
      Caption = 'Data Final'
      ParentFont = False
      Transparent = True
    end
    object lblini: TcxLabel
      Left = 185
      Top = 84
      AutoSize = False
      ParentFont = False
      Transparent = True
      Height = 13
      Width = 193
    end
    object Ini: TdxDateEdit
      Left = 67
      Top = 45
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 232
      Top = 45
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object BtnImprimir: TcxButton
      Left = 521
      Top = 46
      Width = 99
      Height = 26
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
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
    object GRID: TDBGrid
      Left = 7
      Top = 80
      Width = 613
      Height = 304
      DataSource = DSource
      Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SALDO_INICIAL'
          ReadOnly = True
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VENDAS_VISTA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARTAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHQ_PRAZO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PAGAR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'RECEBER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SALDO'
          ReadOnly = True
          Visible = True
        end>
    end
  end
  object Actions: TActionList
    Left = 129
    Top = 180
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object DSource: TDataSource
    DataSet = DmPlano.Ctb_Fluxo_Caixa
    Left = 280
    Top = 136
  end
end
