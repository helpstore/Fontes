unit DefineComissao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls,   dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib,  IBSQL, ActnList, dxDBEdtr, Db, dxmdaset, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TfrmRedefineComissao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOk: TcxButton;
    BtnCancelar: TcxButton;
    edtPorcentagem: TdxDBCalcEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    IBSQL: TIBSQL;
    Actions: TActionList;
    ActFechar: TAction;
    ActOK: TAction;
    Label4: TcxLabel;
    edtComissaoOld: TdxDBCalcEdit;
    cmbVendedor: TdxDBLookupEdit;
    Label12: TcxLabel;
    dxDBEdit20: TdxDBEdit;
    Label5: TcxLabel;
    mtbComissao: TdxMemData;
    mtbComissaovendedor: TIntegerField;
    mtbComissaohistorico: TStringField;
    dsComissao: TDataSource;
    mtbComissaoOldCom: TFloatField;
    mtbComissaopessoa: TIntegerField;
    mtbComissaonf: TIntegerField;
    mtbComissaocodigo: TIntegerField;
    mtbComissaovalor: TFloatField;
    EdCodigo: TdxDBEdit;
    EdNF: TdxDBEdit;
    DsVendedor: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure edtPorcentagemExit(Sender: TObject);
    procedure edtPorcentagemEnter(Sender: TObject);
    procedure edtPorcentagemKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCancelarClick(Sender: TObject);
    procedure ActOKExecute(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRedefineComissao: TfrmRedefineComissao;

implementation

uses Application_DM, Funcoes, Vendas_Dm;

{$R *.DFM}

procedure TfrmRedefineComissao.FormShow(Sender: TObject);
begin
  with dmVendas do
  begin
    mtbComissao.Open;
    mtbComissao.Edit;
    mtbComissaopessoa.value := Consulta_VendaPESSOA_FJ.value;
    mtbComissaoVENDEDOR.value := Consulta_VendaVENDEDOR.value;
    mtbComissaoHISTORICO.value := Consulta_VendaHISTORICO.value;
    mtbComissaovalor.value := Consulta_VendaPCT_COMISSAO.asFloat;
    mtbComissaoOLDCOM.value := Consulta_VendaPCT_COMISSAO.asFloat;
    mtbComissaoNF.value := Consulta_VendaNUM_NF.value;
    mtbComissaoCODIGO.value := Consulta_VendaCODIGO.value;

    SelVendedor.close;
    SelVendedor.Open;
    SelVendedor.FetchAll;
  end;
  
end;

procedure TfrmRedefineComissao.edtPorcentagemExit(Sender: TObject);
begin
     TIRACORFUNDO( SENDER );
end;

procedure TfrmRedefineComissao.edtPorcentagemEnter(Sender: TObject);
begin
CORFUNDO ( SENDER );
end;

procedure TfrmRedefineComissao.edtPorcentagemKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if (key=VK_RETURN) OR (Key=VK_DOWN) Then
Begin
  Perform(WM_NEXTDLGCTL, 0, 0);
End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TfrmRedefineComissao.BtnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmRedefineComissao.ActOKExecute(Sender: TObject);
begin
  if mtbComissaoVENDEDOR.asString = '' then
  begin
    application.messagebox('Defina um vendedor','Aviso',mb_ok+mb_iconerror);
    exit;
  end;
  
  if ((mtbComissaovalor.value < 0) or (mtbComissaovalor.value > 100)) then
  begin
    application.messagebox('Valor de percentual inválido. Defina um novo valor','Aviso',mb_ok+mb_iconerror);
    exit;
  end;

  if (application.messagebox('Deseja realmente redefinir à comissão?','Aviso',mb_yesno+mb_iconquestion) = id_yes) then
  begin
    try
      IBSQL.parambyname('cnpj').value := dmapp.cnpj;
      IBSQL.parambyname('pct').value := mtbComissaovalor.value;
      IBSQL.parambyname('codigo').value := mtbComissaocodigo.value;
      IBSQL.parambyname('pessoa_fj').value := mtbComissaopessoa.value;
      IBSQL.parambyname('vendedor').value := mtbComissaovendedor.value;
      IBSQL.parambyname('historico').value := mtbComissaohistorico.value;
      IBSQL.ExecQuery;
      DMApp.Transaction.commitRetaining;
      application.messagebox('Comissão redefinida com sucesso','Aviso',mb_ok+mb_iconinformation);
      close;
    except
      application.messagebox('Erro ao redefinir os valores de comissão','Aviso',mb_ok+mb_iconerror);
      DMApp.Transaction.RollbackRetaining;
    end;
  end
end;

procedure TfrmRedefineComissao.ActFecharExecute(Sender: TObject);
begin
  close;
end;

end.
