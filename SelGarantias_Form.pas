 unit SelGarantias_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar,   dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, dxDBEdtr, dxExEdtr,
  Buttons,     dxTL, dxDBCtrl, dxDBGrid,
  dxDBTLCl, dxGrClms,  IBquery, RdPrint,
  cxPropertiesStore, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, Menus, dxSkinsdxBarPainter,
  cxClasses, cxButtons, cxPC, cxLabel;

type
  TFrmSelGarantias = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    Navigator: TdxBarDBNavigator;
    BarMgr: TdxBarManager;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    Bevel1: TBevel;
    b2: TBevel;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DataSource: TDataSource;
    LblTitulo: TcxLabel;
    pc: TcxPageControl;
    dxTabSheet1: TcxTabSheet;
    Shape1: TShape;
    btnAlterar: TdxBarButton;
    dsClientes: TDataSource;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    edNDocto: TdxEdit;
    Label4: TcxLabel;
    opIncluir: TdxBarButton;
    kdofoco: TAction;
    Image1: TImage;
    GRID: TdxDBGrid;
    ActExcluir: TAction;
    BntExcluir: TdxBarButton;
    dxTabSheet2: TcxTabSheet;
    CLGRID: TdxDBGrid;
    CLGRIDNOME_RAZAO: TdxDBGridMaskColumn;
    CLGRIDFONE: TdxDBGridColumn;
    CLGRIDFANTASIA: TdxDBGridColumn;
    CLGRIDDOCUMENTO: TdxDBGridColumn;
    CLGRIDCODIGO: TdxDBGridColumn;
    ActPaginaDn: TAction;
    ActPagUp: TAction;
    CLGRIDBLOQUEADO: TdxDBGridColumn;
    CmbCliente: TdxButtonEdit;
    lblnome: TcxLabel;
    Panel4: TPanel;
    BtnFaturarVenda: TcxButton;
    RzBitBtn2: TcxButton;
    RzBitBtn3: TcxButton;
    BtnExtornaVenda: TcxButton;
    GRIDPESSOA_FJ: TdxDBGridMaskColumn;
    GRIDCODIGO: TdxDBGridMaskColumn;
    GRIDDATA: TdxDBGridDateColumn;
    GRIDVALIDADE: TdxDBGridDateColumn;
    GRIDTOTAL: TdxDBGridMaskColumn;
    GRIDFECHADO: TdxDBGridMaskColumn;
    GRIDOBSERVACAO: TdxDBGridMaskColumn;
    GRIDNOME_RAZAO: TdxDBGridMaskColumn;
    GRIDNOME_FORMA: TdxDBGridMaskColumn;
    GRIDNOME_VENDEDOR: TdxDBGridMaskColumn;
    GRIDVENDEDOR: TdxDBGridMaskColumn;
    GRIDVLR_TOTAL: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC: TdxDBGridMaskColumn;
    GRIDDESC_ACRESC_2: TdxDBGridMaskColumn;
    GRIDCLIENTE: TdxDBGridMaskColumn;
    GRIDPESO: TdxDBGridMaskColumn;
    GRIDVOLUME: TdxDBGridMaskColumn;
    GRIDFORMA: TdxDBGridMaskColumn;
    ActListagem: TAction;
    stgFrmSelGarantias: TcxPropertiesStore;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure EdDataNotaKeyPress(Sender: TObject; var Key: Char);
    procedure Panel2Exit(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel2Enter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure GRIDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActPaginaDnExecute(Sender: TObject);
    procedure ActPagUpExecute(Sender: TObject);
    procedure CmbClienteEnter(Sender: TObject);
    procedure edDtInicialEnter(Sender: TObject);
    procedure edDtFinalEnter(Sender: TObject);
    procedure edNDoctoEnter(Sender: TObject);
    procedure CmbClienteExit(Sender: TObject);
    procedure edDtInicialExit(Sender: TObject);
    procedure edDtFinalExit(Sender: TObject);
    procedure edNDoctoExit(Sender: TObject);
    procedure CmbClienteButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure ActListagemExecute(Sender: TObject);
  private
    { Private declarations }
    Procedure Filtrar;
  public
    { Public declarations }
  end;

var
  FrmSelGarantias: TFrmSelGarantias;
  FinalArq, FinalCli: Boolean ;
  Chamou : Boolean ;

implementation

uses Servicos_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Application_DM,
     LocalizarProd_DM,
     FaturaVenda_Form,
     Splash_Form,
     Localizar_Cliente,
     garantias_Form,
     Tipo_Impressora_Form,
     EnviaTrocaCaixa_FRel, Localizar_Produto_Cadastro_Auto ;


  {$R *.DFM}

Procedure TFrmSelGarantias.Filtrar;
Var
   Cont: Integer ;
Begin
  //
  If DataSource.DataSet.Active Then
     DataSource.DataSet.Close;

  With DMSERVICOS do
  begin
       Cont := 0;

       Selgarantias.Sql.Clear    ;
       Selgarantias.Params.Clear ;

       Selgarantias.Params.CreateParam (FtString,  'CNPJ'       , PtInput);
       Selgarantias.Params.CreateParam (FtInteger, 'ORCAMENTO'  , PtInput);

       Selgarantias.Sql.Add ( ' SELECT * FROM VER_FAT_garantias ( :CNPJ, :ORCAMENTO ) ' );

       Selgarantias.ParamByName ( 'CNPJ' ).AsString := DmApp.Cnpj ;
       //
       If Trim(edNDocto.Text) <> ''
       Then begin
            Selgarantias.ParamByName ( 'ORCAMENTO' ).AsInteger := strtoint(trim(edNDocto.Text));
       end
       ELSE BEGIN
            Selgarantias.ParamByName ( 'ORCAMENTO' ).AsInteger := 0;
       END;

       Selgarantias.Params.CreateParam (FtString, 'ENV', PtInput);

       Selgarantias.Sql.Add ( ' Where ENVIADA_CX = :ENV ' );

       Selgarantias.ParamByName ( 'ENV' ).AsString := 'N' ;

       Cont := 1; 

       //
       If trim(CmbCliente.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 Selgarantias.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 Selgarantias.Sql.Add ( ' Where PESSOA_FJ = :CLIENTE ' );

                 Selgarantias.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END
            ELSE BEGIN
                 Selgarantias.Params.CreateParam (FtInteger, 'CLIENTE', PtInput);

                 Selgarantias.Sql.Add ( ' And PESSOA_FJ = :CLIENTE ' );

                 Selgarantias.ParamByName ( 'CLIENTE' ).AsInteger := strtoint(trim(CmbCliente.text));

                 Cont := 1;
            END;
       end;

       //
       If edDtInicial.Text <> '  /  /    '
       Then begin
            If Cont = 0
            then begin
                 Selgarantias.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 Selgarantias.Sql.Add ( ' Where DATA >= :DTINI ' );

                 Selgarantias.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 Selgarantias.Params.CreateParam (FtDate, 'DTINI', PtInput);

                 Selgarantias.Sql.Add ( ' And DATA >= :DTINI ' );

                 Selgarantias.ParamByName ( 'DTINI' ).AsDate := edDtInicial.Date;
            end;
       end ;

       //
       If edDtFinal.Text <> '  /  /    '
       Then Begin
            If Cont = 0
            then begin
                 Selgarantias.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 Selgarantias.Sql.Add ( ' Where DATA <= :DTFIM ' );

                 Selgarantias.ParamByName ( 'DTFIM' ).AsDate := edDtInicial.Date;

                 Cont := 1;
            end
            else begin
                 Selgarantias.Params.CreateParam (FtDate, 'DTFIM', PtInput);

                 Selgarantias.Sql.Add ( ' And DATA <= :DTFIM ' );

                 Selgarantias.ParamByName ( 'DTFIM' ).AsDate := edDtFinal.Date;
            end;
       end;

       //Nome do cliente
       Selgarantias.Sql.Add ( ' order by NOME_RAZAO ' );
       //
  end;

  //
  DataSource.DataSet.Open;

End;

procedure TFrmSelGarantias.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Sair da Seleção de garantias?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          If DataSource.DataSet.Tag = 0 Then
             DataSource.DataSet.Close;

          If dsClientes.DataSet.Tag = 0 Then
          dsClientes.DataSet.Close;


          FrmFaturaVenda.Free   ;
          FrmFaturaVenda := Nil ;

          //
          Frm_Localizar_Cliente.Free ;
          Frm_Localizar_Cliente := Nil ;

          FrmLocProdutoCadastro_Auto.Free    ;
          FrmLocProdutoCadastro_Auto := Nil  ;

          FrmMain.PnlClient.Visible := True;

          Action := caFree;
          FrmSelgarantias := Nil;

     end
     else begin
          Action := CaNone ;
     end;
end;

procedure TFrmSelGarantias.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );
     //
     Try
         If Not(dsClientes.DataSet.Active) Then
           dsClientes.DataSet.Open;

         ( dsClientes.DataSet as TIbQuery ).FetchAll ;  

         FinalArq := False ;
         FinalCli := False ;

         //Cria o Formulario de Localizar Cliente
         Application.CreateForm(TFrm_Localizar_Cliente, Frm_Localizar_Cliente) ;

         //localizar produtos
         If FrmLocProdutoCadastro_Auto = Nil then
            FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Application) ;

         cmbCliente.SetFocus;
     Except
           On E:EDataBaseError Do
           Begin
                MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
                Exit;
           End
           Else Begin
                MessageDlg('Ocorreu um Erro não identificado pelo Sistema !',MtError,[MbOk],0);
                Exit;
           End;
     End;

     IF DmApp.PDV_PARC_VENDA = 'S'
     THEN BEGIN
