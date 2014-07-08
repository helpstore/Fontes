 unit VendasPdvItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, IBCustomDataSet, IBQuery;

type
  TFrmVendasPdvItens = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edQtdade: TdxDBEdit;
    edPrcUnit: TdxDBCalcEdit;
    DataSource: TDataSource;
    dsProdutos: TDataSource;
    edPrcTotal: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    ActLista: TActionList;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label4: TcxLabel;
    LblTotal: TcxLabel;
    LblContagem: TcxLabel;
    Label7: TcxLabel;
    BtnQuantidade: TcxButton;
    ActQuantidade: TAction;
    edProduto: TdxDBEdit;
    RxLabel8: TcxLabel;
    RxLabel2: TcxLabel;
    ActImprimir: TAction;
    Bevel1: TBevel;
    ActUnitario: TAction;
    RxLabel1: TcxLabel;
    RxLabel3: TcxLabel;
    Label11: TcxLabel;
    CMBpessoa: TdxDBButtonEdit;
    dxDBEdit2: TdxDBEdit;
    GridItensColumn6: TdxDBGridColumn;
    EdServico: TdxDBMemo;
    EDGRADE: TdxDBEdit;
    EDNUMERO: TdxDBEdit;
    ActLookUp: TAction;
    ActLocalizarGrade: TAction;
    ActLocalizarNumero: TAction;
    GridItensNOME_MARCA: TdxDBGridMaskColumn;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure ActQuantidadeExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure ActImprimirExecute(Sender: TObject);
    procedure AjustaForm ( Formulario: TForm ) ;
    procedure ActUnitarioExecute(Sender: TObject);
    procedure edPrcUnitEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure CMBpessoaButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure CMBpessoaExit(Sender: TObject);
    procedure EdServicoExit(Sender: TObject);
    procedure ActLookUpExecute(Sender: TObject);
    procedure ActLocalizarGradeExecute(Sender: TObject);
    procedure ActLocalizarNumeroExecute(Sender: TObject);
    procedure EDGRADEExit(Sender: TObject);
    procedure EDGRADEEnter(Sender: TObject);
  private
    { Private declarations }
    procedure Calcular_Itens;

  public
    { Public declarations }
    ULTLINHA : INTEGER ;
    LocProd  : Boolean ;
    Imprime  : Boolean ;
    Autorizado: Boolean;
  end;

var
  FrmVendasPdvItens: TFrmVendasPdvItens;

implementation

uses Vendas_DM, Application_DM, VendasPdv_Form, Funcoes, LocalizarProd_DM,
  EntraNumeroReal_Form, Localizar_Vendedor, Localizar_Grade, Localizar_Produto_Cadastro_Auto,
  Vendas_DM2;

{$R *.DFM}

procedure TFrmVendasPdvItens.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
    Contagem : Extended;
begin
  tProdutos := 0;
  Itens := 0;
  Contagem := 0;
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DmVendas.VendasPdv_Itens.GetBookmark;

  DmVendas.VendasPdv_Itens.DisableControls;
  if ( DataSource.state in [ dsinsert, dsedit ] ) then
    DmVendas.VendasPdv_Itens.Cancel ;

  DmVendas.VendasPdv_Itens.First;
  while not DmVendas.VendasPdv_Itens.Eof do
  begin
    tProdutos := tProdutos + DmVendas.VendasPdv_Itens.FieldByName('TOTAL').asFloat;
    Contagem  := Contagem + DmVendas.VendasPdv_Itens.FieldByName('QUANTIDADE').asFloat;
    Itens     := Itens + 1;
    DmVendas.VendasPdv_Itens.Next;
  end;

  LblItens.Caption := FormatFloat('###,##0',itens);
  LblContagem.Caption := FormatFloat('###,##0', Contagem);
  LblTotal.Caption := FormatFloat('###,###,##0.00',TProdutos);

  If DmVendas.VendasPdv_Itens.RecordCount > 0 Then
  begin
    DmVendas.VendasPdv_Itens.GotoBookmark(bReg);
    DmVendas.VendasPdv_Itens.FreeBookmark(bReg);
  End;

  DmVendas.VendasPdv_Itens.EnableControls;
end;


procedure TFrmVendasPdvItens.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmVendasPdvItens.FormCreate(Sender: TObject);
begin
     AjustaForm ( Sender as TForm );

     DmVendas.Qntde_Pdv := 1;
     ULTLINHA := 0 ;

     if DmaPP.PDV_DIGITA_QNTDE = 'S' then
       ActQuantidade.Enabled := true
     else
       ActQuantidade.Enabled := false;

     If DmaPP.DIGITA_VEND_PDV = 'S' then
       CMBpessoa.Enabled := true
     else
       CMBpessoa.Enabled := false;
