 unit TrocasItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, IBCustomDataSet, cxGraphics, cxControls,
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
  TFrmTrocasItens = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    edProduto: TdxDBEdit;
    edQtdade: TdxDBEdit;
    edPrcUnit: TdxDBCalcEdit;
    DataSource: TDataSource;
    dsProdutos: TDataSource;
    dxDBEdit1: TdxDBEdit;
    ActLista: TActionList;
    ActLookUP: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    GridItens: TdxDBGrid;
    GridItensPRODUTO: TdxDBGridMaskColumn;
    GridItensNome_Produto: TdxDBGridLookupColumn;
    GridItensQUANTIDADE: TdxDBGridMaskColumn;
    GridItensPRC_UNITARIO: TdxDBGridMaskColumn;
    GridItensTotal: TdxDBGridColumn;
    GridItensDesconto: TdxDBGridColumn;
    Label4: TcxLabel;
    dxDBCalcEdit1: TdxDBCalcEdit;
    Label5: TcxLabel;
    dxDBCalcEdit2: TdxDBCalcEdit;
    ActCadastro: TAction;
    Label7: TcxLabel;
    LblContagem: TcxLabel;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label8: TcxLabel;
    LblTotal: TcxLabel;
    Label9: TcxLabel;
    lblpeso: TcxLabel;
    Label12: TcxLabel;
    lblvolume: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Label14: TcxLabel;
    ActExcluir: TAction;
    CmbTipo: TdxDBPickEdit;
    Label10: TcxLabel;
    GridItensEntradas: TdxDBGridColumn;
    dxDBEdit2: TdxDBEdit;
    Label11: TcxLabel;
    edtGrade: TdxDBEdit;
    edtNumero: TdxDBEdit;
    actLocalizarGrade: TAction;
    actLocalizarNumero: TAction;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure dxDBCalcEdit1Exit(Sender: TObject);
    procedure dxDBCalcEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActCadastroExecute(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure dxDBEdit2Enter(Sender: TObject);
    procedure edPrcUnitEnter(Sender: TObject);
    procedure dxDBCalcEdit1Enter(Sender: TObject);
    procedure dxDBCalcEdit2Enter(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure dxDBEdit1Exit(Sender: TObject);
    procedure edPrcUnit_2Exit(Sender: TObject);
    procedure GridItensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ActExcluirExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure CmbTipoExit(Sender: TObject);
    procedure actLocalizarGradeExecute(Sender: TObject);
    procedure actLocalizarNumeroExecute(Sender: TObject);
    procedure edQtdadeChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA : INTEGER;
    LOCPROD  : Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmTrocasItens: TFrmTrocasItens;

implementation

uses Vendas_DM,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     Main,
     LocalizarProd_DM, VendasItens_Form, Localizar_Grade,
  Localizar_Produto_Cadastro_Auto;

{$R *.DFM}

procedure TFrmTrocasItens.Calcular_Itens;
Var bReg: Pointer;
    tDescontoE, tProdutosE: Extended;
    tDescontoS, tProdutosS: Extended;
    Itens: Integer;
begin
  //
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DataSource.DataSet.GetBookmark;
  //
  DataSource.DataSet.DisableControls;
  //
  tProdutosE := 0;
  tDescontoE := 0;

  tProdutosS := 0;
  tDescontoS := 0;

  Itens      := 0;

  //
  DataSource.DataSet.First;
  //
  While Not DataSource.DataSet.Eof Do
  Begin
       If DataSource.DataSet.FieldByName('TIPO').AsString = 'E'
       THEN BEGIN
            //
            tProdutosE  := tProdutosE  + DataSource.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoE  := tDescontoE  + DataSource.DataSet.FieldByName('DESCONTO').asFloat;
       END
       ELSE BEGIN
            //
            tProdutosS  := tProdutosS  + DataSource.DataSet.FieldByName('TOTAL'   ).asFloat;
            tDescontoS  := tDescontoS  + DataSource.DataSet.FieldByName('DESCONTO').asFloat;
       END;

       Itens := Itens + 1 ;

       //
       DataSource.DataSet.Next;
  End;

  LblItens.Caption := Formatfloat ( '###,##0', Itens );
  LblTotal.Caption := Formatfloat ( '###,##0.00',  TProdutosE - TProdutosS );

  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
  DataSource.DataSet.EnableControls;
end;

procedure TFrmTrocasItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmTrocasItens.FormCreate(Sender: TObject);
begin
     ULTLINHA := 0 ;
     LOCPROD  := False ;
end;

procedure TFrmTrocasItens.ActSalvarExecute(Sender: TObject);
begin
  //
  Try
     If DataSource.DataSet.FieldByName ('TIPO').IsNull
     then begin
          MessageDlg('Digite o Tipo de Movimentação', mtError, [mbOK], 0);
          CmbTipo.SetFocus ;
          exit ;
     end;

     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DataSource.DataSet.Post;
          Calcular_Itens ;
          DataSource.DataSet.Append ;
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
         ShowMessage('Ocorreu um Erro não identificado pelo Sistema !');
         Exit;
       End;
  End;
  //
end;

procedure TFrmTrocasItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
         DataSource.DataSet.Cancel ;
         EdProduto.SetFocus ;
     end
     else
         Close;
end;

procedure TFrmTrocasItens.btnBuscaClick(Sender: TObject);
Var CodigoProduto: String[13];
begin
  //
  CodigoProduto := DMApp.LocalizarProduto;
  //
  If Trim(CodigoProduto) <> '' Then
     Begin
          If not ( DataSource.State in [ dsinsert, dsedit ] )
          then
              DataSource.DataSet.append ;

          DataSource.DataSet.FieldByName('PRODUTO').asString := CodigoProduto;
          
          edQtdade.SetFocus;
     End
  Else
     edProduto.SetFocus;
end;

procedure TFrmTrocasItens.ActInserirExecute(Sender: TObject);
begin
     If Not ( DataSource.State in [ dsedit, dsinsert ] ) then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmTrocasItens.edPrcUnitExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );

     WITH DMVENDAS DO
     BEGIN
          IF ( Trocas_Itens.State in [ dsinsert, dsedit ] ) THEN
          BEGIN
               If Trocas_ItensPRC_UNIT_ORIGINAL.Value > 0 then
                   Trocas_ItensDESCONTO.Value     := Trocas_ItensPRC_UNIT_ORIGINAL.Value - Trocas_ItensPRC_UNITARIO.VALUE    ;

               If Trocas_ItensPRC_UNIT_ORIGINAL.Value > 0 then
               begin
                    Trocas_ItensPORC_DESC.Value    := Trocas_ItensDESCONTO.Value * 100 / Trocas_ItensPRC_UNIT_ORIGINAL.Value ;
               end
               else begin
                    Trocas_ItensPORC_DESC.Value    := 0 ;
               end;

               If Trocas_ItensPRC_UNIT_ORIGINAL.Value > 0 then
                   Trocas_ItensPRC_UNITARIO.VALUE := Trocas_ItensPRC_UNIT_ORIGINAL.Value ;
          END;
     END;

end;

procedure TFrmTrocasItens.edQtdadeExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          Showmessage('Digite a Quantidade!');
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmTrocasItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
   VlrPrcPr, valor : currency;
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
//------------[ Código do Produto Sem Preenchimento ]---------------------------
     IF trim( edProduto.Text ) = '' then
     begin
           if Datasource.DataSet.State = dsBrowse Then
             Datasource.DataSet.Append;

           if FrmLocProdutoCadastro_Auto = nil then
             FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);

           if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
           begin
             Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);
             Datasource.DataSet.FieldByName('SPRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);
           end;

           edProduto.SetFocus ;
     end
//------------[ Digitou Manualmente o Código do Produto ]-----------------------
     Else begin
          If LocProd then
          begin
               //
               If Datasource.DataSet.State = dsBrowse Then
                   Datasource.DataSet.Append;

               Aux := edProduto.Text ;
               If DmApp.Elimina_Zeros = 'S' THEN
               BEGIN
                    While Copy ( Aux, 1, 1 ) = '0' DO
                         Aux := Copy ( Aux, 2, 15 );
               END;

               If DmApp.Acrescenta_Zeros = 'S' THEN
               BEGIN
                    While Length ( Aux ) < 10 DO
                         Aux := '0' + Aux ;
               END ;

               edProduto.Text := Aux ;

               FrmLocProdutoCadastro_Auto.EdCodigo.Text := EdProduto.Text ;
               if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
                  Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);
               edProduto.SetFocus ;
               LocProd := False ;
          end;
     end;

