 unit ConfEtiquetas_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, dxBarDBNav, dxBar, dxCntner, dxEditor,
  dxEdLib, dxDBELib, StdCtrls, Db, IBCustomDataSet, RDprint, dxExEdtr,
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
  dxSkinXmas2008Blue, dxSkinsdxBarPainter, cxClasses, cxLabel;

type
  TFrmConfEtiquetas = class(TForm)
    pnlClient: TPanel;
    pnlBottom: TPanel;
    dxBarDockControl1: TdxBarDockControl;
    BarDBNavigator: TdxBarDBNavigator;
    BarManager: TdxBarManager;
    btnIncluir: TdxBarButton;
    btnExcluir: TdxBarButton;
    dxBarBDBNavFirst: TdxBarDBNavButton;
    dxBarBDBNavPrev: TdxBarDBNavButton;
    dxBarBDBNavNext: TdxBarDBNavButton;
    dxBarBDBNavLast: TdxBarDBNavButton;
    btnLocalizar: TdxBarButton;
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
    Label1: TcxLabel;
    Label2: TcxLabel;
    dxDBEdit1: TdxDBEdit;
    EdInicial: TdxDBEdit;
    b2: TBevel;
    LblTitulo: TcxLabel;
    DataSource: TDataSource;
    BtnFechar: TdxBarButton;
    Panel1: TPanel;
    ActFechar: TAction;
    LblRegistros: TcxLabel;
    Image1: TImage;
    Label3: TcxLabel;
    dxDBEdit2: TdxDBEdit;
    Label4: TcxLabel;
    dxDBEdit3: TdxDBEdit;
    Label5: TcxLabel;
    dxDBEdit4: TdxDBEdit;
    Label6: TcxLabel;
    dxDBEdit5: TdxDBEdit;
    Label7: TcxLabel;
    dxDBEdit6: TdxDBEdit;
    Label8: TcxLabel;
    dxDBEdit7: TdxDBEdit;
    Label9: TcxLabel;
    dxDBEdit8: TdxDBEdit;
    Label10: TcxLabel;
    dxDBEdit9: TdxDBEdit;
    IMPRESSORA: TRDprint;
    ActTestar: TAction;
    Label11: TcxLabel;
    dxDBEdit10: TdxDBEdit;
    Bevel2: TBevel;
    Label12: TcxLabel;
    CmbLpp: TdxDBPickEdit;
    Label13: TcxLabel;
    dxDBPickEdit1: TdxDBPickEdit;
    Label46: TcxLabel;
    dxDBCheckEdit11: TdxDBCheckEdit;
    Label14: TcxLabel;
    dxDBPickEdit2: TdxDBPickEdit;
    Label15: TcxLabel;
    dxDBCheckEdit1: TdxDBCheckEdit;
    Label16: TcxLabel;
    dxDBPickEdit3: TdxDBPickEdit;
    Label17: TcxLabel;
    dxDBCheckEdit2: TdxDBCheckEdit;
    Label18: TcxLabel;
    dxDBEdit11: TdxDBEdit;
    OpTestar: TdxBarButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActPostExecute(Sender: TObject);
    procedure ActCancelExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ActLocalizarExecute(Sender: TObject);
    procedure dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnlClientResize(Sender: TObject);
    procedure DataSourceStateChange(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure DataSourceDataChange(Sender: TObject; Field: TField);
    procedure ActTestarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConfEtiquetas: TFrmConfEtiquetas;

implementation

uses
    Application_DM,
    Main,
    Usuarios_DM,
    Funcoes,
    Estoque_Dm,
    Listagens_DM;

{$R *.DFM}

procedure TFrmConfEtiquetas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  If Datasource.DataSet.Tag = 0 Then
     Datasource.Dataset.Close;

  //


  //
  If FrmConfEtiquetas.FormStyle = fsMDIChild Then
     FrmMain.PnlClient.Visible := True;
  //
  Action := caFree;
  FrmConfEtiquetas := Nil;
end;

procedure TFrmConfEtiquetas.ActIncluirExecute(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Exit;
  Try
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
  EdInicial.SetFocus;
end;

procedure TFrmConfEtiquetas.ActExcluirExecute(Sender: TObject);
begin
  If MessageBox(Handle,'Tem certeza que deseja Excluir este Gênero ?',
                       'Atenção !!!',MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2)=IDYES Then
     DataSource.Dataset.Delete;
end;

procedure TFrmConfEtiquetas.ActPostExecute(Sender: TObject);
begin
  Try
    DataSource.DataSet.Post;
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

procedure TFrmConfEtiquetas.ActCancelExecute(Sender: TObject);
begin
  If DataSource.DataSet.State in dsEditModes Then
     DataSource.DataSet.Cancel
  Else
     BtnFechar.OnClick(BtnFechar);
end;

procedure TFrmConfEtiquetas.FormShow(Sender: TObject);
begin
  IniciaComponentes ( Self as TForm );
  //
  Try
    If Not(DataSource.DataSet.Active) Then
       Datasource.DataSet.Open;
    (Datasource.DataSet as TIBDataset).FetchAll;
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
  Datasource.AutoEdit := ActAlterar.Enabled;
  EdInicial.SetFocus;
end;

procedure TFrmConfEtiquetas.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, LblTitulo.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmConfEtiquetas.ActLocalizarExecute(Sender: TObject);
begin
  DMApp.Localizar(Datasource);
end;

procedure TFrmConfEtiquetas.dxDBEdit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmConfEtiquetas.pnlClientResize(Sender: TObject);
begin
  b2.Width := pnlClient.Width - 17;
  LblRegistros.Left := pnlClient.Width - 11 - LblRegistros.Width;
end;

procedure TFrmConfEtiquetas.DataSourceStateChange(Sender: TObject);
begin
  If DataSource.State in dsEditModes Then
     Begin
       ActIncluir.Enabled   := False;
       ActAlterar.Enabled   := False;
       ActExcluir.Enabled   := False;
       ActLocalizar.Enabled := False;
       BtnSalvar.Enabled    := True;
       BtnCancelar.Enabled  := True;
       ActFechar.Enabled    := False;
       ActTestar.Enabled    := False;
     End
  Else
     Begin
       ActIncluir.Enabled   := ActIncluir.Tag = 1;
       ActAlterar.Enabled   := ActAlterar.Tag = 1;
       ActExcluir.Enabled   := ActExcluir.Tag = 1;
       ActLocalizar.Enabled := True;
       BtnSalvar.Enabled    := False;
       BtnCancelar.Enabled  := False;
       ActFechar.Enabled    := True;
       ActTestar.Enabled    := True;
     End;
end;

procedure TFrmConfEtiquetas.ActFecharExecute(Sender: TObject);
begin
  If FrmConfEtiquetas.FormStyle = fsMDIChild Then
     FrmMain.opFechar.OnClick(FrmMain.opFechar)
  Else
     Close;
end;

procedure TFrmConfEtiquetas.DataSourceDataChange(Sender: TObject; Field: TField);
begin
  LblRegistros.Caption := IntToStr(Datasource.DataSet.Recno) + '/' + IntToStr(Datasource.Dataset.RecordCount);
end;

procedure TFrmConfEtiquetas.ActTestarExecute(Sender: TObject);
          Procedure  ImprimeColuna ( I: Integer; Codigo, Nome: String; Valor: Real; Atual, Largura, DstEntCol, Colunas: Integer; Esquerda: Integer) ;
          Var
             Sai: Boolean  ;
             Fonte: TFonte ;
             Col, CodFont, NomeFont, ValorFont: Integer;
             NegCod, NegNome, NegValor   : String ;
          begin
               Sai := False ;

               With DmEstoque do
               Begin
                    CodFont  := ConfEtiquetasFONTECODIGO.Value   ;
                    NomeFont := ConfEtiquetasFONTENOME.Value     ;
                    ValorFont:= ConfEtiquetasFONTEVALOR.Value    ;
                    NegCod   := ConfEtiquetasNEGRITOCODIGO.Value ;
                    NegNome  := ConfEtiquetasNEGRITONOME.Value   ;
                    NegValor := ConfEtiquetasNEGRITOVALOR.Value  ;
               end;

               Col := I ;

               Repeat
                     I := Col ;

                     If trim(Codigo) <> ''
                     then begin
                          I := I + 1;
                          //Codigo
                          Case CodFont of
                               5  : Begin
                                    If NegCod = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Codigo, [Expandido, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Codigo, [Expandido] );
                               end;
                               10 : begin
                                    If NegCod = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Codigo, [Normal, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Codigo, [Normal] );
                               end;
                               12 : begin
                                    If NegCod = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp12, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp12] ) ;
                               end;
                               17 : begin
                                    If NegCod = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp17, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp17] ) ;
                               end;
                               20 : begin
                                    If NegCod = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp20, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Codigo, [Comp20] ) ;
                               end;
                          end;
                     end;

                     If trim(Nome) <> ''
                     then begin
                         I := I + 1 ;
                         //Nome
                         Case NomeFont of
                              5  : Begin
                                    If NegNome = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Nome, [Expandido, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Nome, [Expandido] );
                               end;
                               10 : begin
                                    If NegNome = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Nome, [Normal, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Nome, [Normal] );
                               end;
                               12 : begin
                                    If NegNome = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp12, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp12] ) ;
                               end;
                               17 : begin
                                    If NegNome = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp17, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp17] ) ;
                               end;
                               20 : begin
                                    If NegNome = 'S'
                                    then
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp20, Negrito] )
                                    else
                                        Impressora.Impf ( I , Esquerda, Nome, [Comp20] );
                               end;
                         end;
                     end;

                     If Valor > 0
                     then begin
                          I := I + 1;
                          //Valor
                          Case ValorFont of
                          5  : Begin
                                    If NegValor = 'S'
                                    then
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Expandido, Negrito] )
                                    else
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Expandido] );
                               end;
                          10 : begin
                                    If NegValor = 'S'
                                    then
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Normal, Negrito] )
                                    else
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Normal] );
                               end;
                          12 : begin
                                    If NegValor = 'S'
                                    then
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp12, Negrito] )
                                    else
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp12] );
                               end;
                          17 : begin
                                    If NegValor = 'S'
                                    then
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp17, Negrito] )
                                    else
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp17] ) ;
                               end;
                          20 : begin
                                    If NegValor = 'S'
                                    then
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp20, Negrito] )
                                    else
                                        Impressora.ImpVal ( I , Esquerda, '##,##0.00', Valor, [Comp20] ) ;
                               end;
                          END;
                     end;

                     Atual := Atual + 1 ;

                     Esquerda := Esquerda + Largura + DstEntCol ;

                     If  Atual > Colunas
                     then begin
                          Sai := True ;
                     end;

               until (Sai);
          end;
