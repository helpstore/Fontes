object frmGerarGeolocalizacao: TfrmGerarGeolocalizacao
  Left = 478
  Top = 161
  Width = 456
  Height = 246
  Caption = 'Gerar Coordenadas de Geolocaliza'#231#227'o'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 151
    Width = 440
    Height = 57
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object RzBitBtn1: TcxButton
      Left = 9
      Top = 18
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Action = ActOK
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object RzBitBtn2: TcxButton
      Left = 103
      Top = 18
      Width = 91
      Height = 25
      Cursor = crHandPoint
      Action = ActClose
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object bar: TProgressBar
      Left = 208
      Top = 24
      Width = 225
      Height = 17
      TabOrder = 2
    end
    object lblCont: TcxLabel
      Left = 207
      Top = 8
      Caption = '.'
    end
    object lblTotal: TcxLabel
      Left = 404
      Top = 8
      Caption = '.'
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 440
    Height = 151
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 1
    object b2: TBevel
      Left = 9
      Top = 31
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 0
      Caption = 'Gerar Coordenadas'
      ParentColor = False
      ParentFont = False
      Style.BorderColor = clWhite
      Style.BorderStyle = ebsNone
      Style.Color = clWhite
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clActiveCaption
      Style.Font.Height = -19
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = 8404992
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = True
      Style.IsFontAssigned = True
      Properties.LineOptions.InnerColor = clBtnShadow
      Properties.LineOptions.OuterColor = clBtnFace
      Transparent = True
    end
    object cxRadioGroup1: TcxRadioGroup
      Left = 8
      Top = 40
      Caption = 'Geral'
      Properties.Columns = 2
      Properties.Items = <
        item
          Caption = 'Clientes'
          Value = '1'
        end
        item
          Caption = 'Ordens de Servi'#231'o'
          Value = '2'
        end
        item
          Caption = 'Fornecedores'
          Value = '2'
        end
        item
          Caption = 'Contratos'
          Value = '4'
        end>
      ItemIndex = 0
      TabOrder = 1
      Height = 93
      Width = 422
    end
  end
  object Actions: TActionList
    Left = 216
    Top = 24
    object ActOK: TAction
      Tag = 1
      Caption = 'OK'
      OnExecute = ActOKExecute
    end
    object ActClose: TAction
      Caption = 'Fechar'
    end
  end
  object QryUpdate: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update glo_pessoas_fj psa set psa.map_lat = :lat, psa.map_long =' +
        ' :long'
      'where psa.codigo = :codigo and psa.cnpj = :cnpj')
    Transaction = DmApp.Transaction
    Left = 371
    Top = 86
  end
  object qryConsulta: TIBQuery
    Tag = 1
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select psa.codigo, psa.nome_razao, psa.map_lat, psa.map_long, lg' +
        'd.nome logradouro , psa.numero, cdd.nome cidade, psa.uf from glo' +
        '_pessoas_fj psa'
      
        'left join glo_logradouros lgd on (lgd.cnpj = psa.cnpj and psa.en' +
        'dereco = lgd.codigo)'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and cdd.codigo' +
        ' = psa.cidade)'
      'where psa.cnpj = :cnpj and coalesce(psa.map_lat,'#39#39') = '#39#39)
    Left = 329
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryConsultaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryConsultaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object qryConsultaMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object qryConsultaMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
    object qryConsultaLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object qryConsultaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object qryConsultaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object qryConsultaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object HTTP: TIdHTTP
    MaxLineAction = maException
    ReadTimeout = 0
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = 0
    Request.ContentRangeStart = 0
    Request.ContentType = 'text/html'
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 328
    Top = 56
  end
  object XMLDocument: TXMLDocument
    Left = 360
    Top = 56
    DOMVendorDesc = 'MSXML'
  end
end
