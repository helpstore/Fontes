unit Baixa_Receber_Multiplos_Parc_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
     cxPropertiesStore, Variants, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxLabel;

type
  TFrmBaixaReceberSelecaoParc = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
    Actions: TActionList;
    Bevel1: TBevel;
    Label1: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    ActLookup: TAction;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Bevel2: TBevel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    ActBaixar: TAction;
    Label10: TcxLabel;
    Label13: TcxLabel;
    Label3: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    Label9: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    DATAFINAL: TdxDateEdit;
    Label11: TcxLabel;
    LBLCLIENTE: TcxLabel;
    EdTipo: TdxPickEdit;
    Label12: TcxLabel;
    BtnOk: TcxButton;
    GRID: TdxDBGrid;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    dxDBEdit1: TdxDBEdit;
    dxDBEdit4: TdxDBEdit;
    EdDocumento: TdxDBEdit;
    dxDBEdit7: TdxDBEdit;
    dxDBEdit6: TdxDBEdit;
    EdParcela: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    Label14: TcxLabel;
    Label15: TcxLabel;
    Label16: TcxLabel;
    LBLNUMARQ: TcxLabel;
    LBLSOMA: TcxLabel;
    ActSelecionados: TAction;
    Bevel3: TBevel;
    ActSeleciona: TAction;
    Label5: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label17: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    GRIDPARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDTIPO: TdxDBGridColumn;
    LblCaixa: TcxLabel;
    ActSelecionaTodos: TAction;
    GRIDJUROSPARC: TdxDBGridColumn;
    Label18: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label19: TcxLabel;
    dxDBEdit9: TdxDBEdit;
    RxLabel1: TcxLabel;
    Panel4: TPanel;
    BtnRecebimetos: TcxButton;
    RzBitBtn4: TcxButton;
    RzBitBtn1: TcxButton;
    RzBitBtn5: TcxButton;
    Label20: TcxLabel;
    LblJuros: TcxLabel;
    ActBaixarParcial: TAction;
    GRIDJUROSCALC: TdxDBGridColumn;
    GRIDTOTAL_NOMINAL: TdxDBGridColumn;
    GRIDCOBRADOR: TdxDBGridColumn;
    GRIDATRASO: TdxDBGridColumn;
    ActDetalhes: TAction;
    OpDetalhes: TdxBarButton;
    GRIDARQ_MORTO: TdxDBGridMaskColumn;
    GRIDSALDO_DESCTO: TdxDBGridMaskColumn;
    stgFrmFrmBaixaReceberSelecaoParc: TcxPropertiesStore;
    GRIDCOD_INDEXADOR: TdxDBGridMaskColumn;
    GRIDIDX_DATABASE: TdxDBGridDateColumn;
    GRIDIDX_COTACAO: TdxDBGridMaskColumn;
    GRIDIDX_QTDE: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActBaixarExecute(Sender: TObject);
    procedure EdClienteInicialButtonClick(Sender: TObject;  AbsoluteIndex: Integer);
    procedure EdClienteInicialExit(Sender: TObject);
    procedure EdTipoKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
    procedure DATAINICIALExit(Sender: TObject);
    procedure DATAFINALExit(Sender: TObject);
    procedure BtnOkClick(Sender: TObject);
    procedure ActSelecionadosExecute(Sender: TObject);
    procedure ActSelecionaExecute(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
    procedure BtnOkExit(Sender: TObject);
    procedure GRIDCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure ActSelecionaTodosExecute(Sender: TObject);
    procedure ActBaixarParcialExecute(Sender: TObject);
    procedure ActDetalhesExecute(Sender: TObject);
  private
    { Private declarations }
    SqlOriginal : string;
    procedure Seleciona;
    Procedure Soma_Receber(Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure AcertaBaixa(codigo:integer);
    procedure DesmarcaSelecionados;
  public
    { Public declarations }
    SOMATOTAL  : REAL    ;
    QUANTIDADE : INTEGER ;
    JUROS      : REAL    ;
  end;

var
  FrmBaixaReceberSelecaoParc: TFrmBaixaReceberSelecaoParc;
implementation

uses
     Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Dados_Baixa_Form,
     Financeiro_Dm,
     Localizar_Cliente,
     Procedures_DM,
     Dados_Baixa_Receber_Multiplos_Form,
     Dados_Baixa_Loja_Form,
     Dados_Baixa_Parcial_Form,
     Cartao_Venda_Form,
     Vendas_Dm, SelVendasPdv_Form, Financeiro_Dm2, Vendas_DM2;


{$R *.DFM}

procedure TFrmBaixaReceberSelecaoParc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Sair da Tela', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          Datasource.Dataset.Close;

          DmFinanceiro.SelPessoas.Close ;

          If Frm_Localizar_Cliente.Tag = 0
          then begin
               Frm_Localizar_Cliente.free ;
               Frm_Localizar_Cliente := Nil ;
          end
          else begin
               Frm_Localizar_Cliente.Tag := Frm_Localizar_Cliente.Tag - 1;
          end;

          If ((Not DmaPP.CaixaAtivo) and (owner <> FrmSelVendasPdv))
          then begin
               DmApp.UsuarioCaixa := 0;
               DmApp.ContaCaixa   := 0;
          end;

          dmfinanceiro.VerReceberADM.Close;
          dmfinanceiro.VerReceberADM.SQL.clear;
          dmfinanceiro.VerReceberADM.SQL.text := SqlOriginal;
          DesmarcaSelecionados;
          //
          Action := caFree;
          FrmBaixaReceberSelecaoParc := Nil;
     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmBaixaReceberSelecaoParc.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );

  SqlOriginal :=  dmFinanceiro.VerReceberADM.sql.text;

  EdTipo.EditText := 'Vencimento' ;
  LblCaixa.Caption := DateToStr(DmApp.DataCaixa);

  If Frm_Localizar_Cliente = Nil
  then begin
       Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);
  end
  else begin
       Frm_Localizar_Cliente.tag := Frm_Localizar_Cliente.tag + 1;
  end;

  //
  Try

    If Not(DmFinanceiro.SelPessoas.Active) Then
       DmFinanceiro.SelPessoas.Open;

  Except
    On E:EDataBaseError Do
       Begin
         MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
         Exit;
       End
    Else
       Begin
         MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
         Exit;
       End;
  End;
  //
  Datasource.AutoEdit := false;
