unit SelEmpresa_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,  dxCntner, dxTL, dxDBCtrl, dxDBGrid, ExtCtrls, dxExEdtr,  
  cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons;

type
  TFrmSelEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Grid: TdxDBGrid;
    BtnOk: tButton;
    RzBitBtn2: tButton;
    dsEmpresas: TDataSource;
    GridCNPJ: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelEmpresa: TFrmSelEmpresa;

implementation

uses Empresas_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmSelEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  //
  Action := caFree;
  FrmSelEmpresa := Nil;
end;

procedure TFrmSelEmpresa.FormCreate(Sender: TObject);
begin
  Try

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
end;

procedure TFrmSelEmpresa.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Grid.SetFocus;

end;

procedure TFrmSelEmpresa.Timer1Timer(Sender: TObject);
begin
     DsEmpresas.DataSet.Next ;

     If DsEmpresas.DataSet.Eof
     then begin
          DsEmpresas.DataSet.First ;
     end;
end;

end.
