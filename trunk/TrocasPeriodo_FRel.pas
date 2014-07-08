 unit VendasPeriodo_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,  
  IBCustomDataSet, ppParameter, ppModule, raCodMod, ppBands, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppDB, ppDBPipe, cxGraphics, cxControls, cxLookAndFeels,
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
  TFRelTrocasPeriodo = class(TForm)
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
    CkTrocas: TdxCheckEdit;
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
    rptRelGrafico: TppReport;
    ppTitleBand1: TppTitleBand;
    ppShape3: TppShape;
    lblEmpresa: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    lblCaixa: TppLabel;
    ppDetailBand1: TppDetailBand;
    SubVdAnalitico: TppSubReport;
    ppChildReport2: TppChildReport;
    ppTitleBand3: TppTitleBand;
    ppDetailBand3: TppDetailBand;
    raCodeModule2: TraCodeModule;
    ppParameterList1: TppParameterList;
    dsVendas: TDataSource;
    dbRelVendas: TppDBPipeline;
    dbRelTrocas: TppDBPipeline;
    dsTrocas: TDataSource;
    ppLabel18: TppLabel;
    ppLabel7: TppLabel;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppSystemVariable4: TppSystemVariable;
    ppShape12: TppShape;
    SubTrcAnalitico: TppSubReport;
    ppChildReport3: TppChildReport;
    ppTitleBand4: TppTitleBand;
    ppLabel22: TppLabel;
    ppDetailBand4: TppDetailBand;
    SubTrcSintetico: TppSubReport;
    ppChildReport4: TppChildReport;
    ppTitleBand5: TppTitleBand;
    ppLabel32: TppLabel;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppSummaryBand4: TppSummaryBand;
    ppLabel42: TppLabel;
    ppLine6: TppLine;
    ppDBCalc2: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    raCodeModule3: TraCodeModule;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLine7: TppLine;
    ppDBText36: TppDBText;
    ppDBText37: TppDBText;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppLine8: TppLine;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel27: TppLabel;
    ppLabel29: TppLabel;
    ppShape2: TppShape;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppLine2: TppLine;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLine9: TppLine;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppLine10: TppLine;
    ppLabel23: TppLabel;
    ppDBText23: TppDBText;
    ppLabel26: TppLabel;
    ppLabel28: TppLabel;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppDBText26: TppDBText;
    ppDBText50: TppDBText;
    ppLabel50: TppLabel;
    ppDBText51: TppDBText;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppDBText52: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppShape4: TppShape;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLabel60: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppDBText53: TppDBText;
    ppDBCalc9: TppDBCalc;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    dbRelVendasSint: TppDBPipeline;
    dsVendasSint: TDataSource;
    SubVdSintetico: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand2: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppHeaderBand1: TppHeaderBand;
    ppFooterBand2: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText15: TppDBText;
    ppDBText54: TppDBText;
    ppLabel61: TppLabel;
    ppLine4: TppLine;
    ppDBCalc1: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppLabel15: TppLabel;
    dsTrocasSint: TDataSource;
    dbRelTrocasSint: TppDBPipeline;
    dsApp: TDataSource;
    ppAppRepresentante: TppDBPipeline;
    ppDBText55: TppDBText;
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
    procedure TipoRelClick(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    procedure CabecalhoRelatorio;
    procedure CabecalhoTrocas;
    procedure ListarTrocas ;
    procedure IncLin ;
  public
    { Public declarations }
  end;

var
  FRelTrocasPeriodo: TFRelTrocasPeriodo;
  Linha, Pagina: Integer;
  TipoRelatorio: String;

  Cod_Vendedor: Integer;
  Total_Vendedor, Total_Geral: Real;
  Data_Caixa, STR, Str_Jur, Str_Desc: String;
  AVista, APrazo, Descontos, Juros, TotalQuantidade: Real;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes,
  VendasPeriodo_FRel;

{$R *.DFM}

procedure TFRelTrocasPeriodo.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);

  DmRelatorios.SelUsuario.close;
  DmRelatorios.SelUsuario.Open;

  ppLabel116.Caption :=  ppLabel116.Caption + dmApp.FONE_SUPORTE;   
end;

