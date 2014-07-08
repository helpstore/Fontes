 unit ClientesAlf_FRel;

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
  TFRelClientesAlf = class(TForm)
    pnlClient: TPanel;
    Panel2: TPanel;
    RzBitBtn1: TcxButton;
    RzBitBtn2: TcxButton;
    Label2: TcxLabel;
    Print: TRDprint;
    Label3: TcxLabel;
    Label1: TcxLabel;
    Label4: TcxLabel;
    edCodigoInicial: TdxCurrencyEdit;
    edCodigoFinal: TdxCurrencyEdit;
    Label5: TcxLabel;
    cbTipoPessoa: TdxPickEdit;
    Actions: TActionList;
    ActPreview: TAction;
    Label6: TcxLabel;
    cmbVendedor: TdxLookupEdit;
    dsVendedores: TDataSource;
    LblStatus: TcxLabel;
    ANDA: TProgressBar;
    rdRazaoSocial: TRadioButton;
    rdNomeFantasia: TRadioButton;
    Label7: TcxLabel;
    Label8: TcxLabel;
    cmbClassif: TdxLookupEdit;
    cmbClienteIni: TdxLookupEdit;
    cmbClienteFim: TdxLookupEdit;
    dsClientes: TDataSource;
    dsClassificacao: TDataSource;
    Label9: TcxLabel;
    CmbRegiao: TdxLookupEdit;
    DsRegiao: TDataSource;
    CkTipo: TdxCheckEdit;
    CkClientes: TdxCheckEdit;
    CkConvenios: TdxCheckEdit;
    RadioButton1: TRadioButton;
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
  FRelClientesAlf: TFRelClientesAlf;
  Linha, Pagina: Integer;
implementation

uses Relatorios_DM,
     Usuarios_DM,
     Application_DM,
     Funcoes;

{$R *.DFM}

procedure TFRelClientesAlf.FormCreate(Sender: TObject);
begin
  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFRelClientesAlf.ActFecharExecute(Sender: TObject);
begin
  Close;
end;

procedure TFRelClientesAlf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //
  dsVendedores.DataSet.Close;
  dsClassificacao.DataSet.Close;
  DsRegiao.DataSet.Close;
  
  //
  //
  Action := caFree;
  FRelClientesAlf := Nil;
end;

