  unit VerificaLimiteCredito_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    RDprint, Db, ActnList, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxCntner, StdCtrls, Buttons, ExtCtrls, 
    dxBar, cxPropertiesStore, Variants, dxExEdtr, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxClasses, cxPC, cxLabel;

type
  TFrmLimitesCreditos = class(TForm)
    pnlForm: TPanel;
    Bevel3: TBevel;
    LblTitulo: TcxLabel;
    LBLCLIENTE: TcxLabel;
    Actions: TActionList;
    ActFechar: TAction;
    DsReceber: TDataSource;
    ActProdutos: TAction;
    ActImprimir: TAction;
    ActLibera: TAction;
    PC: TcxPageControl;
    Faturas: TcxTabSheet;
    DsRecebidas: TDataSource;
    GRIDRECEBER: TdxDBGrid;
    GRIDPARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDJUROSCALC: TdxDBGridColumn;
    GRIDTOTAL_NOMINAL: TdxDBGridColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDATRASO: TdxDBGridColumn;
    GRIDARQ_MORTO: TdxDBGridMaskColumn;
    GRIDRECEBERDT_VENCTO: TdxDBGridColumn;
    GRIDRECEBERDOCTO: TdxDBGridMaskColumn;
    BarManager: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    LBLLIMITE: TcxLabel;
    LimiteAtual: TdxBarButton;
    Panel1: TPanel;
    Label5: TcxLabel;
    Label2: TcxLabel;
    stgFrmLimitesCreditos: TcxPropertiesStore;
    Label27: TcxLabel;
    GRIDCHEQUE: TdxDBGrid;
    GRIDCHEQUEBANCO: TdxDBGridMaskColumn;
    GRIDCHEQUECONTA: TdxDBGridMaskColumn;
    GRIDCHEQUECHEQUE: TdxDBGridMaskColumn;
    GRIDCHEQUEEMISSAO: TdxDBGridDateColumn;
    GRIDCHEQUEPRE_DATE: TdxDBGridDateColumn;
    GRIDCHEQUEVALOR: TdxDBGridMaskColumn;
    GRIDCHEQUEHISTORICO: TdxDBGridMaskColumn;
    GRIDCHEQUEAGENCIA: TdxDBGridMaskColumn;
    GRIDCHEQUETotal: TdxDBGridColumn;
    GRIDCHEQUEJUROS: TdxDBGridMaskColumn;
    GRIDCHEQUEPROCESSADO: TdxDBGridMaskColumn;
    GRIDCHEQUEVEZES_DEVOLUCAO: TdxDBGridMaskColumn;
    GRIDCHEQUEDATA_ACERTO: TdxDBGridDateColumn;
    Panel2: TPanel;
    Label1: TcxLabel;
    DsCheques: TDataSource;
    procedure ActFecharExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActLiberaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    Function FiltrarVendaAberta(CLIENTE: INTEGER ): Real ;
    procedure GRIDRECEBERCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GridChequeCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);

  private
    { Private declarations }
    procedure Seleciona;

  public
    Nome: String ;
    Codigo: Integer ;
    Autorizou: Boolean ;
    Compra_Atual: Real ;

    { Public declarations }
  end;

var
  FrmLimitesCreditos: TFrmLimitesCreditos;
  INI, FIM: Integer;
  AUX, STR: String;
  Inicial, Final: Integer ;
  Pagina, Lin   : Integer ;
  SomaReceber, SomaCheque, SomaFatura, SomaFaturaFutura: Real ;
implementation

{$R *.DFM}
uses
    Cadastros_DM,
    Application_DM,
    Funcoes,
    Main,
    Financeiro_Dm,
    Empresas_DM,
    Vendas_Dm,
    MensagemClassificacao_Form, Financeiro_Dm2;

Function TFrmLimitesCreditos.FiltrarVendaAberta( CLIENTE: INTEGER ): Real ;
Var
   Soma: Real   ;
