unit PosicaoEstoque_Venda_FRel;

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
  TFRelPosicaoEstoqueVenda = class(TForm)
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
    ActBuscarProd: TAction;
    Label3: TcxLabel;
    cmbGrupoFinal: TdxLookupEdit;
    Label1: TcxLabel;
    cmbTipoCusto: TdxPickEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label4: TcxLabel;
    EdTipo: TdxPickEdit;
    RDALFA: TRadioButton;
    RadioButton2: TRadioButton;
    CkEstoque: TCheckBox;
    Print: TRDprint;
    ckGerar: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Print2BeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure Print2NewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbGrupoInicialEnter(Sender: TObject);
    procedure cmbGrupoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    procedure IncLin ;
  public
    { Public declarations }
  end;

var
  FRelPosicaoEstoqueVenda: TFRelPosicaoEstoqueVenda;
  Linha, Pagina: Integer;
  TotalVendas, TotalCustos: Real;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelPosicaoEstoqueVenda.IncLin ;
begin
     Linha := Linha + 1;

     If Linha >= 60
     Then
         Print.Novapagina;
end;

procedure TFRelPosicaoEstoqueVenda.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelPosicaoEstoqueVenda.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelPosicaoEstoqueVenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsGrupos.DataSet.Close;
  //
  Action := caFree;
  FRelPosicaoEstoqueVenda := Nil;
end;