procedure TFRelClientesAlf.cmbPessoaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Perform(WM_NEXTDLGCTL, 0, 0);
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFRelClientesAlf.PrintBeforeNewPage(Sender: TObject; Pagina: Integer);
begin
  // Rodapé...
  Print.ImpF(63, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(64, 01, dmapp.QryParceiroPARC_TEXTO_RELATORIO.AsString, [comp17,italico]);
  Print.ImpF(64, 74, 'Pag. : ' + FormatFloat('0000', Pagina), [Comp17]);
end;

procedure TFRelClientesAlf.PrintNewPage(Sender: TObject; Pagina: Integer);
begin
  // Cabeçalho...
  Print.ImpF(01, 01, Replicate('-', 80), [Normal]);
  Print.ImpF(02, 01, DMApp.Nome, [Normal, Negrito]);
  Print.ImpF(02, 55, 'Data : '+ DateTimeToStr(now()), [Normal]);
  Print.ImpF(03, 01, Print.TitulodoRelatorio, [Normal]);
  Print.ImpF(04, 01, Replicate('-', 136), [Comp17]);
                    //....5...10...15...20...25...30...35...40...45...50...55...60...65...70...75...80...85...90...95...00...05...10...15...20...25...30...35.
  //
  If Trim(cmbVendedor.Text) <> '' Then
     Begin
       Print.ImpF(05, 01, 'Vendedor : ' + cmbVendedor.Text, [Comp17, Negrito]);
       Print.ImpF(06, 01, Replicate('-', 136), [Comp17]);
       Linha  := 7;
     End
  Else
     Linha := 5;
  //
  {Print.ImpF(05, 01, '  Codigo Nome                                     Endereco                                 Numero          Complemento                  ', [Comp17]);
  Print.ImpF(06, 01, '         Bairro                    Cidade/UF                      CEP      Cnpj/Cpf        Insc. Est./RG                                ', [Comp17]);
  Print.ImpF(07, 01, '         Telefone             Fax                 Celular                  EMail                                                        ', [Comp17]);}
end;

procedure TFRelClientesAlf.FormShow(Sender: TObject);
begin
  //
  IniciaComponentes(Self as TForm);
  //
  Try
    If Not(dsVendedores.DataSet.Active) Then
       dsVendedores.DataSet.Open;
    If Not(dsClientes.DataSet.Active) Then
       dsClientes.DataSet.Open;
    If Not(dsClassificacao.DataSet.Active) Then
       dsClassificacao.DataSet.Open;
    If Not(DsRegiao.DataSet.Active) Then
       DsRegiao.DataSet.Open;
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

procedure TFRelClientesAlf.ActPreviewExecute(Sender: TObject);
VAR
   Cont, i: Integer;
   Docto, Aux : string;
begin
  //
  lblStatus.caption := 'Selecionando Dados' ;
  lblStatus.Visible := True ;
  //
  Application.ProcessMessages;
  //
  Print.TitulodoRelatorio := 'Listagem Alfabetica de Clientes';
  //
  With DMRelatorios DO
  BEGIN
       Cont := 0;

       ClientesAlf.Params.Clear;
       ClientesAlf.Sql.Clear   ;

       // Instrução SQL
       ClientesAlf.Params.CreateParam(ftString, 'CNPJ', ptInput);

       if CkConvenios.Checked then
       begin
            ClientesAlf.Sql.Add ( ' SELECT CODIGO, NOME_RAZAO, FANTASIA, COD_ATIVIDADE, COD_CLASSIF, PRAZO,'+
                                  ' COMPRADOR, ATIVIDADE, NOME_VENDEDOR, COD_ENDERECO, COD_VENDEDOR, NOME_CLASSIF, ENDERECO,'+
                                  ' NOME_FORMA_PAGTO, NUMERO, COMPLEMENTO, COD_BAIRRO, BAIRRO, COD_CIDADE, CIDADE, UF, BLOQUEADO,'+
                                  ' CEP, FONE, FAX, CELULAR, PESSOA, CPF_CGC CPF, CPF_CGC CNPJ,CPF_CGC, RG_IE, CONTATO, DT_NASCIMENTO, DT_CADASTRO, EMAIL,'+
                                  ' OBS, REGIAO, INSC_MUNIC, ASSINA_NOTA, ORDEM, FREQUENCIA FROM  VER_CONVENIOS ( :CNPJ ) ' );
       end
       else
       begin
            ClientesAlf.Sql.Add ( ' SELECT  PESSOA, CODIGO, NOME_RAZAO, FANTASIA, ENDERECO, NUMERO, COMPLEMENTO,'+
                                  ' BAIRRO, CIDADE, CEP, CPF_CGC, CPF_CGC CPF, CPF_CGC CNPJ, RG_IE, FONE, FAX, CELULAR,'+
                                  ' EMAIL, NOME_VENDEDOR, NOME_FORMA_PAGTO, PRAZO, COMPRADOR, DT_CADASTRO, BLOQUEADO, '+
                                  ' NOME_CLASSIF, COD_CLASSIF, COD_VENDEDOR, REGIAO, ASSINA_NOTA, UF, DT_NASCIMENTO,'+
                                  ' FREQUENCIA, ATIVIDADE  FROM  VER_PESSOAS ( :CNPJ ) ' );
       end;

       //
       If edCodigoInicial.Value <> 0
       Then Begin
            ClientesAlf.Params.CreateParam(ftInteger, 'CODIGO_INICIAL', ptInput);
            ClientesAlf.Sql.Add (  ' Where CODIGO >= :CODIGO_INICIAL ' );
            ClientesAlf.ParamByName('CODIGO_INICIAL').asInteger := Trunc(edCodigoInicial.Value);
            Cont := 1;
       End ;

       //
       If edCodigoFinal.Value <> 0
       Then Begin
            If Cont = 0
            then begin
                 DMRelatorios.ClientesAlf.Params.CreateParam(ftInteger, 'CODIGO_FINAL', ptInput);
                 ClientesAlf.Sql.Add (  ' Where CODIGO <= :CODIGO_FINAL ' );
                 DMRelatorios.ClientesAlf.ParamByName('CODIGO_FINAL').asInteger := Trunc(edCodigoFinal.Value);
                 Cont := Cont + 1;
            end
            else begin
                 DMRelatorios.ClientesAlf.Params.CreateParam(ftInteger, 'CODIGO_FINAL', ptInput);
                 ClientesAlf.Sql.Add (  ' And CODIGO <= :CODIGO_FINAL ' );
                 DMRelatorios.ClientesAlf.ParamByName('CODIGO_FINAL').asInteger := Trunc(edCodigoFinal.Value);
                 Cont := Cont + 1;
            end;
       End;

       //
       If Trim(cmbClienteIni.Text) <> ''
       Then Begin
            If Cont = 0
            Then begin
                 ClientesAlf.Params.CreateParam(ftString, 'NOME_INICIAL', ptInput);
                 ClientesAlf.Sql.Add (  ' Where NOME_RAZAO >= :NOME_INICIAL ' );
                 ClientesAlf.ParamByName('NOME_INICIAL').asString := Trim(cmbClienteIni.Text);
                 Cont := Cont + 1;
            end
            else begin
                 ClientesAlf.Params.CreateParam(ftString, 'NOME_INICIAL', ptInput);
                 ClientesAlf.Sql.Add (  ' And NOME_RAZAO >= :NOME_INICIAL ' );
                 ClientesAlf.ParamByName('NOME_INICIAL').asString := Trim(cmbClienteIni.Text);
                 Cont := Cont + 1;
            end;
       End ;

       //
       If Trim(cmbClienteFim.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 ClientesAlf.Params.CreateParam(ftString, 'NOME_FINAL', ptInput);
                 ClientesAlf.Sql.Add (  ' Where NOME_RAZAO <= :NOME_FINAL ' );
                 ClientesAlf.ParamByName('NOME_FINAL').asString := Trim(cmbClienteFim.Text);
                 Cont := Cont + 1;
            end
            else begin
                 ClientesAlf.Params.CreateParam(ftString, 'NOME_FINAL', ptInput);
                 ClientesAlf.Sql.Add (  ' And NOME_RAZAO <= :NOME_FINAL ' );
                 ClientesAlf.ParamByName('NOME_FINAL').asString := Trim(cmbClienteFim.Text);
                 Cont := Cont + 1;
            end;
       End ;

       //
       If Trim(cmbVendedor.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 //
                 ClientesAlf.Params.CreateParam(ftInteger, 'COD_VEND', ptInput);
                 ClientesAlf.Sql.Add (  ' Where COD_VENDEDOR = :COD_VEND ' );
                 ClientesAlf.ParamByName('COD_VEND').asInteger := cmbVendedor.LookupKeyValue;
                 Cont := Cont + 1;
            End
            else begin
                 ClientesAlf.Params.CreateParam(ftInteger, 'COD_VEND', ptInput);
                 ClientesAlf.Sql.Add (  ' And COD_VENDEDOR = :COD_VEND ' );
                 ClientesAlf.ParamByName('COD_VEND').asInteger := cmbVendedor.LookupKeyValue;
                 Cont := Cont + 1;
            end;
       end;

       //
       Case cbTipoPessoa.ItemIndex of
            1: begin
                    If Cont = 0
                    then begin
                         //
                         ClientesAlf.Params.CreateParam(ftString, 'PESSOA', ptInput);
                         ClientesAlf.Sql.Add (  ' Where PESSOA <> :PESSOA ' );
                         ClientesAlf.ParamByName('PESSOA').asString := 'J' ;
                         Cont := Cont + 1;
                    End
                    else begin
                         ClientesAlf.Params.CreateParam(ftString, 'PESSOA', ptInput);
                         ClientesAlf.Sql.Add (  ' And PESSOA <> :PESSOA ' );
                         ClientesAlf.ParamByName('PESSOA').asString := 'J' ;
                         Cont := Cont + 1;
                    end;
            end;

            2: begin
                    If Cont = 0
                    then begin
                         //
                         ClientesAlf.Params.CreateParam(ftString, 'PESSOA', ptInput);
                         ClientesAlf.Sql.Add (  ' Where PESSOA = :PESSOA ' );
                         ClientesAlf.ParamByName('PESSOA').asString := 'J' ;
                         Cont := Cont + 1;
                    End
                    else begin
                         ClientesAlf.Params.CreateParam(ftString, 'PESSOA', ptInput);
                         ClientesAlf.Sql.Add (  ' And PESSOA = :PESSOA ' );
                         ClientesAlf.ParamByName('PESSOA').asString := 'J' ;
                         Cont := Cont + 1;
                    end;
            end ;
       End;

       //
       If Trim(cmbClassif.Text) <> ''
       Then Begin
            If Cont = 0
            then begin
                 ClientesAlf.Params.CreateParam(ftInteger, 'COD_CLASSIF', ptInput);
                 ClientesAlf.Sql.Add (  ' Where COD_CLASSIF = :COD_CLASSIF ' );
                 ClientesAlf.ParamByName('COD_CLASSIF').asInteger := cmbClassif.LookupKeyValue;
                 Cont := Cont + 1;
            end
            else begin
                 ClientesAlf.Params.CreateParam(ftInteger, 'COD_CLASSIF', ptInput);
                 ClientesAlf.Sql.Add (  ' And COD_CLASSIF = :COD_CLASSIF ' );
                 ClientesAlf.ParamByName('COD_CLASSIF').asInteger := cmbClassif.LookupKeyValue;
                 Cont := Cont + 1;
            end;
       End;

       //
       If Trim(CmbRegiao.Text) <> '' Then
       Begin
            If Cont = 0 then
            begin
                 ClientesAlf.Sql.Add(' Where COD_CIDADE in (select cidade from crg_rotas_cidades where rota = :regiao) ');
                 ClientesAlf.ParamByName('REGIAO').asInteger := CmbRegiao.LookupKeyValue;
                 Cont := Cont + 1;
            end
            else
            begin
                 ClientesAlf.Sql.Add(' and COD_CIDADE in (select cidade from crg_rotas_cidades where rota = :regiao) ');
                 ClientesAlf.ParamByName('REGIAO').asInteger := CmbRegiao.LookupKeyValue;
                 Cont := Cont + 1;
            end;
       End;

       if CkTipo.Checked
       then begin
            If Cont = 0
            then begin
                 ClientesAlf.Params.CreateParam(ftInteger, 'ASSINA', ptInput);
                 ClientesAlf.Sql.Add (  ' Where ASSINA_NOTA = :ASSINA ' );
                 ClientesAlf.ParamByName('ASSINA').asString := 'S';
                 Cont := Cont + 1;
            end
            else begin
                 ClientesAlf.Params.CreateParam(ftInteger, 'ASSINA', ptInput);
                 ClientesAlf.Sql.Add (  ' AND ASSINA_NOTA = :ASSINA ' );
                 ClientesAlf.ParamByName('ASSINA').asString := 'S';
                 Cont := Cont + 1;
            end;
       end;

       if CkClientes.Checked
       then begin
            If Cont = 0
            then begin
                 ClientesAlf.Sql.Add (  ' Where FREQUENCIA IS NOT NULL ' );
                 Cont := Cont + 1;
            end
            else begin
                 ClientesAlf.Sql.Add (  ' AND FREQUENCIA IS NOT NULL ' );
                 Cont := Cont + 1;
            end;
       end;

       //
       if rdRazaoSocial.Checked then
         ClientesAlf.Sql.Add ( ' ORDER BY NOME_RAZAO ' )
       else if rdNomeFantasia.checked then
         ClientesAlf.Sql.Add ( ' ORDER BY FANTASIA   ' )
       else
        ClientesAlf.Sql.Add ( ' ORDER BY CIDADE, FANTASIA ' );
  end;


  //
  DMRelatorios.ClientesAlf.Open;
  DMRelatorios.ClientesAlf.FetchAll;
  //
  If DMRelatorios.ClientesAlf.RecordCount = 0 Then
     Begin
       lblStatus.Visible := False ;
       ShowMessage('Não há registro a imprimir para os parâmetros especificados, verifique !');
       //
       DMRelatorios.ClientesAlf.Close;
       //
       edCodigoInicial.SetFocus;
       Exit;
     End
  Else
     Begin
       //
       lblStatus.Visible := False ;
       //
       Anda.Max := DMRelatorios.ClientesAlf.RecordCount;
       Anda.Position := 0;
       Anda.Visible  := TRUE ;
     End;
  //
  print.Abrir;
  //
  DMRelatorios.ClientesAlf.First;
  While Not DMRelatorios.ClientesAlf.Eof Do
        Begin
          if (dmRelatorios.ClientesAlfPessoa.value = 'F') then
            docto := dmRelatorios.ClientesAlfCPF.VALUE
          else
            docto := dmRelatorios.ClientesAlfCPF.VALUE;

          Print.ImpF(Linha    , 01, Format('       Codigo : %1s', [DMRelatorios.ClientesAlfCODIGO.Text]), [Comp17, Negrito]);

          Print.ImpF(Linha + 1, 01, Format(' Razao Social : %-35s %-40s Fone : %-20s %-15s',
                                           [Copy(DMRelatorios.ClientesAlfNOME_RAZAO.Text, 1, 35),
                                            Copy(DMRelatorios.ClientesAlfENDERECO.Text + ', ' + DMRelatorios.ClientesAlfNUMERO.Text, 1, 40),
                                            Copy(DMRelatorios.ClientesAlfFONE.Text, 1, 15),
                                            Copy(DMRelatorios.ClientesAlfBLOQUEADO.Text, 1, 15)]), [Comp17]);

          Print.ImpF(Linha + 2, 01, Format('Nome Fantasia : %-35s %-40s Fax : %-20s  %-15s',
                                           [Copy(DMRelatorios.ClientesAlfFANTASIA.Text, 1, 35),
                                            Copy(DMRelatorios.ClientesAlfBAIRRO.Text, 1, 40),
                                            DMRelatorios.ClientesAlfFAX.Text,
                                            Copy(DMRelatorios.ClientesAlfNOME_FORMA_PAGTO.Text, 1, 15)]), [Comp17]);

          Print.ImpF(Linha + 3, 01, Format('     CPF/CNPJ : %-35s %-40s Comprador : %-15s %-15s',
                                           [DOCTO,
                                            Copy('CEP ' + DMRelatorios.ClientesAlfCEP.Text + ' ' + DMRelatorios.ClientesAlfCOMPLEMENTO.Text, 1, 40),
                                            Copy(DMRelatorios.ClientesAlfCOMPRADOR.Text, 1, 14),
                                            DMRelatorios.ClientesAlfPRAZO.Text + ' Dias' ]), [Comp17]);

          Print.ImpF(Linha + 4, 01, Format('    R.G./I.E. : %-35s %-40s Data Cad. : %-14s',
                                           [DMRelatorios.ClientesAlfRG_IE.Text,
                                            Copy(DMRelatorios.ClientesAlfCIDADE.Text, 1, 40),
                                            DMRelatorios.ClientesAlfDT_CADASTRO.Text]), [Comp17]);

          //
          If Trim(cmbVendedor.Text) = '' Then
             Begin
               Print.ImpF(Linha + 5, 01, Format('     Vendedor : %-35s Data Nasc. : %-14s', [DMRelatorios.ClientesAlfNOME_VENDEDOR.Text, DMRelatorios.ClientesAlfDT_NASCIMENTO.text ]), [Comp17]);
               Linha := Linha + 5;
             End
          Else
             Linha := Linha + 4;

          //
          Print.ImpF(Linha + 1, 01, Replicate('-', 136), [Comp17]);

          //
          DMRelatorios.ClientesAlf.Next;

          //
          Anda.Position := Anda.Position + 1;

          Application.ProcessMessages;
          //
          Linha := Linha + 2;

          //aqui
          If Linha >= 60 Then
             Print.Novapagina;
        End;
  //
  DMRelatorios.ClientesAlf.Close;
  //
  Anda.Visible:= False;
  print.Fechar;
end;

procedure TFRelClientesAlf.edCodigoInicialEnter(Sender: TObject);
begin
     CORFUNDO (SENDER );
end;

procedure TFRelClientesAlf.edCodigoInicialExit(Sender: TObject);
begin
     TIRACORFUNDO (SENDER );
end;

end.
