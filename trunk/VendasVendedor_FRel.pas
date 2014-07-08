 unit VendasVendedor_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  IBCustomDataSet, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelVendasVendedor = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label2: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsVendedor: TDataSource;
    TipoRel: TRadioGroup;
    CkTipo: TdxCheckEdit;
    cbUser: TdxLookupEdit;
    Label6: TcxLabel;
    dsUsuario: TDataSource;
    ckTrocas: TdxCheckEdit;
    ckVdCancelada: TdxCheckEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasVendedor: TFRelVendasVendedor;
  Linha, Pagina: Integer;
  FiltroRel : string;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasVendedor.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  DmRelatorios.lkpUsuario.close;
  DmRelatorios.lkpUsuario.ParamByName('CNPJ').value := DmaPP.Cnpj;
  DmRelatorios.lkpUsuario.Open;

end;

procedure TFRelVendasVendedor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //

  Action := caFree;
  FRelVendasVendedor := Nil;
end;

procedure TFRelVendasVendedor.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasVendedor.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasVendedor.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, 'Filtros: '+FiltroRel, [Comp17]);
  Print.ImpF(05, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If (TipoRel.ItemIndex = 0) Then // Sintético
     Begin
       Print.ImpF(06,01,'Codigo Data       Caixa  Cliente                                     Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
     End
  Else // Analitico
     Begin
       Print.ImpF(06,01,'Codigo Data       Cliente                                            Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(07,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
       Print.ImpF(08,01, Replicate('-', 136), [Comp17]);
       Linha  := 09;
     End;
end;

procedure TFRelVendasVendedor.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //marcando caixa como todos
  cbUser.LookupKeyValue := -1;
    Try
    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;
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

procedure TFRelVendasVendedor.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;
    Total_Vendedor, Total_Geral: Real;
    STR: String;
    Filtro : string;
    TotalItem : Real;
begin
  if ((Ini.date <= 0) or (Fim.date <= 0 )) then
  begin
    application.MessageBox('Defina um período','Aviso', mb_iconinformation + mb_ok);
    ini.setfocus;
    exit;
  end;


  Filtro := '' ;
  //----------filro de usuário------/
  if CbUser.text <> 'Todos' then
  begin
    Filtro := ' and usuario = '+IntToStr(cbUser.LookupKeyValue);
    FiltroRel := ' Usuário: '+CbUser.text;
  end
  else
    FiltroRel := ' Usuário: Todos';

  //----------filtro vendas abertas------/
  if not(ckTipo.checked) then
  begin
    if (filtro <> '') then
      Filtro := Filtro + ' and ';
    Filtro := Filtro + ' fechada = ''S''';

    if filtroRel <> '' then
      filtroRel := FiltroRel + ' - ';
    FiltroRel := filtrorel + ' Inc. Abertas: Não';
  end
  else
  begin
    if filtroRel <> '' then
      filtroRel := FiltroRel + ' - ';
    FiltroRel := FiltroRel+'Inc. Abertas: Sim';

    if Filtro <> '' then
      Filtro := Filtro + ' and ';
    Filtro := Filtro + ' (FECHADA = ''S'' or (DATA between '+QuotedStr(
                                            FormatDateTime('mm/dd/yyyy',Ini.Date))+' and '+
                                         QuotedStr(
                                            FormatDateTime('mm/dd/yyyy',Fim.Date))+'))';
  end;

   //----------filtro trocas------/
   if not(ckTrocas.checked) then
   begin
      if (filtro <> '') then
        Filtro := Filtro + ' and ';

      Filtro := Filtro + ' tipo_venda <> ''TRC''';
      if filtroRel <> '' then
        filtroRel := FiltroRel + ' - ';

      FiltroRel := FiltroRel + ' Inc. Trocas: Não';
   end
   else
   begin
      if filtroRel <> '' then
        filtroRel := FiltroRel + ' - ';

      FiltroRel := FiltroRel + ' Inc. Trocas: Sim';
   end;

   //----------filtro trocas------/
   if not(ckVdCancelada.checked) then
   begin
    if (filtro <> '') then
      Filtro := Filtro + ' and ';

    Filtro := Filtro + ' coalesce(CANCELADA,''N'') = ''N''';
    if filtroRel <> '' then
      filtroRel := FiltroRel + ' - ';

    FiltroRel := FiltroRel + ' Inc. Vd. Canc: Não';
   end
   else
   begin
     if filtroRel <> '' then
      filtroRel := FiltroRel + ' - ';

    FiltroRel := FiltroRel + ' Inc. Vd. Canc: Sim';
   end;

  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  with dmRelatorios do
  begin
    Fat_VendasVend.Close ;
    Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR (:CNPJ,:DTINIC,:DTFINAL,:VEND)';
    if (filtro <> '') then
      filtro := ' where '+filtro;

    Fat_VendasVend.SQL.add(Filtro);
     //agrupando tudo por vendedor
    Fat_VendasVend.SQL.add(' order by vendedo');

    Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasVend.ParamByName('DTINIC').asDate  := strtodate(trim(Ini.Text));
    Fat_VendasVend.ParamByName('DTFINAL').asDate := strtodate(trim(Fim.Text));
    //----------Filtro Vendedor---------//
    if CmbVendedor.Text = '' then
    begin
      Fat_VendasVend.ParamByName('VEND').value := '0';
      if filtroRel <> '' then
       filtroRel := FiltroRel + ' - ';

     FiltroRel := FiltroRel + ' Vendedor: Todos';
    end
    else
    begin
      Fat_VendasVend.ParamByName('VEND').value := cmbVendedor.lookupKeyValue;
      if filtroRel <> '' then
       filtroRel := FiltroRel + ' - ';

      FiltroRel := FiltroRel + ' Vendedor: '+CmbVendedor.Text;
    end;

    Fat_VendasVend.Open;
  end;


  If DMRelatorios.Fat_VendasVend.RecordCount = 0 Then
  Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Fat_VendasVend.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       DMRelatorios.Fat_VendasVend.FetchAll ;
       Anda.Max := DMRelatorios.Fat_VendasVend.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatório de Vendas por Vendedor ';
  print.Abrir;
  //
  Total_Vendedor:= 0;
  Total_Geral:= 0;
  //
  DMRelatorios.Fat_VendasVend.First;
  While Not DMRelatorios.Fat_VendasVend.Eof Do
  Begin
          //
          If Cod_Vendedor <> DmRelatorios.Fat_VendasVendVENDEDO.Value Then
          Begin
               Print.ImpF(Linha,01,'Vendedor : '+DmRelatorios.Fat_VendasVendNOME_VENDEDOR.Text,[Comp17, Negrito]);
               Cod_Vendedor := DmRelatorios.Fat_VendasVendVENDEDO.Value;
               Linha := Linha + 2;
               Total_Vendedor:= 0;
          End;
          //
          IF NOT DMRelatorios.Fat_VendasVendDATA_CAIXA.IsNull THEN
          BEGIN
               Print.ImpF(Linha,01,Format('%6s %-8s %-8s %-42s %-9s %11s %14s %14s %15s',
                  [DMRelatorios.Fat_VendasVendCODIGO.Text,
                   formatdatetime('dd/mm/yy',DMRelatorios.Fat_VendasVendDATA.asdatetime),
                   formatdatetime('dd/mm/yy',DMRelatorios.Fat_VendasVendDATA_CAIXA.asdatetime),
                   DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,
                   DMRelatorios.Fat_VendasVendNATUREZA.Text,
                   DMRelatorios.Fat_VendasVendNUM_NF.Text,
                   DMRelatorios.Fat_VendasVendTOTAL.Text,
                   DMRelatorios.Fat_VendasVendDESC_ACRES.Text,
                   DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text]),[Comp17]);
          END ELSE
          BEGIN
               Print.ImpF(Linha,01,Format('%6s %-8s %-8s %-42s %-9s %11s %14s %14s %15s',
                  [DMRelatorios.Fat_VendasVendCODIGO.Text,
                   formatdatetime('dd/mm/yy',DMRelatorios.Fat_VendasVendDATA.asdatetime),
                   ''{formatdatetime('dd/mm/yy',DMRelatorios.Fat_VendasVendDATA_CAIXA.asdatetime)},
                   DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,
                   DMRelatorios.Fat_VendasVendNATUREZA.Text,
                   DMRelatorios.Fat_VendasVendNUM_NF.Text,
                   DMRelatorios.Fat_VendasVendTOTAL.Text,
                   DMRelatorios.Fat_VendasVendDESC_ACRES.Text,
                   DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text]),[Comp17]);
          END;

          If (TipoRel.ItemIndex = 1) Then
          Begin // Analitico
               Linha := Linha + 1;
               DMRelatorios.Fat_VendasItens.Close ;
               DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
               DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value:= DMRelatorios.Fat_VendasVendCODIGO.Value;
               DMRelatorios.Fat_VendasItens.Open;
               DMRelatorios.Fat_VendasItens.First;
               While Not DMRelatorios.Fat_VendasItens.Eof Do
               Begin
                 TotalItem := (DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat);
                 Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                               [DMRelatorios.Fat_VendasItensPRODUTO.Text,
                                copy(DMRelatorios.Fat_VendasItensNOME.Text,1,37),
                                DMRelatorios.Fat_VendasItensUNIDADE.Text,
                                DMRelatorios.Fat_VendasItensSUBUNIDADE.Text,
                                DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
                                DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
                                DMRelatorios.Fat_VendasItensDESCONTO_TOTAL.Text,
                                FormatFloat('#,##0.00',TotalItem)]), [Comp17]);
                       Linha := Linha + 1;
                       DMRelatorios.Fat_VendasItens.Next;
               End;
          End;

          Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

          Total_Vendedor:= Total_Vendedor + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_VendasVend.Next;
          //
          Linha := Linha + 1;
          //
          If (Cod_Vendedor <> DmRelatorios.Fat_VendasVendVENDEDO.Value) Or
             (DMRelatorios.Fat_VendasVend.Eof)
          Then Begin
               Print.ImpF(Linha, 01, Format('%103s Total Vendedor : %15s', ['', FormatFloat('#,##0.00', TOTAL_VENDEDOR)]), [Comp17, Negrito]);
               Linha:= Linha + 1;
               Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
               Linha:= Linha + 1;
          End;

          //
          If (Linha >= 63)
          Then
              Print.Novapagina;
  End;

  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
  //
  DMRelatorios.Fat_VendasVend.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasVendedor.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelVendasVendedor.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
     IF INI.date < 0 THEN
       INI.DATE := STRTODATE('01/01/1900') ;
end;

procedure TFRelVendasVendedor.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
     IF fim.date < 0 THEN
     FIM.DATE := STRTODATE('31/12/9999') ;
end;

end.
