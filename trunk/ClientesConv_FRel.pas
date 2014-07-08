 unit ClientesConv_FRel;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ActnList, Db, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr,
  dxDBELib, StdCtrls,  RDprint,  ComCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinXmas2008Blue, Menus, cxButtons, cxLabel;

type
  TFRelClientesConv = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Label1: TcxLabel;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    cmbClienteIni: TdxLookupEdit;
    dsClientes: TDataSource;
    CkTipo: TdxCheckEdit;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cmbPessoaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure PrintNewPage(Sender: TObject; Pagina: Integer);
    procedure FormShow(Sender: TObject);
    procedure ActPreviewExecute(Sender: TObject);
    procedure edCodigoInicialEnter(Sender: TObject);
    procedure edCodigoInicialExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRelClientesConv: TFRelClientesConv;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelClientesConv.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelClientesConv.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelClientesConv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsClientes.DataSet.Close;

  //
  Action := caFree;
  FRelClientesConv := Nil;
end;

procedure TFRelClientesConv.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelClientesConv.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelClientesConv.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  //
  Linha := 5;
  //
  {Print.ImpF(05, 01, '  Codigo Nome                                     Endereco                                 Numero          Complemento                  ', [Comp17]);
  Print.ImpF(06, 01, '         Bairro                    Cidade/UF                      CEP      Cnpj/Cpf        Insc. Est./RG                                ', [Comp17]);
  Print.ImpF(07, 01, '         Telefone             Fax                 Celular                  EMail                                                        ', [Comp17]);}
end;

procedure TFRelClientesConv.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    If Not(dsClientes.DataSet.Active) Then
       dsClientes.DataSet.Open;
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

procedure TFRelClientesConv.ActPreviewExecute(Sender: TObject);
VAR
   Cont: Integer;
   Blq, Str: String;
begin
  If cmbClienteIni.Text = ''
  then begin
       ShowMessage('Selecione o Convênio !');
       cmbClienteIni.SetFocus ;
       Exit;
  end;

  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  //
  Application.ProcessMessages;
  //
  Print.TitulodoRelatorio := 'Listagem de Convênios - ' + cmbClienteIni.TEXT;
  //
  With DMRelatorios DO
  BEGIN
       Cont := 0;

       qryRelPessoaConveio.Params.Clear;
       qryRelPessoaConveio.Sql.Clear   ;

       // Instrução SQL
       qryRelPessoaConveio.Params.CreateParam(ftString,  'CNPJ'    , ptInput);
       qryRelPessoaConveio.Params.CreateParam(ftInteger, 'CONVENIO', ptInput);

       qryRelPessoaConveio.Sql.Add ( ' SELECT * FROM  VER_PESSOAS_CONVENIO ( :CNPJ, :CONVENIO ) ' );

       qryRelPessoaConveio.ParamByName('CONVENIO').asInteger := cmbClienteIni.LookupKeyValue ;

       qryRelPessoaConveio.Sql.Add ( ' ORDER BY NOME_RAZAO ' )
  end;

  //
  DMRelatorios.qryRelPessoaConveio.Open;

  DMRelatorios.qryRelPessoaConveio.FetchAll;

  //
  If DMRelatorios.qryRelPessoaConveio.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para os parâmetros especificados, verifique !');
       //
       DMRelatorios.qryRelPessoaConveio.Close;
       //
       cmbClienteIni.SetFocus;
       Exit;
     End
  Else
     Begin
       //
       lblStatus.Visible := False ;
       //
       Anda.Max := DMRelatorios.qryRelPessoaConveio.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.Abrir;
  //
  DMRelatorios.qryRelPessoaConveio.First;
  While Not DMRelatorios.qryRelPessoaConveio.Eof Do
  Begin
       If CkTipo.Checked
       then begin
            //
            Print.ImpF(Linha    , 01, Format('       Codigo : %1s', [DMRelatorios.qryRelPessoaConveioCODIGO.Text]), [Comp17, Negrito]);
            Print.ImpF(Linha + 1, 01, Format(' Razao Social : %-35s %-40s Fone : %-20s %-15s',
                                           [Copy(DMRelatorios.qryRelPessoaConveioNOME_RAZAO.Text, 1, 35),
                                            Copy(DMRelatorios.qryRelPessoaConveioENDERECO.Text + ', ' + DMRelatorios.qryRelPessoaConveioNUMERO.Text, 1, 40),
                                            Copy(DMRelatorios.qryRelPessoaConveioFONE.Text, 1, 15),
                                            Copy(DMRelatorios.qryRelPessoaConveioBLOQUEADO.Text, 1, 15)]), [Comp17]);
            Print.ImpF(Linha + 2, 01, Format('Nome Fantasia : %-35s %-40s Fax : %-20s  %-15s',
                                           [Copy(DMRelatorios.qryRelPessoaConveioFANTASIA.Text, 1, 35),
                                            Copy(DMRelatorios.qryRelPessoaConveioBAIRRO.Text, 1, 40),
                                            DMRelatorios.qryRelPessoaConveioFAX.Text,
                                            Copy(DMRelatorios.qryRelPessoaConveioNOME_FORMA_PAGTO.Text, 1, 15)]), [Comp17]);
            Print.ImpF(Linha + 3, 01, Format('     CPF/CNPJ : %-35s %-40s Comprador : %-15s %-15s',
                                           [DMRelatorios.qryRelPessoaConveioCPF_CGC.Text,
                                            Copy('CEP ' + DMRelatorios.qryRelPessoaConveioCEP.Text + ' ' + DMRelatorios.qryRelPessoaConveioCOMPLEMENTO.Text, 1, 40),
                                            Copy(DMRelatorios.qryRelPessoaConveioCOMPRADOR.Text, 1, 14),
                                            DMRelatorios.qryRelPessoaConveioPRAZO.Text + ' Dias' ]), [Comp17]);
            Print.ImpF(Linha + 4, 01, Format('    R.G./I.E. : %-35s %-40s Data Cad. : %-14s',
                                           [DMRelatorios.qryRelPessoaConveioRG_IE.Text,
                                            Copy(DMRelatorios.qryRelPessoaConveioCIDADE.Text, 1, 40),
                                            DMRelatorios.qryRelPessoaConveioDT_CADASTRO.Text]), [Comp17]);
            //
            Linha := Linha + 4;
            //
            Print.ImpF(Linha + 1, 01, Replicate('-', 136), [Comp17]);
            //
            DMRelatorios.qryRelPessoaConveio.Next;
            //
            Anda.Position := Anda.Position + 1;
            Application.ProcessMessages;
            //
            Linha := Linha + 2;
            //
            If Linha >= 63
            Then
                Print.Novapagina;
       end
       else begin
            Str := DMRelatorios.qryRelPessoaConveioCODIGO.Text;

            While Length(Str) < 5 do
            begin
                 Str := Str + ' ';
            end;

            Blq := DMRelatorios.qryRelPessoaConveioBLOQUEADO.Text ;

            //
            Print.ImpF(Linha , 01, Str + ' - ' + blq + ' - ' + DMRelatorios.qryRelPessoaConveioNOME_RAZAO.Text , [Comp17]);
            //
            Linha := Linha + 1;
            //
            DMRelatorios.qryRelPessoaConveio.Next;
            //
            Anda.Position := Anda.Position + 1;

            If Linha >= 63
            Then
                Print.Novapagina;
       end
  End;
  //
  DMRelatorios.qryRelPessoaConveio.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelClientesConv.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO (SENDER );
end;

procedure TFRelClientesConv.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO (SENDER );
end;

end.
