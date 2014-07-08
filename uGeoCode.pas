
{****************************************************************************}
{                                                                            }
{                              XML Data Binding                              }
{                                                                            }
{         Generated on: 03/11/2010 21:03:42                                  }
{       Generated from: C:\Users\ClaudioHMB\Desktop\GoogleMaps\GeoCode.xml   }
{   Settings stored in: C:\Users\ClaudioHMB\Desktop\GoogleMaps\GeoCode.xdb   }
{                                                                            }
{****************************************************************************}

unit uGeoCode;

interface

uses xmldom, XMLDoc, XMLIntf;

type

{ Forward Decls }

  IXMLGeocodeResponseType = interface;
  IXMLResultType = interface;
  IXMLResultTypeList = interface;
  IXMLAddress_componentType = interface;
  IXMLAddress_componentTypeList = interface;
  IXMLGeometryType = interface;
  IXMLLocationType = interface;
  IXMLViewportType = interface;
  IXMLSouthwestType = interface;
  IXMLNortheastType = interface;
  IXMLBoundsType = interface;
  IXMLString_List = interface;

{ IXMLGeocodeResponseType }

  IXMLGeocodeResponseType = interface(IXMLNode)
    ['{64EE5C8E-455C-4BF6-A379-1D213354E21A}']
    { Property Accessors }
    function Get_Status: String;
    function Get_Result: IXMLResultTypeList;
    procedure Set_Status(Value: String);
    { Methods & Properties }
    property Status: AnsiString read Get_Status write Set_Status;
    property Result: IXMLResultTypeList read Get_Result;
  end;

{ IXMLResultType }

  IXMLResultType = interface(IXMLNode)
    ['{E2D62C49-7114-4C82-918D-614F57DD4640}']
    { Property Accessors }
    function Get_Type_: AnsiString;
    function Get_Formatted_address: AnsiString;
    function Get_Address_component: IXMLAddress_componentTypeList;
    function Get_Geometry: IXMLGeometryType;
    procedure Set_Type_(Value: AnsiString);
    procedure Set_Formatted_address(Value: AnsiString);
    { Methods & Properties }
    property Type_: AnsiString read Get_Type_ write Set_Type_;
    property Formatted_address: AnsiString read Get_Formatted_address write Set_Formatted_address;
    property Address_component: IXMLAddress_componentTypeList read Get_Address_component;
    property Geometry: IXMLGeometryType read Get_Geometry;
  end;

{ IXMLResultTypeList }

  IXMLResultTypeList = interface(IXMLNodeCollection)
    ['{FE5A1CB0-A2CA-4802-9145-BC6376B9F3B6}']
    { Methods & Properties }
    function Add: IXMLResultType;
    function Insert(const Index: Integer): IXMLResultType;

    function Get_Item(Index: Integer): IXMLResultType;
    property Items[Index: Integer]: IXMLResultType read Get_Item; default;
  end;

{ IXMLAddress_componentType }

  IXMLAddress_componentType = interface(IXMLNode)
    ['{252CE0E6-87C4-4B54-9A71-F0C02E68CF34}']
    { Property Accessors }
    function Get_Long_name: Integer;
    function Get_Short_name: Integer;
    function Get_Type_: IXMLString_List;
    procedure Set_Long_name(Value: Integer);
    procedure Set_Short_name(Value: Integer);
    { Methods & Properties }
    property Long_name: Integer read Get_Long_name write Set_Long_name;
    property Short_name: Integer read Get_Short_name write Set_Short_name;
    property Type_: IXMLString_List read Get_Type_;
  end;

{ IXMLAddress_componentTypeList }

  IXMLAddress_componentTypeList = interface(IXMLNodeCollection)
    ['{7F9FCBFF-6A38-4C66-9A35-E53CFBDB7D82}']
    { Methods & Properties }
    function Add: IXMLAddress_componentType;
    function Insert(const Index: Integer): IXMLAddress_componentType;

    function Get_Item(Index: Integer): IXMLAddress_componentType;
    property Items[Index: Integer]: IXMLAddress_componentType read Get_Item; default;
  end;

