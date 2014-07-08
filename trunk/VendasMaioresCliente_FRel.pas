 unit VendasMaioresCliente_FRel;

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
  TFRelVendasMaioresCliente = class(TForm)
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
    LblTitulo: TcxLabel;
    b2: TBevel;
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
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelVendasMaioresCliente: TFRelVendasMaioresCliente;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelVendasMaioresCliente.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelVendasMaioresCliente.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelVendasMaioresCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelVendasMaioresCliente := Nil;
end;

procedure TFRelVendasMaioresCliente.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelVendasMaioresCliente.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelVendasMaioresCliente.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Codigo     Nome                                                        Total', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelVendasMaioresCliente.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try

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

procedure TFRelVendasMaioresCliente.ActPreviewExecute(Sender: TObject);
Var
    Cod_Cliente: Integer;
    Total_Cliente, Total_Geral: Real;
    STR: String;
begin
  //
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;

  // *** Passagem de Parametros ***
  DMRelatorios.Ver_Fat_Vendas_Maiores.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If (Ini.Text = '  / /    ') Or (Fim.Text = '  / /    ')
  Then begin
       MessageDlg('Informe o Período', MtError, [MbOk],0);
  end
  Else Begin
        DMRelatorios.Ver_Fat_Vendas_Maiores.ParamByName('DINI').asDate  := Ini.Date;
        DMRelatorios.Ver_Fat_Vendas_Maiores.ParamByName('DFIM').asDate := Fim.Date;
  End;

  // *** fim da Passagem de Parametros ***

  //
  DMRelatorios.Ver_Fat_Vendas_Maiores.Open;
  //
  If DMRelatorios.Ver_Fat_Vendas_Maiores.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Ver_Fat_Vendas_Maiores.Close;
       //
       Ini.SetFocus;
       Exit;
     End
  Else
     Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.Ver_Fat_Vendas_Maiores.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;

  //
  print.TitulodoRelatorio:='Relatorio de Vendas por Maiores Clientes';

  print.Abrir;
  //
  Total_Geral:= 0;
  //
  DMRelatorios.Ver_Fat_Vendas_Maiores.First;

  While Not DMRelatorios.Ver_Fat_Vendas_Maiores.Eof Do
  Begin
       //
       Print.ImpF(Linha,01,Format('%-10s %-50s %14s',
                  [DMRelatorios.Ver_Fat_Vendas_MaioresPESSOA_FJ.Text,
                   DmRelatorios.Ver_Fat_Vendas_MaioresNOME.Text,
                   DmRelatorios.Ver_Fat_Vendas_MaioresVLRLIQUIDO.Text
                   ]),[Comp17]);

       Total_Geral:= Total_Geral + DmRelatorios.Ver_Fat_Vendas_MaioresVLRLIQUIDO.Value;

       //
       Anda.Position := Anda.Position + 1;

       DMRelatorios.Ver_Fat_Vendas_Maiores.Next;

       //
       Linha := Linha + 1;
       //
       If (Linha >= 63)
       Then
          Print.Novapagina;
  end;

  //
  Print.ImpF(Linha+1, 41, FormatFloat('#,##0.00', TOTAL_GERAL), [Comp17, Negrito]);
  //
  DMRelatorios.Ver_Fat_Vendas_Maiores.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelVendasMaioresCliente.IniEnter(Sender: TObject);
begin
     CORFUNDO(SENDER);
end;

procedure TFRelVendasMaioresCliente.IniExit(Sender: TObject);
begin
     //TROCA A COR PARA A COR SELECIONADA
     TIRACORFUNDO(SENDER);
end;

end.
