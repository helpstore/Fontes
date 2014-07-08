 unit VendasAnalitico_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  Grids, DBGrids, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelVendasAnalitico = class(TForm)
    pnlClient: TPanel;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    CkTipo: TdxCheckEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;

    PROCEDURE IMPRIME ( TIPO: String );
    procedure IncLinhaRel;

  public
    { Public declarations }
  end;

var
  FRelVendasAnalitico: TFRelVendasAnalitico;
  Linha, Pagina: Integer;
  Cod_Vendedor: Integer;
  Soma_Data, Total_Vendedor, Total_Geral: Real;
  Total_Cupom, Total_Nf, Total_Pedido: Real;
  STR: String;
  UltData: TDateTime ;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasAnalitico.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasAnalitico.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasAnalitico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasAnalitico := Nil;
end;

procedure TFRelVendasAnalitico.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasAnalitico.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasAnalitico.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo Data       Cliente                                    Nat        NF Vendedor                      Total   Desconto    Vlr Liquido', [Comp17]);

  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelVendasAnalitico.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
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

procedure TFRelVendasAnalitico.ActPreviewExecute(Sender: TObject);
begin
  if ((Ini.date <= 0) or (Fim.date <= 0 )) then
  begin
    application.MessageBox('Defina um período','Aviso', mb_iconinformation + mb_ok);
    ini.setfocus;
    exit;
  end;
  Total_Vendedor := 0;
  Total_Geral    := 0;
  Total_Cupom    := 0;
  Total_Nf       := 0;
  Total_Pedido   := 0;

  Cod_Vendedor := 0;
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  //Cupom Fiscal
  with dmrelatorios do
  begin
    Fat_VendasVend.Close ;
    Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR (:CNPJ,:DTINIC,:DTFINAL,:VEND)'+
                             ' where  coalesce(CANCELADA,''N'') = ''N'' and ( NUM_CUPOM > 0 ) and fechada = ''S''';

    Fat_VendasVend.SQL.add(' ORDER BY DATA_CAIXA, NUM_CUPOM ');
    Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
    Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
    Fat_VendasVend.ParamByName('VEND').asString:= '0';
    Fat_VendasVend.Open;
  end;

  print.TitulodoRelatorio:='Relatorio de Vendas Analitico';
  print.Abrir;
  Print.ImpF(Linha, 01, 'CUPOM FISCAL', [Comp12, Negrito]);
  IncLinhaRel;
  IMPRIME ( 'CUPOM' );
  Linha := Linha - 1;
  Print.ImpF(Linha+1, 01, Format('%106s Total Cupom : %15s', ['', FormatFloat('#,##0.00', TOTAL_CUPOM)]), [Comp17, Negrito]);

  //Nota Fiscal
  IncLinhaRel;
  IncLinhaRel;
  IncLinhaRel;
  with dmrelatorios do
  begin
    Fat_VendasVend.Close ;
    Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR (:CNPJ,:DTINIC,:DTFINAL,:VEND)'+
                             ' where  coalesce(CANCELADA,''N'') = ''N'' and (NUM_NF > 0) AND (NUM_CUPOM = 0) and fechada = ''S'' ';

    Fat_VendasVend.SQL.add(' ORDER BY DATA_CAIXA, NUM_NF');
    Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
    Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
    Fat_VendasVend.ParamByName('VEND').asString:= '0';
    Fat_VendasVend.Open;
  end;
  Print.ImpF(Linha, 01, 'NOTA FISCAL', [Comp17, Negrito]);
  IncLinhaRel;
  IMPRIME ( 'NF' );
  Print.ImpF(Linha+1, 01, Format('%106s    Total Nf : %15s', ['', FormatFloat('#,##0.00', TOTAL_NF)]), [Comp17, Negrito]);

  //Pedidos
  IncLinhaRel;
  IncLinhaRel;
  IncLinhaRel;
  with dmrelatorios do
  begin
    Fat_VendasVend.Close ;
    Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR (:CNPJ,:DTINIC,:DTFINAL,:VEND)'+
                               ' where  coalesce(CANCELADA,''N'') = ''N'' and ( NUM_NF = 0 ) AND ( NUM_CUPOM = 0 ) and fechada = ''S''';

    Fat_VendasVend.SQL.add(' ORDER BY DATA_CAIXA, codigo');
    Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
    Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;
    Fat_VendasVend.ParamByName('VEND').asString:= '0';
    Fat_VendasVend.Open;
  end;
  Print.ImpF(Linha, 01, 'PEDIDOS', [Comp17, Negrito]);

  IncLinhaRel;

  IMPRIME ( 'PEDIDO' );

  //
  Print.ImpF(Linha+1, 01, Format('%105s Total Pedido : %15s', ['', FormatFloat('#,##0.00', TOTAL_PEDIDO)]), [Comp17, Negrito]);

  IncLinhaRel;
  IncLinhaRel;

  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);

  //
  DMRelatorios.Fat_VendasVend.Close;

  //
  Anda.Visible:= False;

  print.Fechar;

