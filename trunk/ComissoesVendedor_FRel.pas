  unit ComissoesVendedor_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  ppDB, ppBands, ppClass, ppDBPipe, ppCtrls, ppVar, ppPrnabl, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppParameter, cxGraphics, cxControls,
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
  TFRelComissoesVendedor = class(TForm)
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
    rdTrocaVenda: TRadioGroup;
    rdStatus: TRadioGroup;
    rptResumoComissoes: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape22: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel62: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    ppLabel10: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppDBText6: TppDBText;
    ppDBText9: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppShape23: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    dbComFaixa: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppDBText7: TppDBText;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
    ppLabel3: TppLabel;
    ppDBText3: TppDBText;
    ppLabel4: TppLabel;
    ppDBText5: TppDBText;
    ppLabel7: TppLabel;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppLine5: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    lblFiltro: TppLabel;
    ppAppRepresentante: TppDBPipeline;
    dsApp: TDataSource;
    ppDBText10: TppDBText;
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
    Grupo, SubGrupo: Integer ;
    Procedure Comissao_Faixa ;
  public
    { Public declarations }
  end;

var
  FRelComissoesVendedor: TFRelComissoesVendedor;
  Linha, Pagina: Integer;
  TipoMovimento, Status : string;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelComissoesVendedor.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  TipoMovimento := '';
  Status := '';
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  IF DMAPP.COMISSAO_FAIXA = 'S'
  THEN BEGIN
       TipoRel.Enabled := FALSE ;
  END;

end;

procedure TFRelComissoesVendedor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelComissoesVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelComissoesVendedor := Nil;
end;