end;

procedure TFrmBaixaReceberSelecaoParc.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmBaixaReceberSelecaoParc.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaReceberSelecaoParc.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmBaixaReceberSelecaoParc.ActFecharExecute(Sender: TObject);
begin
  If FrmBaixaReceberSelecaoParc.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmBaixaReceberSelecaoParc.ActBaixarExecute(Sender: TObject);
Var
   Docto, Hist: String;
   Diferenca,Juros, SaldoDesc: Real;
   Recebimento : Integer;
begin
  if SomaTotal > 0 then
  begin

    //------------------------------Selecionando dados------------------------------------//
    Seleciona;
    Soma_Receber(EdTipo.text, DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)));
    Juros := 0;
    With DmFinanceiro DO
    BEGIN
      VerReceberADM.DisableControls ;
      Docto := '' ;

      Hist := '';

      SaldoDesc := 0;
      VerReceberADM.First ;
      While Not VerReceberADM.Eof do
      begin
        if VerReceberADMSELECIONADO.AsString = 'S' then
        begin
          Juros := Juros + VerReceberADMJuros_Parcial.Value ;
          Docto := Docto + '/' + VerReceberADMDOCTO.value ;
          Hist  := Hist  + '/' + VerReceberADMhistorico.value ;
          SaldoDesc := SaldoDesc +  VerReceberADMSALDO_DESCTO.value;
        end;

        VerReceberADM.next;
      end;

      VerReceberADM.EnableControls  ;
    END;

    Application.CreateForm(TFrmDadosBaixaReceberSelecao, FrmDadosBaixaReceberSelecao);

    FrmDadosBaixaReceberSelecao.Valor.Value       := ARREDONDA(SomaTotal-juros,2) ;
    FrmDadosBaixaReceberSelecao.TOTAL.Value       := ARREDONDA(SomaTotal,2) ;
    FrmDadosBaixaReceberSelecao.DINHEIRO.Value    := ARREDONDA(SomaTotal,2) ;
    FrmDadosBaixaReceberSelecao.Valor.ReadOnly    := true  ;
    FrmDadosBaixaReceberSelecao.edtDescto.text := 'R$ '+formatFloat('###,##0.00',SaldoDesc);

    if ( juros > 0 ) then
      FrmDadosBaixaReceberSelecao.Juros.Value     := ARREDONDA(Juros,2)
    else
      FrmDadosBaixaReceberSelecao.desconto.Value  := ARREDONDA(-1 * Juros,2) ;


    FrmDadosBaixaReceberSelecao.Desconto.Enabled  := true ;

    FrmDadosBaixaReceberSelecao.Data.Date         := DmApp.DataCaixa ;
    FrmDadosBaixaReceberSelecao.LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE) ;
    FrmDadosBaixaReceberSelecao.lblnome.caption   := LBLCLIENTE.caption   ;
    FrmDadosBaixaReceberSelecao.HISTORICO.Text    := COPY(LBLCLIENTE.Caption,1,20) + ' REF RECTO ' + DmFinanceiro.VerReceberADMHISTORICO.Value ;

    IF FrmDadosBaixaReceberSelecao.ShowModal = MROK  THEN
    begin
      With DmFinanceiro do
      begin
        VERRECEBERADM.DisableControls ;

        //descobrindo qnto p/cento de diferença no valor de juros
        if (Juros > 0) then
        begin
          Diferenca := FrmDadosBaixaReceberSelecao.Juros.Value - ARREDONDA(Juros,2);
          Diferenca := (Diferenca * 100)/ARREDONDA(Juros,2);//aqui tenho a porcentagem de auento
        end
        else
          juros := 0;

        if FrmDadosBaixaReceberSelecao.cmbConta.Text = '' then
          Recebimento := DMAPP.CONTACAIXA
        else
          Recebimento := FrmDadosBaixaReceberSelecao.cmbConta.LookupKeyValue;

        dmfinanceiro2.Baixa_Receber_Selecao_Loja1(
        {Tipo: ring;}          EdTipo.Text,
        {Cliente: Integer;}     STRTOINT(trim(EdClienteInicial.Text)),
        {Historico: String;}    FrmDadosBaixaReceberSelecao.Historico.Text,
        {Data_Baixa: TDateTime} FrmDadosBaixaReceberSelecao.Data.Date,
        {Data_Ini: TDateTime;}  DATAINICIAL.Date ,
        {Data_Fim: TDateTime;}  DATAFINAL.Date,
        {Usuario: Integer;}     DmApp.UsuarioCaixa,
        {Dinheiro,}             FrmDadosBaixaReceberSelecao.Dinheiro.value,
        {Cartao}                FrmDadosBaixaReceberSelecao.Cheque.Value,
        {Cartao}                FrmDadosBaixaReceberSelecao.Cartao.Value,
        {Conta:}                DmApp.ContaCaixa,
        {Turno}                 DmApp.turnoCaixa,
        {Banco}                 Recebimento,
        {Desconto}              FrmDadosBaixaReceberSelecao.Desconto.Value,
        {Juros }                FrmDadosBaixaReceberSelecao.Juros.Value,
                                Diferenca,
                                Docto,
                                FrmDadosBaixaReceberSelecao.TROCO.Value);



        VerReceberADM.Close;
        VerReceberADM.Open ;

        FrmDadosBaixaReceberSelecao.DsConta.DataSet.Close ;
        VerReceberADM.EnableControls ;
      end;
    end;

    FrmDadosBaixaReceberSelecao.Free ;
    FrmDadosBaixaReceberSelecao := Nil ;
  end
  else
    Application.Messagebox('Não existem valores selecionados','Aviso',mb_ok+mb_iconerror);

