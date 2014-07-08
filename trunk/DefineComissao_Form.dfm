object frmRedefineComissao: TfrmRedefineComissao
  Left = 294
  Top = 236
  BorderStyle = bsDialog
  Caption = 'Redefinir Comiss'#227'o'
  ClientHeight = 209
  ClientWidth = 359
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIForm
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 359
    Height = 209
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Redefinir Comiss'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 276
      Top = 49
      Caption = 'Valor (%)'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 9
      Top = 49
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 97
      Top = 49
      Caption = 'N'#186' NF'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 185
      Top = 49
      Caption = 'Com. Anterior'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 9
      Top = 90
      Caption = 'Vendedor'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 9
      Top = 130
      Caption = 'Hist'#243'rico do Faturamento'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 0
      Top = 174
      Width = 359
      Height = 35
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 3
      DesignSize = (
        359
        35)
      object btnOk: TcxButton
        Left = 192
        Top = 5
        Width = 77
        Height = 24
        Cursor = crHandPoint
        Action = ActOK
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555905555555555555999055555555555599905555
          5555555999990555555555999999055555555799059990555555790555599055
          5555555555599905555555555555990555555555555559905555555555555579
          0555555555555557905555555555555559905555555555555555}
      end
      object BtnCancelar: TcxButton
        Left = 271
        Top = 5
        Width = 83
        Height = 24
        Cursor = crHandPoint
        Action = ActFechar
        Anchors = [akRight, akBottom]
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          04000000000080000000120B0000120B00001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
          DADAADADADA00DADA1FDDAD1FA0000DADADAAD111FA00DAD1FADDA111FDADAD1
          FADAADA111F00D11FDADDADA111F011FDADAADADA11111FDADADDADADA111FDA
          DADAADADA11111FDADADDADA111F011ADADAAD1111F00011FDADD1111F0000D1
          1FDAA11FAD0000AD11FDDADADAD00ADADADAADADADADADADADAD}
      end
    end
    object edtPorcentagem: TdxDBCalcEdit
      Left = 272
      Top = 65
      Width = 77
      Hint = 'Pre'#231'o de Custo.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = edtPorcentagemEnter
      OnExit = edtPorcentagemExit
      OnKeyDown = edtPorcentagemKeyDown
      Alignment = taRightJustify
      DataField = 'valor'
      DataSource = dsComissao
      ButtonGlyph.Data = {
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
      PopupBorder = pbFrame3D
      StoredValues = 1
    end
    object edtComissaoOld: TdxDBCalcEdit
      Left = 184
      Top = 65
      Width = 81
      Hint = 'Pre'#231'o de Custo.'
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      TabStop = False
      OnEnter = edtPorcentagemEnter
      OnExit = edtPorcentagemExit
      OnKeyDown = edtPorcentagemKeyDown
      Alignment = taRightJustify
      DataField = 'OldCom'
      DataSource = dsComissao
      ReadOnly = True
      ButtonGlyph.Data = {
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
      PopupBorder = pbFrame3D
      StoredValues = 65
    end
    object cmbVendedor: TdxDBLookupEdit
      Left = 9
      Top = 104
      Width = 344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = edtPorcentagemEnter
      OnExit = edtPorcentagemExit
      OnKeyDown = edtPorcentagemKeyDown
      DataField = 'vendedor'
      DataSource = dsComissao
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsVendedor
      LookupKeyValue = Null
    end
    object dxDBEdit20: TdxDBEdit
      Left = 9
      Top = 146
      Width = 344
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 2
      OnEnter = edtPorcentagemEnter
      OnExit = edtPorcentagemExit
      OnKeyDown = edtPorcentagemKeyDown
      DataField = 'HISTORICO'
      DataSource = dsComissao
    end
    object EdCodigo: TdxDBEdit
      Left = 8
      Top = 65
      Width = 81
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.HotTrack = True
      TabOrder = 5
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'codigo'
      DataSource = dsComissao
      ReadOnly = True
      StoredValues = 64
    end
    object EdNF: TdxDBEdit
      Left = 95
      Top = 65
      Width = 82
      Color = clInactiveCaption
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.HotTrack = True
      TabOrder = 6
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'nf'
      DataSource = dsComissao
      ReadOnly = True
      StoredValues = 64
    end
  end
  object IBSQL: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update fat_vendas vd set vd.pct_comissao = :pct, vd.vendedor = :' +
        'vendedor, vd.historico = :historico'
      
        'where vd.cnpj  = :cnpj and vd.codigo = :codigo and vd.pessoa_fj ' +
        '= :pessoa_fj')
    Transaction = DmApp.Transaction
    Left = 232
    Top = 8
  end
  object Actions: TActionList
    Left = 264
    Top = 8
    object ActFechar: TAction
      Caption = '&Cancelar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOK: TAction
      Caption = 'OK'
      OnExecute = ActOKExecute
    end
  end
  object mtbComissao: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 200
    Top = 8
    object mtbComissaovendedor: TIntegerField
      FieldName = 'vendedor'
    end
    object mtbComissaohistorico: TStringField
      FieldName = 'historico'
      Size = 100
    end
    object mtbComissaoOldCom: TFloatField
      FieldName = 'OldCom'
      DisplayFormat = '###,##0.00'
    end
    object mtbComissaopessoa: TIntegerField
      FieldName = 'pessoa'
    end
    object mtbComissaonf: TIntegerField
      FieldName = 'nf'
    end
    object mtbComissaocodigo: TIntegerField
      FieldName = 'codigo'
    end
    object mtbComissaovalor: TFloatField
      FieldName = 'valor'
      DisplayFormat = '###,##0.00'
    end
  end
  object dsComissao: TDataSource
    AutoEdit = False
    DataSet = mtbComissao
    Left = 128
    Top = 88
  end
  object DsVendedor: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelVendedor
    Left = 176
    Top = 88
  end
end
