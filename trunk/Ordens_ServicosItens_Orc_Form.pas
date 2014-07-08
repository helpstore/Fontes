  unit Ordens_ServicosItens_Orc_Form;

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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFrmOrdensServicosItens_Orc = class(TForm)
    Panel1: TPanel;
    pnlClient: TPanel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    Label1: TcxLabel;
    Label2: TcxLabel;
    edProduto: TdxDBEdit;
    DataSource: TDataSource;
    btnBusca: TcxButton;
    dsProdutos: TDataSource;
    edPrcTotal: TdxDBEdit;
    EDNOME: TdxDBEdit;
    ActLista: TActionList;
    ActLookUP: TAction;
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
    procedure edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure ActSalvarExecute(Sender: TObject);
    procedure ActCancelarExecute(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure ActLookUPExecute(Sender: TObject);
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
    procedure Carregar ;

  public
    { Public declarations }

    ULTLINHA  : INTEGER;
    LocServ   : Boolean;
    CancelaQtd: Boolean;
    Autorizado: Boolean;
    procedure Calcular_Itens;
  end;

var
  FrmOrdensServicosItens_Orc: TFrmOrdensServicosItens_Orc;
  PorcDesc: Real;
implementation

uses
     Main,
     Servicos_DM,
     Application_DM,
     Funcoes, Localizar_Servicos ;

{$R *.DFM}

procedure TFrmOrdensServicosItens_Orc.Carregar ;
begin
     With DmServicos do
     begin
          DataSource.DataSet.DisableControls ;

          SelMotoresServicos.CLose ;

          SelMotoresServicos.ParamByName ('CNPJ'  ).AsString  := DmApp.Cnpj ;
          SelMotoresServicos.ParamByName ('CODIGO').AsInteger := Ordem_OrcMOTOR.value ;

          SelMotoresServicos.Open  ;

          DataSource.DataSet.EnableControls ;
     end;
end;

procedure TFrmOrdensServicosItens_Orc.Calcular_Itens;
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

procedure TFrmOrdensServicosItens_Orc.edProdutoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmOrdensServicosItens_Orc.FormCreate(Sender: TObject);
begin
     ULTLINHA   := 0 ;
     LocServ    := False ;
end;

procedure TFrmOrdensServicosItens_Orc.ActSalvarExecute(Sender: TObject);
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

procedure TFrmOrdensServicosItens_Orc.ActCancelarExecute(Sender: TObject);
begin
     If DataSource.State in [ dsinsert, dsedit ]
     then begin  //
          DmServicos.Servicos_Itens_Orc.DisableControls ;
          DataSource.DataSet.Cancel ;
          EdProduto.SetFocus ;
          DmServicos.Servicos_Itens_Orc.EnableControls ;
     end
     else
         Close;
end;

procedure TFrmOrdensServicosItens_Orc.btnBuscaClick(Sender: TObject);
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

procedure TFrmOrdensServicosItens_Orc.ActLookUPExecute(Sender: TObject);
begin
     If FrmOrdensServicosItens_Orc.ActiveControl = edProduto Then
        btnBusca.OnClick(btnBusca);
end;

procedure TFrmOrdensServicosItens_Orc.ActInserirExecute(Sender: TObject);
begin
     LocServ    := False ;
     CancelaQtd := False ;

     If Not ( DataSource.State in [ dsedit, dsinsert ] )
     then
         DataSource.DataSet.Append ;

     edProduto.SetFocus ;
end;

procedure TFrmOrdensServicosItens_Orc.edPrcUnitExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF ( trim( edPrcUnit.Text ) = '0') or ( trim( edPrcUnit.Text ) = '0,00' ) or ( trim( edPrcUnit.Text ) = '' )and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite o Valor!',MtError,[MbOk],0);
          edPrcUnit.SetFocus ;
          Exit;
     END;
end;

procedure TFrmOrdensServicosItens_Orc.edQtdadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );

     IF ( trim( edQtdade.Text ) = '0' ) or (  trim( edQtdade.Text ) = '0,00' ) or ( trim( edQtdade.Text ) = '' ) and ( not ( Datasource.DataSet.State in [dsBrowse]))
     then begin
          MessageDlg('Digite a Quantidade!',MtError,[MbOk],0);
          edQtdade.SetFocus ;
     end;
end;

procedure TFrmOrdensServicosItens_Orc.edProdutoExit(Sender: TObject);
Var
   Aux: String;
begin
     IF trim( edProduto.Text ) = ''
     then begin
          //
          If Datasource.DataSet.State = dsBrowse Then
          Datasource.DataSet.Append;

          if Frm_Localizar_Servico.Showmodal = mrok
          then begin
               Datasource.DataSet.FieldByName('SERVICO').asInteger := ( Frm_Localizar_Servico.CampTrecho );
          end;

          edProduto.SetFocus ;
     end
     Else begin
          If ( LocServ ) and ( DmApp.CHM_PROD_INEXIST = 'S' )
          then begin
               //
               If Datasource.DataSet.State = dsBrowse Then
               Datasource.DataSet.Append;

               if Frm_Localizar_Servico.Showmodal = mrok
               then begin
                    Datasource.DataSet.FieldByName('SERVICO').asInteger := ( Frm_Localizar_Servico.CampTrecho );
               end;

               edProduto.SetFocus ;

               LocServ := False ;
          end;
     end;

     LocServ := False ;

     //TROCA A COR DE FUNDO
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens_Orc.FormShow(Sender: TObject);
begin
     IF (DmApp.OFC_COR_FUNDO) <> ''
     THEN BEGIN
          pnlClient.Color := StrToInt(DmApp.OFC_COR_FUNDO);
     END;

     IniciaComponentes ( Self as TForm );

     DmServicos.Servicos_Itens_Orc.Open ;

     If Not(  DataSource.DataSet.State in [ dsinsert, dsedit ] )
     then begin
          ActInserir.Execute ;
     end;

     //Cria o Formulario de Localizar Cliente
     Application.CreateForm(TFrm_Localizar_Servico, Frm_Localizar_Servico) ;

     Carregar ;      
end;

procedure TFrmOrdensServicosItens_Orc.btnSalvarEnter(Sender: TObject);
begin
     btnSalvar.Colors.Default := StrToInt(DmaPp.COR_FUNDO_SEL) ;
end;

procedure TFrmOrdensServicosItens_Orc.btnSalvarExit(Sender: TObject);
begin
     btnSalvar.Colors.Default := clMenu ;
end;

procedure TFrmOrdensServicosItens_Orc.edProdutoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens_Orc.cmbUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens_Orc.CmbSubUnidadeExit(Sender: TObject);
begin
     TiraCorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens_Orc.DataSourceStateChange(Sender: TObject);
begin
     //Autorizado para desconto acima do máximo
     Autorizado := False;
end;

procedure TFrmOrdensServicosItens_Orc.EdServicoEnter(Sender: TObject);
begin
     CorFundo ( Sender );
end;

procedure TFrmOrdensServicosItens_Orc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     DmServicos.Servicos_Itens_Orc.Close ;

     Frm_Localizar_Servico.free   ;
     Frm_Localizar_Servico := Nil ;
end;

end.