end;

procedure TFrmBaixaReceberSelecaoParc.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoas ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;
  Except
  end;
end;

procedure TFrmBaixaReceberSelecaoParc.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
     If ( EdClienteInicial.Text ) <> ''
     then begin
          if (DmFinanceiro.SelPessoas.state = dsInactive) then
            DmFinanceiro.SelPessoas.Open;
             
          if DmFinanceiro.SelPessoas.locate ( 'CODIGO', trim(EdClienteInicial.Text), [] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelPessoasNOME_RAZAO.Value ;
          end
          else begin
               messageDlg('Cliente Não Cadastrado!',MtInformation,[MbOk],0);
               EdClienteInicial.SetFocus ;
          end;
     end
     ELSE BEGIN
          LBLCLIENTE.Caption := '' ;
     END;
end;

procedure TFrmBaixaReceberSelecaoParc.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaReceberSelecaoParc.DATAINICIALExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
     TRY
        IF ( DATAINICIAL.TEXT <> '  /  /    ' ) AND ( DATAINICIAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAINICIAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAINICIAL.SETFOCUS ;
     END;
end;

procedure TFrmBaixaReceberSelecaoParc.DATAFINALExit(Sender: TObject);
VAR
   DATA: TDATETIME;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
     TRY
        IF ( DATAFINAL.TEXT <> '  /  /    ' ) AND ( DATAFINAL.TEXT <> '  /  /  ' )
        THEN BEGIN
             DATA := STRTODATE ( DATAFINAL.TEXT ) ;
        END;
     EXCEPT
           MessageDlg(' Data Inválida!',MtError,[MbOk],0);
           DATAFINAL.SETFOCUS ;
     END;
end;

procedure TFrmBaixaReceberSelecaoParc.Seleciona;
var
  sfiltro, sOrder : string;
  SOMA_CHEQUES : Real;
begin
     with DmFinanceiro do
     begin
       case edTipo.ItemIndex of
         0 : begin
               sfiltro := ' where dt_lancto between :dini and :dfim ';
               sOrder :=  ' order by  dt_lancto, DOCTO ';
             end;
         1 : begin
               sFiltro := ' where dt_vencto between :dini and :dfim ';
               sOrder :=  ' order by dt_vencto , DOCTO ';
             end;
       end;

       sfiltro :=  sfiltro + ' and pessoa_fj = '+trim(EdClienteInicial.Text);

       VerReceberADM.Close;
       VerReceberADM.SQL.text := SqlOriginal + sFiltro + sOrder;
       VerReceberADM.ParamByName('dini').asDate := DATAINICIAL.date;
       VerReceberADM.ParamByname('dfim').asDate := DATAFINAL.date;
       VerReceberADM.Open ;

       VerReceberADM2.Close;
       VerReceberADM2.SQL.text := SqlOriginal + sFiltro + ' and selecionado = ''S'' '+ sOrder;
       VerReceberADM2.ParamByName('dini').asDate := DATAINICIAL.date;
       VerReceberADM2.ParamByname('dfim').asDate := DATAFINAL.date;
       VerReceberADM2.Open ;

       SOMA_CHEQUES := DmApp.Soma_Cheques_Devolvidos (StrToInt(trim(EdClienteInicial.Text)));
       if (SOMA_CHEQUES > 0) then
         Application.Messagebox('Atenção! Cliente possui cheques devolvidos. Verifique a tela de pendências','Aviso', mb_iconerror + mb_ok);
     end;
END;

procedure TFrmBaixaReceberSelecaoParc.BtnOkClick(Sender: TObject);
begin
     DesmarcaSelecionados;
     IF EdTipo.TEXT = '' THEN
     BEGIN
       MessageDlg('Digite o Tipo de Seleção!',MtInformation,[MbOk],0);
       EXIT;
     END;

     IF (trim(EdClienteInicial.text) = '') THEN
     BEGIN
       MessageDlg('Digite o Cliente!',MtInformation,[MbOk],0);
       EdClienteInicial.SetFocus ;
       EXIT;
     END;

     IF ((DATAINICIAL.Text = '  /  /  ' )OR(DATAINICIAL.Text = '  /  /    ' )) THEN
       DATAINICIAL.Date := strtodate('01/01/1900') ;


     IF ((DATAFINAL.Text = '  /  /  ' )OR(DATAFINAL.Text = '  /  /    ' )) THEN
       DATAFINAL.Date := strtodate('31/12/9999') ;



     Seleciona;
     GRID.SETFOCUS ;
end;

procedure TFrmBaixaReceberSelecaoParc.ActSelecionadosExecute(Sender: TObject);
begin
     BtnOk.OnClick (Sender) ;
end;

Procedure TFrmBaixaReceberSelecaoParc.Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction  then
            DmaPP.TransactionProc.StartTransaction ;

        DMProcs.Soma_SelecionadorecLoja.StoredProcName := upperCase(trim('SOMA_RECEBER_LOJA_'+ TIPO));
        //
        DMProcs.Soma_SelecionadorecLoja.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
        DMProcs.Soma_SelecionadorecLoja.ParamByName('DINI').asDate        := DIni       ;
        DMProcs.Soma_SelecionadorecLoja.ParamByName('DFIM').asDate        := DFim       ;
        DMProcs.Soma_SelecionadorecLoja.ParamByName('PESSOA').asInteger   := Pessoa     ;

        DMProcs.Soma_SelecionadorecLoja.ExecProc;

         //esse procedimento desconsidera valores de multa, tornando-os inconsistentes
         //------------------------------------------------------------------------//
        {SOMATOTAL  := DMProcs.Soma_SelecionadorecLoja.ParamByName('SOMA').asFloat;
        JUROS      := DMProcs.Soma_SelecionadorecLoja.ParamByName('JUROS').asFloat;// + JUROS  ;}
        //------------------------------------------------------------------------//

        somatotal := 0;
        Juros := 0;
        QUANTIDADE := DMProcs.Soma_SelecionadorecLoja.ParamByName('QUANTIDADE').asInteger;

        with dmFinanceiro do
        begin
          VerReceberAdm.first;
          while not VerReceberAdm.eof do
          begin
            if VerReceberADMSELECIONADO.value = 'S' then
            begin
              SOMATOTAL := SOMATOTAL + VerReceberAdmTotal_Nominal.value;
             // if juros = 0 then
             //juros := juros + (VerReceberADMMulta.value + VerReceberADMJUROS_PARCIAL.value);
              juros := juros + VerReceberADMJuros_Calculadors.value;
            end;
            VerReceberAdm.next;
          end;
          VerReceberAdm.first ;
        end;

        LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
        LBLSOMA.Caption   := FORMATFLOAT('###,###,##0.00', SOMATOTAL );
        LblJuros.Caption  := FORMATFLOAT('###,###,##0.00', JUROS );

        //
{       DMProcs.Free;
        DMProcs := Nil;}

        DmaPP.TransactionProc.Commit ;
     except
        DmaPP.TransactionProc.Rollback ;
        Abort ;
     end;
end;


procedure TFrmBaixaReceberSelecaoParc.ActSelecionaExecute(Sender: TObject);
Var
   Book: TbookMark ;
   VlrConta, Juros_Conta : Real;
   Data : Tdate;
begin
     Juros := 0;
     with DmFinanceiro do
     begin
          IF DataSource.DataSet.FieldByName ('SELECIONADO').AsString <> 'S' THEN
          BEGIN
               Application.CreateForm(TFrmDadosBaixaLoja, FrmDadosBaixaLoja);

               FrmDadosBaixaLoja.EdNome.text      := DataSource.DataSet.FieldByName ('NOME').AsString ;
               FrmDadosBaixaLoja.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO').AsString ;
               FrmDadosBaixaLoja.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
               FrmDadosBaixaLoja.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA').AsString ;

               FrmDadosBaixaLoja.Valor.Value      := DmFinanceiro.VerReceberADMTOTAL.Value;

               if VerReceberADMDATA_ULT_BAIXA.value > VerReceberADMDT_VENCTO.Value  then
                  Data := VerReceberADMDATA_ULT_BAIXA.value
               else
                  Data := VerReceberADMDT_VENCTO.Value;

               //Não posso simplesmente colocar valor total, pois valor total já contem a multa embutida, e a func calculajuros caulcula novamente
               VlrConta := VerReceberADMValor.Value - VerReceberADMVlr_Parcial.Value - VerReceberADMDescontos.VALUE;
               Juros_Conta := CALCULAJUROS(Data, DmaPP.Data_Servidor, VlrConta, 0 );
               FrmDadosBaixaLoja.Juros_Calculados := Juros_Conta;


               FrmDadosBaixaLoja.Pago.Value := FrmDadosBaixaLoja.Valor.Value + FrmDadosBaixaLoja.Juros.Value;
               if (FrmDadosBaixaLoja.showmodal = mrOk)
               Then Begin
                    dmfinanceiro2.Seleciona_Receber_Loja (VerReceberADMCODIGO.VALUE, VerReceberADMANO.VALUE, VerReceberADMSELECIONADO.VALUE, FrmDadosBaixaLoja.pago.value, FrmDadosBaixaLoja.JUROS.value );

                    Book := VerReceberADM.GetBookmark ;

                    VerReceberADM.Close;
                    VerReceberADM.Open ;

                    IF EdTipo.Text = 'Lancamento'
                    THEN BEGIN
                         //SOMA OS VALORES
                         FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'LANCAMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );
                    END
                    ELSE BEGIN
                         //SOMA OS VALORES
                         FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)) );
                    END;

                    VerReceberADM.GotoBookmark ( Book );
                    VerReceberADM.FreeBookmark ( Book );
               end;

               FrmDadosBaixaLoja.Free   ;
               FrmDadosBaixaLoja := Nil ;
          END
          ELSE BEGIN
               dmfinanceiro2.Seleciona_Receber_Loja ( VerReceberADMCODIGO.VALUE, VerReceberADMANO.VALUE, VerReceberADMSELECIONADO.VALUE, 0, 0 );

               Book := VerReceberADM.GetBookmark ;

               VerReceberADM.Close;
               VerReceberADM.Open ;


               IF EdTipo.Text = 'Lancamento'
               THEN BEGIN
                    //SOMA OS VALORES
                    FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'LANCAMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)));
               END
               ELSE BEGIN
                    //SOMA OS VALORES
                    FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)));
               END;

               VerReceberADM.GotoBookmark ( Book );
               VerReceberADM.FreeBookmark ( Book );
          END;
     end;
