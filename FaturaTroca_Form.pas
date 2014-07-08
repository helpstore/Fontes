 unit FaturaTroca_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, dxCntner, dxEditor, dxExEdtr, dxEdLib, StdCtrls,
  ActnList,  Db, dxDBEdtr, dxDBELib, Grids, DBGrids, Buttons,
  IBCustomDataSet,
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
  TFrmFaturaTroca = class(TForm)
    pnlClient: TPanel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Actions: TActionList;
    ActFechar: TAction;
    ActOk: TAction;
    ActCalculadora: TAction;
    DsParcelas: TDataSource;
    Label28: TcxLabel;
    edHistorico: TdxDBEdit;
    Label8: TcxLabel;
    BtnForma: TcxButton;
    EdEntrada: TdxDBCalcEdit;
    Label34: TcxLabel;
    EdDescAcres: TdxDBCalcEdit;
    Label17: TcxLabel;
    Label29: TcxLabel;
    cmbTipoDocto: TdxDBLookupEdit;
    Label35: TcxLabel;
    CmbLocal: TdxDBLookupEdit;
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
    DsForma: TDataSource;
    Label31: TcxLabel;
    DBCoolText2: TDBText;
    DBCoolText3: TDBText;
    Label32: TcxLabel;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    DBCoolText4: TDBText;
    Label33: TcxLabel;
    Bevel1: TBevel;
    DsTipoDoc: TDataSource;
    ActImprimir: TAction;
    dxDBEdit1: TdxDBEdit;
    RxLabel2: TcxLabel;
    Bevel2: TBevel;
    Label5: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    dxDBEdit3: TdxDBEdit;
    ActLookUp: TAction;
    Label6: TcxLabel;
    CmbFormaPgto: TdxDBEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    DsLocal: TDataSource;
    ActLocalizarForma: TAction;
    Label7: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
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
    procedure edHistoricoEnter(Sender: TObject);
    procedure edHistoricoExit(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure GRIDFATURAMENTOExit(Sender: TObject);
    procedure ActLocalizarFormaExecute(Sender: TObject);
    procedure BtnFormaClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    VendaParcelada: Boolean  ;
    Procedure       Habilita ;
    Procedure       Calcular_Parcelas;
  end;

var
  FrmFaturaTroca: TFrmFaturaTroca;
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
    Financeiro_Dm,
    Procedures_DM,
    EnviaTrocaCaixa_FRel, Localizar_Forma, Vendas_DM2;

{$R *.DFM}




procedure TFrmFaturaTroca.ActFecharExecute(Sender: TObject);
begin
     If DsParcelas.State in [ DsInsert, DsEdit ]
     then
         DsParcelas.DataSet.Cancel
     else
         Modalresult := mrCancel ;
end;

procedure TFrmFaturaTroca.DataKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmFaturaTroca.ValorExit(Sender: TObject);
begin
//     Total.Value := Valor.Value - Desconto.Value + Juros.Value ;
end;

procedure TFrmFaturaTroca.ActCalculadoraExecute(Sender: TObject);
begin
     //CALCULADORA COM RESULTADO NO CAMPO
     If FrmFaturaTroca.ActiveControl = EdDinheiro
     Then begin
          DataSource.DataSet.FieldByName('Dinheiro').AsFloat := Calculadora ;
     end;

     If FrmFaturaTroca.ActiveControl = EdCheque
     Then begin
          DataSource.DataSet.FieldByName('Cheque').AsFloat := Calculadora ;
     end;

     If FrmFaturaTroca.ActiveControl = EdCartao
     Then begin
          DataSource.DataSet.FieldByName('Cartao').AsFloat := Calculadora ;
     end;

     If FrmFaturaTroca.ActiveControl = EdTicket
     Then begin
          DataSource.DataSet.FieldByName('Ticket').AsFloat := Calculadora ;
     end;

     If FrmFaturaTroca.ActiveControl = EdDescAcres
     Then begin
          DataSource.DataSet.FieldByName('DESC_ACRESC').AsFloat := Calculadora ;
     end;

     If FrmFaturaTroca.ActiveControl = EdEntrada
     Then begin
          DataSource.DataSet.FieldByName('Entrada').AsFloat := Calculadora ;
     end;
end;

procedure TFrmFaturaTroca.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If DsParcelas.DataSet.Tag = 0 Then
       DsParcelas.DataSet.Close;
     If DsForma.DataSet.Tag = 0 Then
       DsForma.DataSet.Close;
     If DsTipoDoc.DataSet.Tag = 0 Then
       DsTipoDoc.DataSet.Close;
     If DsLocal.DataSet.Tag = 0 Then
       DsLocal.DataSet.Close;

end;

procedure TFrmFaturaTroca.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     DsLocal.DataSet := DmFinanceiro.SelPlano ;

     If Not(DsForma.DataSet.Active) Then
        DsForma.DataSet.Open;

     DataSource.DataSet.close;
     DataSource.DataSet.Open;

     If Not(DsParcelas.DataSet.Active) Then
        DsParcelas.DataSet.Open;
     If Not(DsTipoDoc.DataSet.Active) Then
        DsTipoDoc.DataSet.Open;
     If Not(DsLocal.DataSet.Active) Then
        DsLocal.DataSet.Open;

     edHistorico.SetFocus ;

     Habilita ;
end;

procedure TFrmFaturaTroca.GRIDFATURAMENTOEnter(Sender: TObject);
begin
     //nao teno nem idei para q serve isso @#$#@$
     if GRIDFATURAMENTO.Enabled then
     begin
       if DataSource.DataSet.State In [DsEdit, DsInsert] then
         DataSource.DataSet.Post ;

          //PARCELA VENDAS

         DmVendas2.Parcela_Trocas;

       dsParcelas.DataSet.Append;
     end;
end;

procedure TFrmFaturaTroca.ActOkExecute(Sender: TObject);
begin
     if DsParcelas.DataSet.State In [ DsEdit, DsInsert ]
     then begin
          DsParcelas.DataSet.Cancel ;
     end;

     With DMVendas do
     begin
          If arredonda(DataSource.DataSet.FieldByName('AVista').AsFloat,2) <> arredonda((DataSource.DataSet.FieldByName('Dinheiro').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Cheque').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Cartao').AsFloat
                                                                                         + DataSource.DataSet.FieldByName('Ticket').AsFloat),2 )
          then begin
               MessageDlg('O Valor Desdobrado Não Confere, Verifique', mtError, [mbOK], 0);
               EdDinheiro.SetFocus ;
               Abort ;
          end
          else begin
               //Valor Parcelado Não Confere

               if Arredonda(DataSource.DataSet.FieldByName('Diferenca').AsFloat,2) <> 0
               then begin
                    MessageDlg('O Valor Desdobrado no Parcelamento Não Confere, Verifique!', mtError, [mbOK], 0);
                    GRIDFATURAMENTO.SetFocus ;
                    Abort ;
               end
               else begin
                    If DataSource.DataSet.State in [ dsinsert, dsedit ]
                    then
                        DataSource.DataSet.Post ;
                        
                    ModalResult := MrOk ;
               end;
          end;
     end;
