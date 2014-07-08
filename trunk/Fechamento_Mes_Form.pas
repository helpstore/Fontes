 unit Fechamento_Mes_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar, StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
      IBStoredProc, dxExEdtr, RDprint, cxGraphics, cxControls,
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
  TFrmFechamentoMes = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    Actions: TActionList;
    ActFechar: TAction;
    PC: TcxPageControl;
    TAB1: TcxTabSheet;
    BtnProcessa: TcxButton;
    Label3: TcxLabel;
    ActFechamento: TAction;
    ActListar: TAction;
    IMPRESSORA: TRDprint;
    ActExcluirPeriodo: TAction;
    Label5: TcxLabel;
    EdAno: TdxPickEdit;
    EDMES: TdxPickEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActFechamentoExecute(Sender: TObject);
    procedure ActListarExecute(Sender: TObject);
    procedure CabecalhoSld(SENDER: TOBJECT;PAGINA:INTEGER);
    procedure DATAEnter(Sender: TObject);
    procedure DATAExit(Sender: TObject);
    procedure edDtInicialKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edcodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActExcluirPeriodoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFechamentoMes: TFrmFechamentoMes;
  LInha, Pagina: Integer;

CONST
  MONTH_DAYS: array[1..12] of byte = (31,28,31,30,31,30,31,31,30,31,30,31);

implementation

uses Usuarios_DM,
     Application_DM,
     Funcoes,
     Relatorios_DM,
     LocalizarProd_DM;

{$R *.DFM}

procedure TFrmFechamentoMes.FormCreate(Sender: TObject);
begin

  pc.ActivePageIndex := 0;

  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmFechamentoMes.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmFechamentoMes.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmFechamentoMes.FormShow(Sender: TObject);
begin
     DMLocalizarProd  := TDMLocalizarProd.Create(Self);

     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          If FrmLocProdutoAuto = Nil
          then
              FrmLocProdutoAuto := TFrmLocProdutoAuto.Create(Application) ;
     END
     ELSE BEGIN
          If FrmLocProduto = Nil
          then
              FrmLocProduto := TFrmLocProduto.Create(Application) ;
     END;

     IniciaComponentes(Self as TForm);

     EdAno.SETFOCUS ;
end;

procedure TFrmFechamentoMes.ActFechamentoExecute(Sender: TObject);
Var
   D1, D2: TDateTime;
   MES, ANO, DIA: WORD;
begin
     PC.ActivePageIndex := 0;

     MES := STRTOINT(EDMES.TEXT);

     ANO := STRTOINT(EDANO.TEXT);

     If messageDlg ('Deseja Realmente Fazer o Fechamento do Mês?', mtConfirmation, [MbOk, MbCancel],0) = MRoK
     THEN BEGIN
          if (MES = 2) and IsLeapYear(ANO)
          then
              DIA := 29
          else
              DIA := MONTH_DAYS[MES];

          D1 := ENCODEDATE(ANO, MES, 1   );
          D2 := ENCODEDATE(ANO, MES, DIA );

          If D1 > D2
          THEN BEGIN
               messageDlg ('Período Inválido, Verifique!', mtConfirmation, [MbOk, MbCancel],0);
               EDMES.SetFocus ;
               EXIT ;
          END
          ELSE BEGIN
               DmApp.Fechamento_mes ( dmapp.data_servidor, D1, D2, MES, ANO ) ;
          END;
     END;

     Showmessage('Fechamento Efetuado com Sucesso!');
end;