//          If FrmFaturaVenda = Nil
//          then
//              FrmFaturaVenda := TFrmFaturaVenda.Create(Application);
     END;

     IF (DmApp.UsrBlc = 'S') and ( Not Chamou )
     THEN BEGIN
          ActIncluir.Execute ;
          Chamou := True ;
     END
     ELSE BEGIN
          cmbCliente.SetFocus;
     END;
end;

procedure TFrmSelGarantias.FormCreate(Sender: TObject);
begin
  //
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmSelGarantias.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
       If Self.ActiveControl = pc Then
          Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmSelGarantias.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
end;

procedure TFrmSelGarantias.DataSourceStateChange(Sender: TObject);
begin
  //
  If Navigator.DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActFechar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActFechar.Enabled    := True;
     End;
end;

procedure TFrmSelGarantias.ActFecharExecute(Sender: TObject);
begin
  If pc.ActivePageIndex <> 0 Then
     pc.ActivePageIndex := 0
  Else
     Begin
       If FrmSelgarantias.FormStyle = fsMDIChild Then
          FrmMain.opFechar.OnClick(FrmMain.opFechar)
       Else
          Close;
     End;
end;

procedure TFrmSelGarantias.btnFiltrarClick(Sender: TObject);
begin
  //FilterDialog.Execute;
  DMApp.Filtrar(DataSource);
