 unit ProdutosFor_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinXmas2008Blue, Menus,
  cxButtons, cxLabel;

type
  TFRelProdutosFor = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    cmbFornecedor: TdxLookupEdit;
    dsFornecedores: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label7: TcxLabel;
    EdTipo: TdxPickEdit;
    CkEstoque: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbFornecedorEnter(Sender: TObject);
    procedure cmbFornecedorExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelProdutosFor: TFRelProdutosFor;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelProdutosFor.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelProdutosFor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelProdutosFor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsFornecedores.DataSet.Close;
  //
  Action := caFree;
  FRelProdutosFor := Nil;
end;

procedure TFRelProdutosFor.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelProdutosFor.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelProdutosFor.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '         Codigo Nome                                                  Estoque  Data U.C. Qtdade U.C. Preco U.C.  Preco Venda  Qdade Loja', [Comp17]);
  Print.ImpF(06, 01, '--------------- -------------------------------------------------- ---------- ---------- ----------- ---------- ------------ -----------', [Comp17]);
  linha  := 07;
end;

procedure TFRelProdutosFor.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsFornecedores.DataSet.Open;
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

procedure TFRelProdutosFor.ActPreviewExecute(Sender: TObject);
Var
   Qntde: Integer;
begin
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  Print.TitulodoRelatorio := 'Listagem de Produtos por Fornecedor - (' + Trim(cmbFornecedor.Text) + ')';
  //
  DMRelatorios.ProdutosFornecedor.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  If EdTipo.Text = 'Ativo' Then
      DMRelatorios.ProdutosFornecedor.ParamByName('ATV' ).asString     := 'S'
      Else
          DMRelatorios.ProdutosFornecedor.ParamByName('ATV' ).asString     := 'N';

  If cmbFornecedor.Text <> '' Then
     DMRelatorios.ProdutosFornecedor.ParamByName('FORNECEDOR').asInteger := cmbFornecedor.LookupKeyValue
  Else
     Begin
       ShowMessage('Você deve informar corretamente o Fornecedor !');
       Exit;
     End;
  //
  DMRelatorios.ProdutosFornecedor.Open;
  //
  If DMRelatorios.ProdutosFornecedor.RecordCount = 0 Then
     Begin
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.ProdutosFornecedor.Close;
       //
       cmbFornecedor.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.ProdutosFornecedor.FetchAll ;
          Anda.Max := DMRelatorios.ProdutosFornecedor.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;
  //
  print.Abrir;

  Qntde := 0;

  //
  DMRelatorios.ProdutosFornecedor.First;
  While Not DMRelatorios.ProdutosFornecedor.Eof Do
        Begin
             If ( CkEstoque.Checked )
             then begin
                  if ( DMRelatorios.ProdutosFornecedorQTDADE_2.value > 0 )
                  then begin
                       //
                       Print.ImpF(Linha, 01, Format('%15s %-50s %10s %10s %11s %10s %12s ___________',
                                       [DMRelatorios.ProdutosFornecedorCODIGO.Text,
                                        DMRelatorios.ProdutosFornecedorNOME.Text,
                                        DMRelatorios.ProdutosFornecedorQTDADE_2.Text,
                                        DMRelatorios.ProdutosFornecedorDT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorQT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_REPOS.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_VENDA.Text]), [Comp17]);
                       //
                       Inc(Linha);
                       inc(qntde);
                  end;
             end
             else begin
                  //
                  Print.ImpF(Linha, 01, Format('%15s %-50s %10s %10s %11s %10s %12s ___________',
                                       [DMRelatorios.ProdutosFornecedorCODIGO.Text,
                                        DMRelatorios.ProdutosFornecedorNOME.Text,
                                        DMRelatorios.ProdutosFornecedorQTDADE_2.Text,
                                        DMRelatorios.ProdutosFornecedorDT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorQT_ULT_COMPRA.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_REPOS.Text,
                                        DMRelatorios.ProdutosFornecedorPRC_VENDA.Text]), [Comp17]);
                  //
                  inc(qntde);
                  Inc(Linha);
             end;
             //
             Anda.Position := Anda.Position + 1;
             DMRelatorios.ProdutosFornecedor.Next;
             //
             If Linha >= 63 Then
             Print.Novapagina;
        End;
  //
  Inc(Linha);

  Print.ImpF(Linha, 01, 'QUANTIDADE ==> ' + inttostr(qntde) , [Comp17]);

  DMRelatorios.ProdutosFornecedor.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelProdutosFor.cmbFornecedorEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelProdutosFor.cmbFornecedorExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.


