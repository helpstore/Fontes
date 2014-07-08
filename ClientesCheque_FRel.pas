 unit ClientesCheque_FRel;

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
  TFRelClienteCheque = class(TForm)
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Print: TRDprint;
    Actions: TActionList;
    ActPreview: TAction;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    dsClassificacao: TDataSource;
    dsVendedores: TDataSource;
    dsClientes: TDataSource;
    pnlClient: TPanel;
    Label2: TcxLabel;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    Label5: TcxLabel;
    Label7: TcxLabel;
    Label6: TcxLabel;
    Label8: TcxLabel;
    edCodigoInicial: TdxCurrencyEdit;
    edCodigoFinal: TdxCurrencyEdit;
    cbTipoPessoa: TdxPickEdit;
    rdRazaoSocial: TRadioButton;
    rdNomeFantasia: TRadioButton;
    cmbVendedor: TdxLookupEdit;
    cmbClassif: TdxLookupEdit;
    CkTipo: TdxCheckEdit;
    cmbClienteFim: TdxLookupEdit;
    cmbClienteIni: TdxLookupEdit;
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
    Grupo, SubGrupo: Integer;
  public
    { Public declarations }
  end;

var
  FRelClienteCheque: TFRelClienteCheque;
  Linha, Pagina: Integer;

implementation

uses Relatorios_DM, Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFRelClienteCheque.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelClienteCheque.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelClienteCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  dsVendedores.DataSet.Close;
  dsClassificacao.DataSet.Close;
  //
  Action := caFree;
  FRelClienteCheque := Nil;
end;

procedure TFRelClienteCheque.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelClienteCheque.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelClienteCheque.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  IF CKTIPO.Checked
  THEN BEGIN
       Print.ImpF(05, 01, '  Codigo Nome                                               Telefone              Fax                 Celular                           ', [Comp17]);

       Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  END
  ELSE BEGIN
       Print.ImpF(05, 01, '  Codigo Nome                                               Telefone              Fax                 Celular                           ', [Comp17]);
       Print.ImpF(06, 01, '         Endereco                                           Bairro                                    Cidade/MS                         ', [Comp17]);
       Print.ImpF(07, 01, Replicate('-', 136), [Comp17]);
  END;
  linha  := 8;
end;

procedure TFRelClienteCheque.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);

  If Not(dsVendedores.DataSet.Active) Then
    dsVendedores.DataSet.Open;
    DMRelatorios.SelVendedor.fetchAll;

  If Not(dsClassificacao.DataSet.Active) Then
    dsClassificacao.DataSet.Open;
    DMRelatorios.SelClassif.fetchAll;

  If Not(dsClientes.DataSet.Active) Then
     dsClientes.DataSet.Open;
     DMRelatorios.SelCliente.FetchAll;
end;

procedure TFRelClienteCheque.ActPreviewExecute(Sender: TObject);
var
   Cont: Integer ;
   ssql : string;
