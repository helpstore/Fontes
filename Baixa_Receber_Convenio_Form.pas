unit Baixa_Receber_Convenio_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, Grids, DBGrids, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  cxPropertiesStore, Variants, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel, Menus,
  cxButtons;

type
  TFrmBaixaReceberConvenio = class(TForm)
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
    ActLocalizar: TAction;
    Bevel1: TBevel;
    Label1: TcxLabel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    ActLookup: TAction;
    Label8: TcxLabel;
    Label4: TcxLabel;
    Bevel2: TBevel;
    Label2: TcxLabel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    ActBaixar: TAction;
    Label10: TcxLabel;
    dxBarEdit1: TdxBarEdit;
    Label13: TcxLabel;
    Label3: TcxLabel;
    EdClienteInicial: TdxButtonEdit;
    Label9: TcxLabel;
    DATAINICIAL: TdxDateEdit;
    DATAFINAL: TdxDateEdit;
    Label11: TcxLabel;
    LBLCLIENTE: TcxLabel;
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
    CKSELECIONADO: TCheckBox;
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
    GRIDCONVENIADO: TdxDBGridColumn;
    CkSelecionar: TCheckBox;
    GRIDARQUIVO: TdxDBGridMaskColumn;
    stgFrmBaixaReceberConvenio: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
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
  private
    { Private declarations }
    procedure Seleciona;
    Procedure Soma_Receber;

  public
    { Public declarations }
    SOMATOTAL  : REAL ;
    QUANTIDADE : INTEGER ;
  end;

var
  FrmBaixaReceberConvenio: TFrmBaixaReceberConvenio;
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
     Dados_Baixa_Receber_Multiplos_Form, Financeiro_Dm2 ;

{$R *.DFM}

procedure TFrmBaixaReceberConvenio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Datasource.Dataset.Close;

     DmFinanceiro.SelPessoasFJ.Close ;

     dmApp.ZeraCaixaUsuario(owner);

     Action := caFree;
     FrmBaixaReceberConvenio := Nil;

     FrmMain.PnlClient.Visible := True;
end;

procedure TFrmBaixaReceberConvenio.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try

    If Not(DmFinanceiro.SelPessoasFJ.Active) Then
       DmFinanceiro.SelPessoasFJ.Open;

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
  EdClienteInicial.SetFocus;
end;

procedure TFrmBaixaReceberConvenio.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmBaixaReceberConvenio.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmBaixaReceberConvenio.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaReceberConvenio.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmBaixaReceberConvenio.ActFecharExecute(Sender: TObject);
begin
  If FrmBaixaReceberConvenio.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmBaixaReceberConvenio.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmBaixaReceberConvenio.ActBaixarExecute(Sender: TObject);
var
  conta : integer;
begin
     if SomaTotal > 0
     then begin
          CKSELECIONADO.Checked := true ;

          SELECIONA ;

          //SOMA OS VALORES
          SOMA_RECEBER ;

          Application.CreateForm(TFrmDadosBaixaReceberSelecao, FrmDadosBaixaReceberSelecao);

          FrmDadosBaixaReceberSelecao.Valor.Value       := SomaTotal ;
          FrmDadosBaixaReceberSelecao.Valor.ReadOnly    := true ;
          FrmDadosBaixaReceberSelecao.Data.Date         := DmApp.DataCaixa ;
          FrmDadosBaixaReceberSelecao.LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE) ;
          FrmDadosBaixaReceberSelecao.lblnome.caption   := LBLCLIENTE.caption   ;
          FrmDadosBaixaReceberSelecao.DataSource.DataSet:= DmFinanceiro.VerReceberConvenio ;

          IF FrmDadosBaixaReceberSelecao.ShowModal = MROK then
          begin
              if FrmDadosBaixaReceberSelecao.cmbConta.Text = ''  then
                 conta := dmapp.contacaixa
              else
                 conta := FrmDadosBaixaReceberSelecao.cmbConta.LookupKeyValue;

               DmFinanceiro2.Baixa_Receber_Convenios( STRTOINT(trim(EdClienteInicial.Text)),
                                       FrmDadosBaixaReceberSelecao.Historico.Text,
                                       FrmDadosBaixaReceberSelecao.Data.Date,
                                       DATAINICIAL.Date ,
                                       DATAFINAL.Date,
                                       FrmDadosBaixaReceberSelecao.Valor.Value,
                                       FrmDadosBaixaReceberSelecao.Juros.Value,
                                       FrmDadosBaixaReceberSelecao.Desconto.Value,
                                       DmApp.UsuarioCaixa,
                                       FrmDadosBaixaReceberSelecao.Dinheiro.value,
                                       FrmDadosBaixaReceberSelecao.Cheque.Value,
                                       FrmDadosBaixaReceberSelecao.Cartao.Value,
                                       dmapp.contacaixa,
                                       DmApp.turnoCaixa,
                                       conta);



               FrmDadosBaixaReceberSelecao.DsConta.DataSet.Close ;
               DmFinanceiro.VerReceberConvenio.Close;
               DmFinanceiro.VerReceberConvenio.Open ;
          end;

          FrmDadosBaixaReceberSelecao.Free ;
          FrmDadosBaixaReceberSelecao := Nil ;

          EdClienteInicial.SetFocus ;
     end
     else
     begin
           messageDlg('Não Existem Valores Selecionados!',MtError,[MbOk],0);
     end;