{ IXMLGeometryType }

  IXMLGeometryType = interface(IXMLNode)
    ['{01B469E2-F352-48EC-8947-36769B083067}']
    { Property Accessors }
    function Get_Location: IXMLLocationType;
    function Get_Location_type: AnsiString;
    function Get_Viewport: IXMLViewportType;
    function Get_Bounds: IXMLBoundsType;
    procedure Set_Location_type(Value: AnsiString);
    { Methods & Properties }
    property Location: IXMLLocationType read Get_Location;
    property Location_type: AnsiString read Get_Location_type write Set_Location_type;
    property Viewport: IXMLViewportType read Get_Viewport;
    property Bounds: IXMLBoundsType read Get_Bounds;
  end;

{ IXMLLocationType }

  IXMLLocationType = interface(IXMLNode)
    ['{6F7C30E2-EA11-482C-9399-87A264741188}']
    { Property Accessors }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
    { Methods & Properties }
    property Lat: AnsiString read Get_Lat write Set_Lat;
    property Lng: AnsiString read Get_Lng write Set_Lng;
  end;

{ IXMLViewportType }

  IXMLViewportType = interface(IXMLNode)
    ['{01C002F6-0DDE-4375-95CE-9602D563FEA9}']
    { Property Accessors }
    function Get_Southwest: IXMLSouthwestType;
    function Get_Northeast: IXMLNortheastType;
    { Methods & Properties }
    property Southwest: IXMLSouthwestType read Get_Southwest;
    property Northeast: IXMLNortheastType read Get_Northeast;
  end;

{ IXMLSouthwestType }

  IXMLSouthwestType = interface(IXMLNode)
    ['{D772647C-AE9C-48A1-BA9A-DA12D9569FFB}']
    { Property Accessors }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
    { Methods & Properties }
    property Lat: AnsiString read Get_Lat write Set_Lat;
    property Lng: AnsiString read Get_Lng write Set_Lng;
  end;

{ IXMLNortheastType }

  IXMLNortheastType = interface(IXMLNode)
    ['{2B216DD9-53AB-4524-A1ED-148282EDC3FA}']
    { Property Accessors }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
    { Methods & Properties }
    property Lat: AnsiString read Get_Lat write Set_Lat;
    property Lng: AnsiString read Get_Lng write Set_Lng;
  end;

{ IXMLBoundsType }

  IXMLBoundsType = interface(IXMLNode)
    ['{9BA462F3-AF31-41C2-B7D0-1F0C80425504}']
    { Property Accessors }
    function Get_Southwest: IXMLSouthwestType;
    function Get_Northeast: IXMLNortheastType;
    { Methods & Properties }
    property Southwest: IXMLSouthwestType read Get_Southwest;
    property Northeast: IXMLNortheastType read Get_Northeast;
  end;

{ IXMLString_List }

  IXMLString_List = interface(IXMLNodeCollection)
    ['{19D281C9-807B-4BAF-9BD2-2F8F3460E44D}']
    { Methods & Properties }
    function Add(const Value: AnsiString): IXMLNode;
    function Insert(const Index: Integer; const Value: AnsiString): IXMLNode;

    function Get_Item(Index: Integer): AnsiString;
    property Items[Index: Integer]: AnsiString read Get_Item; default;
  end;

{ Forward Decls }

  TXMLGeocodeResponseType = class;
  TXMLResultType = class;
  TXMLResultTypeList = class;
  TXMLAddress_componentType = class;
  TXMLAddress_componentTypeList = class;
  TXMLGeometryType = class;
  TXMLLocationType = class;
  TXMLViewportType = class;
  TXMLSouthwestType = class;
  TXMLNortheastType = class;
  TXMLBoundsType = class;
  TXMLString_List = class;

{ TXMLGeocodeResponseType }

  TXMLGeocodeResponseType = class(TXMLNode, IXMLGeocodeResponseType)
  private
    FResult: IXMLResultTypeList;
  protected
    { IXMLGeocodeResponseType }
    function Get_Status: AnsiString;
    function Get_Result: IXMLResultTypeList;
    procedure Set_Status(Value: AnsiString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultType }

  TXMLResultType = class(TXMLNode, IXMLResultType)
  private
    FAddress_component: IXMLAddress_componentTypeList;
  protected
    { IXMLResultType }
    function Get_Type_: AnsiString;
    function Get_Formatted_address: AnsiString;
    function Get_Address_component: IXMLAddress_componentTypeList;
    function Get_Geometry: IXMLGeometryType;
    procedure Set_Type_(Value: AnsiString);
    procedure Set_Formatted_address(Value: AnsiString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLResultTypeList }

  TXMLResultTypeList = class(TXMLNodeCollection, IXMLResultTypeList)
  protected
    { IXMLResultTypeList }
    function Add: IXMLResultType;
    function Insert(const Index: Integer): IXMLResultType;

    function Get_Item(Index: Integer): IXMLResultType;
  end;