end;

procedure TFRelVendasAnalitico.IMPRIME ( Tipo: String );
begin
     //
  DMRelatorios.Fat_VendasVend.First;

  UltData := DMRelatorios.Fat_VendasVendDATA_CAIXA.Value ;

  While Not DMRelatorios.Fat_VendasVend.Eof
  Do Begin
     //
     Print.ImpF(Linha,01,Format('%6s %-8s %-42s %-6s %6s %-20s %14s %10s %14s',
                  [DMRelatorios.Fat_VendasVendCODIGO.Text,
                   DMRelatorios.Fat_VendasVendDATA_CAIXA.Text,
                   copy(DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,1,42),
                   DMRelatorios.Fat_VendasVendNATUREZA.Text,
                   DMRelatorios.Fat_VendasVendNUM_NF.Text,
                   copy(DMRelatorios.Fat_VendasVendNOME_VENDEDOR.Text,1,20),
                   DMRelatorios.Fat_VendasVendTOTAL.Text,
                   DMRelatorios.Fat_VendasVendDESC_ACRES.Text,
                   DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text]),[Comp17]);

     if not CkTipo.Checked
     then begin
          //Itens da venda
          IncLinhaRel;
          DMRelatorios.Fat_VendasItens.Close ;
          DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
          DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value:= DMRelatorios.Fat_VendasVendCODIGO.Value;
          DMRelatorios.Fat_VendasItens.Open;

          DMRelatorios.Fat_VendasItens.FetchAll ;

          DMRelatorios.Fat_VendasItens.First;

          If DMRelatorios.Fat_VendasItens.recordcount > 0
          then begin
               Print.ImpF(Linha,01,'                  Codigo            Produto                                Unidade SubUnidade       Qtde   VlrUnit  Desconto   TotalItem', [Comp17]);
               IncLinhaRel;
          end;

          While Not DMRelatorios.Fat_VendasItens.Eof Do
          Begin
               Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                copy(DMRelatorios.Fat_VendasItensNOME.Text,1,37),
                DMRelatorios.Fat_VendasItensUNIDADE.Text,
                DMRelatorios.Fat_VendasItensSUBUNIDADE.Text,
                DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                DMRelatorios.Fat_VendasItensDESCONTO.Text,
                FormatFloat('#,##0.00',(DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat))]), [Comp17]);

               IncLinhaRel;

               DMRelatorios.Fat_VendasItens.Next;
          End;

          Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
     end;

     Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

     IF TIPO = 'CUPOM'
     THEN
         Total_Cupom  := Total_CUPOM  + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

     IF TIPO = 'NF'
     THEN
         Total_Nf     := Total_Nf     + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

     IF TIPO = 'PEDIDO'
     THEN
         Total_Pedido := Total_Pedido + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

     Soma_Data  := Soma_Data   + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

     //
     Anda.Position := Anda.Position + 1;

     DMRelatorios.Fat_VendasVend.Next;

     If ( DMRelatorios.Fat_VendasVendDATA_CAIXA.Value <> UltData ) or ( DMRelatorios.Fat_VendasVend.Eof )
     then begin
          IncLinhaRel;

          UltData   := DMRelatorios.Fat_VendasVendDATA_CAIXA.Value ;

          Print.ImpF(Linha+1, 01, Format('%106s Soma da Data: %15s', ['', FormatFloat('#,##0.00', SOMA_DATA )]), [Comp17, Negrito]);

          IncLinhaRel;

          Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);

          Soma_Data := 0;

          IncLinhaRel;
     end;
     //

     IncLinhaRel;
  End;

end;


procedure TFRelVendasAnalitico.IniExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     TIRACORFUNDO( SENDER );
     TRY
        IF ( INI.TEXT <> '  /  /    ' ) AND ( INI.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( INI.TEXT ) ;
        END;

        //TROCA A COR PARA A COR SELECIONADA
        TiraCorFundo ( Sender );

        if INI.TEXT = '  /  /    '
        THEN
            INI.DATE := STRTODATE ('01/01/1900');

     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           INI.SETFOCUS ;
     END;
end;

procedure TFRelVendasAnalitico.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelVendasAnalitico.IncLinhaRel;
begin
     Linha := Linha + 1;

     If (Linha >= 63)
     Then
         Print.Novapagina;
end;

procedure TFRelVendasAnalitico.FimExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     TIRACORFUNDO( SENDER );
     TRY
        IF ( FIM.TEXT <> '  /  /    ' ) AND ( FIM.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( FIM.TEXT ) ;
        END;

        if FIM.TEXT = '  /  /    '
        THEN
            FIM.DATE := STRTODATE ('31/12/9999');

     EXCEPT
           MessageDlg('Data Inválida!',MtError,[MbOk],0);
           FIM.SETFOCUS ;
     END;     
end;

end.
