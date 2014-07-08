 unit ConsultaVendasIndicados_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, 
  TeeProcs, TeEngine, Chart, DBChart, Series, dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms, cxGraphics, cxControls, cxLookAndFeels,
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
  TFrmConsultaVendasIndicados = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    RzBitBtn3: TcxButton;
    RzBitBtn2: TcxButton;
    GRID: TdxDBGrid;
    Label2: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    DsCliente: TDataSource;
    DS_FatVendasIndicados: TDataSource;
    Total: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Total_Geral: TdxEdit;
    Total_Desconto: TdxEdit;
    Total_Liquido: TdxEdit;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDFECHADA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDPESSOA_RAZAO: TdxDBGridMaskColumn;
    GRIDFORMA_PGTO: TdxDBGridMaskColumn;
    GRIDNUM_NF: TdxDBGridMaskColumn;
    GRIDNUM_CUPOM: TdxDBGridMaskColumn;
    GRIDDESC_ACRES: TdxDBGridMaskColumn;
    GRIDENTRADA: TdxDBGridMaskColumn;
    GRIDDINHEIRO: TdxDBGridMaskColumn;
    GRIDCHEQUE: TdxDBGridMaskColumn;
    GRIDCARTAO: TdxDBGridMaskColumn;
    GRIDTICKET: TdxDBGridMaskColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDVLRLIQUIDO: TdxDBGridMaskColumn;
    GRIDVENDEDO: TdxDBGridMaskColumn;
    GRIDNOME_VENDEDOR: TdxDBGridMaskColumn;
    GRIDPORCENTAGEM: TdxDBGridMaskColumn;
    GRIDBONIFICACAO: TdxDBGridColumn;
    EdBonificacao: TdxEdit;
    Label6: TcxLabel;
    ActImprimir: TAction;
    ANDA: TProgressBar;
    PRINT: TRDprint;
    BtnImprimir: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbVendedorEnter(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    Procedure Cabecalho(SENDER: TOBJECT;PAGINA:INTEGER);
    procedure Rodape(SENDER: TOBJECT;PAGINA:INTEGER);
    procedure IncLin;

  public
    { Public declarations }
  end;

var
  FrmConsultaVendasIndicados: TFrmConsultaVendasIndicados;
  LinhaR, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes, Main;

{$R *.DFM}

Procedure TFrmConsultaVendasIndicados.Cabecalho(SENDER: TOBJECT;PAGINA:INTEGER);
VAR
   STR: STRING;
begin
     // Cabeçalho...
     PRINT.impf(01,01,'===============================================================================',[normal]);
     PRINT.impf(02,01,DmApp.Nome , [expandido,NEGRITO]);
     PRINT.impf(03,01,'BONIFICACOES = CLIENTE = ' + cmbVendedor.TEXT, [normal]);
     PRINT.impf(04,01,'PERIODO: '+ (INI.TEXT) + ' A ' +(FIM.TEXT),[COMP17]);
     PRINT.impf(04,45,'DATA '+ DATETIMETOSTR(NOW),[COMP17]);
     PRINT.impf(04,75,'Pag: ' + formatfloat('000',pagina),[COMP17]);
     PRINT.impf(05,01,'===============================================================================',[normal]);
     PRINT.impf(06,01,'DATA',[COMP17]);
     PRINT.impf(06,08,'DOCUMENTO',[COMP17]);
     PRINT.impf(06,22,'HISTORICO',[COMP17]);
     PRINT.impf(06,53,'       TOTAL',[COMP17]);
     PRINT.impf(06,63,'    DESCONTO',[COMP17]);
     PRINT.impf(06,73,'     LIQUIDO',[COMP17]);

     inc(pagina);

     LINHAR  := 9;
end;

procedure TFrmConsultaVendasIndicados.Rodape(SENDER: TOBJECT;PAGINA:INTEGER);
begin
     // Rodapé...
     PRINT.impf(63,01,'===============================================================================',[normal]);
     PRINT.impf(64,01,dmApp.QryParceiroPARC_NOME_FANTASIA.AsString+' - '+dmApp.QryParceiroPARC_SLOGAN.AsString,[comp17,italico]);
     
end;

procedure TFrmConsultaVendasIndicados.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConsultaVendasIndicados.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFrmConsultaVendasIndicados.FormClose(Sender: TObject;
var
   Action: TCloseAction);
begin
  DsCliente.DataSet.Close ;

  //
  Action := caFree;
  FrmConsultaVendasIndicados := Nil;
  FrmMain.PnlClient.Visible := True;
end;

procedure TFrmConsultaVendasIndicados.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConsultaVendasIndicados.FormShow(Sender: TObject);
begin
  cmbVendedor.SetFocus;

  //
  IniciaComponentes(Self as TForm);
    Try

       If Not(DsCliente.DataSet.Active) Then
           DsCliente.DataSet.Open;
       //
       //
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

procedure TFrmConsultaVendasIndicados.ActPreviewExecute(Sender: TObject);
Var
    Total_Geral1, Total_Desconto1, Total_Liquido1, Total_Bonificacao: Real;
begin
  If DMRelatorios.VendasIndicados.Active
  Then
      DMRelatorios.VendasIndicados.Close;

  DMRelatorios.VendasIndicados.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
  Then
     MessageDlg('Informe o Período', MtError, [MbOk],0)
  Else Begin
        DMRelatorios.VendasIndicados.ParamByName('DINI').asDate   := Ini.Date;
        DMRelatorios.VendasIndicados.ParamByName('DFIM').asDate   := Fim.Date;
  End;

  If CmbVendedor.Text = ''
  Then BEGIN
       SHOWMESSAGE('Selecione o Cliente');
       cmbVendedor.SetFocus ;
       Exit ;
  END
  ELSE BEGIN
       DMRelatorios.VendasIndicados.ParamByName('PESSOA').asInteger := DsCliente.DataSet.fieldByName('PESSOA_FJ').Value;
  END;

  // *** fim da Passagem de Parametros ***
  Total_Geral1:=0;
  Total_Desconto1:=0;
  Total_Liquido1:=0;
  Total_Bonificacao:=0;
  DMRelatorios.VendasIndicados.Open;
  DMRelatorios.VendasIndicados.DisableControls;
  DMRelatorios.VendasIndicados.First;
  While not (DMRelatorios.VendasIndicados.Eof) Do
  Begin
       Total_Geral1:= Total_Geral1 + DmRelatorios.VendasIndicadosTOTAL.Value;
       Total_Desconto1:= Total_Desconto1 + DmRelatorios.VendasIndicadosDESC_ACRES.Value;
       Total_Liquido1:= Total_Liquido1 + DmRelatorios.VendasIndicadosVLRLIQUIDO.Value;
       Total_Bonificacao := Total_Bonificacao + DmRelatorios.VendasIndicadosbonificacao.Value;
       DMRelatorios.VendasIndicados.Next;
  End;

  Total_Geral.Text    := FormatFloat('#,##0.00', Total_Geral1);
  Total_Desconto.Text := FormatFloat('#,##0.00', Total_Desconto1);
  Total_Liquido.Text  := FormatFloat('#,##0.00', Total_Liquido1);
  EdBonificacao.Text  := FormatFloat('#,##0.00', Total_Bonificacao);
  DMRelatorios.VendasIndicados.EnableControls;

end;

procedure TFrmConsultaVendasIndicados.cmbVendedorEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmConsultaVendasIndicados.cmbVendedorExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );
end;