{ TXMLAddress_componentType }

  TXMLAddress_componentType = class(TXMLNode, IXMLAddress_componentType)
  private
    FType_: IXMLString_List;
  protected
    { IXMLAddress_componentType }
    function Get_Long_name: Integer;
    function Get_Short_name: Integer;
    function Get_Type_: IXMLString_List;
    procedure Set_Long_name(Value: Integer);
    procedure Set_Short_name(Value: Integer);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLAddress_componentTypeList }

  TXMLAddress_componentTypeList = class(TXMLNodeCollection, IXMLAddress_componentTypeList)
  protected
    { IXMLAddress_componentTypeList }
    function Add: IXMLAddress_componentType;
    function Insert(const Index: Integer): IXMLAddress_componentType;

    function Get_Item(Index: Integer): IXMLAddress_componentType;
  end;

{ TXMLGeometryType }

  TXMLGeometryType = class(TXMLNode, IXMLGeometryType)
  protected
    { IXMLGeometryType }
    function Get_Location: IXMLLocationType;
    function Get_Location_type: AnsiString;
    function Get_Viewport: IXMLViewportType;
    function Get_Bounds: IXMLBoundsType;
    procedure Set_Location_type(Value: AnsiString);
  public
    procedure AfterConstruction; override;
  end;

{ TXMLLocationType }

  TXMLLocationType = class(TXMLNode, IXMLLocationType)
  protected
    { IXMLLocationType }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
  end;

{ TXMLViewportType }

  TXMLViewportType = class(TXMLNode, IXMLViewportType)
  protected
    { IXMLViewportType }
    function Get_Southwest: IXMLSouthwestType;
    function Get_Northeast: IXMLNortheastType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLSouthwestType }

  TXMLSouthwestType = class(TXMLNode, IXMLSouthwestType)
  protected
    { IXMLSouthwestType }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
  end;

{ TXMLNortheastType }

  TXMLNortheastType = class(TXMLNode, IXMLNortheastType)
  protected
    { IXMLNortheastType }
    function Get_Lat: AnsiString;
    function Get_Lng: AnsiString;
    procedure Set_Lat(Value: AnsiString);
    procedure Set_Lng(Value: AnsiString);
  end;

{ TXMLBoundsType }

  TXMLBoundsType = class(TXMLNode, IXMLBoundsType)
  protected
    { IXMLBoundsType }
    function Get_Southwest: IXMLSouthwestType;
    function Get_Northeast: IXMLNortheastType;
  public
    procedure AfterConstruction; override;
  end;

{ TXMLString_List }

  TXMLString_List = class(TXMLNodeCollection, IXMLString_List)
  protected
    { IXMLString_List }
    function Add(const Value: AnsiString): IXMLNode;
    function Insert(const Index: Integer; const Value: AnsiString): IXMLNode;

    function Get_Item(Index: Integer): AnsiString;
  end;

{ Global Functions }

function GetGeocodeResponse(Doc: IXMLDocument): IXMLGeocodeResponseType;
function LoadGeocodeResponse(const FileName: string): IXMLGeocodeResponseType;
function NewGeocodeResponse: IXMLGeocodeResponseType;

const
  TargetNamespace = '';

implementation

{ Global Functions }

function GetGeocodeResponse(Doc: IXMLDocument): IXMLGeocodeResponseType;
begin
  Result := Doc.GetDocBinding('GeocodeResponse', TXMLGeocodeResponseType, TargetNamespace) as IXMLGeocodeResponseType;
end;

function LoadGeocodeResponse(const FileName: string): IXMLGeocodeResponseType;
begin
  Result := LoadXMLDocument(FileName).GetDocBinding('GeocodeResponse', TXMLGeocodeResponseType, TargetNamespace) as IXMLGeocodeResponseType;
end;

