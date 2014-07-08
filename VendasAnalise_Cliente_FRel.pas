 unit VendasAnalise_Cliente_FRel;

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
  TFRelVendasAnaliseCliente = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Ini: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    Label2: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    LBLCLIENTE: TcxLabel;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure INCLINHA;
    procedure IMPLINHA;
    procedure EdClienteInicialButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;

    procedure VENDA_LIQUIDA ;

  public
    { Public declarations }
  end;

var
  FRelVendasAnaliseCliente: TFRelVendasAnaliseCliente;
  LinhaR, Pagina: Integer;

  Coluna : Integer;
  Aux    : String ;

  Cont   : Integer;

  ///VARIAVEIS ACUMULATIVAS
  VENDA_LIQUI1, VENDA_LIQUI2, VENDA_LIQUI3, VENDA_LIQUI4, VENDA_LIQUI5, VENDA_LIQUI6: REAL;

implementation

uses Relatorios_DM,
     Usuarios_DM,
     Application_DM,
     Funcoes,
     Localizar_Cliente;

{$R *.DFM}

procedure TFRelVendasAnaliseCliente.INCLINHA;
begin
     LINHAR := LINHAR + 1;

     IF LINHAR > 62
     THEN
         PRINT.Novapagina ;
end;

procedure TFRelVendasAnaliseCliente.IMPLINHA;
begin
     //IMPRIME UMA LINHA DE SEPARACAO DE COLUNAS
     Print.ImpF(LINHAR, 21 , '|',[Comp17]);
     Print.ImpF(LINHAR, 31 , '|',[Comp17]);
     Print.ImpF(LINHAR, 41 , '|',[Comp17]);
     Print.ImpF(LINHAR, 51 , '|',[Comp17]);
     Print.ImpF(LINHAR, 61 , '|',[Comp17]);
     Print.ImpF(LINHAR, 71 , '|',[Comp17]);
end;

procedure TFRelVendasAnaliseCliente.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasAnaliseCliente.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasAnaliseCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DMRelatorios.SelPessoas.Close ;

  //
  //
  Action := caFree;
  FRelVendasAnaliseCliente := Nil;
end;

procedure TFRelVendasAnaliseCliente.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasAnaliseCliente.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasAnaliseCliente.PrintNewPage(Sender: TObject; Pagina: Integer);
VAR
   MES: STRING;
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  WITH DMRELATORIOS DO
  BEGIN
       //VENDA BRUTA
       Coluna := 0;

       VER_FAT_VENDAS_ANALISE_CLIENTE.First;

       CONT := 1;

       Print.ImpF(05,01,'CONTA', [Comp17]);

       While Not VER_FAT_VENDAS_ANALISE_CLIENTE.Eof Do
       Begin
            CASE CONT OF
            1
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 16 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 21 , '|',[Comp17]);
             END;
            2
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 26 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 31 , '|',[Comp17]);
             END;
            3
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 36 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 41 , '|',[Comp17]);
             END;
            4
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 46 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 51 , '|',[Comp17]);
             END;
            5
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 56 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 61 , '|',[Comp17]);
             END;
            6
             :BEGIN
                   MES := VER_FAT_VENDAS_ANALISE_CLIENTEMES.TEXT ;

                   IF LENGTH(MES) = 1
                   THEN
                       MES := '0' + MES ;

                   Print.ImpF(05, 66 , MES + '/' + VER_FAT_VENDAS_ANALISE_CLIENTEANO.TEXT,[Comp17]);
                   Print.ImpF(05, 71 , '|',[Comp17]);
             END;

            END;

            VER_FAT_VENDAS_ANALISE_CLIENTE.next ;

            CONT := CONT + 1;
          End;
       END;

       Print.ImpF(05, 75 , 'ACUMULADO',[Comp17]);

                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);

       LinhaR  := 07;
end;

procedure TFRelVendasAnaliseCliente.FormShow(Sender: TObject);
begin
     INI.DATE := DmApp.Data_Servidor ;

     If Not DMRelatorios.SelPessoas.Active
     then
         DMRelatorios.SelPessoas.Open ;

     //
     IniciaComponentes(Self as TForm);

    Try
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

