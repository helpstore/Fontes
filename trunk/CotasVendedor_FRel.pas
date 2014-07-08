 unit CotasVendedor_FRel;

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
  TFRelCotasVendedor = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    Label2: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    LblTitulo: TcxLabel;
    b2: TBevel;
    DsVendedor: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure cmbVendedorEnter(Sender: TObject);
    procedure cmbVendedorExit(Sender: TObject);
  private
    { Private declarations }
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelCotasVendedor: TFRelCotasVendedor;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelCotasVendedor.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelCotasVendedor.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelCotasVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  Action := caFree;
  FRelCotasVendedor := Nil;
end;

procedure TFRelCotasVendedor.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelCotasVendedor.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelCotasVendedor.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 136), [Comp17]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                  //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  Print.ImpF(05,01,'Grupo  Nome                                          Sub-Gr Nome                                             Valor      Vista      Prazo', [Comp17]);
  Print.ImpF(06,01, Replicate('-', 136), [Comp17]);
  linha  := 08;
end;

procedure TFRelCotasVendedor.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
    Try
    If Not(dsVendedor.DataSet.Active) Then
       dsVendedor.DataSet.Open;
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

procedure TFRelCotasVendedor.ActPreviewExecute(Sender: TObject);
Var
    Cod_Vendedor: Integer;
    STR: String;
begin
  //
  Cod_Vendedor := 0;
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  // *** Passagem de Parametros ***

  DMRelatorios.Cotas_Vendedores.Close ;
  DMRelatorios.Cotas_Vendedores.SQL.Clear ;
  DMRelatorios.Cotas_Vendedores.Params.Clear ;

  DMRelatorios.Cotas_Vendedores.Params.CreateParam ( FtString, 'CNPJ', PtInput );

  DMRelatorios.Cotas_Vendedores.SQL.Add ( ' Select * from VER_COTAS_POR_VENDEDOR  ' );

  DMRelatorios.Cotas_Vendedores.SQL.Add ( ' (  :CNPJ  )                                  ' );

  DMRelatorios.Cotas_Vendedores.ParamByName('CNPJ').asString:= DMApp.Cnpj;

  If CmbVendedor.Text <> ''
  Then begin
       DMRelatorios.Cotas_Vendedores.Params.CreateParam ( FtInteger, 'VEND', PtInput );

       DMRelatorios.Cotas_Vendedores.SQL.Add ( ' WHERE VENDEDOR = :VEND  ' );

       DMRelatorios.Cotas_Vendedores.ParamByName('VEND').asString:= DsVendedor.DataSet.fieldByName('CODIGO').Value;
  end;

  DMRelatorios.Cotas_Vendedores.SQL.Add ( ' ORDER BY NOME_VENDEDOR, VENDEDOR, NOME_GRUPO, GRUPO, NOME_SUBGRUPO, SUBGRUPO  ' );

  // *** fim da Passagem de Parametros ***
  //
  DMRelatorios.Cotas_Vendedores.Open;
  //
  If DMRelatorios.Cotas_Vendedores.RecordCount = 0
  Then Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.Cotas_Vendedores.Close;
       //
       cmbVendedor.SetFocus;
       Exit;
  End
  Else Begin
       lblStatus.Visible := False ;
       DMRelatorios.Cotas_Vendedores.FetchAll ;
       Anda.Max := DMRelatorios.Cotas_Vendedores.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
  End;

  //
  print.TitulodoRelatorio:='Relatorio de Cotas por Vendedor';
  print.Abrir;
  //

  //
  DMRelatorios.Cotas_Vendedores.First;
  While Not DMRelatorios.Cotas_Vendedores.Eof Do
  Begin
       //
       If Cod_Vendedor <> DmRelatorios.Cotas_VendedoresVENDEDOR.Value
       Then Begin
            Print.ImpF(Linha,01,'Vendedor : '+ DmRelatorios.Cotas_VendedoresNOME_VENDEDOR.Text,[Comp17, Negrito]);

            Cod_Vendedor := DmRelatorios.Cotas_VendedoresVENDEDOR.Value;

            Linha := Linha + 2;
       End;

       //
       Print.ImpF(Linha,01,Format('%6s %-44s %6s %-44s %10s %10s %10s',
                  [DMRelatorios.Cotas_VendedoresGRUPO.Text,
                   DMRelatorios.Cotas_VendedoresNOME_GRUPO.Text,
                   copy(DMRelatorios.Cotas_VendedoresSUBGRUPO.Text,1,35),
                   DMRelatorios.Cotas_VendedoresNOME_SUBGRUPO.Text,
                   DMRelatorios.Cotas_VendedoresVALOR.Text,
                   DMRelatorios.Cotas_VendedoresCOMISSAO_VISTA.Text,
                   DMRelatorios.Cotas_VendedoresCOMISSAO_PRAZO.Text
                   ]),[Comp17]);


       //
       Anda.Position := Anda.Position + 1;
       DMRelatorios.Cotas_Vendedores.Next;
       //
       Linha := Linha + 1;
       //
       If (Linha >= 63 )
       Then
           Print.Novapagina;
  End;

  //
  DMRelatorios.Cotas_Vendedores.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelCotasVendedor.cmbVendedorEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelCotasVendedor.cmbVendedorExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