end;

procedure TFrmVendasPdvItens.AjustaForm ( Formulario: TForm ) ;
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
               Formulario.ScaleBy(nPorcento,100);
               GridItensPRODUTO.Width       := Round(GridItensPRODUTO.Width * (nEscala+1));
               GridItensNome_Produto.Width  := Round(GridItensNome_Produto.Width * (nEscala+1));
               GridItensQUANTIDADE.Width    := Round(GridItensQUANTIDADE.Width * (nEscala+1));
               GridItensPRC_UNITARIO.Width  := Round(GridItensPRC_UNITARIO.Width * (nEscala+1));
               GridItensTotal.Width         := Round(GridItensTotal.Width * (nEscala+1));
          end;
     end;
end;

procedure TFrmVendasPdvItens.ActSalvarExecute(Sender: TObject);
begin

  Try
     If DataSource.State in [ dsinsert, dsedit ] then
     begin  //
       DmVendas.VendasPdv_Itens.Post;
       Calcular_Itens ;
       DmVendas.VendasPdv_Itens.Append ;
       LocProd := False ;

       EDSERVICO.Visible := FALSE ;
     end;

     edProduto.setfocus ;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
//         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
  //
end;

procedure TFrmVendasPdvItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DmVendas.VendasPdv_Itens.DisableControls ;
          DmVendas.VendasPdv_Itens.Cancel ;
          edPrcUnit.Clear ;
          edQtdade.Clear  ;
          Calcular_Itens  ;
          CMBpessoa.Clear ;
          DmVendas.VendasPdv_Itens.EnableControls ;
          EdProduto.SetFocus ;
     end
     else
         Close;
end;

procedure TFrmVendasPdvItens.ActInserirExecute(Sender: TObject);
begin
     DmVendas.Qntde_Pdv := 1;
     
     LocProd := False ;
     
     DmVendas.Qntde_Pdv := 0;

     edProduto.SetFocus ;

     If Not ( DataSource.State in [ dsedit, dsinsert ]) then
      DmVendas.VendasPdv_Itens.Append;
end;

procedure TFrmVendasPdvItens.FormShow(Sender: TObject);
begin
     IF DMAPP.EST_USA_GRADE = 'S'THEN
     BEGIN
          EDGRADE.Enabled := true ;
          //EDNUMERO.Enabled := true ;
     END;

     If dmapp.DIG_PREC_VENDA= 'S'
     THEN BEGIN
          edPrcUnit.Enabled := true ;
          edQtdade.Enabled  := true ;
     end
     ELSE BEGIN
          edPrcUnit.Enabled := False ;
          edQtdade.Enabled  := False ;
     END;

     IniciaComponentes ( Self as TForm );

     If Screen.Width = 640
     then begin
          FrmVendasPdvItens.Left := 2   ;
          FrmVendasPdvItens.Top  := 127 ;
     end
     else begin
          FrmVendasPdvItens.Left := 2   ;
          FrmVendasPdvItens.Top  := 155 ;
     end;

     DmVendas.Qntde_Pdv := 0;

     Calcular_Itens ;

     DmVendas.VendasPdv_Itens.Append ;
end;

procedure TFrmVendasPdvItens.edProdutoExit(Sender: TObject);
var
  VlrPrcPr, valor : currency;
