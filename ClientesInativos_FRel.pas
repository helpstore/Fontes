 unit ClientesInativos_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
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
  TFRelClientesInativos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Label2: TcxLabel;
    Print: TRDprint;
    EdTempo: TdxCurrencyEdit;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    CkTipo: TdxCheckEdit;
    Label3: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure EdTempoEnter(Sender: TObject);
    procedure EdTempoExit(Sender: TObject);
    procedure CkTipoChange(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelClientesInativos: TFRelClientesInativos;
  Linha, Pagina, TotalReg: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes, Listagens_DM ;


{$R *.DFM}

procedure TFRelClientesInativos.FormCreate(Sender: TObject);
begin
  TotalReg := 0;
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelClientesInativos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelClientesInativos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  DMListagens.Free;
  DMListagens := Nil;
  //
  Action := caFree;
  FRelClientesInativos := Nil;
end;

procedure TFRelClientesInativos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelClientesInativos.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelClientesInativos.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 55, 'Total de Registros : '+InttoStr(TotalReg), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, '  Codigo Nome                                               Telefone       Fax            Celular            Aberto(Vlr. Nominal)      ', [Comp17]);

  Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);

  linha  := 8;
end;

procedure TFRelClientesInativos.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
end;

procedure TFRelClientesInativos.ActPreviewExecute(Sender: TObject);
var
   Cont: Integer ;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Listagem Resumida de Clientes Inativos';
  //

  With DMListagens DO
  BEGIN
    Cont := 0;

    ClientesInativos.close;
    ClientesInativos.Sql.text := ' SELECT * FROM  CLIENTES_INATIVOS_PERIODO ( :CNPJ, :TEMPO, :MOVIMENTO ) ';
    ClientesInativos.Parambyname('CNPJ' ).AsString  := DmApp.Cnpj ;
    ClientesInativos.Parambyname('TEMPO').AsInteger := trunc(EdTempo.value)  ;

    if ( CkTipo.Checked ) then
      ClientesInativos.Parambyname('MOVIMENTO' ).AsString  := 'S'
    else
      ClientesInativos.Parambyname('MOVIMENTO' ).AsString  := 'N';

    ClientesInativos.Open;
    ClientesInativos.FetchAll ;
  end;

  If DMListagens.ClientesInativos.RecordCount = 0 Then
  Begin
     lblStatus.Visible := False ;
     ShowMessage('Não há registro a imprimir para o período, verifique !');
     //
     DMListagens.ClientesInativos.Close;
     //
     EdTempo.SetFocus;
     Exit;
  End
  Else
  Begin
     TotalReg := dmListagens.ClientesInativos.RecordCount;
     lblStatus.Visible := False ;
     Anda.Max := DMListagens.ClientesInativos.RecordCount ;
     Anda.Position := 0;
     Anda.Visible  := TRUE ;
  End;

  //
  print.Abrir;

  //
  DMListagens.ClientesInativos.First;

  While Not DMListagens.ClientesInativos.Eof Do
  Begin
       //
       Print.ImpF(Linha    , 01, Format('%8s %-50s %-14s %-14s %-14s %12s ',
                                           [DMListagens.ClientesInativosCODIGO.Text,
                                            DMListagens.ClientesInativosNOME.Text,
                                            DMListagens.ClientesInativosFONE.Text,
                                            DMListagens.ClientesInativosFONE1.Text,
                                            DMListagens.ClientesInativosFONE2.Text,
                                            DMListagens.ClientesInativosRECEBER.Text
                                            ]), [Comp17]);

       //
       Anda.Position := Anda.Position + 1;

       DMListagens.ClientesInativos.Next;

       //
       Linha := Linha + 1;

       //
       If Linha >= 63
       Then
           Print.Novapagina;
  END;

  //
  DMListagens.ClientesInativos.Close;

  //
  Anda.Visible:= False;

  print.Fechar;
end;

procedure TFRelClientesInativos.EdTempoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelClientesInativos.EdTempoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFRelClientesInativos.CkTipoChange(Sender: TObject);
begin
  if CkTipo.checked then
    edTempo.Enabled := false
  else
    edTempo.Enabled := true;
end;

end.
