unit AnaliseCustos_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, Grids, DBGrids,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmAnaliseCustos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActFechar: TAction;
    DsVenda: TDataSource;
    Label1: TcxLabel;
    EdDocumento: TdxDBEdit;
    Label3: TcxLabel;
    EdDataNota: TdxDBDateEdit;
    dxDBEdit3: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    Label2: TcxLabel;
    LblTitulo: TcxLabel;
    Image1: TImage;
    b2: TBevel;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    Panel3: TPanel;
    Label27: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label10: TcxLabel;
    Bevel1: TBevel;
    GridItensCUSTO: TdxDBGridColumn;
    ActAnalisar: TAction;
    EdValor: TdxCurrencyEdit;
    Label4: TcxLabel;
    Label5: TcxLabel;
    GridItensUNITARIO2: TdxDBGridColumn;
    EdDesconto: TdxCurrencyEdit;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    LBLMARGEM: TcxLabel;
    LBLNOVAMARGEM: TcxLabel;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActAnalisarExecute(Sender: TObject);
    procedure EdValorEnter(Sender: TObject);
    procedure EdValorExit(Sender: TObject);

  private
    { Private declarations }
    procedure MOSTRA_MARGENS ;
  public
    { Public declarations }
    CodigoVenda : Integer;
  end;

var
  FrmAnaliseCustos: TFrmAnaliseCustos;
  Linha, Pagina: Integer;
implementation

uses Vendas_Dm, Usuarios_DM, Application_DM, EnviaCaixa_FRel, Funcoes,
  TipoFaturaVenda_Form, Vendas_DM2;


{$R *.DFM}

procedure TFrmAnaliseCustos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmAnaliseCustos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmAnaliseCustos := Nil;
end;

procedure TFrmAnaliseCustos.cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmAnaliseCustos.FormShow(Sender: TObject);
begin
  MOSTRA_MARGENS;

  IniciaComponentes ( Self as TForm );
  edvalor.setfocus ;
end;

procedure TFrmAnaliseCustos.ActAnalisarExecute(Sender: TObject);
begin
     If EdValor.Value <= 0
     then begin
          messagedlg( 'Digite o Novo Valor!', MtError, [mbok],0 );
          EdValor.SetFocus ;
          Exit ;
     end;

     EdDesconto.Value := ARREDONDA( ( ( DmVendas.VER_ANALISE_CUSTOSTOTAL.VALUE - EdValor.VALUE ) / EdValor.VALUE ) * 100 ,2) ;

     WITH DmVendas do
     Begin
          VER_ANALISE_CUSTOS.Close ;

          VER_ANALISE_CUSTOS.ParamByName ( 'CNPJ'  ).AsString  := DmApp.Cnpj         ;
          VER_ANALISE_CUSTOS.ParamByName ( 'VENDA' ).AsInteger := CodigoVenda ;
          VER_ANALISE_CUSTOS.ParamByName ( 'NOVO'  ).AsFloat   := EdValor.Value      ;

          VER_ANALISE_CUSTOS.Prepare ;

          VER_ANALISE_CUSTOS.Open ;

     end;

     MOSTRA_MARGENS;
end;

procedure TFrmAnaliseCustos.EdValorEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmAnaliseCustos.EdValorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmAnaliseCustos.MOSTRA_MARGENS ;
VAR
   SCUSTOS, SVENDAS, SVENDAS2, SMARGEM, SNOVA: REAL;
Begin
     //MARGENS DE LUCRO
     WITH DmVendas do
     Begin
          SCUSTOS  := 0;
          SVENDAS  := 0;
          SVENDAS2 := 0;
          SMARGEM  := 0;
          SNOVA    := 0;

          VER_ANALISE_CUSTOS.FIRST ;

          WHILE NOT VER_ANALISE_CUSTOS.EOF DO
          BEGIN
               SCUSTOS  := SCUSTOS + VER_ANALISE_CUSTOSPRC_CUSTO.VALUE ;

               SVENDAS  := SVENDAS + VER_ANALISE_CUSTOSPRC_UNITARIO.VALUE ;

               SVENDAS2 := SVENDAS2 + VER_ANALISE_CUSTOSPRC_UNITARIO_2.VALUE ;

               VER_ANALISE_CUSTOS.NEXT ;
          END;

          IF SCUSTOS > 0
          THEN BEGIN
               SMARGEM := (( SVENDAS  / SCUSTOS ) - 1) * 100 ;
               SNOVA   := (( SVENDAS2 / SCUSTOS ) - 1) * 100 ;
          END;

          LBLMARGEM.CAPTION     := FORMATFLOAT('% ###,##0.00', SMARGEM );
          LBLNOVAMARGEM.CAPTION := FORMATFLOAT('% ###,##0.00', SNOVA );
     end;
end;

end.


