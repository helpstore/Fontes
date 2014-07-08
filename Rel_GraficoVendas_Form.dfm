object Qrp: TQrp
  Left = 0
  Top = 0
  Width = 794
  Height = 708
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 16
  object GRAFICO: TQRChart
    Left = 40
    Top = 88
    Width = 713
    Height = 425
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    Size.Values = (
      1124.479166666670000000
      105.833333333333000000
      232.833333333333000000
      1886.479166666670000000)
    object QRDBChart1: TQRDBChart
      Left = -1
      Top = -1
      Width = 1
      Height = 1
      BackWall.Brush.Color = clWhite
      BackWall.Brush.Style = bsClear
      BackWall.Pen.Visible = False
      Title.Text.Strings = (
        'Gr'#225'fico de Vendas Por Vendedor')
      AxisVisible = False
      ClipPoints = False
      Frame.Visible = False
      View3DOptions.Elevation = 315
      View3DOptions.Orthogonal = False
      View3DOptions.Perspective = 0
      View3DOptions.Rotation = 360
      View3DWalls = False
      object Series1: TPieSeries
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        DataSource = DMRelatorios.Fat_GraficoVendas
        Title = 'GRAFICOS'
        ValueFormat = '###,###,##0.00'
        XLabelsSource = 'NOME_VENDEDOR'
        Gradient.Direction = gdRadial
        OtherSlice.Legend.Visible = False
        OtherSlice.Text = 'Other'
        PieValues.Name = 'Pie'
        PieValues.Order = loNone
        PieValues.ValueSource = 'VALOR'
      end
      object Series2: TBarSeries
        ColorEachPoint = True
        Marks.Arrow.Visible = True
        Marks.Callout.Brush.Color = clBlack
        Marks.Callout.Arrow.Visible = True
        Marks.Callout.Length = 8
        Marks.Style = smsLabelPercent
        Marks.Visible = True
        DataSource = DMRelatorios.Fat_GraficoVendas
        SeriesColor = clRed
        Title = 'GRAFICOS'
        ValueFormat = '###,###,##0.00'
        XLabelsSource = 'NOME_VENDEDOR'
        Gradient.Direction = gdTopBottom
        XValues.Name = 'X'
        XValues.Order = loAscending
        YValues.Name = 'Bar'
        YValues.Order = loNone
        YValues.ValueSource = 'VALOR'
      end
    end
  end
  object TitleBand1: TQRBand
    Left = 0
    Top = 0
    Width = 718
    Height = 43
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      113.770833333333000000
      1899.708333333330000000)
    BandType = rbTitle
  end
end