end;

procedure TFrmBaixaReceberSelecaoParc.EdTipoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmBaixaReceberSelecaoParc.EdTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmBaixaReceberSelecaoParc.BtnOkExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmBaixaReceberSelecaoParc.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
   Aux : string;
begin
     if ( not ASelected  ) then
     begin
       Aux := trim(ANode.Values[GRIDarq_morto.Index]);

       IF ( Aux = 'S' ) THEN
         AColor := clRed
       else
       begin
          Value := ANode.Values[GRIDVENCIMENTO.Index];

          if not VarIsNull(Value) then
          begin
               if Value < Date then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else
               AFont.Color := clBlack;
       end;
     end;
end;

procedure TFrmBaixaReceberSelecaoParc.ActSelecionaTodosExecute( Sender: TObject);
Var
   Book: TbookMark;
   vJuros :Real;
   vPago, VlrConta :Real;
   Data : TDate;
begin
  Juros := 0;
  with DmFinanceiro do
  begin
    VerReceberADM.DisableControls;
    VerReceberADM.First;
    vJuros := 0;
    while not VerReceberADM.Eof do
    begin
      with DmFinanceiro do
      begin
        if VerReceberADMSELECIONADO.Value <> 'S' then
        begin

          if VerReceberADMDATA_ULT_BAIXA.value > VerReceberADMDT_VENCTO.Value  then
            Data := VerReceberADMDATA_ULT_BAIXA.value
          else
            Data := VerReceberADMDT_VENCTO.Value;

          //Não posso simplesmente colocar valor total, pois valor total já contem a multa embutida, e a func calculajuros caulcula novamente
          VlrConta := VerReceberADMValor.Value - VerReceberADMVlr_Parcial.Value - VerReceberADMDescontos.VALUE;
          if VlrConta > 0 then
            vJuros := CALCULAJUROS( Data, DmaPP.Data_Servidor, VlrConta, 0 );
          vPago := VerReceberADMTotal.Value;
          dmfinanceiro2.Seleciona_Receber_Loja(VerReceberADMCODIGO.VALUE, VerReceberADMANO.VALUE, VerReceberADMSELECIONADO.VALUE, VerReceberADMTotal.Value,vJuros );
        end;
      end;
      VerReceberADM.Next;
    end;
    VerReceberADM.Close;
    VerReceberADM.Open;
    if EdTipo.Text = 'Lancamento' then
       FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'LANCAMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)))
    else
       FrmBaixaReceberSelecaoParc.SOMA_RECEBER ( 'VENCIMENTO', DATAINICIAL.Date , DATAFINAL.Date, STRTOINT(trim(EdClienteInicial.Text)));
    VerReceberADM.EnableControls;
  end;