procedure TFRelComissoesVendedor.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelComissoesVendedor.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelComissoesVendedor.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, 'Tipo de Movimento: '+TipoMovimento, [Normal]);
  Print.ImpF(04, 22, 'Status: '+status, [Normal]);
  Print.ImpF(05, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If (TipoRel.ItemIndex = 0) Then // Sintético
  Begin
       IF DMAPP.COMISSAO_FAIXA = 'S'
       THEN BEGIN
            Print.ImpF(06,01,'Codigo Data       Cliente                            Produto                                    Liquido    A Vista    A Prazo      Total', [Comp17]);
            Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
            linha  := 09;
       END
       ELSE BEGIN
            Print.ImpF(06,01,'Codigo Data       Cliente                            Nat        NF      Total     Desc    %     Liquido    A Vista    A Prazo      Total', [Comp17]);
            Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
            linha  := 09;
       END;
  End
  Else // Analitico
     Begin
       Print.ImpF(06,01,'Codigo Data       Cliente                            Nat        NF      Total     Desc    %     Liquido    A Vista    A Prazo      Total', [Comp17]);
       Print.ImpF(07,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
       Print.ImpF(08,01, Replicate('-', 136), [Comp17]);
       Linha  := 10;
     End;
end;

procedure TFRelComissoesVendedor.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  Try
     IF DMApp.COMISSAO_FAIXA = 'S'
     THEN BEGIN
          dsVendedor.DataSet.Open ;

          cmbVendedor.Enabled := true ;
     END
     ELSE BEGIN
          If Not(dsVendedor.DataSet.Active)
          Then
              dsVendedor.DataSet.Open;

          cmbVendedor.Enabled := TRUE ;
     END;
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

procedure TFRelComissoesVendedor.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;
    Total_Vendedor, Total_Geral, Comissao_Prazo, Comissao_Vista: Real;
    Comissao_Vendedor_Vista, Comissao_Vendedor_Prazo, Comissao_Geral: Real;
    Vista, Prazo, Porcentagem, Desconto_Vendedor, Desconto_Geral: Real;
    Total_Bruto, Total_Bruto_Geral: Real;
    STR: String;
    sSql, DATA_CX: String;

    ITEM, ITEM_PRAZO, ITEM_VISTA, CALCVISTA, CALCPRAZO : REAL;
begin
  If (Ini.date <= 0) or (fim.date <= 0) then
  begin
    MessageDlg('Informe o Período', MtError, [MbOk],0);
    exit;
  end;

  {Mix Calçados Utiliza comissão por faixa, no entando as alterações de hj sao requisitadas p/magazine da moda
  p/q as trocas apareçam no relatorio de comissões, sendo que os unicos clientes que usam o modulo de trocas
  sao Magazine da Moda e Visual Tintas, portanto vou poupar tempo e evitar problemas e não mexer e comissão falta}
  IF DMApp.COMISSAO_FAIXA = 'S' THEN
  BEGIN
    Comissao_Faixa ;
    Exit ;
  END;

  //
  Cod_Vendedor := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  sSql := ' coalesce(CANCELADA,''N'')=''N''';

  with DMRelatorios do
  begin
    TipoMovimento := ' Todos ';
    case rdTrocaVenda.ItemIndex of
    1: begin
         sSql := sSql + ' and tipo_venda = ''TRC''';
         TipoMovimento := ' Trocas';
       end;
    2: begin
         sSql := ' and tipo_venda <> ''TRC''';
         TipoMovimento := ' Vendas';
       end;
    end;

    status := 'Ambos';
    case rdStatus.ItemIndex of
     0 :begin
         status := 'Fechado';
         sSql := sSql + ' and fechada = ''S''';
        end;
     1 :begin
         status := 'Aberto';
         sSql := sSql + ' and coalesce(fechada,''N'')=''N'')';
        end;
    end;

    Fat_VendasVend.Close ;
    Fat_VendasVend.SQL.text := ' Select * from VER_FAT_VENDAS_VENDEDOR(:CNPJ,:DTINIC,:DTFINAL,:VEND)';
    if ssql <> '' then
      Fat_VendasVend.SQL.add(' where '+ssql);
    Fat_VendasVend.SQL.add('order by vendedo,data_caixa,codigo');
    Fat_VendasVend.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    Fat_VendasVend.ParamByName('DTINIC').asDate  := Ini.Date;
    Fat_VendasVend.ParamByName('DTFINAL').asDate := Fim.Date;

    if CmbVendedor.Text = '' then
      Fat_VendasVend.ParamByName('VEND').asString:= '0'
    else
      Fat_VendasVend.ParamByName('VEND').asString:= cmbVendedor.LookupkeyValue;
    Fat_VendasVend.Open;
  end;

  If DMRelatorios.Fat_VendasVend.RecordCount = 0 Then
  begin
    lblStatus.Visible := False ;
    showMessage('Não há registro a imprimir para o período, verifique !');
    Ini.SetFocus;
    Exit;
  end
  else
  Begin
    lblStatus.Visible := False ;
    DMRelatorios.Fat_VendasVend.FetchAll ;
    Anda.Max := DMRelatorios.Fat_VendasVend.RecordCount;
    Anda.Position := 0;
    Anda.Visible  := TRUE ;
  end;
  //
  print.TitulodoRelatorio:='Relatorio de Comissões por Vendedor';
  print.Abrir;
  //

  Total_Vendedor    := 0;
  Total_Geral       := 0;
  Comissao_Prazo    := 0;
  Comissao_Vista    := 0;
  Desconto_Vendedor := 0;
  Desconto_Geral    := 0;
  Total_Bruto       := 0;
  Total_Bruto_Geral := 0;


  DMRelatorios.Fat_VendasVend.First;
  While Not DMRelatorios.Fat_VendasVend.Eof Do
  Begin
    If Cod_Vendedor <> DmRelatorios.Fat_VendasVendVENDEDO.Value Then
    begin
      Print.ImpF(Linha,01,'Vendedor : '+ DmRelatorios.Fat_VendasVendNOME_VENDEDOR.Text,[Comp17, Negrito]);
      Cod_Vendedor := DmRelatorios.Fat_VendasVendVENDEDO.Value;
      Linha := Linha + 2;
      Total_Vendedor          := 0;
      Comissao_Vendedor_Vista := 0;
      Comissao_Vendedor_Prazo := 0;
      Desconto_Vendedor       := 0;
      Total_Bruto             := 0;
    end;

    IF ( DMRelatorios.Fat_VendasVendPAGA_COMISSAO.VALUE = 'S' )THEN
    BEGIN
      VISTA := ARREDONDA(VISTA,2) + ARREDONDA(DMRelatorios.Fat_VendasVendVLR_VISTA.Value * DMRelatorios.Fat_VendasVendCOM_VISTA.VALUE / 100,2) ;
      PRAZO := ARREDONDA(PRAZO,2) + ARREDONDA(DMRelatorios.Fat_VendasVendVLR_PRAZO.Value * DMRelatorios.Fat_VendasVendCOM_PRAZO.VALUE / 100,2) ;
    END
    ELSE
    BEGIN
      VISTA := 0;
      PRAZO := 0;
    END;

    If DMRelatorios.Fat_VendasVendTOTAL.value > 0 then
      Porcentagem := DMRelatorios.Fat_VendasVendDESC_ACRES.value / DMRelatorios.Fat_VendasVendTOTAL.value * 100 
    else
      Porcentagem := 0 ;

    Str := COPY(FormatFloat('##0.00', Porcentagem ),1,5);

    While Length ( Str ) < 5 do
    begin
      Str := ' ' + Str ;
    end;

    DATA_CX := DMRelatorios.Fat_VendasVendDATA_CAIXA.Text ;

    IF TRIM( DATA_CX ) = '' THEN
      DATA_CX := 'ABERTA    ' ;

    Print.ImpF(Linha,01,Format('%6s %-8s %-35s %-6s %6s %10s %07s %05s %10s %10s %10s %10s',
    [DMRelatorios.Fat_VendasVendCODIGO.Text,
    DATA_CX,
    copy(DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,1,35),
    DMRelatorios.Fat_VendasVendNATUREZA.Text,
    DMRelatorios.Fat_VendasVendNUM_NF.Text,
    DMRelatorios.Fat_VendasVendTOTAL.Text,
    COPY(DMRelatorios.Fat_VendasVendDESC_ACRES.Text,1,7),
    Str,
    DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text,
    Formatfloat('###,###,##0.00', VISTA ),
    Formatfloat('###,###,##0.00', PRAZO ),
    Formatfloat('###,###,##0.00', PRAZO + VISTA )
    ]),[Comp17]);

    If (TipoRel.ItemIndex = 1) Then
    begin // Analitico
      If not DMRelatorios.Fat_Vendas_Comissoes.Active then
        DMRelatorios.Fat_Vendas_Comissoes.Open ;

      DMRelatorios.Fat_Vendas_Comissoes.First;

      Linha := Linha + 1;

      While Not DMRelatorios.Fat_Vendas_Comissoes.Eof Do
      begin
        Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
        [DMRelatorios.Fat_Vendas_ComissoesPRODUTO.Text,
        copy(DMRelatorios.Fat_Vendas_ComissoesNOME.Text,1,37),
        DMRelatorios.Fat_Vendas_ComissoesUNIDADE.Text,
        DMRelatorios.Fat_Vendas_ComissoesSUBUNIDADE.Text,
        DMRelatorios.Fat_Vendas_ComissoesQUANTIDADE.Text,
        DMRelatorios.Fat_Vendas_ComissoesPRC_UNITARIO.Text,
        DMRelatorios.Fat_Vendas_ComissoesDESCONTO.Text,
        FormatFloat('#,##0.00',(DMRelatorios.Fat_Vendas_ComissoesQUANTIDADE.AsFloat * DMRelatorios.Fat_Vendas_ComissoesPRC_UNITARIO.AsFloat) - DMRelatorios.Fat_Vendas_ComissoesDESCONTO.AsFloat)]), [Comp17]);
        Linha := Linha + 1;

        If (Linha >= 62)Then
           Print.Novapagina;

        DMRelatorios.Fat_Vendas_Comissoes.Next;
      end;
    end;

    if ( DMRelatorios.Fat_VendasVendPAGA_COMISSAO.VALUE = 'S' ) then
    begin
      //Totais das Vendas
      Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;
      Total_Vendedor:= Total_Vendedor + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value;

      //Totais das Comissoes
      Comissao_Geral          := Comissao_Geral    + VISTA + PRAZO  ;
      Comissao_Vendedor_Vista := Comissao_Vendedor_Vista   + VISTA  ;
      Comissao_Vendedor_Prazo := Comissao_Vendedor_Prazo   + PRAZO  ;

      //Descontos dos Vendedores
      Desconto_Vendedor := Desconto_Vendedor + DMRelatorios.Fat_VendasVendDESC_ACRES.value ;
      Desconto_Geral    := Desconto_Geral    + DMRelatorios.Fat_VendasVendDESC_ACRES.value ;

      //Valores Brutos
      Total_Bruto := Total_Bruto + DMRelatorios.Fat_VendasVendTOTAL.value;
      Total_Bruto_Geral := Total_Bruto_Geral + DMRelatorios.Fat_VendasVendTOTAL.value;
    end;


    Anda.Position := Anda.Position + 1;
    DMRelatorios.Fat_VendasVend.Next;

    VISTA := 0;
    PRAZO := 0;


    Linha := Linha + 1;

    If (Cod_Vendedor <> DmRelatorios.Fat_VendasVendVENDEDO.Value) Or (DMRelatorios.Fat_VendasVend.Eof) Then
    Begin
      if total_bruto > 0 then
        Porcentagem := Desconto_Vendedor / Total_Bruto * 100
      else
        Porcentagem := 0;

      Print.ImpF(Linha, 01, Format('%58s Total Vendedor : %10s %7s %8s %10s %10s %10s', ['', FormatFloat('#,##0.00', Desconto_Vendedor ), FormatFloat('#,##0.00', Porcentagem ), FormatFloat('#,##0.00', TOTAL_VENDEDOR), FormatFloat('#,##0.00', Comissao_Vendedor_Vista), FormatFloat('#,##0.00', Comissao_Vendedor_Prazo), FormatFloat('#,##0.00', Comissao_Vendedor_Vista + Comissao_Vendedor_Prazo )]), [Comp17]);
      Linha:= Linha + 1;
      Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
      Linha:= Linha + 1;

      Comissao_Prazo := Comissao_Prazo + Comissao_Vendedor_Prazo ;
      Comissao_Vista := Comissao_Vista + Comissao_Vendedor_Vista ;
    End;

    If (Linha >= 62) Then
      Print.Novapagina;
  end;

  IF Total_Bruto_Geral > 0 THEN
    Porcentagem := Desconto_Geral / Total_Bruto_Geral * 100
  else
    Porcentagem := 0;

  Print.ImpF(Linha+1, 01, Format('%58s Total Geral    : %10s %6s %10s %10s %10s %10s', ['', FormatFloat('#,##0.00', Desconto_Geral), FormatFloat('#,##0.00', Porcentagem),  FormatFloat('#,##0.00', TOTAL_GERAL), FormatFloat('#,##0.00', Comissao_Vista), FormatFloat('#,##0.00', Comissao_Prazo), FormatFloat('#,##0.00', Comissao_Geral)]), [Comp17, Negrito]);
  DMRelatorios.Fat_VendasVend.Close;
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelComissoesVendedor.Comissao_Faixa;
Var
    Cod_Vendedor, codigo: Integer;
    Total_Vendedor, Total_Geral: Real;
    Comissao_Vendedor_Vista, Comissao_Vendedor_Prazo, Comissao_Geral: Real;
    VISTA, PRAZO: Real;
    SOMA_VISTA, SOMA_PRAZO: Real ;
    Comissao_Vista, Comissao_Prazo: Real;
    Desconto_Vendedor: Real;
    STR: String;
    Desconto_Geral, Total_Bruto, Total_Bruto_Geral: Real;
    filtro, select2,select, order : string;

