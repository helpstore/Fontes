 unit FisicaFin_FRel;

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
  TFRelFisicaFin = class(TForm)
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
    cmbTipoCusto: TdxPickEdit;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label4: TcxLabel;
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
    procedure cmbGrupoInicialEnter(Sender: TObject);
    procedure cmbGrupoInicialExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelFisicaFin: TFRelFisicaFin;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelFisicaFin.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelFisicaFin.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelFisicaFin.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsGrupos.DataSet.Close;
  //
  
  //
  Action := caFree;
  FRelFisicaFin := Nil;
end;

procedure TFRelFisicaFin.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelFisicaFin.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelFisicaFin.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(Now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 80), [Normal]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  {Print.ImpF(05, 01, '* GRUPO', [Normal, Negrito]);
  Print.ImpF(06, 01, '  ** SUBGRUPO', [Normal, Negrito]);
  Print.ImpF(07, 01, Replicate('-', 80), [Normal]);}
  Print.ImpF(05, 01, 'Grupo                                   SubGrupo                                   Quantidade    Custo Total    Venda Total       Margem', [Comp17]);
  Print.ImpF(06, 01, '--------------------------------------- -------------------------------------- -------------- -------------- -------------- ------------', [Comp17]);
  linha  := 07;
end;

procedure TFRelFisicaFin.FormShow(Sender: TObject);
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

procedure TFRelFisicaFin.ActPreviewExecute(Sender: TObject);
Var
   Custo: Extended;
   Total_Custo, Total_Quantidade: real;

begin
  //
  Grupo := 0;
  SubGrupo := 0;

  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  //
  Print.TitulodoRelatorio := 'Ficha Fisica/Financeira (' + cmbTipoCusto.Text + ')';
  //
  DMRelatorios.FisicaFinan.ParamByName('CNPJ').asString     := DMApp.Cnpj;

  If EdTipo.Text = 'Ativo'
  then begin
       DMRelatorios.FisicaFinan.ParamByName('ATV' ).asString     := 'S'       ;
  end
  else begin
       DMRelatorios.FisicaFinan.ParamByName('ATV' ).asString     := 'N'       ;
  end;

  //
  If cmbGrupoInicial.Text <> '' Then
     DMRelatorios.FisicaFinan.ParamByName('GRUPO_INI').asString := cmbGrupoInicial.Text
  Else
     DMRelatorios.FisicaFinan.ParamByName('GRUPO_INI').asString := '';
  //
  If cmbGrupoFinal.Text <> '' Then
     DMRelatorios.FisicaFinan.ParamByName('GRUPO_FIM').asString := cmbGrupoFinal.Text
  Else
     DMRelatorios.FisicaFinan.ParamByName('GRUPO_FIM').asString := Replicate('Z', 50);
  //
  DMRelatorios.FisicaFinan.Tag := cmbTipoCusto.ItemIndex;
  //
  DMRelatorios.FisicaFinan.Open;

  //
  If DMRelatorios.FisicaFinan.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;

       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.FisicaFinan.Close;
       //
       cmbGrupoInicial.SetFocus;

       Exit;
     End
     Else Begin
          lblStatus.Visible := False ;
          DMRelatorios.FisicaFinan.FetchAll ;
          Anda.Max := DMRelatorios.FisicaFinan.RecordCount;
          Anda.Position := 0;
          Anda.Visible  := TRUE ;
     end;
  //
  print.Abrir;
  Total_Custo      := 0;
  Total_Quantidade := 0;
  //
  DMRelatorios.FisicaFinan.First;
  While Not DMRelatorios.FisicaFinan.Eof Do
        Begin
          {//
          If Grupo <> DMRelatorios.ListaPrecosCODIGO_G.Value then
             Begin
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
          //}
          If cmbTipoCusto.ItemIndex = 0 Then
             Custo := DMRelatorios.FisicaFinanT_CUSTO_MED.Value
          Else
             Custo := DMRelatorios.FisicaFinanT_REPOS.Value;

          //
          If CkEstoque.Checked
          then begin
               if DMRelatorios.FisicaFinanQTDADE.VALUE > 0
               then begin
                    Print.ImpF(Linha, 01, Format('%-39s %-38s %14s %14s %14s %12s',
                                       [Copy(DMRelatorios.FisicaFinanNOME_GRUP0.Text, 1, 39),
                                        Copy(DMRelatorios.FisicaFinanNOME_SUBGRUPO.Text, 1, 37),
                                        DMRelatorios.FisicaFinanQTDADE.Text,
                                        FormatFloat('#,##0.00', Custo),
                                        DMRelatorios.FisicaFinanT_VENDA.Text,
                                        DMRelatorios.FisicaFinanMARGEM.Text]), [Comp17]);
                    //
                    Inc(Linha);

                    Total_Custo      := Total_Custo      + Custo;
                    Total_Quantidade := Total_Quantidade + DMRelatorios.FisicaFinanQTDADE.value ;
               end;
          end
          else begin
               Print.ImpF(Linha, 01, Format('%-39s %-38s %14s %14s %14s %12s',
                                       [Copy(DMRelatorios.FisicaFinanNOME_GRUP0.Text, 1, 39),
                                        Copy(DMRelatorios.FisicaFinanNOME_SUBGRUPO.Text, 1, 37),
                                        DMRelatorios.FisicaFinanQTDADE.Text,
                                        FormatFloat('#,##0.00', Custo),
                                        DMRelatorios.FisicaFinanT_VENDA.Text,
                                        DMRelatorios.FisicaFinanMARGEM.Text]), [Comp17]);
                //
                Inc(Linha);

                Total_Custo      := Total_Custo      + Custo;
                Total_Quantidade := Total_Quantidade + DMRelatorios.FisicaFinanQTDADE.value;
          end;
          //
          DMRelatorios.FisicaFinan.Next;
          Anda.Position := Anda.Position + 1;
          //
          If Linha >= 63 Then
             Print.Novapagina;
        End;
  //
  DMRelatorios.FisicaFinan.Close;

  Inc(Linha);

  Print.ImpF(Linha, 01, Format('%-39s %-38s %14s %14s %14s %12s',
                                       ['',
                                        '',
                                        FormatFloat('#,##0.00', Total_Quantidade ),
                                        FormatFloat('#,##0.00', Total_Custo ),
                                        '',
                                        '']), [Comp17]);

  //
  Anda.Visible:= False;
  print.Fechar;
  Close ;
end;

procedure TFRelFisicaFin.cmbGrupoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelFisicaFin.cmbGrupoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
