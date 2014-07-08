 unit FaturaVendaLoja_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Grids, DBGrids, Buttons,
    dxDBGrid, dxDBTLCl, dxGrClms, dxDBCtrl, dxTL,
  DBCtrls, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmFaturaVendaLoja = class(TForm)
    pnlClient: TPanel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCalculadora: TAction;
    DsParcelas: TDataSource;
    Label28: TcxLabel;
    edHistorico: TdxDBEdit;
    EdEntrada: TdxDBCalcEdit;
    Label34: TcxLabel;
    EdDescAcres: TdxDBCalcEdit;
    Label17: TcxLabel;
    Label35: TcxLabel;
    GRIDFATURAMENTO: TDBGrid;
    Label1: TcxLabel;
    EdDinheiro: TdxDBCalcEdit;
    Label2: TcxLabel;
    EdCheque: TdxDBCalcEdit;
    Label3: TcxLabel;
    EdCartao: TdxDBCalcEdit;
    Label4: TcxLabel;
    EdTicket: TdxDBCalcEdit;
    DataSource: TDataSource;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Label31: TcxLabel;
    DBCoolText2: TDBText;
    DBCoolText3: TDBText;
    Label32: TcxLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    DBCoolText4: TDBText;
    Label33: TcxLabel;
    ActImprimir: TAction;
    dxDBEdit1: TdxDBEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    GRID: TdxDBGrid;
    GRIDSELECIONADO: TdxDBGridCheckColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDVENCIMENTO: TdxDBGridDateColumn;
    GRIDDOCUMENTO: TdxDBGridMaskColumn;
    GRIDVALOR: TdxDBGridMaskColumn;
    GRIDPARCELA: TdxDBGridMaskColumn;
    GRIDHISTORICO: TdxDBGridMaskColumn;
    GRIDLANCAMENTO: TdxDBGridDateColumn;
    GRIDPARCIAL: TdxDBGridColumn;
    GRIDTOTAL: TdxDBGridColumn;
    GRIDDESCONTOS: TdxDBGridColumn;
    GRIDJUROS: TdxDBGridColumn;
    GRIDTIPO: TdxDBGridColumn;
    DsReceber: TDataSource;
    RzBitBtn3: TcxButton;
    ActSelecionaContas: TAction;
    ActMarca: TAction;
    RzBitBtn4: TcxButton;
    Label6: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Panel1: TPanel;
    Label5: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    CkAVista: TRadioButton;
    CkPrazo: TRadioButton;
    CMBpessoa: TdxDBButtonEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Parcelas: TdxSpinEdit;
    Label7: TcxLabel;
    Label8: TcxLabel;
    Intervalo: TdxSpinEdit;
    Label9: TcxLabel;
    Label10: TcxLabel;
    Label16: TcxLabel;
    Label14: TcxLabel;
    LBLNUMARQ: TcxLabel;
    LBLSOMA: TcxLabel;
    Label15: TcxLabel;
    Bevel4: TBevel;
    BtnDesdobrar: TcxButton;
    ActReiniciar: TAction;
    Label11: TcxLabel;
    DBCoolText1: TDBText;
    Shape1: TShape;
    Shape2: TShape;
    DBCoolText5: TDBText;
    Label12: TcxLabel;
    VisualizarVenda: TAction;
    procedure ActFecharExecute(Sender: TObject);
    procedure DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ValorExit(Sender: TObject);
    procedure ActCalculadoraExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure GRIDFATURAMENTOEnter(Sender: TObject);
    procedure ActOkExecute(Sender: TObject);
    procedure CmbFormaPgtoExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure EdDescAcresExit(Sender: TObject);
    Procedure Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
    procedure ActSelecionaContasExecute(Sender: TObject);
    procedure ActMarcaExecute(Sender: TObject);
    procedure edHistoricoEnter(Sender: TObject);
    procedure edHistoricoExit(Sender: TObject);
    procedure GRIDFATURAMENTOExit(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CkPrazoClick(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure CkAVistaClick(Sender: TObject);
    procedure GRIDSELECIONADOCustomDrawCell(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; ASelected, AFocused,
      ANewItemRow: Boolean; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure GRIDExit(Sender: TObject);
    procedure ActReiniciarExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    LocCli, VendaParcelada: Boolean  ;
    Bloqueado : String ;
    procedure SelecionaLancamento ;
    Procedure       Habilita ;
    Procedure       Calcular_Parcelas;
  end;

var
  FrmFaturaVendaLoja: TFrmFaturaVendaLoja;
  SOMATOTAL     : REAL ;
  QUANTIDADE    : INTEGER ;
implementation

uses
    Application_DM,
    Funcoes,
    Vendas_Dm,
    Main,
    Cadastros_DM,
    FormasPagto_Form,
    SelFaturaVendas_Form,
    EnviaCaixa_FRel,
    Financeiro_Dm,
    Procedures_DM,
    Localizar_Cliente, MensagemClassificacao_Form, Vendas_DM2;

{$R *.DFM}

Procedure TFrmFaturaVendaLoja.Soma_Receber (Tipo: String; DIni: TDateTime; DFim: TDateTime; Pessoa: Integer);
begin
     Try
        DmaPP.Transaction.CommitRetaining ;

        If Not DmaPP.TransactionProc.InTransaction
        then
            DmaPP.TransactionProc.StartTransaction ;

        //
{       If DMProcs = Nil Then
        DMProcs := TDMProcs.Create(Self);}

        //PARA SABER QUAL PROCEDURE PEGAR
        DMProcs.Soma_Selecionadorec.StoredProcName := 'SOMA_RECEBER_' + TIPO;
        //
        DMProcs.Soma_Selecionadorec.ParamByName('CNPJ').asString      := DmApp.Cnpj ;
        DMProcs.Soma_Selecionadorec.ParamByName('DINI').asDate        := DIni       ;
        DMProcs.Soma_Selecionadorec.ParamByName('DFIM').asDate        := DFim       ;
        DMProcs.Soma_Selecionadorec.ParamByName('PESSOA').asInteger   := Pessoa     ;

        DMProcs.Soma_Selecionadorec.ExecProc;

        SOMATOTAL  := DMProcs.Soma_Selecionadorec.ParamByName('SOMA').asFloat;
        QUANTIDADE := DMProcs.Soma_Selecionadorec.ParamByName('QUANTIDADE').asInteger;

        LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
        LBLSOMA.Caption   := FORMATFLOAT('###,###,##0.00', SOMATOTAL );

        DsReceber.DataSet := DmFinanceiro.VerReceber ;

        IF NOT ( DataSource.DataSet.State in [ dsedit ] )
        then
            DataSource.DataSet.Edit ;

        DataSource.DataSet.FieldByName('RECEBIDAS').AsFloat := SOMATOTAL ;

        //

        DmApp.TransactionProc.Commit ;
     except
        DmApp.TransactionProc.Rollback ;
     end;
end;

procedure TFrmFaturaVendaLoja.SelecionaLancamento ;
begin
     WITH DmFinanceiro DO
     BEGIN
          VERRECEBER.Close ;
          VERRECEBER.SQL.CLEAR ;
          VERRECEBER.Params.CLEAR ;

          VERRECEBER.Params.CreateParam ( FtDate, 'DINI', PtInput );
          VERRECEBER.Params.CreateParam ( FtDate, 'DFIM', PtInput );

          VERRECEBER.SQL.ADD ( ' SELECT * FROM VER_RECEBER_LANCAMENTO ( :CNPJ, :DINI, :DFIM ) ' );

          VERRECEBER.ParamByName ( 'DINI' ).AsDate := STRTODATE('01/01/1900') ;
          VERRECEBER.ParamByName ( 'DFIM' ).AsDate := STRTODATE('31/12/9999') ;

          VERRECEBER.Params.CreateParam ( FtInteger, 'PES', PtInputOutPut );

          VERRECEBER.SQL.Add (' Where PESSOA_FJ = :PES ');

          VERRECEBER.ParamByName ('PES').asInteger := DataSource.DATASET.FieldByName('PESSOA_FJ').Value ;

          VERRECEBER.SQL.ADD ( ' ORDER BY  DT_LANCTO, DOCTO ' );

          VERRECEBER.Prepare ;
          VERRECEBER.Open ;
     END;

     //SOMA OS VALORES
     SOMA_RECEBER ( 'LANCAMENTO' , STRTODATE('01/01/1900') , STRTODATE('31/12/9999'), DataSource.DATASET.FieldByName('PESSOA_FJ').Value );

END;

Procedure TFrmFaturaVendaLoja.Calcular_Parcelas;
Var bReg: Pointer;
    eTotal: Extended;
begin
  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     bReg := DsParcelas.DataSet.GetBookmark;
  //
  DsParcelas.DataSet.DisableControls;
  //
  eTotal := 0;
  //
  DsParcelas.DataSet.First;
  //
  While Not DsParcelas.DataSet.Eof Do
        Begin
          //
          eTotal := eTotal + DsParcelas.DataSet.FieldByName('VALOR').asFloat;
          //
          DsParcelas.DataSet.Next;
        End;
  //
  DataSource.DataSet.Edit ;
  DataSource.DataSet.FieldByName('VLR_PARC_LC').asFloat := eTotal;
  DataSource.DataSet.Post ;

  //
  If DsParcelas.DataSet.RecordCount > 0 Then
     Begin
       DsParcelas.DataSet.GotoBookmark(bReg);
       DsParcelas.DataSet.FreeBookmark(bReg);
     End;
  //
  DsParcelas.DataSet.EnableControls;
End;

procedure TFrmFaturaVendaLoja.ActFecharExecute(Sender: TObject);
begin
     If DsParcelas.State in [ DsInsert, DsEdit ]
     then
         DsParcelas.DataSet.Cancel
     else
         Modalresult := mrCancel ;
end;

procedure TFrmFaturaVendaLoja.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFaturaVendaLoja.ValorExit(Sender: TObject);
begin
//     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
end;

procedure TFrmFaturaVendaLoja.ActCalculadoraExecute(Sender: TObject);
begin
     DataSource.DataSet.Edit ;

     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmFaturaVendaLoja.ActiveControl = EdDinheiro
     Then begin
          DataSource.DataSet.FieldByName('Dinheiro').AsFloat := Calculadora ;
     end;

     If FrmFaturaVendaLoja.ActiveControl = EdCheque
     Then begin
          DataSource.DataSet.FieldByName('Cheque').AsFloat := Calculadora ;
     end;

     If FrmFaturaVendaLoja.ActiveControl = EdCartao
     Then begin
          DataSource.DataSet.FieldByName('Cartao').AsFloat := Calculadora ;
     end;

     If FrmFaturaVendaLoja.ActiveControl = EdTicket
     Then begin
          DataSource.DataSet.FieldByName('Ticket').AsFloat := Calculadora ;
     end;

     If FrmFaturaVendaLoja.ActiveControl = EdDescAcres
     Then begin
          DataSource.DataSet.FieldByName('DESC_ACRES').AsFloat := Calculadora ;
     end;

     If FrmFaturaVendaLoja.ActiveControl = EdEntrada
     Then begin
          DataSource.DataSet.FieldByName('Entrada').AsFloat := Calculadora ;
     end;
end;

procedure TFrmFaturaVendaLoja.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DsParcelas.DataSet.Tag = 0 Then
       DsParcelas.DataSet.Close;
end;

procedure TFrmFaturaVendaLoja.FormShow(Sender: TObject);
begin
     Bloqueado := 'N' ;

     IniciaComponentes ( Self as TForm );


     If Not(DataSource.DataSet.Active) Then
        DataSource.DataSet.Open;
     If Not(DsParcelas.DataSet.Active) Then
        DsParcelas.DataSet.Open;

     CkAVista.SetFocus ;
end;

procedure TFrmFaturaVendaLoja.GRIDFATURAMENTOEnter(Sender: TObject);
begin
     IF GRIDFATURAMENTO.Enabled
     THEN BEGIN
          if DataSource.DataSet.State In [ DsEdit, DsInsert ]
          then begin
               DataSource.DataSet.Post ;
          end;

          //Apaga as Parcelas Digitadas

          //Apaga Parcelas
          DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj, DataSource.DataSet.FieldByName('CODIGO').asInteger );

          DsParcelas.DataSet.Close ;
          DsParcelas.DataSet.Open  ;

          //PARCELA VENDAS
          If CkPrazo.Checked
          THEN
              DmVendas.Parcela_Vendas_Loja ;

          If DsParcelas.DataSet.State in [DsInsert, DsEdit]
          then
              DsParcelas.DataSet.Cancel ;

          DsParcelas.DataSet.First ;
     END;
end;

procedure TFrmFaturaVendaLoja.ActOkExecute(Sender: TObject);
var
   Diferenca : Real;
begin
  if DsParcelas.DataSet.State In [ DsEdit, DsInsert ] then
      DsParcelas.DataSet.Cancel ;

  if DataSource.DataSet.FieldByName('Tipo_Venda').Value = 'Con' then
  begin
    Application.CreateForm(TFrmMensagemClassificacao, FrmMensagemClassificacao);
    FrmMensagemClassificacao.MEMO.Lines.Add ('SENHA GERENCIAL');
    FrmMensagemClassificacao.EdSenha.Visible := true ;
    FrmMensagemClassificacao.Label6.Visible  := true ;
    //Se o Nível ou a Classificacao exigir senha e não foi digitada

    if FrmMensagemClassificacao.Showmodal = MrCancel then
    Begin
      MessageDlg('Senha Não Informada Corretamente!', mtError, [mbOK], 0);
      Abort ;
    end;

    FrmMensagemClassificacao.Free ;
    FrmMensagemClassificacao := Nil;
  end;

     Calcular_Parcelas ;

     With DMVendas do
     begin
          If arredonda(DataSource.DataSet.FieldByName('AVista').AsFloat,2) <> arredonda( (DataSource.DataSet.FieldByName('Dinheiro').AsFloat + DataSource.DataSet.FieldByName('Cheque').AsFloat + DataSource.DataSet.FieldByName('Cartao').AsFloat + DataSource.DataSet.FieldByName('Ticket').AsFloat),2 )
          then begin
               MessageDlg('O Valor Desdobrado Não Confere, Verifique', mtError, [mbOK], 0);
               EdDinheiro.SetFocus ;
               Abort ;
          end
          else begin
               //Valor Parcelado Não Confere
               Diferenca := arredonda(DataSource.DataSet.FieldByName('Diferenca').AsFloat,2);

               if ( Arredonda(Diferenca,2) >      (  0.09 * DmVendas.Vendas_Parc.recordcount ))
               or ( Arredonda(Diferenca,2) <  -1 *(  0.09 * DmVendas.Vendas_Parc.recordcount ))
               then begin
                    MessageDlg('O Valor Desdobrado no Parcelamento Não Confere, Verifique!', mtError, [mbOK], 0);
                    GRIDFATURAMENTO.SetFocus ;
                    Abort ;
               end
               else begin
                    If DataSource.DataSet.State in [ dsinsert, dsedit ]
                    then
                        DataSource.DataSet.Post ;

                    If DmVendas.Vendas_Parc.RecordCount > 0
                    then begin
                         VendaParcelada := True  ;
                    end
                    else
                         VendaParcelada := False ;

                    ModalResult := MrOk ;
               end;
          end;
     end;
end;

procedure TFrmFaturaVendaLoja.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );

     Habilita ;

     IF NOT ( DataSource.DataSet.State in [ dsedit ] )
     then
         DataSource.DataSet.Edit ;
         
     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;
end;

procedure TFrmFaturaVendaLoja.ActImprimirExecute(Sender: TObject);
begin
     FRelEnviaCaixa              := TFRelEnviaCaixa.Create(Self);
     FRelEnviaCaixa.Tipo         := 'FATURA' ;
     FRelEnviaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
     FRelEnviaCaixa.Showmodal ;
end;

procedure TFrmFaturaVendaLoja.Habilita;
begin
     DataSource.DataSet.Edit ;

     //Apaga Parcelas
     DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj, DataSource.DataSet.FieldByName('CODIGO').asInteger );

     DsParcelas.DataSet.Close ;
     DsParcelas.DataSet.Open  ;

     Calcular_Parcelas ;

     If CkAVista.Checked
     then begin
          If Not ( DataSource.DataSet.State in [ DsInsert, DsEdit ])
          then
              DataSource.DataSet.Edit ;

          DsReceber.DataSet.Close ;

          DataSource.DataSet.FieldByName('PESSOA_FJ').Value  := 1;
          DataSource.DataSet.FieldByName('FORMA_PGTO').Value := 1;
          DataSource.DataSet.FieldByName('RECEBIDAS').Value  := 0;

          EDENTRADA.Enabled  := false ;

          DataSource.DataSet.FieldByName('DESC_ACRES').Value := -1 * ( DataSource.DataSet.FieldByName('TOTAL').AsFloat * Dmapp.TAXA_DESC_AVISTA )/100 ;
          DataSource.DataSet.FieldByName('ENTRADA').Value    := 0    ;

          EdDinheiro.Enabled := true ;
          EdCheque.Enabled   := true ;
          EdTicket.Enabled   := true ;
          EdCartao.Enabled   := true ;

          GRIDFATURAMENTO.Enabled := FALSE ;
     end
     ELSE BEGIN
          If Not  ( DataSource.DataSet.State in [ DsInsert, DsEdit ])
          then
              DataSource.DataSet.Edit ;

          DataSource.DataSet.FieldByName('FORMA_PGTO').Value := 2;

          //CONFERE SE O CLIENTE ESTA HABILITADO PARA VENDAS A PRAZO
          IF BLOQUEADO = 'S'
          THEN BEGIN
               Showmessage('Este Cliente Está Bloqueado Para Vendas a Prazo, Verifique!');
               CMBpessoa.SetFocus ;
               ABORT ;
          END
          ELSE
              VENDAPARCELADA := TRUE ;

          IF Parcelas.Value >= DmApp.APARTIR_PREST
          THEN BEGIN
               DataSource.DataSet.FieldByName('DESC_ACRES').Value :=  ( DataSource.DataSet.FieldByName('TOTAL').AsFloat * ( Dmapp.TAXA_DESC_APRAZO * Parcelas.Value ) )/100 ;
          END;

          DataSource.DataSet.FieldByName('ENTRADA').Value := 0 ;
          EDENTRADA.Enabled       := true ;
          GRIDFATURAMENTO.Enabled := TRUE ;

          EDENTRADA.Enabled    := TRUE ;

          If DataSource.DataSet.FieldByName('RECEBIDAS').AsFloat > 0
          then begin
               EdDinheiro.Enabled   := TRUE  ;
               EdCheque.Enabled     := TRUE  ;
               EdTicket.Enabled     := TRUE  ;
               EdCartao.Enabled     := TRUE  ;
          end
          else begin
               EdDinheiro.Enabled   := FALSE ;
               EdCheque.Enabled     := FALSE ;
               EdTicket.Enabled     := FALSE ;
               EdCartao.Enabled     := FALSE ;
          end;
     END;

     DataSource.DataSet.FieldByName('DINHEIRO').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;

     DataSource.DataSet.Post ;

     Calcular_Parcelas ;
