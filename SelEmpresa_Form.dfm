object FrmSelEmpresa: TFrmSelEmpresa
  Left = 247
  Top = 157
  BorderStyle = bsDialog
  Caption = 'Selecionar Empresa'
  ClientHeight = 204
  ClientWidth = 412
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 412
    Height = 163
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object Grid: TdxDBGrid
      Left = 7
      Top = 8
      Width = 398
      Height = 147
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 0
      DataSource = dsEmpresas
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsCustomize = []
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object GridCNPJ: TdxDBGridMaskColumn
        Caption = ' Cnpj'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CNPJ'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = ' Nome'
        Width = 290
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 163
    Width = 412
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object BtnOk: TButton
      Left = 8
      Top = 8
      Width = 95
      Height = 25
      Caption = '&Selecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 1
      ParentFont = False
      TabOrder = 0
    end
    object RzBitBtn2: TButton
      Left = 103
      Top = 8
      Width = 95
      Height = 25
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
  object dsEmpresas: TDataSource
    AutoEdit = False
    DataSet = DMEmpresas.SelEmpresa
    Left = 192
    Top = 80
  end
end