begin
     if (trim(edProduto.Text)= '') or (LocProd) then
     begin
           if (DmApp.CHM_PROD_INEXIST = 'S') then
           begin
                 if DmVendas.VendasPdv_Itens.State = dsBrowse Then
                   DmVendas.VendasPdv_Itens.Append;

                  if (FrmLocProdutoCadastro_Auto = nil) then
                    FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);

                  if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
                  begin
                    DmVendas.VendasPdv_Itens.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);
                    DmVendas.VendasPdv_Itens.FieldByName('SPRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);
                    LocProd := False;
                  end;
           end;
           edProduto.SetFocus ;
     end
     else
     begin
       //MODO DE DIGITAÇÃO = A = AUTOMATICO
       if dmApp.MODODIGPROD = 'A' then
       begin
               With DmVendas do
               begin
                 Valor := DmaPP.Verifica_Preco_Especial ( VendasPdv_ItensPRODUTO.Value, VendasPdvPESSOA_FJ.value );

                 //calculando valor de desconto na promoção
                 VlrPrcPr :=  dmapp.Verifica_Promocao ( VendasPdv_ItensPRODUTO.Value, dmapp.DataCaixa );
                 if vlrPrcpr > valor then
                   valor := vlrPrcpr;

                 If not (Arredonda(VendasPdv_ItensQUANTIDADE.Value,2)>0) then
                   VendasPdv_ItensQUANTIDADE.Value := 1 ;

                 If not (Arredonda(VendasPdv_ItensPRC_UNITARIO.Value,2)>0) then
                   ActUnitario.Execute ;

                 If not edservico.Visible then
                   BtnSalvar.OnClick ( BtnSalvar );
               end;
       end
       else begin
                If not (Arredonda(DmVendas.VendasPdv_ItensPRC_UNITARIO.Value,2)>0) then
                    ActUnitario.Execute ;
       end
     end;
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmVendasPdvItens.edQtdadeExit(Sender: TObject);
begin
     tiraCorFundo( Sender );

     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' )
     and ( DataSource.DataSet.state in [ dsinsert, dsedit ] )
     then begin
          Showmessage('Digite a Quantidade!');
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmVendasPdvItens.edPrcUnitExit(Sender: TObject);
var
  vlrproduto, descto_e, descto_p, desconto :currency;

begin
  tiraCorFundo( Sender );
  WITH DMVENDAS DO
  BEGIN
    //se dataset em edição e produto sem valor..
    IF (VendasPdv_ItensPRC_UNITARIO.asfloat = 0) and ( not(VendasPdv_Itens.State in [dsBrowse]))  then
    begin
      MessageDlg('Digite o Valor!',MtError,[MbOk],0);
      edPrcUnit.SetFocus ;
      Exit;
    end;
     //----------------------------------------CUIDADO!!('código não me toque!')---------------------------------//
     vlrproduto := VendasPdv_ItensPRC_UNITARIO.VALUE + ((VendasPdv_ItensPRC_UNIT_ORIGINAL.Value * desconto)/100);
     //---------------------------------------------------------------------------------------------------------//

    //se quantidade automatica atirbui-se 1, senão coloca 0 e deixa o user preencher
    If (Arredonda(VendasPdv_ItensQUANTIDADE.Value,2)<0)then
    begin
      if edQtdade.Enabled THEN
        VendasPdv_ItensQUANTIDADE.Value := 0
      else
        VendasPdv_ItensQUANTIDADE.Value := 1 ;
    end;

    //se dataset em ediição
    if (VendasPdv_Itens.State in [ dsinsert, dsedit ]) then
    begin
      if (VendasPdv_ItensPRC_UNIT_ORIGINAL.Value >0 ) then
      begin
        VendasPdv_ItensDESCONTO.Value     := arredonda(VendasPdv_ItensPRC_UNIT_ORIGINAL.Value - VendasPdv_ItensPRC_UNITARIO.VALUE  , 2 );
        VendasPdv_ItensPORC_DESC.Value    := arredonda(VendasPdv_ItensDESCONTO.Value * 100 / VendasPdv_ItensPRC_UNIT_ORIGINAL.Value, 2 ) ;

        VendasPdv_ItensDESCONTO.Value     := arredonda(0,2);
        VendasPdv_ItensPORC_DESC.Value    := arredonda(0,2);
      end
      else
      begin
        VendasPdv_ItensDESCONTO.Value     := arredonda(0,2);
        VendasPdv_ItensPORC_DESC.Value    := arredonda(0,2);
      end;
    end;
  end;

end;

procedure TFrmVendasPdvItens.ActQuantidadeExecute(Sender: TObject);
begin
     If DataSource.State in [ dsInsert, DsEdit ]
     then begin
          Application.CreateForm(TFrmEntraNumeroReal, FrmEntraNumeroReal);
          FrmEntraNumeroReal.LblTitulo.Caption := 'Digita Quantidade';
          FrmEntraNumeroReal.LBLPROMPT.Caption := 'Qntde'   ;

          IF FrmEntraNumeroReal.ShowModal = MROK
          THEN BEGIN
               DmVendas.Qntde_Pdv := (FrmEntraNumeroReal.Numero);
               DmVendas.VendasPdv_ItensQUANTIDADE.Value := DmVendas.Qntde_Pdv ;
          END;

          FrmEntraNumeroReal.Free ;
          FrmEntraNumeroReal := Nil;
     end;
end;

procedure TFrmVendasPdvItens.DataSourceStateChange(Sender: TObject);
begin
     Autorizado := false;
     IF DataSource.State in [ dsInsert, DsEdit ]
     THEN BEGIN
          If DmaPP.PDV_DIGITA_QNTDE = 'S'
          THEN BEGIN
               ActQuantidade.Enabled := True ;
          END
          ELSE BEGIN
              ActQuantidade.Enabled := False ;
          END;
     END
     ELSE BEGIN
          ActQuantidade.Enabled := False ;
     END;
end;

procedure TFrmVendasPdvItens.edProdutoEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmVendasPdvItens.btnSalvarEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmVendasPdvItens.btnSalvarExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmVendasPdvItens.ActImprimirExecute(Sender: TObject);
begin
     Imprime := True ;

     If DataSource.DataSet.State in [ DsInsert, DsEdit ]
     then
         DataSource.DataSet.Cancel ;

     Close ;
end;

procedure TFrmVendasPdvItens.ActUnitarioExecute(Sender: TObject);
Var
   Estado: Boolean;
begin
     Estado := False ;

     If Not ( DataSource.State in [ dsInsert, DsEdit ])
     then begin
          DataSource.DATASET.EDIT ;
          Estado := true ;
     end;

     Application.CreateForm(TFrmEntraNumeroReal, FrmEntraNumeroReal);
     FrmEntraNumeroReal.LblTitulo.Caption := 'Digita Unitário';
     FrmEntraNumeroReal.LBLPROMPT.Caption := 'Unit'   ;

     IF FrmEntraNumeroReal.ShowModal = MROK THEN
       DmVendas.VendasPdv_ItensPRC_UNITARIO.Value := (FrmEntraNumeroReal.Numero);

     FrmEntraNumeroReal.Free ;
     FrmEntraNumeroReal := Nil;

     If Estado
     then
         ActSalvar.execute ;
end;

procedure TFrmVendasPdvItens.edPrcUnitEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmVendasPdvItens.edQtdadeEnter(Sender: TObject);
begin
     CorFundo( Sender );
end;

procedure TFrmVendasPdvItens.CMBpessoaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
begin
     Application.CreateForm(TFrm_Localizar_Vendedores, Frm_Localizar_Vendedores);

     Frm_Localizar_Vendedores.DSource.dataset := DmVendas.SelVendedorPdv ;

     If ( Frm_Localizar_Vendedores.showmodal = mrOk )
     Then Begin
          DmVendas.VendasPdv_ItensVendedor.Value := (Frm_Localizar_Vendedores.CampTrecho) ;
     end;
     Frm_Localizar_Vendedores.free   ;
     Frm_Localizar_Vendedores := Nil ;
end;

procedure TFrmVendasPdvItens.CMBpessoaExit(Sender: TObject);
begin
     tiraCorFundo( Sender );
end;

procedure TFrmVendasPdvItens.EdServicoExit(Sender: TObject);
begin
     tiraCorFundo( Sender );
end;

procedure TFrmVendasPdvItens.ActLookUpExecute(Sender: TObject);
begin
     IF FrmVendasPdvItens.ActiveControl = EDGRADE
     THEN
         ActLocalizarGrade.Execute ;

     IF FrmVendasPdvItens.ActiveControl = EDNUMERO
     THEN
         ActLocalizarNumero.Execute ;
end;

procedure TFrmVendasPdvItens.ActLocalizarGradeExecute(Sender: TObject);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     //
     WITH DMVENDAS DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := VendasPdv_ItensPRODUTO.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk )Then
     Begin
          Frm_Localizar_Grades.CAMPtRECHO ;
          DmVendas.VendasPdv_ItensGRADE.Value  := (Frm_Localizar_Grades.Grade);
          DmVendas.VendasPdv_ItensNUMERO.Value := (Frm_Localizar_Grades.CampTrecho);
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
end;

procedure TFrmVendasPdvItens.ActLocalizarNumeroExecute(Sender: TObject);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     WITH DMVENDAS DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := VendasPdv_ItensPRODUTO.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk )
     Then Begin
//          DmVendas.VendasPdv_ItensGRADE.VALUE  := (Frm_Localizar_Grades.GRADE);
          DmVendas.VendasPdv_ItensNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
     //
end;

procedure TFrmVendasPdvItens.EDGRADEExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo( Sender );
end;

procedure TFrmVendasPdvItens.EDGRADEEnter(Sender: TObject);
begin
     CorFundo ( Sender );
     //Verificando Grade
     with dmVendas2 do
     begin
       if ( (trim(edProduto.Text) <> '') and (trim(EDGRADE.text) = '')) then
       begin
         qConsultaGrade.close;
         qConsultaGrade.parambyname('cnpj').value := dmapp.cnpj;
         qConsultaGrade.parambyname('produto').value := DmVendas.VendasPdv_ItensProduto.value;
         qConsultaGrade.open;

         if qConsultaGradeCOUNT.VALUE > 0 then
            ActlocalizarGradeExecute(Sender);
       end;
     end;
end;

end.
