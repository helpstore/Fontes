  unit Migrar_Dados_Toledo_Form;

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
  TFrmMigraDadosToledo = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    PRODUTOS: TIBQuery;
    PC: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    BtnDir: TcxButton;
    PathDestino: TdxEdit;
    Label2: TcxLabel;
    BtnCriar: TcxButton;
    PRODUTOSPRC_VENDA: TIBBCDField;
    PRODUTOSNOME: TIBStringField;
    PRODUTOSVALIDADE: TIntegerField;
    PRODUTOSPROD_PESAVEL: TIBStringField;
    PRODUTOSCODIGO: TIBStringField;
    stgFrmMigraDadosToledo: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAbreExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMigraDadosToledo: TFrmMigraDadosToledo;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmMigraDadosToledo.FormCreate(Sender: TObject);
begin

  pc.ActivePageIndex := 0;

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmMigraDadosToledo.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmMigraDadosToledo.ActAbreExecute(Sender: TObject);
begin
     IF DIR.Execute
     THEN BEGIN
          PathDestino.Text := DIR.FileName ;
     END;
end;

procedure TFrmMigraDadosToledo.ActExportaExecute(Sender: TObject);
var
  I: Integer;
  f: TextFile;
  Aux, Vlr, AuxVld: String;
begin
  try
     AssignFile( f, PathDestino.text + 'TXITENS.TXT' );

     //CRIAR ARQUIVO TXT Q GERAR LINHA 000
     if FileExists( PathDestino.text + 'TXITENS.TXT' )
     then
         DeleteFile( PathDestino.text + 'TXITENS.TXT' );

     Rewrite( F, PathDestino.text + 'TXITENS.TXT' );

     Append(f);

     //
     PRODUTOS.CLOSE ;
     PRODUTOS.OPEN  ;

     PRODUTOS.FetchAll ;

     ANDA.VISIBLE := TRUE ;

     ANDA.Max := PRODUTOS.RecordCount ;

     PRODUTOS.first;
     WHILE NOT PRODUTOS.EOF DO
     BEGIN
          IF ( NOT PRODUTOSCODIGO.IsNull  ) and ( trim(PRODUTOSCODIGO.value) <> '' )
          THEN BEGIN
               Aux := '';

               //DEPARTAMENTO
               Aux := '01';

               //ETIQUETA NO DEPARTAMENTO
               Aux := AUX + '00';

               //TIPO DE PRODUTO
               IF PRODUTOSPROD_PESAVEL.VALUE = 'S'
               THEN BEGIN
                    Aux := AUX + '0';
               END
               ELSE BEGIN
                    Aux := AUX + '1';
               END;

               //CODIGO DO PRODUTO
               Aux := AUX + COMPLETAESQ( COPY(PRODUTOSCODIGO.value,1,6), '0', 6 );

               //PRECO DO PRODUTO
               Vlr := REMOVE(PRODUTOSPRC_VENDA.TEXT,',');
               Vlr := REMOVE(VLR,'.');
               VLR  := COMPLETAESQ( VLR, '0', 6 );
               AUX := AUX + VLR ;

               IF PRODUTOSVALIDADE.VALUE > 0
               THEN BEGIN
                    AUXVLD := PRODUTOSVALIDADE.TEXT ;
               END
               ELSE BEGIN
                    AUXVLD := '90';
               END;

               //DIAS DE VALIDADE
               AUX := AUX + COMPLETAESQ( AUXVLD, '0', 3); ;

               //NOME LINHA 1
               AUX := AUX + COMPLETA(COPY(PRODUTOSNOME.VALUE,1,25),' ',25) ;

               //NOME LINHA 2
               AUX := AUX + COMPLETA(COPY(PRODUTOSNOME.VALUE,26,25),' ',25) ;

               Writeln( f, AUX );
          END;

          ANDA.Position := ANDA.Position + 1;

          PRODUTOS.NEXT ;
    END;

    ANDA.VISIBLE := FALSE ;

    PRODUTOS.CLOSE ;

    CloseFile(f);
    showmessage('Arquivo Criado com Sucesso!');
  finally

  end;
end;

procedure TFrmMigraDadosToledo.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmMigraDadosToledo.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

end.
