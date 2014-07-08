unit Filtra_Receber_Previsao_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,   Db, dxDBEdtr, dxDBELib, RDprint, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Menus, cxButtons;

type
  TFrmFiltraReceberPrevisao = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TLabel;
    b2: TBevel;
    DATA: TdxDateEdit;
    Label3: TLabel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    dsPessoas: TDataSource;
    CkCheques: TCheckBox;
    CkPerdidas: TCheckBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DATAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActOkExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DATAEnter(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure PrevisaoFinanceira;
    function  Soma_Receber_3Meses(vData: TDate): Real;
    function  Soma_Receber_2Meses(vData: TDate): Real;
  public
    { Public declarations }
  end;

var
  FrmFiltraReceberPrevisao: TFrmFiltraReceberPrevisao;

implementation

uses Cadastros_DM, Application_DM, Funcoes, Usuarios_DM, Financeiro_Dm,
  Procedures_DM;

{$R *.DFM}

procedure TFrmFiltraReceberPrevisao.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmFiltraReceberPrevisao.ActFecharExecute(Sender: TObject);
begin
     Modalresult := mrCancel ;
end;

procedure TFrmFiltraReceberPrevisao.DATAKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFiltraReceberPrevisao.ActOkExecute(Sender: TObject);
begin
   PrevisaoFinanceira;
end;

procedure TFrmFiltraReceberPrevisao.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
end;

procedure TFrmFiltraReceberPrevisao.DATAEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmFiltraReceberPrevisao.DATAExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmFiltraReceberPrevisao.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFiltraReceberPrevisao.PrevisaoFinanceira;
Var
   TotalReceber, TotalCheques, Total3Meses, Total2Meses, TotalPerdidas: Real;
   Porc3Meses, Porc2Meses, PorcAVencer: Real;
begin
  with dmFinanceiro do
  begin
    //SOMA O TOTAL DAS CONTAS A RECEBER
    IMPRESSORA.TitulodoRelatorio := 'PREVISAO FINANCEIRA' ;

    TotalReceber := Soma_Receber        ;
    Total3Meses  := Soma_Receber_3Meses (DATA.Date);
    Total2Meses  := Soma_Receber_2Meses (DATA.Date);

    //PORCENTAGENS DOS TOTAIS
    If TotalReceber > 0 then
    begin
       Porc3Meses  := ( Total3Meses * 100 )/TotalReceber ;
       Porc2Meses  := ( Total2Meses * 100 )/TotalReceber ;
       PorcAVencer := 100 - Porc3Meses - Porc2Meses      ;
    end
    else
    begin
       Porc3Meses  := 0 ;
       Porc2Meses  := 0 ;
       PorcAVencer := 0 ;
    end;

    TotalReceber := TotalReceber - Total3Meses - Total2Meses ;

    //SELECIONA O CONTAS A RECEBER QUE AINDA NAO VENCEU
    VERRECEBER.Close ;
    VERRECEBER.SQL.text := ' SELECT * FROM VER_RECEBER_PREVISAO ( :CNPJ, :DATA ) ORDER BY NOME, PESSOA_FJ ';
    VERRECEBER.ParamByName('DATA').AsDate := FrmFiltraReceberPrevisao.DATA.Date ;
    VERRECEBER.Open ;

    PAGINA     := 1;
    LINHA      := 5;

    IMPRESSORA.OnNewPage := cabecalhoreceber ;
    IMPRESSORA.ABRIR;

    //IMPRIME OS VALORES DA PREVISAO 3 MESES E 2 MESES

    //A VENCER
    IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS A VENCER' ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', TOTALRECEBER );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;

    //TOTAL A RECEBER
    IMPRESSORA.impf(linha,50, STR ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', PorcAVencer );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;

    //TOTAL A RECEBER
    IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);
    //3MESES
    INCLINHA;

    IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS COM VENCIMENTO SUPERIOR A 3 MESES' ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL3MESES );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;
    //TOTAL 3 MESES
    IMPRESSORA.impf(linha,50, STR ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', PORC3MESES );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;
    //TOTAL 3 MESES
    IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);

    //2 MESES
    INCLINHA;

    IMPRESSORA.impf(linha, 01, 'TOTAL DE CONTAS COM VENCIMENTO SUPERIOR A 2 MESES E INFERIOR A 3 MESES' ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', TOTAL2MESES );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;

    //TOTAL 2 MESES
    IMPRESSORA.impf(linha,50, STR ,[comp17]);

    STR :=  FORMATFLOAT ('###,###,##0.00', PORC2MESES );

    WHILE LENGTH(STR) < 12 DO
    BEGIN
       STR := ' ' + STR ;
    END;
    //TOTAL 3 MESES
    IMPRESSORA.impf(linha, 72, '% ' + STR ,[comp17]);

    INCLINHA ;
    INCLINHA ;

    //IMPRIME O CONTAS A RECEBER A VENCER
    IMPRIMERECEBERPREVISAO ;
  end;
end;

function TFrmFiltraReceberPrevisao.Soma_Receber_2Meses(vData: TDate): Real;
VAR
   VANO, VMES, VDIA: WORD;
   INICIAL, FINAL  : TDateTime;
begin
     //INICIAL
     DECODEDATE( vDATA, VANO, VMES, VDIA );

     IF (VMES = 3)
     THEN BEGIN
          VMES := 12 ;
          VANO := VANO - 1 ;
     END
     ELSE BEGIN
          IF (VMES = 2)
          THEN BEGIN
               VMES := 11 ;
               VANO := VANO - 1 ;
          END
          ELSE BEGIN
               IF (VMES = 1)
               THEN BEGIN
                    VMES := 10 ;
                    VANO := VANO - 1 ;
               END
               ELSE BEGIN
                    VMES := VMES - 3 ;
               END
          END
     END ;

     Inicial := ENCODEDATE(VANO, VMES, VDIA);

     Final   := vDATA ;

  DMProcs.Soma_Receber_2Meses.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Receber_2Meses.ParamByName('INI' ).asDate        := Inicial   ;
  DMProcs.Soma_Receber_2Meses.ParamByName('FIM' ).asDate        := Final     ;

  DMProcs.Soma_Receber_2Meses.ExecProc;
  Result := DMProcs.Soma_Receber_2Meses.ParamByName('SOMA').asFloat;
end;

function TFrmFiltraReceberPrevisao.Soma_Receber_3Meses(vData: TDate): Real;
VAR
   VANO, VMES, VDIA: WORD;
begin
     DECODEDATE( vDATA, VANO, VMES, VDIA );

     IF (VMES = 3)
     THEN BEGIN
          VMES := 12 ;
          VANO := VANO - 1 ;
     END
     ELSE BEGIN
          IF (VMES = 2)
          THEN BEGIN
               VMES := 11 ;
               VANO := VANO - 1 ;
          END
          ELSE BEGIN
               IF (VMES = 1)
               THEN BEGIN
                    VMES := 10 ;
                    VANO := VANO - 1 ;
               END
               ELSE BEGIN
                    VMES := VMES - 3 ;
               END
          END
     END ;

     vDATA := ENCODEDATE (VANO, VMES, VDIA );

  //
  DMProcs.Soma_Receber_3Meses.ParamByName('CNPJ').asString      := DmApp.Cnpj;
  DMProcs.Soma_Receber_3Meses.ParamByName('DATA').asDate        := vData;
  DMProcs.Soma_Receber_3Meses.ExecProc;
  //
  Result := DMProcs.Soma_Receber_3Meses.ParamByName('SOMA').asFloat;
  //
end;

end.
