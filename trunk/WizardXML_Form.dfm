object frmImportaNFe: TfrmImportaNFe
  Left = 0
  Top = 2
  Width = 1296
  Height = 776
  Caption = 'Importar NFe'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxGroupBox3: TcxGroupBox
    Left = 0
    Top = 705
    Align = alBottom
    Alignment = alBottomRight
    Anchors = [akRight, akBottom]
    TabOrder = 2
    Height = 33
    Width = 1280
    object btnAnterior: TcxButton
      Left = 9
      Top = 2
      Width = 125
      Height = 25
      Caption = '<< Anterior'
      Enabled = False
      TabOrder = 0
      OnClick = btnAnteriorClick
    end
    object btnProximo: TcxButton
      Left = 143
      Top = 2
      Width = 125
      Height = 25
      Caption = 'Pr'#243'ximo >>'
      TabOrder = 1
      OnClick = btnProximoClick
    end
  end
  object WebBrowser1: TWebBrowser
    Left = 758
    Top = 76
    Width = 96
    Height = 58
    TabStop = False
    TabOrder = 1
    OnProgressChange = WebBrowser1ProgressChange
    OnDocumentComplete = WebBrowser1DocumentComplete
    ControlData = {
      4C000000EC090000FF0500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E12620A000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object pgcImportacao: TcxPageControl
    Left = 0
    Top = 0
    Width = 1280
    Height = 705
    ActivePage = tbs2
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 701
    ClientRectLeft = 4
    ClientRectRight = 1276
    ClientRectTop = 27
    object tbs1: TcxTabSheet
      Caption = 'Selecionar Arquivo'
      ImageIndex = 0
      object gRecuperaXML: TcxGroupBox
        Left = 0
        Top = 109
        Align = alClient
        TabOrder = 0
        Visible = False
        Height = 565
        Width = 1272
        object PageControl1: TcxPageControl
          Left = 3
          Top = 225
          Width = 1266
          Height = 337
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 0
          ClientRectBottom = 333
          ClientRectLeft = 4
          ClientRectRight = 1262
          ClientRectTop = 27
          object TabSheet1: TcxTabSheet
            Caption = 'Dados HTML'
            object Memo2: TcxMemo
              Left = 0
              Top = 0
              Align = alClient
              TabOrder = 0
              Height = 306
              Width = 1258
            end
          end
          object TabSheet2: TcxTabSheet
            Caption = 'Dados XML'
            ImageIndex = 1
            object Panel1: TcxGroupBox
              Left = 0
              Top = 0
              Align = alClient
              TabOrder = 0
              Height = 306
              Width = 1258
              object WBXML: TWebBrowser
                Left = 2
                Top = 18
                Width = 1254
                Height = 286
                Align = alClient
                TabOrder = 0
                ControlData = {
                  4C000000626E0000771400000000000000000000000000000000000000000000
                  000000004C000000000000000000000001000000E0D057007335CF11AE690800
                  2B2E126208000000000000004C0000000114020000000000C000000000000046
                  8000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000100000000000000000000000000000000000000}
              end
            end
          end
        end
        object cxGroupBox1: TcxGroupBox
          Left = 3
          Top = 21
          Align = alTop
          Style.BorderStyle = ebsNone
          TabOrder = 1
          Transparent = True
          Height = 204
          Width = 1266
          object ProgressBar1: TcxProgressBar
            Left = 10
            Top = 184
            TabOrder = 0
            Visible = False
            Width = 644
          end
          object lblStatus: TcxLabel
            Left = 10
            Top = 165
            AutoSize = False
            Caption = 'Conectando a SEFAZ'
            FocusControl = ProgressBar1
            Properties.Alignment.Horz = taCenter
            Transparent = True
            Visible = False
            Height = 17
            Width = 649
            AnchorX = 335
          end
          object Panel3: TcxGroupBox
            Left = 9
            Top = 114
            TabOrder = 2
            Height = 49
            Width = 351
            object btnPegarHTML: TcxButton
              Left = 2
              Top = 14
              Width = 89
              Height = 27
              Caption = 'Recuperar XML'
              Enabled = False
              TabOrder = 0
              OnClick = btnPegarHTMLClick
            end
            object btnNovaConsulta: TcxButton
              Left = 96
              Top = 14
              Width = 76
              Height = 27
              Caption = 'Nova Consulta'
              Enabled = False
              TabOrder = 1
              OnClick = btnNovaConsultaClick
            end
          end
          object Panel2: TcxGroupBox
            Left = 9
            Top = 10
            TabOrder = 3
            Height = 101
            Width = 351
            object Label1: TcxLabel
              Left = 8
              Top = 8
              Caption = 'Chave de acesso da nota fiscal: '
              Transparent = True
            end
            object Label2: TcxLabel
              Left = 8
              Top = 48
              Caption = 'Digite o c'#243'digo da imagem ao lado: '
              Transparent = True
            end
            object edtChaveNFe: TcxTextEdit
              Left = 8
              Top = 24
              TabOrder = 0
              OnKeyDown = edtChaveNFeKeyDown
              Width = 329
            end
            object edtCaptcha: TcxTextEdit
              Left = 8
              Top = 63
              TabOrder = 1
              OnKeyDown = edtChaveNFeKeyDown
              Width = 73
            end
          end
          object Panel4: TcxGroupBox
            Left = 361
            Top = 9
            TabOrder = 4
            Height = 156
            Width = 293
            object Image1: TImage
              Left = 14
              Top = 15
              Width = 262
              Height = 105
              Center = True
            end
            object Label3: TcxLabel
              Left = 1
              Top = 129
              Cursor = crHandPoint
              AutoSize = False
              Caption = 'Clique aqui caso n'#227'o consiga visualizar a imagem'
              ParentColor = False
              ParentFont = False
              Style.BorderColor = clBlack
              Style.BorderStyle = ebsNone
              Style.Color = clSilver
              Style.Edges = []
              Style.Font.Charset = DEFAULT_CHARSET
              Style.Font.Color = clRed
              Style.Font.Height = -11
              Style.Font.Name = 'MS Sans Serif'
              Style.Font.Style = []
              Style.HotTrack = False
              Style.Shadow = False
              Style.TextColor = clBlue
              Style.TextStyle = []
              Style.IsFontAssigned = True
              Properties.Alignment.Horz = taCenter
              Transparent = True
              OnClick = Label3Click
              Height = 25
              Width = 291
              AnchorX = 147
            end
          end
        end
      end
      object cxGroupBox2: TcxGroupBox
        Left = 0
        Top = 0
        Align = alTop
        Style.BorderStyle = ebsNone
        TabOrder = 1
        Height = 109
        Width = 1272
        object gCaminho: TcxGroupBox
          Left = 190
          Top = 2
          TabOrder = 0
          Height = 105
          Width = 482
          object cxLabel1: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Caminho do Arquivo'
            Transparent = True
          end
          object edtPathFile: TcxTextEdit
            Left = 8
            Top = 24
            TabOrder = 1
            Width = 433
          end
          object btnCaminho: TcxButton
            Left = 442
            Top = 25
            Width = 29
            Height = 19
            Caption = '...'
            TabOrder = 2
            OnClick = btnCaminhoClick
          end
        end
        object rdTipoImportacao: TcxRadioGroup
          Left = 1
          Top = 2
          Caption = 'Defina a op'#231#227'o de Importa'#231#227'o'
          Properties.Items = <
            item
              Caption = 'Selecionar XML'
            end
            item
              Caption = 'Recuperar XML'
            end>
          Properties.OnChange = cbTipoImportacaoPropertiesChange
          ItemIndex = 0
          TabOrder = 1
          Height = 105
          Width = 185
        end
      end
    end
    object tbs2: TcxTabSheet
      Caption = 'NFe Importada'
      ImageIndex = 1
      object cxGroupBox4: TcxGroupBox
        Left = 32
        Top = 16
        Caption = 'Dados Nota'
        TabOrder = 0
        DesignSize = (
          1049
          254)
        Height = 259
        Width = 1049
        object cxDBTextEdit1: TcxDBTextEdit
          Left = 16
          Top = 40
          DataBinding.DataField = 'NUM_NF'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 0
          Width = 97
        end
        object cxLabel2: TcxLabel
          Left = 16
          Top = 24
          Caption = 'N'#250'mero NFe'
          Transparent = True
        end
        object cxDBTextEdit2: TcxDBTextEdit
          Left = 115
          Top = 40
          DataBinding.DataField = 'SERIE'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 2
          Width = 54
        end
        object cxLabel3: TcxLabel
          Left = 115
          Top = 24
          Caption = 'S'#233'rie'
          Transparent = True
        end
        object cxDBTextEdit3: TcxDBTextEdit
          Left = 353
          Top = 40
          DataBinding.DataField = 'CFOP'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 4
          Width = 200
        end
        object cxLabel4: TcxLabel
          Left = 353
          Top = 24
          Caption = 'CFOP'
          Transparent = True
        end
        object cxLabel5: TcxLabel
          Left = 16
          Top = 64
          Caption = 'Fornecedor'
          Transparent = True
        end
        object cxDBTextEdit4: TcxDBTextEdit
          Left = 88
          Top = 80
          DataBinding.DataField = 'EMIT_CPF_CNPJ'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 7
          Width = 121
        end
        object cxDBTextEdit5: TcxDBTextEdit
          Left = 211
          Top = 80
          DataBinding.DataField = 'EMIT_RAZAO_SOCIAL'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 8
          Width = 438
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 171
          Top = 40
          DataBinding.DataField = 'DATA_EMISSAO'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = True
          TabOrder = 11
          Width = 88
        end
        object cxLabel6: TcxLabel
          Left = 171
          Top = 24
          Caption = 'Emiss'#227'o'
          Transparent = True
        end
        object cxDBDateEdit2: TcxDBDateEdit
          Left = 261
          Top = 40
          DataBinding.DataField = 'DATA_ENTRADA'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = False
          TabOrder = 13
          Width = 88
        end
        object cxLabel7: TcxLabel
          Left = 261
          Top = 24
          Caption = 'Entrada'
          Transparent = True
        end
        object cxGroupBox5: TcxGroupBox
          Left = 16
          Top = 142
          TabOrder = 15
          Height = 96
          Width = 737
          object cxDBCalcEdit1: TcxDBCalcEdit
            Left = 8
            Top = 24
            DataBinding.DataField = 'BASE_ICMS'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 0
            Width = 97
          end
          object cxLabel8: TcxLabel
            Left = 8
            Top = 8
            Caption = 'Base ICMS'
            Transparent = True
          end
          object cxDBCalcEdit3: TcxDBCalcEdit
            Left = 108
            Top = 24
            DataBinding.DataField = 'VLR_ICMS'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 2
            Width = 97
          end
          object cxLabel10: TcxLabel
            Left = 108
            Top = 8
            Caption = 'Valor ICMS'
            Transparent = True
          end
          object cxDBCalcEdit2: TcxDBCalcEdit
            Left = 206
            Top = 24
            DataBinding.DataField = 'BASE_ICMS_ST'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 4
            Width = 97
          end
          object cxLabel9: TcxLabel
            Left = 206
            Top = 8
            Caption = 'Base ICMS ST'
            Transparent = True
          end
          object cxLabel11: TcxLabel
            Left = 304
            Top = 8
            Caption = 'Valor ICMS ST'
            Transparent = True
          end
          object cxDBCalcEdit4: TcxDBCalcEdit
            Left = 304
            Top = 24
            DataBinding.DataField = 'VLR_ICMS_ST'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 7
            Width = 97
          end
          object cxDBCalcEdit5: TcxDBCalcEdit
            Left = 597
            Top = 24
            DataBinding.DataField = 'VLR_TOTAL_PRODUTOS'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 8
            Width = 97
          end
          object cxLabel12: TcxLabel
            Left = 597
            Top = 8
            Caption = 'Valor Total Produtos'
            Transparent = True
          end
          object cxDBCalcEdit6: TcxDBCalcEdit
            Left = 8
            Top = 64
            DataBinding.DataField = 'VLR_FRETE'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 10
            Width = 97
          end
          object cxLabel13: TcxLabel
            Left = 8
            Top = 48
            Caption = 'Vlr. Frete'
            Transparent = True
          end
          object cxDBCalcEdit7: TcxDBCalcEdit
            Left = 106
            Top = 64
            DataBinding.DataField = 'VLR_SEGURO'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 12
            Width = 97
          end
          object cxLabel14: TcxLabel
            Left = 106
            Top = 48
            Caption = 'Vlr. Seguro'
            Transparent = True
          end
          object cxDBCalcEdit8: TcxDBCalcEdit
            Left = 204
            Top = 64
            DataBinding.DataField = 'VLR_DESCONTOS'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 14
            Width = 97
          end
          object cxLabel15: TcxLabel
            Left = 204
            Top = 48
            Caption = 'Vlr. Descontos'
            Transparent = True
          end
          object cxDBCalcEdit9: TcxDBCalcEdit
            Left = 302
            Top = 64
            DataBinding.DataField = 'VLR_DESPESAS'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 16
            Width = 97
          end
          object cxLabel16: TcxLabel
            Left = 302
            Top = 48
            Caption = 'Vlr. Despesas'
            Transparent = True
          end
          object cxDBCalcEdit10: TcxDBCalcEdit
            Left = 401
            Top = 64
            DataBinding.DataField = 'VLR_IPI'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 18
            Width = 97
          end
          object cxLabel17: TcxLabel
            Left = 401
            Top = 48
            Caption = 'Vlr. Valor IPI'
            Transparent = True
          end
          object cxDBCalcEdit11: TcxDBCalcEdit
            Left = 500
            Top = 64
            DataBinding.DataField = 'VLR_TOTAL_NOTA'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 20
            Width = 121
          end
          object cxLabel18: TcxLabel
            Left = 500
            Top = 48
            Caption = 'Valor Total Nota'
            Transparent = True
          end
          object cxDBCalcEdit12: TcxDBCalcEdit
            Left = 403
            Top = 24
            DataBinding.DataField = 'VLR_FRETE'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 22
            Width = 97
          end
          object cxLabel19: TcxLabel
            Left = 403
            Top = 8
            Caption = 'Vlr. PIS'
            Transparent = True
          end
          object cxDBCalcEdit13: TcxDBCalcEdit
            Left = 500
            Top = 24
            DataBinding.DataField = 'VLR_FRETE'
            DataBinding.DataSource = DataSource
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
            Properties.ReadOnly = True
            TabOrder = 24
            Width = 97
          end
          object cxLabel20: TcxLabel
            Left = 500
            Top = 8
            Caption = 'Vlr. Cofins'
            Transparent = True
          end
        end
        object btnPreview: TcxButton
          Left = 946
          Top = 70
          Width = 95
          Height = 58
          Anchors = [akRight, akBottom]
          Caption = 'Visualizar NFe'
          TabOrder = 16
          OnClick = btnPreviewClick
        end
        object cxLabel21: TcxLabel
          Left = 341
          Top = 24
          Caption = '*'
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsNone
          Style.Edges = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clRed
          Style.Font.Height = -19
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.HotTrack = False
          Style.Shadow = False
          Style.TextColor = clRed
          Style.TextStyle = []
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edtDICCFOP: TcxDBTextEdit
          Left = 553
          Top = 40
          DataBinding.DataField = 'DIC_CFOP'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = False
          TabOrder = 18
          OnKeyDown = edtDICCFOPKeyDown
          Width = 71
        end
        object cxLabel22: TcxLabel
          Left = 554
          Top = 24
          Caption = 'CFOP'
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsNone
          Style.Edges = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TextColor = clRed
          Style.TextStyle = []
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object btnCFOP: TcxButton
          Left = 625
          Top = 40
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 20
          OnClick = btnCFOPClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
        object ckCadFornecedor: TcxDBCheckBox
          Left = 16
          Top = 83
          Caption = 'Cadastrar'
          DataBinding.DataField = 'CAD_FORNECEDOR'
          DataBinding.DataSource = DataSource
          TabOrder = 21
          Transparent = True
          Width = 68
        end
        object btnFornecedor: TcxButton
          Left = 624
          Top = 113
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 22
          OnClick = btnFornecedorClick
          Glyph.Data = {
            06030000424D06030000000000003600000028000000100000000F0000000100
            180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
            0000000000000000000000000000000000000000000000000000000000000000
            00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
            000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
            FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
        object edtDICFORNECEDOR: TcxDBTextEdit
          Left = 17
          Top = 114
          DataBinding.DataField = 'DIC_COD_FORNECEDOR'
          DataBinding.DataSource = DataSource
          Properties.ReadOnly = False
          TabOrder = 9
          OnKeyDown = edtDICFORNECEDORKeyDown
          Width = 72
        end
        object cxLabel23: TcxLabel
          Left = 18
          Top = 102
          Caption = 'Fornecedor'
          ParentFont = False
          Style.BorderColor = clBlack
          Style.BorderStyle = ebsNone
          Style.Edges = []
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = []
          Style.HotTrack = False
          Style.Shadow = False
          Style.TextColor = clRed
          Style.TextStyle = []
          Style.TransparentBorder = False
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cbFornecedor: TcxDBLookupComboBox
          Left = 89
          Top = 114
          DataBinding.DataField = 'DIC_COD_FORNECEDOR'
          DataBinding.DataSource = DataSource
          Properties.KeyFieldNames = 'CODIGO'
          Properties.ListColumns = <
            item
              FieldName = 'NOME_RAZAO'
            end>
          Properties.ListSource = dsFornecedor
          TabOrder = 10
          Width = 534
        end
      end
      object cxGroupBox6: TcxGroupBox
        Left = 32
        Top = 280
        Caption = 'Itens da Nota'
        TabOrder = 1
        Height = 305
        Width = 1089
        object GridItens: TcxGrid
          Left = 3
          Top = 16
          Width = 1083
          Height = 281
          Align = alClient
          TabOrder = 0
          object TVItens: TcxGridDBBandedTableView
            OnKeyDown = TVItensKeyDown
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = DsItesn
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsCustomize.ColumnFiltering = False
            OptionsView.Navigator = True
            OptionsView.Footer = True
            OptionsView.GroupByBox = False
            OptionsView.BandHeaders = False
            Bands = <
              item
              end>
            object TVItensRecId: TcxGridDBBandedColumn
              DataBinding.FieldName = 'RecId'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object TVItensPRD_ITEM: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_ITEM'
              Width = 58
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object TVItensPRD_COD_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_COD_PRODUTO'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object TVItensPRD_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_PRODUTO'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object TVItensFator: TcxGridDBBandedColumn
              DataBinding.FieldName = 'Fator'
              OnCustomDrawCell = TVItensFatorCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 34
              Position.RowIndex = 0
            end
            object TVItensPRD_COD_EAN: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_COD_EAN'
              Width = 91
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object TVItensPRD_CFOP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_CFOP'
              Width = 46
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object TVItensPRD_UN_COMERCIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_UN_COMERCIAL'
              Width = 50
              Position.BandIndex = 0
              Position.ColIndex = 11
              Position.RowIndex = 0
            end
            object TVItensPRD_QTDE_COMERCIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_QTDE_COMERCIAL'
              Position.BandIndex = 0
              Position.ColIndex = 12
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_UN_COMERCIAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_UN_COMERCIAL'
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 13
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_PRODUTO'
              Width = 102
              Position.BandIndex = 0
              Position.ColIndex = 14
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_FRETE: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_FRETE'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 15
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_SEGURO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_SEGURO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 16
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_OUTROS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_OUTROS'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 17
              Position.RowIndex = 0
            end
            object TVItensPRD_VLR_DESCONTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'PRD_VLR_DESCONTO'
              Visible = False
              Position.BandIndex = 0
              Position.ColIndex = 18
              Position.RowIndex = 0
            end
            object TVItensCST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CST'
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object TVItensBASE_ICMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASE_ICMS'
              Width = 74
              Position.BandIndex = 0
              Position.ColIndex = 19
              Position.RowIndex = 0
            end
            object TVItensVLR_ICMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLR_ICMS'
              Position.BandIndex = 0
              Position.ColIndex = 20
              Position.RowIndex = 0
            end
            object TVItensALIQ_ICMS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQ_ICMS'
              Position.BandIndex = 0
              Position.ColIndex = 22
              Position.RowIndex = 0
            end
            object TVItensALIQ_IPI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQ_IPI'
              Position.BandIndex = 0
              Position.ColIndex = 21
              Position.RowIndex = 0
            end
            object TVItensVLR_IPI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLR_IPI'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 23
              Position.RowIndex = 0
            end
            object TVItensDIC_COD_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DIC_COD_PRODUTO'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownSizeable = True
              Properties.DropDownWidth = 800
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'CODIGO'
                end
                item
                  FieldName = 'NOME'
                end>
              Properties.ListSource = dsProdutos
              OnCustomDrawCell = TVItensDIC_COD_PRODUTOCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object TVItensDIC_CFOP: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DIC_CFOP'
              PropertiesClassName = 'TcxLookupComboBoxProperties'
              Properties.DropDownSizeable = True
              Properties.DropDownWidth = 700
              Properties.KeyFieldNames = 'CODIGO'
              Properties.ListColumns = <
                item
                  FieldName = 'CODIGO'
                end
                item
                  FieldName = 'NOME'
                end
                item
                  FieldName = 'CFOP'
                end
                item
                  FieldName = 'CFOP_DESCRICAO'
                end>
              Properties.ListSource = dsCFOPItens
              OnCustomDrawCell = TVItensDIC_CFOPCustomDrawCell
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object TVItensBASE_ICMS_ST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASE_ICMS_ST'
              Position.BandIndex = 0
              Position.ColIndex = 24
              Position.RowIndex = 0
            end
            object TVItensVLR_ICMS_ST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLR_ICMS_ST'
              Position.BandIndex = 0
              Position.ColIndex = 25
              Position.RowIndex = 0
            end
            object TVItensALIQ_ICMS_ST: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQ_ICMS_ST'
              Position.BandIndex = 0
              Position.ColIndex = 26
              Position.RowIndex = 0
            end
            object TVItensBASE_IPI: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASE_IPI'
              Position.BandIndex = 0
              Position.ColIndex = 27
              Position.RowIndex = 0
            end
            object TVItensBASE_PIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASE_PIS'
              Position.BandIndex = 0
              Position.ColIndex = 28
              Position.RowIndex = 0
            end
            object TVItensVLR_PIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLR_PIS'
              Position.BandIndex = 0
              Position.ColIndex = 29
              Position.RowIndex = 0
            end
            object TVItensALIQ_PIS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQ_PIS'
              Position.BandIndex = 0
              Position.ColIndex = 30
              Position.RowIndex = 0
            end
            object TVItensBASE_COFINS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'BASE_COFINS'
              Position.BandIndex = 0
              Position.ColIndex = 31
              Position.RowIndex = 0
            end
            object TVItensVLR_COFINS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'VLR_COFINS'
              Position.BandIndex = 0
              Position.ColIndex = 32
              Position.RowIndex = 0
            end
            object TVItensALIQ_COFINS: TcxGridDBBandedColumn
              DataBinding.FieldName = 'ALIQ_COFINS'
              Position.BandIndex = 0
              Position.ColIndex = 33
              Position.RowIndex = 0
            end
            object TVItensDIC_DESC_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DIC_DESC_PRODUTO'
              OnCustomDrawCell = TVItensDIC_COD_PRODUTOCustomDrawCell
              Width = 225
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object TVItensCAD_PRODUTO: TcxGridDBBandedColumn
              DataBinding.FieldName = 'CAD_PRODUTO'
              PropertiesClassName = 'TcxCheckBoxProperties'
              Properties.ValueGrayed = 'False'
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object TVItensQtdeConvertida: TcxGridDBBandedColumn
              DataBinding.FieldName = 'QtdeConvertida'
              Position.BandIndex = 0
              Position.ColIndex = 35
              Position.RowIndex = 0
            end
          end
          object LVItens: TcxGridLevel
            GridView = TVItens
          end
        end
      end
    end
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.xml'
    Filter = 'xml.*|*.xml'
    Left = 799
    Top = 3
  end
  object mtbItemNF: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 610
    object mtbItemNFPRD_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'PRD_ITEM'
    end
    object mtbItemNFPRD_COD_PRODUTO: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRD_COD_PRODUTO'
      OnChange = mtbItemNFPRD_COD_PRODUTOChange
      Size = 15
    end
    object mtbItemNFDIC_COD_PRODUTO: TStringField
      DisplayLabel = 'Dic. C'#243'd. Produto'
      FieldName = 'DIC_COD_PRODUTO'
      OnChange = mtbItemNFDIC_COD_PRODUTOChange
      Size = 15
    end
    object mtbItemNFPRD_PRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_PRODUTO'
      OnChange = mtbItemNFPRD_PRODUTOChange
      Size = 50
    end
    object mtbItemNFPRD_COD_EAN: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRD_COD_EAN'
      Size = 15
    end
    object mtbItemNFPRD_COD_NCM: TStringField
      FieldName = 'PRD_COD_NCM'
      Size = 15
    end
    object mtbItemNFPRD_EXT_IPI: TStringField
      FieldName = 'PRD_EXT_IPI'
      Size = 15
    end
    object mtbItemNFPRD_CFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'PRD_CFOP'
      Size = 6
    end
    object mtbItemNFDIC_CFOP: TIntegerField
      DisplayLabel = 'Dic. CFOP'
      FieldName = 'DIC_CFOP'
    end
    object mtbItemNFPRD_UN_COMERCIAL: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRD_UN_COMERCIAL'
      Size = 10
    end
    object mtbItemNFPRD_QTDE_COMERCIAL: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PRD_QTDE_COMERCIAL'
      OnChange = mtbItemNFPRD_QTDE_COMERCIALChange
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_UN_COMERCIAL: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRD_VLR_UN_COMERCIAL'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_UND_TRIBUTADA: TStringField
      FieldName = 'PRD_UND_TRIBUTADA'
      Size = 10
    end
    object mtbItemNFPRD_QTDE_TRIBUTADA: TFloatField
      FieldName = 'PRD_QTDE_TRIBUTADA'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_UN_TRIBUTADA: TFloatField
      FieldName = 'PRD_VLR_UN_TRIBUTADA'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_FRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'PRD_VLR_FRETE'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_SEGURO: TFloatField
      DisplayLabel = 'Vlr. Seguro'
      FieldName = 'PRD_VLR_SEGURO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_OUTROS: TFloatField
      DisplayLabel = 'Vlr. Outros'
      FieldName = 'PRD_VLR_OUTROS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Descontos'
      FieldName = 'PRD_VLR_DESCONTO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFPRD_VLR_PRODUTO: TFloatField
      DisplayLabel = 'Total Item'
      FieldName = 'PRD_VLR_PRODUTO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFCST: TStringField
      FieldName = 'CST'
      Size = 6
    end
    object mtbItemNFBASE_ICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFVLR_ICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFALIQ_ICMS: TFloatField
      DisplayLabel = 'Aliq. ICMS'
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFBASE_ICMS_ST: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASE_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFVLR_ICMS_ST: TFloatField
      DisplayLabel = 'Vlr. ICMS ST'
      FieldName = 'VLR_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFALIQ_ICMS_ST: TFloatField
      DisplayLabel = 'Aliq. ICMS ST'
      FieldName = 'ALIQ_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFBASE_IPI: TFloatField
      DisplayLabel = 'Base IPI'
      FieldName = 'BASE_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFVLR_IPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFALIQ_IPI: TFloatField
      DisplayLabel = 'Aliq. IPI'
      FieldName = 'ALIQ_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFBASE_PIS: TFloatField
      DisplayLabel = 'Base PIS'
      FieldName = 'BASE_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFVLR_PIS: TFloatField
      DisplayLabel = 'Vlr. PIS'
      FieldName = 'VLR_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFALIQ_PIS: TFloatField
      DisplayLabel = 'Aliq. PIS'
      FieldName = 'ALIQ_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFBASE_COFINS: TFloatField
      DisplayLabel = 'Base COFINS'
      FieldName = 'BASE_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFVLR_COFINS: TFloatField
      DisplayLabel = 'Vlr. COFINS'
      FieldName = 'VLR_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFALIQ_COFINS: TFloatField
      DisplayLabel = 'Aliq. COFINS'
      FieldName = 'ALIQ_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNFDIC_DESC_PRODUTO: TStringField
      DisplayLabel = 'Dic. Produto'
      FieldName = 'DIC_DESC_PRODUTO'
      Size = 50
    end
    object mtbItemNFCAD_PRODUTO: TBooleanField
      DisplayLabel = 'Cad.'
      FieldName = 'CAD_PRODUTO'
    end
    object mtbItemNFFator: TFloatField
      FieldName = 'Fator'
      OnChange = mtbItemNFFatorChange
      DisplayFormat = '###,##0.0000'
    end
    object mtbItemNFQtdeConvertida: TFloatField
      DisplayLabel = 'Qtde Convertida'
      FieldName = 'QtdeConvertida'
      DisplayFormat = '###,##0.0000'
    end
    object mtbItemNFDIC_FORNECEDOR: TStringField
      FieldName = 'DIC_FORNECEDOR'
      Size = 50
    end
  end
  object mtbCabNF: TdxMemData
    Indexes = <>
    SortOptions = []
    BeforePost = mtbCabNFBeforePost
    AfterPost = mtbCabNFAfterPost
    Left = 552
    object mtbCabNFEMIT_CPF_CNPJ: TStringField
      FieldName = 'EMIT_CPF_CNPJ'
      OnChange = mtbCabNFEMIT_CPF_CNPJChange
      Size = 14
    end
    object mtbCabNFEMIT_RAZAO_SOCIAL: TStringField
      FieldName = 'EMIT_RAZAO_SOCIAL'
      Size = 50
    end
    object mtbCabNFEMIT_IM: TStringField
      FieldName = 'EMIT_IM'
    end
    object mtbCabNFEMIT_FANTASIA: TStringField
      FieldName = 'EMIT_FANTASIA'
      Size = 50
    end
    object mtbCabNFEMIT_IE: TStringField
      FieldName = 'EMIT_IE'
    end
    object mtbCabNFEMIT_LOGRADOURO: TStringField
      FieldName = 'EMIT_LOGRADOURO'
      Size = 50
    end
    object mtbCabNFEMIT_NUMERO: TStringField
      FieldName = 'EMIT_NUMERO'
    end
    object mtbCabNFEMIT_COMPLEMENTO: TStringField
      FieldName = 'EMIT_COMPLEMENTO'
      Size = 50
    end
    object mtbCabNFEMIT_BAIRRO: TStringField
      FieldName = 'EMIT_BAIRRO'
      Size = 50
    end
    object mtbCabNFEMIT_COD_IBGE_CIDADE: TIntegerField
      FieldName = 'EMIT_COD_IBGE_CIDADE'
    end
    object mtbCabNFEMIT_CIDADE: TStringField
      FieldName = 'EMIT_CIDADE'
      Size = 50
    end
    object mtbCabNFEMIT_CEP: TStringField
      FieldName = 'EMIT_CEP'
      Size = 14
    end
    object mtbCabNFEMIT_COD_PAIS: TIntegerField
      FieldName = 'EMIT_COD_PAIS'
    end
    object mtbCabNFEMIT_PAIS: TStringField
      FieldName = 'EMIT_PAIS'
      Size = 50
    end
    object mtbCabNFEMIT_FONE: TStringField
      FieldName = 'EMIT_FONE'
    end
    object mtbCabNFSERIE: TIntegerField
      FieldName = 'SERIE'
    end
    object mtbCabNFNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
    end
    object mtbCabNFDATA_ENTRADA: TDateField
      FieldName = 'DATA_ENTRADA'
    end
    object mtbCabNFBASE_ICMS_ST: TFloatField
      FieldName = 'BASE_ICMS_ST'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFBASE_ICMS: TFloatField
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_ICMS: TFloatField
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_ICMS_ST: TFloatField
      FieldName = 'VLR_ICMS_ST'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_TOTAL_PRODUTOS: TFloatField
      FieldName = 'VLR_TOTAL_PRODUTOS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_DESCONTOS: TFloatField
      FieldName = 'VLR_DESCONTOS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_DESPESAS: TFloatField
      FieldName = 'VLR_DESPESAS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_TOTAL_NOTA: TFloatField
      FieldName = 'VLR_TOTAL_NOTA'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFDIC_COD_FORNECEDOR: TIntegerField
      FieldName = 'DIC_COD_FORNECEDOR'
      OnChange = mtbCabNFDIC_COD_FORNECEDORChange
    end
    object mtbCabNFDATA_EMISSAO: TDateField
      FieldName = 'DATA_EMISSAO'
    end
    object mtbCabNFCFOP: TStringField
      FieldName = 'CFOP'
      Size = 50
    end
    object mtbCabNFVLR_PIS: TFloatField
      FieldName = 'VLR_PIS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFVLR_COFINS: TFloatField
      FieldName = 'VLR_COFINS'
      DisplayFormat = '###,##0.00'
    end
    object mtbCabNFEMIT_UF: TStringField
      FieldName = 'EMIT_UF'
      Size = 2
    end
    object mtbCabNFDIC_CFOP: TIntegerField
      FieldName = 'DIC_CFOP'
    end
    object mtbCabNFCAD_FORNECEDOR: TBooleanField
      FieldName = 'CAD_FORNECEDOR'
    end
  end
  object DataSource: TDataSource
    DataSet = mtbCabNF
    Left = 581
  end
  object DataSource1: TDataSource
    Left = 544
    Top = 328
  end
  object DsItesn: TDataSource
    DataSet = mtbItemNF
    Left = 640
  end
  object StgfrmImportaNFe2: TcxPropertiesStore
    Components = <
      item
        Component = TVItens
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
        Component = TVItensALIQ_COFINS
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
        Component = TVItensALIQ_ICMS
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
        Component = TVItensALIQ_ICMS_ST
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
        Component = TVItensALIQ_IPI
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
        Component = TVItensALIQ_PIS
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
        Component = TVItensBASE_COFINS
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
        Component = TVItensBASE_ICMS
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
        Component = TVItensBASE_ICMS_ST
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
        Component = TVItensBASE_IPI
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
        Component = TVItensBASE_PIS
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
        Component = TVItensCAD_PRODUTO
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
        Component = TVItensCST
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
        Component = TVItensDIC_CFOP
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
        Component = TVItensDIC_COD_PRODUTO
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
        Component = TVItensDIC_DESC_PRODUTO
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
        Component = TVItensFator
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
        Component = TVItensPRD_CFOP
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
        Component = TVItensPRD_COD_EAN
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
        Component = TVItensPRD_COD_PRODUTO
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
        Component = TVItensPRD_ITEM
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
        Component = TVItensPRD_PRODUTO
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
        Component = TVItensPRD_QTDE_COMERCIAL
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
        Component = TVItensPRD_UN_COMERCIAL
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
        Component = TVItensPRD_VLR_DESCONTO
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
        Component = TVItensPRD_VLR_FRETE
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
        Component = TVItensPRD_VLR_OUTROS
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
        Component = TVItensPRD_VLR_PRODUTO
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
        Component = TVItensPRD_VLR_SEGURO
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
        Component = TVItensPRD_VLR_UN_COMERCIAL
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
        Component = TVItensQtdeConvertida
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
        Component = TVItensVLR_COFINS
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
        Component = TVItensVLR_ICMS
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
        Component = TVItensVLR_ICMS_ST
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
        Component = TVItensVLR_IPI
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
        Component = TVItensVLR_PIS
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
    StorageName = 'c:\Sistemas\HelpStore\filtros\StgfrmImportaNFe2.ini'
    Left = 322
    Top = 343
  end
  object cxGridPopupMenu: TcxGridPopupMenu
    Grid = GridItens
    PopupMenus = <>
    Left = 474
    Top = 383
  end
  object Actions: TActionList
    Left = 827
    Top = 152
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object actLookup: TAction
      Caption = 'actLookup'
      ShortCut = 115
      OnExecute = actLookupExecute
    end
    object ActLocalizarNatureza: TAction
      Caption = 'Localizar Natureza'
      OnExecute = ActLocalizarNaturezaExecute
    end
    object ActLocalizarFornecedor: TAction
      Caption = 'ActLocalizarFornecedor'
      OnExecute = ActLocalizarFornecedorExecute
    end
    object ActLocalizaProdutos: TAction
      OnExecute = ActLocalizaProdutosExecute
    end
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select c.cnpj,'
      '       c.codigo, '
      '       c.nome,'
      '       c.interestadual,'
      '       c.cfop,'
      '       c.cfop_descricao'
      'from est_natureza c'
      'where c.cnpj = :cnpj and C.ATIVA = '#39'S'#39' AND C.ES = '#39'E'#39
      'and c.interestadual = :ie'
      'order by c.nome')
    Left = 800
    Top = 48
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ie'
        ParamType = ptUnknown
      end>
    object SelNaturezaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelNaturezaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelNaturezaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Size = 50
    end
    object SelNaturezaINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
    object SelNaturezaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_NATUREZA"."CFOP"'
    end
    object SelNaturezaCFOP_DESCRICAO: TIBStringField
      FieldName = 'CFOP_DESCRICAO'
      Origin = '"EST_NATUREZA"."CFOP_DESCRICAO"'
      Size = 50
    end
  end
  object SelNaturezaItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select c.cnpj,'
      '       c.codigo, '
      '       c.nome,'
      '       c.interestadual,'
      '       c.cfop,'
      '       c.cfop_descricao'
      'from est_natureza c'
      'where c.cnpj = :cnpj and C.ATIVA = '#39'S'#39' AND C.ES = '#39'E'#39
      'and c.interestadual = :ie'
      'order by c.nome')
    Left = 800
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ie'
        ParamType = ptUnknown
      end>
    object SelNaturezaItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelNaturezaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelNaturezaItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Size = 50
    end
    object SelNaturezaItensINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
    object SelNaturezaItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_NATUREZA"."CFOP"'
    end
    object SelNaturezaItensCFOP_DESCRICAO: TIBStringField
      FieldName = 'CFOP_DESCRICAO'
      Origin = '"EST_NATUREZA"."CFOP_DESCRICAO"'
      Size = 50
    end
  end
  object dsCFOPItens: TDataSource
    DataSet = SelNaturezaItens
    Left = 834
    Top = 96
  end
  object SelProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select prd.codigo, prd.nome, prd.codigo_2, prd.cod_getin, prd.se' +
        'rie from est_produtos prd'
      'where prd.cnpj = :cnpj')
    Left = 801
    Top = 202
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object SelProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object SelProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object SelProdutosCOD_GETIN: TIBStringField
      FieldName = 'COD_GETIN'
      Origin = '"EST_PRODUTOS"."COD_GETIN"'
      Size = 15
    end
    object SelProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
  end
  object dsProdutos: TDataSource
    DataSet = SelProdutos
    Left = 834
    Top = 200
  end
  object QryFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from glo_pessoas_fj psa'
      'where psa.cnpj = :cnpj'
      'order by psa.nome_razao')
    Left = 695
    Top = 154
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object QryFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFornecedorNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryFornecedorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object QryFornecedorATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object QryFornecedorENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object QryFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object QryFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object QryFornecedorBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object QryFornecedorCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object QryFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object QryFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object QryFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object QryFornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object QryFornecedorPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object QryFornecedorRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object QryFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object QryFornecedorDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object QryFornecedorDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object QryFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryFornecedorOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryFornecedorINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object QryFornecedorCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object QryFornecedorEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object QryFornecedorCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO1"'
      Size = 50
    end
    object QryFornecedorCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO2"'
      Size = 50
    end
    object QryFornecedorCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO3"'
      Size = 50
    end
    object QryFornecedorORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object QryFornecedorREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object QryFornecedorNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"GLO_PESSOAS_FJ"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"GLO_PESSOAS_FJ"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorCODIGO_2: TIntegerField
      FieldName = 'CODIGO_2'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO_2"'
    end
    object QryFornecedorFJ: TIBStringField
      FieldName = 'FJ'
      Origin = '"GLO_PESSOAS_FJ"."FJ"'
      FixedChar = True
      Size = 1
    end
    object QryFornecedorMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object QryFornecedorMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
  object dsFornecedor: TDataSource
    DataSet = QryFornecedor
    Left = 696
    Top = 122
  end
  object QryRetFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from glo_pessoas_fj psa'
      'where psa.cpf_cgc = :cpf_cgc and psa.cnpj = :cnpj')
    Left = 735
    Top = 154
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cpf_cgc'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object QryRetFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryRetFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRetFornecedorNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryRetFornecedorFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object QryRetFornecedorATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object QryRetFornecedorENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object QryRetFornecedorNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object QryRetFornecedorCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object QryRetFornecedorBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object QryRetFornecedorCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object QryRetFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object QryRetFornecedorCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object QryRetFornecedorFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object QryRetFornecedorFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object QryRetFornecedorCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object QryRetFornecedorPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object QryRetFornecedorCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object QryRetFornecedorRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object QryRetFornecedorCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object QryRetFornecedorDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object QryRetFornecedorDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object QryRetFornecedorEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object QryRetFornecedorOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryRetFornecedorINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object QryRetFornecedorCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object QryRetFornecedorEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object QryRetFornecedorCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO1"'
      Size = 50
    end
    object QryRetFornecedorCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO2"'
      Size = 50
    end
    object QryRetFornecedorCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO3"'
      Size = 50
    end
    object QryRetFornecedorORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object QryRetFornecedorREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object QryRetFornecedorNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"GLO_PESSOAS_FJ"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object QryRetFornecedorSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"GLO_PESSOAS_FJ"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryRetFornecedorCODIGO_2: TIntegerField
      FieldName = 'CODIGO_2'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO_2"'
    end
    object QryRetFornecedorFJ: TIBStringField
      FieldName = 'FJ'
      Origin = '"GLO_PESSOAS_FJ"."FJ"'
      FixedChar = True
      Size = 1
    end
    object QryRetFornecedorMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object QryRetFornecedorMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
  object mtbItemNF2: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 482
    object mtbItemNF2PRD_ITEM: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'PRD_ITEM'
    end
    object mtbItemNF2PRD_COD_PRODUTO: TStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRD_COD_PRODUTO'
      Size = 15
    end
    object mtbItemNF2DIC_COD_PRODUTO: TStringField
      DisplayLabel = 'Dic. C'#243'd. Produto'
      FieldName = 'DIC_COD_PRODUTO'
      Size = 15
    end
    object mtbItemNF2PRD_PRODUTO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PRD_PRODUTO'
      Size = 50
    end
    object mtbItemNF2PRD_COD_EAN: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'PRD_COD_EAN'
      Size = 15
    end
    object mtbItemNF2PRD_COD_NCM: TStringField
      FieldName = 'PRD_COD_NCM'
      Size = 15
    end
    object mtbItemNF2PRD_EXT_IPI: TStringField
      FieldName = 'PRD_EXT_IPI'
      Size = 15
    end
    object mtbItemNF2PRD_CFOP: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'PRD_CFOP'
      Size = 6
    end
    object mtbItemNF2DIC_CFOP: TIntegerField
      DisplayLabel = 'Dic. CFOP'
      FieldName = 'DIC_CFOP'
    end
    object mtbItemNF2PRD_UN_COMERCIAL: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'PRD_UN_COMERCIAL'
      Size = 10
    end
    object mtbItemNF2PRD_QTDE_COMERCIAL: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'PRD_QTDE_COMERCIAL'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_UN_COMERCIAL: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRD_VLR_UN_COMERCIAL'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_UND_TRIBUTADA: TStringField
      FieldName = 'PRD_UND_TRIBUTADA'
      Size = 10
    end
    object mtbItemNF2PRD_QTDE_TRIBUTADA: TFloatField
      FieldName = 'PRD_QTDE_TRIBUTADA'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_UN_TRIBUTADA: TFloatField
      FieldName = 'PRD_VLR_UN_TRIBUTADA'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_FRETE: TFloatField
      DisplayLabel = 'Vlr. Frete'
      FieldName = 'PRD_VLR_FRETE'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_SEGURO: TFloatField
      DisplayLabel = 'Vlr. Seguro'
      FieldName = 'PRD_VLR_SEGURO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_OUTROS: TFloatField
      DisplayLabel = 'Vlr. Outros'
      FieldName = 'PRD_VLR_OUTROS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_DESCONTO: TFloatField
      DisplayLabel = 'Vlr. Descontos'
      FieldName = 'PRD_VLR_DESCONTO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2PRD_VLR_PRODUTO: TFloatField
      DisplayLabel = 'Total Item'
      FieldName = 'PRD_VLR_PRODUTO'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2CST: TStringField
      FieldName = 'CST'
      Size = 6
    end
    object mtbItemNF2BASE_ICMS: TFloatField
      DisplayLabel = 'Base ICMS'
      FieldName = 'BASE_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2VLR_ICMS: TFloatField
      DisplayLabel = 'Vlr. ICMS'
      FieldName = 'VLR_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2ALIQ_ICMS: TFloatField
      DisplayLabel = 'Aliq. ICMS'
      FieldName = 'ALIQ_ICMS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2BASE_ICMS_ST: TFloatField
      DisplayLabel = 'Base ICMS ST'
      FieldName = 'BASE_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2VLR_ICMS_ST: TFloatField
      DisplayLabel = 'Vlr. ICMS ST'
      FieldName = 'VLR_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2ALIQ_ICMS_ST: TFloatField
      DisplayLabel = 'Aliq. ICMS ST'
      FieldName = 'ALIQ_ICMS_ST'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2BASE_IPI: TFloatField
      DisplayLabel = 'Base IPI'
      FieldName = 'BASE_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2VLR_IPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VLR_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2ALIQ_IPI: TFloatField
      DisplayLabel = 'Aliq. IPI'
      FieldName = 'ALIQ_IPI'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2BASE_PIS: TFloatField
      DisplayLabel = 'Base PIS'
      FieldName = 'BASE_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2VLR_PIS: TFloatField
      DisplayLabel = 'Vlr. PIS'
      FieldName = 'VLR_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2ALIQ_PIS: TFloatField
      DisplayLabel = 'Aliq. PIS'
      FieldName = 'ALIQ_PIS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2BASE_COFINS: TFloatField
      DisplayLabel = 'Base COFINS'
      FieldName = 'BASE_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2VLR_COFINS: TFloatField
      DisplayLabel = 'Vlr. COFINS'
      FieldName = 'VLR_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2ALIQ_COFINS: TFloatField
      DisplayLabel = 'Aliq. COFINS'
      FieldName = 'ALIQ_COFINS'
      DisplayFormat = '###,##0.000'
    end
    object mtbItemNF2DIC_DESC_PRODUTO: TStringField
      DisplayLabel = 'Dic. Produto'
      FieldName = 'DIC_DESC_PRODUTO'
      Size = 50
    end
    object mtbItemNF2CAD_PRODUTO: TBooleanField
      DisplayLabel = 'Cad.'
      FieldName = 'CAD_PRODUTO'
    end
    object mtbItemNF2Fator: TFloatField
      FieldName = 'Fator'
      DisplayFormat = '###,##0.0000'
    end
    object mtbItemNF2QtdeConvertida: TFloatField
      DisplayLabel = 'Qtde Convertida'
      FieldName = 'QtdeConvertida'
      DisplayFormat = '###,##0.0000'
    end
    object mtbItemNF2DIC_FORNECEDOR: TStringField
      FieldName = 'DIC_FORNECEDOR'
      Size = 50
    end
  end
end