procedure TFRelVendasAnaliseCliente.VENDA_LIQUIDA;
begin
     WITH DMRELATORIOS DO
     BEGIN
          ///VENDA LIQUIDA
          Coluna := 0;

          CONT := 1;

          Print.ImpF(LinhaR, 01, 'VENDAS LIQUIDAS',[Comp17, NEGRITO]);

          VER_FAT_VENDAS_ANALISE_CLIENTE.First;

          While Not VER_FAT_VENDAS_ANALISE_CLIENTE.Eof Do
          Begin
               CASE CONT OF
               1
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI1 := VENDA_LIQUI1 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );
                END;
               2
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE  );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI2 := VENDA_LIQUI2 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );
                END;
               3
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE  );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI3 := VENDA_LIQUI1 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );
                END;
               4
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI4 := VENDA_LIQUI4 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );
                END;
               5
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI5 := VENDA_LIQUI5 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );
                END;
               6
                :BEGIN
                      AUX := FORMATFLOAT('###,##0.00', VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );

                      WHILE LENGTH(AUX) <= 10 DO
                      BEGIN
                           AUX := ' ' + AUX;
                      END;

                      //
                      Print.ImpF(LinhaR, Coluna + 14, AUX,[Comp17]);

                      Print.ImpF(LinhaR, Coluna + 21, '|',[Comp17]);

                      VENDA_LIQUI6 := VENDA_LIQUI6 + (VER_FAT_VENDAS_ANALISE_CLIENTESOMA.VALUE );

                      INCLINHA ;
                END;
               END;

               VER_FAT_VENDAS_ANALISE_CLIENTE.next ;

               COLUNA := COLUNA + 10;

               CONT := CONT + 1;
          End;

          AUX := FORMATFLOAT('###,##0.00', VENDA_LIQUI1 + VENDA_LIQUI2 + VENDA_LIQUI3 + VENDA_LIQUI4 + VENDA_LIQUI5 + VENDA_LIQUI6);

          WHILE LENGTH(AUX) <= 10 DO
          BEGIN
               AUX := ' ' + AUX;
          END;

          //
          Print.ImpF(LinhaR, 74, AUX,[Comp17]);

     END;
END;

procedure TFRelVendasAnaliseCliente.ActPreviewExecute(Sender: TObject);
begin
     WITH DMRELATORIOS DO
     BEGIN
          VER_FAT_VENDAS_ANALISE_CLIENTE.Close ;

          VER_FAT_VENDAS_ANALISE_CLIENTE.ParamByName('CNPJ').asString:= DMApp.Cnpj;

          If (Ini.Text = '  / /  ') Or (INI.Text = '  / /    ')
          Then begin
               MessageDlg('Informe o Período', MtError, [MbOk],0);
               EXIT;
          end
          Else Begin
               VER_FAT_VENDAS_ANALISE_CLIENTE.ParamByName('DATA').asDate  := Ini.Date;
          End;

          VER_FAT_VENDAS_ANALISE_CLIENTE.ParamByName('CLIENTE').asInteger := STRTOINT(TRIM(EdClienteInicial.TEXT));

          VER_FAT_VENDAS_ANALISE_CLIENTE.OPEN ;

          //
          If VER_FAT_VENDAS_ANALISE_CLIENTE.RecordCount = 0
          Then Begin
               lblStatus.Visible := False ;
               ShowMessage('Não há registro a imprimir para o período, verifique !');
               //
               VER_FAT_VENDAS_ANALISE_CLIENTE.Close;
               //
               Ini.SetFocus;
               Exit;
          End
          Else Begin
               lblStatus.Visible := False ;
               VER_FAT_VENDAS_ANALISE_CLIENTE.FetchAll ;
               Anda.Max := VER_FAT_VENDAS_ANALISE_CLIENTE.RecordCount;
               Anda.Position := 0;
               Anda.Visible  := TRUE ;
          End;

          print.TitulodoRelatorio:='ANALISE DE VENDAS POR CLIENTE';

          print.Abrir;

          VENDA_LIQUIDA ;

          INCLINHA ;

          Anda.Visible:= False;

          Print.Fechar;
     end;
end;

procedure TFRelVendasAnaliseCliente.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
end;

procedure TFRelVendasAnaliseCliente.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelVendasAnaliseCliente.EdClienteInicialButtonClick(
  Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmRelatorios.SelPessoas ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
             LBLCLIENTE.Caption := DmRelatorios.SelPessoasNOME_RAZAO.value ;
        end;

        Frm_Localizar_Cliente.free ;
        Frm_Localizar_Cliente := Nil ;
     Except
     end;
end;

procedure TFRelVendasAnaliseCliente.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     With DmRelatorios do
     begin
          If Trim(EdClienteInicial.Text) <> ''
          then begin
               If SelPessoas.locate ( 'CODIGO', TRIM(EdClienteInicial.Text), [] )
               then begin
                    EdClienteInicial.Text  := SelPessoasCodigo.Text      ;
                    LBLCLIENTE.Caption  := SelPessoasNOME_RAZAO.value ;
               end
               else begin
                    EdClienteInicial.Text  := '' ;
                    LBLCLIENTE.Caption  := '' ;
               end;
          end
          else begin
               EdClienteInicial.Text  := ''  ;
               LBLCLIENTE.Caption  := ''  ;
          end;
     end;
end;

end.