procedure TFRelPosicaoEstoqueVenda.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelPosicaoEstoqueVenda.Print2BeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(61, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(62, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(62, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelPosicaoEstoqueVenda.Print2NewPage(Sender: TObject; Pagina: Integer);
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
  Print.ImpF(07, 01, Replicate('-', 80), [Normal]);

  Print.ImpF(08, 01, 'Interno              Codigo Nome                                      Unid.   Quantidade  Custo Unit.  Vnd 3 Meses  Venda Unit.', [Comp17]);
  Print.ImpF(09, 01, '----------- --------------- ----------------------------------------- ----- ------------ ------------ ------------ -----------', [Comp17]);
 //    Pedir
  linha  := 10;
end;

procedure TFRelPosicaoEstoqueVenda.FormShow(Sender: TObject);
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
  cmbTipoCusto.ItemIndex := 0;
end;

procedure TFRelPosicaoEstoqueVenda.ActPreviewExecute(Sender: TObject);
Var
   Total_Custo, Total_Quantidade :real;
   Custo, Quantidade: Extended;
   Mascara: String;
   DataInicial, DataFinal: TDateTime;
begin
   DataInicial := PrimeiroDiaMes( DmApp.Data_Servidor - 90, False ) ;
   DataFinal   := UltimoDiaMes ( DmApp.Data_Servidor );

  //
  Grupo := 0;
  SubGrupo := 0;

  TotalVendas := 0 ;
  TotalCustos := 0 ;

  lblStatus.caption := 'Selecionando Dados' ;

  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Posicao de Estoque /Venda (' + cmbTipoCusto.Text + ')';
  //
  DMRelatorios.PosicaoEstoqueVenda.ParamByName('CNPJ').asString     := DMApp.Cnpj;

  IF RDALFA.Checked
  THEN BEGIN
     DMRelatorios.PosicaoEstoqueVenda.SQL.Clear ;
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' select CODIGO, CODIGO_INTERNO, CUSTO_AQUISICAO, NOME, UNIDADE, NOME_GRUPO, CODIGO_G , ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' SUBGRUPO , NOME_SUBGRUPO , SUBUNIDADE , QTDADE_2 , PRC_REPOS , PRC_CUSTO_MED , VENDA, ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' PRC_VENDA From VER_PRODUTO_GRUPO_VENDA ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV, :MINI, :MFIM )              ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME                                              ');
  END
  ELSE BEGIN
     DMRelatorios.PosicaoEstoqueVenda.SQL.Clear ;
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' select CODIGO, CODIGO_INTERNO, CUSTO_AQUISICAO, NOME, UNIDADE, NOME_GRUPO, CODIGO_G , ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' SUBGRUPO , NOME_SUBGRUPO , SUBUNIDADE , QTDADE_2 , PRC_REPOS , PRC_CUSTO_MED, VENDA,  ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' PRC_VENDA From VER_PRODUTO_GRUPO_VENDA ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV, :MINI, :MFIM )              ');
     DMRelatorios.PosicaoEstoqueVenda.SQL.Add ( ' ORDER BY NOME_GRUPO, NOME_SUBGRUPO, CODIGO                                            ');
  END;

  If (EdTipo.Text = 'Ativo') Then
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('ATV' ).asString     := 'S'
  Else
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('ATV' ).asString     := 'N';
  //
  If cmbGrupoInicial.Text <> '' Then
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text
  Else
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('GRUPO_INI').asString := '';
  //
  If cmbGrupoFinal.Text <> '' Then
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('GRUPO_FIM').asString := cmbGrupoFinal.Text
  Else
     DMRelatorios.PosicaoEstoqueVenda.ParamByName('GRUPO_FIM').asString := Replicate('Z', 50);

  DMRelatorios.PosicaoEstoqueVenda.ParamByName('MINI').asDate := DATAINICIAL ;
  DMRelatorios.PosicaoEstoqueVenda.ParamByName('MFIM').asDate := DATAFINAL   ;

  //
  DMRelatorios.PosicaoEstoqueVenda.Tag := cmbTipoCusto.ItemIndex;

  //
  DMRelatorios.PosicaoEstoqueVenda.Open;

  //
  If DMRelatorios.PosicaoEstoqueVenda.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.PosicaoEstoqueVenda.Close;
       //
       cmbGrupoInicial.SetFocus;
       Exit;
     End
     Else
     Begin
          lblStatus.Visible := False ;
          DMRelatorios.PosicaoEstoqueVenda.FetchAll ;
          Anda.Max := DMRelatorios.PosicaoEstoqueVenda.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     End;

  //
  print.Abrir;

  Total_Custo      := 0;
  Total_Quantidade := 0;
  //
  DMRelatorios.PosicaoEstoqueVenda.First;
  While Not DMRelatorios.PosicaoEstoqueVenda.Eof Do
  Begin
          //
          If Grupo <> DMRelatorios.PosicaoEstoqueVendaCODIGO_G.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '* ' + DMRelatorios.PosicaoEstoqueVendaNOME_GRUPO.Text, [Comp17, Negrito]);
               Grupo := DMRelatorios.PosicaoEstoqueVendaCODIGO_G.Value;
               SubGrupo := 0;
               //
               IncLin ;
               IncLin ;
             End;
          //
          If SubGrupo <> DMRelatorios.PosicaoEstoqueVendaSUBGRUPO.Value then
             Begin
               //
               Print.ImpF(Linha + 1, 01, '  ** ' + DMRelatorios.PosicaoEstoqueVendaNOME_SUBGRUPO.Text, [Comp17, Negrito]);

               SubGrupo := DMRelatorios.PosicaoEstoqueVendaSUBGRUPO.Value;
               //
               IncLin ;
               IncLin ;
               IncLin ;
             End;
          //
          If DMRelatorios.PosicaoEstoqueVenda.Tag = 0 Then
             Custo := DMRelatorios.PosicaoEstoqueVendaPRC_CUSTO_MED.Value
          Else
             Custo := DMRelatorios.PosicaoEstoqueVendaPRC_REPOS.Value;

          If DMRelatorios.PosicaoEstoqueVendaSUBUNIDADE.VALUE > 0
          then begin
               Quantidade := DMRelatorios.PosicaoEstoqueVendaQTDADE_2.VALUE/DMRelatorios.PosicaoEstoqueVendaSUBUNIDADE.VALUE;
          end
          else begin
               Quantidade := DMRelatorios.PosicaoEstoqueVendaQTDADE_2.VALUE;
          end;

          If DmaPP.CASAS_QNTDE = 'S'
          THEN BEGIN
               Mascara := '###,###,##0.00';
          END
          ELSE BEGIN
               Mascara := '###,###,##0';
          END;

          If CkEstoque.Checked //somente com estoque
          then begin
               IF QUANTIDADE > 0
               THEN BEGIN
                    Print.ImpF(Linha, 01, Format('%11s %16s %-38s %-8s %12s %12s %12s %12s',
                    [DMRelatorios.PosicaoEstoqueVendaCODIGO_INTERNO.Text,
                    DMRelatorios.PosicaoEstoqueVendaCODIGO.Text,
                    Copy(DMRelatorios.PosicaoEstoqueVendaNOME.Text, 1, 38),
                    copy(DMRelatorios.PosicaoEstoqueVendaUNIDADE.Text + ' ' + DMRelatorios.PosicaoEstoqueVendaSUBUNIDADE.TEXT,1,6),
                    FormatFloat(Mascara, Quantidade),
                    FormatFloat('#,##0.00', Custo),
                    DMRelatorios.PosicaoEstoqueVendaVENDA.Text,
                    DMRelatorios.PosicaoEstoqueVendaPRC_VENDA.Text
                    ]), [Comp17]);
                    //'________' %-8s
                    IncLin ;
                    Total_Custo      := Total_Custo      + Custo;
                    Total_Quantidade := Total_Quantidade + Quantidade;

                    //Total de Venda
                    TotalVendas := TotalVendas + DMRelatorios.PosicaoEstoqueVendaPRC_VENDA_TOTAL.Value ;

                    //Total de Custos
                    TotalCustos := TotalCustos + DMRelatorios.PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value ;
               END;
          end
          else begin
               Print.ImpF(Linha, 01, Format('%11s %16s %-38s %-8s %12s %12s %12s %12s',
               [DMRelatorios.PosicaoEstoqueVendaCODIGO_INTERNO.Text,
               DMRelatorios.PosicaoEstoqueVendaCODIGO.Text,
               Copy(DMRelatorios.PosicaoEstoqueVendaNOME.Text, 1, 38),
               copy(DMRelatorios.PosicaoEstoqueVendaUNIDADE.Text + ' ' + DMRelatorios.PosicaoEstoqueVendaSUBUNIDADE.TEXT,1,6),
               FormatFloat(Mascara, Quantidade),
               FormatFloat('#,##0.00', Custo),
               DMRelatorios.PosicaoEstoqueVendaVENDA.Text,
               DMRelatorios.PosicaoEstoqueVendaPRC_VENDA.Text]), [Comp17]);
               //,   '________' %-8s
               IncLin ;
               Total_Custo      := Total_Custo      + Custo;
               Total_Quantidade := Total_Quantidade + Quantidade;

               //Total de Venda
               TotalVendas := TotalVendas + DMRelatorios.PosicaoEstoqueVendaPRC_VENDA_TOTAL.Value ;

               //Total de Custos
               TotalCustos := TotalCustos + DMRelatorios.PosicaoEstoqueVendaPRC_CUSTO_TOTAL.Value ;
          end;

          Anda.Position := Anda.Position + 1;

          DMRelatorios.PosicaoEstoqueVenda.Next;

  End;

  //
  DMRelatorios.PosicaoEstoqueVenda.Close;

  IncLin ;

  Print.ImpF(Linha, 01, Format('%11s %16s %-39s %-7s %12s %12s %12s %12s %8s',
  ['',
  '',
  '',
  '',
  FormatFloat('#,##0.00', Total_Quantidade),
  FormatFloat('#,##0.00', TotalCustos),
  '',
  FormatFloat('#,##0.00', TotalVendas),
  '']), [Comp17]);

  //
  Anda.Visible:= False;
  if ckGerar.checked then
    print.gerarRDP('C:\Posicao.txt');
  print.Fechar;
end;

procedure TFRelPosicaoEstoqueVenda.cmbGrupoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelPosicaoEstoqueVenda.cmbGrupoInicialExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO ( SENDER );
end;

end.