end;

procedure TFrmBaixaReceberConvenio.EdClienteInicialButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     try
        Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente);

        Frm_Localizar_Cliente.DSource.DataSet := DmFinanceiro.SelPessoasFJ ;

        if ( Frm_Localizar_Cliente.showmodal = mrOk )
        Then Begin
             EdClienteInicial.TEXT := IntToStr(Frm_Localizar_Cliente.CampTrecho) ;
        end;

        Frm_Localizar_Cliente.free ;
        Frm_Localizar_Cliente := Nil ;
  Except
  end;
end;

procedure TFrmBaixaReceberConvenio.EdClienteInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
     If ( EdClienteInicial.Text ) <> ''
     then begin
          if DmFinanceiro.SelPessoasFJ.locate ( 'CODIGO', trim(EdClienteInicial.Text), [] )
          then begin
               LBLCLIENTE.Caption := DmFinanceiro.SelPessoasFJNOME_RAZAO.Value ;
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

procedure TFrmBaixaReceberConvenio.EdTipoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  If (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmBaixaReceberConvenio.DATAINICIALExit(Sender: TObject);
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

procedure TFrmBaixaReceberConvenio.DATAFINALExit(Sender: TObject);
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

procedure TFrmBaixaReceberConvenio.Seleciona ;
begin
     WITH DmFinanceiro DO
     BEGIN
          VerReceberConvenio.Close ;
          VerReceberConvenio.SQL.CLEAR ;
          VerReceberConvenio.Params.CLEAR ;

          VerReceberConvenio.Params.CreateParam ( FtString , 'CNPJ'     , PtInputOutPut );
          VerReceberConvenio.Params.CreateParam ( FtInteger, 'CONVENIO' , PtInputOutPut );
          VerReceberConvenio.Params.CreateParam ( FtDate   , 'INICIAL'  , PtInput );
          VerReceberConvenio.Params.CreateParam ( FtDate   , 'FINAL'    , PtInput );

          VerReceberConvenio.SQL.ADD ( ' SELECT * FROM VER_RECEBER_CONVENIO_PERIODO ( :CNPJ, :CONVENIO, :INICIAL, :FINAL ) ' );

          VerReceberConvenio.ParamByName ( 'CONVENIO').asInteger := STRTOINT(trim(EdClienteInicial.Text)) ;
          VerReceberConvenio.ParamByName ( 'INICIAL' ).AsDate    := DATAINICIAL.Date ;
          VerReceberConvenio.ParamByName ( 'FINAL'   ).AsDate    := DATAFINAL.Date ;

          IF CKSELECIONADO.Checked
          THEN BEGIN
               VerReceberConvenio.Params.CreateParam ( FtString, 'SEL', PtInputOutPut );

               VerReceberConvenio.SQL.Add (' WHERE SELECIONADO = :SEL ');

               VerReceberConvenio.ParamByName ('SEL').asString := 'S' ;
          END;

          VerReceberConvenio.SQL.ADD ( ' ORDER BY  DT_LANCTO, DOCTO ' );

          VerReceberConvenio.Prepare ;
          VerReceberConvenio.Open ;

          //SOMA OS VALORES
          FrmBaixaReceberConvenio.SOMA_RECEBER ;
     END;
END;

procedure TFrmBaixaReceberConvenio.BtnOkClick(Sender: TObject);
begin
     if ( trim(EdClienteInicial.text) = '' ) then
     begin
       MessageDlg('Digite o Cliente!',MtInformation,[MbOk],0);
       EdClienteInicial.SetFocus ;
       EXIT;
     end;

     if ((DATAINICIAL.Text = '  /  /  ' ) or (DATAINICIAL.Text = '  /  /    ' )) then
       DATAINICIAL.Date := strtodate('01/01/1900') ;

     if ((DATAFINAL.Text = '  /  /  ' ) or (DATAFINAL.Text = '  /  /    ' )) then
       DATAFINAL.Date := strtodate('31/12/9999') ;

     if CkSelecionar.Checked  then
       DmFinanceiro.Sel_Rec_Convenio_Periodo ( STRTOINT(trim(EdClienteInicial.Text)), DATAINICIAL.Date, DATAFINAL.Date );

     seleciona;

     GRID.SETFOCUS ;
end;

procedure TFrmBaixaReceberConvenio.ActSelecionadosExecute(Sender: TObject);
begin
     CKSELECIONADO.Checked := TRUE ;
     BtnOk.OnClick (Sender) ;
end;

Procedure TFrmBaixaReceberConvenio.Soma_Receber ;
Var
   Cont: Integer;
   Soma: Real;
begin
        With DmFinanceiro do
        begin
             Soma := 0;
             Cont := 0;

             VerReceberConvenio.DisableControls ;

             VerReceberConvenio.First ;

             While Not VerReceberConvenio.Eof do
             begin
                  If VerReceberConvenioSELECIONADO.Value = 'S'
                  THEN BEGIN
                       Soma := Soma + VerReceberConvenioTOTAL.VALUE ;
                       Cont := Cont + 1;
                  END;
                  VerReceberConvenio.next ;
             end;

             SOMATOTAL  := Soma ;
             QUANTIDADE := Cont ;

             LBLNUMARQ.Caption := INTTOSTR(QUANTIDADE);
             LBLSOMA.Caption   := FORMATFLOAT('###,###,##0.00', SOMATOTAL );

             VerReceberConvenio.EnableControls ;
        end;
end;


procedure TFrmBaixaReceberConvenio.ActSelecionaExecute(Sender: TObject);
Var
   Book: TbookMark ;
begin
     with DmFinanceiro do
     begin
          Seleciona_Receber (VerReceberConvenioCODIGO.VALUE, VerReceberConvenioANO.VALUE, VerReceberConvenioSELECIONADO.VALUE);

          Book := VerReceberConvenio.GetBookmark ;

          VerReceberConvenio.Close;
          VerReceberConvenio.Open ;

          VerReceberConvenio.GotoBookmark ( Book );
          VerReceberConvenio.FreeBookmark ( Book );

          FrmBaixaReceberConvenio.SOMA_RECEBER ;
     end;
end;

procedure TFrmBaixaReceberConvenio.EdTipoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmBaixaReceberConvenio.EdTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmBaixaReceberConvenio.BtnOkExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmBaixaReceberConvenio.GRIDCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
Var
   Value: TDateTime ;
   Aux : string;
begin
     if ( not ASelected  )
     then begin
          Aux := trim(ANode.Values[GRIDarquivo.Index]);

       IF ( Aux = 'S' ) THEN
         AColor := clRed
       else
       begin
          Value := ANode.Values[GRIDVENCIMENTO.Index];
          if not VarIsNull(Value)
          then begin
               if Value < Date
               then
                   AColor := $00ECAD84
               else
                   AColor := clWhite;
          end
          else
               AFont.Color := clBlack;

       end;
     end;
end;

end.
