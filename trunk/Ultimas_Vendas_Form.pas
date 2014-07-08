 unit Ultimas_Vendas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxDBELib, Db, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl,   cxPropertiesStore, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TFrmUltimas_Vendas = class(TForm)
    pnlClient: TPanel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    RzBitBtn1: TcxButton;
    ActOk: TAction;
    GRIDRECEBER: TdxDBGrid;
    DSource: TDataSource;
    GRIDRECEBERCODIGO: TdxDBGridMaskColumn;
    GRIDRECEBERDATA: TdxDBGridDateColumn;
    GRIDRECEBERDINHEIRO: TdxDBGridMaskColumn;
    GRIDRECEBERCHEQUE: TdxDBGridMaskColumn;
    GRIDRECEBERCARTAO: TdxDBGridMaskColumn;
    GRIDRECEBERTICKET: TdxDBGridMaskColumn;
    GRIDRECEBERCONVENIO: TdxDBGridMaskColumn;
    GRIDRECEBERDESCONTO: TdxDBGridMaskColumn;
    GRIDRECEBERTOTAL: TdxDBGridMaskColumn;
    GRIDRECEBERPRODUTO: TdxDBGridMaskColumn;
    GRIDRECEBERNOME_PRODUTO: TdxDBGridMaskColumn;
    GRIDRECEBERQUANTIDADE: TdxDBGridMaskColumn;
    GRIDRECEBERUNITARIO: TdxDBGridMaskColumn;
    stgFrmUltimas_Vendas: TcxPropertiesStore;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GRIDRECEBERCustomDraw(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxDBTreeListColumn;
      const AText: String; AFont: TFont; var AColor: TColor; ASelected,
      AFocused: Boolean; var ADone: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmUltimas_Vendas: TFrmUltimas_Vendas;
  cor : Integer;
  Ultima_Venda: Integer;
implementation

uses Vendas_Dm, Application_DM, Funcoes, Pdv_DM;

{$R *.DFM}

procedure TFrmUltimas_Vendas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmUltimas_Vendas.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmUltimas_Vendas.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmUltimas_Vendas.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmUltimas_Vendas.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
end;

procedure TFrmUltimas_Vendas.FormCreate(Sender: TObject);
begin
     Cor := 1;
     Ultima_Venda := DmPdv.ULTIMAS_VENDASCODIGO.Value ;
end;

procedure TFrmUltimas_Vendas.GRIDRECEBERCustomDraw(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxDBTreeListColumn; const AText: String; AFont: TFont;
  var AColor: TColor; ASelected, AFocused: Boolean; var ADone: Boolean);
begin
{     if ( not ASelected  )
     then begin
          if Ultima_Venda <> DmPdv.ULTIMAS_VENDASCODIGO.value
          then begin
               if Cor = 1
               then begin
                    AColor := $00ECAD84;
                    cor := 2 ;
               end
               else begin
                    AColor := clWhite;
                    cor := 1 ;
               end;

               ultima_Venda := DmPdv.ULTIMAS_VENDASCODIGO.Value ;
          end;
     end;
}
end;

end.