//-----------------[ Verifica Preço Especial e Promoção ]-----------------------
         DmVendas.Trocas_ItensPRC_UNITARIO.Value      := arredonda(DmVendas.Trocas_ItensPRC_UNITARIO.Value, 2) ;
         DmVendas.Trocas_ItensPRC_UNIT_ORIGINAL.Value := arredonda(DmVendas.Trocas_ItensPRC_UNIT_ORIGINAL.Value, 2) ;
         //=====================================================================
         //------------ PROMOÇÃO DE PRODUTO ------------------------------------
         //=====================================================================
         //se o preço da promoção for menor que preço especial, então passa a valer o preço da promoção
         Valor :=  dmapp.Verifica_Promocao ( DmVendas.Trocas_ItensPRODUTO.value, dmapp.DataServidor );

         //=====================================================================
         //------------ PREÇO ESPECIAL -----------------------------------------
         //=====================================================================
         if DmVendas.TrocasPESSOA_FJ.value <> 1 THEN//CLIENTE CONSUMIDOR
             VlrPrcPr := DmaPP.Verifica_Preco_Especial ( DmVendas.Trocas_ItensPRODUTO.value, DmVendas.TrocasPESSOA_FJ.value )
         ELSE
             VlrPrcPr := 0;
         DmVendas.Trocas_ItensPRC_UNITARIO.Value      := arredonda(DmVendas.Trocas_ItensPRC_UNIT_ORIGINAL.Value - ((DmVendas.Trocas_ItensPRC_UNIT_ORIGINAL.Value * VlrPrcPr)/100), 2) ;

        //======================================================================
        //------------ PROMOÇÃO > PREÇO ESPECIAL -------------------------------
        //======================================================================
        //se o preço da promoção for menor que preço especial, então passa a valer o preço da promoção
        if ((valor < DmVendas.Trocas_ItensPRC_UNITARIO.Value) and (valor > 0)) then
        begin
            DmVendas.Trocas_ItensPRC_UNITARIO.value      := valor;
        end;

     LocProd := False ;
