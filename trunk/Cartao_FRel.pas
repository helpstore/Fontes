 unit Cartao_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, cxGraphics, cxControls,
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
  TFRelCartao = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    DsAdministradoras: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    CmbAdministradora: TdxLookupEdit;
    Label1: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    CkFicha: TCheckBox;
    RDDATA: TRadioGroup;
    cmbTipoRel: TdxPickEdit;
    Label5: TcxLabel;
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
  private
    { Private declarations }
    Pessoa_FJ: Integer;
    NDocto: String[20];

    procedure CARTOES   ;

  public
    { Public declarations }
  end;

var
  FRelCartao: TFRelCartao;
  Linha, Pagina: Integer;

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Financeiro_Dm ;

{$R *.DFM}

procedure TFRelCartao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelCartao.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelCartao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DsAdministradoras.DataSet.Close;

  //
  If DMFinanceiro.tag = 0
  then begin
       DMFinanceiro.Free;
       DMFinanceiro := Nil;
  end
  else begin
       DMFinanceiro.tag := DMFinanceiro.tag - 1;
  end;
  //
  Action      := caFree;
  FRelCartao  := Nil;
end;

procedure TFRelCartao.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelCartao.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelCartao.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.

  Print.ImpF(05, 01, 'Numero', [Comp17, Negrito]);
  Print.ImpF(05, 12, 'Nome', [Comp17, Negrito]);
  Print.ImpF(05, 30, 'Lancto', [Comp17, Negrito]);
  Print.ImpF(05, 38, 'Reembolso', [Comp17, Negrito]);
  Print.ImpF(05, 46, 'Administradora', [Comp17, Negrito]);
  Print.ImpF(05, 57, 'Tipo', [Comp17, Negrito]);

  Print.ImpF(05, 60, '     Valor', [Comp17, Negrito]);
  Print.ImpF(05, 68, '    Descto', [Comp17, Negrito]);
  Print.ImpF(05, 75, '   Liquido', [Comp17, Negrito]);

  Print.ImpF(06, 01, '----------------------------------------------------------------------------------------------------------------------------------------', [Comp17, Negrito]);

  linha  := 7;
end;

procedure TFRelCartao.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    DsAdministradoras.DataSet.Open;
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
  //

  edDtInicial.setfocus ;
end;

procedure TFRelCartao.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Pessoa_FJ := 0;
  NDocto := '';

  CARTOES ;

end;

procedure TFRelCartao.CARTOES ;
var
   Valor, tt_juros, tt_valor: real ;
   Cont: Integer;
   Tipo_Cartao: String;