end;

procedure TFrmFaturaTroca.CmbFormaPgtoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     IF (( CmbFormaPgto.Text = '0' ) or ( CmbFormaPgto.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarForma.Execute ;
     end;

     Habilita ;

     IF NOT ( DataSource.DataSet.State in [ dsedit ] )
     then
         DataSource.DataSet.Edit ;

     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;

     If ((Sender as TDxDbEdit).Text <> '') and ( Datasource.DataSet.State in [ dsedit, dsinsert ])
     then
         Perform(WM_NEXTDLGCTL, 0, 0);
end;

procedure TFrmFaturaTroca.ActImprimirExecute(Sender: TObject);
begin
     FRelEnviaTrocaCaixa := TFRelEnviaTrocaCaixa.Create(Self);
     FRelEnviaTrocaCaixa.Tipo         := 'TROCA' ;
     FRelEnviaTrocaCaixa.PedidoNumero := DataSource.DataSet.FieldByName('CODIGO').asInteger ;
     FRelEnviaTrocaCaixa.Showmodal ;
     FRelEnviaTrocaCaixa.Free      ;
     FRelEnviaTrocaCaixa := Nil    ;
end;

procedure TFrmFaturaTroca.Habilita;
begin
    if Not (DataSource.State in [dsedit]) then
         DataSource.DataSet.Edit ;

     With DmVendas do
     Begin
       Valida_Forma.Close ;
       Valida_Forma.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj   ;
       Valida_Forma.ParamByName ('CODIGO').AsInteger := DmVendas.FaturaTrocas.Fieldbyname('FORMA_PGTO').AsInteger ;
       Valida_Forma.Prepare ;
       Valida_Forma.Open ;

       //Habilita os componentes para cada tipo de Pagamento
       if (Valida_FormaNPARCELAS.VALUE > 0) and (Valida_FormaAVISTA.Value <> 'S') AND (Valida_FormaFATURA_FUTURA.Value <> 'S') then
         VENDAPARCELADA := TRUE
       else
         VENDAPARCELADA := false;

       if Valida_FormaAVISTA.Value = 'S' then
       begin
               CmbLocal.Enabled     := false ;
               EDENTRADA.Enabled    := false ;
               cmbTipoDocto.Enabled := false ;

               GRIDFATURAMENTO.Enabled := FALSE ;

               EdDinheiro.Enabled := true ;
               EdCheque.Enabled   := true ;
               EdTicket.Enabled   := true ;
               EdCartao.Enabled   := true ;
       end
       else
       begin
         CmbLocal.Enabled     := true ;
         EDENTRADA.Enabled    := true ;
         cmbTipoDocto.Enabled := true ;

         GRIDFATURAMENTO.Enabled := TRUE ;
         if (Valida_FormaCOMENTRADA.Value = 'N') then
         begin
           EDENTRADA.Enabled    := false ;
           DataSource.DataSet.FieldByName('ENTRADA').AsFloat := 0  ;

           edDinheiro.Enabled := false ;
           EdCheque.Enabled   := false ;
           edTicket.Enabled   := false ;
           EdCartao.Enabled   := false ;
         end
         else
         begin
           EDENTRADA.Enabled    := TRUE ;
           EdDinheiro.Enabled := true ;
           EdCheque.Enabled   := true ;
           EdTicket.Enabled   := true ;
           EdCartao.Enabled   := true ;
         end;
       end;

       if Valida_FormaCOMENTRADA.Value <> 'S' then
         EDENTRADA.Enabled    := FALSE 
       else
         EDENTRADA.Enabled    := TRUE ;

       DataSource.DataSet.FieldByName('DINHEIRO').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;

       DmVendas.Trocas_Parc.Close ;
       DmVendas.Trocas_Parc.open  ;
     end;
end;

procedure TFrmFaturaTroca.EdDescAcresExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
     IF NOT ( DataSource.DataSet.State in [ dsedit ] ) then
         DataSource.DataSet.Edit ;

     DataSource.DataSet.FieldByName('Dinheiro').AsFloat := DataSource.DataSet.FieldByName('AVista').AsFloat ;
end;

procedure TFrmFaturaTroca.edHistoricoEnter(Sender: TObject);
begin
     CORFUNDO( SENDER );
end;

procedure TFrmFaturaTroca.edHistoricoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( SENDER );
end;

procedure TFrmFaturaTroca.ActLookUpExecute(Sender: TObject);
begin
     If (FrmFaturaTroca.ActiveControl = CmbFormaPgto) Then
     BtnForma.OnClick(BtnForma);
end;

procedure TFrmFaturaTroca.GRIDFATURAMENTOExit(Sender: TObject);
begin
     Calcular_Parcelas ;
end;

Procedure TFrmFaturaTroca.Calcular_Parcelas;
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

procedure TFrmFaturaTroca.ActLocalizarFormaExecute(Sender: TObject);
begin
     Application.CreateForm(TFrm_Localizar_FormaPagto, Frm_Localizar_FormaPagto);
     Frm_Localizar_FormaPagto.DSource.dataset := DmVendas.SelFormaPgto ;

     if ( Frm_Localizar_FormaPagto.showmodal = mrOk ) Then
        Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := (Frm_Localizar_FormaPagto.CampTrecho)
     else
     begin
          If Frm_Localizar_FormaPagto.Cad = 'S' then
              BtnForma.OnClick(BtnForma);
     end;
     Frm_Localizar_FormaPagto.free   ;
     Frm_Localizar_FormaPagto := Nil ;
end;

procedure TFrmFaturaTroca.BtnFormaClick(Sender: TObject);
begin
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;

  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmFormasPagto', False);
  { * * * * * }
  DsForma.DataSet.Tag := DsForma.DataSet.Tag + 1;

  //"Rebaixando" a exibição da janela para show..
  FrmFormasPagto := TFrmFormasPagto.Create(Application);
  FrmFormasPagto.Showmodal ;
  FrmFormasPagto.free;
  FrmFormasPagto := nil;

  Datasource.DataSet.FieldByName('FORMA_PGTO').asInteger := FrmMain.Codigo_Int;
  DsForma.DataSet.Tag := DsForma.DataSet.Tag - 1;
  CmbFormaPgto.SetFocus;

  DsForma.DataSet.Close;
  DsForma.DataSet.Open;
end;

end.
