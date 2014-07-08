  unit Ordens_ServicosItens_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxEditor, dxExEdtr, dxDBEdtr, dxDBELib, dxCntner, dxEdLib, StdCtrls,
   ExtCtrls, Db, Grids, DBGrids, ActnList, dxDBGrid, dxDBTLCl,
  dxGrClms, dxTL, dxDBCtrl, cxGraphics, cxControls, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
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
  TFrmOrdensServicosItens = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    edProduto: TdxDBEdit;
    DataSource: TDataSource;
    dsProdutos: TDataSource;
    edPrcTotal: TdxDBEdit;
    EDNOME: TdxDBEdit;
    ActLista: TActionList;
    ActSalvar: TAction;
    ActCancelar: TAction;
    ActInserir: TAction;
    Label7: TcxLabel;
    LblContagem: TcxLabel;
    Label6: TcxLabel;
    LblItens: TcxLabel;
    Label8: TcxLabel;
    LblTotal: TcxLabel;
    GridItens: TDBGrid;
    Label3: TcxLabel;
    edPrcUnit: TdxDBCalcEdit;
    edQtdade: TdxDBCalcEdit;
    Tecnico_Auxiliar: TcxDBLookupComboBox;
    Label4: TcxLabel;
    dsTecnico: TDataSource;
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActInserirExecute(Sender: TObject);
    procedure edPrcUnitExit(Sender: TObject);
    procedure edQtdadeExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnSalvarEnter(Sender: TObject);
    procedure btnSalvarExit(Sender: TObject);
    procedure edProdutoEnter(Sender: TObject);
    procedure cmbUnidadeExit(Sender: TObject);
    procedure CmbSubUnidadeExit(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure EdServicoEnter(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }

  public
    { Public declarations }

    ULTLINHA  : INTEGER;
    LocServ   : Boolean;
    CancelaQtd: Boolean;
    Autorizado: Boolean;
    procedure Calcular_Itens;
    procedure Carregar ;
  end;

var
  FrmOrdensServicosItens: TFrmOrdensServicosItens;
  PorcDesc: Real;
implementation

uses
     Main,
     Servicos_DM,
     Application_DM,
     Funcoes, Localizar_Servicos, Localizar_Produto_Cadastro_Auto ;

{$R *.DFM}

procedure TFrmOrdensServicosItens.Carregar ;
begin
     With DmServicos do
     begin
          DataSource.DataSet.DisableControls ;

          SelMotoresServicos.CLose ;

          SelMotoresServicos.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj ;
          SelMotoresServicos.ParamByName ('CODIGO').AsInteger := OrdemMOTOR.value ;

          SelMotoresServicos.Open  ;

          DataSource.DataSet.EnableControls ;
     end;
end;

procedure TFrmOrdensServicosItens.Calcular_Itens;
Var bReg: Pointer;
    tProdutos: Extended;
    Itens    : Integer ;
    Contagem : Extended;
begin
  //
  If DataSource.DataSet.RecordCount > 0 Then
     bReg := DataSource.DataSet.GetBookmark;
  //
  DataSource.DataSet.DisableControls;
  //
  tProdutos := 0;
  //
  if ( DataSource.state in [ dsinsert, dsedit ] )
  then
      DataSource.DataSet.Cancel ;

  DataSource.DataSet.First;
  Itens    := 0;
  Contagem := 0;
  //
  While Not DataSource.DataSet.Eof Do
        Begin
          //
          tProdutos := tProdutos + DataSource.DataSet.FieldByName('TOTAL'       ).asFloat;
          Contagem  := Contagem + DataSource.DataSet.FieldByName('QUANTIDADE'   ).asFloat;
          Itens     := Itens + 1 ;
          //
          DataSource.DataSet.Next;
        End;

  LblItens.Caption    := FormatFloat('###,##0',           itens     );
  LblContagem.Caption := FormatFloat('###,##0',           Contagem  );
  LblTotal.Caption    := FormatFloat('###,###,##0.00',    TProdutos );
  //
  If DataSource.DataSet.RecordCount > 0 Then
     Begin
       DataSource.DataSet.GotoBookmark(bReg);
       DataSource.DataSet.FreeBookmark(bReg);
     End;
  //
  DataSource.DataSet.EnableControls;
end;

procedure TFrmOrdensServicosItens.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdensServicosItens.FormCreate(Sender: TObject);
begin
     ULTLINHA   := 0 ;
     LocServ    := False ;
     FrmLocProdutoCadastro_Auto := TFrmLocProdutoCadastro_Auto.Create(Self);
end;

procedure TFrmOrdensServicosItens.ActSalvarExecute(Sender: TObject);
begin
  //
  Try
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
end;

procedure TFrmOrdensServicosItens.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DmServicos.Servicos_Itens.DisableControls ;
          DataSource.DataSet.Cancel ;
          EdProduto.SetFocus ;
          DmServicos.Servicos_Itens.EnableControls ;
     end
     else
         Close;
end;

procedure TFrmOrdensServicosItens.btnBuscaClick(Sender: TObject);
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

procedure TFrmOrdensServicosItens.ActInserirExecute(Sender: TObject);
begin
     LocServ    := False ;
     CancelaQtd := False ;

     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmOrdensServicosItens.edPrcUnitExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF DmApp.PDV_VALOR_ZERADO <> 'S'
     THEN BEGIN
          IF ( trim( edPrcUnit.Text ) = '0') or ( trim( edPrcUnit.Text ) = '0,00' ) or ( trim( edPrcUnit.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
          THEN BEGIN
               MessageDlg('Digite o Valor!',MtError,[MbOk],0);
               edPrcUnit.SetFocus ;
               Exit;
          END;
     END;
end;

procedure TFrmOrdensServicosItens.edQtdadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' ) and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite a Quantidade!',MtError,[MbOk],0);
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmOrdensServicosItens.edProdutoExit(Sender: TObject);
Var
   Aux: String;
begin

  if trim( edProduto.Text ) = ''   then
  begin
    if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
      DmServicos.Servicos_ItensPRODUTO.value := FrmLocProdutoCadastro_Auto.CampTrecho;

    edProduto.SetFocus ;
  end
  else
  begin
    if (LocServ) and ( DmApp.CHM_PROD_INEXIST = 'S') then
    begin
      Aux := edProduto.Text ;

      If DmApp.Elimina_Zeros = 'S' THEN
      begin
        while Copy ( Aux, 1, 1 ) = '0' DO
        begin
          Aux := Copy ( Aux, 2, 15 );
        end;
      end;

      if DmApp.Acrescenta_Zeros = 'S' then
      begin
        while Length ( Aux ) < 10 DO
        begin
          Aux := '0' + Aux ;
        end;
      end;

      edProduto.Text := Aux ;
      FrmLocProdutoCadastro_Auto.EdCodigo.Text := EdProduto.Text ;

      if FrmLocProdutoCadastro_Auto.Showmodal = mrok then
        DmServicos.Servicos_ItensPRODUTO.value := FrmLocProdutoCadastro_Auto.CampTrecho;

      edProduto.SetFocus ;
      LocServ := False ;
    end;
  end;

  LocServ := False ;

  //TROCA A COR DE FUNDO
  TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens.FormShow(Sender: TObject);
begin
     IF (DmApp.OFC_COR_FUNDO) <> ''
     THEN BEGIN
          pnlClient.Color := StrToInt(DmApp.OFC_COR_FUNDO);
     END;

     IniciaComponentes ( Self as TForm );

     DmServicos.Servicos_Itens.Open ;

     If Not(  DataSource.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          ActInserir.Execute ;
     end;

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Servico, Frm_Localizar_Servico) ;

     Carregar ;      
end;

procedure TFrmOrdensServicosItens.btnSalvarEnter(Sender: TObject);
begin
   btnSalvar.Colors.Default := StrToInt(DmaPp.COR_FUNDO_SEL) ;
end;

procedure TFrmOrdensServicosItens.btnSalvarExit(Sender: TObject);
begin
     btnSalvar.Colors.Default := clMenu ;
end;

procedure TFrmOrdensServicosItens.edProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens.cmbUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens.CmbSubUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens.DataSourceStateChange(Sender: TObject);
begin
     //Autorizado para desconto acima do máximo
     Autorizado := False;
end;

procedure TFrmOrdensServicosItens.EdServicoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmServicos.Servicos_Itens.Close ;

     FrmLocProdutoCadastro_Auto.free   ;
     FrmLocProdutoCadastro_Auto := Nil ;
end;

end.
