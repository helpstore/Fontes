 unit Migrar_Dados_Filizola_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinscxPCPainter, cxPC,
  cxButtons, cxLabel;

type
  TFrmMigraDadosFilizola = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    barra: TProgressBar;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    PRODUTOS: TIBQuery;
    PC: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    PathDestino: TdxEdit;
    Label2: TcxLabel;
    PRODUTOSPRC_VENDA: TIBBCDField;
    PRODUTOSNOME: TIBStringField;
    PRODUTOSVALIDADE: TIntegerField;
    PRODUTOSPROD_PESAVEL: TIBStringField;
    PRODUTOSCODIGO: TIBStringField;
    BtnCriar: TcxButton;
    DIR: TOpenDialog;
    BtnDir: TcxButton;
    stgFrmMigraDadosFilizola: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure ActAbreExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMigraDadosFilizola: TFrmMigraDadosFilizola;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMigraDadosFilizola.FormCreate(Sender: TObject);
begin

  pc.ActivePageIndex := 0;

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMigraDadosFilizola.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMigraDadosFilizola.ActExportaExecute(Sender: TObject);
var
  I: Integer;
  f: TextFile;
  Aux, Vlr, AuxVld: String;
begin
  try
     AssignFile(f,ExtractFilePath(PathDestino.text)+'CADTXT.TXT');
     //Criando arquivo texto
     if FileExists(ExtractFilePath(PathDestino.text)+'CADTXT.TXT') then
       DeleteFile(ExtractFilePath(PathDestino.text)+'CADTXT.TXT');

     Rewrite(F,ExtractFilePath(PathDestino.text)+'CADTXT.TXT');
     Append(f);

     produtos.close ;
     produtos.open  ;
     produtos.FetchAll ;

     barra.visible := true;
     barra.Max := produtos.RecordCount ;

     while not produtos.eof do
     begin
       if ((trim(PRODUTOSCODIGO.asString) <> '' ) and (length(trim(PRODUTOSCODIGO.asString)) <= 6))  then
       begin
         //Código do produto
         Aux := COMPLETAESQ(copy(PRODUTOSCODIGO.asString,1,6),'0',6);

         //Se produto pesável ou por unidade
         if (PRODUTOSPROD_PESAVEL.asString = 'S') then
           aux := aux + 'P'
         else
           aux := aux + 'U';

         //Nome descrição do produto
         Aux := aux + COMPLETA(copy(PRODUTOSNOME.asString,1,22),' ',22);

         //valor do produto
         vlr := remove(PRODUTOSPRC_VENDA.text,',');
         vlr := remove(vlr,'.');
         vlr  := COMPLETAESQ(vlr,'0',7);
         aux := aux + vlr;
         //Dias de Validade
         if ProdutosVALIDADE.VALUE > 0 then
            aux := aux + COMPLETAESQ(copy(ProdutosVALIDADE.asString,1,3),'0',3);

         Writeln(f,AUX);   
       end;

       barra.Position := barra.Position + 1;
       produtos.NEXT ;
     end;

     bArra.VISIBLE := FALSE ;

     produtos.CLOSE ;
     produtos.CLOSE   ;
     CloseFile(f);
     application.messagebox('Produtos exportados com sucesso!','Aviso',mb_iconinformation+mb_ok);
  except
     CloseFile(f);
     application.messagebox('Erro ao realizar a exportação','Aviso',mb_iconerror+mb_ok);
  end;
end;

procedure TFrmMigraDadosFilizola.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmMigraDadosFilizola.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMigraDadosFilizola.ActAbreExecute(Sender: TObject);
begin
  if DIR.Execute then
    PathDestino.Text := DIR.FileName ;
end;

end.
