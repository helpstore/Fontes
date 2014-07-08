 unit Fatura_Futura_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  IBCustomDataSet, IBQuery, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelFaturaFutura = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    DsClientes: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbCliente: TdxLookupEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    edNDocto: TdxEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    CkEnviada: TdxCheckEdit;
    Label5: TcxLabel;
    CmbBanco: TdxLookupEdit;
    DsBanco: TDataSource;
    CkCarteira: TdxCheckEdit;
    cmbTipo: TdxPickEdit;
    Label6: TcxLabel;
    RDABERTAS: TRadioButton;
    RDPAGAS: TRadioButton;
    CkProtocolo: TdxCheckEdit;
    CkSomenteProt: TdxCheckEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure CkCarteiraChange(Sender: TObject);
    procedure CkProtocoloClick(Sender: TObject);
    procedure CkSomenteProtChange(Sender: TObject);
    procedure CkSomenteProtClick(Sender: TObject);
    procedure cmbClienteExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];
    procedure LISTA  ;
  public
    { Public declarations }
  end;

var
  FRelFaturaFutura: TFRelFaturaFutura;
  Linha, Pagina: Integer;
implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm;

{$R *.DFM}

procedure TFRelFaturaFutura.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelFaturaFutura.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelFaturaFutura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DsClientes.DataSet.Close;

  DsBanco.DataSet.Close;

  Action := caFree;
  FRelFaturaFutura := Nil;
end;

procedure TFRelFaturaFutura.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelFaturaFutura.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelFaturaFutura.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If RDABERTAS.Checked
  then begin
       Print.ImpF(05, 01, '     Dpl Cliente                                      Vencto         Total Banco           Situacao                                     ', [Comp17]);
       Print.ImpF(06, 01, '-------- ---------------------------------------- ---------- ------------- --------------- ---------------------------------------------', [Comp17]);
  END
  ELSE BEGIN
       Print.ImpF(05, 01, '     Dpl Cliente                                       Baixa         Total Banco           Situacao                                     ', [Comp17]);
       Print.ImpF(06, 01, '-------- ---------------------------------------- ---------- ------------- --------------- ---------------------------------------------', [Comp17]);
  END;

  linha  := 7;
end;

procedure TFRelFaturaFutura.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    DsClientes.DataSet.Open;
    DsBanco.DataSet.Open;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFRelFaturaFutura.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;
  NDocto := '';
  //

  LISTA ;
end;

procedure TFRelFaturaFutura.LISTA ;
var
   Valor, tt_juros, tt_liquido, tt_valor: real ;
   Cont: Integer;
   NomeBanco, Situacao: String;
