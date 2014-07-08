 unit Faturas_Agrupadas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, dxDBGrid, dxDBTLCl, dxGrClms,
  dxDBCtrl, dxTL,   cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmFaturas_Notas = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDNATUREZA: TdxDBGridColumn;
    GRIDVENDEDOR: TdxDBGridColumn;
    GRIDTIPO_VENDA: TdxDBGridColumn;
    GRIDCONSUMIDOR: TdxDBGridColumn;
    GRIDORCAMENTO: TdxDBGridColumn;
    GRIDNF: TdxDBGridColumn;
    GRIDCF: TdxDBGridColumn;
    GRIDCAIXA: TdxDBGridColumn;
    GRIDUSUARIO: TdxDBGridColumn;
    GRIDCANCELADA: TdxDBGridColumn;
    DataSource: TDataSource;
    Panel1: TPanel;
    RzBitBtn1: TcxButton;
    LBLPRODUTO: TcxLabel;
    ActTrocarProd: TAction;
    RxLabel1: TcxLabel;
    stgFrmFaturas_Notas: TcxPropertiesStore;

    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActTrocarProdExecute(Sender: TObject);
    function  QntdeFiscal( Venda: Integer; Fiscal, Produto: String; QntProduto: Real ): Boolean;

  private
    { Private declarations }
  public
    { Public declarations }
    Produto: String;
  end;

var
  FrmFaturas_Notas: TFrmFaturas_Notas;
  CancelaQtd : Boolean;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Vendas_Dm,
  Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmFaturas_Notas.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFaturas_Notas.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFaturas_Notas.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     LBLPRODUTO.Caption := 'Produto = ' + Produto ;
end;

function TFrmFaturas_Notas.QntdeFiscal( Venda: Integer; Fiscal, Produto: String; QntProduto: Real ):Boolean;
Var
   V: REAL;
begin
     If Fiscal <> Produto
     then begin
          V := Arredonda(DmApp.Quantidade_Fiscal ( DmApp.Cnpj, Fiscal ),2) ;

          If ARREDONDA(V,2) >= ARREDONDA(QntProduto,2)
          then begin
               //ANOTA NA VENDA O NOVO PRODUTO
               Dmapp.Troca_Produto_Fiscal_Venda ( Venda, Produto, Fiscal );
               Result  := True ;
          end
          else begin
               Result  := False ;
          end;
     end
     else
         Result := False
end;

procedure TFrmFaturas_Notas.ActTrocarProdExecute(Sender: TObject);
Var
   Codigo: Integer;
   Fiscal: String ;
   Quantidade: Real;
begin
     Codigo := GRIDCODIGO.Field.Value ;

     If Codigo > 0
     then begin
          //BUSCA A QUANTIDADE DESTE PRODUTO NA VENDA
          Quantidade := DmApp.Quantidade_Produto_Venda ( Codigo, Produto );

          Application.CreateForm(TFrmLocProdutoCadastro_Auto, FrmLocProdutoCadastro_Auto) ;

          FrmLocProdutoCadastro_Auto.Showmodal;


          FrmLocProdutoCadastro_Auto.LblTitulo.Caption := 'Localizar Produto' ;

          FISCAL := ( FrmLocProdutoCadastro_Auto.CampTrecho );

          FrmLocProdutoCadastro_Auto.free   ;
          FrmLocProdutoCadastro_Auto := Nil ;

          //VERIFICA SE A QUANTIDADE FISCAL É SUFICIENTE
          IF Not QntdeFiscal( Codigo, Fiscal, Produto, Quantidade )
          THEN BEGIN
               MessageDlg('Estoque Insuficiente!', mtError, [mbOK], 0);
               Exit ;
          END;
     end
     else begin
          MessageDlg('Selecione Uma Venda!', Mterror, [mbok],0);
          GRID.SETFOCUS ;
     end;
end;

end.