procedure TFrmConsultaVendasIndicados.IniExit(Sender: TObject);
VAR
   Mes, Ano, dia, DiaFim: Word;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );

     decodedate ( date, Ano, Mes, Dia );

     Dia := 1;

     If (( Mes = 1 ) or ( Mes = 3 ) or ( Mes = 5 ) or ( Mes = 7 ) or ( Mes = 8 ) or ( Mes = 10 ) or ( Mes = 12 ))
     then begin
          DiaFim := 31 ;
     end
     else begin
          if Mes = 2
          then begin
               DiaFim := 28 ;
          end
          else begin
               DiaFim := 30 ;
          end;
     end;

     IF INI.text = '  /  /    '
     THEN BEGIN
          Ini.DATE := ENCODEDATE ( Ano, Mes, 1 );
     END;
end;

procedure TFrmConsultaVendasIndicados.FimExit(Sender: TObject);
VAR
   Mes, Ano, dia, DiaFim: Word;
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO( SENDER );

     decodedate ( date, Ano, Mes, Dia );

     Dia := 1;

     If (( Mes = 1 ) or ( Mes = 3 ) or ( Mes = 5 ) or ( Mes = 7 ) or ( Mes = 8 ) or ( Mes = 10 ) or ( Mes = 12 ))
     then begin
          DiaFim := 31 ;
     end
     else begin
          if Mes = 2
          then begin
               DiaFim := 28 ;
          end
          else begin
               DiaFim := 30 ;
          end;
     end;

     IF fim.text = '  /  /    '
     THEN BEGIN
          Fim.DATE := ENCODEDATE ( Ano, Mes, DiaFim );
     END;
end;

procedure TFrmConsultaVendasIndicados.IncLin;
begin
     LINHAR := LINHAR + 1;
     If LINHAR > 60
     then
         PRINT.NovaPagina ;
end;