end;

procedure TFrmFaturaVendaLoja.EdDescAcresExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );

     IF NOT ( DataSource.DataSet.State in [ dsedit ] )
     then
         DataSource.DataSet.Edit ;

     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;
end;

procedure TFrmFaturaVendaLoja.ActSelecionaContasExecute(Sender: TObject);
begin
     If Not CkAVista.Checked
     then begin
          SelecionaLancamento ;
          GRID.setfocus ;
     end;
end;

procedure TFrmFaturaVendaLoja.ActMarcaExecute(Sender: TObject);
Var
   Book: TbookMark ;
begin
     If Not CkAVista.Checked
     then begin
          with DmFinanceiro do
          begin
               Seleciona_Receber (VerReceberCODIGO.VALUE, VerReceberANO.VALUE, VerReceberSELECIONADO.VALUE);

               Book := VerReceber.GetBookmark ;

               VerReceber.Close;
               VerReceber.Open ;

               VerReceber.GotoBookmark ( Book );
               VerReceber.FreeBookmark ( Book );
          end;

          //SOMA OS VALORES
          SOMA_RECEBER ( 'LANCAMENTO' , STRTODATE('01/01/1900') , STRTODATE('31/12/9999'), DataSource.DATASET.FieldByName('PESSOA_FJ').Value );
     END;