function NewGeocodeResponse: IXMLGeocodeResponseType;
begin
  Result := NewXMLDocument.GetDocBinding('GeocodeResponse', TXMLGeocodeResponseType, TargetNamespace) as IXMLGeocodeResponseType;
end;

{ TXMLGeocodeResponseType }

procedure TXMLGeocodeResponseType.AfterConstruction;
begin
  RegisterChildNode('result', TXMLResultType);
  FResult := CreateCollection(TXMLResultTypeList, IXMLResultType, 'result') as IXMLResultTypeList;
  inherited;
end;

function TXMLGeocodeResponseType.Get_Status: AnsiString;
begin
  Result := ChildNodes['status'].Text;
end;

procedure TXMLGeocodeResponseType.Set_Status(Value: AnsiString);
begin
  ChildNodes['status'].NodeValue := Value;
end;

function TXMLGeocodeResponseType.Get_Result: IXMLResultTypeList;
begin
  Result := FResult;
end;

{ TXMLResultType }

procedure TXMLResultType.AfterConstruction;
begin
  RegisterChildNode('address_component', TXMLAddress_componentType);
  RegisterChildNode('geometry', TXMLGeometryType);
  FAddress_component := CreateCollection(TXMLAddress_componentTypeList, IXMLAddress_componentType, 'address_component') as IXMLAddress_componentTypeList;
  inherited;
end;

function TXMLResultType.Get_Type_: AnsiString;
begin
  Result := ChildNodes['type'].Text;
end;

procedure TXMLResultType.Set_Type_(Value: AnsiString);
begin
  ChildNodes['type'].NodeValue := Value;
end;

function TXMLResultType.Get_Formatted_address: AnsiString;
begin
  Result := ChildNodes['formatted_address'].Text;
end;

procedure TXMLResultType.Set_Formatted_address(Value: AnsiString);
begin
  ChildNodes['formatted_address'].NodeValue := Value;
end;

function TXMLResultType.Get_Address_component: IXMLAddress_componentTypeList;
begin
  Result := FAddress_component;
end;

function TXMLResultType.Get_Geometry: IXMLGeometryType;
begin
  Result := ChildNodes['geometry'] as IXMLGeometryType;
end;

{ TXMLResultTypeList }

function TXMLResultTypeList.Add: IXMLResultType;
begin
  Result := AddItem(-1) as IXMLResultType;
end;

function TXMLResultTypeList.Insert(const Index: Integer): IXMLResultType;
begin
  Result := AddItem(Index) as IXMLResultType;
end;

function TXMLResultTypeList.Get_Item(Index: Integer): IXMLResultType;
begin
  Result := List[Index] as IXMLResultType;
end;

{ TXMLAddress_componentType }

procedure TXMLAddress_componentType.AfterConstruction;
begin
  FType_ := CreateCollection(TXMLString_List, IXMLNode, 'type') as IXMLString_List;
  inherited;
end;

function TXMLAddress_componentType.Get_Long_name: Integer;
begin
  Result := ChildNodes['long_name'].NodeValue;
end;

procedure TXMLAddress_componentType.Set_Long_name(Value: Integer);
begin
  ChildNodes['long_name'].NodeValue := Value;
end;

function TXMLAddress_componentType.Get_Short_name: Integer;
begin
  Result := ChildNodes['short_name'].NodeValue;
end;

procedure TXMLAddress_componentType.Set_Short_name(Value: Integer);
begin
  ChildNodes['short_name'].NodeValue := Value;
end;

function TXMLAddress_componentType.Get_Type_: IXMLString_List;
begin
  Result := FType_;
end;

{ TXMLAddress_componentTypeList }

function TXMLAddress_componentTypeList.Add: IXMLAddress_componentType;
begin
  Result := AddItem(-1) as IXMLAddress_componentType;
end;

function TXMLAddress_componentTypeList.Insert(const Index: Integer): IXMLAddress_componentType;
begin
  Result := AddItem(Index) as IXMLAddress_componentType;
end;

function TXMLAddress_componentTypeList.Get_Item(Index: Integer): IXMLAddress_componentType;
begin
  Result := List[Index] as IXMLAddress_componentType;
end;

{ TXMLGeometryType }