Begin
     //
     Print.TitulodoRelatorio := 'Relatorio de Duplicatas';

     With DmFinanceiro do
     begin
          Cont := 0;

          VerFatura.Close ;

          VerFatura.Sql.Clear ;

          VerFatura.Params.Clear ;

          VerFatura.Params.CreateParam ( FtString, 'CNPJ', PtInput );
          VerFatura.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VerFatura.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          If RDABERTAS.Checked
          then begin
               VerFatura.Sql.Add (' Select * From VER_FATURA_PERIODO ( :CNPJ, :DINI, :DFIM ) ');
          end
          else begin
               VerFatura.Sql.Add (' Select * From VER_FATURA_PERIODO_BAIXADAS ( :CNPJ, :DINI, :DFIM ) ');
          end;

          VerFatura.ParamByName('CNPJ').asString     := DMApp.Cnpj       ;
          VerFatura.ParamByName('DINI').asDate       := edDtInicial.Date ;
          VerFatura.ParamByName('DFIM').asDate       := edDtFinal.Date   ;

          //
          If Trim(cmbCliente.Text) <> ''
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    VerFatura.Sql.Add (' Where Pessoa_Fj = :PES ');

                    VerFatura.ParamByName('PES').asInteger := cmbCliente.LookupKeyValue ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    VerFatura.Sql.Add (' And Pessoa_Fj = :PES ');

                    VerFatura.ParamByName('PES').asInteger := cmbCliente.LookupKeyValue ;

                    Cont := Cont + 1;
               end;
          End;

          If Trim(edNDocto.Text) <> ''
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtInteger, 'DOC', PtInput );

                    VerFatura.Sql.Add (' Where CODIGO = :DOC ');

                    VerFatura.ParamByName('DOC').asInteger := strtoint(trim(edNDocto.Text)) ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtInteger, 'DOC', PtInput );

                    VerFatura.Sql.Add (' And CODIGO = :DOC ');

                    VerFatura.ParamByName('DOC').asInteger := strtoint(trim(edNDocto.Text)) ;

                    Cont := Cont + 1;
               end;
          End;

          If Trim(cmbTipo.Text) <> ''
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtString, 'TIPO', PtInput );

                    VerFatura.Sql.Add (' Where TIPO = :TIPO ');

                    VerFatura.ParamByName('TIPO').asString := cmbTipo.text ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtString, 'TIPO', PtInput );

                    VerFatura.Sql.Add (' And TIPO = :TIPO ');

                    VerFatura.ParamByName('TIPO').asString := cmbTipo.text ;

                    Cont := Cont + 1;
               end;
          End;

          If CkEnviada.Checked
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtString, 'ENV', PtInput );

                    VerFatura.Sql.Add (' Where ENVIADA = :ENV ');

                    VerFatura.ParamByName('ENV').asString := 'S' ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtString, 'ENV', PtInput );

                    VerFatura.Sql.Add (' And ENVIADA = :ENV ');

                    VerFatura.ParamByName('ENV').asString := 'N' ;

                    Cont := Cont + 1;
               end;
          End;

          If CkProtocolo.Checked
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtString, 'PROT', PtInput );

                    VerFatura.Sql.Add (' Where TIPO <> :PROT ');

                    VerFatura.ParamByName('PROT').asString := 'PROTOCOLO' ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtString, 'PROT', PtInput );

                    VerFatura.Sql.Add (' And TIPO <> :PROT ');

                    VerFatura.ParamByName('PROT').asString := 'PROTOCOLO' ;

                    Cont := Cont + 1;
               end;
          End;

          If CkSomenteProt.Checked
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Params.CreateParam ( FtString, 'PROT1', PtInput );

                    VerFatura.Sql.Add (' Where TIPO = :PROT1 ');

                    VerFatura.ParamByName('PROT1').asString := 'PROTOCOLO' ;

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Params.CreateParam ( FtString, 'PROT1', PtInput );

                    VerFatura.Sql.Add (' And TIPO = :PROT1 ');

                    VerFatura.ParamByName('PROT1').asString := 'PROTOCOLO' ;

                    Cont := Cont + 1;
               end;
          End;

          If CkCarteira.Checked
          Then Begin
               If Cont = 0
               then begin
                    VerFatura.Sql.Add (' Where BANCO IS NULL ');

                    Cont := Cont + 1;
               end
               else begin
                    VerFatura.Sql.Add (' And BANCO IS NULL ');

                    Cont := Cont + 1;
               end;
          End
          ELSE BEGIN
               If CmbBanco.Text <> ''
               Then Begin
                    If Cont = 0
                    then begin
                         VerFatura.Params.CreateParam ( FtString, 'BNC', PtInput );

                         VerFatura.Sql.Add (' Where BANCO = :BNC ');

                         VerFatura.ParamByName('BNC').asString := CmbBanco.LOOKUPKEYVALUE ;

                         Cont := Cont + 1;
                    end
                    else begin
                         VerFatura.Params.CreateParam ( FtString, 'BNC', PtInput );

                         VerFatura.Sql.Add (' And BANCO = :BNC ');

                         VerFatura.ParamByName('BNC').asString := CmbBanco.LOOKUPKEYVALUE ;

                         Cont := Cont + 1;
                    end;
               END;
          End;

          VerFatura.Sql.Add (' order by NOME ');

          If Not VerFatura.Prepared
          then
              VerFatura.prepare ;

          //
          VerFatura.Open;

          //
          If VerFatura.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registros para o período, verifique !');
               //
               VerFatura.Close;
               //
               edDtInicial.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;

               Anda.Max :=  DMFinanceiro.VerFatura.RecordCount;

               Anda.Position := 0;

               Anda.Visible  := TRUE ;
          End;

          Print.Abrir;

          tt_juros   := 0;
          tt_liquido := 0;
          tt_valor   := 0;

          //
          VerFatura.First;

          While Not VerFatura.Eof Do
          Begin
               //
               Valor      := 0;
               tt_Liquido := tt_Liquido +  VerFaturaTotal.Value + Valor ;
               tt_valor   := tt_valor   +  VerFaturaTotal.value         ;
               tt_juros   := tt_juros   +  Valor                       ;

               Situacao  := '' ;
               NomeBanco := '' ;

               If UPPERCASE(VerFaturaTIPO.Value) = 'DESCONTADA'
               THEN BEGIN
                    Situacao := 'DESCONTADA' ;

                    If VerFaturaBanco.Value <> ''
                    then begin
                         NomeBanco := VerFaturaNome_Banco.Value ;
                    end
                    else begin
                         NomeBanco := 'CARTEIRA' ;
                    end;
               END;

               If UPPERCASE(VerFaturaTIPO.Value) = 'CARTEIRA'
               THEN BEGIN
                    Situacao := 'CARTEIRA';

                    IF VerFaturaENVIADA.VALUE = 'S'        
                    THEN BEGIN
                         Situacao := Situacao + ' ENVIADA' ;
                    END;

                    IF TRIM(VerFaturaDUPLICATA.VALUE)<> ''
                    THEN BEGIN
                         Situacao := VerFaturaDUPLICATA.VALUE ;
                    END;

                    If VerFaturaBanco.Value <> ''
                    then begin
                         NomeBanco := VerFaturaNome_Banco.Value ;
                    end
                    else begin
                         NomeBanco := 'CARTEIRA' ;
                    end;
               END;


               If UPPERCASE(VerFaturaTIPO.Value) = 'PROTOCOLO'
               THEN BEGIN
                    Situacao := 'PROTOCOLO';

                    IF TRIM(VerFaturaOBS.VALUE) <> ''
                    THEN BEGIN
                         SITUACAO := SITUACAO + ' ' + TRIM(VerFaturaOBS.VALUE);
                    END;

                    NomeBanco := 'CARTEIRA' ;
               END;


               If RDABERTAS.Checked
               then begin
                    Print.ImpF(Linha, 01, Format('%-8s %-40s %10s %14s %-15s %-43s',
                                       [
                                        VerFaturaCODIGO.Text+ '/' + copy(VerFaturaVencimento.Text,9,2),
                                        copy(VerFaturaNOME.Value,1,40),
                                        VerFaturaVencimento.Text,
                                        VerFaturaTotal.Text,
                                        copy(NomeBanco,1,15),
                                        Situacao
                                        ]), [Comp17]);
               END
               ELSE BEGIN
                    Print.ImpF(Linha, 01, Format('%-8s %-40s %10s %14s %-15s %-43s',
                                       [
                                        VerFaturaCODIGO.Text+ '/' + copy(VerFaturaVencimento.Text,9,2),
                                        copy(VerFaturaNOME.Value,1,40),
                                        VerFaturaDATA_BAIXA.Text,
                                        VerFaturaTotal.Text,
                                        copy(NomeBanco,1,15),
                                        Situacao
                                        ]), [Comp17]);
               END;

               //
               Anda.Position := Anda.Position + 1;

               VerFatura.Next;
               //
               Inc(Linha);
               //
               If Linha >= 63 Then
                  Print.Novapagina;
          End;

          Print.ImpF(Linha    , 01, Format('%60s --------------', ['']), [Comp17]);

          Print.ImpF(Linha + 1, 01, Format('%60s %14s', ['',FormatFloat('#,##0.00', tt_Valor)]), [Comp17]);

          //
          VerFatura.Close;
          //
          Anda.Visible:= False;
          Print.Fechar;
     end;