end;

procedure TFrmFaturaVendaLoja.edHistoricoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFaturaVendaLoja.edHistoricoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );

end;

procedure TFrmFaturaVendaLoja.GRIDFATURAMENTOExit(Sender: TObject);
begin
     Calcular_Parcelas ;
end;

procedure TFrmFaturaVendaLoja.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        If Not ( DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             DataSource.DataSet.Edit ;
        end;

        //Chama a Tela Para Localizar Cliente
        Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             DmVendas.FaturaVendasPESSOA_FJ.Value := (Frm_Localizar_Cliente.CampTrecho) ;
        end;

     Except
     end;

end;

procedure TFrmFaturaVendaLoja.CkPrazoClick(Sender: TObject);
begin
     If CkPrazo.Checked
     then begin
          CMBpessoa.Enabled := True  ;
          Parcelas.Enabled  := true  ;
          Intervalo.Enabled := true  ;
     end
     else begin
          CMBpessoa.Enabled := false ;
          Parcelas.Enabled  := false ;
          Intervalo.Enabled := false ;
     end;
end;

procedure TFrmFaturaVendaLoja.Panel1Exit(Sender: TObject);
begin
     If CkPrazo.Checked
     then begin
          If ((Trim(CMBpessoa.Text) = '' ) or (Trim(CMBpessoa.Text) = '1' ))
          then begin
               MessageDlg('Selecione um Cliente para Vendas a Prazo', mtError, [mbOK], 0);
               CMBpessoa.SetFocus ;
               Exit ;
          end
          else
              SelecionaLancamento ;
     end;

     Habilita ;
end;

procedure TFrmFaturaVendaLoja.CkAVistaClick(Sender: TObject);
begin
     If Not CkAVista.Checked
     then begin
          CMBpessoa.Enabled := True  ;
          Parcelas.Enabled  := true  ;
          Intervalo.Enabled := true  ;
     end
     else begin
          Parcelas.Enabled  := false ;
          Intervalo.Enabled := false ;
          CMBpessoa.Enabled := false ;
     end;
end;

procedure TFrmFaturaVendaLoja.GRIDSELECIONADOCustomDrawCell(
  Sender: TObject; ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
     IF AFOCUSED
     THEN BEGIN
           AColor := clHighlight ;
           AFont.Color := clWhite ;
     END
     ELSE BEGIN
          AFont.Color := clBlack ;

          IF GRID.DataSource.DataSet.fieldbyname('SELECIONADO').Value = 'S'
          THEN BEGIN
               AColor := clBtnFace ;
          END
          ELSE BEGIN
               AColor := clWhite ;
          END;
     END;
end;

procedure TFrmFaturaVendaLoja.GRIDExit(Sender: TObject);
begin
     If DataSource.DataSet.FieldByName('RECEBIDAS').AsFloat > 0
     then begin
          EdDinheiro.Enabled := true ;
          EdCheque.Enabled   := true ;
          EdTicket.Enabled   := true ;
          EdCartao.Enabled   := true ;

          If Not ( DataSource.State in [ dsinsert, dsedit ] )
          Then begin
               DataSource.DataSet.Edit ;
          end;

          DataSource.DataSet.FieldByName('DINHEIRO').Value := DataSource.DataSet.FieldByName('RECEBIDAS').AsFloat + DataSource.DataSet.FieldByName('ENTRADA').AsFloat + DataSource.DataSet.FieldByName('DESC_ACRES').AsFloat ;

          EdDinheiro.SetFocus ;
     end;
end;

procedure TFrmFaturaVendaLoja.ActReiniciarExecute(Sender: TObject);
begin
     DataSource.DataSet.Edit ;

     DataSource.DataSet.FieldByName('DINHEIRO'  ).AsFloat := 0;
     DataSource.DataSet.FieldByName('ENTRADA'   ).AsFloat := 0  ;
     DataSource.DataSet.FieldByName('DESC_ACRES').AsFloat := 0  ;
     DataSource.DataSet.FieldByName('HISTORICO' ).AsString:= '' ;
     DataSource.DataSet.FieldByName('RECEBIDAS' ).AsFloat := 0  ;
     DataSource.DataSet.FieldByName('DINHEIRO'  ).AsFloat := 0  ;
     DataSource.DataSet.FieldByName('CHEQUE'    ).AsFloat := 0  ;
     DataSource.DataSet.FieldByName('CARTAO'    ).AsFloat := 0  ;
     DataSource.DataSet.FieldByName('TICKET'    ).AsFloat := 0  ;

     //Apaga Parcelas
     DmApp.Apaga_Parcelas_Venda ( DmApp.Cnpj, DataSource.DataSet.FieldByName('CODIGO').asInteger );

     DsParcelas.DataSet.Close ;
     DsParcelas.DataSet.Open  ;

     Calcular_Parcelas ;

     CkAVista.SetFocus ;
end;

procedure TFrmFaturaVendaLoja.GRIDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If Key = 13
     then begin
          If (( FrmFaturaVendaLoja.ActiveControl = GRID ) and ( DmFinanceiro.VerReceberCODIGO_VN.Value > 0 ))
          then begin
               DmVendaS2.Proc_Consulta_Venda( DmFinanceiro.VerReceberCODIGO_VN.Value );
          end;
     end;
end;

end.
