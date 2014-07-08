unit Exporta_Iagro_Form;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  dxBar,   StdCtrls, ExtCtrls, dxCntner, dxEditor, dxEdLib,
  ComCtrls,  ActnList, dbtables, db, IBCustomDataSet, IBQuery,
    IBStoredProc, cxPropertiesStore, dxExEdtr, cxGraphics,
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
  TFrmExportaIagro = class(TForm)
    pnlClient: TPanel;
    Bevel1: TBevel;
    b2: TBevel;
    LblTitulo: TcxLabel;
    Panel2: TPanel;
    LblStatus: TcxLabel;
    RzBitBtn2: TcxButton;
    ANDA: TProgressBar;
    DIR: TOpenDialog;
    Actions: TActionList;
    ActFechar: TAction;
    ActAbre: TAction;
    ActExporta: TAction;
    PathDestino: TdxEdit;
    BtnDir: TcxButton;
    Label2: TcxLabel;
    Produtores: TIBQuery;
    TipoRegistro: TRadioGroup;
    BtnCriar: TcxButton;
    Label1: TcxLabel;
    Fim: TdxDateEdit;
    Ini: TdxDateEdit;
    Label3: TcxLabel;
    ProdutoresCOD_PESSOA: TIntegerField;
    ProdutoresIE: TIBStringField;
    ProdutoresNOME_RAZAO: TIBStringField;
    ProdutoresPROPRIEDADE: TIBStringField;
    ProdutoresTIPO_CPF_CNPJ: TIBStringField;
    ProdutoresCPF_CNPJ: TIBStringField;
    ProdutoresFONE: TIBStringField;
    ProdutoresTIPOLOGRADOURO: TIBStringField;
    ProdutoresLOGRADOURO: TIBStringField;
    ProdutoresNUMERO: TIBStringField;
    ProdutoresCOMPLEMENTO_PSA: TIBStringField;
    ProdutoresTIPOBAIRRO: TIBStringField;
    ProdutoresBAIRRO: TIBStringField;
    ProdutoresCOD_IAGRO_PSA: TIntegerField;
    ProdutoresUF: TIBStringField;
    ProdutoresCEP: TIBStringField;
    ProdutoresTIPOLOGRADOUROPROP: TIBStringField;
    ProdutoresLOGRADOURO_PROP: TIBStringField;
    ProdutoresCOMPLEMENTO_PROP: TIBStringField;
    ProdutoresTIPOBAIRROPROP: TIBStringField;
    ProdutoresBAIRRO_PROP: TIBStringField;
    ProdutoresUF_PROP: TIBStringField;
    ProdutoresCEP_PROP: TIBStringField;
    ProdutoresCOD_IAGRO_PROP: TIntegerField;
    ProdutoresCIDADE_PROP: TIBStringField;
    ProdutoresCIDADE_PSA: TIBStringField;
    ProdutoresNUMERO_PROP: TIBStringField;
    Lancamentos: TIBQuery;
    LancamentosDATA: TDateTimeField;
    LancamentosNUM_NF: TIntegerField;
    LancamentosQUANTIDADE: TFloatField;
    LancamentosVOLUME: TFloatField;
    LancamentosUNDMED: TIBStringField;
    LancamentosMATEMBALAGEM: TIBStringField;
    ProdutoresCOD_PROPRIEDADE: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure ActFecharExecute(Sender: TObject);
    procedure ActAbreExecute(Sender: TObject);
    procedure ActExportaExecute(Sender: TObject);
    procedure PRODUTOSBeforeOpen(DataSet: TDataSet);
    procedure RzBitBtn2Click(Sender: TObject);
    procedure IniKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FimKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
   
    procedure BtnDirKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BtnCriarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmExportaIagro: TFrmExportaIagro;

implementation

uses Usuarios_DM, Application_DM, Funcoes;

{$R *.DFM}

procedure TFrmExportaIagro.FormCreate(Sender: TObject);
begin


  // Se o Usuário for Supervisor
  If DMUsuarios.Direito = 'SUPERVISOR' Then
     DMApp.Verifica_Modulo(FileName(Application.ExeName), Self.Name, Self.Caption, ListaActions(Actions))
  Else If DMUsuarios.Objeto = Self.Name Then
     AtivaActions(Actions, DMUsuarios.Direito);
end;

