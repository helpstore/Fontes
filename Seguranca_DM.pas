 unit Seguranca_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, IBCustomDataSet, IBUpdateSQL, IBQuery, IBStoredProc;

type
  TReplaceFlags = set of (rfReplaceAll, rfIgnoreCase);
  TDMSeguranca = class(TDataModule)
    DSPerfil: TDataSource;
    Modulos: TIBQuery;
    ModulosCODIGO: TIntegerField;
    ModulosOBJETO: TIBStringField;
    ModulosRESTRITO: TIBStringField;
    ModulosACTIONS: TIBStringField;
    ModulosEXECUTAVEL: TIBStringField;
    Perfil: TIBDataSet;
    PerfilCODIGO: TIntegerField;
    PerfilDESCRICAO: TIBStringField;
    Direitos: TIBDataSet;
    DireitosPERFIL: TIntegerField;
    DireitosMODULO: TIntegerField;
    DireitosDIREITO: TIBStringField;
    DireitosEXECUTAVEL_MODULO: TStringField;
    DireitosNOME_MODULO: TStringField;
    DireitosACTIONS_MODULO: TStringField;
    DireitosDIREITO_SHOW: TStringField;
    ModulosDESCRICAO: TIBStringField;
    Usuarios: TIBDataSet;
    UsuariosCODIGO: TIntegerField;
    UsuariosLOGIN: TIBStringField;
    UsuariosNOME: TIBStringField;
    UsuariosPERFIL: TIntegerField;
    UsuariosSENHA: TIBStringField;
    Conta_Caixa: TIBDataSet;
    Conta_CaixaCNPJ: TIBStringField;
    Conta_CaixaCODIGO: TIntegerField;
    Conta_CaixaCONTA_DESCONTOS: TIntegerField;
    Conta_CaixaCONTA_DIFERENCA: TIntegerField;
    Conta_CaixaVENDEDOR: TIntegerField;
    DsUsuario: TDataSource;
    Forms: TIBQuery;
    FormsOBJETO: TIBStringField;
    FormsDESCRICAO: TIBStringField;
    CONFIGURA_DIREITOS: TIBStoredProc;
    Configura_Modulos: TIBDataSet;
    Configura_ModulosCODIGO: TIntegerField;
    Configura_ModulosOBJETO: TIBStringField;
    Configura_ModulosDESCRICAO: TIBStringField;
    Configura_ModulosRESTRITO: TIBStringField;
    Configura_ModulosACTIONS: TIBStringField;
    Configura_ModulosEXECUTAVEL: TIBStringField;
    procedure ModulosRESTRITOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
    procedure PerfilBeforeOpen(DataSet: TDataSet);
    procedure PerfilAfterClose(DataSet: TDataSet);
    procedure PerfilAfterInsert(DataSet: TDataSet);
    procedure PerfilBeforePost(DataSet: TDataSet);
    procedure DireitosCalcFields(DataSet: TDataSet);
    procedure UsuariosAfterInsert(DataSet: TDataSet);
    procedure UsuariosBeforePost(DataSet: TDataSet);
    procedure Conta_CaixaNewRecord(DataSet: TDataSet);
    procedure Conta_CaixaBeforeOpen(DataSet: TDataSet);
    procedure Conta_CaixaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Procedure Conf_Direitos ;
  end;

var
  DMSeguranca: TDMSeguranca;

implementation

uses Application_DM, Procedures_DM, Funcoes, Cadastros_DM;


{$R *.DFM}

Procedure TDMSeguranca.Conf_Direitos ;
Begin
     CONFIGURA_DIREITOS.Close    ;

     CONFIGURA_DIREITOS.ExecProc ;

     CONFIGURA_DIREITOS.Close    ;
end;

procedure TDMSeguranca.ModulosRESTRITOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  If Sender.Value = 'S' Then
     Text := 'Sim';
  If Sender.Value = 'N' Then
     Text := 'Não';
end;

procedure TDMSeguranca.DataModuleDestroy(Sender: TObject);
begin
  DMSeguranca := Nil;
end;

procedure TDMSeguranca.PerfilBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).Prepare;
  If (DataSet is TIBDataset) Then
     (DataSet as TIBDataset).Prepare;
end;

procedure TDMSeguranca.PerfilAfterClose(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     (DataSet as TIBQuery).UnPrepare;
  If (DataSet is TIBDataset) Then
     (DataSet as TIBDataset).UnPrepare;
end;

procedure TDMSeguranca.PerfilAfterInsert(DataSet: TDataSet);
begin
  //
  PerfilCODIGO.Value := DMApp.GerarCodigo('SIS_PERFIL', 0) + 1;
end;

procedure TDMSeguranca.PerfilBeforePost(DataSet: TDataSet);
begin
  //
  If Perfil.State = dsInsert Then
     PerfilCODIGO.Value := DMApp.GerarCodigo('SIS_PERFIL', 1);
end;

procedure TDMSeguranca.DireitosCalcFields(DataSet: TDataSet);
Var
  sDir: String;
  stDir: TStringList;
  i: Integer;
begin
  //
  sDir := DireitosDIREITO.Value;
  stDir := TStringList.Create;
  //
  While Pos('Act', sDir) > 0 Do
        sDir := StringReplace(sDir, 'Act', '', []);
  //
  sBreakApart(sDir, ', ', stDir);
  //
  sDir := '';
  For i := 0 To stDir.Count -1 Do
      Begin
        If sDir = '' Then
           sDir := Dict_Actions(stDir[i])
        Else
           sDir := sDir + ', ' + Dict_Actions(stDir[i]);
      End;
  //
  If sDir = '' Then
     DireitosDIREITO_SHOW.Value := '<Nenhum>'
  Else
     DireitosDIREITO_SHOW.Value := sDir;
end;

procedure TDMSeguranca.UsuariosAfterInsert(DataSet: TDataSet);
begin
  //
  UsuariosCODIGO.Value := DMApp.GerarCodigo('SIS_USUARIOS', 0) + 1;
  UsuariosSENHA.Value  := Encrypt('1234');
end;

procedure TDMSeguranca.UsuariosBeforePost(DataSet: TDataSet);
begin
  //
  If Usuarios.State = dsInsert Then
     UsuariosCODIGO.Value := DMApp.GerarCodigo('SIS_USUARIOS', 1);
end;

procedure TDMSeguranca.Conta_CaixaNewRecord(DataSet: TDataSet);
begin
     Conta_CaixaCNPJ.Value   := DmApp.Cnpj           ;
     Conta_CaixaCODIGO.Value := UsuariosCODIGO.Value ;
end;

procedure TDMSeguranca.Conta_CaixaBeforeOpen(DataSet: TDataSet);
begin
  If (DataSet is TIBQuery) Then
     Begin
       (DataSet as TIBQuery).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBQuery).Prepare;
     End;
  If (DataSet is TIBDataset) Then
     Begin
       (DataSet as TIBDataSet).ParamByName('CNPJ').asString := DMApp.Cnpj;
       (Dataset as TIBDataSet).Prepare;
     End;
end;

procedure TDMSeguranca.Conta_CaixaBeforePost(DataSet: TDataSet);
begin
     If ((DmCadastros <> Nil) and ( Conta_CaixaVENDEDOR.Value > 0 ))
     then begin
          Conta_CaixaCODIGO.Value := UsuariosCODIGO.VALUE ;
     end;
end;

end.
