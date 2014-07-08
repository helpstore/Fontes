object FrmSelecionaCaixas: TFrmSelecionaCaixas
  Left = 279
  Top = 130
  Width = 359
  Height = 281
  BorderIcons = [biSystemMenu]
  Caption = 'Seleciona Caixas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PnClient: TPanel
    Left = 0
    Top = 0
    Width = 343
    Height = 202
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Shape1: TShape
      Left = 11
      Top = 36
      Width = 327
      Height = 1
      Pen.Color = clBtnShadow
    end
    object lblsenha: TcxLabel
      Left = 194
      Top = 11
      Caption = 'Senha'
      ParentFont = False
      Transparent = True
    end
    object lbluser: TcxLabel
      Left = 14
      Top = 11
      Caption = 'Usu'#225'rio'
      ParentFont = False
      Transparent = True
    end
    object cmbUsuario: TdxLookupEdit
      Left = 65
      Top = 8
      Width = 112
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
      OnEnter = cmbUsuarioEnter
      OnKeyDown = cmbUsuarioKeyDown
      ListFieldName = 'Login'
      KeyFieldName = 'USUARIO'
      ListSource = DsUsuario
      LookupKeyValue = Null
    end
    object edSenha: TdxEdit
      Left = 239
      Top = 8
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
      OnExit = edSenhaExit
      OnKeyDown = cmbUsuarioKeyDown
      PasswordChar = '*'
    end
    object GRID: TDBGrid
      Left = 15
      Top = 42
      Width = 327
      Height = 157
      BorderStyle = bsNone
      Ctl3D = False
      DataSource = DsCaixa
      FixedColor = clActiveBorder
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Options = [dgTitles, dgColumnResize, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ParentCtl3D = False
      ParentFont = False
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = 8404992
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnKeyPress = GRIDKeyPress
      Columns = <
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'DATA'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Alignment = taCenter
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Nome'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Title.Caption = ' Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = [fsBold]
          Width = 186
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TURNO'
          Title.Caption = 'Turno'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clBlack
          Title.Font.Height = -11
          Title.Font.Name = 'MS Sans Serif'
          Title.Font.Style = [fsBold]
          Width = 48
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 202
    Width = 343
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BtnOk: TcxButton
      Left = 8
      Top = 8
      Width = 85
      Height = 25
      Action = ActOk
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnCancelar: TcxButton
      Left = 93
      Top = 8
      Width = 85
      Height = 25
      Action = ActCancelar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnAbreCaixa: TcxButton
      Left = 240
      Top = 8
      Width = 106
      Height = 25
      Action = ActAbreCaixa
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
  end
  object DsCaixa: TDataSource
    AutoEdit = False
    DataSet = Caixas
    OnDataChange = DsCaixaDataChange
    Left = 80
    Top = 72
  end
  object DsUsuario: TDataSource
    AutoEdit = False
    DataSet = Caixas_Usuario
    Left = 128
    Top = 72
  end
  object ActLista: TActionList
    Left = 184
    Top = 72
    object ActOk: TAction
      Caption = '&Ok  (F9)'
      ShortCut = 120
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = '&Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActAbreCaixa: TAction
      Tag = 1
      Caption = 'Abrir Caixa'
      Enabled = False
      ShortCut = 115
      OnExecute = ActAbreCaixaExecute
    end
  end
  object Caixas_Usuario: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    DeleteSQL.Strings = (
      'delete from FAT_USUARIOS_CAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into FAT_USUARIOS_CAIXA'
      '  (CNPJ, CONTA, USUARIO, TURNO)'
      'values'
      '  (:CNPJ, :CONTA, :USUARIO, :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  TURNO'
      'from FAT_USUARIOS_CAIXA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CONTA, '
      '          USUARIO,'
      '          TURNO'
      'from FAT_USUARIOS_CAIXA'
      'where CNPJ = :CNPJ and ATIVO = '#39'S'#39)
    ModifySQL.Strings = (
      'update FAT_USUARIOS_CAIXA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  USUARIO = :USUARIO,'
      '  TURNO = :TURNO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  USUARIO = :OLD_USUARIO')
    Left = 128
    Top = 128
    object Caixas_UsuarioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Caixas_UsuarioCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXA"."CONTA"'
      Required = True
    end
    object Caixas_UsuarioUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXA"."USUARIO"'
      Required = True
    end
    object Caixas_UsuarioNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = SelUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 50
      Lookup = True
    end
    object Caixas_UsuarioLogin: TStringField
      FieldKind = fkLookup
      FieldName = 'Login'
      LookupDataSet = SelUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'LOGIN'
      KeyFields = 'USUARIO'
      Size = 10
      Lookup = True
    end
    object Caixas_UsuarioTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_USUARIOS_CAIXA"."TURNO"'
    end
  end
  object Caixas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS'
      '  (CHEQUE, CNPJ, CONTA, DATA, DINHEIRO, SALDO_ANTERIOR, TICKET, '
      'USUARIO, '
      '   TURNO)'
      'values'
      
        '  (:CHEQUE, :CNPJ, :CONTA, :DATA, :DINHEIRO, :SALDO_ANTERIOR, :T' +
        'ICKET, '
      '   :USUARIO, :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  DATA,'
      '  DINHEIRO,'
      '  TICKET,'
      '  CHEQUE,'
      '  SALDO_ANTERIOR,'
      '  SALDO,'
      '  FECHADO,'
      '  TROCO,'
      '  SANGRIA,'
      '  NOTAS,'
      '  PRODUTOS,'
      '  CARTAO,'
      '  RECEBIMENTOS,'
      '  MOEDAS,'
      '  CHEQUE_PRAZO,'
      '  OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS,'
      '  TROCO_INICIAL,'
      '  HAVER,'
      '  BAIXA_HAVER,'
      '  PLANILHA,'
      '  DESCONTOS,'
      '  JUROS,'
      '  ACRESCIMOS,'
      '  TROCO_VENDAS,'
      '  VENDAS_VISTA,'
      '  VENDAS_PRAZO,'
      '  SALDO_PRAZO,'
      '  SALDO_VISTA,'
      '  PAGAMENTOS,'
      '  SALDO_CHEQUE,'
      '  SALDO_CHEQUE_CONC_DATA,'
      '  SALDO_CONTAS_BANCARIAS,'
      '  SALDO_RECEBER,'
      '  SALDO_PAGAR,'
      '  TURNO'
      'from FAT_CAIXAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'select CHEQUE, '
      '          CNPJ, '
      '          CONTA, '
      '          DATA, '
      '          DINHEIRO, '
      '          SALDO_ANTERIOR, '
      '          TICKET, '
      '          USUARIO,'
      '          TURNO'
      'from FAT_CAIXAS'
      'where CNPJ = :CNPJ AND FECHADO = '#39'N'#39)
    ModifySQL.Strings = (
      'update FAT_CAIXAS'
      'set'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DINHEIRO = :DINHEIRO,'
      '  SALDO_ANTERIOR = :SALDO_ANTERIOR,'
      '  TICKET = :TICKET,'
      '  USUARIO = :USUARIO,'
      '  TURNO = :TURNO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO')
    Left = 200
    Top = 128
    object CaixasCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CaixasCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS"."CONTA"'
      Required = True
    end
    object CaixasDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_ANTERIOR: TFloatField
      DisplayLabel = 'Saldo Ant.'
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXAS"."SALDO_ANTERIOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS"."USUARIO"'
      Required = True
    end
    object CaixasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS"."DATA"'
    end
    object CaixasNome: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = SelUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 50
      Lookup = True
    end
    object CaixasTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS"."TURNO"'
    end
  end
  object SelUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CODIGO, '
      '          LOGIN, '
      '          NOME, '
      '          PERFIL, '
      '          SENHA'
      'from SIS_USUARIOS')
    Left = 264
    Top = 128
    object SelUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      Required = True
    end
    object SelUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object SelUsuarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelUsuarioPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
      Required = True
    end
    object SelUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
      Required = True
    end
  end
  object Usuario_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Usuario_CaixaBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          CONTA_DESCONTOS, '
      '          CONTA_DIFERENCA, '
      '          VENDEDOR '
      'from PST_VENDEDOR_CAIXA'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 32
    Top = 136
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
    object Usuario_CaixaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"PST_VENDEDOR_CAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Usuario_CaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PST_VENDEDOR_CAIXA"."CODIGO"'
      Required = True
    end
    object Usuario_CaixaCONTA_DESCONTOS: TIntegerField
      FieldName = 'CONTA_DESCONTOS'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DESCONTOS"'
      Required = True
    end
    object Usuario_CaixaCONTA_DIFERENCA: TIntegerField
      FieldName = 'CONTA_DIFERENCA'
      Origin = '"PST_VENDEDOR_CAIXA"."CONTA_DIFERENCA"'
      Required = True
    end
    object Usuario_CaixaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PST_VENDEDOR_CAIXA"."VENDEDOR"'
    end
  end
end