procedure TFrmFechamentoMes.CabecalhoSld(SENDER: TOBJECT;PAGINA:INTEGER);
begin
     // Cabeçalho...
     IMPRESSORA.impf(01,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(02,01,DmApp.Nome, [expandido,NEGRITO]);
     IMPRESSORA.impf(03,01,'LISTA DE ESTOQUE',[normal]);
     IMPRESSORA.impf(03,35,'DATA: '+ DATETOSTR(NOW) + 'ANO ' + EDANO1.TEXT + ' MES ' + EDMES1.TEXT ,[normal]);
     IMPRESSORA.impf(03,57,'HORA: '+ TIMETOSTR(NOW),[normal]);
     IMPRESSORA.impf(03,72,'Pag: ' + formatfloat('000',pagina),[normal]);
     IMPRESSORA.impf(04,01,'===============================================================================',[normal]);
     IMPRESSORA.impf(05,48,'INICIAL',[normal]);
     IMPRESSORA.impf(05,56,' COMPRA',[normal]);
     IMPRESSORA.impf(05,64,'  VENDA',[normal]);
     IMPRESSORA.impf(05,73,'  SALDO',[normal]);

     inc(pagina);
     linha  := 7;
end;

procedure TFrmFechamentoMes.ActListarExecute(Sender: TObject);
VAR
   Saldo: Real ;
   ULT, STR: STRING ;
   COMPRA,
   VENDA : REAL ;
   CONT, MES, ANO : Integer    ;
begin
     PC.ActivePageIndex := 1;

     IF ( edAno1.Text = '' )
     THEN BEGIN
          Showmessage ( 'Selecione o Ano!' );
          edAno1.SetFocus ;
          EXIT;
     END;

     IF ( EDMES1.TEXT = '' )
     THEN BEGIN
          Showmessage ( 'Selecione a Mes!' );
          edMes1.SetFocus ;
          EXIT;
     END;

     DmRelatorios := TDmRelatorios.Create(Self);

     Saldo := 0;

     MES := STRTOINT(EDMES1.TEXT);

     ANO := STRTOINT(EDANO1.TEXT);

     With DmRelatorios do
     begin
          FECHAMENTO_MES.CLOSE ;

          FECHAMENTO_MES.SQL.CLEAR ;

          FECHAMENTO_MES.SQL.Add ( ' SELECT * FROM VER_EST_FECHAMENTO_MES ');

          FECHAMENTO_MES.SQL.Add ( ' ( :CNPJ, :MES, :ANO )                ');

          FECHAMENTO_MES.ParamByName ('CNPJ').ASSTRING  := DmApp.CNPJ ;
          FECHAMENTO_MES.ParamByName ('MES' ).ASINTEGER := MES        ;
          FECHAMENTO_MES.ParamByName ('ANO' ).ASINTEGER := ANO        ;

          IF TRIM(edcodigo.Text) <> ''
          THEN BEGIN
               FECHAMENTO_MES.Params.CreateParam (FTSTRING, 'PRODUTO', PTINPUT );

               FECHAMENTO_MES.SQL.Add ( ' WHERE PRODUTO = :PRODUTO ');

               FECHAMENTO_MES.ParamByName ('PRODUTO').AsString := TRIM(edcodigo.Text) ;
          END;

          FECHAMENTO_MES.SQL.Add ( ' ORDER BY NOME, PRODUTO  ');

          FECHAMENTO_MES.Prepare  ;

          FECHAMENTO_MES.OPEN     ;

          IMPRESSORA.OpcoesPreview.Preview := TRUE       ;

          IMPRESSORA.OnNewPage             := CABECALHOSLD  ;

          IMPRESSORA.ABRIR ;

          ULT := '' ;

          COMPRA      := 0;
          VENDA       := 0;
          SALDO       := 0;

          WHILE NOT FECHAMENTO_MES.EOF DO
          BEGIN
               IMPRESSORA.impf(linha, 01,  COPY(FECHAMENTO_MESPRODUTO.VALUE + '-' + FECHAMENTO_MESNOME.VALUE, 1, 36),[comp17]);

               IMPRESSORA.impf(linha, 40, DATETOSTR(FECHAMENTO_MESDATA.VALUE),[comp17]);

               //SALDO INICIAL
               STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_MESSALDO_INICIAL.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(linha, 49, STR ,[comp17]);

               SALDO := FECHAMENTO_MESSALDO_INICIAL.VALUE;

               //COMPRA
               STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_MESENTRADAS.VALUE );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(linha, 57, STR ,[comp17]);

               COMPRA      := COMPRA +  FECHAMENTO_MESENTRADAS.VALUE;

               SALDO       := SALDO  +  FECHAMENTO_MESENTRADAS.VALUE;

               //VENDA
               STR :=  FORMATFLOAT ('###,###,##0.00', FECHAMENTO_MESSAIDAS.VALUE  );
               WHILE LENGTH(STR) < 10 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(linha, 65, STR ,[comp17]);

               VENDA  := VENDA + FECHAMENTO_MESSAIDAS.VALUE ;

               SALDO  := SALDO  -  FECHAMENTO_MESSAIDAS.VALUE;

               //SALDO
               STR :=  FORMATFLOAT ('###,###,##0.00', SALDO );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;
               IMPRESSORA.impf(linha, 73, STR ,[comp17]);

               LINHA := LINHA + 1;

               IF LINHA > 62
               THEN BEGIN
                    IMPRESSORA.NOVAPAGINA ;
               END;

               FECHAMENTO_MES.NEXT ;

               CONT := CONT + 1;

          END;
     END;

     IMPRESSORA.FECHAR ;

     DmRelatorios.fREE ;
     DmRelatorios := nIL ;
end;

procedure TFrmFechamentoMes.DATAEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFrmFechamentoMes.DATAExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmFechamentoMes.edDtInicialKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFechamentoMes.edcodigoButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     If DmApp.Tipo_Cons_Prod = 'A' //Auto
     then begin
          if FrmLocProdutoAuto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProdutoAuto.CampTrecho );
          end;
     end
     else begin
          if FrmLocProduto.Showmodal = mrok
          then begin
               edcodigo.text := ( FrmLocProduto.CampTrecho );
          end;
     end;
end;

procedure TFrmFechamentoMes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     DMLocalizarProd.Produtos.Close ;

     //
     FrmLocProduto.Free    ;
     FrmLocProduto := Nil  ;

     FrmLocProdutoAuto.Free    ;
     FrmLocProdutoAuto := Nil  ;

     DMLocalizarProd.Free;
     DMLocalizarProd := Nil;
end;

procedure TFrmFechamentoMes.ActExcluirPeriodoExecute(Sender: TObject);
Var
   D1, D2: TDateTime;
begin
     PC.ActivePageIndex := 2;

     If messageDlg ('Deseja Realmente Excluir o(s) Fechamento(s) Diário(s)!', mtConfirmation, [MbOk, MbCancel],0) = MRoK
     THEN BEGIN
          D1 := DATAEXCINI.Date ;
          D2 := DATAEXCFIM.Date ;

          If D1 > D2
          THEN BEGIN
               messageDlg ('Período Inválido, Verifique!', mtConfirmation, [MbOk, MbCancel],0);
               DATAEXCINI.SetFocus ;
               EXIT ;
          END
          ELSE BEGIN
               DmApp.Excluir_Fechamento_Diario ( D1, D2 ) ;
          END;
     END;

     Showmessage('Exclusão Efetuada com Sucesso!');
end;

end.
