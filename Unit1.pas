unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.OleAuto;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses CosmosWorksLib_TLB, SldWorks_TLB, SwConst_TLB, CommonUnit;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  SWApp: ISldWorks;
  CWApp: ICosmosWorks;
  CWAppDisp: IDispatch;
  CW2: ICwAddincallback;
  MD: IModelDoc2;
  CD: ICWModelDoc;
  StudyMgr: ICWStudyManager;
  Study: ICWStudy;
  SolidMgr: ICWSolidManager;
  SolidBody: ICWSolidBody;
  Material: ICWMaterial;
  LoadsMgr: ICWLoadsAndRestraintsManager;
  Force: ICWForce;

  FaceArrayVar: OleVariant;
  ForceArrayVar: Variant;
  FaceArray: array of IDispatch;
  ForceArray: array [0 .. 0] of Double;

  SelMgr: ISelectionMgr;
  LoadsFace: { IFace } IDispatch;
  ForceFace: IFace;
  Err: Integer;
  xyPlane: IRefPlane;

  RefByte: Byte;
  RefVar: OleVariant;
const
  a: Extended = 10 / 1000;
  b: Extended = 20 / 1000;
  h: Extended = 30 / 1000;
begin
  SWApp := CoSldWorks_.Create;
  SWApp.Visible := True;

  // SWApp := CreateOleObject('SldWorks.Application') as ISldWorks;
  // CWApp := CreateOleObject('SldWorks.Simulation') as ICosmosWorks;

  MD := SWApp.INewPart as IModelDoc2;
  SelMgr := MD.ISelectionManager;

  FindXYPlane(MD, xyPlane);

  if xyPlane = nil then
    raise EOleError.Create('Не получен указатель на исходную плоскость');

  (xyPlane as IEntity).Select(False);
  MD.InsertSketch;

  MD.ICreateLine2(0, 0, 0, a, 0, 0);
  MD.ICreateLine2(a, 0, 0, a, b, 0);
  MD.ICreateLine2(a, b, 0, 0, b, 0);
  MD.ICreateLine2(0, b, 0, 0, 0, 0);

  MD.FeatureManager.FeatureExtrusion2(true, False, False, 0, 0, h, 0, False,
    False, False, False, 0.0, 0.0, False, False, False, False, true, False,
    true, 0, 0, true);

  CW2 := SWApp.GetAddInObject('SldWorks.Simulation') as ICwAddincallback;

  CWApp := CW2.CosmosWorks;

  CD := CWApp.ActiveDoc;

  StudyMgr := CD.StudyManager;

  // Study := StudyMgr.CreateNewStudy3('Расчёт от ' + DateToStr(Now),
  // swsAnalysisStudyTypeStatic, 0, Err);
  // swsAnalysisStudyTypeNonlinear
  // Study := StudyMgr.GetStudy(2);

  Study := StudyMgr.CreateNewStudy3(WideString('Static'),
    swsAnalysisStudyTypeStatic, swsMeshTypeSolid, Err);