procedure TFRelTrocasPeriodo.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelTrocasPeriodo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  DMRelatorios.SelNatureza.CLOSE ;
  DMRelatorios.SelCliente.CLOSE ;
  DMRelatorios.SelVendedor.CLOSE ;

  DMRelatorios.Free;
  DMRelatorios := Nil;
  //
  Action := caFree;
  FRelVendasPeriodo := Nil;
end;

procedure TFRelTrocasPeriodo.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelTrocasPeriodo.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelTrocasPeriodo.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);

  CabecalhoRelatorio ;
end;

procedure TFRelTrocasPeriodo.CabecalhoRelatorio ;
begin
     If TipoRelatorio = 'Venda'
     then begin
          If (TipoRel.ItemIndex = 0)
          Then Begin
               Print.ImpF(05,01,'Codigo Data       Cliente                                          Natureza    NF       Total        Juros      Desconto     Vlr Liquido', [Comp17]);

               Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
               linha  := 08;
          End
          Else Begin
               Print.ImpF(05,01,'Codigo Data       Cliente                                          Natureza    NF       Total        Juros      Desconto     Vlr Liquido', [Comp17]);
               Print.ImpF(06,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
               Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
               Linha  := 09;
          End;
     end
     else begin
          If (TipoRel.ItemIndex = 0)
          Then Begin
               Print.ImpF(05,01,'Cod', [Comp17]);
               Print.ImpF(05,04,'Data', [Comp17]);
               Print.ImpF(05,09,'Nome', [Comp17]);
               Print.ImpF(05,30,'Vend', [Comp17]);
               Print.ImpF(05,38,'Data', [Comp17]);
               Print.ImpF(05,46,'    Entrada', [Comp17]);
               Print.ImpF(05,53,'   Desc Ent', [Comp17]);
               Print.ImpF(05,60,'      Saida', [Comp17]);
               Print.ImpF(05,67,'   Desc Sai', [Comp17]);
               Print.ImpF(05,74,'Vlr Liquido', [Comp17]);


               Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
               linha  := 08;
          End
          Else Begin
               Print.ImpF(05,01,'Cod', [Comp17]);
               Print.ImpF(05,04,'Data', [Comp17]);
               Print.ImpF(05,09,'Nome', [Comp17]);
               Print.ImpF(05,30,'Vend', [Comp17]);
               Print.ImpF(05,38,'Data', [Comp17]);
               Print.ImpF(05,46,'    Entrada', [Comp17]);
               Print.ImpF(05,53,'   Desc Ent', [Comp17]);
               Print.ImpF(05,60,'      Saida', [Comp17]);
               Print.ImpF(05,67,'   Desc Sai', [Comp17]);
               Print.ImpF(05,74,'Vlr Liquido', [Comp17]);

               Print.ImpF(06,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);

               Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
               Linha  := 09;
          End;
     end;
end;

procedure TFRelTrocasPeriodo.CabecalhoTrocas ;
begin
     If (TipoRel.ItemIndex = 0)
     Then Begin
          Print.ImpF(Linha,01,'Cod', [Comp17]);
          Print.ImpF(Linha,04,'Data', [Comp17]);
          Print.ImpF(Linha,09,'Nome', [Comp17]);
          Print.ImpF(Linha,30,'Vend', [Comp17]);
          Print.ImpF(Linha,38,'Data', [Comp17]);
          Print.ImpF(Linha,46,'    Entrada', [Comp17]);
          Print.ImpF(Linha,53,'   Desc Ent', [Comp17]);
          Print.ImpF(Linha,60,'      Saida', [Comp17]);
          Print.ImpF(Linha,67,'   Desc Sai', [Comp17]);
          Print.ImpF(Linha,74,'Vlr Liquido', [Comp17]);

          IncLin;

          Print.ImpF(Linha,01, Replicate('-', 136), [Comp17]);

          IncLin;
     End
     Else Begin
          Print.ImpF(Linha,01,'Cod', [Comp17]);
          Print.ImpF(Linha,04,'Data', [Comp17]);
          Print.ImpF(Linha,09,'Nome', [Comp17]);
          Print.ImpF(Linha,30,'Vend', [Comp17]);
          Print.ImpF(Linha,38,'Data', [Comp17]);
          Print.ImpF(Linha,46,'    Entrada', [Comp17]);
          Print.ImpF(Linha,53,'   Desc Ent', [Comp17]);
          Print.ImpF(Linha,60,'      Saida', [Comp17]);
          Print.ImpF(Linha,67,'   Desc Sai', [Comp17]);
          Print.ImpF(Linha,74,'Vlr Liquido', [Comp17]);

          IncLin;

          Print.ImpF(Linha,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);

          IncLin;

          Print.ImpF(Linha,01, Replicate('-', 136), [Comp17]);

          IncLin;
     End;
end;

procedure TFRelTrocasPeriodo.FormShow(Sender: TObject);
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

procedure TFRelTrocasPeriodo.ActPreviewExecute(Sender: TObject);
Var
   Cont: Integer;
   FiltroRelVenda : string;
   FiltroRelTroca : string;
begin
  if (Ini.date <=0) or (Fim.date <=0) then
  begin
    application.messageBox('Informe o período corretamente','Aviso', mb_iconinformation + mb_ok);
    exit;
  end;

  //-------------------------------------------Filtros do Relatório-----------------------------------//
  //if escolha for todos não filtra por caixa else nao filtra por caixa
  if CbUser.LookupKeyValue = -1 then
  begin
    FiltroRelVenda := '';
    FiltroRelTroca := '';
  end
  else
  begin
    FiltroRelVenda := ' usuario = '+VarToStr(cbUser.LookupKeyValue);
    FiltroRelTroca := ' usuario = '+VarToStr(cbUser.LookupKeyValue);
  end;


  //---por padrão todas as vendas aparecerão por isso é necessario bloquear
  if not CkAbertas.checked then
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    if FiltroRelTroca  <> '' then
      FiltroRelTroca := FiltroRelTroca  + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' FECHADA = ''S''';
    FiltroRelTroca := FiltroRelTroca  + ' FECHADA = ''S''';
  end;

  //Natureza de operação
  if (cmbNatureza.Text <> '') then
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' NATUREZA ='+intTostr(CmbNatureza.LookupKeyValue);
  end;

  //cliente
  if (cmbCliente.Text <> '') then
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    if FiltroRelTroca  <> '' then
      FiltroRelTroca := FiltroRelTroca  + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' Pessoa_Fj = '+intTostr(cmbCliente.LookupKeyValue);
    FiltroRelTroca := FiltroRelTroca  + ' Pessoa_Fj = '+intTostr(cmbCliente.LookupKeyValue);
  end;
  //Vendas Fiscais
  if TipoVenda.ItemIndex = 1 then
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' DOCTO <> ''''';
  end
  else if TipoVenda.ItemIndex = 2 then //vendas não fiscais
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' DOCTO = ''''';
  end;

  if (cmbVendedor.Text <> '') then
  begin
    if FiltroRelVenda <> '' then
      FiltroRelVenda := FiltroRelVenda + ' and ';

    if FiltroRelTroca  <> '' then
      FiltroRelTroca := FiltroRelTroca  + ' and ';

    FiltroRelVenda := FiltroRelVenda + ' vendedor ='+IntToStr(cmbVendedor.LooKupKeyValue);
    FiltroRelTroca := FiltroRelTroca  + ' vendedor ='+IntToStr(cmbVendedor.LooKupKeyValue);
  end;

  //------------------------------final do filtro--------------------------------------------------//

  lblEmpresa.Caption := dmApp.Nome;
  {Relatórios sintéticos}

  with DMRelatorios do
  begin
    if (TipoRel.itemindex = 0) then
    begin
      //-------------------setando SubRelatorios como Visibles ou Não----------------//
      SubTrcAnalitico.visible := false;
      SubVdAnalitico.visible := false;

      SubVdSintetico.visible := true;
      SubTrcSintetico.visible := true;

      //----------------------------------vendas-------------------------------------//
      qryVendasPeriodoSint.sql.text := 'select *  from PCD_REL_VENDAS_PERIODO_Sint(:cnpj,:dini,:dfim)';
      qryVendasPeriodoSint.ParamByName('CNPJ').value := dmapp.cnpj;
      qryVendasPeriodoSint.ParamByName('DINI').value := Ini.Date;
      qryVendasPeriodoSint.ParamByName('Dfim').value := Fim.Date;

      {Se houve algum filtro}
      if FiltroRelVenda <> '' then
        qryVendasPeriodoSint.SQL.Add(' where '+FiltroRelVenda);

      {Ordenação do Relatório}
      if rdTipoOrd.ItemIndex = 0 then
        qryVendasPeriodoSint.SQL.Add (' order by DATA , NUM_NF')
      else
        qryVendasPeriodoSint.SQL.Add (' order by NUM_NF, DATA ');

      {Se trocas foram selecionada p/aparecer}
      if (ckTrocas.checked) then
      begin
        //----------------------------------Trocas-------------------------------------//
        qryTrocasPeriodoSint.sql.text := 'select * from PCD_REL_TROCAS_PERIODO_Sint(:cnpj,:dini,:dfim)';
        qryTrocasPeriodoSint.ParamByName('CNPJ').value := dmapp.cnpj;
        qryTrocasPeriodoSint.ParamByName('DINI').value := Ini.Date;
        qryTrocasPeriodoSint.ParamByName('Dfim').value := Fim.Date;
        if FiltroRelTroca <> '' then
          qryTrocasPeriodoSint.SQL.Add(' where '+FiltroRelTroca);

        qryTrocasPeriodoSint.SQL.Add (' order by DATA');
        qryTrocasPeriodoSint.open;
      end
      else
        SubTrcSintetico.visible := false;

      qryVendasPeriodoSint.open;

    end
    else
    begin
      //-------------------setando SubRelatorios como Visibles ou Não----------------//
      SubVdSintetico.visible := false;
      SubTrcSintetico.visible := false;

      SubTrcAnalitico.visible := true;
      SubVdAnalitico.visible := true;

      //----------------------------------vendas-------------------------------------//
      qryVendasPeriodo.sql.text := 'select *  from PCD_REL_VENDAS_PERIODO(:cnpj,:dini,:dfim)';
      qryVendasPeriodo.ParamByName('CNPJ').value := dmapp.cnpj;
      qryVendasPeriodo.ParamByName('DINI').value := Ini.Date;
      qryVendasPeriodo.ParamByName('Dfim').value := Fim.Date;

      {Se houve algum filtro}
      if FiltroRelVenda <> '' then
        qryVendasPeriodo.SQL.Add(' where '+FiltroRelVenda);

      {Ordenação do Relatório}
      if rdTipoOrd.ItemIndex = 0 then
        qryVendasPeriodo.SQL.Add (' order by DATA , NUM_NF')
      else
        qryVendasPeriodo.SQL.Add (' order by NUM_NF, DATA ');

      {Se trocas foram selecionada p/aparecer}
      if (ckTrocas.checked) then
      begin
        //----------------------------------Trocas-------------------------------------//
        qryTrocasPeriodo.sql.text := 'select * from PCD_REL_TROCAS_PERIODO(:cnpj,:dini,:dfim)';
        qryTrocasPeriodo.ParamByName('CNPJ').value := dmapp.cnpj;
        qryTrocasPeriodo.ParamByName('DINI').value := Ini.Date;
        qryTrocasPeriodo.ParamByName('Dfim').value := Fim.Date;
        if FiltroRelTroca <> '' then
          qryTrocasPeriodo.SQL.Add(' where '+FiltroRelTroca);

        qryTrocasPeriodo.SQL.Add (' order by DATA');
        qryTrocasPeriodo.open;
      end
      else
        SubTrcAnalitico.visible := false;

      qryVendasPeriodo.open;
    end;

    rptRelGrafico.print;
    exit;
  end;

  //-----------------------------------------Relatório Gráfico--------------------------------------------//


  DMRelatorios.Fat_VendasVend.FetchAll ;
  If DMRelatorios.Fat_VendasVend.RecordCount = 0 Then
  begin
    lblStatus.Visible := False ;
    ShowMessage('Não há registro a imprimir para o período, verifique !');
    Ini.SetFocus;
    Exit;
  End;

  lblStatus.Visible := False ;
  Anda.Max := DMRelatorios.Fat_VendasVend.RecordCount;
  Anda.Position := 0;
  Anda.Visible  := TRUE ;

  Total_Vendedor:= 0;
  Total_Geral:= 0;

  print.TitulodoRelatorio:='Relatorio de Vendas por Periodo - Usuário: '+cbUser.Text;
  print.Abrir;

  DMRelatorios.Fat_VendasVend.First;
  While Not DMRelatorios.Fat_VendasVend.Eof Do
  Begin
    Data_Caixa := DMRelatorios.Fat_VendasVendDATA_CAIXA.Text ;
    while ( length(data_caixa) <  10 ) do
    begin
      data_caixa := data_caixa + ' ';
    end;

    //desconto
    if DMRelatorios.Fat_VendasVendDESC_ACRES.value < 0   then
    begin
      Str_Jur := formatfloat ('###,##0.00', 0 );
      Str_Desc:= formatfloat ('###,##0.00', DMRelatorios.Fat_VendasVendDESC_ACRES.value );
    end
    else
    begin
      Str_Jur := formatfloat ('###,##0.00', DMRelatorios.Fat_VendasVendDESC_ACRES.value );
      Str_Desc := formatfloat ('###,##0.00', 0 );
    end;

    Print.ImpF(Linha,01,Format('%6s %-8s %-48s %-4s %8s %12s %12s %14s %14s',
    [DMRelatorios.Fat_VendasVendCODIGO.Text,
    data_caixa,
    COPY(DMRelatorios.Fat_VendasVendPESSOA_RAZAO.Text,1,48),
    DMRelatorios.Fat_VendasVendNATUREZA.Text,
    copy(DMRelatorios.Fat_VendasVendNUM_NF.Text,1,6),
    DMRelatorios.Fat_VendasVendTOTAL.Text,
    Str_Jur,
    Str_Desc,
    DMRelatorios.Fat_VendasVendVLRLIQUIDO.Text]),[Comp17]);

    // Analitico
    If (TipoRel.ItemIndex = 1) Then
    Begin
      IncLin;
      DMRelatorios.Fat_VendasItens.Close ;
      DMRelatorios.Fat_VendasItens.ParamByName('CNPJ').Value:= DMApp.Cnpj;
      DMRelatorios.Fat_VendasItens.ParamByName('CODIGO').Value:= DMRelatorios.Fat_VendasVendCODIGO.Value;
      DMRelatorios.Fat_VendasItens.Open;
      DMRelatorios.Fat_VendasItens.First;
      While Not DMRelatorios.Fat_VendasItens.Eof Do
      Begin
        Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
        [DMRelatorios.Fat_VendasItensPRODUTO.Text,
        copy(DMRelatorios.Fat_VendasItensNOME.Text,1,37),
        DMRelatorios.Fat_VendasItensUNIDADE.Text,
        DMRelatorios.Fat_VendasItensSUBUNIDADE.Text,
        DMRelatorios.Fat_VendasItensQUANTIDADE.Text,
        DMRelatorios.Fat_VendasItensPRC_UNITARIO.Text,
        DMRelatorios.Fat_VendasItensDESCONTO_TOTAL.Text,
        FormatFloat('#,##0.00',(DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensPRC_UNITARIO.AsFloat) - (DMRelatorios.Fat_VendasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_VendasItensDESCONTO.AsFloat))]), [Comp17]);


        //TOTALIZA A QUANTIDADE
        TotalQuantidade := TotalQuantidade + DMRelatorios.Fat_VendasItensQUANTIDADE.Value ;
        DMRelatorios.Fat_VendasItens.Next;
        IncLin;

      End;
      Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
      Linha:= Linha + 1;
    End;

    Total_Geral:= Total_Geral + DMRelatorios.Fat_VendasVendVLRLIQUIDO.Value ;
    AVista := AVista + DMRelatorios.Fat_VendasVendAVISTA.Value;
    APrazo := APrazo + DMRelatorios.Fat_VendasVendAPRAZO.Value;

    if DMRelatorios.Fat_VendasVendDESC_ACRES.Value > 0 then
      Juros := Juros + DMRelatorios.Fat_VendasVendDESC_ACRES.Value
    else
      Descontos := Descontos + ( - 1 * DMRelatorios.Fat_VendasVendDESC_ACRES.Value );


    Anda.Position := Anda.Position + 1;
    DMRelatorios.Fat_VendasVend.Next;
    IncLin;
  End;


  DMRelatorios.Fat_VendasVend.Close;
  Anda.Visible:= False;
  If CkTrocas.Checked then
  begin
    IncLin;
    TipoRelatorio := 'Troca' ;
    ListarTrocas ;
  end;

  IncLin;
  Print.ImpF(Linha, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17]);
  IncLin;
  IncLin;
  Print.ImpF(Linha,01,Format('%110s A Vista : %15s',['', FormatFloat('#,##0.00', AVISTA)]), [Comp17]);
  IncLin;
  Print.ImpF(Linha,01,Format('%110s A Prazo : %15s',['', FormatFloat('#,##0.00', APRAZO)]), [Comp17]);
  IncLin;
  Print.ImpF(Linha,01,Format('%110s Desctos : %15s',['', FormatFloat('#,##0.00', DESCONTOS)]), [Comp17]);
  IncLin;
  Print.ImpF(Linha,01,Format('%110s Juros   : %15s',['', FormatFloat('#,##0.00', JUROS)]), [Comp17]);
  IncLin;
  IF TotalQuantidade > 0 THEN
    Print.ImpF(Linha,01,Format('%110s   Qntde : %15s',['', FormatFloat('#,##0.00', TotalQuantidade)]), [Comp17]);

  print.Fechar;
