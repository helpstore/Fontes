 unit VendasItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, Mask, DBCtrls, dxTLClms, cxPropertiesStore,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel, IBCustomDataSet, IBQuery,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomPopupMenu, cxGridPopupMenu,
  cxGridCustomTableView, cxGridTableView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  cxGridDBTableView;

type
  TFrmVendasItens = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    DataSource: TDataSource;
    dsProdutos: TDataSource;
    Actions: TActionList;
    ActLookUP: TAction;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    ActNovoProduto: TAction;
    Label7: TcxLabel;
    LblContagem: TcxLabel;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label8: TcxLabel;
    Label9: TcxLabel;
    lblpeso: TcxLabel;
    Label12: TcxLabel;
    lblvolume: TcxLabel;
    ActSimilar: TAction;
    DsUnidade: TDataSource;
    DsSubUnidade: TDataSource;
    Label13: TcxLabel;
    ActNovoCfop: TAction;
    Label14: TcxLabel;
    ActComplemento: TAction;
    ActlocalizarGrade: TAction;
    ActLocalizarNumero: TAction;
    Shape2: TShape;
    LblTotal: TcxLabel;
    ActConfCampos: TAction;
    Panel2: TPanel;
    Label1: TcxLabel;
    Label10: TcxLabel;
    Label5: TcxLabel;
    Label4: TcxLabel;
    Label3: TcxLabel;
    Label11: TcxLabel;
    Label2: TcxLabel;
    edProduto: TdxDBEdit;
    EDGRADE: TdxDBEdit;
    EDNUMERO: TdxDBEdit;
    dxDBEdit1: TdxDBEdit;
    EdNatureza: TdxDBEdit;
    btnBusca: TcxButton;
    edPrcTotal: TdxDBEdit;
    dxDBCalcEdit2: TdxDBCalcEdit;
    dxDBCalcEdit1: TdxDBCalcEdit;
    edPrcUnit: TdxDBCalcEdit;
    CmbSubUnidade: TdxDBLookupEdit;
    cmbUnidade: TdxDBLookupEdit;
    edQtdade: TdxDBCalcEdit;
    pnlServico: TPanel;
    EdServico: TdxDBMemo;
    PopupGrid: TcxGridPopupMenu;
    GridItens: TcxGrid;
    GridItensTV: TcxGridDBBandedTableView;
    GridItensTVCNPJ: TcxGridDBBandedColumn;
    GridItensTVCODIGO: TcxGridDBBandedColumn;
    GridItensTVSEQUENCIA: TcxGridDBBandedColumn;
    GridItensTVQUANTIDADE: TcxGridDBBandedColumn;
    GridItensTVPRC_CUSTO: TcxGridDBBandedColumn;
    GridItensTVICM: TcxGridDBBandedColumn;
    GridItensTVICM_SUBS: TcxGridDBBandedColumn;
    GridItensTVIPI: TcxGridDBBandedColumn;
    GridItensTVTotal: TcxGridDBBandedColumn;
    GridItensTVPeso_Total: TcxGridDBBandedColumn;
    GridItensTVVOLUME: TcxGridDBBandedColumn;
    GridItensTVPESO: TcxGridDBBandedColumn;
    GridItensTVVolume_Total: TcxGridDBBandedColumn;
    GridItensTVDESCONTO: TcxGridDBBandedColumn;
    GridItensTVPORC_DESC: TcxGridDBBandedColumn;
    GridItensTVUNIDADE: TcxGridDBBandedColumn;
    GridItensTVPRC_UNIT_ORIGINAL: TcxGridDBBandedColumn;
    GridItensTVNOME_PRODUTO: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA: TcxGridDBBandedColumn;
    GridItensTVPRODUTOFIS: TcxGridDBBandedColumn;
    GridItensTVNOME_FIS: TcxGridDBBandedColumn;
    GridItensTVSUBUNIDADE: TcxGridDBBandedColumn;
    GridItensTVORIGEM: TcxGridDBBandedColumn;
    GridItensTVCTE: TcxGridDBBandedColumn;
    GridItensTVCTIE: TcxGridDBBandedColumn;
    GridItensTVREDUCAO: TcxGridDBBandedColumn;
    GridItensTVFRACIONADO: TcxGridDBBandedColumn;
    GridItensTVVENDEDOR: TcxGridDBBandedColumn;
    GridItensTVMENSAGEM_REDUCAO: TcxGridDBBandedColumn;
    GridItensTVBASECALCULOICM: TcxGridDBBandedColumn;
    GridItensTVBASECALCULOSUBSTITUICAO: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA_EST: TcxGridDBBandedColumn;
    GridItensTVALIQUOTA_INT: TcxGridDBBandedColumn;
    GridItensTVCFOP: TcxGridDBBandedColumn;
    GridItensTVCOMPLEMENTO: TcxGridDBBandedColumn;
    GridItensTVSERVICO: TcxGridDBBandedColumn;
    GridItensTVNUMERO: TcxGridDBBandedColumn;
    GridItensTVGRADE: TcxGridDBBandedColumn;
    GridItensTVPRC_UNITARIO_FIS: TcxGridDBBandedColumn;
    GridItensTVQUANTIDADE_FIS: TcxGridDBBandedColumn;
    GridItensTVTOTAL_FISCAL: TcxGridDBBandedColumn;
    GridItensTVLOTE: TcxGridDBBandedColumn;
    GridItensTVCODIGO_LOTE: TcxGridDBBandedColumn;
    GridItensTVUTILIZA_LOTE: TcxGridDBBandedColumn;
    GridItensTVGRADE1: TcxGridDBBandedColumn;
    GridItensTVNOME_COR: TcxGridDBBandedColumn;
    GridItensTVNOME_MATERIAL: TcxGridDBBandedColumn;
    GridItensTVNOME_PERFIL: TcxGridDBBandedColumn;
    GridItensTVPRD_SERVICO: TcxGridDBBandedColumn;
    GridItensTVPRC_UNITARIO: TcxGridDBBandedColumn;
    GridItensTVPRODUTO: TcxGridDBBandedColumn;
    GridItensTVSPRODUTO: TcxGridDBBandedColumn;
    GridItensLV: TcxGridLevel;
    stgVendasItens: TcxPropertiesStore;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActLookUPExecute(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edtDesconto(Sender: TObject);
    procedure edtPctDesconto(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActNovoProdutoExecute(Sender: TObject);
    procedure ActSimilarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure edQtdadeEnter(Sender: TObject);
    procedure cmbUnidadeExit(Sender: TObject);
    procedure CmbSubUnidadeExit(Sender: TObject);
    procedure ActNovoCfopExecute(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure EdServicoEnter(Sender: TObject);
    procedure ActComplementoExecute(Sender: TObject);
    procedure ActlocalizarGradeExecute(Sender: TObject);
    procedure ActLocalizarNumeroExecute(Sender: TObject);
    procedure edQtdadeFISEnter(Sender: TObject);
    procedure edPrcUnitFISExit(Sender: TObject);
    procedure EDGRADEEnter(Sender: TObject);
    procedure ActConfCamposExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ULTLINHA  : INTEGER;
    LocProd   : Boolean;
    LocSimilar: Boolean;
    CancelaQtd: Boolean;
    Autorizado: Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmVendasItens: TFrmVendasItens;
  PorcDesc: Real;
implementation

uses
     Main,
     Vendas_DM,
     Application_DM,
     Funcoes,
     Cadastros_DM,
     Produtos_Form,
     LocalizarProd_DM,
     Localizar_Natureza, VendasPdvItens_Form, Localizar_Grade,
     Localizar_Lote, Vendas_DM2, Localizar_Produto_Cadastro_Auto,
  Vendas_Form, Usuarios_DM;

{$R *.DFM}

procedure TFrmVendasItens.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
    Contagem : Extended;
    Peso     : Extended;
    Volume   : Extended;
begin
  //
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DataSource.DataSet.GetBookmark;
  //
 // DataSource.DataSet.DisableControls;

  tProdutos := 0;
  //
  if ( DataSource.state in [ dsinsert, dsedit ] )
  then
      DataSource.DataSet.Cancel ;

  DataSource.DataSet.First;
  Itens    := 0;
  Contagem := 0;
  Peso     := 0;
  Volume   := 0;

  While Not DataSource.DataSet.Eof Do
  Begin
    tProdutos := tProdutos + DataSource.DataSet.FieldByName('TOTAL'       ).asFloat;
    Contagem  := Contagem  + DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat;
    Peso      := Peso      + (DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat * DataSource.DataSet.FieldByName('PESO').asFloat);
    VoLume    := Peso      + (DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat * DataSource.DataSet.FieldByName('VOLUME').asFloat);
    itens     := Itens + 1 ;
          //
    DataSource.DataSet.Next;
  End;

  LblItens.Caption    := FormatFloat('###,##0',           itens     );
  LblContagem.Caption := FormatFloat('###,##0',           Contagem  );
  LblTotal.Caption    := FormatFloat('###,###,##0.00',    TProdutos );
  LblpESO.Caption     := FormatFloat('###,##0',           PESO      );
  LblVOLUME.Caption   := FormatFloat('###,##0',           VOLUME    );
  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
//  DataSource.DataSet.EnableControls;
end;

procedure TFrmVendasItens.edProdutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;


procedure TFrmVendasItens.FormCreate(Sender: TObject);
begin
      // Se o Usuário for Supervisor
     If DMUsuarios.Direito = 'SUPERVISOR' Then
       DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, FrmVendasItens.Caption, ListaActions(Actions))
     Else If DMUsuarios.Objeto = Self.Name Then
       AtivaActions(Actions, DMUsuarios.Direito);


     PopupGrid.UseBuiltInPopupMenus := ActConfCampos.Enabled;  
     ULTLINHA   := 0 ;
     LocProd    := False ;
     LocSimilar := False;
     btnBusca.OnClick := btnBuscaClick ;
     FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
end;

procedure TFrmVendasItens.ActSalvarExecute(Sender: TObject);
begin
  //
      DmVendas.qProdFracionado.close;
      DmVendas.qProdFracionado.parambyname('cnpj').value    := dmapp.cnpj;
      DmVendas.qProdFracionado.parambyname('PRODUTO').value := DataSource.DataSet.FieldByName('PRODUTO').Value;
      DmVendas.qProdFracionado.open;

      If (DmVendas.qProdFracionadoVENDE_FRACIONADO.Value = 'N')or(DmVendas.qProdFracionadoVENDE_FRACIONADO.IsNull) Then
      begin
        If ((DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat - Trunc(DataSource.DataSet.FieldByName('QUANTIDADE').AsFloat)) > 0) then
         Begin
           MessageDlg('Favor entrar com a Quantidade Não Fracionada !',MtError,[MbOk],0);
           edQtdade.SetFocus;
           Exit;
         End;
      End;


     If DataSource.State in [dsinsert, dsedit] then
     begin  //
       try
         DataSource.DataSet.Post;
         Calcular_Itens ;
       Except
         On E:EDataBaseError Do
         begin
           MessageDlg('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ',MtError,[MbOk],0);
           Exit;
         end
         else
         begin
           MessageDlg('Erro na operação !',MtError,[MbOk],0);
           Exit;
         end;
       end;
     end;

     edProduto.setfocus ;

     pnlServico.visible := false;
     DataSource.DataSet.Close;
     DataSource.DataSet.Open;
     Calcular_Itens;
     DataSource.DataSet.Append;
end;

procedure TFrmVendasItens.ActCancelarExecute(Sender: TObject);
begin
     If ((DataSource.DataSet.State in [ dsinsert, dsedit ]) and (DataSource.DataSet.recordcount >0))then
     begin  //
       DataSource.DataSet.Cancel ;
       EdProduto.SetFocus;
     end
     else
       Close;
end;

procedure TFrmVendasItens.btnBuscaClick(Sender: TObject);
Var CodigoProduto: String[15];
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

procedure TFrmVendasItens.ActLookUPExecute(Sender: TObject);
begin
     IF FrmVendasItens.ActiveControl = edProduto THEN
         btnBusca.OnClick(btnBusca);
end;

procedure TFrmVendasItens.ActInserirExecute(Sender: TObject);
begin
     edProduto.SetFocus ;
     LocProd    := False ;
     LocSimilar := False ;
     CancelaQtd := False ;

     DataSource.DataSet.Close;
     DataSource.DataSet.Open;

     If Not (DataSource.DataSet.State in [dsedit, dsinsert]) then
      DataSource.DataSet.append;
end;

procedure TFrmVendasItens.edPrcUnitExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF ( trim( edPrcUnit.Text ) = '0') or ( trim( edPrcUnit.Text ) = '0,00' ) or ( trim( edPrcUnit.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite o Valor!',MtError,[MbOk],0);
          edPrcUnit.SetFocus ;
          Exit;
     end;

     with FrmVendas do
     begin
       IF ( Vendas_Itens.State in [ dsinsert, dsedit ] ) then
       begin
         if ({Arredonda(}Vendas_ItensPRC_UNITARIO.Value{,2)} > {Arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)}) then
         begin
           Vendas_ItensDESCONTO.Value  := 0;
           Vendas_ItensPORC_DESC.Value := 0;
           exit;
         end;

         Vendas_ItensDESCONTO.Value     := {arredonda(arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} - Vendas_ItensPRC_UNITARIO.VALUE{,2)} ;
         Vendas_ItensPORC_DESC.Value    := ((Vendas_ItensDESCONTO.Value * 100)/{arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)});
         Vendas_ItensPRC_UNITARIO.value := ({arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} - Vendas_ItensDESCONTO.Value);
       end;
     end;
end;

procedure TFrmVendasItens.edQtdadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' ) and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite a Quantidade!',MtError,[MbOk],0);
          edQtdade.SetFocus ;
     end
     else begin
          If FrmVendas.VendasLOCAL.Value = 1
          then begin
               If DmApp.BlqQtdeFiscal = 'S'
               THEN BEGIN
                    //A VARIAVEL LOCSIMILAR E PREENCHIDA NO On VALIDATE DO CAMPO QUANTIDADE
                    If LocSimilar
                    then begin
                         ActSimilar.Execute ;

                         If cmbUnidade.enabled
                         then
                             cmbUnidade.SetFocus
                         else
                             edPrcUnit.SetFocus ;
                    end;
               END;
          end;
     end;
end;

procedure TFrmVendasItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
   CODIGO_LOTE : integer;
begin
  //---------------------[ Verificando lote ]-------------------------------------
  with FrmVendas do
  begin
    if ((Vendas_ItensUTILIZA_LOTE.asString = 'S') and  (Vendas_ItensCODIGO_LOTE.asInteger <= 0)) then
    begin
         dmvendas.SelLote.Close ;
         dmvendas.SelLote.ParamByName ('CNPJ').AsString    := Vendas_ItensCNPJ.Value;
         dmvendas.SelLote.ParamByName ('CODIGO').AsString  := Vendas_ItensPRODUTO.Value;
         dmvendas.SelLote.Open;

         Application.CreateForm(TFrm_Localizar_Lote, Frm_Localizar_Lote);
         Frm_Localizar_Lote.DSource.dataset := dmvendas.SelLote ;

         if (Frm_Localizar_Lote.showmodal = mrOk) Then
            CODIGO_Lote := (Frm_Localizar_Lote.CampTrecho) ;

         Frm_Localizar_Lote.free   ;
         Frm_Localizar_Lote := Nil ;

         Vendas_Itens.edit;
         Vendas_ItensCODIGO_LOTE.value := codigo_lote ;
       end;
  end;

//---------------------[ Verificando Preenchimento ]----------------------------
     IF trim(edProduto.Text) = ''  then
     begin
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;
            FrmLocProdutoCadastro_Auto.vendedor := FrmVendas.VendasVENDEDOR.Value;
            if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
            begin
              Datasource.DataSet.FieldByName('PRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );
              Datasource.DataSet.FieldByName('SPRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );
            end;

          edProduto.SetFocus ;
     end
     Else begin
       If (LocProd) and (DmApp.CHM_PROD_INEXIST = 'S') then
       begin
               //
            If Datasource.DataSet.State = dsBrowse Then
               Datasource.DataSet.Append;

            Aux := edProduto.Text ;

            If DmApp.Elimina_Zeros = 'S' THEN
            begin
              while Copy ( Aux, 1, 1 ) = '0' DO
                Aux := Copy ( Aux, 2, 15 );
            end;

            if DmApp.Acrescenta_Zeros = 'S' then
            begin
              while Length ( Aux ) < 10 DO
                Aux := '0' + Aux ;
            end;

            edProduto.Text := Aux ;

	        //---------[ Fecha o registro e traz os novos registros ]---------------------------------------
            if (FrmLocProdutoCadastro_Auto = nil) then
              FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);

            FrmLocProdutoCadastro_Auto.EdCodigo.Text := EdProduto.Text ;
            FrmLocProdutoCadastro_Auto.vendedor := FrmVendas.VendasVENDEDOR.Value;
            if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
            begin
              Datasource.DataSet.FieldByName('PRODUTO').asString := (FrmLocProdutoCadastro_Auto.CampTrecho );
              Datasource.DataSet.FieldByName('SPRODUTO').asString := ( FrmLocProdutoCadastro_Auto.CampTrecho );
            end;

            edProduto.SetFocus ;

            LocProd := False ;
          end;
     end;

     with dmVendas do
     begin
       qryAux.close;
       qryAux.sql.text := ' select prd.servico from est_produtos prd where prd.cnpj = :cnpj and prd.codigo = :produto ';
       qryAux.parambyname('cnpj').value := dmapp.cnpj;
       qryAux.parambyname('produto').value := Datasource.DataSet.FieldByName('PRODUTO').asString;
       qryAux.open;
     end;

     if (dmvendas.qryAux.FieldByName('SERVICO').asString = 'S') then
       pnlServico.visible := true
     else
       pnlServico.visible := false;

     LocProd := False ;
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.edtDesconto(Sender: TObject);
begin
  TiraCorFundo ( Sender );
  WITH frmVendas DO
  BEGIN
    IF (frmVendas.Vendas_ItensPRC_UNITARIO.Value > 0) and ( Vendas_Itens.State in [ dsinsert, dsedit ] ) THEN
    BEGIN
      if {Arredonda(}Vendas_ItensPRC_UNITARIO.Value{,2)} > {Arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} then
      begin
        Vendas_ItensDESCONTO.Value     := 0;
        Vendas_ItensPORC_DESC.Value  := 0;
        exit;
      end;

      if (Vendas_ItensPRC_UNIT_ORIGINAL.Value = 0 ) then
      begin
        Vendas_ItensDESCONTO.Value     := 0;
        Vendas_ItensPORC_DESC.Value  := 0;
        exit;
      end;

      Vendas_ItensPORC_DESC.Value := (Vendas_ItensDESCONTO.Value * 100)/{arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)};
      frmVendas.Vendas_ItensPRC_UNITARIO.value := ({arredonda(}frmVendas.Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} - frmVendas.Vendas_ItensDESCONTO.Value);
    END;
  END;
end;

procedure TFrmVendasItens.edtPctDesconto(Sender: TObject);
begin
     //TROCA A COR DE FUNDO
  TiraCorFundo ( Sender );
  with FrmVendas DO
  begin
    if ( Vendas_Itens.State in [ dsinsert, dsedit ] )then
    begin
      if {Arredonda(}Vendas_ItensPRC_UNITARIO.Value{,2)} > {Arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} then
      begin
        Vendas_ItensDESCONTO.Value := 0;
        Vendas_ItensPORC_DESC.Value := 0;
        exit;
      end;

      Vendas_ItensDESCONTO.Value := (Vendas_ItensPORC_DESC.Value * {arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} / 100) ;
      Vendas_ItensPRC_UNITARIO.value := ({arredonda(}Vendas_ItensPRC_UNIT_ORIGINAL.Value{,2)} - Vendas_ItensDESCONTO.Value);
    end;
  end;
 end;

procedure TFrmVendasItens.FormShow(Sender: TObject);
begin
     IniciaComponentes ( Self as TForm );

     IF DMAPP.EST_USA_GRADE = 'S' THEN
          EDGRADE.Enabled := true ;

     IF DmApp.DIG_PREC_VENDA = 'N' THEN
          edPrcUnit.Enabled := False
     ELSE
          edPrcUnit.Enabled := TRUE ;

     IF DmApp.DIG_UNIDADE_VENDA = 'N' THEN
     BEGIN
          CmbUnidade.Enabled    := False ;
          CmbSubUnidade.Enabled := False ;
          DsUnidade.DataSet.Close        ;
          DsSubUnidade.DataSet.Close     ;
     END
     ELSE BEGIN
          CmbUnidade.Enabled    := true  ;
          CmbSubUnidade.Enabled := true  ;
          DsUnidade.DataSet.Open         ;
          DsSubUnidade.DataSet.Open      ;
     END;


     Calcular_Itens;

     If Not(DataSource.DataSet.State in [ dsinsert, dsedit ] ) then
          ActInserir.Execute ;

end;

procedure TFrmVendasItens.ActNovoProdutoExecute(Sender: TObject);
begin
     IF FrmVendasItens.ActiveControl = EDGRADE  THEN
         ActLocalizarGrade.Execute ;

     IF FrmVendasItens.ActiveControl = EDNUMERO  THEN
         ActLocalizarNumero.Execute ;

     If FrmVendasItens.ActiveControl = edProduto
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

procedure TFrmVendasItens.ActSimilarExecute(Sender: TObject);
begin
     //
     If Datasource.DataSet.State = dsBrowse Then
       Datasource.DataSet.Append;

     if FrmLocProdutoCadastro_Auto.Showmodal = MROK then
        Datasource.DataSet.FieldByName('PRODUTOFIS').asString := (FrmLocProdutoCadastro_Auto.CampTrecho);


     FrmLocProdutoCadastro_Auto.LblTitulo.Caption := 'Localizar Produto' ;

     IF CancelaQtd then
     begin
       MessageDlg('Estoque Insuficiente!', mtError, [mbOK], 0);
       btnCancelar.OnClick ( btnCancelar );
       exit ;
     end
     else
     begin
        if ((Datasource.DataSet.FieldByName('PRODUTOFIS').asString <> '')
             and
           (Datasource.DataSet.FieldByName('PRODUTO').asString <> Datasource.DataSet.FieldByName('PRODUTOFIS').asString)
             and
           (Not Datasource.DataSet.FieldByName('PRODUTOFIS').IsNull))
        then
        begin
          If cmbUnidade.enabled then
            cmbUnidade.SetFocus
          else
            edPrcUnit.SetFocus ;
        end
        else
        begin
               MessageDlg('Não Foi Selecinado '+#13+#10+'Um Produto Válido', mtError, [mbOK], 0);
               DataSource.DataSet.Cancel ;
               EdProduto.SetFocus ;
        end;

        LocSimilar := False ;
     END;
end;

procedure TFrmVendasItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     FrmLocProdutoCadastro_Auto.free;
     FrmLocProdutoCadastro_Auto := nil;
     DsUnidade.DataSet.Close        ;
     DsSubUnidade.DataSet.Close     ;

end;

procedure TFrmVendasItens.btnSalvarEnter(Sender: TObject);
begin
     btnSalvar.Colors.Default := StrToInt(DmaPp.COR_FUNDO_SEL) ;
end;

procedure TFrmVendasItens.btnSalvarExit(Sender: TObject);
begin
     btnSalvar.Colors.Default := clMenu ;
end;

procedure TFrmVendasItens.edProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmVendasItens.edQtdadeEnter(Sender: TObject);
begin
     CorFundo ( Sender );
     PorcDesc := FrmVendas.Vendas_ItensPORC_DESC.Value ;
end;

procedure TFrmVendasItens.cmbUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.CmbSubUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.ActNovoCfopExecute(Sender: TObject);
begin
  if (Not FrmVendas.Vendas_ItensProduto.IsNull) then
  begin
    If Datasource.DataSet.State = dsBrowse then
      Datasource.DataSet.Edit;

      //Chama a Tela Para Localizar Naturezas
      Application.CreateForm(TFrm_Localizar_Natureza, Frm_Localizar_Natureza);
      Frm_Localizar_Natureza.DSource.dataset := DmVendas.SelNatureza ;

      if (Frm_Localizar_Natureza.showmodal = mrOk) Then
        FrmVendas.Vendas_ItensCFOP.Value := (Frm_Localizar_Natureza.CampTrecho) ;

      Frm_Localizar_Natureza.free   ;
      Frm_Localizar_Natureza := Nil ;

      Datasource.DataSet.Post;
  end;
end;

procedure TFrmVendasItens.DataSourceStateChange(Sender: TObject);
begin
     //Autorizado para desconto acima do máximo
     Autorizado := False;
end;

procedure TFrmVendasItens.EdServicoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmVendasItens.ActComplementoExecute(Sender: TObject);
begin
     //COMPLEMENTO
     If not (FrmVendas.Vendas_Itens.state in [ dsinsert,dsedit ]) then
       FrmVendas.Vendas_Itens.edit;

     FrmVendas.Vendas_ItensCOMPLEMENTO.Value := DmVendas.PedeComplemento(FrmVendas.Vendas_ItensCOMPLEMENTO.Value,FrmVendas.Vendas_ItensProduto.value+'-'+FrmVendas.Vendas_ItensNome_Produto.value);
     FrmVendas.Vendas_Itens.Post ;

     ActInserir.execute ;
end;

procedure TFrmVendasItens.ActlocalizarGradeExecute(Sender: TObject);
begin
  //Chama a Tela Para Localizar Naturezas
  Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);
  DMVENDAS.Lista_Grades.close ;
  DMVENDAS.Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
  DMVENDAS.Lista_Grades.ParamByName ('PRODUTO').ASSTRING := FrmVendas.Vendas_ItensPRODUTO.value ;
  DMVENDAS.Lista_Grades.open  ;

  Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

  if (Frm_Localizar_Grades.showmodal = mrOk ) then
  begin
    Frm_Localizar_Grades.CAMPtRECHO ;
    FrmVendas.Vendas_ItensGRADE.VALUE  := (Frm_Localizar_Grades.GRADE);
    FrmVendas.Vendas_ITENSNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);
  end;

  Frm_Localizar_Grades.FREE;
  Frm_Localizar_Grades := NIL;