//  ShowMessage(IntToStr(Err));
//  ShowMessage(IntToStr(Err));
  SolidMgr := Study.SolidManager;

  SolidBody := SolidMgr.GetComponentAt(0, Err).GetSolidBodyAt(0, Err);

  Material := SolidBody.GetDefaultMaterial;

  Material.MaterialName := 'Alloy Steel';

  Material.SetPropertyByName('EX', 210000000000, 0); // Модуль упругости
  Material.SetPropertyByName('NUXY', 0.28, 0); // Коэффициент Пуассона
  Material.SetPropertyByName('GXY', 79000000000, 0); // Модуль сдвига
  Material.SetPropertyByName('DENS', 7700, 0); // Плотность
  Material.SetPropertyByName('SIGXT', 723825600, 0);
  // Предел прочности при растяжении
  Material.SetPropertyByName('SIGYLD', 620422000, 0); // Предел текучести
  Material.SetPropertyByName('ALPX', 0.000013, 0);
  // Коэффициент теплового расширения
  Material.SetPropertyByName('KX', 50, 0); // Теплопроводность
  Material.SetPropertyByName('C', 460, 0); // Удельная теплоёмкость

  SolidBody.SetSolidBodyMaterial(Material);

  MD.Extension.SelectByID2('', 'FACE', a / 2, b / 2, 0, False, 0, Nil, 0);

  LoadsFace := SelMgr.GetSelectedObject6(1, -1) { as IFace };

  RefVar := MD.Extension.GetPersistReference3(LoadsFace);

  LoadsFace := MD.Extension.GetObjectByPersistReference3(RefVar, Err);

 // ShowMessage(IntToStr(Err));

  MD.Extension.SelectByID2('', 'FACE', a / 2, b / 2, h, False, 0, Nil, 0);

  ForceFace := SelMgr.GetSelectedObject6(1, -1) as IFace;

  LoadsMgr := Study.LoadsAndRestraintsManager;

  SetLength(FaceArray, 1);
  FaceArray[0] := LoadsFace;
  FaceArrayVar := OLEVariant(FaceArray);

  // Force := LoadsMgr.AddForce2(swsForceTypeNormal,0,EmptyParam,EmptyParam,Err);
  Force := LoadsMgr.AddForce(swsForceTypeNormal, FaceArrayVar, nil, Err);


  // MD.Extension.IGetObjectByPersistReference()

  // ShowMessage(IntToStr(Err));

  { ForceArray[0] := 100;
    ForceArrayVar := ForceArray;
    FaceArray[0] := LoadsFace;
    FaceArrayVar := FaceArray;
    StaticOptions.SolverType = 1
    StaticOptions.UseSoftSpring = 1
    StaticOptions.LargeDisplacement = 0
  }

  { Dim selection1 As String

    'Constants
    selection1 = "64,31,0,0,3,0,0,0,255,254,255,0,0,0,0,0,255,255,1,0,11,0,109,111,70,97,99,101,82,101,102,95,99,1,0,0,0,0,0,0,0,6,0,0,0,0,3,0,0,0,0,0,0,125,195,148,37,173,73,178,84,125,195,148,37,173,73,178,84,0,0,255,255,1,0,20,0,109,111,69,110,100,70,97,99,101,83,117,114,102,73,100,82,101,112,95,99,0,0,255,255,1,0,6,0,109,111,70,82,95,99,255,255,1,0,13,0,109,111,69,120,116,79,98,106,101,99,116,95,99,255,255,1,0,17,0,109,111,67,83,116,114,105,110,103,72,97,110,100,108,101,95,99,255,254,255,0,9,128,255,254,255,8,20,4,53,4,66,4,48,4,59,4,76,4,52,0,50,0,2,0,0,146,189,246,84,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,255,254,255,12,31,4,62,4,32,0,67,4,60,4,62,4,59,4,71,4,48,4,61,4,56,4,78,4,0,0,0,0,0,0,0,0,0,0,0,0,23,0,0,0,148,189,246,84,1,0,0,0,0,0,0,0,255,255,1,0,23,0,109,111,70,114,111,109,83,107,116,69,110,116,83,117,114,102,73,100,82,101,112,95,99,0,0,5,128,8,0,23,0,0,0,148,189,246,84,4,0,0,0,12,128,0,0,5,128,8,0,23,0,0,0,148,189,246,84,1,0,0,0,12,128,0,0,5,128,8,0,23,0,0,0,148,189,246,84,2,0,0"
    selection1 = selection1 & ",0,12,128,0,0,5,128,8,0,23,0,0,0,148,189,246,84,3,0,0,0,0,0,0,0,0,0,0,0,0,0"
    selection1 = selection1 & ",Type=1"

    'Store constants in a collection.
    PIDCollection.Add Selection1, "selection1"
  }

  Study.CreateMesh(0, 1, 0.01);
  Study.StaticStudyOptions.SolverType := swsSolverTypeAutomatic;
  Study.StaticStudyOptions.LargeDisplacement := 0;
  Study.StaticStudyOptions.UseSoftSpring := 1;
  Study.RunAnalysis;
end;

end.
