 unit VendasPdv_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, Buttons, dxExEdtr,
  dxDBEdtr, dxDBGrid, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl,  
  cxPropertiesStore, Grids, DBGrids, cxGraphics, cxControls,
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
  TFrmVendasPdv = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    BtnSalvar: TdxBarButton;
    BtnCancelar: TdxBarButton;
    Actions: TActionList;
    ActIncluir: TAction;
    ActAlterar: TAction;
    ActExcluir: TAction;
    ActLocalizar: TAction;
    ActPost: TAction;
    ActCancel: TAction;
    Bevel1: TBevel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    DsVendedores: TDataSource;
    ActLookUp: TAction;
    ActLocalizarCliente: TAction;
    DsItens: TDataSource;
    BtnAlterar: TdxBarButton;
    ActProdutos: TAction;
    ActEnviaCaixa: TAction;
    ActExcluirProduto: TAction;
    ActLocalizarVendedores: TAction;
    ActConsultaProduto: TAction;
    ActUnitario: TAction;
    ActGarantia: TAction;
    ActNatureza: TAction;
    stgFrmVendasPdv: TcxPropertiesStore;
    Panel4: TPanel;
    LblHora: TcxLabel;
    LblCaixa: TcxLabel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    LblTitulo: TcxLabel;
    b2: TBevel;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label2: TcxLabel;
    BtnPessoa: TcxButton;
    Label3: TcxLabel;
    Label5: TcxLabel;
    RxLabel1: TcxLabel;
    RxLabel2: TcxLabel;
    LblCadastro: TcxLabel;
    Label9: TcxLabel;
    RxLabel3: TcxLabel;
    RxLabel4: TcxLabel;
    RxLabel5: TcxLabel;
    RxLabel6: TcxLabel;
    RxLabel7: TcxLabel;
    RxLabel8: TcxLabel;
    RxLabel9: TcxLabel;
    RxLabel10: TcxLabel;
    RxLabel11: TcxLabel;
    BtnVendedor: TcxButton;
    dxDBEdit1: TdxDBEdit;
    EdDataNota: TdxDBDateEdit;
    cmbvendedor: TdxDBLookupEdit;
    dxDBEdit3: TdxDBEdit;
    EdVendedor: TdxDBEdit;
    EdPessoa: TdxDBEdit;
    CmbTipo: TdxDBPickEdit;
    Panel5: TPanel;
    GRIDITENS: TdxDBGrid;
    GRIDITENSCODIGO: TdxDBGridMaskColumn;
    GRIDITENSNOME: TdxDBGridMaskColumn;
    GRIDITENSPRC_VENDA: TdxDBGridMaskColumn;
    GRIDITENSQUANTIDADE: TdxDBGridColumn;
    GRIDITENSTOTAL: TdxDBGridColumn;
    GRIDITENSVENDEDOR: TdxDBGridColumn;
    Panel6: TPanel;
    Panel3: TPanel;
    Label25: TcxLabel;
    Label27: TcxLabel;
    Label6: TcxLabel;
    Label4: TcxLabel;
    LblItens: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    dxDBEdit8: TdxDBEdit;
    dxDBEdit2: TdxDBEdit;
    RxLabel17: TcxLabel;
    RxLabel18: TcxLabel;
    RxLabel19: TcxLabel;
    RxLabel16: TcxLabel;
    RxLabel13: TcxLabel;
    RxLabel15: TcxLabel;
    RxLabel14: TcxLabel;
    RxLabel12: TcxLabel;
    Bevel2: TBevel;
    GRIDITENSNOME_MARCA: TdxDBGridMaskColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure BtnPessoaClick(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure ActLocalizarClienteExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure GridItensEnter(Sender: TObject);
    procedure EdVendedorExit(Sender: TObject);
    procedure ActProdutosExecute(Sender: TObject);
    procedure ActEnviaCaixaExecute(Sender: TObject);
    procedure CmbTipoEnter(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure ActExcluirProdutoExecute(Sender: TObject);
    procedure EdPessoaExit(Sender: TObject);
    procedure ActLocalizarVendedoresExecute(Sender: TObject);
    procedure BtnVendedorClick(Sender: TObject);
    procedure GRIDITENSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActConsultaProdutoExecute(Sender: TObject);
    procedure EdPessoaEnter(Sender: TObject);
    procedure dxDBEdit3Enter(Sender: TObject);
    procedure EdVendedorEnter(Sender: TObject);
    procedure cmbvendedorEnter(Sender: TObject);
    procedure dxDBEdit3Exit(Sender: TObject);
    procedure cmbvendedorExit(Sender: TObject);
    procedure CmbTipoExit(Sender: TObject);
    procedure AjustaForm ( Formulario: TForm ) ;
    procedure ActUnitarioExecute(Sender: TObject);
    procedure ActGarantiaExecute(Sender: TObject);
    procedure ActNaturezaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LocCli, LocVen: Boolean ;
    ValorCartao : real;
    procedure Calcular_Itens;
  end;

var
  FrmVendasPdv: TFrmVendasPdv;

implementation

uses Application_DM,
     Main,
     Usuarios_DM,
     Funcoes,
     Vendas_Dm,
     VendasPdvItens_Form,
     Clientes_Form,
     Vendedores_Form,
     Localizar_Cliente,
     VendasItens_Form,
     Cadastros_DM,
     SelVendasPdv_Form,
     EntraNumeroInteiro_Form,
     EntraString_Form,
     Pdv_DM,
     EnviaCaixa_FRel,
     TipoFaturaVenda_Form,
     Localizar_Vendedor,
     FaturaVenda_Form,
     EntraNumeroReal_Form,
     Cheque_Venda_Form,
     Financeiro_Dm,
     Cartao_Venda_Form, Localizar_Garantias, Localizar_Natureza, Vendas_DM2;

{$R *.DFM}

procedure TFrmVendasPdv.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
begin
  //
  If dsItens.DataSet.RecordCount > 0 Then
     bReg := dsItens.DataSet.GetBookmark;

  dsItens.DataSet.DisableControls;

  tProdutos := 0;

  dsItens.DataSet.First;

  Itens := 0;

  While Not dsItens.DataSet.Eof Do
  Begin
    tProdutos := tProdutos + dsItens.DataSet.FieldByName('TOTAL'       ).asFloat;
    Itens     := Itens + 1 ;

    dsItens.DataSet.Next;
  End;

  LblItens.Caption := FormatFloat('###,##0.0',itens);

  //Valores dos Itens
  DataSource.DataSet.Edit ;

  DataSource.DataSet.FieldByName('TOTAL' ).asFloat := tProdutos;

  DataSource.DataSet.Post ;

  bReg := Nil ;
  //
  If dsItens.DataSet.RecordCount > 0 Then
     Begin
       dsItens.DataSet.GotoBookmark(bReg);
       dsItens.DataSet.FreeBookmark(bReg);
     End;
  //
  dsItens.DataSet.EnableControls;
end;

procedure TFrmVendasPdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     If MessageDlg('Deseja Realmente Sair da Tela de Vendas?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          //
          If dsItens.DataSet.Tag = 0 Then
          dsItens.Dataset.Close;

          If DataSource.DataSet.Tag = 0 Then
          DataSource.DataSet.Close;

          If dsVendedores.DataSet.Tag = 0 Then
          dsVendedores.DataSet.Close;

          {If DMCadastros.Tag = 0
          then begin
               DMCadastros.Free ;
               DMCadastros := Nil
          end
          else
              DMCadastros.Tag := DMCadastros.Tag - 1;}


          Action := caFree;
          FrmVendasPdv := Nil;
     end
     else begin
          Action := Canone ;
     end;
end;

procedure TFrmVendasPdv.ActIncluirExecute(Sender: TObject);
Var
   Imprime: Boolean ;
begin
  //
  If DataSource.State in dsEditModes Then
     Exit;
  Try

  EdPessoa.SetFocus;
  DataSource.DataSet.Append;


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

procedure TFrmVendasPdv.ActExcluirExecute(Sender: TObject);
Var msg: String;
begin
  //
  If FrmVendasPdv.ActiveControl <> GRIDITENS
  Then
      msg := 'a Fatura '
  Else
      msg := 'e Item ' + DmVendas.VendasPdv_ItensProduto.Value;
  //
  If MessageBox(Handle,PChar('Tem certeza que deseja Excluir est' + msg + ' ?'),
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES
  Then Begin
       If FrmVendasPdv.ActiveControl = GRIDITENS then
       begin
           //Foi Apagado Um Item
           DmVendas.VendasPdv_Itens.DisableControls ;
           DmVendas.VendasPdv_Itens.Delete ;
           Calcular_Itens ;
           DmVendas.VendasPdv_Itens.EnableControls ;
       end
       else
         DmVendas.VendasPdv.Delete ;


       DMApp.Transaction.CommitRetaining;
     End;
end;

procedure TFrmVendasPdv.ActPostExecute(Sender: TObject);
begin
  //
  Try
    DMVendas.VendasPdv_Itens.DataSource := Nil;
    //
    DataSource.DataSet.Post;
    //
    DMVendas.VendasPdv_Itens.DataSource  := DMVendas.dsVendasPdv;
    //
    DMApp.Transaction.CommitRetaining;
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

procedure TFrmVendasPdv.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     Begin
          DataSource.DataSet.Cancel;
     End
     else
         ActFechar.Execute ;
end;

procedure TFrmVendasPdv.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try

    If Not(DsVendedores.DataSet.Active) Then
       DsVendedores.DataSet.Open;

    If Not(DsItens.DataSet.Active) Then
       DsItens.DataSet.Open;

    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;

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
  //
  Datasource.AutoEdit := ActAlterar.Enabled;

  EdPessoa.SetFocus;

  If Not(DataSource.DataSet.State in [DsInsert, DsEdit]) Then
      DataSource.DataSet.Append ;
end;

procedure TFrmVendasPdv.FormCreate(Sender: TObject);
begin
     AjustaForm ( Sender as TForm );

     // Se o Usuário for Supervisor
     If DMUsuarios.Direito = 'SUPERVISOR' Then
        DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
     Else If DMUsuarios.Objeto = Self.Name Then
        AtivaActions(Actions, DMUsuarios.Direito);
     LocCli := False ;
end;

procedure TFrmVendasPdv.AjustaForm ( Formulario: TForm ) ;
Const
     nTamOriginal = 640; // Será o 100% da escala
Var
   nEscala : Double; // Vai me dar o percentual de Transformação escalar
   nPorcento : Integer; // Vai me dar em percentual inteiro o valor
begin
     With Formulario do
     begin
          if nTamOriginal <> Screen.Width
          then begin
               nEscala     := ((Screen.Width-nTamOriginal)/nTamOriginal);
               nPorcento   := Round((nEscala*100) + 100);
               Formulario.Width  := Round(Formulario.Width * (nEscala+1));
               Formulario.Height := Round(Formulario.Height * (nEscala+1));
               Formulario.ScaleBy(nPorcento,100);

               {GRIDITENSCODIGO.Width       := Round(GRIDITENSCODIGO.Width * (nEscala+1));
               GRIDITENSNOME.Width         := Round(GRIDITENSNOME.Width * (nEscala+1));
               GRIDITENSPRC_VENDA.Width    := Round(GRIDITENSPRC_VENDA.Width * (nEscala+1));
               GRIDITENSQUANTIDADE.Width   := Round(GRIDITENSQUANTIDADE.Width * (nEscala+1));
               GRIDITENSTOTAL.Width        := Round(GridItensTotal.Width * (nEscala+1));
               GRIDITENSVENDEDOR.Width     := Round(GRIDITENSVENDEDOR.Width * (nEscala+1));}
          end;
     end;
end;

procedure TFrmVendasPdv.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVendasPdv.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled    := False;
       ActAlterar.Enabled    := False;
       ActExcluir.Enabled    := False;
       BtnSalvar.Enabled     := True;
       BtnCancelar.Enabled   := True;
       ActFechar.Enabled     := False;
       ActGarantia.Enabled   := False;

       RxLabel2.Visible      := false;
       RxLabel10.Visible     := False;
       RxLabel11.Visible     := False;
       RxLabel8.Visible      := False;
       RxLabel4.Visible      := False;
       RxLabel9.Visible      := False;
       RxLabel18.Visible     := False;
       RxLabel19.Visible     := False;
     End
  Else
     Begin
       RxLabel2.Visible      := true;
       RxLabel10.Visible     := true;
       RxLabel11.Visible     := true;
       RxLabel8.Visible      := true;
       RxLabel4.Visible      := true;
       RxLabel9.Visible      := true;
       RxLabel18.Visible     := true;
       RxLabel19.Visible     := true;

       ActIncluir.Enabled    := ActIncluir.Tag = 1;
       ActAlterar.Enabled    := ActAlterar.Tag = 1;
       ActExcluir.Enabled    := ActExcluir.Tag = 1;
       ActGarantia.Enabled   := ActGarantia.Tag = 1;

       BtnSalvar.Enabled     := False;
       BtnCancelar.Enabled   := False;
       ActFechar.Enabled     := True;
     End;
end;

procedure TFrmVendasPdv.ActFecharExecute(Sender: TObject);
begin
      Close;
end;

procedure TFrmVendasPdv.BtnPessoaClick(Sender: TObject);
begin
     IF DmApp.F4_ALTERA = 'S'
     THEN BEGIN
          //
          If ActAlterar.Tag = 0 Then
          Exit;
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Edit;
          //
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmClientes', False);
          { * * * * * }
          //
          FrmVendasPdv.Tag := 1;

          FrmClientes := TFrmClientes.Create(Application);
          FrmClientes.Showmodal ;

          Datasource.DataSet.FieldByName('PESSOA_FJ').asInteger := FrmMain.Codigo_Int;

          DmVendas.SelPessoasFJ.Close ;
          DmVendas.SelPessoasFJ.Open  ;
          //
     END
     ELSE BEGIN
          ActLocalizarCliente.Execute ;
     END;
end;

procedure TFrmVendasPdv.ActLookUpExecute(Sender: TObject);
begin
  If (FrmVendasPdv.ActiveControl = EdPessoa) Then
     BtnPessoa.OnClick(BtnPessoa);
  If (FrmVendasPdv.ActiveControl = cmbVendedor) or (FrmVendasPdv.ActiveControl = EdVendedor)Then
     btnVendedor.OnClick(btnVendedor);
end;

procedure TFrmVendasPdv.ActLocalizarClienteExecute(Sender: TObject);
VAR
   Cod: Integer;
begin
     try
        If ((FrmVendasPdv.ActiveControl = EdPessoa)or(LocCli)or (EdPessoa.Text = ''))and(DataSource.State in [ dsinsert, dsedit ] )
        Then begin
             //Chama a Tela Para Localizar Cliente
             Frm_Localizar_Cliente.DSource.dataset := DmVendas.SelPessoasFJ ;

             if ( Frm_Localizar_Cliente.showmodal = mrOk )
             Then Begin
                  Cod := (Frm_Localizar_Cliente.CampTrecho);
                  DmVendas.VendasPdvPessoa_Fj.Value := Cod ;
             end
             else begin
                  If Frm_Localizar_Cliente.Cad = 'S' THEN
                      BtnPessoa.OnClick(BtnPessoa)
                  else
                      EdPessoa.setfocus ;
             end;
        end;
  Except
  end;
end;

procedure TFrmVendasPdv.ActAlterarExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
     if ( FrmVendasPdv.ActiveControl <> GridItens )
     then begin
          DataSource.DataSet.Edit;
          EdPessoa.SetFocus;
     end;
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
  end;
end;

procedure TFrmVendasPdv.GridItensEnter(Sender: TObject);
begin
     If DataSource.State in dsEditModes
     Then begin
          //
          DataSource.DataSet.Post;
          //
          DMVendas.VendasPdv_Itens.DataSource  := DMVendas.dsVendasPdv;
          //
          DMApp.Transaction.CommitRetaining;

        Panel3.Visible      := False;

        RxLabel11.Visible   := False;
        RxLabel10.Visible   := False;

        RxLabel2.Visible    := False;

        LblCadastro.Visible := False;
        RxLabel6.Visible    := False;

        RxLabel9.Visible    := False;
        RxLabel4.Visible    := False;

        RxLabel2.Visible    := False;
        RxLabel8.Visible    := False;

        FrmVendasPdvItens := TFrmVendasPdvItens.Create(Self);

        FrmVendasPdvItens.Imprime := False ;

        FrmVendasPdvItens.ShowModal;
          //
        Calcular_Itens;

        If FrmVendasPdvItens.Imprime
        then
            ActEnviaCaixa.execute ;

        FrmVendasPdvItens.Free   ;
        FrmVendasPdvItens := Nil ;

        RxLabel11.Visible   := true;
        RxLabel10.Visible   := true;

        RxLabel2.Visible    := true;

        LblCadastro.Visible := true;
        RxLabel6.Visible    := true;

        RxLabel9.Visible    := true;
        RxLabel4.Visible    := true;

        RxLabel2.Visible    := true;
        RxLabel8.Visible    := true;

        Panel3.Visible      := true;
     end;
end;

procedure TFrmVendasPdv.EdVendedorExit(Sender: TObject);
begin
     IF (( EdVendedor.Text = '0' )or( EdVendedor.Text = '' )) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarVendedores.Execute ;
     end;

     If ((Sender as TDxDbEdit).Text <> '') and ( Datasource.DataSet.State in [ dsedit, dsinsert ])
     then
         Perform(WM_NEXTDLGCTL, 0, 0);
     TiraCorFundo( Sender );
end;

procedure TFrmVendasPdv.ActProdutosExecute(Sender: TObject);
begin
    If ( Datasource.DataSet.State = dsBrowse ) and ( not DmVendas.VendasPdvCodigo.isnull )
    Then begin
        //
        RxLabel2.Visible     := False;
        Panel3.Visible       := false;
        LblCadastro.Visible  := False;

        FrmVendasPdvItens := TFrmVendasPdvItens.Create(Self);

        FrmVendasPdvItens.Imprime := False ;

        FrmVendasPdvItens.ShowModal;
        //
        Calcular_Itens;

        If FrmVendasPdvItens.Imprime
        then
            ActEnviaCaixa.execute ;


        FrmVendasPdvItens.Free   ;
        FrmVendasPdvItens := Nil ;

        LblCadastro.Visible  := true;
        RxLabel2.Visible     := true;
        Panel3.Visible       := true;
    end;
end;

procedure TFrmVendasPdv.ActEnviaCaixaExecute(Sender: TObject);

          Procedure Fecha (Numero: Integer);
          var
             Codigo: String;
          Begin
               //----------------------
               if DmApp.PDV_PARC_VENDA = 'S' then
               begin
                 //Seta Quem Deverá Ser Aberto
               //  FaturaVendas.open;
                 DMVendas2.NDocto                   := DmVendas.VendasPdvCodigo.Value ;
            //     DMVendas2.DsVendas.DataSet         := DmVendas2.FaturaVendas ;
            //     FrmFaturaVenda.DataSource.DataSet  := DmVendas2.FaturaVendas ;
            //     DmVendas2.FaturaVendas.close;

                 //se a venda for condicional so permito que ela seja enviada a vista para o caixa
                 frmFaturaVenda.CmbFormaPgto.Properties.ReadOnly := false;
                 frmFaturaVenda.BtnForma.Enabled := true;
                 if frmFaturaVenda.ShowModal <> mrok then
                   exit;
               end;

               Codigo := DmaPP.Envia_Caixa(DmApp.Cnpj,DmVendas.VendasPdvCodigo.Value);
               if Codigo <> '' then
               begin
                 showmessage('O Produto de Código ' + Codigo + ', Não Possui Estoque Suficiente, Verifique!');
                 DmVendas.VendasPdv_Itens.locate ( 'PRODUTO', Codigo, [] );
                 exit;
               end;

              //Se o local de fatura for no caixa ou caso seja uma venda condi
              if ((DmApp.LOCAL_FATURA = 'C') or (Trim(CmbTipo.Text) <> 'Con')) then
              begin
                FRelEnviaCaixa              := TFRelEnviaCaixa.Create(Self);
                FRelEnviaCaixa.PedidoNumero := DmVendas.VendasPdvCodigo.Value ;
                FRelEnviaCaixa.Tipo         := 'FATURA' ;
                FRelEnviaCaixa.Showmodal ;
              end
              else if (DmApp.LOCAL_FATURA <> 'C') then //faturando no balcao
              begin

                DmApp.Encerra_Venda(DmApp.Cnpj, Numero, DmApp.DataCaixa, DmApp.UsuarioCaixa, DmApp.ContaCaixa, DmApp.TurnoCaixa,'');

                DmApp.Local                     := DmVendas.VendasPdvLocal.Value   ;
                FrmTipoFaturaVenda              := TFrmTipoFaturaVenda.Create(Self);
                FrmTipoFaturaVenda.PedidoNumero := DmVendas.VendasPdvCodigo.Value  ;
                FrmTipoFaturaVenda.Tipo         := 'FATURA' ;
                FrmTipoFaturaVenda.Showmodal    ;

                //---------------------Desdobrando Cheque -------------------//
                if DmApp.DIG_CHEQUE_VENDA = 'S' then
                begin
             //     if arredonda(DmVendas2.FaturaVendasCHEQUE.Value, 2) > 0  then
                  begin
                    FrmCheque_Venda := TFrmCheque_Venda.Create(Self);
                    FrmCheque_Venda.ShowModal;
                  end;
                end;

                //---------------------Desdobrando Cartão
                if DmApp.DIG_CARTAO_VENDA = 'S' then
                begin
              //    if arredonda(DmVendas2.FaturaVendasCARTAO.Value, 2) > 0 then
                  begin
                     FrmCartao_Venda := TFrmCartao_Venda.Create(Self);
                     FrmCartao_Venda.VlrCartao := ValorCartao;
                     FrmCartao_Venda.ShowModal;
                     FrmCartao_Venda.Free ;
                     FrmCartao_Venda := Nil;
                  end
                end
              end;

              EdPessoa.SetFocus;
              DataSource.DataSet.Close ;
              DataSource.DataSet.Open  ;
              DataSource.DataSet.Append;
          end;

Var
   Numero: Integer;
begin

     If Datasource.DataSet.State in [ dsedit, dsinsert ] Then
        Datasource.DataSet.Post;

     if (arredonda( DmVendas.VendasPdvTotal.Value,2 ) <= 0 ) then
     begin
       Showmessage('Não Existem Produtos para Faturamento, Verifique!');
       Exit;
     end;

     if DmVendas.VendasPdvCODIGO.AsInteger = 0  then
     begin
        Application.MessageBox('Impossível realizar fechamento. Selecione um pedido válido','Aviso',mb_ok+mb_iconerror);
        exit;
     end;

     Fecha (DmVendas.VendasPdvCODIGO.AsInteger);
     EdPessoa.SetFocus ;
end;

procedure TFrmVendasPdv.CmbTipoEnter(Sender: TObject);
begin
  CorFundo( Sender );
  (Sender as TdxDBPickEdit).Text := (Sender as TdxDBPickEdit).DataSource.DataSet.FieldByName((Sender as TdxDBPickEdit).DataField).Text;
  (Sender as TdxDBPickEdit).SelectAll;
end;

procedure TFrmVendasPdv.ActLocalizarExecute(Sender: TObject);
Var
   Aux: Integer;
begin
     If DataSource.DataSet.State in [ DsInsert, DsEdit ]
     then
         DataSource.DataSet.Cancel;

     //
     Application.CreateForm(TFrmEntraNumeroInteiro, FrmEntraNumeroInteiro);
     FrmEntraNumeroInteiro.LblTitulo.Caption := 'Venda';
     FrmEntraNumeroInteiro.LBLPROMPT.Caption := 'Número'   ;

     IF FrmEntraNumeroInteiro.ShowModal = MROK
     THEN BEGIN
          Aux := (FrmEntraNumeroInteiro.Numero);
     END;

     FrmEntraNumeroInteiro.Free ;
     FrmEntraNumeroInteiro := Nil;

     DataSource.DataSet.Close ;
     DMVendas2.NDocto   := Aux;
     DataSource.DataSet.Open  ;

     If DataSource.DataSet.FieldByName ('CODIGO').IsNull
     Then Begin
          Showmessage('Venda Inexistente');
          DataSource.DataSet.Append ;
     end
     ELSE
         EdPessoa.SETFOCUS ;
end;

procedure TFrmVendasPdv.ActExcluirProdutoExecute(Sender: TObject);
begin
     If not DmVendas.VendasPdv_ItensProduto.IsNull
     Then Begin
          If Pergunta ('Deseja Excluir Este Produto ?' ) = 'S'
          then begin
               DmVendas.VendasPdv_Itens.DisableControls ;
               DmVendas.VendasPdv_Itens.Delete ;
               DmVendas.VendasPdv_Itens.EnableControls ;
               Calcular_Itens;
          end;
     end;
end;

procedure TFrmVendasPdv.EdPessoaExit(Sender: TObject);
begin
     IF ( (EdPessoa.Text = '0') or (EdPessoa.Text = '') ) AND( DataSource.State in [ dsinsert, dsedit ])
     then Begin
          ActLocalizarCliente.Execute ;
     end;
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmVendasPdv.ActLocalizarVendedoresExecute(Sender: TObject);
begin
     try
        If ((FrmVendasPdv.ActiveControl = EdVendedor)or(LocVen)or( EdVendedor.Text = '' ))AND( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             Locven := False ;
             //Chama a Tela Para Localizar Terceiros
             Application.CreateForm(TFrm_Localizar_Vendedores, Frm_Localizar_Vendedores);

             Frm_Localizar_Vendedores.DSource.dataset := DmVendas.SelVendedor ;

             if ( Frm_Localizar_Vendedores.showmodal = mrOk )
             Then Begin
                  DmVendas.VendasPdvVendedor.Value := (Frm_Localizar_Vendedores.CampTrecho) ;
             end
             else begin
                  If Frm_Localizar_Vendedores.Cad = 'S' THEN
                      btnVendedor.OnClick(btnVendedor)
                  else
                      EdVendedor.setfocus ;
             end;

             Frm_Localizar_Vendedores.free   ;
             Frm_Localizar_Vendedores := Nil ;
        end;
  Except
  end;
end;

procedure TFrmVendasPdv.BtnVendedorClick(Sender: TObject);
begin
  //
  If ActAlterar.Tag = 0 Then
     Exit;
  //
  If Datasource.DataSet.State = dsBrowse Then
     Datasource.DataSet.Edit;
  //
  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag + 1;

{  if DMCadastros = nIL
  THEN
      DMCadastros := TDMCadastros.Create(Self)
  ELSE
      DMCadastros.tAG := DMCadastros.tAG + 1;}

  { * * * * * }
  DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmVendedores', False);
  { * * * * * }

  DsVendedores.DataSet.Tag := DsVendedores.DataSet.Tag - 1;
  //
  FrmVendedores := TFrmVendedores.Create(Application);

  FrmVendedores.Showmodal ;

  Datasource.DataSet.FieldByName('VENDEDOR').asInteger := FrmMain.Codigo_Int;
  EdVendedor.SetFocus;

  DsVendedores.DataSet.Close;
  DsVendedores.DataSet.Open;
  //
end;

procedure TFrmVendasPdv.GRIDITENSKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     If Key = VK_RETURN Then
        ActIncluir.Execute;
     if (Key=VK_DOWN) Then
        Perform(WM_NEXTDLGCTL, 0, 0);
     if (key=VK_UP) then
        Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVendasPdv.ActConsultaProdutoExecute(Sender: TObject);
begin
     FrmMain.ActConsultaProduto.execute ;
end;

procedure TFrmVendasPdv.EdPessoaEnter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmVendasPdv.dxDBEdit3Enter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmVendasPdv.EdVendedorEnter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmVendasPdv.cmbvendedorEnter(Sender: TObject);
begin
     CorFundo( Sender );

end;

procedure TFrmVendasPdv.dxDBEdit3Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );

end;

procedure TFrmVendasPdv.cmbvendedorExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );

end;

procedure TFrmVendasPdv.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );

end;

procedure TFrmVendasPdv.ActUnitarioExecute(Sender: TObject);
begin
     If Not ( DsItens.State in [ dsInsert, DsEdit ])
     then begin
          DsItens.DATASET.EDIT ;
     end;

     Application.CreateForm(TFrmEntraNumeroReal, FrmEntraNumeroReal);
     FrmEntraNumeroReal.LblTitulo.Caption := 'Digita Unitário';
     FrmEntraNumeroReal.LBLPROMPT.Caption := 'Unit'   ;

     IF FrmEntraNumeroReal.ShowModal = MROK
     THEN BEGIN
          DmVendas.VendasPdv_ItensPRC_UNITARIO.Value := (FrmEntraNumeroReal.Numero) ;
     END;

     FrmEntraNumeroReal.Free ;
     FrmEntraNumeroReal := Nil;

     DsItens.dataset.post ;

     Calcular_Itens;
end;

procedure TFrmVendasPdv.ActGarantiaExecute(Sender: TObject);
Var
   Codigo: Integer;
begin
     try
        With DmVendas do
        begin
             Fat_Vendas_Garantias.close ;
             Fat_Vendas_Garantias.ParamByName ( 'CNPJ'   ).AsString  := DmApp.Cnpj ;
             Fat_Vendas_Garantias.ParamByName ( 'CODIGO' ).AsInteger := vendaspdvcodigo.Value ;
             Fat_Vendas_Garantias.open ;

             Fat_Vendas_Garantias.FetchAll ;

             if Fat_Vendas_Garantias.RecordCount <= 0
             then begin
                  //Chama a Tela Para Localizar Terceiros
                  Application.CreateForm(TFrm_Localizar_Garantias, Frm_Localizar_Garantias);

                  Frm_Localizar_Garantias.DSource.dataset := DmVendas.SelGarantias ;

                  if ( Frm_Localizar_Garantias.showmodal = mrOk )
                  Then Begin
                       CODIGO := (Frm_Localizar_Garantias.CampTrecho) ;
                  end;

                  Frm_Localizar_Garantias.free   ;
                  Frm_Localizar_Garantias := Nil ;

                  if ( codigo > 0 )
                  then begin
                       with DmVendas do
                       begin
                            Fat_Vendas_Garantias.Open   ;

                            Fat_Vendas_Garantias.Append ;

                            Fat_Vendas_Garantiascodigo.value   := vendaspdvcodigo.Value ;
                            Fat_Vendas_Garantiascnpj.value     := dmapp.cnpj            ;
                            Fat_Vendas_GarantiasGARANTIA.VALUE := Codigo                ;

                            Fat_Vendas_Garantias.Post   ;

                            Fat_Vendas_Garantias.Close  ;
                       end;

                       if messagedlg ( 'Imprimir a Garantia?', MtError, [MbOk, MbCancel],0 ) = Mrok
                       then begin
                            DmVendas.Imprime_Garantia ( DmVendas.vendaspdvcodigo.Value, CODIGO );
                       end;
                  end;
             end
             else begin
                  if messagedlg ( 'Imprimir a Garantia?', MtError, [MbOk, MbCancel],0 ) = Mrok
                  then begin
                       DmVendas.Imprime_Garantia ( DmVendas.vendaspdvcodigo.Value, Fat_Vendas_GarantiasGARANTIA.value );
                  end;
             end;
        end;
  Except
  end;
end;

procedure TFrmVendasPdv.ActNaturezaExecute(Sender: TObject);
begin
  try
        If Not ( DataSource.State in [ dsinsert, dsedit ])
        Then begin
             DataSource.DataSet.edit ;
        end ;

        //Chama a Tela Para Localizar Terceiros
        Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);

        Frm_Localizar_Natureza.DSource.dataset := DmVendas.SelNatureza ;

        if ( Frm_Localizar_Natureza.showmodal = mrOk )
        Then Begin
             DmVendas.VendasPdvNATUREZA.Value := (Frm_Localizar_Natureza.CampTrecho) ;
        end;

        Frm_Localizar_Natureza.free   ;
        Frm_Localizar_Natureza := Nil ;
  Except
  end;
end;

end.
