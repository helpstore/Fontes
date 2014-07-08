unit GarantiasCliente_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes,  Graphics, Controls, Forms, Dialogs,
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
  TFRelGarantiasCliente = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Ini: TdxDateEdit;
    Fim: TdxDateEdit;
    Label2: TcxLabel;
    cmbCliente: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsCliente: TDataSource;
    TipoRel: TRadioGroup;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure IniEnter(Sender: TObject);
    procedure IniExit(Sender: TObject);
    procedure FimExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
    procedure IncLin ;
  public
    { Public declarations }
  end;

var
  FRelGarantiasCliente: TFRelGarantiasCliente;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelGarantiasCliente.FormCreate(Sender: TObject);
begin
  // Se o Usu�rio for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelGarantiasCliente.IncLin;
begin
     Linha := Linha + 1;

     If Linha > 62
     then
         Print.Novapagina ;
end;

procedure TFRelGarantiasCliente.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelGarantiasCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelGarantiasCliente := Nil;
end;

procedure TFRelGarantiasCliente.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelGarantiasCliente.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodap�...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelGarantiasCliente.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabe�alho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  If (TipoRel.ItemIndex = 0) Then // Sint�tico
     Begin
       Print.ImpF(05,01,'Codigo Data       Vendedor                                           Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
       linha  := 08;
     End
  Else // Analitico
     Begin
       Print.ImpF(05,01,'Codigo Data       Vendedor                                           Natureza  Nota Fiscal          Total       Desconto     Vlr Liquido', [Comp17]);
       Print.ImpF(06,01,'                  Codigo            Produto                                Unidade SubUnidade Qtde       VlrUnit    Desconto   TotalItem', [Comp17]);
       Print.ImpF(07,01, Replicate('-', 136), [Comp17]);
       Linha  := 09;
     End;
end;

procedure TFRelGarantiasCliente.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

    If Not(dsCliente.DataSet.Active) Then
       dsCliente.DataSet.Open;
  Except
    On E:EDataBaseError Do
       Begin
         ShowMessage('Ocorreu o seguinte erro :' + #13 + #13 + '    ' + E.Message + '...   ');
         Exit;
       End
    Else
       Begin
         ShowMessage('Ocorreu um Erro n�o identificado pelo Sistema !');
         Exit;
       End;
  End;
end;

procedure TFRelGarantiasCliente.ActPreviewExecute(Sender: TObject);
Var
    Cod_Cliente: Integer;
    Total_Cliente, Total_Geral: Real;
    STR: String;
begin
  //
  Cod_Cliente := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***
  DMRelatorios.Fat_GarantiasCli.ParamByName('CNPJ').asString:= DMApp.Cnpj;
  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ') Then
     MessageDlg('Informe o Per�odo', MtError, [MbOk],0)
  Else
     Begin
        DMRelatorios.Fat_GarantiasCli.ParamByName('DINI').asString:= Ini.Text;
        DMRelatorios.Fat_GarantiasCli.ParamByName('DFIM').asString:= Fim.Text;
     End;
  If CmbCliente.Text = '' Then
     DMRelatorios.Fat_GarantiasCli.ParamByName('PESSOA').asString:= '0'
  Else
     DMRelatorios.Fat_GarantiasCli.ParamByName('PESSOA').Value:= DsCliente.DataSet.fieldByName('PESSOA_FJ').Value;

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Fat_GarantiasCli.Open;
  //
  If DMRelatorios.Fat_GarantiasCli.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('N�o h� registro a imprimir para o per�odo, verifique !');
       //
       DMRelatorios.Fat_GarantiasCli.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.Fat_GarantiasCli.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.TitulodoRelatorio:='Relatorio de Trocas no Per�odo';
  print.Abrir;
  //
  Total_Cliente:= 0;
  Total_Geral  := 0;
  Cod_Cliente  := 0;
  //
  DMRelatorios.Fat_GarantiasCli.First;
  While Not DMRelatorios.Fat_GarantiasCli.Eof Do
  Begin
       //
       Print.ImpF(Linha,01,Format('%6s %6s %-35s %-8s %-28s %14s %14s %15s',
                  [DMRelatorios.Fat_GarantiasCliCODIGO.Text,
                   DmRelatorios.Fat_GarantiasCliPESSOA_FJ.TEXT,
                   copy(DmRelatorios.Fat_GarantiasCliPESSOA_RAZAO.Text,1,35),
                   DMRelatorios.Fat_GarantiasCliDATA.Text,
                   copy(DMRelatorios.Fat_GarantiasCliNOME_VENDEDOR.Text,1,15),
                   DMRelatorios.Fat_GarantiasCliTOTAL.Text,
                   DMRelatorios.Fat_GarantiasCliDESC_ACRESC.Text,
                   DMRelatorios.Fat_GarantiasCliVLRLIQUIDO.Text]),[Comp17]);

       If (TipoRel.ItemIndex = 1)
       Then Begin
            IncLin;
            DMRelatorios.Fat_TrocasItens.Close ;
            DMRelatorios.Fat_TrocasItens.ParamByName('CNPJ').Value   := DMApp.Cnpj;
            DMRelatorios.Fat_TrocasItens.ParamByName('CODIGO').Value := DMRelatorios.Fat_GarantiasCliCODIGO.Value;
            DMRelatorios.Fat_TrocasItens.Open;
            DMRelatorios.Fat_TrocasItens.First;
            While Not DMRelatorios.Fat_TrocasItens.Eof Do
                     Begin
                       Print.ImpF(Linha,12,Format('%-17s %-39s %-6s %-10s %9s %9s %9s %11s',
                               [DMRelatorios.Fat_TrocasItensPRODUTO.Text,
                                copy(DMRelatorios.Fat_TrocasItensNOME_PRODUTO.Text,1,37),
                                DMRelatorios.Fat_TrocasItensUNIDADE.Text,
                                DMRelatorios.Fat_TrocasItensSUBUNIDADE.Text,
                                DMRelatorios.Fat_TrocasItensQUANTIDADE.Text,
                                DMRelatorios.Fat_TrocasItensPRC_UNITARIO.Text,
                                DMRelatorios.Fat_TrocasItensDESCONTO.Text,
                                FormatFloat('#,##0.00',(DMRelatorios.Fat_TrocasItensQUANTIDADE.AsFloat * DMRelatorios.Fat_TrocasItensPRC_UNITARIO.AsFloat) - DMRelatorios.Fat_TrocasItensDESCONTO.AsFloat)]), [Comp17]);
                       IncLin;
                       DMRelatorios.Fat_TrocasItens.Next;
                     End;
          End;

          Total_Geral:= Total_Geral + DMRelatorios.Fat_GarantiasCliVLRLIQUIDO.Value;
          Total_Cliente:= Total_Cliente + DMRelatorios.Fat_GarantiasCliVLRLIQUIDO.Value;
          //
          Anda.Position := Anda.Position + 1;
          DMRelatorios.Fat_GarantiasCli.Next;
          //
          IncLin;
          //
        End;
  //
  Print.ImpF(Linha+1, 01, Format('%106s Total Geral : %15s', ['', FormatFloat('#,##0.00', TOTAL_GERAL)]), [Comp17, Negrito]);
  //
  DMRelatorios.Fat_GarantiasCli.Close;

  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelGarantiasCliente.IniEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelGarantiasCliente.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);

     if INI.TEXT = '  /  /    '
     THEN
         INI.DATE := STRTODATE ('01/01/1900');

end;

procedure TFRelGarantiasCliente.FimExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);

     if FIM.TEXT = '  /  /    '
     THEN
         FIM.DATE := STRTODATE ('31/12/9999');
end;

end.