end;

procedure TFrmSelGarantias.EdDataNotaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = '-' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date -1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
  If Key = '+' Then
     Begin
       (Sender as TdxDBDateEdit).Date := (Sender as TdxDBDateEdit).Date +1;
       (Sender as TdxDBDateEdit).SelectAll;
       Key := #0;
     End;
end;

procedure TFrmSelGarantias.Panel2Exit(Sender: TObject);
begin
  Filtrar;
end;

procedure TFrmSelGarantias.ActIncluirExecute(Sender: TObject);
begin
  //
  DMSERVICOS.NDocto   := 0;
  DMSERVICOS.Tag      := 1;
  //
  Frmgarantias := TFrmgarantias.Create(Self);
  Frmgarantias.Showmodal ;
  Chamou := False ;
end;

procedure TFrmSelGarantias.ActAlterarExecute(Sender: TObject);
begin
     If FrmSelgarantias.ActiveControl = GRID
     THEN BEGIN
          //
          If (Not DataSource.DataSet.Active) Or
             (DataSource.DataSet.RecordCount = 0) Then
          Begin
               ShowMessage('Você deve selecionar uma Nota para alterá-la !');
               cmbCliente.SetFocus;
               Exit;
          End;
          //
          DMSERVICOS.NDocto   := DataSource.DataSet.FieldByName('CODIGO').asInteger;
          //
          Frmgarantias := TFrmgarantias.Create(Self);

          DMSERVICOS.garantias.Open ;
          DMSERVICOS.garantias.Edit ;

          Frmgarantias.Showmodal ;
          Chamou := False ;
     END;
end;

procedure TFrmSelGarantias.FormActivate(Sender: TObject);
begin
  Try
    If FrmSplash <> Nil Then
    Begin
       FrmSelgarantias.Update;
       Sleep(2000);
       FrmSplash.Close;
       FrmSplash.Free;
       FrmSplash := Nil;
    End;

  Except
  End;
end;