procedure TXMLGeometryType.AfterConstruction;
begin
  RegisterChildNode('location', TXMLLocationType);
  RegisterChildNode('viewport', TXMLViewportType);
  RegisterChildNode('bounds', TXMLBoundsType);
  inherited;
end;

function TXMLGeometryType.Get_Location: IXMLLocationType;
begin
  Result := ChildNodes['location'] as IXMLLocationType;
end;

function TXMLGeometryType.Get_Location_type: AnsiString;
begin
  Result := ChildNodes['location_type'].Text;
end;

procedure TXMLGeometryType.Set_Location_type(Value: AnsiString);
begin
  ChildNodes['location_type'].NodeValue := Value;
end;

function TXMLGeometryType.Get_Viewport: IXMLViewportType;
begin
  Result := ChildNodes['viewport'] as IXMLViewportType;
end;

function TXMLGeometryType.Get_Bounds: IXMLBoundsType;
begin
  Result := ChildNodes['bounds'] as IXMLBoundsType;
end;

{ TXMLLocationType }

function TXMLLocationType.Get_Lat: AnsiString;
begin
  Result := ChildNodes['lat'].Text;
end;

procedure TXMLLocationType.Set_Lat(Value: AnsiString);
begin
  ChildNodes['lat'].NodeValue := Value;
end;

function TXMLLocationType.Get_Lng: AnsiString;
begin
  Result := ChildNodes['lng'].Text;
end;

procedure TXMLLocationType.Set_Lng(Value: AnsiString);
begin
  ChildNodes['lng'].NodeValue := Value;
end;

{ TXMLViewportType }

procedure TXMLViewportType.AfterConstruction;
begin
  RegisterChildNode('southwest', TXMLSouthwestType);
  RegisterChildNode('northeast', TXMLNortheastType);
  inherited;
end;

function TXMLViewportType.Get_Southwest: IXMLSouthwestType;
begin
  Result := ChildNodes['southwest'] as IXMLSouthwestType;
end;

function TXMLViewportType.Get_Northeast: IXMLNortheastType;
begin
  Result := ChildNodes['northeast'] as IXMLNortheastType;
end;

{ TXMLSouthwestType }

function TXMLSouthwestType.Get_Lat: AnsiString;
begin
  Result := ChildNodes['lat'].Text;
end;

procedure TXMLSouthwestType.Set_Lat(Value: AnsiString);
begin
  ChildNodes['lat'].NodeValue := Value;
end;

function TXMLSouthwestType.Get_Lng: AnsiString;
begin
  Result := ChildNodes['lng'].Text;
end;

procedure TXMLSouthwestType.Set_Lng(Value: AnsiString);
begin
  ChildNodes['lng'].NodeValue := Value;
end;

{ TXMLNortheastType }

function TXMLNortheastType.Get_Lat: AnsiString;
begin
  Result := ChildNodes['lat'].Text;
end;

procedure TXMLNortheastType.Set_Lat(Value: AnsiString);
begin
  ChildNodes['lat'].NodeValue := Value;
end;

function TXMLNortheastType.Get_Lng: AnsiString;
begin
  Result := ChildNodes['lng'].Text;
end;

procedure TXMLNortheastType.Set_Lng(Value: AnsiString);
begin
  ChildNodes['lng'].NodeValue := Value;
end;

{ TXMLBoundsType }

procedure TXMLBoundsType.AfterConstruction;
begin
  RegisterChildNode('southwest', TXMLSouthwestType);
  RegisterChildNode('northeast', TXMLNortheastType);
  inherited;
end;

function TXMLBoundsType.Get_Southwest: IXMLSouthwestType;
begin
  Result := ChildNodes['southwest'] as IXMLSouthwestType;
end;

function TXMLBoundsType.Get_Northeast: IXMLNortheastType;
begin
  Result := ChildNodes['northeast'] as IXMLNortheastType;
end;

{ TXMLString_List }

function TXMLString_List.Add(const Value: AnsiString): IXMLNode;
begin
  Result := AddItem(-1);
  Result.NodeValue := Value;
end;

function TXMLString_List.Insert(const Index: Integer; const Value: AnsiString): IXMLNode;
begin
  Result := AddItem(Index);
  Result.NodeValue := Value;
end;

function TXMLString_List.Get_Item(Index: Integer): AnsiString;
begin
  Result := List[Index].NodeValue;
end;

end.