unit CommonUnit;

interface

uses Windows, Messages, SysUtils, Variants, Classes,
  StdCtrls, SwConst_TLB, SldWorks_TLB, ComObj, ComCtrls;

function FindXYPlane(ModelDoc: IModelDoc2; out xyPlane: IRefPlane): HResult;

implementation

function FindXYPlane(ModelDoc: IModelDoc2; out xyPlane: IRefPlane): HResult;
var
  f: IFeature;
  rp: IRefPlane;
  xzPlane: IRefPlane; // Главная плоскость XZ
  yzPlane: IRefPlane; // Главная плоскость YZ
  i: Byte;
  v: Variant;
  hr: HResult;
begin
  hr := S_OK;

  xyPlane := nil;

  f := ModelDoc.IFirstFeature;

  if f = nil then
    hr := S_FALSE;

  i := 0;

  while (f <> nil) and (i <= 3) do
  begin
    if f.GetTypeName = 'RefPlane' then
    begin
      rp := f.GetSpecificFeature as IRefPlane;
      v := rp.GetRefPlaneParams;
      if (v[0] = 0) and (v[1] = 0) and (v[2] = 0) then
      begin
        Inc(i);
        if (v[6] = 0) and (v[7] = 0) and (v[8] <> 0) then
          xyPlane := rp
        else if (v[6] <> 0) and (v[7] = 0) and (v[8] = 0) then
          yzPlane := rp
        else if (v[6] = 0) and (v[7] <> 0) and (v[8] = 0) then
          xzPlane := rp;
      end;
    end;
    f := f.IGetNextFeature;
  end;
  if (xyPlane = nil) or (yzPlane = nil) or (xzPlane = nil) then
    hr := S_FALSE;

  Result := hr;
end;

end.