procedure TFrmSelGarantias.Panel2Enter(Sender: TObject);
begin
  DataSource.DataSet.Close;
end;

procedure TFrmSelGarantias.ActExcluirExecute(Sender: TObject);
begin
     If MessageDlg ('Excluir Esta Troca?',MtInformation,[MbOk, MbCancel],1) = MrOk
     then begin
          DmApp.Exclui_Troca ( DmApp.Cnpj, DataSource.DataSet.fieldbyname('Codigo').Value );
          DataSource.DataSet.Close ;
          DataSource.DataSet.Open  ;
     END;
end;

procedure TFrmSelGarantias.GRIDKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = 13
     then
         ActAlterar.Execute ;
end;

procedure TFrmSelGarantias.ActPaginaDnExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelGarantias.ActPagUpExecute(Sender: TObject);
begin
     If PC.ActivePageIndex = 0
     THEN
         PC.ActivePageIndex := 1
     ELSE
         PC.ActivePageIndex := 0;
end;

procedure TFrmSelGarantias.CmbClienteEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmSelGarantias.edDtInicialEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelGarantias.edDtFinalEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelGarantias.edNDoctoEnter(Sender: TObject);
begin
     CorFundo ( Sender );

end;

procedure TFrmSelGarantias.CmbClienteExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     With DMSERVICOS do
     begin
          If Trim(CmbCliente.Text) <> ''
          then begin
               If SelPessoasFJ.locate ( 'CODIGO', CmbCliente.Text, [] )
               then begin
                    CmbCliente.Text  := DMSERVICOS.SelPessoasFJCodigo.Text      ;
                    lblnome.Caption  := DMSERVICOS.SelPessoasFJNOME_RAZAO.value ;
               end
               else begin
                    CmbCliente.Text  := '' ;
                    lblnome.Caption  := '' ;
               end;
          end
          else begin
               CmbCliente.Text  := ''  ;
               lblnome.Caption  := ''  ;
          end;
     end;
end;

procedure TFrmSelGarantias.edDtInicialExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelGarantias.edDtFinalExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelGarantias.edNDoctoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

end;

procedure TFrmSelGarantias.CmbClienteButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Frm_Localizar_Cliente.DSource.dataset := DMSERVICOS.SelPessoasFJ ;

     if ( Frm_Localizar_Cliente.showmodal = mrOk )
     Then Begin
          CmbCliente.Text := IntToStr(Frm_Localizar_Cliente.CampTrecho)    ;
          lblnome.Caption := DMSERVICOS.SelPessoasFJNOME_RAZAO.value ;
     end
end;

procedure TFrmSelGarantias.ActListagemExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
     Codigo := DataSource.DataSet.FieldByName('CODIGO').asInteger ;

     if codigo > 0
     then begin
          If DmApp.Sel_Impressora = 'S'
          THEN BEGIN
               FrmTipoImpressora := TFrmTipoImpressora.Create(Self);

               FrmTipoImpressora.Showmodal ;

               FRelEnviaTrocaCaixa              := TFRelEnviaTrocaCaixa.Create(Self);

               FRelEnviaTrocaCaixa.LblTipo.Visible := True ;

               If FrmTipoImpressora.CkMatricial.Checked
               THEN BEGIN
                    FRelEnviaTrocaCaixa.Print.IMPRESSORA := epson ;
                    FRelEnviaTrocaCaixa.LblTipo.Caption := 'Impressora Matricial';
               END
               ELSE BEGIN
                    FRelEnviaTrocaCaixa.Print.IMPRESSORA := Hp ;
                    FRelEnviaTrocaCaixa.LblTipo.Caption  := 'Impressora Jato de Tinta';
               END;

               FrmTipoImpressora.Free   ;
               FrmTipoImpressora := Nil ;
          END
          ELSE BEGIN
               FRelEnviaTrocaCaixa                 := TFRelEnviaTrocaCaixa.Create(Self);
               FRelEnviaTrocaCaixa.LblTipo.Visible := false ;
          END;

          FRelEnviaTrocaCaixa.Tipo         := 'TROCA' ;
          FRelEnviaTrocaCaixa.PedidoNumero := Codigo  ;
          FRelEnviaTrocaCaixa.Showmodal ;

          FRelEnviaTrocaCaixa.Free   ;
          FRelEnviaTrocaCaixa := Nil ;
     end;
end;

end.