begin
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  lblStatus.Refresh ;
  //
  Print.TitulodoRelatorio := 'Listagem Resumida de Clientes Cheque';
  //
  ssql := '';
  
  With DMRelatorios DO
  BEGIN
    qryRelPessoaCheque.close;
    qryRelPessoaCheque.Sql.text :=  ' SELECT * FROM  VER_CLIENTES_CHEQUE( :CNPJ ) ';
    //
    If edCodigoInicial.Value <> 0 then
      sSql := ' CODIGO >= '+inttostr(Trunc(edCodigoInicial.Value));

    //
    If edCodigoFinal.Value <> 0 then
    begin
     if ssql <> '' then
       ssql := ssql + ' and ';

     ssql := ssql +  ' CODIGO <= '+inttostr(Trunc(edCodigoFinal.Value));
    end;
    //
    If Trim(cmbClienteIni.Text) <> '' Then
    Begin
     if ssql <> '' then
       ssql := ssql + ' and ';

     ssql := ssql +  ' NOME_RAZAO >= '''+Trim(cmbClienteIni.Text)+'''';
    end;

    If Trim(cmbClienteFim.Text) <> '' Then
    Begin
     if ssql <> '' then
       ssql := ssql + ' and ';

     ssql := ssql +  ' NOME_RAZAO <= '''+Trim(cmbClienteFim.Text)+'''';
    end;

    If Trim(cmbVendedor.Text) <> '' then
    Begin
     if ssql <> '' then
       ssql := ssql + ' and ';

     ssql := ssql + ' COD_VENDEDOR = '+inttostr(cmbVendedor.LookupKeyValue);
    end;

    Case cbTipoPessoa.ItemIndex of
    1: begin
         if ssql <> '' then
           ssql := ssql + ' and ';
         ssql := ssql + ' PESSOA <> ''J''';
       end;

    2: begin
         if ssql <> '' then
           ssql := ssql + ' and ';
         ssql := ssql + ' PESSOA = ''J''';
       end ;
    end;

    //
    If Trim(cmbClassif.Text)  <> '' then
    Begin
     if ssql <> '' then
       ssql := ssql + ' and ';

     ssql := ssql + ' COD_CLASSIF = '+inttostr(cmbClassif.LookupKeyValue);
    end;

    if ssql <> '' then
     qryRelPessoaCheque.Sql.Add(' where '+ssql);

    qryRelPessoaCheque.Open;
    qryRelPessoaCheque.FetchAll ;
  end;
  //
  If DMRelatorios.qryRelPessoaCheque.RecordCount = 0
  Then Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para o período, verifique !');
       //
       DMRelatorios.qryRelPessoaCheque.Close;
       //
       edCodigoInicial.SetFocus;
       Exit;
  End
  Else Begin
       lblStatus.Visible := False ;
       Anda.Max := DMRelatorios.qryRelPessoaCheque.RecordCount ;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
  End;

  //
  print.Abrir;
  //
  DMRelatorios.qryRelPessoaCheque.First;
  While Not DMRelatorios.qryRelPessoaCheque.Eof Do
  Begin
       IF CkTipo.Checked
       THEN BEGIN
            //
            Print.ImpF(Linha    , 01, Format('%8s %-50s %-20s %-20s %-20s',
                                           [DMRelatorios.qryRelPessoaChequeCODIGO.Text,
                                            DMRelatorios.qryRelPessoaChequeNOME_RAZAO.Text,
                                            DMRelatorios.qryRelPessoaChequeFONE.Text,
                                            DMRelatorios.qryRelPessoaChequeFAX.Text,
                                            DMRelatorios.qryRelPessoaChequeCELULAR.Text]), [Comp17]);

            //
            Anda.Position := Anda.Position + 1;

            DMRelatorios.qryRelPessoaCheque.Next;

            //
            Linha := Linha + 1;

            //
            If Linha >= 63
            Then
                Print.Novapagina;
       END
       ELSE BEGIN
            //
            Print.ImpF(Linha    , 01, Format('%8s %-50s %-20s %-20s %-20s',
                                           [DMRelatorios.qryRelPessoaChequeCODIGO.Text,
                                            DMRelatorios.qryRelPessoaChequeNOME_RAZAO.Text,
                                            DMRelatorios.qryRelPessoaChequeFONE.Text,
                                            DMRelatorios.qryRelPessoaChequeFAX.Text,
                                            DMRelatorios.qryRelPessoaChequeCELULAR.Text]), [Comp17]);
            Print.ImpF(Linha + 1, 01, Format('%8s %-50s %-41s %-30s',
                                           ['',
                                            DMRelatorios.qryRelPessoaChequeENDERECO.Text + ', ' + DMRelatorios.qryRelPessoaChequeNUMERO.Text,
                                            DMRelatorios.qryRelPessoaChequeBAIRRO.Text,
                                            DMRelatorios.qryRelPessoaChequeCIDADE.Text]), [Comp17]);
            //
            Anda.Position := Anda.Position + 1;
            DMRelatorios.qryRelPessoaCheque.Next;
            //
            Linha := Linha + 3;
            //
            If Linha >= 63
            Then
               Print.Novapagina;
       End;
  END;

  //
  DMRelatorios.qryRelPessoaCheque.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelClienteCheque.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO ( SENDER );
end;

procedure TFRelClienteCheque.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO ( SENDER );
end;

end.
