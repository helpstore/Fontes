unit ListaPrecos_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,   ComCtrls,   cxGraphics,
  cxLookAndFeels, cxLookAndFeelPainters, Menus, cxButtons;

type
  TFRelListaPrecos = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: tcxButton;
    RzBitBtn2: tcxButton;
    Actions: TActionList;
    ActPreview: TAction;
    ActFechar: TAction;
    Label2: TLabel;
    cmbGrupoInicial: TdxLookupEdit;
    dsGrupos: TDataSource;
    Print: TRDprint;
    ActBuscarProd: TAction;
    Label3: TLabel;
    cmbGrupoFinal: TdxLookupEdit;
    LblStatus: TLabel;
    ANDA: TProgressBar;
    Label4: TLabel;
    EdTipo: TdxPickEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbGrupoInicialEnter(Sender: TObject);
    procedure cmbGrupoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelListaPrecos: TFRelListaPrecos;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelListaPrecos.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelListaPrecos.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelListaPrecos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsGrupos.DataSet.Close;
  //
  //
  Action := caFree;
  FRelListaPrecos := Nil;
end;

procedure TFRelListaPrecos.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelListaPrecos.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelListaPrecos.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(NOW()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05, 01, '* GRUPO', [Normal, Negrito]);
  Print.ImpF(06, 01, '  ** SUBGRUPO', [Normal, Negrito]);
  Print.ImpF(07, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(08, 01, '        Codigo Nome                                         Unid.          Preco', [Normal]);
  Print.ImpF(09, 01, '-------------- -------------------------------------------- ----- --------------', [Normal]);
  linha  := 10;
end;

procedure TFRelListaPrecos.FormShow(Sender: TObject);
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
end;

procedure TFRelListaPrecos.ActPreviewExecute(Sender: TObject);
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Grupo := 0;
  SubGrupo := 0;
  //
  Print.TitulodoRelatorio := 'Lista de Precos';
  //
  DMRelatorios.ListaPrecos.ParamByName('CNPJ').asString     := DMApp.Cnpj;
  If (EdTipo.Text = 'Ativo') Then
       DMRelatorios.ListaPrecos.ParamByName('ATV' ).asString     := 'S'
       Else
          DMRelatorios.ListaPrecos.ParamByName('ATV' ).asString     := 'N';
  //
  If cmbGrupoInicial.Text <> '' Then
     DMRelatorios.ListaPrecos.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text
  Else
     DMRelatorios.ListaPrecos.ParamByName('GRUPO_INI').asString := '';
  //
  If cmbGrupoFinal.Text <> '' Then
     DMRelatorios.ListaPrecos.ParamByName('GRUPO_FIM').asString := cmbGrupoFinal.Text
  Else
     DMRelatorios.ListaPrecos.ParamByName('GRUPO_FIM').asString := Replicate('Z', 50);
  //
  DMRelatorios.ListaPrecos.Open;
  //
  If DMRelatorios.ListaPrecos.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.ListaPrecos.Close;
       //
       cmbGrupoInicial.SetFocus;
       Exit;
     End
   Else
   Begin
        lblStatus.Visible := False ;
        DMRelatorios.PosicaoEstoque.FetchAll ;
        Anda.Max := DMRelatorios.ListaPrecos.RecordCount;
        Anda.Position := 0;
        Anda.Visible  := TRUE ;
   End;
  //
  print.Abrir;
  //
  DMRelatorios.ListaPrecos.First;
  While Not DMRelatorios.ListaPrecos.Eof Do
        Begin
          //
          If Grupo <> DMRelatorios.ListaPrecosCODIGO_G.Value then
             Begin
               //
               If Grupo <> 0 Then
                  Begin
                    Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);
                    Inc(Linha);
                  End;
               //
               Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.ListaPrecosNOME_GRUPO.Text, [Normal, Negrito]);
               Grupo := DMRelatorios.ListaPrecosCODIGO_G.Value;
               SubGrupo := 0;
               //
               Linha := Linha + 2;
             End;
          //
          If SubGrupo <> DMRelatorios.ListaPrecosSUBGRUPO.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.ListaPrecosNOME_SUBGRUPO.Text, [Normal, Negrito]);
               SubGrupo := DMRelatorios.ListaPrecosSUBGRUPO.Value;
               //
               Linha := Linha + 3;
             End;
          //
          Print.ImpF(Linha, 01, Format('%14s %-44s %-5s %14s',
                                       [DMRelatorios.ListaPrecosCODIGO.Text,
                                        Copy(DMRelatorios.ListaPrecosNOME.Text, 1, 43),
                                        DMRelatorios.ListaPrecosUNIDADE.Text,
                                        DMRelatorios.ListaPrecosPRC_VENDA.Text]), [Normal]);
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.ListaPrecos.Next;
          //
          Inc(Linha);
          //
          If Linha >= 63 Then
             Print.Novapagina;
        End;
  Print.ImpF(Linha, 01, Replicate('-', 80), [Normal]);
  //
  DMRelatorios.ListaPrecos.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelListaPrecos.cmbGrupoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelListaPrecos.cmbGrupoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