Var
   Codigo, nome: String;
   I, ColAtu, LinAtu: Integer;
   Esquerda, Etq, Colunas, Linhas, Altura, Largura, DstEntCol, DstEntLin, Linha, APartir: Integer;
   Valor: Real;
begin
     With DmEstoque do
     begin
          Colunas    := ConfEtiquetasQTDECOL.Value ;
          Linhas     := ConfEtiquetasLINHAS.Value  ;
          Altura     := ConfEtiquetasALTURA.Value  ;
          Largura    := ConfEtiquetasLARGURA.Value ;
          Etq        := ConfEtiquetasQTDETQ.Value  ;
          DstEntCol  := ConfEtiquetasESP_ENTCOL.Value ;
          DstEntLin  := ConfEtiquetasESP_ENTLINHA.Value ;
          APartir    := ConfEtiquetasAPARTIR.Value ;
          Esquerda   := ConfEtiquetasESQUERDA.Value ;

          If UpperCase(ConfEtiquetasLPP.Value) = 'SEIS'
          Then begin
               Impressora.TamanhoQteLPP := Seis ;
          end
          else begin
               Impressora.TamanhoQteLPP := Oito ;
          end;
     end;

     Impressora.Abrir ;

     Codigo := COPY('01'      ,1, LARGURA ) ;
     Nome   := COPY('TECLADO' ,1, LARGURA ) ;
     Valor  := 10 ;

     I      := 1;
     ColAtu := 1;

     Linha := APartir ;

     While I <= 10 DO
     BEGIN
          //IMPRIME A COLUNA
          ImprimeColuna ( Linha, CODIGO, NOME, VALOR, ColAtu, Largura, DstEntCol, Colunas, Esquerda ) ;

          //PASSA PARA A PROXIMA COLUNA
          ColAtu := 1;

          Linha  := Linha + ( Altura + DstEntLin );

          I := I + 1;
     END;

     Impressora.Fechar ;
end;

end.
