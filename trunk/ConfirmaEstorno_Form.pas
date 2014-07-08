 unit ConfirmaEstorno_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  dxTL, dxDBCtrl, dxDBGrid, Db, dxDBTLCl, dxGrClms,
  dxDBELib, cxPropertiesStore, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxControls, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, cxLabel,
  cxButtons;

type
  TFrmConfirmaEstorno = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    Panel2: TPanel;
    BtnOk: TcxButton;
    RzBitBtn2: TcxButton;
    Panel1: TPanel;
    Valor: TdxDBEdit;
    Label4: TcxLabel;
    Nome: TdxDBEdit;
    Label2: TcxLabel;
    LBLVENCIMENTO: TcxLabel;
    DataBaixa: TdxDBEdit;
    Label1: TcxLabel;
    dxEdit1: TdxDBEdit;
    Label6: TcxLabel;
    pnlMovBancario: TPanel;
    GridMovimentos: TdxDBGrid;
    pnlRecebimento: TPanel;
    pnlCheques: TPanel;
    GridCheques: TdxDBGrid;
    pnlCartoes: TPanel;
    GridCartoes: TdxDBGrid;
    Panel6: TPanel;
    Panel5: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    dsRecebidas: TDataSource;
    dsCheques: TDataSource;
    dsCartoes: TDataSource;
    dsMovBancarios: TDataSource;
    GridChequesCHEQUE: TdxDBGridMaskColumn;
    GridChequesPRE_DATE: TdxDBGridDateColumn;
    GridChequesVALOR: TdxDBGridMaskColumn;
    GridChequesCONCILIADO: TdxDBGridMaskColumn;
    GridChequesHISTORICO: TdxDBGridMaskColumn;
    GridChequesNOME: TdxDBGridMaskColumn;
    GridChequesPLANILHA: TdxDBGridMaskColumn;
    GridChequesDIGITO_CHEQUE: TdxDBGridMaskColumn;
    GridChequesPROCESSADO: TdxDBGridMaskColumn;
    GridChequesCMC7: TdxDBGridMaskColumn;
    gridRecebimentos: TdxDBGrid;
    gridRecebimentosCODIGO: TdxDBGridMaskColumn;
    gridRecebimentosDT_BAIXA: TdxDBGridDateColumn;
    gridRecebimentosHISTORICO_BX: TdxDBGridMaskColumn;
    gridRecebimentosVLR_BAIXA: TdxDBGridMaskColumn;
    gridRecebimentosJUROS: TdxDBGridMaskColumn;
    gridRecebimentosDESCONTOS: TdxDBGridMaskColumn;
    gridRecebimentosPLANILHA: TdxDBGridMaskColumn;
    GridCartoesCODIGO: TdxDBGridMaskColumn;
    GridCartoesDATA: TdxDBGridDateColumn;
    GridCartoesVALOR: TdxDBGridMaskColumn;
    GridCartoesNUM_CARTAO: TdxDBGridMaskColumn;
    GridCartoesNUM_BANCO: TdxDBGridMaskColumn;
    GridCartoesNUM_CONTA: TdxDBGridMaskColumn;
    GridCartoesCONCILIADO: TdxDBGridMaskColumn;
    GridCartoesTIPO_DOC: TdxDBGridMaskColumn;
    GridCartoesTIPO: TdxDBGridMaskColumn;
    GridCartoesPROCESSADO: TdxDBGridMaskColumn;
    GridCartoesPLANILHA: TdxDBGridMaskColumn;
    GridMovimentosCODIGO: TdxDBGridMaskColumn;
    GridMovimentosDATA: TdxDBGridDateColumn;
    GridMovimentosTIPO: TdxDBGridMaskColumn;
    GridMovimentosHISTORICO: TdxDBGridMaskColumn;
    GridMovimentosVALOR: TdxDBGridMaskColumn;
    GridMovimentosCONTA: TdxDBGridMaskColumn;
    GridMovimentosPLANILHA: TdxDBGridMaskColumn;
    GridMovimentosTIPO_LANCAMENTO: TdxDBGridMaskColumn;
    dsPlanilha: TDataSource;
    GridChequesINDICE: TdxDBGridMaskColumn;
    dxDBEdit1: TdxDBEdit;
    stgFrmExtornaReceber: TcxPropertiesStore;
    procedure ActFecharExecute(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Planilha : integer;
  end;

var
  FrmConfirmaEstorno: TFrmConfirmaEstorno;

implementation

uses Funcoes, Financeiro_Dm2, Financeiro_Dm, Application_DM;

{$R *.DFM}

procedure TFrmConfirmaEstorno.ActFecharExecute(Sender: TObject);
begin
    Modalresult := mrCancel ;
end;

procedure TFrmConfirmaEstorno.IniKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfirmaEstorno.ActOkExecute(Sender: TObject);
begin
     Modalresult := mrok ;
end;

procedure TFrmConfirmaEstorno.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  with dmFinanceiro2 do
  begin
    qryEstPlanilha.Close;
    qryEstPlanilha.parambyname('planilha').value := planilha;
    qryEstPlanilha.Open;
    qryEstPlanilha.FetchAll;

    qryEstMovBanc.Close;
    qryEstMovBanc.parambyname('planilha').value := planilha;
    qryEstMovBanc.Open;
    qryEstMovBanc.FetchAll;

    qryEstRecebidas.Close;
    qryEstRecebidas.parambyname('planilha').value := planilha;
    qryEstRecebidas.Open;
    qryEstRecebidas.FetchAll;

    qryEstCheques.Close;
    qryEstCheques.parambyname('planilha').value := planilha;
    qryEstCheques.Open;
    qryEstCheques.FetchAll;

    qryEstCartoes.Close;
    qryEstCartoes.parambyname('planilha').value := planilha;
    qryEstCartoes.Open;
    qryEstCartoes.FetchAll;
  end;
end;

procedure TFrmConfirmaEstorno.BtnOkClick(Sender: TObject);
begin
  with dmFinanceiro2 do
  begin
    If Not DmaPP.TransactionProc.InTransaction then
      DmaPP.TransactionProc.StartTransaction ;

    try
      EstornaReceber.parambyname('cnpj').value := dmapp.cnpj;
      EstornaReceber.parambyname('PLANILHA').value := planilha;
      EstornaReceber.ExecProc;
      Application.messagebox('Estorno efetuado com sucesso','Aviso',mb_iconinformation+mb_ok);
      DmaPP.TransactionProc.Commit;
    except
      on E:EDataBaseError Do
      begin
        If DmaPP.TransactionProc.InTransaction then
          DmApp.TransactionProc.Rollback ;

        Application.Messagebox(Pchar('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + ' '),'Aviso',mb_iconerror+mb_ok);
      end
      Else
      begin
        if DmaPP.TransactionProc.InTransaction then
          DmApp.TransactionProc.Rollback ;

        Application.messagebox('Erro ao efetuar o estorno. Verifique','Aviso',mb_iconerror+mb_ok);
      end;
    end;
  end;
end;

end.