Begin
     With DmFinanceiro do
     begin
          //isso na verdade é venda, não tem nada de fatura futura..
          SelFatura_Futura.close;
          SelFatura_Futura.Sql.text := ' SELECT * FROM VER_FAT_VENDAS_ABERTAS( :CNPJ, :DINI, :DFIM, :PESSOA ) ';
          SelFatura_Futura.ParamByName ( 'CNPJ'   ).AsString  := DmaPP.Cnpj ;
          SelFatura_Futura.ParamByName ( 'PESSOA' ).AsInteger := Cliente    ;
          SelFatura_Futura.ParamByName ( 'DINI'   ).AsDate    := STRTODATE('01/01/1900');
          SelFatura_Futura.ParamByName ( 'DFIM'   ).AsDate    := STRTODATE('31/12/9999');
          SelFatura_Futura.Open    ;

          Soma := 0;
          SelFatura_Futura.DisableControls ;
          SelFatura_Futura.First ;
          While not SelFatura_Futura.Eof do
          begin
               Soma := Soma + SelFatura_FuturaVLRLIQUIDO.Value ;
               SelFatura_Futura.Next ;
          end;
          SelFatura_Futura.EnableControls ;

          VerFaturasBaixadas.close ;
          VerFaturasBaixadas.ParamByName('CNPJ').AsString  := DmApp.Cnpj ;
          VerFaturasBaixadas.ParamByName('COD' ).AsInteger := Cliente    ;
          VerFaturasBaixadas.Open  ;
     end;

     Result := Soma ;
End;

procedure TFrmLimitesCreditos.ActFecharExecute(Sender: TObject);
begin
  Autorizou := False ;
     close ;
end;

procedure TFrmLimitesCreditos.Seleciona ;
begin
     WITH DmFinanceiro2 DO
     BEGIN
          //CHEQUES DEVOLVIDOS
          //select colocado no codigo de dm financeiro
          //vai pegar soment eos que foram devolvidos e deixar os que forama acertados
          qryVerChequeLMT.Close ;
          qryVerChequeLMT.ParamByName('cliente').asInteger := CODIGO ;
          qryVerChequeLMT.Open;

          qryVerChequePendencia.Close ;
          qryVerChequePendencia.ParamByName('cliente').asInteger := codigo;
          qryVerChequePendencia.Open;

          SomaCheque := 0;
          qryVerChequeLMT.first;
          while not qryVerChequeLMT.eof do
          begin
             SomaCheque := SomaCheque + qryVerChequeLMTValor.Value ;
             qryVerChequeLMT.next ;
          end;

          //RECEBER
          qryVerRecLimite.Close;
          qryVerRecLimite.ParamByName ('CNPJ').value := DMAPP.CNPJ;
          qryVerRecLimite.ParamByName ('PESSOA_FJ').asInteger := CODIGO;
          qryVerRecLimite.Open;


     end;
END;



procedure TFrmLimitesCreditos.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     Seleciona ;
end;

procedure TFrmLimitesCreditos.ActLiberaExecute(Sender: TObject);
begin
     Autorizou := False ;

     Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);

     FrmMensagemClassificacao.MEMO.Lines.Add (' Digite a Senha ');
     FrmMensagemClassificacao.MEMO.Lines.Add (' de Supervisor  ');

     FrmMensagemClassificacao.EdSenha.Visible := true ;
     FrmMensagemClassificacao.Label6.Visible  := true ;
     //Se o Nível ou a Classificacao exigir senha e não foi digitada
     if FrmMensagemClassificacao.Showmodal = MrCancel
     then Begin
          MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
          Autorizou := False ;
     end
     else begin
          Autorizou := true ;
          Close ;
     end;
     FrmMensagemClassificacao.Free   ;
     FrmMensagemClassificacao := Nil ;
end;

procedure TFrmLimitesCreditos.FormCreate(Sender: TObject);
begin
     Autorizou := False ;
end;

procedure TFrmLimitesCreditos.GRIDRECEBERCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
begin
     if ( not ASelected  )
     then begin
          Value := ANode.Values[GRIDRECEBERDT_VENCTO.Index];

          if not VarIsNull(Value) then
          begin
            if Value < Date then
               AColor := $00ECAD84
            else
               AColor := clWhite;
          end
          else
          begin
             AFont.Color := clBlack;
          end;
     end;
end;

procedure TFrmLimitesCreditos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 DmFinanceiro2.qryVerRecLimite.Close;
end;
procedure TFrmLimitesCreditos.GridChequeCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: STRING ;
begin
    if (not ASelected) then
    begin
    Value := ANode.Values[GRIDCHEQUEPROCESSADO.Index];
    if not VarIsNull(Value) then
    begin
      if Value = 'S' then
        AColor := $00ECAD84
      else
        AColor := clWhite;
    end
    else AFont.Color := clBlack;

    if ANode.Values[GRIDCHEQUEVEZES_DEVOLUCAO.Index] = '1' then
      AColor := $008080FF
    else
      if ANode.Values[GRIDCHEQUEVEZES_DEVOLUCAO.Index] = '2' then
        AColor := $00970097;

    if not VarIsNull(ANode.Values[GRIDCHEQUEDATA_ACERTO.Index]) then
      AColor := $004B9696;

  end;
end;


end.