procedure TFrmConsultaVendasIndicados.ActImprimirExecute(Sender: TObject);
var
   BRUTO, DESCONTO, LIQUIDO, BONIFICACAO: REAL;
   STR, IMP: STRING;
   ULTCOD: INTEGER;
begin
     Anda.Position := 0 ;

     With DMRelatorios do
     Begin

          IF VendasIndicados.RecordCount <= 0
          THEN BEGIN
               MESSAGEDLG ('Não Há Movimentações para o Período, Verifique!', mterror, [mbok],0);
               cmbVendedor.setfocus ;
               exit ;               
          END;

          PRINT.OnNewPage       := CABECALHO ;
          PRINT.OnBeforeNewPage := RODAPE ;

          PRINT.ABRIR;

          BRUTO       := 0;
          DESCONTO    := 0;
          LIQUIDO     := 0;
          BONIFICACAO := 0;

          UltCod := VendasIndicadosPESSOA_FJ.value ;

          Imp          := 'N' ;

          VendasIndicados.FIRST ;

          ANDA.Max := VendasIndicados.RecordCount ;

          VendasIndicados.DisableControls ;

          While Not VendasIndicados.Eof Do
          Begin
               IF Imp = 'N'
               THEN BEGIN
                    PRINT.impf(LINHAR, 01, VendasIndicadosPESSOA_FJ.TEXT + '-' + VendasIndicadosPESSOA_RAZAO.VALUE  , [comp17]);

                    ULTCOD := VendasIndicadosPESSOA_FJ.VALUE ;

                    INCLIN ;

                    IMP := 'S';
               END;

               //Data
               PRINT.impf(LINHAR, 01, datetostr(VendasIndicadosDATA.value) , [comp17]);

               //Documento
               PRINT.impf(LINHAR, 08, VendasIndicadosCODIGO.TEXT + ' CF ' + VendasIndicadosNUM_CUPOM.AsString , [comp17]);

               //Historico
               PRINT.impf(LINHAR, 22, VendasIndicadosHISTORICO.value , [comp17]);

               //VALOR
               STR :=  FORMATFLOAT ('###,###,##0.000', VendasIndicadosTOTAL.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(LINHAR,53, STR,[comp17]);

               BRUTO := BRUTO + VendasIndicadosTOTAL.Value ;

               //DESCONTO
               STR :=  FORMATFLOAT ('###,###,##0.000', VendasIndicadosDESC_ACRES.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(LINHAR,63, STR,[comp17]);

               DESCONTO := DESCONTO + VendasIndicadosDESC_ACRES.Value ;

               //LIQUIDO
               STR :=  FORMATFLOAT ('###,###,##0.000', VendasIndicadosVLRLIQUIDO.Value );
               WHILE LENGTH(STR) < 12 DO
               BEGIN
                    STR := ' ' + STR ;
               END;

               PRINT.impf(LINHAR,73, STR,[comp17]);

               LIQUIDO     := LIQUIDO     + VendasIndicadosVLRLIQUIDO.Value     ;
               BONIFICACAO := BONIFICACAO + VendasIndicadosBONIFICACAO.Value ;

               INCLIN ;

               VendasIndicados.Next ;

               If ( UltCod <> VendasIndicadosPESSOA_FJ.value )  or ( VendasIndicados.Eof )
               then begin
                    //BRUTO
                    STR :=  FORMATFLOAT ('###,###,##0.000', BRUTO );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(LINHAR, 53, STR,[comp17]);

                    //DESCONTO
                    STR :=  FORMATFLOAT ('###,###,##0.000', DESCONTO );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(LINHAR, 63, STR,[comp17]);

                    //LIQUIDO
                    STR :=  FORMATFLOAT ('###,###,##0.000', LIQUIDO );

                    WHILE LENGTH(STR) < 12 DO
                    BEGIN
                         STR := ' ' + STR ;
                    END;

                    PRINT.impf(LINHAR, 73, STR,[comp17]);

                    INCLIN ;

                    PRINT.impf(LINHAR,01,'----------------------------------------------------------------------------------------------------------------------------------------',[comp17]);

                    INCLIN ;

                    UltCod := VendasIndicadosPESSOA_FJ.value ;

                    BRUTO    := 0;
                    DESCONTO := 0;
                    LIQUIDO  := 0;

                    Imp := 'N' ;
               end;

               Anda.Position := Anda.Position + 1;
          End;

          //BONIFICACAO
          STR :=  FORMATFLOAT ('###,###,##0.00', BONIFICACAO );

          WHILE LENGTH(STR) < 12 DO
          BEGIN
               STR := ' ' + STR ;
          END;

          PRINT.impf(LINHAR,73, STR ,[comp17]);

          VendasIndicados.EnableControls ;

          PRINT.FECHAR;
     end;
end;

end.
