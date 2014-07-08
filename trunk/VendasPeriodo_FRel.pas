 unit VendasPeriodo_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,
  IBCustomDataSet, ppParameter, ppModule, raCodMod, ppBands, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppDB, ppDBPipe,  variants, cxGraphics, cxControls,
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
  TFRelVendasPeriodo = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActPreview: TAction;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    TipoRel: TRadioGroup;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    TipoVenda: TRadioGroup;
    CkAbertas: TdxCheckEdit;
    Label2: TcxLabel;
    cmbNatureza: TdxLookupEdit;
    DsNatureza: TDataSource;
    DsCliente: TDataSource;
    Label4: TcxLabel;
    cmbCliente: TdxLookupEdit;
    Label5: TcxLabel;
    CmBVendedor: TdxLookupEdit;
    DsVendedor: TDataSource;
    cbUser: TdxLookupEdit;
    Label6: TcxLabel;
    dsUsuarios: TDataSource;
    rdTipoOrd: TRadioGroup;
    dbRelVendasSint: TppDBPipeline;
    dsVendasSint: TDataSource;
    rptRelSintetico: TppReport;
    ppTitleBand6: TppTitleBand;
    ppShape5: TppShape;
    lblEmpresaSint: TppLabel;
    ppLabel62: TppLabel;
    ppDetailBand6: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppShape9: TppShape;
    ppSystemVariable3: TppSystemVariable;
    raCodeModule4: TraCodeModule;
    ppParameterList2: TppParameterList;
    ppSummaryBand2: TppSummaryBand;
    ppHeaderBand2: TppHeaderBand;
    ppLabel63: TppLabel;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLine5: TppLine;
    ppDBText55: TppDBText;
    ppDBText56: TppDBText;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppLabel73: TppLabel;
    ppLine11: TppLine;
    ppDBCalc13: TppDBCalc;
    ppDBCalc14: TppDBCalc;
    ppDBCalc15: TppDBCalc;
    ppDBCalc16: TppDBCalc;
    ppDBCalc17: TppDBCalc;
    lblFiltroSint: TppLabel;
    rptRelAnalitico: TppReport;
    ppTitleBand7: TppTitleBand;
    ppShape6: TppShape;
    lblEmpresaAna: TppLabel;
    ppLabel76: TppLabel;
    lblFiltroAna: TppLabel;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    ppSummaryBand3: TppSummaryBand;
    raCodeModule1: TraCodeModule;
    ppParameterList3: TppParameterList;
    dbRelVendasAna: TppDBPipeline;
    dsVendasAna: TDataSource;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppLine12: TppLine;
    ppLabel79: TppLabel;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppLine13: TppLine;
    ppDBText73: TppDBText;
    ppDBText74: TppDBText;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppShape7: TppShape;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppDBText75: TppDBText;
    ppDBText76: TppDBText;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppLine14: TppLine;
    ppShape8: TppShape;
    ppSystemVariable6: TppSystemVariable;
    ppLabel96: TppLabel;
    ppLine15: TppLine;
    lblPrazoAna: TppLabel;
    lblVistaAna: TppLabel;
    lblLiquidoAna: TppLabel;
    lblDesctoAna: TppLabel;
    lblTotalAna: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppSystemVariable1: TppSystemVariable;
    rdTrocaVenda: TRadioGroup;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBText2: TppDBText;
    ppLabel2: TppLabel;
    ppDBText3: TppDBText;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure FimExit(Sender: TObject);
    procedure TipoRelClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  FRelVendasPeriodo: TFRelVendasPeriodo;
  Linha, Pagina: Integer;
  TipoRelatorio: String;

  Cod_Vendedor: Integer;
  Total_Vendedor, Total_Geral: Real;
  Data_Caixa, STR, Str_Jur, Str_Desc: String;
  AVista, APrazo, Descontos, Juros, TotalQuantidade: Real;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasPeriodo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  DmRelatorios.SelUsuario.close;
  DmRelatorios.SelUsuario.Open;

end;

procedure TFRelVendasPeriodo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasPeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DMRelatorios.SelNatureza.CLOSE ;
  DMRelatorios.SelCliente.CLOSE ;
  DMRelatorios.SelVendedor.CLOSE ;

  Action := caFree;
  FRelVendasPeriodo := Nil;
end;

procedure TFRelVendasPeriodo.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;





