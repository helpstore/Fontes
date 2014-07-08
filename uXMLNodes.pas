
{***********************************************************************************}
{                                                                                   }
{                                 XML Data Binding                                  }
{                                                                                   }
{         Generated on: 05/11/2010 02:18:55                                         }
{       Generated from: C:\Users\ClaudioHMB\Desktop\GoogleMaps\TratarJson.xml   }
{   Settings stored in: C:\Users\ClaudioHMB\Desktop\GoogleMaps\TratarJson.xdb   }
{                                                                                   }
{***********************************************************************************}

unit uXMLNodes;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLChsoftType = interface;
  IXMLPercursoType = interface;

{ IXMLChsoftType }

  IXMLChsoftType = interface(IXMLNode)
    ['{24AF33B4-A77D-4A20-AB9D-47796F01F25E}']
    { Property Accessors }
    function Get_Percurso: IXMLPercursoType;
    { Methods & Properties }
    property Percurso: IXMLPercursoType read Get_Percurso;
  end;

{ IXMLPercursoType }

  IXMLPercursoType = interface(IXMLNode)
    ['{A19B1FEF-06FA-42FD-918B-BEF33AA478CD}']
    { Property Accessors }
    function Get_Tempo_segundos: Integer;
    function Get_Tempo_minutos: AnsiString;
    function Get_Distancia_metros: Integer;
    function Get_Distancia_km: AnsiString;
    procedure Set_Tempo_segundos(Value: Integer);
    procedure Set_Tempo_minutos(Value: AnsiString);
    procedure Set_Distancia_metros(Value: Integer);
    procedure Set_Distancia_km(Value: AnsiString);
    { Methods & Properties }
    property Tempo_segundos: Integer read Get_Tempo_segundos write Set_Tempo_segundos;
    property Tempo_minutos: AnsiString read Get_Tempo_minutos write Set_Tempo_minutos;
    property Distancia_metros: Integer read Get_Distancia_metros write Set_Distancia_metros;
    property Distancia_km: AnsiString read Get_Distancia_km write Set_Distancia_km;
  end;

{ Forward Decls }

  TXMLChsoftType = class;
  TXMLPercursoType = class;

{ TXMLChsoftType }

  TXMLChsoftType = class(TXMLNode, IXMLChsoftType)
  protected
    { IXMLChsoftType }
    function Get_Percurso: IXMLPercursoType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLPercursoType }

  TXMLPercursoType = class(TXMLNode, IXMLPercursoType)
  protected
    { IXMLPercursoType }
    function Get_Tempo_segundos: Integer;
    function Get_Tempo_minutos: AnsiString;
    function Get_Distancia_metros: Integer;
    function Get_Distancia_km: AnsiString;
    procedure Set_Tempo_segundos(Value: Integer);
    procedure Set_Tempo_minutos(Value: AnsiString);
    procedure Set_Distancia_metros(Value: Integer);
    procedure Set_Distancia_km(Value: AnsiString);
  end;

{ Global Functions }

function Getchsoft(Doc: IXMLDocument): IXMLChsoftType;
function Loadchsoft(const FileName: string): IXMLChsoftType;
function Newchsoft: IXMLChsoftType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function Getchsoft(Doc: IXMLDocument): IXMLChsoftType;
begin
  Result := Doc.GetDocBinding('chsoft', TXMLChsoftType, TargetNamespace) as IXMLChsoftType;
end;

function Loadchsoft(const FileName: string): IXMLChsoftType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('chsoft', TXMLChsoftType, TargetNamespace) as IXMLChsoftType;
end;

function Newchsoft: IXMLChsoftType;
begin
  Result := NewXMLDocument.GetDocBinding('chsoft', TXMLChsoftType, TargetNamespace) as IXMLChsoftType;
end;

{ TXMLChsoftType }

procedure TXMLChsoftType.AfterConstruction;
begin
  RegisterChildNode('percurso', TXMLPercursoType);
  inherited;
end;

function TXMLChsoftType.Get_Percurso: IXMLPercursoType;
begin
  Result := ChildNodes['percurso'] as IXMLPercursoType;
end;

{ TXMLPercursoType }

function TXMLPercursoType.Get_Tempo_segundos: Integer;
begin
  Result := ChildNodes['tempo_segundos'].NodeValue;
end;

procedure TXMLPercursoType.Set_Tempo_segundos(Value: Integer);
begin
  ChildNodes['tempo_segundos'].NodeValue := Value;
end;

function TXMLPercursoType.Get_Tempo_minutos: AnsiString;
begin
  Result := ChildNodes['tempo_minutos'].Text;
end;

procedure TXMLPercursoType.Set_Tempo_minutos(Value: AnsiString);
begin
  ChildNodes['tempo_minutos'].NodeValue := Value;
end;

function TXMLPercursoType.Get_Distancia_metros: Integer;
begin
  Result := ChildNodes['distancia_metros'].NodeValue;
end;

procedure TXMLPercursoType.Set_Distancia_metros(Value: Integer);
begin
  ChildNodes['distancia_metros'].NodeValue := Value;
end;

function TXMLPercursoType.Get_Distancia_km: AnsiString;
begin
  Result := ChildNodes['distancia_km'].Text;
end;

procedure TXMLPercursoType.Set_Distancia_km(Value: AnsiString);
begin
  ChildNodes['distancia_km'].NodeValue := Value;
end;

end.