Begin
     //
     Print.TitulodoRelatorio := 'Relatorio de Cartoes por Lancamento';

     With DmFinanceiro do
     begin
          Cont := 0;

          Ver_Cartoes.Close ;

          Ver_Cartoes.Sql.Clear ;

          Ver_Cartoes.Params.Clear ;

          Ver_Cartoes.Params.CreateParam ( FtString, 'CNPJ'   , PtInput );
          Ver_Cartoes.Params.CreateParam ( FtDate  , 'DATAINI', PtInput );
          Ver_Cartoes.Params.CreateParam ( FtDate  , 'DATAFIM', PtInput );

          IF RDDATA.ItemIndex = 0
          THEN BEGIN
               Ver_Cartoes.Sql.Add (' Select * From VER_FIN_MOVIMENTO_CARTAO (:CNPJ, :DATAINI, :DATAFIM) ');
          END
          ELSE BEGIN
               Ver_Cartoes.Sql.Add (' Select * From VER_FIN_MOV_CARTAO_CONCILIACAO (:CNPJ, :DATAINI, :DATAFIM) ');
          END;

          Ver_Cartoes.ParamByName('CNPJ').asString     := DMApp.Cnpj;

          Ver_Cartoes.ParamByName('DATAINI').asDate := edDtInicial.date ;
          Ver_Cartoes.ParamByName('DATAFIM').asDate := edDtFinal.date   ;

          //
          If Trim(CmbAdministradora.Text) <> ''
          Then Begin
               IF CONT = 0
               THEN BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    Ver_Cartoes.Sql.Add (' Where ADMINISTRADORA = :PES ');

                    Ver_Cartoes.ParamByName('PES').asInteger := CmbAdministradora.LookupKeyValue ;

                    Cont := Cont + 1;
               END
               ELSE BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'PES', PtInput );

                    Ver_Cartoes.Sql.Add (' And ADMINISTRADORA = :PES ');

                    Ver_Cartoes.ParamByName('PES').asInteger := CmbAdministradora.LookupKeyValue ;

                    Cont := Cont + 1;
               END;
          End;

          If Trim(cmbTipoRel.Text) <> ''
          Then Begin
               if cmbTipoRel.text = 'Deb'
               then
                   Tipo_Cartao := 'Deb'
               else
                   if cmbTipoRel.text = 'Cred'
                   then
                       Tipo_Cartao := 'Cre'
                   else
                       Tipo_Cartao := 'Par' ;

               IF CONT = 0
               THEN BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'TIP', PtInput );

                    Ver_Cartoes.Sql.Add (' Where TIPO = :TIP ');

                    Ver_Cartoes.ParamByName('TIP').asString := tipo_cartao ;

                    Cont := Cont + 1;
               END
               ELSE BEGIN
                    Ver_Cartoes.Params.CreateParam ( FtInteger, 'TIP', PtInput );

                    Ver_Cartoes.Sql.Add (' And TIPO = :TIP ');

                    Ver_Cartoes.ParamByName('TIP').asString := tipo_cartao ;

                    Cont := Cont + 1;
               END;
          End;

          IF CkFicha.CHECKED
          THEN BEGIN
          IF CONT = 0
          THEN BEGIN
               Ver_Cartoes.Params.CreateParam ( FtString, 'PRC', PtInput );

               Ver_Cartoes.Sql.Add (' Where PROCESSADO = :PRC ');

               Ver_Cartoes.ParamByName('PRC').asString := 'N' ;

               Cont := Cont + 1;
          END
          ELSE BEGIN
               Ver_Cartoes.Params.CreateParam ( FtString, 'PRC', PtInput );

               Ver_Cartoes.Sql.Add (' And PROCESSADO = :PRC ');

               Ver_Cartoes.ParamByName('PRC').asString := 'N' ;

               Cont := Cont + 1;
          END;
          END;

          Ver_Cartoes.Sql.Add (' Order by DATA, REEMBOLSO ');

          If Not Ver_Cartoes.Prepared
          then
              Ver_Cartoes.prepare ;

          //
          Ver_Cartoes.Open;

          //
          If Ver_Cartoes.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registros para o período, verifique !');
               //
               Ver_Cartoes.Close;
               //
               edDtInicial.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;

               Anda.Max :=  DMFinanceiro.Ver_Cartoes.RecordCount;

               Anda.Position := 0;

               Anda.Visible  := TRUE ;
          End;

          Print.Abrir;

          tt_juros   := 0;
          tt_valor   := 0;

          //
          Ver_Cartoes.First;

          While Not Ver_Cartoes.Eof Do
          Begin
               //
               Valor      := 0;

               tt_valor   := tt_valor   +  Ver_CartoesVALOR.VALUE ;

               tt_juros   := tt_juros   +  Ver_CartoesDESCONTO.VALUE  ;

               Print.ImpF(Linha, 01, Ver_CartoesNUM_CARTAO.Text,[Comp17]);

               Print.ImpF(Linha, 12, copy(Ver_CartoesCLIENTE.Value,1,33),[Comp17]);

               Print.ImpF(Linha, 30, Ver_CartoesDATA.text,[Comp17]);

               Print.ImpF(Linha, 38, Ver_CartoesREEMBOLSO.text,[Comp17]);

               Print.ImpF(Linha, 46, COPY(Ver_CartoesNOME_ADMINISTRADORA.Text,1,15),[Comp17]);

               Print.ImpF(Linha, 57, Ver_CartoesTIPO.Value,[Comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CartoesVALOR.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.ImpF(Linha, 60, STR , [Comp17]);

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CartoesDESCONTO.VALUE );
               WHILE LENGTH(STR) < 7 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.ImpF(Linha, 70, STR , [Comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.00', Ver_CartoesVALOR_LIQ.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               Print.ImpF(Linha, 75, STR , [Comp17]);

               //
               Anda.Position := Anda.Position + 1;

               Ver_Cartoes.Next;
               //
               Inc(Linha);
               //
               If Linha >= 63 Then
                  Print.Novapagina;
          End;

          Print.ImpF(Linha, 60, '----------', [Comp17]);
          Print.ImpF(Linha, 70, '-------'   , [Comp17]);
          Print.ImpF(Linha, 75, '----------', [Comp17]);

          //
          Inc(Linha);
          //
          If Linha >= 63 Then
          Print.Novapagina;

          //VALOR
          STR :=  FORMATFLOAT ('###,###,##0.00', tt_Valor );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 60, STR , [Comp17]);

          //VALOR
          STR :=  FORMATFLOAT ('###,###,##0.00', tt_juros );
          WHILE LENGTH(STR) < 7 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 70, STR , [Comp17]);

          //VALOR
          STR :=  FORMATFLOAT ('###,###,##0.00', tt_valor - tt_juros  );
          WHILE LENGTH(STR) < 10 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          Print.ImpF(Linha, 75, STR , [Comp17]);

          //
          Ver_Cartoes.Close;
          //
          Anda.Visible:= False;
          Print.Fechar;
     end;
End;

procedure TFRelCartao.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelCartao.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TiraCorFundo ( Sender );
end;

end.

