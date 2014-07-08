unit EntradasFat_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxExEdtr, dxEdLib, dxDBELib, dxEditor, dxCntner, StdCtrls, Db,
   Buttons, dxDBEdtr, ActnList, Mask,  
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel,    
  cxTextEdit, cxMaskEdit, cxSpinEdit;

type
  TFrmEntradasFat = class(TForm)
    PNLCLIENT: TPanel;
    Panel2: TPanel;
    Bevel1: TBevel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    DataSource: TDataSource;
    Label4: TcxLabel;
    edtDPL: TdxEdit;
    Label5: TcxLabel;
    edtObs: TdxEdit;
    Label9: TcxLabel;
    CmbTipo: TdxPickEdit;
    DsCentro: TDataSource;
    Actions: TActionList;
    actLookup: TAction;
    edtParcela: TcxSpinEdit;
    Label30: TcxLabel;
    Intervalo: TcxSpinEdit;
    Label6: TcxLabel;
    DataBase: TdxDateEdit;
    Label1: TcxLabel;
    procedure RzBitBtn1Click(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edParcelaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edParcelaEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edVenctoEnter(Sender: TObject);
    procedure edParcelaExit(Sender: TObject);
  private
    { Private declarations }
    procedure apagar_parcelas;
  public
    { Public declarations }

  end;

var
  FrmEntradasFat: TFrmEntradasFat;

implementation

uses Entradas_DM, Funcoes, Cadastros_DM, Application_DM, Centro_Custo_Form,
  Main;

{$R *.DFM}

procedure TFrmEntradasFat.RzBitBtn1Click(Sender: TObject);
Var
   Parcelar, valor, Entrada : real;
   Data : Tdate;
   pessoa,Cont,CENTRO_CUSTO, parcelas: integer;
begin
   if (Application.MessageBox('Confirma dados lançados?','Aviso',mb_yesno+mb_iconquestion) = id_no) then
     exit;
     
   Parcelar := (DMEntradas.EntradasVLR_TOTAL_NF.value);
   CENTRO_CUSTO := dmentradas.EntradasCENTRO_CUSTO.value;
   parcelas := Trunc(edtParcela.value);
   if (parcelas <= 0) then
     exit;

   Cont := 1;
   if (DataBase.Date > 0) then
     Data := DataBase.Date
   else
     Data := Date;
     
   valor := (Parcelar/parcelas);
   with DmEntradas do
   begin
     Apagar_Parcelas;
     Entradas_Fat.Close;
     Entradas_Fat.Open;
     while Cont <= parcelas do
     begin
       Entradas_Fat.append;
       Entradas_FatDT_VENCTO.value  := data;
       Entradas_FatPARCELA.value := inttostr(Cont) + '/' + inttostr(parcelas);
       Entradas_FatVALOR.Value := Valor;
       Entradas_FatDUPLICATA.value := edtDPL.Text;
       Entradas_FatOBSERVACAO.value := edtObs.Text;
       if (CmbTipo.Text = 'Sim') then
         Entradas_FatCONFERIDA.value :=  'S'
       else
         Entradas_FatCONFERIDA.value :=  'N';

       Entradas_Fat.Post;

       Cont := Cont + 1;
       Data := Data + Trunc(Intervalo.Value);
     end;
   end;
   Close;
end;

procedure TFrmEntradasFat.RzBitBtn2Click(Sender: TObject);
begin
  //
  DataSource.DataSet.Cancel;
  //
  Close;
end;

procedure TFrmEntradasFat.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FrmEntradasFat := Nil;
end;

procedure TFrmEntradasFat.edParcelaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);

end;

procedure TFrmEntradasFat.edParcelaEnter(Sender: TObject);
begin
     Corfundo(Sender);
end;

procedure TFrmEntradasFat.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  DataBase.Date := Date; 
end;

procedure TFrmEntradasFat.edVenctoEnter(Sender: TObject);
begin
     Corfundo(Sender);
end;

procedure TFrmEntradasFat.edParcelaExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorfundo(Sender);
end;

procedure TFrmEntradasFat.apagar_parcelas;
begin
  with dmEntradas do
  begin
    try
      ApagaParcelas.parambyname('cnpj').value := dmapp.cnpj;
      ApagaParcelas.parambyname('pessoa_fj').value := EntradasPESSOA_FJ.value;
      ApagaParcelas.parambyname('ndocto').value := EntradasNDOCTO.value;
      ApagaParcelas.ExecQuery;
    except
      application.messagebox('Erro ao tentar excluir as parcelas','Aviso',mb_iconerror+mb_ok);
      exit;
    end
  end;
end;

end.