end;

procedure TFrmTrocasItens.dxDBCalcEdit1Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
     WITH DmVendas DO
     BEGIN
          IF ( Trocas_ItensPRC_UNITARIO.Value > 0 ) and ( Trocas_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Trocas_ItensPORC_DESC.Value := Trocas_ItensDESCONTO.Value * 100 / Trocas_ItensPRC_UNITARIO.Value ;
          END;
     END;
end;

procedure TFrmTrocasItens.dxDBCalcEdit2Exit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
     WITH DmVendas DO
     BEGIN
          IF ( Trocas_Itens.State in [ dsinsert, dsedit ] )
          THEN BEGIN
               Trocas_ItensDESCONTO.Value := Trocas_ItensPORC_DESC.Value * Trocas_ItensPRC_UNITARIO.Value / 100 ;
          END;
     END;      
end;

procedure TFrmTrocasItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

  if DMAPP.EST_USA_GRADE = 'S' then
  begin
    edtGrade.Enabled := true ;
    //edtNumero.Enabled := true ;
  end;

  IF DmApp.DIG_PREC_VENDA = 'N' THEN
     edPrcUnit.Enabled := False ;


  If DataSource.DataSet.State in [ DsBrowse ] then
     ActInserir.Execute
  Else
     edProduto.SetFocus ;
end;

procedure TFrmTrocasItens.ActCadastroExecute(Sender: TObject);
begin
  if Self.ActiveControl = edtGrade then
    ActLocalizarGrade.Execute;

  if Self.ActiveControl = edtNumero then
    ActLocalizarNumero.Execute;

     If FrmTrocasItens.ActiveControl = edProduto
     Then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Edit;
          //
          { * * * * * }
          DMApp.Verificar_Login(FileName(Application.ExeName), 'FrmProdutos', False);
          { * * * * * }
          //

          DmCadastros.Tag := 1;

          FrmProdutos := TFrmProdutos.Create(Application);

          FrmProdutos.Showmodal ;

          Datasource.DataSet.FieldByName('PRODUTO').asString := FrmMain.Codigo_Str;

          EdProduto.SetFocus;

          DsProdutos.DataSet.Close;
          DsProdutos.DataSet.Open ;
          //
     end;
end;

procedure TFrmTrocasItens.edProdutoEnter(Sender: TObject);
begin
    CorFundo ( Sender );
end;

procedure TFrmTrocasItens.edQtdadeEnter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmTrocasItens.dxDBEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmTrocasItens.edPrcUnitEnter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmTrocasItens.dxDBCalcEdit1Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmTrocasItens.dxDBCalcEdit2Enter(Sender: TObject);
begin
    CorFundo ( Sender );

end;

procedure TFrmTrocasItens.btnSalvarEnter(Sender: TObject);
begin
     CORFUNDO( Sender );
end;

procedure TFrmTrocasItens.btnSalvarExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TIRACORFUNDO( Sender );
end;

procedure TFrmTrocasItens.dxDBEdit1Exit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

procedure TFrmTrocasItens.edPrcUnit_2Exit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmTrocasItens.GridItensKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
     IF KEY = 13
     THEN BEGIN
          edProduto.SetFocus ;
          DataSource.DataSet.Edit ;
     END;
end;

procedure TFrmTrocasItens.ActExcluirExecute(Sender: TObject);
begin
     //ELIMINA O ITEM
     IF MessageDlg('Excluir Este Item?', mtConfirmation, [mbOK, mbCancel], 0) = MrOk
     then begin
          DataSource.DataSet.Delete ;
     end;
end;

procedure TFrmTrocasItens.DataSourceStateChange(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ] then
     begin
          GridItens.TabStop := False ;
     end
     else begin
          GridItens.TabStop := True ;
     end;
end;

procedure TFrmTrocasItens.CmbTipoExit(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmTrocasItens.actLocalizarGradeExecute(Sender: TObject);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     //
     WITH DMVENDAS DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := Trocas_ItensPRODUTO.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk ) Then
     Begin
          Frm_Localizar_Grades.CAMPtRECHO ;
          DmVendas.Trocas_ItensGRADE.VALUE  := (Frm_Localizar_Grades.GRADE);
          DmVendas.Trocas_ItensNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;

end;

procedure TFrmTrocasItens.actLocalizarNumeroExecute(Sender: TObject);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     WITH DMVENDAS DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := Trocas_ItensPRODUTO.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk )Then
     Begin
          DmVendas.Trocas_ItensNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);
     END ;

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
     //
end;

procedure TFrmTrocasItens.edQtdadeChange(Sender: TObject);
begin
  if DmVendas.Trocas_ItensQUANTIDADE.value <= 0 then
    edPrcUnit.enabled := true
  else
  begin
    edPrcUnit.enabled := false;
    DmVendas.Trocas_ItensPRC_UNITARIO.value := 0;
  end;
end;

end.
