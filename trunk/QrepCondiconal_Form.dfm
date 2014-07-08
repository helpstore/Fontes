object QrepCondicional: TQrepCondicional
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
  object CABECALHO: TQRBand
    Left = 0
    Top = 0
    Width = 718
    Height = 187
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
      494.770833333333000000
      1899.708333333330000000)
    BandType = rbPageHeader
    object QRShape1: TQRShape
      Left = 0
      Top = 95
      Width = 717
      Height = 67
      Frame.Color = clBlack
      Frame.DrawTop = False
      Frame.DrawBottom = False
      Frame.DrawLeft = False
      Frame.DrawRight = False
      Size.Values = (
        177.270833333333000000
        0.000000000000000000
        251.354166666667000000
        1897.062500000000000000)
      Shape = qrsRectangle
      VertAdjust = 0
    end
  end
  object RADAPE: TQRBand
    Left = 0
    Top = 0
    Width = 718
    Height = 135
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = RADAPEBeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      357.187500000000000000
      1899.708333333330000000)
    BandType = rbSummary
  end
  object QRBand1: TQRBand
    Left = 0
    Top = 0
    Width = 718
    Height = 17
    Frame.Color = clBlack
    Frame.DrawTop = False
    Frame.DrawBottom = False
    Frame.DrawLeft = False
    Frame.DrawRight = False
    AlignToBottom = False
    BeforePrint = QRBand1BeforePrint
    Color = clWhite
    ForceNewColumn = False
    ForceNewPage = False
    Size.Values = (
      44.979166666666700000
      1899.708333333330000000)
    BandType = rbDetail
  end
end