procedure TFRelVendasPeriodo.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
       //
       DMRelatorios.SelNatureza.Open ;

       DMRelatorios.SelVendedor.Open ;

       DMRelatorios.SelCliente.Open ;
       cbUser.LookupKeyValue := -1;
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

procedure TFRelVendasPeriodo.ActPreviewExecute(Sender: TObject);
Var
   Vista, Prazo, Liquido, Total, Descto : real;
   Cont: Integer;
   FiltroRel : string;
   Filtro : string;
begin
  if (Ini.date <=0) or (Fim.date <=0) then
  begin
    application.messageBox('Informe o período corretamente','Aviso', mb_iconinformation + mb_ok);
    exit;
  end;

  filtro := ini.Text + ' à ' + fim.text;

  //-------------------------------------------Filtros do Relatório-----------------------------------//
  //if escolha for todos não filtra por caixa else nao filtra por caixa
  if CbUser.LookupKeyValue = -1 then
  begin
    FiltroRel := '';
    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + ' Usuário: Todos '
  end
  else
  begin
    if filtro <> '' then
      filtro := filtro + ' - ';

    FiltroRel := ' usuario = '+VarToStr(cbUser.LookupKeyValue);
    filtro := filtro + ' Usuário:'+cbUser.text;
  end;


  //---por padrão todas as vendas aparecerão por isso é necessario bloquear
  if not CkAbertas.checked then
  begin
    if filtro <> '' then
      filtro := filtro + ' - ';
    filtro := filtro + ' Status: Fechadas';

    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' FECHADA = ''S''';
  end
  else
  begin
    if filtro <> '' then
      filtro := filtro + ' - ';
    filtro := filtro + ' Status: Abertas & Fechadas';

    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' FECHADA = ''S'' or (DATA between '+QuotedStr(
                                                                        FormatDateTime('mm/dd/yyyy',Ini.Date))+' and '+
                                                                  QuotedStr(
                                                                        FormatDateTime('mm/dd/yyyy',Fim.Date))+')';
  end;

  //Natureza de operação
  if (cmbNatureza.Text <> '') then
  begin
    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' NATUREZA ='+intTostr(CmbNatureza.LookupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + ' Natureza: '+CmbNatureza.text;
  end;

  //cliente
  if (cmbCliente.Text <> '') then
  begin
    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' Pessoa_Fj = '+intTostr(cmbCliente.LookupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + ' Cliente: '+cmbCliente.Text;
  end;

  //Vendas Fiscais
  if TipoVenda.ItemIndex = 1 then
  begin
    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + '(DOCTO <> ''TRC'') and (DOCTO <> '''')';

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendas: Fiscais';
  end
  else if TipoVenda.ItemIndex = 2 then //vendas não fiscais
  begin
    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' (DOCTO = ''TRC'' OR DOCTO = '''')';

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendas: Não Fiscais';
  end
  else
  begin
    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendas: Todas';
  end;

  {Se trocas foram selecionada p/aparecer}
  case rdTrocaVenda.itemindex of
    0 :begin
          if filtro <> '' then
            filtro := filtro + ' - ';

          filtro := filtro + ' Tipo Movimento: Ambas ';
       end;
    1 : begin
          if FiltroRel <> '' then
            FiltroRel := FiltroRel + ' and ';

          FiltroRel := FiltroRel +  ' DOCTO <> ''TRC''';

          if filtro <> '' then
            filtro := filtro + ' - ';

          filtro := filtro + ' Tipo Movimento: Somente Vendas';
        end;

    2 :begin
          if FiltroRel <> '' then
            FiltroRel := FiltroRel + ' and ';

          FiltroRel := FiltroRel +  ' DOCTO = ''TRC''';

          if filtro <> '' then
            filtro := filtro + ' - ';

          filtro := filtro + 'Tipo Movimento: Somente Trocas';
       end;
  end;
  
  if (cmbVendedor.Text <> '') then
  begin
    if FiltroRel <> '' then
      FiltroRel := FiltroRel + ' and ';

    FiltroRel := FiltroRel + ' vendedor ='+IntToStr(cmbVendedor.LooKupKeyValue);

    if filtro <> '' then
      filtro := filtro + ' - ';

    filtro := filtro + 'Vendedor:'+cmbVendedor.text;
  end;
  //------------------------------final do filtro--------------------------------------------------//


  with DMRelatorios do
  begin
      {Vou utilizar este dataset como totalizador no analitico tambem}
      qryVendasPeriodoSint.sql.text := 'select *  from PCD_REL_VENDAS_PERIODO_Sint(:cnpj,:DINI,:DFIM)';
      qryVendasPeriodoSint.ParamByName('CNPJ').value := dmapp.cnpj;
      qryVendasPeriodoSint.ParamByName('DINI').AsDate := strtodate(trim(Ini.Text));
      qryVendasPeriodoSint.ParamByName('DFIM').AsDate := strtodate(trim(Fim.Text));

      {Se houve algum filtro}
      if FiltroRel <> '' then
        qryVendasPeriodoSint.SQL.Add(' where '+FiltroRel);

      {Ordenação do Relatório}
      if rdTipoOrd.ItemIndex = 0 then
        qryVendasPeriodoSint.SQL.Add (' order by DATA , NUM_NF')
      else if rdTipoOrd.ItemIndex = 1 then
        qryVendasPeriodoSint.SQL.Add (' order by NUM_NF, DATA ')
      else if rdTipoOrd.ItemIndex = 2 then
        qryVendasPeriodoSint.SQL.Add (' order by CODIGO, DATA ');

    qryVendasPeriodoSint.open;
    if (TipoRel.itemindex = 0) then
    begin
      //--------------------------------Relatorio Sintetico-------------------------------------//
      lblEmpresaSint.text := dmApp.nome;
      lblFiltroSint.text := 'FILTRO: '+  filtro;
      rptRelSintetico.print;
      exit;
    end
    else
    begin
      //----------------------------------vendas-------------------------------------//
      qryVendasPeriodo.sql.text := 'select *  from PCD_REL_VENDAS_PERIODO(:cnpj,:dini,:dfim)';
      qryVendasPeriodo.ParamByName('CNPJ').value := dmapp.cnpj;
      qryVendasPeriodo.ParamByName('DINI').value := Ini.Date;
      qryVendasPeriodo.ParamByName('Dfim').value := Fim.Date;

      {Se houve algum filtro}
      if FiltroRel <> '' then
        qryVendasPeriodo.SQL.Add(' where '+FiltroRel);

      {Ordenação do Relatório}
      if rdTipoOrd.ItemIndex = 0 then
        qryVendasPeriodo.SQL.Add (' order by codigo, DATA , NUM_NF')
      else
        qryVendasPeriodo.SQL.Add (' order by codigo, NUM_NF, DATA ');

      qryVendasPeriodo.open;
    end;

    Vista := 0;
    Prazo := 0;
    Descto := 0;
    Liquido := 0;
    Total := 0;

    {Maquiando o total de vendas Analítico}
    qryVendasPeriodoSint.First;
    while not qryVendasPeriodoSint.eof do
    begin
      Vista := Vista + qryVendasPeriodoSintVLR_VISTA.value;
      Prazo := Prazo + qryVendasPeriodoSintVLR_VISTA.value;
      Descto := Descto + qryVendasPeriodoSintDesconto.value;
      Liquido := Liquido + qryVendasPeriodoSintTOTAL.value;
      Total := Total + qryVendasPeriodoSintTOTAL_bruto.value;
      qryVendasPeriodoSint.next;
    end;
    lblLiquidoAna.text := formatFloat('###,##0.00',Liquido);
    lblDesctoAna.text := formatFloat('###,##0.00',Descto);
    lblTotalAna.text := formatFloat('###,##0.00',Total);
    lblPrazoAna.text := formatFloat('###,##0.00',Prazo);
    lblVistaAna.text := formatFloat('###,##0.00',Vista);

    lblFiltroAna.text := 'FILTRO: '+fILTRO;
    lblEmpresaAna.text := dmapp.nome;
    rptRelAnalitico.print;
    exit;
  end;

end;

procedure TFRelVendasPeriodo.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
     if INI.date <= 0 then
        INI.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelVendasPeriodo.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelVendasPeriodo.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

     if FIM.date <= 0 then
       FIM.DATE := STRTODATE ('31/12/9999');

end;

procedure TFRelVendasPeriodo.TipoRelClick(Sender: TObject);
begin
 { if TipoRel.ItemIndex = 1 then
    rdTipoOrd.enabled := false
  else
    rdTipoOrd.enabled := true;}
end;

end.