procedure TFrmExportaIagro.ActFecharExecute(Sender: TObject);
begin
     Close ;
end;

procedure TFrmExportaIagro.ActAbreExecute(Sender: TObject);
begin
     IF DIR.Execute
     THEN BEGIN
          PathDestino.Text := DIR.FileName ;
     END;
end;

procedure TFrmExportaIagro.ActExportaExecute(Sender: TObject);
var
  I,sequencia: Integer;
  qtdex: real;
  f: TextFile;
  qtde, volume, Aux, IE_PROP, IE_REV, teste, TipoArquivo, cpf_cnpj, fone: String;
begin
  try
     if (trim(dmApp.IE) = '') then
     begin
       Application.MessageBox('Impossível gerar os registros. Defina a IE da revenda','Aviso',mb_ok+mb_iconerror);
       exit;
     end;

     if (ini.date <= 0) then
     begin
       Application.MessageBox('Defina a data inicial de pesquisa','Aviso',mb_ok+mb_iconerror);
       ini.setfocus;
       exit;
     end;

     if (fim.date <= 0) then
     begin
       Application.MessageBox('Defina a data final de pesquisa','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;

     if (fim.date <= ini.date) then
     begin
       Application.MessageBox('Intervalo de datas inválido','Aviso',mb_ok+mb_iconerror);
       fim.setfocus;
       exit;
     end;


     AssignFile( f, PathDestino.text);

     //Criando o txt
     if FileExists( PathDestino.text) then
       DeleteFile( PathDestino.text);


     Rewrite(F, PathDestino.text);

     Append(f);

     //--------------------------------Registro de Cabeçalho--------------------------------//
     case TipoRegistro.ItemIndex of
       0 : TipoArquivo := 'N';
       1 : TipoArquivo := 'R';
       2 : TipoArquivo := 'S';
     end;

     IE_REV  := DmApp.IE;
                IE_REV := StringReplace(IE_REV,'.','',[rfreplaceall]);
                IE_REV := StringReplace(IE_REV,'-','',[rfreplaceall]);
                IE_REV := StringReplace(IE_REV,'/','',[rfreplaceall]);

     aux := '1'+ //cabecalho
            completaesq(IE_REV,'0',14)+ //Incricao estadual da revenda
            completaesq(IntToStr(Month(Ini.date)),'0',2)+intToStr(Year(Ini.Date))+ //Periodo
            TipoArquivo;
     writeln( f,aux);


     //--------------------------------Registro de Produtores--------------------------------//

     Produtores.Close;
     Produtores.ParamByName('CNPJ').value := dmApp.cnpj;
     Produtores.ParamByName('data1').asDate := Ini.Date;
     Produtores.ParamByName('data2').asDate := Fim.Date;
     Produtores.Open;

     produtores.fetchAll ;

     sequencia := 1;
     Produtores.first;
     while NOT Produtores.EOF do
     begin
        //Validando a inscricao estadual da propriedade
        if (ProdutoresIE.AsString = '') then
        begin
          Application.MessageBox(Pchar('Popriedade '+ProdutoresPROPRIEDADE.AsString+' não possui IE definido. Verifique'),'Aviso',mb_ok+mb_iconerror);
          abort;
        end;

        //Validando se existe propriedade definida
        if (ProdutoresPROPRIEDADE.AsString = '') then
        begin
          Application.MessageBox(Pchar('Existem faturamentos do cliente '+ProdutoresNOME_RAZAO.AsString+' sem propriedade definida. Verifique'),'Aviso',mb_ok+mb_iconerror);
          abort;
        end;

        //Validando se existe propriedade definida
        if (ProdutoresCOD_IAGRO_PSA.AsString = '0') then
        begin
          Application.MessageBox(Pchar('O município '+ProdutoresCIDADE_PSA.AsString+' não possui codigo do IAGRO definido. Verifique'),'Aviso',mb_ok+mb_iconerror);
          abort;
        end;

        if (ProdutoresCOD_IAGRO_PROP.AsString = '0') then
        begin
          Application.MessageBox(Pchar('O município '+ProdutoresCIDADE_PROP.AsString+' não possui codigo do IAGRO definido. Verifique'),'Aviso',mb_ok+mb_iconerror);
          abort;
        end;


        //IE_PROP  := trim(ProdutoresIE.AsString);

        IE_PROP  := ProdutoresIE.AsString;
        IE_PROP := StringReplace(IE_PROP,'.','',[rfreplaceall]);
        IE_PROP := StringReplace(IE_PROP,'-','',[rfreplaceall]);
        IE_PROP := StringReplace(IE_PROP,'/','',[rfreplaceall]);


        if not(ChkInscEstadual(IE_PROP, ProdutoresUF.AsString)) then
        begin
           Application.MessageBox(PChar('Erro ao gerar registro do produtor '+ProdutoresNOME_RAZAO.AsString),'Aviso',mb_ok+mb_iconerror);

        end;


        cpf_cnpj := ProdutoresCPF_CNPJ.AsString;
        cpf_cnpj := StringReplace(cpf_cnpj,'.','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'-','',[rfreplaceall]);
        cpf_cnpj := StringReplace(cpf_cnpj,'/','',[rfreplaceall]);

        //Telefone
        fone := ProdutoresFONE.AsString;
        fone := StringReplace(fone,'(','',[rfreplaceall]);
        fone := StringReplace(fone,')','',[rfreplaceall]);
        fone := StringReplace(fone,'-','',[rfreplaceall]);

        aux := '2'+
               completaesq(copy(IE_PROP,1,9),'0',9)+//IE da propriedade
               completa(copy(trim(ProdutoresNOME_RAZAO.AsString),1,40),' ',40)+ //Propriedade
               completa(copy(trim(ProdutoresPROPRIEDADE.AsString),1,40),' ',40)+ //Propriedade
               completa(copy(ProdutoresTIPO_CPF_CNPJ.AsString,1,4),' ',4)+ //Tipo do documento
               completa(copy(cpf_cnpj,1,14),' ',14)+ //CPF do produtor
               completaesq(copy(fone,1,2),'0',2)+//DDD
               completaesq(copy(fone,3,11),'0',11)+ //Telefone do produtor
               completa(copy(ProdutoresTIPOLOGRADOURO.AsString,1,3),' ',3)+ //tipo logradouro 'RUA'
               completa(copy(ProdutoresLOGRADOURO.AsString,1,40),' ',40)+ //tipo logradouro 'RUA'
               completa(copy(ProdutoresNUMERO.AsString,1,5),' ',5)+ //Numero do endereco
               completa(copy(ProdutoresCOMPLEMENTO_PSA.AsString,1,30),' ',30)+ //Complemento
               completa(copy(ProdutoresTIPOBAIRRO.AsString,1,3),' ',3)+ //tipo bairro 'BAI'
               completa(copy(ProdutoresBAIRRO.AsString,1,40),' ',40)+ //Bairro
               completaesq(copy(ProdutoresCOD_IAGRO_PSA.AsString,1,6),' ',6)+ //Cod. Iagro
               completa(copy(ProdutoresUF.AsString,1,2),' ',2)+ //UF
               completa(copy(ProdutoresCEP.AsString,1,8),' ',8)+ //UF
               completa(copy(ProdutoresTIPOLOGRADOUROPROP.AsString,1,3),' ',3)+ //tipo logradouro 'RUA'
               completa(copy(ProdutoresLOGRADOURO_PROP.AsString,1,40),' ',40)+ //tipo logradouro 'RUA'
               completaesq(copy(ProdutoresNUMERO_PROP.AsString,1,5),' ',5)+ //numero do endereco da propriedade
               completa(copy(ProdutoresCOMPLEMENTO_PROP.AsString,1,30),' ',30)+ //Complemento da propriedade
               completa(copy(ProdutoresTIPOBAIRROPROP.AsString,1,3),' ',3)+ //tipo bairro 'OUT' PROPRIEDADE
               completa(copy(ProdutoresBAIRRO_PROP.AsString,1,40),' ',40)+ //Bairro propriedade
               completaesq(copy(ProdutoresCOD_IAGRO_PROP.AsString,1,6),' ',6)+ //Cod. Iagro municip propriedade
               completa(copy(ProdutoresUF_PROP.AsString,1,2),' ',2)+ //UF propriedade
               completa(copy(ProdutoresCEP_PROP.AsString,1,8),' ',8); //UF

               aux := StringReplace(aux,'.',' ',[rfreplaceall]);
               aux := StringReplace(aux,'-',' ',[rfreplaceall]);
               aux := StringReplace(aux,'/',' ',[rfreplaceall]);
               aux := StringReplace(aux,'+',' ',[rfreplaceall]);
               aux := StringReplace(aux,'<',' ',[rfreplaceall]);
               aux := StringReplace(aux,'>',' ',[rfreplaceall]);
               aux := StringReplace(upperCase(aux),'Ç','C',[rfreplaceall]);
               aux := StringReplace(upperCase(aux),'É','E',[rfreplaceall]);
               aux := StringReplace(upperCase(aux),'Ã','A',[rfreplaceall]);
               aux := StringReplace(upperCase(aux),'Õ','O',[rfreplaceall]);
               aux := StringReplace(upperCase(aux),'Ê','E',[rfreplaceall]); {}
               Writeln( f, AUX );

               //---------------------------------Lancamentos-------------------------------------//
               Lancamentos.Close;
               Lancamentos.ParamByName('CNPJ').value := dmApp.cnpj;
               Lancamentos.ParamByName('data1').asDate := Ini.Date;
               Lancamentos.ParamByName('data2').asDate := Fim.Date;
               Lancamentos.ParamByName('pessoa_fj').value :=  ProdutoresCOD_PESSOA.value;
               Lancamentos.ParamByName('propriedade').value :=  ProdutoresCOD_PROPRIEDADE.value;
               Lancamentos.Open;

               if (ProdutoresCOD_PESSOA.value = 50) then
                  teste := '';

               Lancamentos.FetchAll;
               Lancamentos.First;
               while not Lancamentos.EOF do
               begin

                 qtdex := (LancamentosQUANTIDADE.value/LancamentosVolume.Value);
                 qtde := FloatToStr(qtdex);
                 qtde := StringReplace(qtde,'.','',[rfreplaceall]);
                 qtde := StringReplace(qtde,',','',[rfreplaceall]);

                 volume := FormatFloat('###,##0.00',LancamentosVolume.Value);
                 volume := StringReplace(volume,'.','',[rfreplaceall]);
                  if (Pos(',',volume) > 0) then
                    volume := StringReplace(volume,',','',[rfreplaceall])
                  else
                    volume := volume + '00';

                 aux := '3'+
                        completaesq(copy(IE_REV,1,14),'0',14)+//IE da empresa
                        completaesq(IntToStr(Month(Ini.date)),'0',2)+intToStr(Year(Ini.Date))+ //Periodo
                        TipoArquivo+
                        completaesq(copy(inttostr(sequencia),1,5),'0',5)+//sequencia
                        completa(copy(IE_PROP,1,9),'0',9)+//IE da propriedade
                        completa(copy(LancamentosNUM_NF.AsString,1,14),' ',14)+//nota fiscal
                        completa(' ',' ',14)+//Recibo
                        completaesq(IntToStr(Day(LancamentosDATA.value)),'0',2)+completaesq(IntToStr(Month(LancamentosDATA.value)),'0',2)+intToStr(Year(LancamentosDATA.value))+ //Periodo
                        completaesq(copy(qtde,1,5),'0',5)+//quantidade
                        completaesq(copy(volume,1,13),'0',13)+
                        LancamentosUNDMED.value+//unidade de medida
                        LancamentosMATEMBALAGEM.value;

                 Writeln(f,AUX);

                 sequencia := sequencia + 1;
                 Lancamentos.next;
               end;

          Produtores.Next ;
    end;
    CloseFile(f);
    Application.MessageBox('Arquivo gerado com sucesso!','Aviso',mb_ok+mb_iconinformation);
  except
    Application.MessageBox('Arquivo gerado com sucesso!','Aviso',mb_ok+mb_iconerror);
  end;
end;

procedure TFrmExportaIagro.PRODUTOSBeforeOpen(DataSet: TDataSet);
begin
     (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
     (DataSet as TIBQuery).Prepare;
end;

procedure TFrmExportaIagro.RzBitBtn2Click(Sender: TObject);
begin
     Close ;
end;

procedure TFrmExportaIagro.IniKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaIagro.FimKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;



procedure TFrmExportaIagro.BtnDirKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaIagro.BtnCriarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

procedure TFrmExportaIagro.RzBitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_RETURN) OR (Key=VK_DOWN) Then
     Begin
       Perform(WM_NEXTDLGCTL, 0, 0);
     End;
  if (key=VK_UP) then
     Perform(WM_NEXTDLGCTL, 1, 0);
end;

end.