end;

procedure TFrmBaixaReceberSelecaoParc.ActBaixarParcialExecute( Sender: TObject);
Var
   Cpf_Cnpj: String;
   Book: TbookMark ;
   codigo, Count, Banco : integer;
   valor_baixa, Juros_Inicial, Aux1, VlrTotal, VlrJuros, droga  : real;
begin
  with dmfinanceiro do
  begin
    if Not DmFinanceiro.VerReceberADMCodigo.Isnull    then begin
      Application.CreateForm(TFrmDadosBaixaParcial, FrmDadosBaixaParcial);

    VlrJuros := 0;
    VlrTotal := 0;
    Count := 0;

    VerReceberADM.first;
    while not VerReceberADM.eof do
    begin
      //---irá pegar todos os registros que estiverem selecionados
      if VerReceberADMSELECIONADO.AsString = 'S' then
      begin
        VlrTotal := VlrTotal + VerReceberADMTotal_Nominal.asfloat;
        VlrJuros := VlrJuros + VerReceberADMJuros_Parcial.asfloat;
        Inc(Count);
      end;
      VerReceberADM.next;
    end;

    //---se nenhuma conta foi selecionada
    if Count <= 0 then
    begin
      Application.MessageBox('Selecione pelo menos uma conta para ser baixada','Aviso',mb_ok + MB_ICONINFORMATION);
      exit;
    end;

    DMProcs.Soma_SelecionadorecLoja.ParamByName('CNPJ'  ).asString   := DmApp.Cnpj ;
    DMProcs.Soma_SelecionadorecLoja.ParamByName('DINI'  ).asDate     := DataInicial.date;
    DMProcs.Soma_SelecionadorecLoja.ParamByName('DFIM'  ).asDate     := DataFinal.Date;
    DMProcs.Soma_SelecionadorecLoja.ParamByName('PESSOA').asInteger  := strtoint(trim(edClienteInicial.text));
    DMProcs.Soma_SelecionadorecLoja.ExecProc;

    FrmDadosBaixaParcial.Desconto.enabled := false;
    FrmDadosBaixaParcial.Total.Value      := VlrTotal;
    FrmDadosBaixaParcial.Juros.value := VlrJuros;
    FrmDadosBaixaParcial.Juros_Calculados := VlrJuros;
    Juros_Inicial := arredonda(FrmDadosBaixaParcial.Juros.value,2) ; ;
    FrmDadosBaixaParcial.Valor.Value      := FrmDadosBaixaParcial.Total.Value - FrmDadosBaixaParcial.Juros_Calculados;
    FrmDadosBaixaParcial.Valor.ReadOnly   := true ;

    FrmDadosBaixaParcial.EdNome.text      := DataSource.DataSet.FieldByName ('NOME').AsString ;
    FrmDadosBaixaParcial.EdDocumento.text := DataSource.DataSet.FieldByName ('DOCTO').AsString ;
    FrmDadosBaixaParcial.edvencto.text    := DataSource.DataSet.FieldByName ('DT_VENCTO').AsString ;
    FrmDadosBaixaParcial.EdPARCELA.text   := DataSource.DataSet.FieldByName ('PARCELA').AsString ;
    FrmDadosBaixaParcial.Data.Date        := DmApp.DataCaixa ;
    FrmDadosBaixaParcial.Data.Enabled     := False ;

    //---se existe mais de um selecionado entao é uma baixa agrupada sem numero de docmento etc...
    if count > 1 then
    begin
      frmDadosBaixaParcial.pnlAgrupada.Visible := true;
      frmDadosBaixaParcial.Label9.Visible := false;
      frmDadosBaixaParcial.Label3.Visible := false;
    end
    else
    begin
      frmDadosBaixaParcial.pnlAgrupada.Visible := false;
      frmDadosBaixaParcial.Label9.Visible := true;
      frmDadosBaixaParcial.Label3.Visible := true;
    end;

    IF FrmDadosBaixaParcial.ShowModal = MROK THEN
    BEGIN
      If FrmDadosBaixaParcial.BAIXA.Value >= FrmDadosBaixaParcial.TOTAL.Value then
        MessageDlg('O Valor da Baixa Parcial não pode exceder o valor da Conta, Verifique!',MtError,[MbOk],0)
      else
      begin
        valor_baixa := FrmDadosBaixaParcial.baixa.value;// - FrmDadosBaixaParcial.juros.value;

        //houve modificações nos valores de juros
        if (juros_inicial <> FrmDadosBaixaParcial.Juros.value) then
        begin
          //houve desconto no valor de juros
          if (Juros_inicial > FrmDadosBaixaParcial.Juros.value) then
          begin
            Aux1 := (Juros_inicial - FrmDadosBaixaParcial.Juros.value);
            //descobrindo qnto porcento representa o desconto dos juros
            Aux1 := (Aux1 * 100)/Juros_inicial;
            AcertaJuros.parambyname('CNPJ').value := dmApp.cnpj;
            AcertaJuros.parambyname('CLIENTE').value := STRTOINT(trim(EdClienteInicial.Text));
            AcertaJuros.parambyname('PCT').value := (Aux1 * -1); //para haver um desconto no total de juros
            AcertaJuros.ExecQuery;
            AcertaJuros.Transaction.CommitRetaining;
          end
          else
          begin
            //houve um acréscimo no valor de juros
            Aux1 := (FrmDadosBaixaParcial.Juros.value - Juros_inicial );
            //descobrindo a porcentagem de acréscimo nos valores
            Aux1 := (Aux1 * 100)/Juros_inicial;
            AcertaJuros.parambyname('CNPJ').value := dmApp.cnpj;
            AcertaJuros.parambyname('CLIENTE').value := STRTOINT(trim(EdClienteInicial.Text));
            AcertaJuros.parambyname('PCT').value := Aux1;
            AcertaJuros.ExecQuery;
            AcertaJuros.Transaction.CommitRetaining;
          end
        end;

        {Baixa de contas que não tem banco vinculado}
        If FrmDadosBaixaParcial.cmbConta.text = '' then
          banco := dmapp.contacaixa
        else
          banco := FrmDadosBaixaParcial.cmbConta.LookupKeyValue;



        dmfinanceiro2.Baixa_Receber_Selecao_ADM('Vencimento',                         //Tipo
                                  STRTOINT(trim(EdClienteInicial.Text)),//cliente
                                  FrmDadosBaixaParcial.Historico.Text,  //Histórico
                                  STRTODATE('01/01/1900'),              //Data Ini
                                  STRTODATE('31/12/9999'),              //Data Fim
                                  valor_baixa,                          //Vlr. Baixa
                                  0,                                    //Juros
                                  FrmDadosBaixaParcial.Desconto.value,  //Descontos
                                  DmApp.UsuarioCaixa,                   //Usuário
                                  FrmDadosBaixaParcial.Dinheiro.Value,                          //Dinheiro
                                  FrmDadosBaixaParcial.Cheque.Value,    //Cheque
                                  FrmDadosBaixaParcial.Cartao.value,  //Cartão
                                  DmApp.ContaCaixa,                     //Conta
                                  DmApp.turnoCaixa,                     //Turno
                                  banco,
                                  dmFinanceiro.VerReceberADMNOME.asString);


      end;

      VerReceberADM.Close;
      VerReceberADM.Open ;

      //retira o calculo desnecssario de juros
      VerReceberADM.first;
      while not VerReceberADM.eof do
      begin
        AcertaBaixa(dmfinanceiro.VerReceberADMCodigo.asinteger);
        VerReceberADM.next;
      end;

      Book := VerReceberADM.GetBookmark ;
      Seleciona ;

    END;
  end;//end with

   FrmDadosBaixaParcial.Free ;
   FrmDadosBaixaParcial := Nil ;
  end;