End;

procedure TFRelFaturaFutura.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelFaturaFutura.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtInicial.TEXT = '  /  /    '
     THEN
         edDtInicial.DATE := STRTODATE ('01/01/1900');
     
end;

procedure TFRelFaturaFutura.CkCarteiraChange(Sender: TObject);
begin
     If CkCarteira.Checked
     then begin
          CmBBanco.LookupKeyValue := ''   ;
          CmBBanco.Enabled        := False ;
     end
     else begin
          CmBBanco.Enabled        := True  ;
     end;
end;

procedure TFRelFaturaFutura.CkProtocoloClick(Sender: TObject);
begin
     If CkProtocolo.Checked
     then
         CkSomenteProt.Checked := False ;
end;

procedure TFRelFaturaFutura.CkSomenteProtChange(Sender: TObject);
begin
     If CkSomenteProt.Checked
     then
         CkProtocolo.Checked := False ;
end;

procedure TFRelFaturaFutura.CkSomenteProtClick(Sender: TObject);
begin
     If CkSomenteProt.Checked
     then
         CkProtocolo.Checked := False ;
end;

procedure TFRelFaturaFutura.cmbClienteExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

procedure TFRelFaturaFutura.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );

     if edDtFinal.TEXT = '  /  /    '
     THEN
         edDtFinal.DATE := STRTODATE ('31/12/9999');
end;

end.