begin
  //
  Cod_Vendedor := 0;
  codigo  := 0;
  select  := ' Select * from VER_FAT_VENDAS_COMISSAO(:CNPJ,:DTINIC,:DTFINAL,:VENDOR) ';
  select2 := ' select * from pcd_comissao_faixa(:cnpj,:dtinic,:dtfinal) ';
  order :=  ' ORDER BY nome_vendedor, codigo';
  //order :=  ' ORDER BY VENDEDO, DATA_CAIXA, CODIGO ';
  //
  filtro := '';
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  // *** Passagem de Parametros ***

  case rdStatus.ItemIndex of
    0 : filtro := ' fechada = ''S''';
    1 : filtro := ' fechada = ''N''';
  end;


  case rdTrocaVenda.ItemIndex of
   1: begin
       if filtro <> '' then
        filtro := filtro + ' and ';
       filtro := filtro + ' NOME_PRODUTO = ''TROCA''';
      end;


   2: begin
        if filtro <> '' then
          filtro := filtro + ' and ';

        filtro := filtro + ' NOME_PRODUTO <> ''TROCA''';
      end;
  end;

  if (CmbVendedor.Text <> '') then
  begin
    if filtro <> '' then
      filtro := filtro + ' and ';

    filtro := filtro +' vendedo ='+ inttostr(cmbVendedor.LookupKeyValue);
  end;
  if filtro <> '' then
    filtro := ' where '+filtro;


  with dmRelatorios do
  begin
    //----------------------Impressão Gráfica-----------------------//
    qryRelComFaixa.close;
    qryRelComFaixa.SQL.text := select2+filtro+order;
    qryRelComFaixa.ParamByName('CNPJ').asString:= DMApp.Cnpj;
    qryRelComFaixa.ParamByName('DTINIC').asDate  := Ini.Date;
    qryRelComFaixa.ParamByName('DTFINAL').asDate := Fim.Date;
    qryRelComFaixa.open;
    lblEmpresa.Caption := DMApp.Nome;
    lblFiltro.Caption := 'Período: '+Ini.Text + ' à ' + Fim.Text +' - Status:'+status+' - Tipo Movimento:'+TipoMovimento;
    rptResumoComissoes.print;
    exit;
  end;
end;

procedure TFRelComissoesVendedor.IniEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelComissoesVendedor.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( INI.TEXT = '  /  /    ' ) or ( INI.TEXT = '  /  /  ' )
     THEN BEGIN
          INI.DATE := STRTODATE('01/01/1900') ;
     END;
end;

procedure TFRelComissoesVendedor.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );

     IF ( FIM.TEXT = '  /  /    ' ) or ( FIM.TEXT = '  /  /  ' )
     THEN BEGIN
          FIM.DATE := STRTODATE('31/12/9999') ;
     END;
end;

end.