end;

procedure TFrmVendasItens.ActLocalizarNumeroExecute(Sender: TObject);
begin
     //Chama a Tela Para Localizar Naturezas
     Application.CreateForm(TFrm_Localizar_Grades, Frm_Localizar_Grades);

     WITH DMVENDAS DO
     BEGIN
          Lista_Grades.close ;
          Lista_Grades.ParamByName ('CNPJ'  ).ASSTRING  := DMAPP.CNPJ                         ;
          Lista_Grades.ParamByName ('PRODUTO').ASSTRING := FrmVendas.Vendas_ItensPRODUTO.value ;
          Lista_Grades.open  ;
     END;

     Frm_Localizar_Grades.DSource.DataSet := DMVENDAS.Lista_Grades ;

     IF ( Frm_Localizar_Grades.showmodal = mrOk ) Then
       FrmVendas.Vendas_ITENSNUMERO.VALUE := (Frm_Localizar_Grades.Camptrecho);

     Frm_Localizar_Grades.FREE   ;
     Frm_Localizar_Grades := NIL ;
     //
end;

procedure TFrmVendasItens.edQtdadeFISEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmVendasItens.edPrcUnitFISExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmVendasItens.EDGRADEEnter(Sender: TObject);
begin
     CorFundo ( Sender );
     //Verificando Grade
     with dmVendas2 do
     begin
       if trim(edProduto.Text) <> ''  then
       begin
         qConsultaGrade.close;
         qConsultaGrade.parambyname('cnpj').value := dmapp.cnpj;
         qConsultaGrade.parambyname('produto').value := frmVendas.Vendas_ItensProduto.value;
         qConsultaGrade.open;

         if ((qConsultaGradeCOUNT.VALUE > 0) and (frmVendas.Vendas_ItensGRADE.value = '') and (frmVendas.Vendas_ItensNUMERO.asString = '')) then
            ActlocalizarGradeExecute(Sender);
       end;
     end;
end;



procedure TFrmVendasItens.ActConfCamposExecute(Sender: TObject);
begin
  {
    Apenas para validar se será permitido ao usuário editar a exibição dos itens
    da grid ou qualquer outra função de visualização
  }
end;

end.
