unit ListaPrecosUnid_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint, ComCtrls,
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
  dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelListaPrecosUnid = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TcxLabel;
    cmbGrupoInicial: TdxLookupEdit;
    dsGrupos: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbGrupoFinal: TdxLookupEdit;
    Label1: TcxLabel;
    edDesconto: TdxCurrencyEdit;
    edDtInicial: TdxDateEdit;
    edDtFinal: TdxDateEdit;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label6: TcxLabel;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label7: TcxLabel;
    EdTipo: TdxPickEdit;
    stgFRelListaPrecosUnid: TcxPropertiesStore;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure EdTipoEnter(Sender: TObject);
    procedure EdTipoExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelListaPrecosUnid: TFRelListaPrecosUnid;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelListaPrecosUnid.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListaPrecosUnid.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaPrecosUnid.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsGrupos.DataSet.Close;

  Action := caFree;
  FRelListaPrecosUnid := Nil;
end;

procedure TFRelListaPrecosUnid.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaPrecosUnid.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListaPrecosUnid.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '* GRUPO', [Comp17, Negrito]);
  Print.ImpF(06, 01, '  ** SUBGRUPO', [Comp17, Negrito]);
  Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(08, 01, '                                                                                    Prc. Unit.     Prc. Emb.    Prc. Unit.     Prc. Emb.', [Comp17]);
  Print.ImpF(09, 01, '         Codigo Nome                                               Unid.  Qtdade       a Vista       a Vista       a Prazo       a Prazo', [Comp17]);
  Print.ImpF(10, 01, '--------------- -------------------------------------------------- ----- ------- ------------- ------------- ------------- -------------', [Comp17]);
  linha  := 11;
end;

procedure TFRelListaPrecosUnid.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    dsGrupos.DataSet.Open;
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
  edDtInicial.Date := DMApp.DataHora('D');
  edDtFinal.Date   := DMApp.DataHora('D') + 15;
end;

procedure TFRelListaPrecosUnid.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  DMRelatorios.Perc_Desconto := edDesconto.Value;
  //
  Grupo := 0;
  SubGrupo := 0;
  //
  Print.TitulodoRelatorio := 'Lista de Precos por Unidade - Valida de ' + edDtInicial.Text + ' a ' + edDtFinal.Text;
  //
  DMRelatorios.ListaUnid.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  If EdTipo.Text = 'Ativo' Then
     DMRelatorios.ListaUnid.ParamByName('ATV' ).asString     := 'S'
     Else
       DMRelatorios.ListaUnid.ParamByName('ATV' ).asString     := 'N';
  //
  If cmbGrupoInicial.Text <> '' Then
     DMRelatorios.ListaUnid.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text
  Else
     DMRelatorios.ListaUnid.ParamByName('GRUPO_INI').asString := '';
  //
  If cmbGrupoFinal.Text <> '' Then
     DMRelatorios.ListaUnid.ParamByName('GRUPO_FIM').asString := cmbGrupoFinal.Text
  Else
     DMRelatorios.ListaUnid.ParamByName('GRUPO_FIM').asString := Replicate('Z', 50);
  //
  DMRelatorios.ListaUnid.Open;
  //
  If DMRelatorios.ListaUnid.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.ListaUnid.Close;
       //
       cmbGrupoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.ListaUnid.FetchAll ;
          Anda.Max := DMRelatorios.ListaUnid.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;

  //
  print.Abrir;
  //
  DMRelatorios.ListaUnid.First;
  While Not DMRelatorios.ListaUnid.Eof Do
        Begin
          //
          If Grupo <> DMRelatorios.ListaUnidCODIGO_G.Value then
             Begin
               //
               If Grupo <> 0 Then
                  Begin
                    Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
                    Inc(Linha);
                  End;
               //
               Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.ListaUnidNOME_GRUPO.Text, [Comp17, Negrito]);
               Grupo := DMRelatorios.ListaUnidCODIGO_G.Value;
               SubGrupo := 0;
               //
               Linha := Linha + 2;
             End;
          //
          If SubGrupo <> DMRelatorios.ListaUnidSUBGRUPO.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.ListaUnidNOME_SUBGRUPO.Text, [Comp17, Negrito]);
               SubGrupo := DMRelatorios.ListaUnidSUBGRUPO.Value;
               //
               Linha := Linha + 3;
             End;
          //
          Print.ImpF(Linha, 01, Format('%15s %-50s %-5s %7s %13s %13s %13s %13s',
                                       [
                                        DMRelatorios.ListaUnidCODIGO.Text,
                                        DMRelatorios.ListaUnidNOME.Text,
                                        DMRelatorios.ListaUnidUNIDADE.Text,
                                        DMRelatorios.ListaUnidSUBUNIDADE.Text,
                                        DMRelatorios.ListaUnidPRC_UNIT_VIS.Text,
                                        DMRelatorios.ListaUnidPRC_VENDA_VIS.Text,
                                        DMRelatorios.ListaUnidPRC_UNIT.Text,
                                        DMRelatorios.ListaUnidPRC_VENDA.Text
                                       ]), [Comp17]);
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.ListaUnid.Next;
          //
          Inc(Linha);
          //
          If Linha >= 63 Then
             Print.Novapagina;
        End;
  Print.ImpF(Linha, 01, Replicate('-', 136), [Comp17]);
  //
  DMRelatorios.ListaUnid.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelListaPrecosUnid.EdTipoEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelListaPrecosUnid.EdTipoExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
