  unit ccusto_frel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Quickrpt, StdCtrls, ExtCtrls, DB, Qrctrls;

type
  TfrmListaCCusto = class(TForm)
    QuickReport: TQuickRep;
    Title: TQRBand;
    PageHeader: TQRBand;
    Detail: TQRBand;
    Image2: TImage;
    QRBand1: TQRBand;                              
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure QuickReportAfterPrint(Sender: TObject);
    procedure QuickReportBeforePrint(Sender: TQuickRep;
      var PrintReport: Boolean);
    procedure TitleAfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
    procedure TitleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    ShapeCount : Integer;
    ShapeList : TList;
    ImageLeft, QTextLeft, ImageRectLeft : Integer;
  public
    { Public declarations }
  end;

var
  frmListaCCusto: TfrmListaCCusto;

implementation
uses main, Centro_Custo_Form;

const
  PixelPerLevel = 50;
{$R *.DFM}

procedure HideQRShape(qs : TQRShape);
begin
  with qs do begin
    Visible := False;
    Left := -100;
    Width := 0;
    Height := 0;
  end;
end;

procedure TfrmListaCCusto.QuickReportAfterPrint(Sender: TObject);
Var
 i : Integer;
begin
  for i := 0 to ShapeCount do
    TQRShape(ShapeList[i]).Free;
  ShapeList.Free;
end;

procedure TfrmListaCCusto.QuickReportBeforePrint(Sender: TQuickRep;
  var PrintReport: Boolean);
Var
 i : Integer;
begin


end;

procedure TfrmListaCCusto.TitleAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
Var
 i : Integer;
begin
  //Não sei porque sai
  if (Sender <> Detail)then
    exit;

  Image.Left := ImageLeft;
  QText.Left := QTextLeft;
  ImageRect.Left := ImageRectLeft;
  if Not ImageRect.Visible then begin
    ImageRect.Height := 9;
  end;
    ImageRect.Visible := True;
  for i := 0 to ShapeCount do
    HideQRShape(TQRShape(ShapeList[i]));

end;

procedure TfrmListaCCusto.TitleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
Var
  i, Level, inten : Integer;
  qs : TQRShape;
begin
  if (Sender <> Detail) then
    exit;

  Level := FrmCCusto.DBTreePrintDataSet.FindField('dx$level').AsInteger;
  ImageRect.Visible := FrmCCusto.DBTreePrintDataSet.FindField('dx$haschildren').AsBoolean;
  inten := Level * PixelPerLevel;
  Image.Left := Image.Left + inten;
  QText.Left := QText.Left + inten;
  ImageRect.Left := ImageRect.Left + inten;
  qs := TQRShape(ShapeList[0]);
  qs.Visible := True;

  if ImageRect.Visible then
    qs.Left := ImageRect.Left + 1 + ImageRect.Width
  else begin
    qs.Left := ImageRect.Left + ImageRect.Width div 2 - PixelPerLevel;
    ImageRect.Height := 1;
  end;

  qs.Width := Image.Left - qs.Left - 1;
  qs.Top :=  ImageRect.Top + ImageRect.Height div 2;

  for i := 0 to level - 1 do begin
    qs := TQRShape(ShapeList[i + 1]);
    qs.Visible := True;
    qs.Left := ImageRectLeft + ImageRect.Width div 2 + i * PixelPerLevel;
    qs.Height := Detail.Height;
  end;

  FrmCCusto.ImageList1.GetBitmap(0, Image.Picture.Bitmap);
end;

end.
