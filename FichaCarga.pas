 unit FichaCarga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, ActnList, DBCtrls, Db, StdCtrls, Mask,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, cxGraphics, cxControls,
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
  TFrmFichaCarga = class(TForm)
    Panel6: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Image1: TImage;
    Panel1: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Panel2: TPanel;
    Label1: TcxLabel;
    DataSource: TDataSource;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    Label10: TcxLabel;
    ActLista: TActionList;
    ActCancelar: TAction;
    ActSalvar: TAction;
    dxDBEdit3: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBMemo1: TdxDBMemo;
    edtDtSolicitacao: TdxDBDateEdit;
    edtHoraSolicitacao: TdxDBTimeEdit;
    Label11: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdCEP: TdxDBMaskEdit;
    RzBitBtn15: TcxButton;
    ActImportarDados: TAction;
    procedure ActCancelarExecute(Sender: TObject);
    procedure edtDtSolicitacaoEnter(Sender: TObject);
    procedure edtDtSolicitacaoExit(Sender: TObject);
    procedure edtDtSolicitacaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActImportarDadosExecute(Sender: TObject);
    procedure dxDBEdit1Enter(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure edtHoraSolicitacaoEnter(Sender: TObject);
    procedure edtHoraSolicitacaoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFichaCarga: TFrmFichaCarga;

implementation

uses OrdemCarga_DM, Funcoes;

{$R *.DFM}

procedure TFrmFichaCarga.ActCancelarExecute(Sender: TObject);
begin
     Close;
end;

procedure TFrmFichaCarga.edtDtSolicitacaoEnter(Sender: TObject);
begin
     if (edtDtSolicitacao.Text = '  /  /    ') then
        DmOrdemCarga.OrdemCargaDT_ENTREGA.asstring := DateToStr(now);
     CorFundo ( Sender );
end;

procedure TFrmFichaCarga.edtDtSolicitacaoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmFichaCarga.edtDtSolicitacaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFichaCarga.ActSalvarExecute(Sender: TObject);
begin
     DataSource.DataSet.post;
     close;
end;

procedure TFrmFichaCarga.ActImportarDadosExecute(Sender: TObject);
begin
  if application.messagebox('Deseja Realmente Importar Dados da Venda ?','Aviso', mb_iconquestion + MB_YESNO ) = id_yes then
    DmOrdemCarga.ImportaDadosPedido;
  Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmFichaCarga.dxDBEdit1Enter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmFichaCarga.dxDBEdit1Exit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmFichaCarga.edtHoraSolicitacaoEnter(Sender: TObject);
begin
     if (edtHoraSolicitacao.Text = '  :  :  ') then
        DmOrdemCarga.OrdemCargaHR_ENTREGA.asstring      := TimeToStr(now);
     CorFundo ( Sender );
end;

procedure TFrmFichaCarga.edtHoraSolicitacaoExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

end.
