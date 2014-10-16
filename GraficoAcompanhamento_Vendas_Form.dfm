object FrmAcompanhamentoVendas: TFrmAcompanhamentoVendas
  Left = -5
  Top = 27
  Width = 802
  Height = 506
  Caption = 'Acompanhamento de Vendas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object GRAFICO: TDBChart
    Left = 0
    Top = 0
    Width = 794
    Height = 479
    BackWall.Brush.Color = clWhite
    MarginBottom = 0
    MarginLeft = 0
    MarginRight = 0
    MarginTop = 0
    Title.Text.Strings = (
      'Acompanhamento de Vendas')
    Legend.LegendStyle = lsValues
    Legend.TopPos = 2
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    Align = alClient
    BevelOuter = bvLowered
    BorderStyle = bsSingle
    TabOrder = 0
    object Series2: TBarSeries
      ColorEachPoint = True
      Marks.ArrowLength = 8
      Marks.Style = smsPercent
      Marks.Visible = True
      DataSource = DmCaixa.ACOMPANHAMENTO_VENDAS
      SeriesColor = clRed
      Title = 'GRAFICOS'
      ValueFormat = '###,###,##0.00'
      XLabelsSource = 'CAIXA'
      XValues.DateTime = True
      XValues.Name = 'X'
      XValues.Multiplier = 1
      XValues.Order = loAscending
      XValues.ValueSource = 'CAIXA'
      YValues.DateTime = False
      YValues.Name = 'Bar'
      YValues.Multiplier = 1
      YValues.Order = loNone
      YValues.ValueSource = 'VALOR'
    end
  end
end