end;

procedure TFrmBaixaReceberSelecaoParc.AcertaBaixa(Codigo:integer);
begin
  // procedimento zera os valores de juros parcias depois da baixa
  ExecSql('UPDATE FIN_CONTAS_RECEBER SET SELECIONADO = ''N'', PARCIAL = 0 ,'+
              'JUROS_PARCIAL =0  WHERE CNPJ ='''+dmapp.Cnpj+''' AND CODIGO ='+inttostr(codigo)+' AND ANO = '+dmfinanceiro.VerReceberADMANO.asstring ,
              dmfinanceiro.VerReceberADM.transaction);

end;


procedure TFrmBaixaReceberSelecaoParc.ActDetalhesExecute(Sender: TObject);
begin
  If (Not DmFinanceiro.VerReceberADMCODIGO_VN.IsNull) then
    DmVendas2.Proc_Consulta_Venda(DmFinanceiro.VerReceberADMCODIGO_VN.Value)
  else
    Application.messagebox('Esta pendência não possui uma venda vinculada','Aviso',mb_iconinformation + mb_ok);
end;

procedure TFrmBaixaReceberSelecaoParc.DesmarcaSelecionados;
begin
  ExecSql('UPDATE FIN_CONTAS_RECEBER SET SELECIONADO = ''N'' WHERE pessoa_fj = '+trim(EdClienteInicial.Text)+' and SELECIONADO = ''S'' and CNPJ ='''+dmapp.Cnpj+'''',dmfinanceiro.VerReceberADM.transaction);
end;

end.