end;

procedure TFRelTrocasPeriodo.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );
     if INI.TEXT = '  /  /    '
     THEN
         INI.DATE := STRTODATE ('01/01/1900');
end;

procedure TFRelTrocasPeriodo.IniEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFRelTrocasPeriodo.ListarTrocas;
Var
    Cod_Cliente: Integer;
    Total_Cliente, Total_Geral: Real;
    STR: String;
begin
  //
  Cod_Cliente := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  DMRelatorios.Fat_TrocasCli.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
     MessageDlg('Informe o Período', MtError, [MbOk],0)
  Else
     Begin
        DMRelatorios.Fat_TrocasCli.ParamByName('DINI').asString:= Ini.Text;
        DMRelatorios.Fat_TrocasCli.ParamByName('DFIM').asString:= Fim.Text;
     End;
  If CmbCliente.Text = '' Then
     DMRelatorios.Fat_TrocasCli.ParamByName('PESSOA').asString:= '0'
  Else
     DMRelatorios.Fat_TrocasCli.ParamByName('PESSOA').Value:= DsCliente.DataSet.fieldByName('PESSOA_FJ').Value;

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_TrocasCli.Open;

  //
  If DMRelatorios.Fat_TrocasCli.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       //
       DMRelatorios.Fat_TrocasCli.Close;
       //
       Exit ;
  End;

  CabecalhoTrocas ;

  //
  Total_Cliente:= 0;
  Total_Geral  := 0;
  Cod_Cliente  := 0;
  //
  DMRelatorios.Fat_TrocasCli.First;
  While Not DMRelatorios.Fat_TrocasCli.Eof Do
  Begin
       //
       Print.ImpF(Linha, 01, DMRelatorios.Fat_TrocasCliCODIGO.Text,[Comp17]);
       Print.ImpF(Linha, 04, DmRelatorios.Fat_TrocasCliPESSOA_FJ.TEXT,[Comp17]);
       Print.ImpF(Linha, 09, copy(DmRelatorios.Fat_TrocasCliPESSOA_RAZAO.Text,1,35),[Comp17]);
       Print.ImpF(Linha, 30, copy(DMRelatorios.Fat_TrocasCliNOME_VENDEDOR.Text,1,15),[Comp17]);
       Print.ImpF(Linha, 38, DMRelatorios.Fat_TrocasCliDATA.Text,[Comp17]);

       Str := formatfloat('###,##0.00', DMRelatorios.Fat_TrocasCliTOTAL.Value);
       While Length(Str) <= 10 do
       begin
            Str := ' ' + Str;
       end;

       Print.ImpF(Linha, 46, Str,[Comp17]);

       Str := formatfloat('###,##0.00', DMRelatorios.Fat_TrocasCliDESC_ACRESC.Value);
       While Length(Str) <= 10 do
       begin
            Str := ' ' + Str;
       end;

       Print.ImpF(Linha, 53, Str,[Comp17]);

       Str := formatfloat('###,##0.00', DMRelatorios.Fat_TrocasCliTOTAL_2.Value);
       While Length(Str) <= 10 do
       begin
            Str := ' ' + Str;
       end;

       Print.ImpF(Linha, 60, Str,[Comp17]);

       Str := formatfloat('###,##0.00', DMRelatorios.Fat_TrocasCliDESC_ACRESC_2.Value );
       While Length(Str) <= 10 do
       begin
            Str := ' ' + Str;
       end;

       Print.ImpF(Linha, 67, Str,[Comp17]);

       Str := formatfloat('###,##0.00', DMRelatorios.Fat_TrocasCliLIQUIDO.Value );
       While Length(Str) <= 10 do
       begin
            Str := ' ' + Str;
       end;

       Print.ImpF(Linha, 74, Str ,[Comp17]);

       If (TipoRel.ItemIndex = 1)
       Then Begin
            IncLin;
            DMRelatorios.Fat_TrocasItens.Close ;
            DMRelatorios.Fat_TrocasItens.ParamByName('CNPJ').Value   := DMApp.Cnpj;
            DMRelatorios.Fat_TrocasItens.ParamByName('CODIGO').Value := DMRelatorios.Fat_TrocasCliCODIGO.Value;
            DMRelatorios.Fat_TrocasItens.Open;
            DMRelatorios.Fat_TrocasItens.First;
            While Not DMRelatorios.Fat_TrocasItens.Eof Do
                     Begin
                       Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                               [DMRelatorios.Fat_TrocasItensPRODUTO.Text,
                                copy(DMRelatorios.Fat_TrocasItensNOME_PRODUTO.Text,1,37),
                                DMRelatorios.Fat_TrocasItensUNIDADE.Text,
                                DMRelatorios.Fat_TrocasItensSUBUNIDADE.Text,
                                DMRelatorios.Fat_TrocasItensQUANTIDADE.Text,
                                DMRelatorios.Fat_TrocasItensPRC_UNITARIO.Text,
                                DMRelatorios.Fat_TrocasItensDESCONTO.Text,
                                FormatFloat('#,##0.00',(DMRelatorios.Fat_TrocasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_TrocasItensPRC_UNITARIO.AsFloat) - DMRelatorios.Fat_TrocasItensDESCONTO.AsFloat)]), [Comp17]);
                       IncLin;
                       DMRelatorios.Fat_TrocasItens.Next;
                     End;
          End;

          Total_Geral:= Total_Geral     + DMRelatorios.Fat_TrocasCliLIQUIDO.Value;
          Total_Cliente:= Total_Cliente + DMRelatorios.Fat_TrocasCliLIQUIDO.Value;

          AVista := AVista + DMRelatorios.Fat_TrocasCliAVISTA.Value;
          APrazo := APrazo + DMRelatorios.Fat_TrocasCliAPRAZO.Value;

          if DMRelatorios.Fat_VendasVendDESC_ACRES.Value > 0
          then begin
               Juros := Juros + DMRelatorios.Fat_VendasVendDESC_ACRES.Value ;
          end
          else begin
               Descontos := Descontos + ( - 1 * DMRelatorios.Fat_VendasVendDESC_ACRES.Value );
          end;

          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_TrocasCli.Next;
          //
          IncLin;
          //
        End;
  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
  //
  DMRelatorios.Fat_TrocasCli.Close;

  DMRelatorios.Fat_VendasItens.Close;
  //
  Anda.Visible:= False;
end;

procedure TFRelTrocasPeriodo.IncLin;
begin
     Linha := Linha + 1 ;

     If Linha > 62
     then
         Print.Novapagina ;
end;

procedure TFRelTrocasPeriodo.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACorFundo ( Sender );

     if FIM.TEXT = '  /  /    '
     THEN
         FIM.DATE := STRTODATE ('31/12/9999');

end;

procedure TFRelTrocasPeriodo.TipoRelClick(Sender: TObject);
begin
 { if TipoRel.ItemIndex = 1 then
    rdTipoOrd.enabled := false
  else
    rdTipoOrd.enabled := true;}
end;

end.
