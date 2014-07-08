 unit Usuarios_DM;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  IBCustomDataSet, IBUpdateSQL, Db, IBQuery, IBStoredProc;

type
  TDMUsuarios = class(TDataModule)
    Login: TIBQuery;
    DSLogin: TDataSource;
    UpLogin: TIBUpdateSQL;
    LoginLOGIN: TIBStringField;
    LoginSENHA: TIBStringField;
    LoginPERFIL: TIntegerField;
    UpUsuarios: TIBUpdateSQL;
    DSUsuarios: TDataSource;
    DSFuncionarios: TDataSource;
    DSPerfil: TDataSource;
    LoginNOME: TIBStringField;
    LoginCODIGO: TIntegerField;
    procedure UsuariosAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Objeto: String[30];
    Direito: String[250];
  end;

var
  DMUsuarios: TDMUsuarios;

implementation

uses Application_DM, Procedures_DM;

{$R *.DFM}

procedure TDMUsuarios.UsuariosAfterInsert(DataSet: TDataSet);
begin
//  UsuariosSENHA.Value := '123456';
end;

end.
