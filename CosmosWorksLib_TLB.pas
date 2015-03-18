unit CosmosWorksLib_TLB;

// ************************************************************************ //
// WARNING                                                                    
// -------                                                                    
// The types declared in this file were generated from data read from a       
// Type Library. If this type library is explicitly or indirectly (via        
// another type library referring to this type library) re-imported, or the   
// 'Refresh' command of the Type Library Editor activated while editing the   
// Type Library, the contents of this file will be regenerated and all        
// manual modifications will be lost.                                         
// ************************************************************************ //

// $Rev: 52393 $
// File generated on 04.03.2015 11:44:20 from Type Library described below.

// ************************************************************************  //
// Type Lib: F:\Programs\Solidworks\SOLIDWORKS\Simulation\cosworks.tlb (1)
// LIBID: {DDC985BA-FC8C-489A-A317-895CEFBD19B8}
// LCID: 0
// Helpfile: 
// HelpString: SolidWorks Simulation 2015 type library
// DepndLst: 
//   (1) v2.0 stdole, (C:\Windows\SysWOW64\stdole2.tlb)
// SYS_KIND: SYS_WIN32
// Errors:
//   Hint: Member 'Unit' of 'ICWMesh' changed to 'Unit_'
//   Hint: Symbol 'Type' renamed to 'type_'
//   Hint: Member 'Unit' of 'ICWRestraint' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWPressure' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWForce' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWGravity' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWCentriFugalForce' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWTemperature' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWConvection' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWHeatFlux' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWHeatPower' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWRadiation' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWElasticConnector' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWPinConnector' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWSpringConnector' changed to 'Unit_'
//   Hint: Member 'Unit' of 'ICWBaseExcitation' changed to 'Unit_'
//   Hint: Parameter 'Var' of ICWRemoteLoad.GetMassValues changed to 'Var_'
//   Hint: Parameter 'Var' of ICWRemoteLoad.SetMassValues changed to 'Var_'
// ************************************************************************ //
{$TYPEDADDRESS OFF} // Unit must be compiled without type-checked pointers. 
{$WARN SYMBOL_PLATFORM OFF}
{$WRITEABLECONST ON}
{$VARPROPSETTER ON}
{$ALIGN 4}

interface

uses Winapi.Windows, System.Classes, System.Variants, System.Win.StdVCL, Vcl.Graphics, Vcl.OleServer, Winapi.ActiveX;
  

// *********************************************************************//
// GUIDS declared in the TypeLibrary. Following prefixes are used:        
//   Type Libraries     : LIBID_xxxx                                      
//   CoClasses          : CLASS_xxxx                                      
//   DISPInterfaces     : DIID_xxxx                                       
//   Non-DISP interfaces: IID_xxxx                                        
// *********************************************************************//
const
  // TypeLibrary Major and minor versions
  CosmosWorksLibMajorVersion = 8;
  CosmosWorksLibMinorVersion = 0;

  LIBID_CosmosWorksLib: TGUID = '{DDC985BA-FC8C-489A-A317-895CEFBD19B8}';

  IID_ICosmosWorks: TGUID = '{FD13E7BB-FD7F-4C1D-8ADB-71F9EDD8DAA4}';
  IID_ICWModelDoc: TGUID = '{B07A5588-BDE6-420D-9A02-BBB8BC822D1B}';
  IID_ICWStudyManager: TGUID = '{C9C3BEAB-0B21-41C1-8B44-2DE3CF28A03E}';
  IID_ICWStudy: TGUID = '{999CA1B7-177C-4823-9F0E-A1816C1A003C}';
  IID_ICWMesh: TGUID = '{F5818CF4-0C05-49AC-997F-8A0DB432203B}';
  IID_ICWMeshControl: TGUID = '{270F9491-0450-4BB5-BEF5-6E520C01D9AF}';
  IID_ICWSolidManager: TGUID = '{B9D3E9AB-01A4-4B1C-A609-79E6A11D79C5}';
  IID_ICWSolidComponent: TGUID = '{16F9E890-CC94-4F7A-B654-30D4CF5E7521}';
  IID_ICWSolidBody: TGUID = '{699EF572-B1EB-454A-90B7-AF0A52F59E1B}';
  IID_ICWMaterial: TGUID = '{BF582064-D953-42DD-AFAD-BBE8364B93B4}';
  IID_ICWShellManager: TGUID = '{0680FB2B-F938-43C4-92D0-722586C802FD}';
  IID_ICWShell: TGUID = '{34E51079-B9CD-4FD3-B862-E4EC94DDBE13}';
  IID_ICWContactManager: TGUID = '{242B7E91-5A69-4CE1-B429-7008A54F1555}';
  IID_ICWContactSet: TGUID = '{0ED1F73C-9EAC-4D6A-9CCA-B637D9C9A0CB}';
  IID_ICWContactComponent: TGUID = '{E739B4C6-B6A5-4C1D-830A-C7A29C746A46}';
  IID_ICWLoadsAndRestraintsManager: TGUID = '{9DEA3C90-44BB-45E0-A569-F4B196F47176}';
  IID_ICWLoadsAndRestraints: TGUID = '{7BDD45B4-9046-4C42-8936-A988906D2597}';
  IID_ICWRestraint: TGUID = '{A1B7607C-2C6B-447B-8183-633531BFDDAF}';
  IID_ICWPressure: TGUID = '{3D12186F-4CAE-4511-9456-B42FB68F06F9}';
  IID_ICWForce: TGUID = '{9419308B-BB2A-4842-B652-7AF115171012}';
  IID_ICWGravity: TGUID = '{F932F397-D186-4381-88EF-EAA92E2ADCAE}';
  IID_ICWCentriFugalForce: TGUID = '{9F335011-F5A5-4992-AA03-3BEC3BDF0436}';
  IID_ICWTemperature: TGUID = '{94DD4C40-F7FA-47E3-BA06-BFEFD28F8E62}';
  IID_ICWConvection: TGUID = '{45DADB3D-E02B-4A7B-9BF0-D5536A3680A7}';
  IID_ICWHeatFlux: TGUID = '{D77721DD-8FE5-45EB-92B6-FC8106968473}';
  IID_ICWHeatPower: TGUID = '{9D89A6CF-C25E-4F41-8CB1-1F5722FD6DC3}';
  IID_ICWRadiation: TGUID = '{EB7E570D-AAF9-4925-AC3A-91C54A699DCD}';
  IID_ICWRigidConnector: TGUID = '{05882CCB-5A00-4CD5-B77F-8D374DEFEEAD}';
  IID_ICWLinkConnector: TGUID = '{63F1A46F-2BDE-4367-83A1-FA3A22FCA775}';
  IID_ICWElasticConnector: TGUID = '{5A355F90-47EB-4A23-824C-F2379DD92252}';
  IID_ICWPinConnector: TGUID = '{1CDE52B5-1CA2-486A-AABB-093CED1BDF61}';
  IID_ICWSpringConnector: TGUID = '{96DD49CD-CC09-4FAE-A559-7A795983D6EB}';
  IID_ICWBoltConnector: TGUID = '{9BA4876E-EFB8-45C6-B0FB-BF93FF54C065}';
  IID_ICWSpotWeldConnector: TGUID = '{756B2585-6350-460A-9C2A-7F25DA9D094A}';
  IID_ICWBearingLoad: TGUID = '{E240A061-9543-4D8A-8749-2C9C850F7035}';
  IID_ICWBaseExcitation: TGUID = '{1517A9E9-7BE0-4BE8-9571-7ADAFE1EB5FB}';
  IID_ICWDistributedMass: TGUID = '{41D30066-FCCC-4499-AE79-76D4BEDDAA82}';
  IID_ICWDynamicInitialCondition: TGUID = '{9C21B30F-8C77-4E44-A8F3-761DC509ED32}';
  IID_ICWRemoteLoad: TGUID = '{9E273951-C865-45F6-89F9-7DAAB971010E}';
  IID_ICWEdgeWeldConnector: TGUID = '{FB37E913-D238-4016-BCAC-9DEDF4A8E72A}';
  IID_ICWThermalStudyOptions: TGUID = '{43AA3958-9093-4066-BA75-21EA9E206C98}';
  IID_ICWResults: TGUID = '{C5AC1F26-0CD1-4A33-81D3-571ADE6A7ECD}';
  IID_ICWPlot: TGUID = '{A69BE93A-C2C6-41FF-A6E6-13B0C95C568F}';
  IID_ICWFrequencyStudyOptions: TGUID = '{268D40CF-565F-4259-B009-BAC3F5DA8F60}';
  IID_ICWBucklingStudyOptions: TGUID = '{8B6B0702-61D6-4C9B-9A1F-1FAAC4DCF0E4}';
  IID_ICWStaticStudyOptions: TGUID = '{62C99DD5-374D-4444-B8F3-4163C5F6FB6F}';
  IID_ICWNonLinearStudyOptions: TGUID = '{F7A7474A-BAA4-45BC-A752-3D06B294EAA4}';
  IID_ICWBeamManager: TGUID = '{D770D195-0FB7-4771-A269-30BD773D393A}';
  IID_ICWBeamBody: TGUID = '{BE3D86C7-8AD9-463F-A134-8B70E114BF1B}';
  IID_ICWJoints: TGUID = '{6FFA493C-E5DC-4BA4-A0F6-F838A41A1563}';
  IID_ICWDynamicStudyOptions: TGUID = '{62DA10EC-2A76-47F5-B132-AB32C9413288}';
  IID_ICWDampingOptions: TGUID = '{E3AA2395-263B-4BEA-BFF6-E52A0B20687E}';
  IID_ICWStudyResultOptions: TGUID = '{BA285FD1-5A65-4959-9297-5B588044D364}';
  IID_ICWDropTestStudyOptions: TGUID = '{85D19761-12B3-4C55-BBCC-990A1353B32D}';
  IID_ICWDropTestResultOptions: TGUID = '{4776DA98-3183-4EAF-B97F-355EA56AED67}';
  IID_ICWDropTestSetup: TGUID = '{A1FC7116-64EA-4872-8B2F-526B76AC9C17}';
  IID_ICWFatigueStudyOptions: TGUID = '{75C56F89-CCA5-4230-A725-39C88FE714FF}';
  IID_ICWFatigueEvent: TGUID = '{F8D3CE3B-5281-483A-9AE0-40F1D94D08A3}';
  IID_ICwAddincallback: TGUID = '{49EEE451-912D-444C-BB23-A6976F71AA25}';
  CLASS_CwAddincallback: TGUID = '{4405E07F-4621-4481-B925-449A88051523}';
  CLASS_CosmosWorks: TGUID = '{8E35F50D-F754-48C5-992C-1F4144A9E591}';
  CLASS_CWModelDoc: TGUID = '{EAFBFF38-E6B9-43D7-BE10-FE2BF2C8C0C8}';
  CLASS_CWStudyManager: TGUID = '{9D21C234-564F-4C51-8513-A6F93697E7DE}';
  CLASS_CWStudy: TGUID = '{54B982A6-721E-4305-ADF3-934EAA6D7113}';
  CLASS_CWSolidManager: TGUID = '{92D96050-0852-4B82-BFEA-82D3CC6FEEC4}';
  CLASS_CWSolidComponent: TGUID = '{C75C8C1A-1A4E-4E39-835E-32A4F36D6176}';
  CLASS_CWSolidBody: TGUID = '{61C7F978-1602-4D64-859E-88F728DB7E36}';
  CLASS_CWBeamManager: TGUID = '{53F66937-4219-456B-89B1-6AF4BD7C022C}';
  CLASS_CWBeamBody: TGUID = '{EC3DF67D-5D46-45AB-8505-69670841F5BF}';
  CLASS_CWJoints: TGUID = '{C2C96FB8-EAE7-4BE3-9DFF-D7B3D2A37A0F}';
  CLASS_CWMesh: TGUID = '{0844A890-EB4C-434E-BECB-91374A38C531}';
  CLASS_CWMeshControl: TGUID = '{96212552-8F0F-47F9-BC8F-C712081CAAD2}';
  CLASS_CWMaterial: TGUID = '{675024F4-3BEB-465F-9747-50CDB6E6FD43}';
  CLASS_CWLoadsAndRestraintsManager: TGUID = '{4425FB13-4541-4079-820E-0B4AC73E5231}';
  CLASS_CWLoadsAndRestraints: TGUID = '{12FE135D-F7ED-41C7-9A15-42556526A9A9}';
  CLASS_CWForce: TGUID = '{D83BBFB8-2E93-4581-B061-D356B67DC5C7}';
  CLASS_CWPressure: TGUID = '{9F100027-4912-4FDC-8386-8C9F0F6F11F3}';
  CLASS_CWTemperature: TGUID = '{25E6E227-6678-419F-81F2-1A97FEF0583D}';
  CLASS_CWHeatPower: TGUID = '{F66EE586-499C-424B-A547-F51337C6D6C3}';
  CLASS_CWHeatFlux: TGUID = '{7EBC954D-4620-418D-8740-58D288545A34}';
  CLASS_CWConvection: TGUID = '{864CF3FA-5753-46F2-9F86-F1CC135F27A0}';
  CLASS_CWRadiation: TGUID = '{333D8E64-BA1A-4008-8F28-C27B9C41FCEF}';
  CLASS_CWGravity: TGUID = '{807A0872-ACA1-43A7-86F6-6D07B1989262}';
  CLASS_CWCentriFugalForce: TGUID = '{61B4C22E-99B9-484D-BF0E-5C9FC1BA3B3A}';
  CLASS_CWRestraint: TGUID = '{DC9FEC33-1B9A-40DA-A21A-713C86F44AE7}';
  CLASS_CWRemoteLoad: TGUID = '{DA0FB97E-1DB2-4F38-B9CE-F57A6215B772}';
  CLASS_CWBearingLoad: TGUID = '{07C2C408-612E-428F-8FD6-13230EF8D878}';
  CLASS_CWBaseExcitation: TGUID = '{7053F748-9545-48F6-9FAC-C71AE3197F83}';
  CLASS_CWDistributedMass: TGUID = '{8B84550D-3C05-4068-9DD6-F006C4DF79A6}';
  CLASS_CWDynamicInitialCondition: TGUID = '{E4B0E129-B8FB-489A-92BE-022A83DA4309}';
  CLASS_CWFatigueEvent: TGUID = '{0E897A24-0C3E-4691-8684-BE3141485B7F}';
  CLASS_CWShellManager: TGUID = '{4B6D9839-B25E-4FCE-AE50-47BFF0545125}';
  CLASS_CWShell: TGUID = '{FCB82093-3377-4C4C-9DFE-FEDD6B0B1E51}';
  CLASS_CWContactManager: TGUID = '{DBFEC66A-A413-4EB3-8A15-8F927274FECF}';
  CLASS_CWContactSet: TGUID = '{AE787538-A050-4BBB-A27E-DB327C00848A}';
  CLASS_CWContactComponent: TGUID = '{A6934603-2339-4B84-A510-E7ADE2AE7320}';
  CLASS_CWThermalStudyOptions: TGUID = '{A78EC78E-A6AB-4435-B0DA-9069B090FF37}';
  CLASS_CWFrequencyStudyOptions: TGUID = '{E399CE1B-28ED-48A3-A86E-A797C6556E43}';
  CLASS_CWBucklingStudyOptions: TGUID = '{A7FE706C-70D4-49AD-9994-9E7139DE59A7}';
  CLASS_CWStaticStudyOptions: TGUID = '{AB747841-0F4F-4C92-A357-855616AE7B9C}';
  CLASS_CWNonLinearStudyOptions: TGUID = '{8E88103F-7AE3-45FF-B517-AC6E5CCED6B8}';
  CLASS_CWDynamicStudyOptions: TGUID = '{50AAB7DD-9CD0-47EC-8D03-93C18558B1E3}';
  CLASS_CWDropTestStudyOptions: TGUID = '{BAA1EB89-F058-4FA1-A347-A2F97091C841}';
  CLASS_CWFatigueStudyOptions: TGUID = '{4E71DA70-D087-41AF-8E7E-5AA436A580D0}';
  CLASS_CWDampingOptions: TGUID = '{69B59E35-295A-4BD9-B94F-AC953DAEFE29}';
  CLASS_CWStudyResultOptions: TGUID = '{ED81FC50-5F29-4779-9F46-721AEC2DCA24}';
  CLASS_CWDropTestSetup: TGUID = '{8C165EF0-5402-4402-BF90-DCF1659C5AC2}';
  CLASS_CWDropTestResultOptions: TGUID = '{AF91B9A6-4C96-457B-A4F4-9F83EF48FB8B}';
  CLASS_CWResults: TGUID = '{B16AF523-9A34-460F-AF2E-670D3559522D}';
  CLASS_CWRigidConnector: TGUID = '{0A75503A-136F-430C-95E0-904D33F2A68C}';
  CLASS_CWLinkConnector: TGUID = '{19951FA7-A7F4-41C0-964A-0F79FA2A5D99}';
  CLASS_CWElasticConnector: TGUID = '{55AC868A-F6C1-4DB4-8472-F88F3DB1B05F}';
  CLASS_CWPinConnector: TGUID = '{A5780715-A450-40CF-B435-7A7F756B094A}';
  CLASS_CWSpringConnector: TGUID = '{86C8808E-7661-4FDF-AF75-63EA21F94D3D}';
  CLASS_CWBoltConnector: TGUID = '{F9A4678F-9919-4435-B903-16A426E87B64}';
  CLASS_CWSpotWeldConnector: TGUID = '{5068060C-F268-4C97-A6A7-D6F89C51159E}';
  CLASS_CWEdgeWeldConnector: TGUID = '{EAA81801-59E3-4C40-8DE1-3559649A25A5}';
  CLASS_CWPlot: TGUID = '{4D39D1A3-E714-4AEC-9D08-E3FBBA6AD0E6}';

// *********************************************************************//
// Declaration of Enumerations defined in Type Library                    
// *********************************************************************//
// Constants for enum swsEdgeWeldCreationErrorCode_e
type
  swsEdgeWeldCreationErrorCode_e = TOleEnum;
const
  swsEdgeWeldCreationError_NoError = $00000000;
  swsEdgeWeldCreationError_InvalidModelDoc = $00000001;
  swsEdgeWeldCreationError_InvalidOrNullFace = $00000002;
  swsEdgeWeldCreationError_InvalidWeldStyle = $00000003;
  swsEdgeWeldCreationError_NoEdgeSelection = $00000004;
  swsEdgeWeldCreationError_WrongEdgeSelection = $00000005;

// Constants for enum swsResultEnvelopeBoundary
type
  swsResultEnvelopeBoundary = TOleEnum;
const
  swsResultEnvelopeBoundary_Max = $00000000;
  swsResultEnvelopeBoundary_Min = $00000001;
  swsResultEnvelopeBoundary_AbsMax = $00000002;

// Constants for enum swsRefDispType_e
type
  swsRefDispType_e = TOleEnum;
const
  swsNone = $00000000;
  swsDatumPlane = $00000001;
  swsCoordSys = $00000002;
  swsDatumAxis = $00000003;

// Constants for enum swsDeformType_e
type
  swsDeformType_e = TOleEnum;
const
  swsAutomatic = $00000000;
  swsTrueScale = $00000001;
  swsUserDefined = $00000002;

// Constants for enum swsResultPlotErrorCode_e
type
  swsResultPlotErrorCode_e = TOleEnum;
const
  swsResultPlot_NoError = $00000000;
  swsResultPlot_InvalidStudy = $00000001;
  swsResultPlot_FailedPlotCreation = $00000002;
  swsResultPlot_InvalidSelectedEntities = $00000003;
  swsResultPlot_InvalidInputArgInCombiWithTensorVectorFlag = $00000004;
  swsResultPlot_InvalidResultType = $00000005;
  swsResultPlot_InvalidComponentType = $00000006;
  swsResultPlot_InvalidUnitType = $00000007;
  swsResultPlot_IsAvailableOnlyForElements = $00000008;
  swsResultPlot_InvalidMeshAppliedToStudy = $00000009;
  swsResultPlot_TryingToSetInvalidProperty = $0000000A;
  swsResultPlot_IsAvailableOnlyForNodes = $0000000B;
  swsResultPlot_InvalidStudyType = $0000000C;

// Constants for enum swsResultPlotDelete_ErrorCode_e
type
  swsResultPlotDelete_ErrorCode_e = TOleEnum;
const
  swsResultPlotDelete_NoError = $00000000;
  swsResultPlotDelete_InvalidResultType = $00000001;
  swsResultPlotDelete_InvalidResultComponent = $00000002;
  swsResultPlotDelete_FailToDelete = $00000003;

// Constants for enum swsResultPlotColorOption_ErrorCode_e
type
  swsResultPlotColorOption_ErrorCode_e = TOleEnum;
const
  swsResultPlotColorOption_NoError = $00000000;
  swsResultPlotColorOption_WrongBoundaryOption = $00000001;
  swsResultPlotColorOption_FailToGetColors = $00000002;
  swsResultPlotColorOption_WrongRGBValues = $00000003;

// Constants for enum swsBearingLoadEndEditError_e
type
  swsBearingLoadEndEditError_e = TOleEnum;
const
  swsBearingLoadEndEditErrorSuccessful = $00000000;
  swsBearingLoadEndEditErrorCoordinateSystemCylindricalFaces = $00000001;
  swsBearingLoadEndEditErrorIncorrectOrNullEntity = $00000002;
  swsBearingLoadEndEditErrorEntityExists = $00000003;
  swsBearingLoadEndEditErrorSelectFace = $00000004;
  swsBearingLoadEndEditErrorNoEntityAtIndex = $00000005;
  swsBearingLoadEndEditErrorSpecifyValue = $00000006;
  swsBearingLoadEndEditErrorSelectFaceWithCylindricalSurface = $00000007;
  swsBearingLoadEndEditErrorHasMassElement = $00000008;
  swsBearingLoadEndEditErrorHasBeamBody = $00000009;
  swsBearingLoadEndEditErrorIndexExceedsNumberOfEntities = $0000000A;
  swsBearingLoadEndEditErrorNoEntity = $0000000B;
  swsBearingLoadEndEditErrorSelectOneForceDirection = $0000000C;
  swsBearingLoadEndEditErrorSelectForceDirection = $0000000D;
  swsBearingLoadEndEditErrorSetXDirection = $0000000E;
  swsBearingLoadEndEditErrorSetYDirection = $0000000F;
  swsBearingLoadEndEditErrorNullEntity = $00000010;
  swsBearingLoadEndEditErrorBodyExcludedFromAnalysis = $00000011;

// Constants for enum swsTimeCurveError_e
type
  swsTimeCurveError_e = TOleEnum;
const
  swsTimeCurveErrorSuccessful = $00000000;
  swsTimeCurveErrorInvalidStudyType = $00000001;
  swsTimeCurveErrorCannotUseWithRestraint = $00000002;
  swsTimeCurveErrorNeedTwoOrMoreDataPoints = $00000003;
  swsTimeCurveErrorInvalidDataPoints = $00000004;

// Constants for enum swsUnit_e
type
  swsUnit_e = TOleEnum;
const
  swsUnitSI = $00000000;
  swsUnitEnglish = $00000001;
  swsUnitMetric = $00000002;

// Constants for enum swsBoltConnectorEndEditError_e
type
  swsBoltConnectorEndEditError_e = TOleEnum;
const
  swsBoltConnectorEndEditErrorSuccessful = $00000000;
  swsBoltConnectorEndEditErrorSelectFace = $00000001;
  swsBoltConnectorEndEditErrorSelectConicalSurface = $00000002;
  swsBoltConnectorEndEditErrorIncorrectHeadDiameter = $00000003;
  swsBoltConnectorEndEditErrorSelectEdge = $00000004;
  swsBoltConnectorEndEditErrorSelectCircularEdge = $00000005;
  swsBoltConnectorEndEditErrorSelectCylindricalThreadFace = $00000006;
  swsBoltConnectorEndEditErrorIncorrectShankDiameter = $00000007;
  swsBoltConnectorEndEditErrorSelectMass = $00000008;
  swsBoltConnectorEndEditErrorSelectConcentricEntities = $00000009;
  swsBoltConnectorEndEditErrorSpecifyYoungModulus = $0000000A;
  swsBoltConnectorEndEditErrorSpecifyTemperatureCoefficient = $0000000B;
  swsBoltConnectorEndEditErrorSpecifyPoissonsRatio = $0000000C;
  swsBoltConnectorEndEditErrorDefineMaterial = $0000000D;
  swsBoltConnectorEndEditErrorSpecifyPreloadValue = $0000000E;
  swsBoltConnectorEndEditErrorSpecifyFrictionValue = $0000000F;
  swsBoltConnectorEndEditErrorSelectPlanarFace = $00000010;
  swsBoltConnectorEndEditErrorSelectBoltHeadAndNut = $00000011;
  swsBoltConnectorEndEditErrorSelectFaceForHeadNutFaceForThread = $00000012;
  swsBoltConnectorEndEditErrorSelectConicalFaceAndBoltNut = $00000013;
  swsBoltConnectorEndEditErrorSelectConicalFaceAndFaceForThread = $00000014;
  swsBoltConnectorEndEditErrorSelectReferencePlane = $00000015;
  swsBoltConnectorEndEditErrorSelectFacesFromMultilayerBolt = $00000016;
  swsBoltConnectorEndEditErrorSelectCoaxialCylindricalSurfaces = $00000017;
  swsBoltConnectorEndEditErrorSelectConcentricCylindricalFaces = $00000018;
  swsBoltConnectorEndEditErrorBoltDiameterBiggerShankContactFaceDiameter = $00000019;
  swsBoltConnectorEndEditErrorSelectBoltNut = $0000001A;
  swsBoltConnectorEndEditErrorEntityAlreadyExits = $0000001B;
  swsBoltConnectorEndEditErrorNoEntity = $0000001C;
  swsBoltConnectorEndEditErrorIncorrectNutDiameter = $0000001D;
  swsBoltConnectorEndEditErrorDocumentIsPart = $0000001E;
  swsBoltConnectorEndEditErrorSelectNutOrHead = $0000001F;
  swsBoltConnectorEndEditErrorSelectEdgesOnShells = $00000020;
  swsBoltConnectorEndEditErrorNoObjectAtIndex = $00000021;
  swsBoltConnectorEndEditErrorEntitySelectionBoxesEmpty = $00000022;
  swsBoltConnectorEndEditErrorSelectOneEntity = $00000023;
  swsBoltConnectorEndEditErrorTooManyEntities = $00000024;
  swsBoltConnectorEndEditErrorNoShearEffectSelected = $00000025;
  swsBoltConnectorEndEditErrorNoMultiBoltSelected = $00000026;
  swsBoltConnectorEndEditErrorBodyHasMassElement = $00000027;
  swsBoltConnectorEndEditErrorBodyExcludedFromAnalysis = $00000028;
  swsBoltConnectorEndEditErrorNullEntity = $00000029;
  swsBoltConnectorEndEditErrorBodyHasBeamElement = $0000002A;

// Constants for enum swsLinearUnit_e
type
  swsLinearUnit_e = TOleEnum;
const
  swsLinearUnitMillimeters = $00000000;
  swsLinearUnitCentimeters = $00000001;
  swsLinearUnitMeters = $00000002;
  swsLinearUnitInches = $00000003;
  swsLinearUnitFeet = $00000004;
  swsLinearUnitFeetInches = $00000005;

// Constants for enum swsVelocityUnit_e
type
  swsVelocityUnit_e = TOleEnum;
const
  swsVelocityUnit_MillimetersPerSec = $00000000;
  swsVelocityUnit_CentimetersPerSec = $00000001;
  swsVelocityUnit_MetersPerSec = $00000002;
  swsVelocityUnit_InchesPerSec = $00000003;

// Constants for enum swsAngularVelocityUnit_e
type
  swsAngularVelocityUnit_e = TOleEnum;
const
  swsAngularVelocityUnit_RadiansPerSec = $00000000;
  swsAngularVelocityUnit_Hertz = $00000001;
  swsAngularVelocityUnit_RPM = $00000002;

// Constants for enum swsAccelerationUnit_e
type
  swsAccelerationUnit_e = TOleEnum;
const
  swsAccelerationUnit_MetersPerSquareSec = $00000000;
  swsAccelerationUnit_InchesPerSquareSec = $00000001;
  swsAccelerationUnit_CentimetersPerSquareSec = $00000002;
  swsAccelerationUnit_g = $00000003;

// Constants for enum swsAngularAccelerationUnit_e
type
  swsAngularAccelerationUnit_e = TOleEnum;
const
  swsAngularAccelerationUnit_RadiansPerSquareSec = $00000000;
  swsAngularAccelerationUnit_HertzPerSec = $00000001;
  swsAngularAccelerationUnit_RPMSquare = $00000002;

// Constants for enum swsPhaseAngleUnit_e
type
  swsPhaseAngleUnit_e = TOleEnum;
const
  swsPhaseAngleUnit_Deg = $00000000;
  swsPhaseAngleUnit_Rad = $00000001;

// Constants for enum swsFrequencyUnit_e
type
  swsFrequencyUnit_e = TOleEnum;
const
  swsFrequencyUnit_RadiansPerSec = $00000000;
  swsFrequencyUnit_CyclesPerSec = $00000001;

// Constants for enum swsMomentUnit_e
type
  swsMomentUnit_e = TOleEnum;
const
  swsMomentUnit_NewtonMeter = $00000000;
  swsMomentUnit_PoundForceInch = $00000001;
  swsMomentUnit_KilogramForceCentimeter = $00000002;

// Constants for enum swsRotationUnit_e
type
  swsRotationUnit_e = TOleEnum;
const
  swsRotationUnit_Degrees = $00000000;
  swsRotationUnit_DegreesMin = $00000001;
  swsRotationUnit_DegreesMinSec = $00000002;
  swsRotationUnit_Radians = $00000003;

// Constants for enum swsBoltType_e
type
  swsBoltType_e = TOleEnum;
const
  swsBoltTypeStandardOrCounterboreNut = $00000000;
  swBoltTypeCountersinkWithNut = $00000001;
  swsBoltTypeStandardOrCounterboreScrew = $00000002;
  swsBoltTypeCountersinkScrew = $00000003;
  swsBoltTypeFoundationBolt = $00000004;

// Constants for enum swsBoltMaterialSource_e
type
  swsBoltMaterialSource_e = TOleEnum;
const
  swsBoltMaterialSourceSolidWorks = $00000000;
  swsBoltMaterialSourceCustomDefined = $00000001;
  swsBoltMaterialSourceLibraryFiles = $00000002;

// Constants for enum swsBoltMaterialType_e
type
  swsBoltMaterialType_e = TOleEnum;
const
  swsBoltMaterialTypeCustom = $00000000;
  swsBoltMaterialTypeLibrary = $00000001;

// Constants for enum swsPreloadForce_e
type
  swsPreloadForce_e = TOleEnum;
const
  swsPreloadForceAxial = $00000000;
  swsPreloadForceTorque = $00000001;

// Constants for enum swsSymmetricalBoltType_e
type
  swsSymmetricalBoltType_e = TOleEnum;
const
  swsSymmtricalBoltTypeOneHalfSymmetry = $00000000;
  swsSymmtricalBoltTypeOneQuarterSymmetry = $00000001;

// Constants for enum swsTensileStressAreaUnit_e
type
  swsTensileStressAreaUnit_e = TOleEnum;
const
  swsTensileStressAreaUnitMillimetersSquared = $00000000;
  swsTensileStressAreaUnitCentimetersSquared = $00000001;
  swsTensileStressAreaUnitMetersSquared = $00000002;
  swsTensileStressAreaUnitInchesSquared = $00000003;
  swsTensileStressAreaUnitFeetSquared = $00000004;

// Constants for enum swsThreadsPerLengthUnit_e
type
  swsThreadsPerLengthUnit_e = TOleEnum;
const
  swsThreadsPerLengthUnitPerMillimete = $00000000;
  swsThreadsPerLengthUnitPerInch = $00000001;

// Constants for enum swsTemperatureUnit_e
type
  swsTemperatureUnit_e = TOleEnum;
const
  swsTemperatureUnitKelvin = $00000000;
  swsTemperatureUnitFahrenheit = $00000001;
  swsTemperatureUnitCelsius = $00000002;

// Constants for enum swsSolverType_e
type
  swsSolverType_e = TOleEnum;
const
  swsSolverTypeAutomatic = $00000000;
  swsSolverTypeDirectSparse = $00000001;
  swsSolverTypeFFEPlus = $00000002;
  swsSolverTypeCASI = $00000005;
  swsSolverTypeAbaqus = $00000006;
  swsSolverTypeINTEL = $00000007;

// Constants for enum swsCentrifugalForceEndEditError_e
type
  swsCentrifugalForceEndEditError_e = TOleEnum;
const
  swsCentrifugalForceEndEditErrorSuccessful = $00000000;
  wsCentrifugalForceEndEditErrorSpecifyAxisEdgeOrCylindricalFace = $00000001;

// Constants for enum swsUnitSystem_e
type
  swsUnitSystem_e = TOleEnum;
const
  swsUnitSystemSI = $00000000;
  swsUnitSystemIPS = $00000001;
  swsUnitSystemMKS = $00000002;
  swsUnitSystemSIWithMPA = $00000003;

// Constants for enum swsContactComponentEndEditError_e
type
  swsContactComponentEndEditError_e = TOleEnum;
const
  swsContactComponentEndEditErrorSuccessful = $00000000;
  swsContactComponentEndEditErrorContactComponentCannotBeCreated = $00000001;
  swsContactComponentEndEditErrorInvalidContactType = $00000002;
  swsContactComponentEndEditErrorSelectComponentOrBody = $00000003;
  swsContactComponentEndEditErrorIncorrectCoefficientOfFriction = $00000004;
  swsContactComponentEndEditErrorSelectSolidBodyOrComponent = $00000005;
  swsContactComponentEndEditErrorTooManyBodiesOrComponents = $00000006;
  swsContactComponentEndEditErrorCannotSpecifyFreeContact = $00000007;
  swsContactComponentEndEditErrorBodiesNotTouchingBodies = $00000008;

// Constants for enum swsContactType_e
type
  swsContactType_e = TOleEnum;
const
  swsContactTypeBonded = $00000000;
  swsContactTypeFreeOrInsulated = $00000001;
  swsContactTypeStaticNoPenetration = $00000002;

// Constants for enum swsMeshCompatibility_e
type
  swsMeshCompatibility_e = TOleEnum;
const
  swsMeshCompatibilityCompatible = $00000000;
  swsMeshCompatibiltyIncompatible = $00000001;

// Constants for enum swsSuppressionState_e
type
  swsSuppressionState_e = TOleEnum;
const
  swsSupressionStateSuppressed = $00000000;
  swsSupressionStateUnsuppressed = $00000001;

// Constants for enum swsContactSetTypeStaticNonLinear_e
type
  swsContactSetTypeStaticNonLinear_e = TOleEnum;
const
  swsContactSetTypeStaticNonLinearNoPrenetration = $00000000;
  swsContactSetTypeStaticNonLinearBonded = $00000001;
  swsContactSetTypeStaticNonLinearShrinkFit = $00000002;
  swsContactSetTypeStaticNonLinearFree = $00000003;
  swsContactSetTypeStaticNonLinearVirtualWall = $00000004;

// Constants for enum swsContactSetTypeThermal_e
type
  swsContactSetTypeThermal_e = TOleEnum;
const
  swsContactSetTypeThermalResistance = $00000000;
  swsContactSetTypeThermalBonded = $00000001;
  swsContactSetTypeThermalInsulated = $00000002;

// Constants for enum swsLoadsAndRestraintsType_e
type
  swsLoadsAndRestraintsType_e = TOleEnum;
const
  swsLoadsAndRestraintsTypePressure = $00000001;
  swsLoadsAndRestraintsTypeRestraint = $00000002;
  swsLoadsAndRestraintsTypeForce = $00000003;
  swsLoadsAndRestraintsTypeGravity = $00000004;
  swsLoadsAndRestraintsTypeCentrifugal = $00000005;
  swsLoadsAndRestraintsTypeTemperature = $00000006;
  swsLoadsAndRestraintsTypeConvection = $00000007;
  swsLoadsAndRestraintsTypeHeatPower = $00000008;
  swsLoadsAndRestraintsTypeHeatFlux = $00000009;
  swsLoadsAndRestraintsTypeRadiation = $0000000A;
  swsLoadsAndRestraintsTypeRemoteLoad = $0000000B;
  swsLoadsAndRestraintsTypeConnectors = $0000000C;
  swsLoadsAndRestraintsTypeBearingLoads = $0000000D;
  swsLoadsAndRestraintsTypeVelocity = $0000000E;
  swsLoadsAndRestraintsTypeBaseExcitation = $0000000F;
  swsLoadsAndRestraintsTypeMeshControl = $00000015;
  swsLoadsAndRestraintsTypeRemoteMass = $0000001F;

// Constants for enum swsContactSetEndEditError_e
type
  swsContactSetEndEditError_e = TOleEnum;
const
  swsContactSetEndEditErrorSuccessful = $00000000;
  swsContactSetEndEditErrorNoEntityAtIndex = $00000001;
  swsContactSetEndEditErrorEntityAlreadySpecified = $00000002;
  swsContactSetEndEditErrorInvalidContactSetType = $00000003;
  swsContactSetEndEditErrorInvalidOption = $00000004;
  swsContactSetEndEditErrorSpecifyFacesEdgesOrVerticesForSource = $00000005;
  swsContactSetEndEditErrorSpecifyOneTargetPlaneForVirtualWall = $00000006;
  swsContactSetEndEditErrorOnlyFacesAllowedForTarget = $00000007;
  swsContactSetEndEditErrorStiffnessCannotBeNegative = $00000008;
  swsContactSetEndEditErrorStiffnessMustBePositive = $00000009;
  swsContactSetEndEditErrorIncorrectCoefficientFriction = $0000000A;
  swsContactSetEndEditErrorVerticesAndEdgesForBondingAndSurfaceContacts = $0000000B;
  swsContactSetEndEditErrorThermalResistanceMustBePositive = $0000000C;
  swsContactSetEndEditErrorContactSetsMustBeUnique = $0000000D;
  swsContactSetEndEditErrorNodeToNodeContactAndSourceTargetFaces = $0000000E;
  swsContactSetEndEditErrorBondTouchingFacesInDropTestStudies = $0000000F;
  swsContactSetEndEditErrorShrinkFitAndnterferingSourceTargetBodies = $00000010;

// Constants for enum swsGapType_e
type
  swsGapType_e = TOleEnum;
const
  swsGapTypeAlwaysIgnoreClearance = $00000000;
  swsGapTypeIgnoreIfSmallerThanSpecifiedClearance = $00000001;

// Constants for enum swsNoPenetrationOption_e
type
  swsNoPenetrationOption_e = TOleEnum;
const
  swsNoPenetrationOptionNodeToNode = $00000000;
  swsNoPenetrationOptionNodeToSurface = $00000001;
  swsNoPenetrationOptionSurfaceToSurface = $00000002;

// Constants for enum swsShrinkFitOption_e
type
  swsShrinkFitOption_e = TOleEnum;
const
  swsShrinkFitOptionFitNodeToSurface = $00000000;
  swsShrinkFitOptionSurfaceToSurface = $00000001;

// Constants for enum swsResistanceType_e
type
  swsResistanceType_e = TOleEnum;
const
  swsResistanceTypeTotal = $00000000;
  swsResistanceTypeDistributed = $00000001;

// Constants for enum swsWallType_e
type
  swsWallType_e = TOleEnum;
const
  swsWallTypeRigid = $00000000;
  swsWallTypeFlexible = $00000001;

// Constants for enum swsConvectionEndEditError_e
type
  swsConvectionEndEditError_e = TOleEnum;
const
  swsConvectionEndEditErrorSuccessful = $00000000;
  swsConvectionEndEditErrorNoEntityAtIndex = $00000001;
  swsConvectionEndEditErrorEntityAlreadyAdded = $00000002;
  swsConvectionEndEditErrorNoEntitySelected = $00000003;
  swsConvectionEndEditErrorSelectFace = $00000004;
  swsConvectionEndEditErrorSelectFaceOrEdge = $00000005;

// Constants for enum swsTemperatureCurveError_e
type
  swsTemperatureCurveError_e = TOleEnum;
const
  swsTemperatureCurveErrorSuccessful = $00000000;
  swsTemperatureCurveErrorInvalidStudy = $00000001;
  swsTemperatureCurveErrorCurveCannotBeUsed = $00000002;
  swsTemperatureCurveErrorNeedDataPoints = $00000003;

// Constants for enum swsElasticConnectorEndEditError_e
type
  swsElasticConnectorEndEditError_e = TOleEnum;
const
  swsElasticConnectorEndEditErrorSuccessful = $00000000;
  swsElasticConnectorEndEditErrorNoEntityAtIndex = $00000001;
  swsElasticConnectorEndEditErrorEntityAlreadyAdded = $00000002;
  swsElasticConnectorEndEditErrorSelectFace = $00000003;
  swsElasticConnectorEndEditErrorSelectPlanarFace = $00000004;
  swsElasticConnectorEndEditErrorSelectNonNegativeValueForNormalOrShearStiffness = $00000005;
  swsElasticConnectorEndEditErrorSelectNonZeroValueForNormalOrShearStiffness = $00000006;
  swsElasticConnectorEndEditErrorSelectEntity = $00000007;
  swsElasticConnectorEndEditErrorHasBeamBody = $00000008;
  swsElasticConnectorEndEditErrorHasMassElement = $00000009;
  swsElasticConnectorEndEditErrorBodyExcludedFromAnalysis = $0000000A;
  swsElasticConnectorEndEditErrorNullEntity = $0000000B;

// Constants for enum swsStiffnessType_e
type
  swsStiffnessType_e = TOleEnum;
const
  swsStiffnessTypeDistributed = $00000000;
  swsStiffnessTypeTotal = $00000001;

// Constants for enum swsForceEndEditError_e
type
  swsForceEndEditError_e = TOleEnum;
const
  swsForceEndEditErrorSuccessful = $00000000;
  swsForceEndEditErrorNoEntityAtIndex = $00000001;
  swsForceEndEditErrorEntityAlreadyExists = $00000002;
  swsForceEndEditErrorNoEntitiesSelected = $00000003;
  swsForceEndEditErrorSelectFaceEdgeOrVertex = $00000004;
  swsForceEndEditErrorReferenceGeometryEntityNotSelected = $00000005;
  swsForceEndEditErrorSelectFaceEdgePlaneOrAxisForReferenceGeometry = $00000006;
  swsForceEndEditErrorSelectFace = $00000007;
  swsForceEndEditErrorSelectCoordinateSystem = $00000008;
  swsForceEndEditErrorVariableForceCannotBeAppliedToVerticesOrEdges = $00000009;
  swsForceEndEditErrorSelectReferenceAxisOrCylindricalFaceForTorque = $0000000A;
  swsForceEndEditErrorMagnitudeForceMustBeLargerZero = $0000000B;
  swsForceEndEditErrorVariableForceCannotBeAppliedToVertices = $0000000C;

// Constants for enum swsForceType_e
type
  swsForceType_e = TOleEnum;
const
  swsForceTypeForceOrMoment = $00000000;
  swsForceTypeNormal = $00000001;
  swsForceTypeTorque = $00000002;

// Constants for enum swsForceUnit_e
type
  swsForceUnit_e = TOleEnum;
const
  swsForceUnitNOrNm = $00000000;
  swsForceUnitlbOrlbin = $00000001;
  swsForceUnitkgfOrkgfcm = $00000002;

// Constants for enum swsFrequencyStudyOption_e
type
  swsFrequencyStudyOption_e = TOleEnum;
const
  swsFrequencyStudyOptionNumberFrequencies = $00000000;
  swsFrequencyStudyOptionUseUpperBoundFrequency = $00000001;

// Constants for enum swsGravityEndEditError_e
type
  swsGravityEndEditError_e = TOleEnum;
const
  swsGravityEndEditErrorSuccessful = $00000000;
  swsGravityEndEditErrorSpecifyReferencePlaneFaceOrEdge = $00000001;
  swsGravityEndEditErrorValuesCannotBeZeros = $00000002;

// Constants for enum swsHeatFluxEndEditError_e
type
  swsHeatFluxEndEditError_e = TOleEnum;
const
  swsHeatFluxEndEditErrorSuccessful = $00000000;
  swsHeatFluxEndEditErrorNoEntityAtIndex = $00000001;
  swsHeatFluxEndEditErrorEntityAlreadyExists = $00000002;
  swsHeatFluxEndEditErrorNoEntities = $00000003;
  swsHeatFluxEndEditErrorSelectFace = $00000004;
  swsHeatFluxEndEditErrorSelectFacesOrShellEdge = $00000005;
  swsHeatFluxEndEditErrorSelectrVertexForSensorLocation = $00000006;
  swsHeatFluxEndEditErrorLowerboundTemperatureHigherThanUpperbound = $00000007;
  swsHeatFluxEndEditErrorThermostatForTransientStudiesOnly = $00000008;

// Constants for enum swsHeatPowerEndEditError_e
type
  swsHeatPowerEndEditError_e = TOleEnum;
const
  swsHeatPowerEndEditErrorSuccessful = $00000000;
  swsHeatPowerEndEditErrorNoEntityAtIndex = $00000001;
  swsHeatPowerEndEditErrorEntityAlreadyExists = $00000002;
  swsHeatPowerEndEditErrorNoEntitiesSelected = $00000003;
  swsHeatPowerEndEditErrorSelectVerticesEdgesFacesComponentsOrBodies = $00000004;
  swsHeatPowerEndEditErrorSelectFaceEdgeOrVertex = $00000005;
  swsHeatPowerEndEditErrorSelectVertexForThermostatLocation = $00000006;
  swsHeatPowerEndEditErrorLowerboundTemperatureHigherThanUpperbound = $00000007;
  swsHeatPowerEndEditErrorNotValidForSteadyStateAnalysis = $00000008;
  swsHeatPowerEndEditErrorVertexCannotBeUsedForSensorLocation = $00000009;

// Constants for enum swsLinkConnectorEndEditError_e
type
  swsLinkConnectorEndEditError_e = TOleEnum;
const
  swsLinkConnectorEndEditErrorSuccessful = $00000000;
  swsLinkConnectorEndEditErrorEntityAlreadyExists = $00000001;
  swsLinkConnectorEndEditErrorSelectDatumPointOrVertices = $00000002;
  swsLinkConnectorEndEditErrorSelectEntity = $00000003;
  swsLinkConnectorEndEditErrorNullEntity = $00000004;
  swsLinkConnectorEndEditErrorHasBeamBody = $00000005;
  swsLinkConnectorEndEditErrorHasMassElement = $00000006;
  swsLinkConnectorEndEditErrorBodyExcludedFromAnalysis = $00000007;

// Constants for enum swsLoadsAndRestraintsManagerBearingLoadError_e
type
  swsLoadsAndRestraintsManagerBearingLoadError_e = TOleEnum;
const
  swsLoadsAndRestraintsManagerBearingLoadErrorSuccessful = $00000000;
  swsLoadsAndRestraintsManagerBearingLoadErrorInvalidArray = $00000001;
  swsLoadsAndRestraintsManagerBearingLoadErrorNoObjectForFace = $00000002;
  swsLoadsAndRestraintsManagerBearingLoadErrorCoordinateSystemEmpty = $00000003;
  swsLoadsAndRestraintsManagerBearingLoadErrorSelectFace = $00000004;
  swsLoadsAndRestraintsManagerBearingLoadErrorSelectCoordinateSystem = $00000005;
  swsLoadsAndRestraintsManagerBearingLoadErrorCoordinateSystemAndCylindricalFaces = $00000006;
  swsLoadsAndRestraintsManagerBearingLoadErrorInvalidMesh = $00000007;
  swsLoadsAndRestraintsManagerBearingLoadErrorInvalidStudy = $00000008;
  swsLoadsAndRestraintsManagerBearingLoadErrorBodyExcludedFromAnalysis = $00000009;

// Constants for enum swsBoltConnectorError_e
type
  swsBoltConnectorError_e = TOleEnum;
const
  swsBoltConnectorErrorSuccessful = $00000000;
  swsBoltConnectorErrorInvalidMesh = $00000001;
  swsBoltConnectorErrorNonLinearStudyAndPartDocument = $00000002;
  swsBoltConnectorErrorInvalidStudy = $00000003;
  swsBoltConnectorErrorSelectEntity = $00000004;
  swsBoltConnectorErrorSelectFaceWithConicalSurface = $00000005;
  swsBoltConnectorErrorSelectEdgeWithCircularLine = $00000006;
  swsBoltConnectorErrorSelectFaceWithCylindricalSurface = $00000007;
  swsBoltConnectorErrorSelectCylindricalThreadFace = $00000008;
  swsBoltConnectorErrorSelectConcentricEntities = $00000009;
  swsBoltConnectorErrorSelectDatumPlane = $0000000A;
  swsBoltConnectorErrorSelectEdge = $0000000B;
  swsBoltConnectorErrorSelectFace = $0000000C;
  swsBoltConnectorErrorSameEntityHeadAndNut = $0000000D;
  swsBoltConnectorErrorSelectAssemblyDocument = $0000000E;
  swsBoltConnectorErrorNoObjectForNutOrHead = $0000000F;
  swsBoltConnectorErrorSelectNutOrHead = $00000010;
  swsBoltConnectorErrorArrayEmpty = $00000011;
  swsBoltConnectorErrorSelectCircularEdgeOnShells = $00000012;
  swsBoltConnectorErrorBoltDiameterTooLarge = $00000013;
  swsBoltConnectorErrorBodyExcludedFromAnalysis = $00000014;

// Constants for enum swsCentrifugalForceError_e
type
  swsCentrifugalForceError_e = TOleEnum;
const
  swsCentrifugalForceErrorSuccessful = $00000000;
  swsCentrifugalForceErrorSelectAxisEdgeOrCylindricalFace = $00000001;
  swsCentrifugalForceErrorFaceNotCylindrical = $00000002;
  swsCentrifugalForceErrorEdgeNotLinear = $00000003;
  swsCentrifugalForceErrorAlreadyDefined = $00000004;
  swsCentrifugalForceErrorInvalidStudyType = $00000005;

// Constants for enum swsConvectionError_e
type
  swsConvectionError_e = TOleEnum;
const
  swsConvectionErrorSuccessful = $00000000;
  swsConvectionErrorFacesAndShellEdgesAllowed = $00000001;
  swsConvectionErrorSelectFacesOrShellEdge = $00000002;
  swsConvectionErrorInvalidStudyType = $00000003;
  swsConvectionErrorInvalidArray = $00000004;
  swsConvectionErrorEmptyArray = $00000005;

// Constants for enum swsElasticConnectorError_e
type
  swsElasticConnectorError_e = TOleEnum;
const
  swsElasticConnectorErrorSuccessful = $00000000;
  swsElasticConnectorErrorInvalidMesh = $00000001;
  swsElasticConnectorErrorNonlinearStudyAndPartDocument = $00000002;
  swsElasticConnectorErrorInvalidStudy = $00000003;
  swsElasticConnectorErrorInvalidArray = $00000004;
  swsElasticConnectorErrorSelectFace = $00000005;
  swsElasticConnectorErrorSelectPlanarFace = $00000006;
  swsElasticConnectorErrorNoEntityNoObject = $00000007;
  swsElasticConnectorErrorNullOrEmptyArray = $00000008;
  swsElasticConnectorErrorFaceHasRemoteMassOrBeamBody = $00000009;
  swsElasticConnectorErrorBodyExcludedFromAnalysis = $0000000A;

// Constants for enum swsForceError_e
type
  swsForceError_e = TOleEnum;
const
  swsForceErrorSuccessful = $00000000;
  swsForceErrorSelectFacesEdgesVerticesOrPoints = $00000001;
  swsForceErrorSelectFaceEdgePlaneOrAxis = $00000002;
  swsForceErrorApplyNormalForceToFacesAndShellEdges = $00000003;
  swsForceErrorSelectReferenceAxisOrCylindricalFace = $00000004;
  swsForceErrorInvalidStudyType = $00000005;
  swsForceErrorInvalidArray = $00000006;
  swsForceErrorInvalidForceType = $00000007;
  swsForceErrorNoEntities = $00000008;
  swsForceErrorCannotApplyNonuniformForce = $00000009;
  swsForceErrorCannotApplyForce = $0000000A;
  swsForceErrorCannotApplyNonuniformLoadOnMultipleBeam = $00000012;
  swsForceErrorCannotApplyZeroLoading = $00000013;
  swsForceErrorInvalidSelectionType = $00000014;
  swsForceErrorNonUniformBeamLoadInvalidTableData = $00000015;
  swsForceErrorNonUniformBeamLoadInvalidTableDistData = $00000016;

// Constants for enum swsGravityError_e
type
  swsGravityError_e = TOleEnum;
const
  swsGravityErrorSuccessful = $00000000;
  swsGravityErrorSelectFaceEdgeOrPlane = $00000001;
  swsGravityErrorFaceNotPlanar = $00000002;
  swsGravityErrorEdgeNotStraight = $00000003;
  swsGravityErrorGravityAlreadyDefined = $00000004;
  swsGravityErrorInvalidStudy = $00000005;

// Constants for enum swsHeatFluxError_e
type
  swsHeatFluxError_e = TOleEnum;
const
  swsHeatFluxErrorSuccessful = $00000000;
  swsHeatFluxErrorNoFaces = $00000001;
  swsHeatFluxErrorNoFacesOrShellEdges = $00000002;
  swsHeatFluxErrorInvalidStudy = $00000003;
  swsHeatFluxErrorInvalidArray = $00000004;
  swsHeatFluxErrorNoEntities = $00000005;

// Constants for enum swsHeatPowerError_e
type
  swsHeatPowerError_e = TOleEnum;
const
  swsHeatPowerErrorSuccessful = $00000000;
  swsHeatPowerErrorSelectFaceEdgeVertexComponentOrBody = $00000001;
  swsHeatPowerErrorSelectFacesEdgesOrVertices = $00000002;
  swsHeatPowerErrorInvalidStudy = $00000003;
  swsHeatPowerErrorInvalidArray = $00000004;
  swsHeatPowerErrorNoEntities = $00000005;

// Constants for enum swsLinkConnectorError_e
type
  swsLinkConnectorError_e = TOleEnum;
const
  swsLinkConnectorErrorSuccessful = $00000000;
  swsLinkConnectorErrorInvalidMesh = $00000001;
  swsLinkConnectorErrorNonlinearStudyPartDocument = $00000002;
  swsLinkConnectorErrorInvalidStudy = $00000003;
  swsLinkConnectorErrorSelectAssemblyDocument = $00000004;
  swsLinkConnectorErrorEmptyEntity = $00000005;
  swsLinkConnectorErrorSelectVertexOrDatumPoint = $00000006;
  swsLinkConnectorErrorHasRemoteMassOrBeamBody = $00000007;
  swsLinkConnectorErrorBodyExcludedFromAnalysis = $00000008;

// Constants for enum swsPinConnectorError_e
type
  swsPinConnectorError_e = TOleEnum;
const
  swsPinConnectorErrorSuccesful = $00000000;
  swsPinConnectorErrorInvalidMesh = $00000001;
  swsPinConnectorErrorNonlinearStudyPartDocument = $00000002;
  swsPinConnectorErrorInvalidStudy = $00000003;
  swsPinConnectorErrorNoObject = $00000004;
  swsPinConnectorErrorSelectFace = $00000005;
  swsPinConnectorErrorFaceNotCylindrical = $00000006;
  swsPinConnectorErrorSelectConcentricCylindricalFacesForConnector = $00000007;
  swsPinConnectorErrorComponentConcentricFacesRadiiNotEqual = $00000008;
  swsPinConnectorErrorInvalidArray = $00000009;
  swsPinConnectorErrorSelectAssemblyDocument = $0000000A;
  swsPinConnectorErrorSelectFacesFromSameHoleForSource = $0000000B;
  swsPinConnectorErrorSelectFaceFromSameHoleForTarget = $0000000C;
  swsPinConnectorErrorNullOrEmptyArray = $0000000D;
  swsPinConnectorErrorEntitySameForComponents = $0000000E;
  swsPinConnectorErrorSelectDifferentBody = $0000000F;
  swsPinConnectorErrorArrayEmtpy = $00000010;
  swsPinConnectorErrorArrayHasBeamBody = $00000011;
  swsPinConnectorErrorSelectConcentricCylindricalFacesForConnection = $00000012;
  swsPinConnectorErrorSelectCircularEdgesOnShells = $00000013;
  swsPinConnectorErrorBodyExcludedFromAnalysis = $00000014;

// Constants for enum swsPressureType_e
type
  swsPressureType_e = TOleEnum;
const
  swsPressureTypeNormal = $00000000;
  swsPressureTypeUseReferenceGeometry = $00000001;

// Constants for enum swsPressureError_e
type
  swsPressureError_e = TOleEnum;
const
  swsPressureErrorSuccessful = $00000000;
  swsPressureErrorSelectFaceOrFaces = $00000001;
  swsPressureErrorSelectFacesOrShellEdges = $00000002;
  swsPressureErrorSelectFaceEdgePlaneOrAxis = $00000003;
  swsPressureErrorPressureType = $00000004;
  swsPressureErrorInvalidStudy = $00000005;
  swsPressureErrorInvalidArray = $00000006;
  swsPressureErrorCannotApplyPressure = $00000007;

// Constants for enum swsRadiationType_e
type
  swsRadiationType_e = TOleEnum;
const
  swsRadiationTypeSurfaceToAmbient = $00000000;
  swsRadiationTypeSurfaceToSurface = $00000001;

// Constants for enum swsRadiationError_e
type
  swsRadiationError_e = TOleEnum;
const
  swsRadiationErrorSuccessful = $00000000;
  swsRadiationErrorSelectFaces = $00000001;
  swsRadiationErrorSelectFaceOrShellEdge = $00000002;
  swsRadiationErrorInvalidStudy = $00000003;
  swsRadiationErrorRadiationType = $00000004;
  swsRadiationErrorInvalidArray = $00000005;
  swsRadiationErrorEmtpyArray = $00000006;

// Constants for enum swsRestraintType_e
type
  swsRestraintType_e = TOleEnum;
const
  swsRestraintTypeFixed = $00000000;
  swsRestraintTypeImmovable = $00000001;
  swsRestraintTypeSymmetric = $00000002;
  swsRestraintTypeRoller = $00000003;
  swsRestraintTypeHinge = $00000004;
  swsRestraintTypeReferenceGeometry = $00000005;
  swsRestraintTypeFlatFace = $00000006;
  swsRestraintTypeCylindricalFaces = $00000007;
  swsRestraintTypeSphericalSurface = $00000008;
  swsRestraintTypeCyclicSymmetry = $00000009;

// Constants for enum swsRigidConnectorError_e
type
  swsRigidConnectorError_e = TOleEnum;
const
  swsRigidConnectorErrorSuccessful = $00000000;
  swsRigidConnectorErrorInvalidMesh = $00000001;
  swsRigidConnectorErrorNonlinearStudyPartDocument = $00000002;
  swsRigidConnectorErrorInvalidStudy = $00000003;
  swsRigidConnectorErrorSelectAssemblyDocument = $00000004;
  swsRigidConnectorErrorInvalidSourceArray = $00000005;
  swsRigidConnectorErrorNoObjectForFace = $00000006;
  swsRigidConnectorErrorInvalidTargetArray = $00000007;
  swsRigidConnectorErrorNoObjectForTarget = $00000008;
  swsRigidConnectorErrorSelectFace = $00000009;
  swsRigidConnectorErrorSameEntityAtFaceAndTargetArray = $0000000A;
  swsRigidConnectorErrorBodyHasRemoteMass = $0000000B;
  swsRigidConnectorErrorNullOrEmptyArray = $0000000C;
  swsRigidConnectorErrorFacesFromSameComponent = $0000000D;
  swsRigidConnectorErrorBodyExcludedFromAnalysis = $0000000E;

// Constants for enum swsSpotWeldConnectorError_e
type
  swsSpotWeldConnectorError_e = TOleEnum;
const
  swsSpotWeldConnectorErrorSuccessful = $00000000;
  swsSpotWeldConnectorErrorInvalidMesh = $00000001;
  swsSpotWeldConnectorErrorNonlinearStudyPartDocument = $00000002;
  swsSpotWeldConnectorErrorInvalidStudy = $00000003;
  swsSpotWeldConnectorErrorNullDispatch = $00000004;
  swsSpotWeldConnectorErrorSelectAssemblyDocument = $00000005;
  swsSpotWeldConnectorErrorSelectFace = $00000006;
  SpotWeldConnectorErrorSelectVerticesOrDatumPoint = $00000007;
  swsSpotWeldConnectorErrorPlanesNotParallel = $00000008;
  swsSpotWeldConnectorErrorPlanesTouching = $00000009;
  swsSpotWeldConnectorErrorGapTooBig = $0000000A;
  swsSpotWeldConnectorErrorSelectDatumPoints = $0000000B;
  swsSpotWeldConnectorErrorPostWeldInvalidPoints = $0000000C;
  swsSpotWeldConnectorErrorInvalidArray = $0000000D;
  swsSpotWeldConnectorErrorEmptyArray = $0000000E;
  swsSpotWeldConnectorErrorHasRemoteMass = $0000000F;
  swsSpotWeldConnectorErrorBodyExcludedFromAnalysis = $00000010;

// Constants for enum swsSpringConnectorType_e
type
  swsSpringConnectorType_e = TOleEnum;
const
  swsSpringConnectoryTypeFlatParallelFaces = $00000000;
  swsSpringConnectoryTypeConcentricCylindricalFaces = $00000001;
  swsSpringConnectoryTypeBetweenVertices = $00000002;

// Constants for enum swsSpringConnectorError_e
type
  swsSpringConnectorError_e = TOleEnum;
const
  swsSpringConnectorErrorSuccessful = $00000000;
  swsSpringConnectorErrorInvalidMesh = $00000001;
  swsSpringConnectorErrorNonlinearStudyPartDocument = $00000002;
  swsSpringConnectorErrorInvalidStudy = $00000003;
  swsSpringConnectorErrorSelectEntities = $00000004;
  swsSpringConnectorErrorSelectFace = $00000005;
  swsSpringConnectorErrorSelectFaceWithCylindricalSurface = $00000006;
  swsSpringConnectorErrorSelectTwoConcentricCylindricalFaces = $00000007;
  swsSpringConnectorErrorCylindricalFacesRadiiNotEqual = $00000008;
  swsSpringConnectorErrorSelectPlanarFace = $00000009;
  swsSpringConnectorErrorSelectTwoPlanarFaces = $0000000A;
  swsSpringConnectorErrorSourceTargetEntitiesSame = $0000000B;
  swsSpringConnectorErrorStudyNonlinearAndSpringSubtypeValue = $0000000C;
  swsSpringConnectorErrorInvalidArray = $0000000D;
  swsSpringConnectorErrorNumberPlanarFacesLessThanTwo = $0000000E;
  swsSpringConnectorErrorNoObjectForSourceOrTarget = $0000000F;
  swsSpringConnectorErrorSelectDatumPoint = $00000010;
  swsSpringConnectorErrorTooManyEntitiesForSpringType = $00000011;
  swsSpringConnectorErrorSelectionsOnToSameComponent = $00000012;
  swsSpringConnectorErrorHasRemoteMass = $00000013;
  swsSpringConnectorErrorEmptyArray = $00000014;
  swsSpringConnectorErrorSpringSubtypeInvalidForShellMesh = $00000015;
  swsSpringConnectorErrorBodyExcludedFromAnalysis = $00000016;

// Constants for enum swsTemperatureError_e
type
  swsTemperatureError_e = TOleEnum;
const
  swsTemperatureErrorSuccessful = $00000000;
  swsTemperatureErrorSelectVerticesEdgesFacesBodiesOrComponents = $00000001;
  swsTemperatureErrorInvalidStudy = $00000002;
  swsTemperatureErrorInvalidArray = $00000003;
  swsTemperatureErrorEmptyArray = $00000004;

// Constants for enum swsLoadsAndRestraintsError_e
type
  swsLoadsAndRestraintsError_e = TOleEnum;
const
  swsLoadsAndRestraintsErrorSuccessful = $00000000;
  swsLoadsAndRestraintsErrorNotFoundAtIndex = $00000001;

// Constants for enum swsMaterialTemperature_e
type
  swsMaterialTemperature_e = TOleEnum;
const
  swsMaterialTemperatureDependent = $00000000;
  swsMaterialTemperatureNotDependent = $00000001;

// Constants for enum swsMaterialFatigueSNCurveError_e
type
  swsMaterialFatigueSNCurveError_e = TOleEnum;
const
  swsMaterialFatigueSNCurveErrorSuccessful = $00000000;
  swsMaterialFatigueSNCurveErrorIndexValues = $00000001;
  swsMaterialFatigueSNCurveErrorInvalidArray = $00000002;
  swsMaterialFatigueSNCurveErrorCycles = $00000003;
  swsMaterialFatigueSNCurveErrorCurveDataPoints = $00000004;
  swsMaterialFatigueSNCurveErrorStressValuesMustBeUnique = $00000005;

// Constants for enum swsMaterialDataCurveError_e
type
  swsMaterialDataCurveError_e = TOleEnum;
const
  swsMaterialDataCurveErrorSuccessful = $00000000;
  swsMaterialDataCurveErrorCannotBeDefined = $00000001;
  swsMaterialDataCurveErrorIndexValues = $00000002;
  swsMaterialDataCurveErrorIndexForMooneyRivlinAndOgeden = $00000003;
  swsMaterialDataCurveErrorIndexForViscoElastic = $00000004;
  swsMaterialDataCurveErrorInvalidArray = $00000005;
  swsMaterialDataCurveErrorTemperatures = $00000006;
  swsMaterialDataCurveErrorNeedDataPoints = $00000007;

// Constants for enum swsMaterialReferencePlaneError_e
type
  swsMaterialReferencePlaneError_e = TOleEnum;
const
  swsMaterialReferencePlaneErrorSuccessful = $00000000;
  swsMaterialReferencePlaneErrorSpecifyPlaneOrAxis = $00000001;

// Constants for enum swsMaterialStressStrainCurveError_e
type
  swsMaterialStressStrainCurveError_e = TOleEnum;
const
  swsMaterialStressStrainCurveErrorSuccessful = $00000000;
  swsMaterialStressStrainCurveErrorInvalidForMaterial = $00000001;
  swsMaterialStressStrainCurveErrorInvalidArray = $00000002;
  swsMaterialStressStrainCurveErrorTemperatures = $00000003;
  swsMaterialStressStrainCurveErrorNeedDataPoints = $00000004;

// Constants for enum swsMaterialTemperatureCurveForPropertyError_e
type
  swsMaterialTemperatureCurveForPropertyError_e = TOleEnum;
const
  swsMaterialTemperatureCurveForPropertyErrorSuccessful = $00000000;
  swsMaterialTemperatureCurveForPropertyErrorPropertyNotDefined = $00000001;
  swsMaterialTemperatureCurveForPropertyErrorNotApplicable = $00000002;
  swsMaterialTemperatureCurveForPropertyErrorNotAllowed = $00000003;
  swsMaterialTemperatureCurveForPropertyErrorInvalidArray = $00000004;
  swsMaterialTemperatureCurveForPropertyErrorNeedDataPoints = $00000005;
  swsMaterialTemperatureCurveForPropertyErrorTermperatures = $00000006;

// Constants for enum swsMaterialModelType_e
type
  swsMaterialModelType_e = TOleEnum;
const
  swsMaterialModelTypeLinearElasticIsotropic = $00000000;
  swsMaterialModelTypeLinearElasticOrthtropic = $00000001;
  swsMaterialModelTypeLinearElasticAnisotropic = $00000002;
  swsMaterialModelTypeNonlinearElastic = $00000003;
  swsMaterialModelTypeElastoPlasticvonMisesKinematic = $00000004;
  swsMaterialModelTypeElastoPlasticTrescaKinematic = $00000005;
  swsMaterialModelTypeElastoPlasticDruckerPrager = $00000006;
  swsMaterialModelTypeHyperElasticMooneyRivlin = $00000007;
  swsMaterialModelTypeHyperElasticOgden = $00000008;
  swsMaterialModelTypeHyperElasticBlatzko = $00000009;
  swsMaterialModelTypeViscoElastic = $0000000A;
  swsMaterialModelTypeNitinol = $0000000B;
  swsMaterialModelTypeCreepExponential = $0000000C;

// Constants for enum swsMaterialSNCurveSource_e
type
  swsMaterialSNCurveSource_e = TOleEnum;
const
  swsMaterialSNCurveSourceUserDefined = $00000000;
  swsMaterialSNCurveSourceASMEAustenticSteel = $00000001;
  swsMaterialSNCurveSourceASMECarbonSteel = $00000002;

// Constants for enum swsNForceType_e
type
  swsNForceType_e = TOleEnum;
const
  swsNForceTypeNormal = $00000000;
  swsNForceTypeFriction = $00000001;
  swsNForceTypeTotal = $00000002;

// Constants for enum swsMaterialSource_e
type
  swsMaterialSource_e = TOleEnum;
const
  swsMaterialSourceSolidWorks = $00000000;
  swsMaterialSourceCustomDefined = $00000001;
  swsMaterialSourceCentorLibrary = $00000002;
  swsMaterialSourceLibraryFiles = $00000003;

// Constants for enum swsMeshControlError_e
type
  swsMeshControlError_e = TOleEnum;
const
  swsMeshControlErrorSuccessful = $00000000;
  swsMeshControlErrorNoEntityAtIndex = $00000001;
  swsMeshControlErrorEntityAlreadyExists = $00000002;
  swsMeshControlErrorNoEntities = $00000003;
  swsMeshControlErrorSelectVerticesEdgesFacesBodiesOrComponents = $00000004;
  swsMeshControlErrorSelectFaceEdgeOrVertex = $00000005;
  swsMeshControlErrorElementSize = $00000006;
  swsMeshControlErrorNumberOfLayers = $00000007;

// Constants for enum swsMeshFlipShellError_e
type
  swsMeshFlipShellError_e = TOleEnum;
const
  swsMeshFlipShellErrorSuccessful = $00000000;
  swsMeshFlipShellErrorInvalidArray = $00000001;
  swsMeshFlipShellErrorEmptyArray = $00000002;
  swsMeshFlipShellErrorNotShell = $00000003;
  swsMeshFlipShellErrorSelectFaces = $00000004;
  swsMeshFlipShellErrorMeshInformationNotFound = $00000005;

// Constants for enum swsMeshElementNodeLocation_e
type
  swsMeshElementNodeLocation_e = TOleEnum;
const
  swsMeshElementNodeLocationSuccessful = $00000000;
  swsMeshElementNodeLocationNoNode = $00000001;
  swsMeshElementNodeLocationNoElement = $00000002;

// Constants for enum swsMeshShellNormal_e
type
  swsMeshShellNormal_e = TOleEnum;
const
  swsMeshShellNormalNotFoundOrFaceNotSelected = $FFFFFFFF;
  swsMeshShellNormalTopFace = $00000000;
  swsMeshShellNormalBottomFace = $00000001;

// Constants for enum swsMesherType_e
type
  swsMesherType_e = TOleEnum;
const
  swsMesherTypeStandard = $00000000;
  swsMesherTypeAlternate = $00000001;

// Constants for enum swsMeshState_e
type
  swsMeshState_e = TOleEnum;
const
  swsMeshStateNoMesh = $00000000;
  swsMeshStateExistsAndCurrent = $00000001;
  swsMeshStateExistsAndNotCurrent = $00000002;
  swsMeshStateFailed = $00000003;
  swsMeshStateInterrupted = $00000004;

// Constants for enum swsMeshType_e
type
  swsMeshType_e = TOleEnum;
const
  swsMeshTypeSolid = $00000000;
  swsMeshTypeMidSurface = $00000001;
  swsMeshTypeSurfaces = $00000002;
  swsMeshTypeMixed = $00000003;
  swsMeshTypeBeam = $00000004;

// Constants for enum swsMeshQuality_e
type
  swsMeshQuality_e = TOleEnum;
const
  swsMeshQualityDraft = $00000000;
  swsMeshQualityHigh = $00000001;

// Constants for enum swsMeshControlWeightFactor_e
type
  swsMeshControlWeightFactor_e = TOleEnum;
const
  swsMeshControlWeightFactorDefault = $00000000;
  swsMeshControlWeightFactorHighest = $00000001;

// Constants for enum swsPinConnectorEndEditError_e
type
  swsPinConnectorEndEditError_e = TOleEnum;
const
  swsPinConnectorEndEditErrorSuccessful = $00000000;
  swsPinConnectorEndEditErrorNoEntityAtIndex = $00000001;
  swsPinConnectorEndEditErrorEntityAlreadyAdded = $00000002;
  swsPinConnectorEndEditErrorSelectEntity = $00000003;
  swsPinConnectorEndEditErrorSelectFace = $00000004;
  swsPinConnectorEndEditErrorSelectFaceCylindricalSurface = $00000005;
  swsPinConnectorEndEditErrorSelectConcentricCylindricalFacesConnector = $00000006;
  swsPinConnectorEndEditErrorRadiiNotEqual = $00000007;
  swsPinConnectorEndEditErrorSelectAssemblyDocument = $00000008;
  swsPinConnectorEndEditErrorSelectConcentricCylindricalFacesConnection = $00000009;
  swsPinConnectorEndEditErrorIndexTooBig = $0000000A;
  swsPinConnectorEndEditErrorHasBeamBody = $0000000B;
  swsPinConnectorEndEditErrorHasMassElement = $0000000C;
  swsPinConnectorEndEditErrorSelectCircularEdges = $0000000D;
  swsPinConnectorEndEditErrorSelectDifferentBody = $0000000E;
  swsPinConnectorEndEditErrorSelectFacesFromSameHole = $0000000F;
  swsPinConnectorEndEditErrorSpecifyPositiveValue = $00000010;
  swsPinConnectorEndEditErrorPinMass = $00000011;
  swsPinConnectorEndEditErrorTensileStressArea = $00000012;
  swsPinConnectorEndEditErrorTesileStressAreaLarge = $00000013;
  swsPinConnectorEndEditErrorPinBoltStrength = $00000014;
  swsPinConnectorEndEditErrorSafetyFactor = $00000015;
  swsPinConnectorEndEditErrorSelectCircularEdge = $00000016;
  swsPinConnectorEndEditErrorBodyExcludedFromAnalysis = $00000017;
  swsPinConnectorEndEditErrorNullEntity = $00000018;
  swsPinConnectorEndEditErrorIncludeStrengthData = $00000019;

// Constants for enum swsStrengthUnit_e
type
  swsStrengthUnit_e = TOleEnum;
const
  swsStrengthUnitPascal = $00000000;
  swsStrengthUnitPSI = $00000001;
  swsStrengthUnitKilogramsPerSquareCentimeter = $00000002;
  swsStrengthUnitNewtonPerSquareMillimeter = $00000003;
  swsStrengthUnitKSI = $00000004;

// Constants for enum swsPressureEndEditError_e
type
  swsPressureEndEditError_e = TOleEnum;
const
  swsPressureEndEditErrorSuccessful = $00000000;
  swsPressureEndEditErrorNoEntityAtIndex = $00000001;
  swsPressureEndEditErrorEntityAlreadyAdded = $00000002;
  swsPressureEndEditErrorNoEntities = $00000003;
  swsPressureEndEditErrorSelectFacesOrShellEdges = $00000004;
  swsPressureEndEditErrorSelectFaceOrShellEdge = $00000005;
  swsPressureEndEditErrorRefGeomPreExist = $00000006;
  swsPressureEndEditErrorSelectFaceEdgePlaneOrAxis = $00000007;
  swsPressureEndEditErrorSelectCoordinateSystem = $00000008;

// Constants for enum swsRadiationEndEditError_e
type
  swsRadiationEndEditError_e = TOleEnum;
const
  swsRadiationEndEditErrorSuccessful = $00000000;
  swsRadiationEndEditErrorNoEntityAtIndex = $00000001;
  swsRadiationEndEditErrorEntityAlreadyExists = $00000002;
  swsRadiationEndEditErrorNoEntities = $00000003;
  swsRadiationEndEditErrorSelectFace = $00000004;
  swsRadiationEndEditErrorSelectFaceOrEdge = $00000005;
  swsRadiationEndEditErrorEmissivity = $00000006;
  swsRadiationEndEditErrorViewFactor = $00000007;

// Constants for enum swsRadiationOpenSystem_e
type
  swsRadiationOpenSystem_e = TOleEnum;
const
  swsRadiationOpenSystemClosed = $00000000;
  swsRadiationOpenSystemOpen = $00000001;

// Constants for enum swsResultsError_e
type
  swsResultsError_e = TOleEnum;
const
  swsResultsErrorSuccessful = $00000000;
  swsResultsErrorDatabaseNotAvailable = $00000001;
  swsResultsErrorIncorrectStepNumber = $00000002;
  swsResultsErrorIncorrectReferenceEntity = $00000003;
  swsResultsErrorNoResultType = $00000004;
  swsResultsErrorInvalidComponent = $00000005;
  swsResultsErrorIncorrectCodeNumber = $00000006;
  swsResultsErrorInvalidEntity = $00000007;
  swsResultsErrorIncompatibleStudy = $00000008;
  swsResultsErrorIncorrectModeShape = $00000009;

// Constants for enum swsResultsRotationalDisplacementUnit_e
type
  swsResultsRotationalDisplacementUnit_e = TOleEnum;
const
  swsResultsRotationalDisplacementUnitDeg = $00000000;
  swsResultsRotationalDisplacementUnitDegMin = $00000001;
  swsResultsRotationalDisplacementUnitDegMinSec = $00000002;
  swsResultsRotationalDisplacementUnitRad = $00000003;

// Constants for enum swsRigidConnectorEndEditError_e
type
  swsRigidConnectorEndEditError_e = TOleEnum;
const
  swsRigidConnectorEndEditErrorSuccessful = $00000000;
  swsRigidConnectorEndEditErrorNoEntityAtIndex = $00000001;
  swsRigidConnectorEndEditErrorEntityAlreadyAdded = $00000002;
  swsRigidConnectorEndEditErrorSelectTargetEntityOrFaces = $00000003;
  swsRigidConnectorEndEditErrorSelectFace = $00000004;
  swsRigidConnectorEndEditErrorIndexTooBig = $00000005;
  swsRigidConnectorEndEditErrorHasBeamBody = $00000006;
  swsRigidConnectorEndEditErrorHasMassBody = $00000007;
  swsRigidConnectorEndEditErrorFacesOnSameComponent = $00000008;
  swsRigidConnectorEndEditErrorBodyExcludedFromAnalysis = $00000009;
  swsRigidConnectorEndEditErrorNullEntity = $0000000A;

// Constants for enum swsMaterialErrorWarning_e
type
  swsMaterialErrorWarning_e = TOleEnum;
const
  swsMaterialErrorWarningSuccessful = $00000000;
  swsMaterialErrorWarningInvalidLinearElasticAnisotropicMaterialModel = $00000001;
  swsMaterialErrorWarningInvalidMaterialModel = $00000002;
  swsMaterialErrorWarningFatigueSNCurvesCycles = $00000003;
  swsMaterialErrorWarningUniqueStressRatioForEachSNCurve = $00000004;
  swsMaterialErrorWarningTooManyPointsSNCurve = $00000005;
  swsMaterialErrorWarningDefineProperty = $00000006;
  swsMaterialErrorWarningMaterialPropertyValue = $00000007;
  swsMaterialErrorWarningEXNotDefined = $00000008;
  swsMaterialErrorWarningEXValue = $00000009;
  swsMaterialErrorWarningDefineCurveForEx = $0000000A;
  swsMaterialErrorWarningMaterialTemperatureCurveForNitinol = $0000000B;
  swsMaterialErrorWarningNUXYValue = $0000000C;
  swsMaterialErrorWarningDensityNotDefined = $0000000D;
  swsMaterialErrorWarningrKXNotDefined = $0000000E;
  swsMaterialErrorWarningDefineStressStrainCurve = $0000000F;
  swsMaterialErrorWarningDefinePointForStressStrainCurve = $00000010;
  swsMaterialErrorWarningSIGT_S1_F1_S2_F2Values = $00000011;
  swsMaterialErrorWarningSIGT_S1LessThanSIGT_F1 = $00000012;
  swsMaterialErrorWarningSIGT_S2LessThanSIGT_F1 = $00000013;
  swsMaterialErrorWarningSIGT_F2LessThanSIGT_S2 = $00000014;
  swsMaterialErrorWarningSIGC_S1LessThanSIGC_F1 = $00000015;
  swsMaterialErrorWarningSIGC_S2LessThanSIGC_F1 = $00000016;
  swsMaterialErrorWarningSIGC_F2LessThanSIGC_S2 = $00000017;
  swsMaterialErrorWarningCreepWithForceControl = $00000018;
  swsMaterialErrorWarningMaterialTemperatureDependencyIgnored = $0000001E;
  swsMaterialErrorWarningOnlyBilinearPlasticityForDropTestStudies = $0000001F;
  swsMaterialErrorWarningNUXYNotDefined = $00000020;

// Constants for enum swsShellEndEditError_e
type
  swsShellEndEditError_e = TOleEnum;
const
  swsShellEndEditErrorSuccessful = $00000000;
  swsShellEndEditErrorShellThickness = $00000001;
  swsShellEndEditErrorFormulation = $00000002;
  swsShellEndEditErrorNotEntityAtIndex = $00000003;
  swsShellEndEditErrorSelectFace = $00000004;
  swsShellEndEditErrorFaceAlreadyExists = $00000005;
  swsShellEndEditErrorFaceAlreadyDefinedAsShell = $00000006;
  swsShellEndEditErrorNoEntitySelected = $00000007;
  swsShellEndEditErrorUnit = $00000008;
  swsShellEndEditErrorOffsetOption = $00000009;
  swsShellEndEditErrorOffsetValue = $0000000A;

// Constants for enum swsShellFormulation_e
type
  swsShellFormulation_e = TOleEnum;
const
  swsShellFormulationThin = $00000000;
  swsShellFormulationThick = $00000001;

// Constants for enum swsShellManagerError_e
type
  swsShellManagerError_e = TOleEnum;
const
  swsShellManagerErrorSuccessful = $00000000;
  swsShellManagerErrorCannotApplyShellForStudy = $00000001;
  swsShellManagerErrorCannotApplyShellForMesh = $00000002;
  swsShellManagerErrorEmptyArray = $00000003;
  swsShellManagerErrorInvalidArray = $00000004;
  swsShellManagerErrorSelectFacesOnly = $00000005;
  swsShellManagerErrorFaceAlreadyDefinedAsShell = $00000006;
  swsShellManagerErrorFaceAlreadyExists = $00000007;

// Constants for enum swsSpotWeldConnectorEndEditError_e
type
  swsSpotWeldConnectorEndEditError_e = TOleEnum;
const
  swsSpotWeldConnectorEndEditErrorSuccessful = $00000000;
  swsSpotWeldConnectorEndEditErrorNullEntity = $00000001;
  swsSpotWeldConnectorEndEditErrorEntityAlreadyExists = $00000002;
  swsSpotWeldConnectorEndEditErrorFaceIsEmpty = $00000003;
  swsSpotWeldConnectorEndEditErrorSelectParallelFaces = $00000005;
  swsSpotWeldConnectorEndEditErrorPlanesShouldTouch = $00000006;
  swsSpotWeldConnectorEndEditErrorGapTooBig = $00000007;
  swsSpotWeldConnectorEndEditErrorSelectDatumPoints = $00000008;
  swsSpotWeldConnectorEndEditErrorPositiveStudDiameter = $00000009;
  swsSpotWeldConnectorEndEditErrorStudDiameter = $0000000A;
  swsSpotWeldConnectorEndEditErrorHasBeamBody = $0000000B;
  swsSpotWeldConnectorEndEditErrorHasMassElement = $0000000C;
  swsSpotWeldConnectorEndEditErrorSpotWeldDiameter = $0000000D;
  swsSpotWeldConnectorEndEditErrorIndexTooBig = $0000000E;
  swsSpotWeldConnectorEndEditErrorNoEntityAtIndex = $0000000F;
  swsSpotWeldConnectorEndEditErrorSelectFace = $00000010;
  swsSpotWeldConnectorEndEditErrorInvalidPoints = $00000011;
  swsSpotWeldConnectorEndEditErrorBodyExcludedFromAnalysis = $00000012;

// Constants for enum swsSpringType_e
type
  swsSpringType_e = TOleEnum;
const
  swsSpringTypeCompressionExtension = $00000000;
  swsSpringTypeCompression = $00000001;
  swsSpringTypeExtension = $00000002;

// Constants for enum swsSpringSubType_e
type
  swsSpringSubType_e = TOleEnum;
const
  swsSpringSubTypeFlatParallelFaces = $00000000;
  swsSpringSubTypeConcentricCylindricalFaces = $00000001;
  swsSpringSubTypeBetweenVertices = $00000002;

// Constants for enum swsSpringConnectorEndEditError_e
type
  swsSpringConnectorEndEditError_e = TOleEnum;
const
  swsSpringConnectorEndEditErrorSuccessful = $00000000;
  swsSpringConnectorEndEditErrorNoEntity = $00000001;
  swsSpringConnectorEndEditErrorSelectFace = $00000002;
  swsSpringConnectorEndEditErrorSelectPlanarFace = $00000003;
  swsSpringConnectorEndEditErrorSelectTwoParallelPlanarFaces = $00000004;
  swsSpringConnectorEndEditErrorSelectFaceWithCylindricalSurface = $00000005;
  swsSpringConnectorEndEditErrorSelectConcentricCylindricalFaces = $00000006;
  swsSpringConnectorEndEditErrorRadiiNotEqual = $00000007;
  swsSpringConnectorEndEditErrorNormalTangentialOrRotationalStiffness = $00000008;
  swsSpringConnectorEndEditErrorStiffness = $00000009;
  swsSpringConnectorEndEditErrorSelectDatumPointOrVertex = $0000000A;
  swsSpringConnectorEndEditErrorEntityAlreadyExists = $0000000B;
  swsSpringConnectorEndEditErrorNoEntityAtIndex = $0000000C;
  swsSpringConnectorEndEditErrorIndexInvalidForRemovalOfEntity = $0000000D;
  swsSpringConnectorEndEditErrorHasBeamBody = $0000000E;
  swsSpringConnectorEndEditErrorHasMassElement = $0000000F;
  swsSpringConnectorEndEditErrorSelectionsBelongToSameBody = $00000010;
  swsSpringConnectorEndEditErrorNullEntity = $00000011;
  swsSpringConnectorEndEditErrorBodyExcludedFromAnalysis = $00000012;

// Constants for enum swsPreLoadForceType_e
type
  swsPreLoadForceType_e = TOleEnum;
const
  swsPreLoadForceTypeCompression = $00000000;
  swsPreLoadForceTypeTension = $00000001;

// Constants for enum swsStudyMeshError_e
type
  swsStudyMeshError_e = TOleEnum;
const
  swsStudyErrorSuccessful = $00000000;
  swsStudyErrorNoValidShells = $00000001;
  swsStudyErrorNoSolidBody = $00000002;
  swsStudyErrorElementSizeTooSmall = $00000003;
  swsStudyErrorElementSizeTooBig = $00000004;
  swsStudyErrorSpecifyPositiveValue = $00000005;
  swsStudyErrorSpecifyElementSizeScaleFactor = $00000006;
  swsStudyErrorSpecifyToleranceScaleFactor = $00000007;

// Constants for enum swsRunAnalysisError_e
type
  swsRunAnalysisError_e = TOleEnum;
const
  swsRunAnalysisErrorSuccessful = $00000000;
  swsRunAnalysisErrorUseHighQualityMesh = $00000001;
  swsRunAnalysisErrorDefineRigidVirtualWallContact = $00000002;
  swsRunAnalysisDefineInitialTemperature = $00000003;
  swsRunAnalysisErrorMultipleLoadsUseSameTimeCurve = $00000004;
  swsRunAnalysisErrorSetUpDropTestStudy = $00000005;
  swsRunAnalysisErrorNeedOneOrMoreStaticStudies = $00000006;
  swsRunAnalysisErrorNoFatigueEvent = $00000007;
  swsRunAnalysisErrorTimeDependentOrAmplitideOnlyLoads = $00000008;
  swsRunAnalysisErrorNoSNCurve = $00000009;
  swsRunAnalysisErrorMeshNotIdentical = $0000000B;
  swsRunAnalysisErrorNoValidShell = $0000000C;
  swsRunAnalysisErrorEXMaterialPropertyNotDefined = $0000000D;
  swsRunAnalysisErrorEXValue = $0000000E;
  swsRunAnalysisErrorPoissonsRatio = $0000000F;
  swsRunAnalysisErrorThermalConductivityNotDefined = $00000010;
  swsRunAnalysisErrorRemoveOrChangeCreep = $00000011;
  swsRunAnalysisErrorMaterialNotDefinedForShells = $00000012;
  swsRunAnalysisErrorMaterialNotDefined = $00000013;
  swsRunAnalysisErrorMaterialNotDefinedForComponents = $00000014;
  swsRunAnalysisErrorNoSolidBody = $00000015;
  swsRunAnalysisErrorAuthorizationFailed = $00000016;
  swsRunAnalysisErrorMeshNotFound = $00000017;
  swsRunAnalysisErrorAnalysisFailed = $00000018;

// Constants for enum swsNonLinearStudyOptionsError_e
type
  swsNonLinearStudyOptionsError_e = TOleEnum;
const
  swsNonLinearStudyOptionsErrorSuccessful = $00000000;
  swsNonLinearStudyOptionsErrorStartEndStepsAndIncrement = $00000001;
  swsNonLinearStudyOptionsErrorAutoSteppingParameters = $00000002;
  swsNonLinearStudyOptionsErrorStartTimeLessThanEndTime = $00000003;
  swsNonLinearStudyOptionsErrorSolutionSteps = $00000004;
  swsNonLinearStudyOptionsErrorSelectVerticesOrDatumPoint = $00000005;
  swsNonLinearStudyOptionsErrorSelectDisplacementControlType = $00000006;
  swsNonLinearStudyOptionsErrorSelectArcLengthControlType = $00000007;
  swsNonLinearStudyOptionsErrorSelectTimeCurve = $00000008;
  swsNonLinearStudyOptionsErrorSelectDirectSolver = $00000009;
  swsNonLinearStudyOptionsErrorSelectForceControl = $0000000A;
  swsNonLinearStudyOptionsErrorWrongArcLengthUnit = $0000000B;
  swsNonLinearStudyOptionsErrorEmptyDispatch = $0000000C;
  swsNonLinearStudyTimeCurveErrorInvalidStudyType = $0000000D;
  swsNonLinearStudyInvalidDisplaceComponentValue = $0000000E;
  swsNonLinearStudyInvalidDisplaceComponentUnitValue = $0000000F;
  swsNonLinearStudyInvalidArcLengthMultiplierValue = $00000010;
  swsNonLinearStudyInvalidArcLengthMaximumDisplacementValue = $00000011;
  swsNonLinearStudyInvalidArcLengthMaximumLoadValue = $00000012;
  swsNonLinearStudyInvalidArcLengthStepsValue = $00000013;
  swsNonLinearStudyInvalidSingularityEliminationfactorValue = $00000014;

// Constants for enum swsAnalysisStudyType_e
type
  swsAnalysisStudyType_e = TOleEnum;
const
  swsAnalysisStudyTypeStatic = $00000000;
  swsAnalysisStudyTypeFrequency = $00000001;
  swsAnalysisStudyTypeBuckling = $00000002;
  swsAnalysisStudyTypeThermal = $00000003;
  swsAnalysisStudyTypeOptimization = $00000004;
  swsAnalysisStudyTypeNonlinear = $00000005;
  swsAnalysisStudyTypeDropTest = $00000006;
  swsAnalysisStudyTypeFatigue = $00000007;
  swsAnalysisStudyTypeDynamic = $00000008;
  swsAnalysisStudyTypePressureVessel = $00000009;

// Constants for enum swsDynamicAnalysisSubType_e
type
  swsDynamicAnalysisSubType_e = TOleEnum;
const
  swsDynamicAnalysisSubTypeTransient = $00000000;
  swsDynamicAnalysisSubTypeHarmonic = $00000001;
  swsDynamicAnalysisSubTypeRandom = $00000002;
  swsDynamicAnalysisSubTypeResponse = $00000003;

// Constants for enum swsFatigueStudySubOption_e
type
  swsFatigueStudySubOption_e = TOleEnum;
const
  swsFatigueConstantAmplitude = $00000000;
  swsFatigueVariableAmplitude = $00000001;

// Constants for enum swsStudyError_e
type
  swsStudyError_e = TOleEnum;
const
  swsNewStudyErrorSuccessful = $00000000;
  swsNewStudyErrorNoSolidBody = $00000001;
  swsNewStudyErrorSameNameStudyExistsOrInvalidStudyName = $00000002;
  swsNewStudyErrorTypeNotDefined = $00000003;
  swsNewStudyErrorInvalidMeshType = $00000004;
  swsNewStudyErrorInvalidStudySubOption = $00000005;

// Constants for enum swsTemperatureEndEditError_e
type
  swsTemperatureEndEditError_e = TOleEnum;
const
  swsTemperatureEndEditErrorSuccessful = $00000000;
  swsTemperatureEndEditErrorNoEntityAtIndex = $00000001;
  swsTemperatureEndEditErrorEntityAlreadyExists = $00000002;
  swsTemperatureEndEditErrorNoEntities = $00000003;
  swsTemperatureEndEditErrorSelectVerticesEdgesFacesComponentsOrBodies = $00000004;
  swsTemperatureEndEditErrorCannotSetInitialTemperatureType = $00000005;

// Constants for enum swsTemperatureType_e
type
  swsTemperatureType_e = TOleEnum;
const
  swsTemperatureTypeInital = $00000000;
  swsTemperatureTypeFixed = $00000001;

// Constants for enum swsThermalRelaxationFactor_e
type
  swsThermalRelaxationFactor_e = TOleEnum;
const
  swsThermalRelaxationFactorAutomatic = $00000000;
  swsThermalRelaxationFactorFixed = $00000001;

// Constants for enum swsThermalSolutionType_e
type
  swsThermalSolutionType_e = TOleEnum;
const
  swsThermalSolutionTypeTransient = $00000000;
  swsThermalSolutionTypeSteadyState = $00000001;

// Constants for enum swsRestraintEndEditError_e
type
  swsRestraintEndEditError_e = TOleEnum;
const
  swsRestraintEndEditErrorSuccess = $00000000;
  swsRestraintEndEditErrorNoIndex = $00000001;
  swsRestraintEndEditErrorEntityExists = $00000002;
  swsRestraintEndEditErrorNoEntity = $00000003;
  swsRestraintEndEditErrorSelectFaceEdgeOrVertices = $00000004;
  swsRestraintEndEditErrorSelectFaces = $00000005;
  swsRestraintEndEditErrorSelectCylindricalFaces = $00000006;
  swsRestraintEndEditErrorSelectSphericalFaces = $00000007;
  swsRestraintEndEditErrorSelectFaceEdgeVertexOrFaces = $00000008;
  swsRestraintEndEditErrorSelectPlaneAxisEdgeFaceOrCylinder = $00000009;
  swsRestraintEndEditErrorCyclicSymmetryRestraint = $0000000A;
  swsRestraintEndEditErrorSelectTwoFaces = $0000000B;
  swsRestraintEndEditErrorSelectAxis = $0000000C;
  swsRestraintEndEditErrorDefineDisplacementComponent = $0000000D;
  swsRestraintEndEditErrorCannotRestrainRefGeometryEntity = $0000000E;

// Constants for enum swsRestraintError_e
type
  swsRestraintError_e = TOleEnum;
const
  swsRestraintErrorSuccess = $00000000;
  swsRestraintErrorSelectFacesEdgesOrVertices = $00000001;
  swsRestraintErrorSelectPlanarFace = $00000002;
  swsRestraintErrorSpecifyCylindricalFace = $00000003;
  swsRestraintErrorSpecifySphericalFace = $00000004;
  swsRestraintErrorSpecifyFaceEdgePlaneOrAxis = $00000006;
  swsRestraintErrorSelectFace = $00000007;
  swsRestraintErrorInMeshType = $00000008;
  swsRestraintErrorInvalidStudyType = $00000009;
  swsRestraintErrorNoEntities = $0000000A;
  swsRestraintErrorInvalidArray = $0000000B;
  swsRestraintErrorSpecifyTwoFacesOneAxis = $0000000C;
  swsRestraintErrorInvalidRestraintType = $0000000D;
  swsRestraintErrorCannotApplyRestraint = $0000000E;
  swsRestraintErrorInvalidMesh = $0000000F;

// Constants for enum swsCoordinateType_e
type
  swsCoordinateType_e = TOleEnum;
const
  swsCoordinateTypeCartesian = $00000001;
  swsCoordinateTypeSpherical = $00000002;
  swsCoordinateTypeCylindrical = $00000003;

// Constants for enum swsContactSetError_e
type
  swsContactSetError_e = TOleEnum;
const
  swsContactSetErrorSuccess = $00000000;
  swsContactSetErrorInvalidArray = $00000001;
  swsContactSetErrorNoEntities = $00000002;
  swsContactSetErrorInvalidType = $00000003;
  swsContactSetErrorSpecifyFacesEdgesOrVertices = $00000004;
  swsContactSetErrorSelectOneTargetPlane = $00000005;
  swsContactSetErrorSelectOnlyFaces = $00000006;
  swsContactSetErrorFaceForSourceAndTarget = $00000007;
  swsContactSetErrorVerticesEdgesForBondingSurfaceContacts = $00000008;
  swsContactSetErrorSourceTargetFacesMustTouch = $00000009;
  swsContactSetErrorBondedContactForTouchingFaces = $0000000A;
  swsContactSetErrorShrinkFitNeedsIntereference = $0000000B;
  swsContactSetErrorCannotCreateContactPair = $0000000C;

// Constants for enum swsBeamStressComponent_e
type
  swsBeamStressComponent_e = TOleEnum;
const
  swsBeamStressComponentAxial = $00000000;
  swsBeamStressComponentBendingLocalDir1 = $00000001;
  swsBeamStressComponentBendingLocalDir2 = $00000002;
  swsBeamStressComponentWorstCase = $00000003;

// Constants for enum swsCreateAnalysisDatabaseError_e
type
  swsCreateAnalysisDatabaseError_e = TOleEnum;
const
  swsCreateAnalysisDBSuccessful = $00000000;
  swsCreateAnalysisDBUseHighQualityMesh = $00000001;
  swsCreateAnalysisDBDefineRigidVirtualWallContact = $00000002;
  swsCreateAnalysisDBDefineInitialTemperature = $00000003;
  swsCreateAnalysisDBMultipleLoadsUseSameTimeCurve = $00000004;
  swsCreateAnalysisDBSetUpDropTestStudy = $00000005;
  swsCreateAnalysisDBNeedOneOrMoreStaticStudies = $00000006;
  swsCreateAnalysisDBNoFatigueEvent = $00000007;
  swsCreateAnalysisDBTimeDependentOrAmplitideOnlyLoads = $00000008;
  swsCreateAnalysisDBNoSNCurve = $00000009;
  swsCreateAnalysisDBMeshNotIdentical = $0000000B;
  swsCreateAnalysisDBNoValidShell = $0000000C;
  swsCreateAnalysisDBEXMaterialPropertyNotDefined = $0000000D;
  swsCreateAnalysisDBEXValue = $0000000E;
  swsCreateAnalysisDBPoissonsRatio = $0000000F;
  swsCreateAnalysisDBThermalConductivityNotDefined = $00000010;
  swsCreateAnalysisDBRemoveOrChangeCreep = $00000011;
  swsCreateAnalysisDBMaterialNotDefinedForShells = $00000012;
  swsCreateAnalysisDBMaterialNotDefined = $00000013;
  swsCreateAnalysisDBMaterialNotDefinedForComponents = $00000014;
  swsCreateAnalysisDBNoSolidBody = $00000015;
  swsCreateAnalysisDBAuthorizationFailed = $00000016;
  swsCreateAnalysisDBMeshFailed = $00000017;
  swsCreateAnalysisDBFailed = $00000018;

// Constants for enum swsConnectAnalysisDatabaseError_e
type
  swsConnectAnalysisDatabaseError_e = TOleEnum;
const
  swsConnectAnalysisDatabaseErrorSuccess = $00000000;
  swsConnectAnalysisDatabaseErrorFailed = $00000001;
  swsConnectAnalysisDatabaseErrorInvalidPath = $00000002;
  swsConnectAnalysisDatabaseErrorInvalidResults = $00000003;

// Constants for enum swsBeamType_e
type
  swsBeamType_e = TOleEnum;
const
  swsBeamTypeBeam = $00000000;
  swsBeamTypeTruss = $00000001;

// Constants for enum swsBeamBodyManualConnectionType_e
type
  swsBeamBodyManualConnectionType_e = TOleEnum;
const
  swsBeamBodyManualConnectionHinge1stDirection = $00000000;
  swsBeamBodyManualConnectionHinge2ndDirection = $00000001;
  swsBeamBodyManualConnectionHingeAlongBeam = $00000002;
  swsBeamBodyManualConnectionSlide1stDireciton = $00000003;
  swsBeamBodyManualConnectionSlide2ndDirection = $00000004;
  swsBeamBodyManualConnectionSlideAlongBeam = $00000005;

// Constants for enum swsBeamBodyConnectionType_e
type
  swsBeamBodyConnectionType_e = TOleEnum;
const
  swsBeamBodyConnectionRigid = $00000000;
  swsBeamBodyConnectionPin = $00000001;
  swsBeamBodyConnectionSlide = $00000002;
  swsBeamBodyConnectionManual = $00000003;

// Constants for enum swsBeamForceType_e
type
  swsBeamForceType_e = TOleEnum;
const
  swsBeamForceAxial = $00000000;
  swsBeamForceShearDirection1 = $00000001;
  swsBeamForceShearDirection2 = $00000002;
  swsBeamForceMomentDirection1 = $00000003;
  swsBeamForceMomentDirection2 = $00000004;
  swsBeamForceTorque = $00000005;

// Constants for enum swsBeamStressType_e
type
  swsBeamStressType_e = TOleEnum;
const
  swsBeamStressAxial = $00000000;
  swsBeamStressBendingDirection1 = $00000001;
  swsBeamStressBendingDirection2 = $00000002;
  swsBeamStressTorsional = $00000003;
  swsBeamStressWorstCase = $00000004;

// Constants for enum swsSelectionType_e
type
  swsSelectionType_e = TOleEnum;
const
  swsSelectionFaceEdgeVertexPoint = $00000000;
  swsSelectionBeamEndJoints = $00000001;
  swsSelectionBeams = $00000002;

// Constants for enum swsPinballUnit_e
type
  swsPinballUnit_e = TOleEnum;
const
  swsPinballmm = $00000000;
  swsPInballcm = $00000001;
  swsPinballm = $00000002;
  swsPinballin = $00000003;
  swsPinballft = $00000004;
  swsPinballftin = $00000005;
  swsPinballam = $00000006;
  swsPinaballnm = $00000007;
  swsPinballmicron = $00000008;
  swsPinballmil = $00000009;
  swsPinballmicronIn = $0000000A;

// Constants for enum swsBeamNonUniformLoadDef_e
type
  swsBeamNonUniformLoadDef_e = TOleEnum;
const
  swsTotalLoad = $00000000;
  swsCentralLoad = $00000001;
  swsTableDrivenLoad = $00000002;

// Constants for enum swsBeamNonUniformLoadType_e
type
  swsBeamNonUniformLoadType_e = TOleEnum;
const
  swsTriangularLoad = $00000000;
  swsParabolicLoad = $00000001;
  swsEllipticalLoad = $00000002;

// Constants for enum swsTableDrivenInterpolationType_e
type
  swsTableDrivenInterpolationType_e = TOleEnum;
const
  swsLinear = $00000000;
  swsCubic = $00000001;

// Constants for enum swsTableDrivenDistOption_e
type
  swsTableDrivenDistOption_e = TOleEnum;
const
  swsPercentage = $00000000;
  swsDistance = $00000001;

// Constants for enum swsNonLinearOptionControlMethodType_e
type
  swsNonLinearOptionControlMethodType_e = TOleEnum;
const
  swsNonLinearControl_Force = $00000000;
  swsNonLinearControl_Displacement = $00000001;
  swsNonLinearControl_ArcLength = $00000002;

// Constants for enum swsNonLinearOptionIterativeMethodType_e
type
  swsNonLinearOptionIterativeMethodType_e = TOleEnum;
const
  swsNonLinearIterative_ModifiedNewtonRaphson = $00000000;
  swsNonLinearIterative_NewtonRaphson = $00000001;

// Constants for enum swsNonLinearOptionIntegrationMethodType_e
type
  swsNonLinearOptionIntegrationMethodType_e = TOleEnum;
const
  swsNonLinearIntegration_Newmark = $00000000;
  swsNonLinearIntegration_WilsonTheta = $00000001;
  swsNonLinearIntegration_CentralDifference = $00000002;

// Constants for enum swsShellOffsetOption_e
type
  swsShellOffsetOption_e = TOleEnum;
const
  swsShellOffsetOption_Middle = $00000000;
  swsShellOffsetOption_Top = $00000001;
  swsShellOffsetOption_Bottom = $00000002;
  swsShellOffsetOption_SpecifyRatio = $00000003;

// Constants for enum swsBaseExcitationType_e
type
  swsBaseExcitationType_e = TOleEnum;
const
  swsBaseExcitationType_Displacement = $00000000;
  swsBaseExcitationType_Velocity = $00000001;
  swsBaseExcitationType_Acceleration = $00000002;

// Constants for enum swsDynamicInitialConditionType_e
type
  swsDynamicInitialConditionType_e = TOleEnum;
const
  swsDynamicInitialConditionType_Displacement = $00000000;
  swsDynamicInitialConditionType_Velocity = $00000001;
  swsDynamicInitialConditionType_Acceleration = $00000002;

// Constants for enum swsRemoteLoadType_e
type
  swsRemoteLoadType_e = TOleEnum;
const
  swsRemoteLoadType_DirectLoad = $00000000;
  swsRemoteLoadType_RigidLoadOrMass = $00000001;
  swsRemoteLoadType_RigidDisplacement = $00000002;
  swsRemoteLoadType_DirectDisplacement = $00000003;

// Constants for enum swsBaseExcitationEndEditError_e
type
  swsBaseExcitationEndEditError_e = TOleEnum;
const
  swsBaseExcitationError_NoError = $00000000;
  swsBaseExcitationError_NotAvailableForThisStudy = $00000001;
  swsBaseExcitationError_InvalidExcitationType = $00000002;
  swsBaseExcitationError_ExcitationTypeNotAvailable = $00000003;
  swsBaseExcitationError_NoProperFixtures = $00000004;
  swsBaseExcitationError_InvalidFixtureNameOrEntity = $00000005;
  swsBaseExcitationError_ImproperUnits = $00000006;
  swsBaseExcitationError_SelectAtleastOneDirection = $00000007;
  swsBaseExcitationError_SelectOnlyOneDirection = $00000008;
  swsBaseExcitationError_SelectOnlyThirdDirection = $00000009;
  swsBaseExcitationError_SelectAtleastOneDirectionOfThatInRestraint = $0000000A;
  swsBaseExcitationError_InvalidValue = $0000000B;

// Constants for enum swsDropTestSetUpError_e
type
  swsDropTestSetUpError_e = TOleEnum;
const
  swsDropTestSetUpError_NoError = $00000000;
  swsDropTestSetUpError_AvailableOnlyForDropTestStudy = $00000001;
  swsDropTestSetUpError_SetUpAlreadyAdded = $00000002;
  swsDropTestSetUpError_GravityEntityIsNULL = $00000003;
  swsDropTestSetUpError_GravityEntityShouldBeEdgeFaceOrPlane = $00000004;
  swsDropTestSetUpError_ShouldBeStraightEdgeOrPlaneFace = $00000005;
  swsDropTestSetUpError_SetupNotExists = $00000006;

// Constants for enum swsRemoteLoadEndEditError_e
type
  swsRemoteLoadEndEditError_e = TOleEnum;
const
  swsRemoteLoadEndEditError_NoError = $00000000;
  swsRemoteLoadEndEditError_SelectFaceEdgeOrVertex = $00000001;
  swsRemoteLoadEndEditError_SelectCoordinateSystem = $00000002;
  swsRemoteLoadEndEditError_InvalidLoadType = $00000003;
  swsRemoteLoadEndEditError_InvalidStudyType = $00000004;
  swsRemoteLoadEndEditError_InvalidArray = $00000005;
  swsRemoteLoadEndEditError_EmptyArray = $00000006;
  swsRemoteLoadEndEditError_EntityAlreadyAdded = $00000007;
  swsRemoteLoadEndEditError_InvalidUnits = $00000008;
  swsRemoteLoadEndEditError_InvalidMassArray = $00000009;
  swsRemoteLoadEndEditError_InvalidMass = $0000000A;
  swsRemoteLoadEndEditError_CheckAtleastOneComp = $0000000B;

// Constants for enum swsDistributedMassError_e
type
  swsDistributedMassError_e = TOleEnum;
const
  swsDistributedMassError_NoError = $00000000;
  swsDistributedMassError_NotAvailable = $00000001;
  swsDistributedMassError_ImproperEntities = $00000002;
  swsDistributedMassError_SelectOnlyFaces = $00000003;
  swsDistributedMassError_InvalidUnits = $00000004;
  swsDistributedMassError_InvalidMass = $00000005;

// Constants for enum swsDynamicInitialConditionError_e
type
  swsDynamicInitialConditionError_e = TOleEnum;
const
  swsDynamicInitialConditionError_NoError = $00000000;
  swsDynamicInitialConditionError_NotAvailable = $00000001;
  swsDynamicInitialConditionError_InvalidEntityArray = $00000002;
  swsDynamicInitialConditionError_SelectOnlyJoints = $00000003;
  swsDynamicInitialConditionError_SelectOnlyBeams = $00000004;
  swsDynamicInitialConditionError_NoFacesOnBeamsAllowed = $00000005;
  swsDynamicInitialConditionError_SelectOnlyFaceBodyOrComps = $00000006;
  swsDynamicInitialConditionError_InvalidRefGeom = $00000007;
  swsDynamicInitialConditionError_RefGeomAlreadySelected = $00000008;
  swsDynamicInitialConditionError_OnlyEdgePlaneOrFaceForReference = $00000009;
  swsDynamicInitialConditionError_OnlyFlatFaceOrStraightEdge = $0000000A;
  swsDynamicInitialConditionError_InvalidType = $0000000B;
  swsDynamicInitialConditionError_CheckAtleastOneComp = $0000000C;
  swsDynamicInitialConditionError_AllValuesZero = $0000000D;
  swsDynamicInitialConditionError_CheckOnlyThirdComp = $0000000E;

// Constants for enum swsPVResultCombinationError_e
type
  swsPVResultCombinationError_e = TOleEnum;
const
  swsPVResultCombinationError_NoError = $00000000;
  swsPVResultCombinationError_NotAvailable = $00000001;
  swsPVResultCombinationError_AtleastTwoItemsNeeded = $00000002;
  swsPVResultCombinationError_StudyNamesNotProper = $00000003;
  swsPVResultCombinationError_ItemsNotSameInNumber = $00000004;
  swsPVResultCombinationError_InvalidFactors = $00000005;
  swsPVResultCombinationError_InvalidStudy = $00000006;
  swsPVResultCombinationError_CombineAnalysisNotDone = $00000007;
  swsPVResultCombinationError_CombineIncompatibleResults = $00000008;
  swsPVResultCombinationError_CombineIncompatibleMesh = $00000009;
  swsPVResultCombinationError_CombineIncompatibleConfiguration = $0000000A;
  swsPVResultCombinationError_CombineIncompatibleRestraints = $0000000B;
  swsPVResultCombinationError_CombineIncompatibleSolidsMaterials = $0000000C;
  swsPVResultCombinationError_CombineIncompatibleShellsMaterials = $0000000D;
  swsPVResultCombinationError_CombineIncompatibleContact = $0000000E;
  swsPVResultCombinationError_CombineIncompatibleConnectors = $0000000F;
  swsPVResultCombinationError_CombineIncompatiblePlanarType = $00000010;

// Constants for enum swsSetDampingRatiosError_e
type
  swsSetDampingRatiosError_e = TOleEnum;
const
  swsSetDampingRatiosError_NoError = $00000000;
  swsSetDampingRatiosError_NotAvailable = $00000001;
  swsSetDampingRatiosError_InvalidRows = $00000002;
  swsSetDampingRatiosError_InvalidArray = $00000003;
  swsSetDampingRatiosError_InCorrectValues = $00000004;
  swsSetDampingRatiosError_OptionsNotAvailable = $00000005;

// Constants for enum swsShellFace_e
type
  swsShellFace_e = TOleEnum;
const
  swsShellFace_Top = $00000000;
  swsShellFace_Bottom = $00000001;
  swsShellFace_Membrane = $00000002;
  swsShellFace_Bending = $00000003;

// Constants for enum swsPVResultCombinationType_e
type
  swsPVResultCombinationType_e = TOleEnum;
const
  swsPVResultCombinationType_Linear = $00000000;
  swsPVResultCombinationType_SRSS = $00000001;

// Constants for enum swsDampingType_e
type
  swsDampingType_e = TOleEnum;
const
  swsDampingType_Modal = $00000000;
  swsDampingType_Rayleigh = $00000001;

// Constants for enum swsSaveResultsOption_e
type
  swsSaveResultsOption_e = TOleEnum;
const
  swsSaveResultsOption_ForAllSolutionSteps = $00000000;
  swsSaveResultsOption_ForSpecifiedSolutionSteps = $00000001;

// Constants for enum swsResultsDisplacementAndVelocityOption_e
type
  swsResultsDisplacementAndVelocityOption_e = TOleEnum;
const
  swsResultsDisplacementAndVelocityOption_None = $FFFFFFFF;
  swsResultsDisplacementAndVelocityOption_Relative = $00000000;
  swsResultsDisplacementAndVelocityOption_Absolute = $00000001;

// Constants for enum swsResultOptionsSensorOption_e
type
  swsResultOptionsSensorOption_e = TOleEnum;
const
  swsResultOptionsSensorOption_None = $FFFFFFFF;
  swsResultOptionsSensorOption_AllTrackedDataSensors = $00000000;
  swsResultOptionsSensorOption_SpecificSensor = $00000001;

// Constants for enum swsIncompatibleBondingOption_e
type
  swsIncompatibleBondingOption_e = TOleEnum;
const
  swsIncompatibleBondingOption_Automatic = $00000000;
  swsIncompatibleBondingOption_Simplified = $00000001;
  swsIncompatibleBondingOption_MoreAccurate = $00000002;

// Constants for enum swsTimeIntegrationMethod_e
type
  swsTimeIntegrationMethod_e = TOleEnum;
const
  swsTimeIntegrationMethod_Newmark = $00000000;
  swsTimeIntegrationMethod_WilsonTheta = $00000001;

// Constants for enum swsInterpolationType_e
type
  swsInterpolationType_e = TOleEnum;
const
  swsInterpolationType_Logarithmic = $00000000;
  swsInterpolationType_Linear = $00000001;

// Constants for enum swsRandomVibrationCorrelationOption_e
type
  swsRandomVibrationCorrelationOption_e = TOleEnum;
const
  swsRandomVibrationCorrelationOption_FullyCorrelated = $00000000;
  swsRandomVibrationCorrelationOption_FullyUnCorrelated = $00000001;
  swsRandomVibrationCorrelationOption_PartiallyCorrelated = $00000002;

// Constants for enum swsRandomVibrationAnalysisMethod_e
type
  swsRandomVibrationAnalysisMethod_e = TOleEnum;
const
  swsRandomVibrationAnalysisMethod_Standard = $00000000;
  swsRandomVibrationAnalysisMethod_Approximate = $00000001;

// Constants for enum swsGaussIntegrationOrder_e
type
  swsGaussIntegrationOrder_e = TOleEnum;
const
  swsGaussIntegrationOrder_2Pt = $00000000;
  swsGaussIntegrationOrder_3Pt = $00000001;

// Constants for enum swsModeCombinationMethod_e
type
  swsModeCombinationMethod_e = TOleEnum;
const
  swsModeCombinationMethod_SRSS = $00000000;
  swsModeCombinationMethod_AbsSum = $00000001;
  swsModeCombinationMethod_CQC = $00000002;
  swsModeCombinationMethod_NRL = $00000003;

// Constants for enum swsEnvelopePlotType_e
type
  swsEnvelopePlotType_e = TOleEnum;
const
  swsEnvelopePlotType_Maximum = $00000000;
  swsEnvelopePlotType_Minimum = $00000001;
  swsEnvelopePlotType_AbsoluteMaximum = $00000002;

// Constants for enum swsDropType_e
type
  swsDropType_e = TOleEnum;
const
  swsDropType_DropHeight = $00000000;
  swsDropType_VelocityAtImpact = $00000001;

// Constants for enum swsDropHeightType_e
type
  swsDropHeightType_e = TOleEnum;
const
  swsDropHeightType_FromCentroid = $00000000;
  swsDropHeightType_FromLowestPoint = $00000001;

// Constants for enum swsDropTargetOrientationType_e
type
  swsDropTargetOrientationType_e = TOleEnum;
const
  swsDropTargetOrientationType_NormalToGravity = $00000000;
  swsDropTargetOrientationType_ParallelToRefPlane = $00000001;

// Constants for enum swsDropTargetStiffnessType_e
type
  swsDropTargetStiffnessType_e = TOleEnum;
const
  swsDropTargetStiffnessType_RigidTarget = $00000000;
  swsDropTargetStiffnessType_FlexibleTarget = $00000001;

// Constants for enum swsFatigueLoadingType_e
type
  swsFatigueLoadingType_e = TOleEnum;
const
  swsFatigueLoadingType_FullyReversed = $00000000;
  swsFatigueLoadingType_ZeroBased = $00000001;
  swsFatigueLoadingType_LoadingRatio = $00000002;
  swsFatigueLoadingType_NonProportional = $00000003;

// Constants for enum swsFatigueCalculations_e
type
  swsFatigueCalculations_e = TOleEnum;
const
  swsFatigueCalculations_WholeModel = $00000000;
  swsFatigueCalculations_SurfaceOnly = $00000001;

// Constants for enum swsFatiguePlotType_e
type
  swsFatiguePlotType_e = TOleEnum;
const
  swsFatiguePlotType_Life = $00000000;
  swsFatiguePlotType_Damage = $00000001;
  swsFatiguePlotType_LoadFactor = $00000002;
  swsFatiguePlotType_BiaxialityIndicator = $00000003;

// Constants for enum swsFatigueEventInteraction_e
type
  swsFatigueEventInteraction_e = TOleEnum;
const
  swsFatigueEventInteraction_Random = $00000000;
  swsFatigueEventInteraction_NoInteraction = $00000001;

// Constants for enum swsFatigueAlternatingStressOption_e
type
  swsFatigueAlternatingStressOption_e = TOleEnum;
const
  swsFatigueAlternatingStressOption_StressIntensity = $00000000;
  swsFatigueAlternatingStressOption_EquivalentStress = $00000001;
  swsFatigueAlternatingStressOption_MaxAbsPrincipal = $00000002;

// Constants for enum swsFatigueMeanStressCorrectionType_e
type
  swsFatigueMeanStressCorrectionType_e = TOleEnum;
const
  swsFatigueMeanStressCorrectionType_None = $00000000;
  swsFatigueMeanStressCorrectionType_Goodman = $00000001;
  swsFatigueMeanStressCorrectionType_Gerber = $00000002;
  swsFatigueMeanStressCorrectionType_Soderberg = $00000003;

// Constants for enum swsFatigueLoadHistoryCurveType_e
type
  swsFatigueLoadHistoryCurveType_e = TOleEnum;
const
  swsFatigueLoadHistoryCurveType_AmplitudeOnly = $00000000;
  swsFatigueLoadHistoryCurveType_SamplingRateAndAmplitude = $00000001;
  swsFatigueLoadHistoryCurveType_TimeAndAmplitude = $00000002;

// Constants for enum swsFatigueCalculationsOption_e
type
  swsFatigueCalculationsOption_e = TOleEnum;
const
  swsFatigueCalculationsOption_WholeModel = $00000000;
  swsFatigueCalculationsOption_SurfaceOnly = $00000001;

// Constants for enum swsFatigueEventEndEditError_e
type
  swsFatigueEventEndEditError_e = TOleEnum;
const
  swsFatigueEventError_NoError = $00000000;
  swsFatigueEventError_ImproperStudy = $00000001;
  swsFatigueEventError_ImproperEvent = $00000002;
  swsFatigueEventError_ImproperStudyNames = $00000003;
  swsFatigueEventError_LoadHistoryCurveTypeImproper = $00000004;
  swsFatigueEventError_XCurveDataImproper = $00000005;
  swsFatigueEventError_YCurveDataImproper = $00000006;
  swsFatigueEventError_XAndYPointsNotSameInNumber = $00000007;
  swsFatigueEventError_NoOfPointsShouldBeMoreThan3 = $00000008;
  swsFatigueEventError_XPointsShouldBeInIncreasingOrder = $00000009;
  swsFatigueEventError_ImproperNoOfCycles = $0000000A;
  swsFatigueEventError_InvalidLoadingtype = $0000000B;
  swsFatigueEventError_CannotApplyLoadingRatio = $0000000C;
  swsFatigueEventError_CannotApplyRepeats = $0000000D;
  swsFatigueEventError_InvalidRepeats = $0000000E;
  swsFatigueEventError_CannotApplyStartTime = $0000000F;
  swsFatigueEventError_InvalidStartTime = $00000010;
  swsFatigueEventError_StudyNamesScalesAndStepsDifferentInNumber = $00000011;
  swsFatigueEventError_ImproperVarNamesOrVarScalesOrVarSteps = $00000012;
  swsFatigueEventError_NumberOfStudiesAssociationShouldbeAtleast1 = $00000013;
  swsFatigueEventError_NumberOfStudiesAssociationShouldbeAtleast2 = $00000014;
  swsFatigueEventError_AssociatedStudyShouldBeStaticNonlinearOrDynamicModalTimeHistory = $00000015;

// Constants for enum swsFOS_NonCompositeCriterion_e
type
  swsFOS_NonCompositeCriterion_e = TOleEnum;
const
  swsFOSNonCompositeCriterion_VonMisesHencky = $00000000;
  swsFOSNonCompositeCriterion_Tresca = $00000001;
  swsFOSNonCompositeCriterion_MohrCoulomb = $00000002;
  swsFOSNonCompositeCriterion_Coulomb = $00000003;
  swsFOSNonCompositeCriterion_Automatic = $00000004;

// Constants for enum swsFOS_CompositeCriterion_e
type
  swsFOS_CompositeCriterion_e = TOleEnum;
const
  swsFOSCompositeCriterion_Tsai_Hill = $00000000;
  swsFOSCompositeCriterion_Tsai_Wu = $00000001;
  swsFOSCompositeCriterion_Max_Normal_Stress = $00000002;
  swsFOSCompositeCriterion_Automatic = $00000003;

// Constants for enum swsFOS_ShellFaceOption_e
type
  swsFOS_ShellFaceOption_e = TOleEnum;
const
  swsFOS_ShellFaceOption_TopFace = $00000001;
  swsFOS_ShellFaceOption_BottomFace = $00000002;

// Constants for enum swsFOS_NormalShellFaceOption_e
type
  swsFOS_NormalShellFaceOption_e = TOleEnum;
const
  swsFOS_NormalShellFaceOption_Top = $00000001;
  swsFOS_NormalShellFaceOption_Bottom = $00000002;
  swsFOS_NormalShellFaceOption_Min = $00000003;
  swsFOS_NormalShellFaceOption_Max = $00000004;

// Constants for enum swsFOS_DistributionOpt_e
type
  swsFOS_DistributionOpt_e = TOleEnum;
const
  swsFOS_DistributionOpt_Distribution = $00000001;
  swsFOS_DistributionOpt_AreaBelowFOS = $00000002;

// Constants for enum swsFOS_ErrorCode_e
type
  swsFOS_ErrorCode_e = TOleEnum;
const
  swsFOS_ErrorCode_NoError = $00000000;
  swsFOS_ErrorCode_NullPostApp = $00000001;
  swsFOS_ErrorCode_PlyNumExceeded = $00000002;
  swsFOS_ErrorCode_NoSolidBodiesSel = $00000003;
  swsFOS_ErrorCode_InvalidSelEntityArr = $00000004;
  swsFOS_ErrorCode_NoPersistID = $00000005;
  swsFOS_ErrorCode_InvalidSolidMgr = $00000006;
  swsFOS_ErrorCode_InvalidSel = $00000007;
  swsFOS_ErrorCode_FailureFrmGetPlotData = $00000008;

// Constants for enum swsStudyExportError_e
type
  swsStudyExportError_e = TOleEnum;
const
  swsStudyExportError_NoError = $00000000;
  swsStudyExportError_OptimizationNotAvailable = $00000001;
  swsStudyExportError_TransientThermalNotAvailable = $00000002;
  swsStudyExportError_DropTestNotAvailable = $00000003;
  swsStudyExportError_CreepMaterial = $00000004;
  swsStudyExportError_RemoteLoadConnectorNotAvailable = $00000005;
  swsStudyExportError_LoadOnPointsNotAvailable = $00000006;
  swsStudyExportError_WrongFileOption = $00000007;
  swsStudyExportError_WrongCosmosExportOptionForNoMesh = $00000008;
  swsStudyExportError_WrongCosmosExportOption = $00000009;
  swsStudyExportError_WrongNastranExportOption = $0000000A;
  swsStudyExportError_Wrong_NastranExportUnit = $0000000B;
  swsStudyExportError_WrongCosmosExportUnit = $0000000C;

// Constants for enum swsStudyExportOption_e
type
  swsStudyExportOption_e = TOleEnum;
const
  swsStudyExportOption_Cosmos = $00000000;
  swsStudyExportOption_Ansys = $00000001;
  swsStudyExportOption_Nastran = $00000002;
  swsStudyExportOption_PatranNeutral = $00000003;
  swsStudyExportOption_IdeasUniversal = $00000004;
  swsStudyExportOption_Exodus = $00000005;
  swsStudyExportOption_Abaqus = $00000006;

// Constants for enum swsCosmosExportOption_e
type
  swsCosmosExportOption_e = TOleEnum;
const
  swsExportFEMOnly = $00000001;
  swsExportGeometryOnly = $00000002;

// Constants for enum swsNastranExportOption_e
type
  swsNastranExportOption_e = TOleEnum;
const
  swsNastranExportOption_ShortFree = $00000000;
  swsNastranExportOption_LongFree = $00000001;
  swsNastranExportOption_ShortFixed = $00000002;
  swsNastranExportOption_LongFixed = $00000003;

// Constants for enum swsNastranExportUnit_e
type
  swsNastranExportUnit_e = TOleEnum;
const
  swsNastranExportUnit_SI = $00000000;
  swsNastranExportUnit_IPS = $00000001;
  swsNastranExportUnit_MKS = $00000002;

// Constants for enum swsGeoStarExportUnit_e
type
  swsGeoStarExportUnit_e = TOleEnum;
const
  swsGeoStarExportUnit_mm = $00000000;
  swsGeoStarExportUnit_cm = $00000001;
  swsGeoStarExportUnit_m = $00000002;
  swsGeoStarExportUnit_in = $00000003;
  swsGeoStarExportUnit_ft = $00000004;

// Constants for enum swsIsoClippingErrorCode_e
type
  swsIsoClippingErrorCode_e = TOleEnum;
const
  swsIsoClippingNoError = $00000000;
  swsIsoClippingCosworksViewNotPresent = $00000001;
  swsIsoClippingIsoPlanesError = $00000002;
  swsIsoClippingPlotNotFound = $00000003;
  swsIsoClippingPostDataNotExist = $00000004;
  swsIsoClippingIsoValueError = $00000005;
  swsIsoClippingIsoVariantValueError = $00000006;
  swsIsoClippingIsoInvalidVariantError = $00000007;

// Constants for enum swsSaveeDrawingsErrorCode_e
type
  swsSaveeDrawingsErrorCode_e = TOleEnum;
const
  swsSaveeDrawings_NoError = $00000000;
  swsSaveeDrawings_CosworksViewNotPresent = $00000001;
  swsSaveeDrawings_PlotNotFoundError = $00000002;
  swsSaveeDrawings_ResultFolderNotFound = $00000003;
  swsSaveeDrawings_DatabaseNotFound = $00000004;
  swsSaveeDrawings_PostFilesNull = $00000005;
  swsSaveeDrawings_PlotNotActive = $00000006;
  swsSaveeDrawings_NotAvailableForCurrentMesh = $00000007;
  swsSaveeDrawings_PostDataFilesNotPresent = $00000008;
  swsSaveeDrawings_NoPlots = $00000009;
  swsSaveeDrawings_PlotSaveError = $0000000A;

// Constants for enum swsUserPreferenceIntegerValue_e
type
  swsUserPreferenceIntegerValue_e = TOleEnum;
const
  swsDefaultSolverValue = $00000000;
  swsDefaultResultFolder = $00000001;
  swsReportPublishOption = $00000002;
  swsColorChartPosition = $00000003;
  swsPlotSettingsFringeOption = $00000004;
  swsPlotSettingsBoundaryOption = $00000005;
  swsPlotShowExcludedBodiesOption = $00000006;
  swsPlotShowHiddenBodiesOption = $00000007;
  swsPlotBoundaryOptionTranslucentSingleColorSetting = $00000008;
  swsPlotBoundaryOptionMeshColor = $00000009;
  swsPlotShowExcludedBodyTranslucentSingleColor = $0000000A;
  swsPlotShowHiddenBodyTranslucentSingleColor = $0000000B;
  swsPlotDeformedShapeOptionSetting = $0000000C;
  swsPlotDeformedShapeResultScaleContact = $0000000D;
  swsPlotDeformedShapeResultScaleLarge = $0000000E;
  swsPlotDeformedShapeResultOther = $0000000F;
  swsPlotDeformedShapeOptionSetSuperImposeOption = $00000010;
  swsReportPublishOptionReportFolderUserDefinedPath = $00000011;
  swsColorChartPositionUserDefinedXValue = $00000012;
  swsColorChartPositionUserDefinedYValue = $00000013;
  swsColorChartWidthOption = $00000014;
  swsColorChartNumberFormatOption = $00000015;
  swsColorChartColorOptionChartColorNumber = $00000016;
  swsColorChartColorOptionBaseChartColorNumber = $00000017;
  swsColorChartColorOptionLegendType = $00000018;
  swsColorChartNumberFormatLegendPrecision = $00000019;
  swsColorChartNumberFormatUseDiffNoFormatOption = $0000001A;
  swsColorChartColorOptionvonMisesColorValue = $0000001B;
  swsPlotDeformedShapeOptionTranslucentColor = $0000001C;
  swsPlotBoundaryOptionModelColor = $0000001D;

// Constants for enum swsUserPreferenceDoubleValue_e
type
  swsUserPreferenceDoubleValue_e = TOleEnum;
const
  swsPlotShowHiddenBodyTransparency = $00000000;
  swsPlotShowExcludedBodyTransparency = $00000001;
  swsPlotDeformedShapeSuperImposeModelTranslucentTransparency = $00000002;
  swsPlotBeamDiagramTransparency = $00000003;
  swsPlotBoundaryTransparency = $00000004;

// Constants for enum swsUserPreferenceToggle_e
type
  swsUserPreferenceToggle_e = TOleEnum;
const
  swsResultFolderUnderSubFolder = $00000000;
  swsResultFolderKeepTempDataBase = $00000001;
  swsTrendTrackerBackUpModelsRestoreIteration = $00000002;
  swsShowReportOnPublish = $00000003;
  swsPlotAnnotationShowMinValue = $00000004;
  swsPlotAnnotationShowMaxValue = $00000005;
  swsPlotAnnotationShowRangeBasedOnShowCompOnly = $00000006;
  swsPlotShowExcludedBodies = $00000007;
  swsPlotShowHiddenBodies = $00000008;
  swsPlotDeformedShapeOptionSuperImposeModelOnDeformedShape = $00000009;
  swsColorChartDisplay = $0000000A;
  swsColorChartDetails = $0000000B;
  swsColorChartNumberFormatUseDifferentNumberFormat = $0000000C;
  swsColorChartColorNoOfChartColorFlip = $0000000D;
  swsColorChartColorSpecifyColorForvonMisesPlot = $0000000E;
  swsLoadAllStudies_e = $0000000F;

// Constants for enum swsUserPreferenceStringValue_e
type
  swsUserPreferenceStringValue_e = TOleEnum;
const
  swsUserDefinedResultFolderLocation = $00000000;
  swsSolidWorksDocumentFolderSubFolderLocation = $00000001;
  swsSolidWorksUserDefinedReportFolderLocation = $00000002;

// Constants for enum swsReportFolderValue_e
type
  swsReportFolderValue_e = TOleEnum;
const
  swsResultFolderAsReportFolder = $00000000;
  swsUserDefinedReportFolder = $00000001;

// Constants for enum swsResultFolderValue_e
type
  swsResultFolderValue_e = TOleEnum;
const
  swsSolidWorksDocumentFolder = $00000000;
  swsUserDefinedFolder = $00000001;

// Constants for enum swsColorChartPositionValue_e
type
  swsColorChartPositionValue_e = TOleEnum;
const
  swsColorChartPredefinedPosition = $00000000;
  swsColorChartUserDefined = $00000001;

// Constants for enum swsColorChartWidthOptionValue_e
type
  swsColorChartWidthOptionValue_e = TOleEnum;
const
  swsColorChartWidthWide = $00000000;
  swsColorChartWidthNormal = $00000001;
  swsColorChartWidthThin = $00000002;

// Constants for enum swsColorChartNumberFormatOptionValue_e
type
  swsColorChartNumberFormatOptionValue_e = TOleEnum;
const
  swsColorChartNumberFormatScientific = $00000000;
  swsColorChartNumberFormatFloating = $00000001;
  swsColorChartNumberFormatGeneral = $00000002;

// Constants for enum swsColorNumberFormatUseDiffNumberFormatOptionValue_e
type
  swsColorNumberFormatUseDiffNumberFormatOptionValue_e = TOleEnum;
const
  swsColorChartNumberFormatUseDiffNoFormatFloating = $00000000;
  swsColorChartNumberFormatUseDiffNoFormatGeneral = $00000001;

// Constants for enum swsColorChartOptionLegendTypeValue_e
type
  swsColorChartOptionLegendTypeValue_e = TOleEnum;
const
  swsColorChartOptionLegendDefault = $00000000;
  swsColorChartOptionLegendRainbow = $00000001;
  swsColorChartOptionLegendGrayScale = $00000002;
  swsColorChartOptionLegendUserDefined = $00000003;
  swsColorChartOptionLegendUnsupported = $00000004;
  swsColorChartOptionLegendColorBlindFriendly = $00000005;

// Constants for enum swsDefaultStaticResultTypes_e
type
  swsDefaultStaticResultTypes_e = TOleEnum;
const
  swsStaticResultNodalStress = $00000000;
  swsStaticResultElementalStress = $00000001;
  swsStaticResultDisplacement = $00000002;
  swsStaticResultNodalStrain = $00000003;
  swsStaticResultElementalStrain = $00000004;
  swsStaticResultFactorOfSafety = $00000005;
  swsStaticResultBoltPinCheck = $00000006;

// Constants for enum swsAddDefaultStaticStudyPlotResultError_e
type
  swsAddDefaultStaticStudyPlotResultError_e = TOleEnum;
const
  swsStaticResultNoErrror = $00000000;
  swsStaticResultTypeRangeError = $00000001;
  swsStaticResultElementalStressComponentRangeError = $00000002;
  swsStaticResultDisplacementComponentRangeError = $00000003;
  swsStaticResultNodalStrainRangeError = $00000004;
  swsStaticResultElementalStrainRangeError = $00000005;
  swsStaticResultNodalStressComponentRangeError = $00000006;

// Constants for enum swsAddDefaultThermalStudyPlotResultError_e
type
  swsAddDefaultThermalStudyPlotResultError_e = TOleEnum;
const
  swsThermalResultNoError = $00000000;
  swsThermalResultRangeError = $00000001;

// Constants for enum swsAddDefaultFatigueStudyPlotResultError_e
type
  swsAddDefaultFatigueStudyPlotResultError_e = TOleEnum;
const
  swsFatigueResultNoError = $00000000;
  swsFatigueResultRangeError = $00000001;

// Constants for enum swsAddDefaultNonLinearStudyPlotResultError_e
type
  swsAddDefaultNonLinearStudyPlotResultError_e = TOleEnum;
const
  swsNonLinearResultNoError = $00000000;
  swsNonLinearResultRangeError = $00000001;
  swsNonLinearResultNodalStressComponentRangeError = $00000002;
  swsNonLinearResultElementalStressComponentRangeError = $00000003;
  swsNonLinearResultDisplacementComponentRangeError = $00000004;
  swsNonLinearResultNodalStrainComponentRangeError = $00000005;
  swsNonLinearResultElementalStrainComponentRangeError = $00000006;

// Constants for enum swsAddDefaultDropTestStudyPlotResultError_e
type
  swsAddDefaultDropTestStudyPlotResultError_e = TOleEnum;
const
  swsDropTestResultNoError = $00000000;
  swsDropTestResultRangeError = $00000001;
  swsDropTestResultNodalStressRangeError = $00000002;
  swsDropTestResultElementalStressRangeError = $00000003;
  swsDropTestResultDisplacementRangeError = $00000004;
  swsDropTestResultElementalStrainRangeError = $00000005;

// Constants for enum swsAddDefaultFrequencyOrBucklingStudyPlotResultError_e
type
  swsAddDefaultFrequencyOrBucklingStudyPlotResultError_e = TOleEnum;
const
  swsFrequencyResultNoError = $00000000;
  swsFrequencyMaxModeShapeValueRangeError = $00000001;
  swsFrequencyResultDisplacementRangeError = $00000002;

// Constants for enum swsAddDefaultOptimizationDesignStudyPlotResultError_e
type
  swsAddDefaultOptimizationDesignStudyPlotResultError_e = TOleEnum;
const
  swsOptimizationDesignResultNoError = $00000000;
  swsOptimizationDesignResultDesignValueRangeError = $00000001;

// Constants for enum swsFatigueStudyResultType_e
type
  swsFatigueStudyResultType_e = TOleEnum;
const
  swsFatigueStudy_LifePlot = $00000000;
  swsFatigueStudy_DamagePlot = $00000001;
  swsFatigueStudy_LoadFactor = $00000002;
  swsFatigueStudy_BiAxialityIndicatorPlot = $00000003;

// Constants for enum swsDropTestStudyResultType_e
type
  swsDropTestStudyResultType_e = TOleEnum;
const
  swsDropTestResultNodalStress = $00000000;
  swsDropTestResultElementalStress = $00000001;
  swsDropTestResultDisplacement = $00000002;
  swsDropTestResultElementalStrain = $00000003;

// Constants for enum swsOptimizationStudyResultType_e
type
  swsOptimizationStudyResultType_e = TOleEnum;
const
  swsOptimizationStudyResult_InitialAndFinalIterations = $00000000;
  swsOptimizationStudyResult_AllIterations = $00000001;

// Constants for enum swsNonlinearStudyResultTypes_e
type
  swsNonlinearStudyResultTypes_e = TOleEnum;
const
  swsNonlinearResultNodalStress = $00000000;
  swsNonlinearResultElementalStress = $00000001;
  swsNonlinearResultDisplacement = $00000002;
  swsNonlinearResultNodalStrain = $00000003;
  swsNonlinearResultElementalStrain = $00000004;

// Constants for enum swsPlotShowExcludedBodiesOptionValue_e
type
  swsPlotShowExcludedBodiesOptionValue_e = TOleEnum;
const
  swsPlotExcludedBodyTranslucentSingleColor = $00000000;
  swsPlotExcludedBodyTranslucentPartColor = $00000001;

// Constants for enum swsPlotShowHiddenBodiesOptionValue_e
type
  swsPlotShowHiddenBodiesOptionValue_e = TOleEnum;
const
  swsPlotHiddenBodyTranslucentSingleColor = $00000000;
  swsPlotHiddenBodyTranslucentPartColor = $00000001;

// Constants for enum swsPlotFringeSettingsOptionValue_e
type
  swsPlotFringeSettingsOptionValue_e = TOleEnum;
const
  swsPlotFringePoint = $00000000;
  swsPlotFringeLine = $00000001;
  swsPlotFringeDiscrete = $00000002;
  swsPlotFringeContinuous = $00000003;

// Constants for enum swsPlotBoundarySettingsOptionValue_e
type
  swsPlotBoundarySettingsOptionValue_e = TOleEnum;
const
  swsPlotBoundaryNone = $00000000;
  swsPlotBoundaryModel = $00000001;
  swsPlotBoundaryMesh = $00000002;
  swsPlotBoundaryTranslucentSingleColor = $00000003;
  swsPlotBoundaryTranslucentPartColor = $00000004;

// Constants for enum swsPlotDeformedShapeOptionValue_e
type
  swsPlotDeformedShapeOptionValue_e = TOleEnum;
const
  swsPlotDeformedShapeShowResultsOnUnDeformedShape = $00000000;
  swsPlotDeformedShapeShowResultsOnDeformedShape = $00000001;

// Constants for enum swsPlotDeformedShapeOptionScaleFactorContactValue_e
type
  swsPlotDeformedShapeOptionScaleFactorContactValue_e = TOleEnum;
const
  swsPlotDeformedShapeContactAutomatic = $00000000;
  swsPlotDeformedShapeContactTrueValue = $00000001;

// Constants for enum swsPlotDeformedShapeOptionScaleFactorLargeDispValue_e
type
  swsPlotDeformedShapeOptionScaleFactorLargeDispValue_e = TOleEnum;
const
  swsPlotDeformedShapeLargeDispAutomatic = $00000000;
  swsPlotDeformedShapeLargeDispTrueValue = $00000001;

// Constants for enum swsPlotDeformedShapeOptionScaleFactorOtherValue_e
type
  swsPlotDeformedShapeOptionScaleFactorOtherValue_e = TOleEnum;
const
  swsPlotDeformedShapeOtherAutomatic = $00000000;
  swsPlotDeformedShapeOtherTrueValue = $00000001;

// Constants for enum swsPlotDeformedShapeOptionSuperImposeValue_e
type
  swsPlotDeformedShapeOptionSuperImposeValue_e = TOleEnum;
const
  swsPlotDeformedShapeSuperImposeModel_TranslucentPartColor = $00000000;
  swsPlotDeformedShapeSuperImposeModel_TranslucentSingleColor = $00000001;

// Constants for enum swsWeldResultErrorCode_e
type
  swsWeldResultErrorCode_e = TOleEnum;
const
  swsWeldResult_NoError = $00000000;
  swsWeldResult_NoView = $00000001;
  swsWeldResult_InvalidUnit = $00000002;
  swsWeldResult_ResultsNotAvailable = $00000003;
  swsWeldResult_InvalidConnectorName = $00000004;
  swsWeldResult_NoPersistID = $00000005;
  swsWeldResult_MeshDataNotAvailable = $00000006;
  swsWeldResult_NodeIndexListUnAvailable = $00000007;

// Constants for enum swsFosPlotErrorCode_e
type
  swsFosPlotErrorCode_e = TOleEnum;
const
  swsFos_NoError = $00000000;
  swsFos_NoView = $00000001;
  swsFos_NullPostApp = $00000002;
  swsFos_NoDatabase = $00000003;
  swsFos_NoPostFile = $00000004;
  swsFos_APIExists = $00000005;
  swsFos_InvalidComponent = $00000006;
  swsFos_InvalidResults = $00000007;
  swsFos_NoMaterialFound = $00000008;
  swsFos_ComponentsHidden = $00000009;
  swsFos_AllMaterialFailed = $0000000A;
  swsFos_InvalidShellOption = $0000000B;
  swsFos_InvalidSelEntityArr = $0000000C;
  swsFos_NoPersistID = $0000000D;
  swsFos_InvalidSolidMgr = $0000000E;
  swsFos_InvalidSel = $0000000F;
  swsFos_FailureFrmGetPlotData = $00000010;

// Constants for enum swsWindowsBasicColors_e
type
  swsWindowsBasicColors_e = TOleEnum;
const
  swsLightRed = $008080FF;
  swsLightYellow = $0080FFFF;
  swsPaleGreen = $0080FF80;
  swsSpringGreen = $0080FF00;
  swsCyan = $00FFFF80;
  swsDodgerBlue = $00FF8000;
  swsPlum = $00C080FF;
  swsViolet = $00FF80FF;
  swsRed = $000000FF;
  swsYellow = $0000FFFF;
  swsGreenYellow = $0000FF80;
  swsLawnGreen = $0040FF00;
  swsAqua = $00FFFF00;
  swsDeepSkyBlue = $00C08000;
  swsMediumPurple = $00C08080;
  swsMagenta = $00FF00FF;
  swsLightSalmon = $00404080;
  swsCoral = $004080FF;
  swsLime = $0000FF00;
  swsTeal = $00808000;
  swsRoyalBlue = $00804000;
  swsSgiSlateBlue = $00FF8080;
  swsDarkRed = $00400080;
  swsSgiSalmon = $008000FF;
  swsMaroon = $00000080;
  swsOrange = $000080FF;
  swsGreen = $00008000;
  swsSapGreen = $00408000;
  swsBlue = $00FF0000;
  swsMidnightBlue = $00A00000;
  swsPurple = $00800080;
  swsSgiBeet = $00FF0080;
  swsDeepGray = $00000040;
  swsTan = $00004080;
  swsDarkOliveGreen = $00004000;
  swsDarkGreen = $00404000;
  swsNavy = $00800000;
  swsDarkBlue = $00400000;
  swsDarkPurple = $00400040;
  swsIndigo = $00800040;
  swsBlack = $00000000;
  swsOlive = $00008080;
  swsKhaki = $00408080;
  swsGray = $00808080;
  swsLightSeaGreen = $00808040;
  swsSilver = $00C0C0C0;
  swsWhite = $00FFFFFF;

// Constants for enum swsSimulationOptionDefaultPlotsBoundaryColorInRGBBoundaryOption_e
type
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBBoundaryOption_e = TOleEnum;
const
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBBoundaryOption_ModelOrMesh = $00000000;
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBBoundaryOption_TranslucentSingleColor = $00000001;

// Constants for enum swsFactorOfSafetyStressLimitOption_e
type
  swsFactorOfSafetyStressLimitOption_e = TOleEnum;
const
  swsFactorOfSafetyStressLimitOption_YieldStrength = $00000000;
  swsFactorOfSafetyStressLimitOption_UltimateStrength = $00000001;
  swsFactorOfSafetyStressLimitOption_UserDefined = $00000002;

// Constants for enum swsEdgeWeldConnectorTypes_e
type
  swsEdgeWeldConnectorTypes_e = TOleEnum;
const
  swsEdgeWeldConnectorFilletDoubleSided = $00000000;
  swsEdgeWeldConnectorFilletSingleSided = $00000001;
  swsEdgeWeldConnectorGrooveDoubleSided = $00000002;
  swsEdgeWeldConnectorGrooveSingleSided = $00000003;

// Constants for enum swsEdgeWeldSolverCode_e
type
  swsEdgeWeldSolverCode_e = TOleEnum;
const
  swsEdgeWeldSolverCodeAWS = $00000000;
  swsEdgeWeldSolverCodeEURO = $00000001;

// Constants for enum swsElectrodeMaterialTypes_e
type
  swsElectrodeMaterialTypes_e = TOleEnum;
const
  swsElectrodeMaterialE60 = $00000000;
  swsElectrodeMaterialE70 = $00000001;
  swsElectrodeMaterialE80 = $00000002;
  swsElectrodeMaterialE90 = $00000003;
  swsElectrodeMaterialE100 = $00000004;
  swsElectrodeMaterialCustomSteel = $00000005;
  swsElectrodeMaterial1100 = $00000006;
  swsElectrodeMaterial4043 = $00000007;
  swsElectrodeMaterial5183 = $00000008;
  swsElectrodeMaterial5356 = $00000009;
  swsElectrodeMaterial5554 = $0000000A;
  swsElectrodeMaterial5556 = $0000000B;
  swsElectrodeMaterial5654 = $0000000C;
  swsElectrodeMaterialCustomAl = $0000000D;

// Constants for enum swsWeldStrengthUnits_e
type
  swsWeldStrengthUnits_e = TOleEnum;
const
  swsWeldStrengthUnits_NewtonOverMeterSquare = $00000000;
  swsWeldStrengthUnits_PSI = $00000001;
  swsWeldStrengthUnits_KgfOverCentimeterSquare = $00000002;
  swsWeldStrengthUnits_MPa = $00000003;
  swsWeldStrengthUnits_KSI = $00000004;

// Constants for enum swsEstimatedWeldSizeUnits_e
type
  swsEstimatedWeldSizeUnits_e = TOleEnum;
const
  swsEstimatedWeldSizeUnits_mm = $00000000;
  swsEstimatedWeldSizeUnits_cm = $00000001;
  swsEstimatedWeldSizeUnits_m = $00000002;
  swsEstimatedWeldSizeUnits_in = $00000003;
  swsEstimatedWeldSizeUnits_ft = $00000004;
  swsEstimatedWeldSizeUnits_ft_in = $00000005;
  swsEstimatedWeldSizeUnits_am = $00000006;
  swsEstimatedWeldSizeUnits_nm = $00000007;
  swsEstimatedWeldSizeUnits_micron = $00000008;
  swsEstimatedWeldSizeUnits_mil = $00000009;
  swsEstimatedWeldSizeUnits_microIn = $0000000A;

// Constants for enum swsEdgeWeldConnectorSafetyFactorLiftOption_e
type
  swsEdgeWeldConnectorSafetyFactorLiftOption_e = TOleEnum;
const
  swsEdgeWeldConnectorSafetyFactorLiftOption_USAutomotiveLifts = $00000000;
  swsEdgeWeldConnectorSafetyFactorLiftOption_UnderTheHookLifting = $00000001;

// Constants for enum swsMeshCopyErrorCode_e
type
  swsMeshCopyErrorCode_e = TOleEnum;
const
  swsMeshCopy_NoError = $00000000;
  swsMeshCopy_StudyNotActive = $00000001;
  swsMeshCopy_InvalidStudyName = $00000002;
  swsMeshCopy_NotSupportedForBeamMesh = $00000003;
  swsMeshCopy_MeshTypeDifferentForBothStudies = $00000004;
  swsMeshCopy_UnSupportedStudies = $00000005;

// Constants for enum swsFatigueComponent_e
type
  swsFatigueComponent_e = TOleEnum;
const
  swsFatigueComponent_Life = $00000000;
  swsFatigueComponent_Damage = $00000001;
  swsFatigueComponent_LoadFactor = $00000002;
  swsFatigueComponent_BiaxialityIndicator = $00000003;

// Constants for enum swsAccelerationComponent_e
type
  swsAccelerationComponent_e = TOleEnum;
const
  swsAccelerationComponentAX = $00000000;
  swsAccelerationComponentAY = $00000001;
  swsAccelerationComponentAZ = $00000002;
  swsAccelerationComponentARES = $00000003;
  swsAccelerationComponentBX = $00000004;
  swsAccelerationComponentBY = $00000005;
  swsAccelerationComponentBZ = $00000006;
  swsAccelerationComponentANG = $00000007;

// Constants for enum swsVelocityComponent_e
type
  swsVelocityComponent_e = TOleEnum;
const
  swsVelocityComponentVX = $00000000;
  swsVelocityComponentVY = $00000001;
  swsVelocityComponentVZ = $00000002;
  swsVelocityComponentVRES = $00000003;
  swsVelocityComponentAVX = $00000004;
  swsVelocityComponentAVY = $00000005;
  swsVelocityComponentAVZ = $00000006;
  swsVelocityComponentAVRES = $00000007;

// Constants for enum swsStaticResultNodalStressComponentTypes_e
type
  swsStaticResultNodalStressComponentTypes_e = TOleEnum;
const
  swsStaticNodalStress_SX = $00000000;
  swsStaticNodalStress_SY = $00000001;
  swsStaticNodalStress_SZ = $00000002;
  swsStaticNodalStress_TXY = $00000003;
  swsStaticNodalStress_TXZ = $00000004;
  swsStaticNodalStress_TYZ = $00000005;
  swsStaticNodalStress_P1 = $00000006;
  swsStaticNodalStress_P2 = $00000007;
  swsStaticNodalStress_P3 = $00000008;
  swsStaticNodalStress_VON = $00000009;
  swsStaticNodalStress_INT = $0000000A;
  swsStaticNodalStress_TRI = $0000000B;

// Constants for enum swsStaticResultElementalStressComponentTypes_e
type
  swsStaticResultElementalStressComponentTypes_e = TOleEnum;
const
  swsStaticElementalStress_SX = $00000000;
  swsStaticElementalStress_SY = $00000001;
  swsStaticElementalStress_SZ = $00000002;
  swsStaticElementalStress_TXY = $00000003;
  swsStaticElementalStress_TXZ = $00000004;
  swsStaticElementalStress_TYZ = $00000005;
  swsStaticElementalStress_P1 = $00000006;
  swsStaticElementalStress_P2 = $00000007;
  swsStaticElementalStress_P3 = $00000008;
  swsStaticElementalStress_VON = $00000009;
  swsStaticElementalStress_INT = $0000000A;
  swsStaticElementalStress_TRI = $0000000B;
  swsStaticElementalStress_ERR = $0000000C;
  swsStaticElementalStress_CONTACTPRESS = $0000000D;

// Constants for enum swsStaticResultDisplacementComponentTypes_e
type
  swsStaticResultDisplacementComponentTypes_e = TOleEnum;
const
  swsStaticDisplacement_UX = $00000000;
  swsStaticDisplacement_UY = $00000001;
  swsStaticDisplacement_UZ = $00000002;
  swsStaticDisplacement_URES = $00000003;
  swsStaticDisplacement_RFX = $00000004;
  swsStaticDisplacement_RFY = $00000005;
  swsStaticDisplacement_RFZ = $00000006;
  swsStaticDisplacement_RFRES = $00000007;
  swsStaticDisplacement_RX = $00000008;
  swsStaticDisplacement_RY = $00000009;
  swsStaticDisplacement_RZ = $0000000A;
  swsStaticDisplacement_RMX = $0000000B;
  swsStaticDisplacement_RMY = $0000000C;
  swsStaticDisplacement_RMZ = $0000000D;
  swsStaticDisplacement_RMRES = $0000000E;

// Constants for enum swsFrequencyBucklingResultDisplacementComponentTypes_e
type
  swsFrequencyBucklingResultDisplacementComponentTypes_e = TOleEnum;
const
  swsFrequencyBucklingDisplacement_UX = $00000000;
  swsFrequencyBucklingDisplacement_UY = $00000001;
  swsFrequencyBucklingDisplacement_UZ = $00000002;
  swsFrequencyBucklingDisplacement_URES = $00000003;

// Constants for enum swsStaticResultNodalStrainComponentTypes_e
type
  swsStaticResultNodalStrainComponentTypes_e = TOleEnum;
const
  swsStaticNodalStrain_EPSX = $00000000;
  swsStaticNodalStrain_EPSY = $00000001;
  swsStaticNodalStrain_EPSZ = $00000002;
  swsStaticNodalStrain_GMXY = $00000003;
  swsStaticNodalStrain_GMXZ = $00000004;
  swsStaticNodalStrain_GMYZ = $00000005;
  swsStaticNodalStrain_ESTRN = $00000006;
  swsStaticNodalStrain_E1 = $00000007;
  swsStaticNodalStrain_E2 = $00000008;
  swsStaticNodalStrain_E3 = $00000009;

// Constants for enum swsStaticResultElementalStrainComponentTypes_e
type
  swsStaticResultElementalStrainComponentTypes_e = TOleEnum;
const
  swsStaticElementalStrain_EPSX = $00000000;
  swsStaticElementalStrain_EPSY = $00000001;
  swsStaticElementalStrain_EPSZ = $00000002;
  swsStaticElementalStrain_GMXY = $00000003;
  swsStaticElementalStrain_GMXZ = $00000004;
  swsStaticElementalStrain_GMYZ = $00000005;
  swsStaticElementalStrain_ESTRN = $00000006;
  swsStaticElementalStrain_SEDENS = $00000007;
  swsStaticElementalStrain_ENERGY = $00000008;
  swsStaticElementalStrain_E1 = $00000009;
  swsStaticElementalStrain_E2 = $0000000A;
  swsStaticElementalStrain_E3 = $0000000B;

// Constants for enum swsThermalResultComponentTypes_e
type
  swsThermalResultComponentTypes_e = TOleEnum;
const
  swsThermalResultComponentTypes_TEMP = $00000000;
  swsThermalResultComponentTypes_GRADX = $00000001;
  swsThermalResultComponentTypes_GRADY = $00000002;
  swsThermalResultComponentTypes_GRADZ = $00000003;
  swsThermalResultComponentTypes_GRADN = $00000004;
  swsThermalResultComponentTypes_HFLUXX = $00000005;
  swsThermalResultComponentTypes_HFLUXY = $00000006;
  swsThermalResultComponentTypes_HFLUXZ = $00000007;
  swsThermalResultComponentTypes_HFLUXN = $00000008;

// Constants for enum swsDisplacementComponent_e
type
  swsDisplacementComponent_e = TOleEnum;
const
  swsDisplacementComponentUX = $00000000;
  swsDisplacementComponentUY = $00000001;
  swsDisplacementComponentUZ = $00000002;
  swsDisplacementComponentURES = $00000003;
  swsDisplacementComponentRFX = $00000004;
  swsDisplacementComponentRFY = $00000005;
  swsDisplacementComponentRFZ = $00000006;
  swsDisplacementComponentRFRES = $00000007;
  swsDisplacementComponentRX = $00000008;
  swsDisplacementComponentRY = $00000009;
  swsDisplacementComponentRZ = $0000000A;
  swsDisplacementComponentRMX = $0000000B;
  swsDisplacementComponentRMY = $0000000C;
  swsDisplacementComponentRMZ = $0000000D;
  swsDisplacementComponentRMRES = $0000000E;

// Constants for enum swsStrainComponent_e
type
  swsStrainComponent_e = TOleEnum;
const
  swsStrainComponentEPSX = $00000000;
  swsStrainComponentEPSY = $00000001;
  swsStrainComponentEPSZ = $00000002;
  swsStrainComponentGMXY = $00000003;
  swsStrainComponentGMXZ = $00000004;
  swsStrainComponentGMYZ = $00000005;
  swsStrainComponentESTRN = $00000006;
  swsStrainComponentSEDENS = $00000007;
  swsStrainComponentENERGY = $00000008;
  swsStrainComponentE1 = $00000009;
  swsStrainComponentE2 = $0000000A;
  swsStrainComponentE3 = $0000000B;

// Constants for enum swsStressComponent_e
type
  swsStressComponent_e = TOleEnum;
const
  swsStressComponentSX = $00000000;
  swsStressComponentSY = $00000001;
  swsStressComponentSZ = $00000002;
  swsStressComponentTXY = $00000003;
  swsStressComponentTXZ = $00000004;
  swsStressComponentTYZ = $00000005;
  swsStressComponentP1 = $00000006;
  swsStressComponentP2 = $00000007;
  swsStressComponentP3 = $00000008;
  swsStressComponentVON = $00000009;
  swsStressComponentINT = $0000000A;
  swsStressComponentTRI = $0000000B;
  swsStressComponentERR = $0000000C;
  swsStressComponentCP = $0000000D;

// Constants for enum swsThermalComponent_e
type
  swsThermalComponent_e = TOleEnum;
const
  swsThermalComponentTEMP = $00000000;
  swsThermalComponentGRADX = $00000001;
  swsThermalComponentGRADY = $00000002;
  swsThermalComponentGRADZ = $00000003;
  swsThermalComponentGRADN = $00000004;
  swsThermalComponentHFLUXX = $00000005;
  swsThermalComponentHFLUXY = $00000006;
  swsThermalComponentHFLUXZ = $00000007;
  swsThermalComponentHFLUXN = $00000008;

// Constants for enum swsDeleteStudyPlotsResultTypes_e
type
  swsDeleteStudyPlotsResultTypes_e = TOleEnum;
const
  swsDeleteStudyPlotsNoError = $00000000;
  swsDeleteStudyPlotsError = $00000001;

// Constants for enum swsSimulationOptionDefaultPlotsBoundaryColorInRGBError_e
type
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBError_e = TOleEnum;
const
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBNoError = $00000000;
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBWrongBoundaryOption = $00000001;
  swsSimulationOptionDefaultPlotsBoundaryColorInRGBGetColorUnsuccessful = $00000002;

// Constants for enum swsGenerateReportError_e
type
  swsGenerateReportError_e = TOleEnum;
const
  swsGenerateReportErrorNoError = $00000000;
  swsGenerateReportErrorWrongPath = $00000001;
  swsGenerateReportErrorWrongConfiguration = $00000002;
  swsGenerateReportErrorInvalidModelDoc = $00000003;
  swsGenerateReportErrorInactiveStudy = $00000004;
  swsGenerateReportErrorFailed = $00000005;

// Constants for enum swsDuplicateStudyError_e
type
  swsDuplicateStudyError_e = TOleEnum;
const
  swsDuplicateStudyErrorNoError = $00000000;
  swsDuplicateStudyErrorFailed = $00000001;

// Constants for enum swsWeakMaterial_e
type
  swsWeakMaterial_e = TOleEnum;
const
  swsWeakMaterialCustom = $00000000;
  swsWeakMaterialFirstFaceMaterial = $00000001;
  swsWeakMaterialSecondFaceMaterial = $00000002;

// Constants for enum swsPlotResultTypes_e
type
  swsPlotResultTypes_e = TOleEnum;
const
  swsResultDisplacementOrAmplitude = $00000001;
  swsResultStress = $00000002;
  swsResultStrain = $00000003;
  swsResultFactorOfSafety = $00000004;
  swsResultThermal = $00000005;
  swsResultFatigue = $0000000C;
  swsResultVelocity = $00000013;
  swsResultAcceleration = $00000014;
  swsResultDesignInsight = $00000016;
  swsResultBeamDiagram = $00000036;
  swsResultPinBoltBearing = $00000038;
  swsResultEdgeWeldConnector = $0000003A;
  swsResultBeamStress = $0000003B;

type

// *********************************************************************//
// Forward declaration of types defined in TypeLibrary                    
// *********************************************************************//
  ICosmosWorks = interface;
  ICosmosWorksDisp = dispinterface;
  ICWModelDoc = interface;
  ICWModelDocDisp = dispinterface;
  ICWStudyManager = interface;
  ICWStudyManagerDisp = dispinterface;
  ICWStudy = interface;
  ICWStudyDisp = dispinterface;
  ICWMesh = interface;
  ICWMeshDisp = dispinterface;
  ICWMeshControl = interface;
  ICWMeshControlDisp = dispinterface;
  ICWSolidManager = interface;
  ICWSolidManagerDisp = dispinterface;
  ICWSolidComponent = interface;
  ICWSolidComponentDisp = dispinterface;
  ICWSolidBody = interface;
  ICWSolidBodyDisp = dispinterface;
  ICWMaterial = interface;
  ICWMaterialDisp = dispinterface;
  ICWShellManager = interface;
  ICWShellManagerDisp = dispinterface;
  ICWShell = interface;
  ICWShellDisp = dispinterface;
  ICWContactManager = interface;
  ICWContactManagerDisp = dispinterface;
  ICWContactSet = interface;
  ICWContactSetDisp = dispinterface;
  ICWContactComponent = interface;
  ICWContactComponentDisp = dispinterface;
  ICWLoadsAndRestraintsManager = interface;
  ICWLoadsAndRestraintsManagerDisp = dispinterface;
  ICWLoadsAndRestraints = interface;
  ICWLoadsAndRestraintsDisp = dispinterface;
  ICWRestraint = interface;
  ICWRestraintDisp = dispinterface;
  ICWPressure = interface;
  ICWPressureDisp = dispinterface;
  ICWForce = interface;
  ICWForceDisp = dispinterface;
  ICWGravity = interface;
  ICWGravityDisp = dispinterface;
  ICWCentriFugalForce = interface;
  ICWCentriFugalForceDisp = dispinterface;
  ICWTemperature = interface;
  ICWTemperatureDisp = dispinterface;
  ICWConvection = interface;
  ICWConvectionDisp = dispinterface;
  ICWHeatFlux = interface;
  ICWHeatFluxDisp = dispinterface;
  ICWHeatPower = interface;
  ICWHeatPowerDisp = dispinterface;
  ICWRadiation = interface;
  ICWRadiationDisp = dispinterface;
  ICWRigidConnector = interface;
  ICWRigidConnectorDisp = dispinterface;
  ICWLinkConnector = interface;
  ICWLinkConnectorDisp = dispinterface;
  ICWElasticConnector = interface;
  ICWElasticConnectorDisp = dispinterface;
  ICWPinConnector = interface;
  ICWPinConnectorDisp = dispinterface;
  ICWSpringConnector = interface;
  ICWSpringConnectorDisp = dispinterface;
  ICWBoltConnector = interface;
  ICWBoltConnectorDisp = dispinterface;
  ICWSpotWeldConnector = interface;
  ICWSpotWeldConnectorDisp = dispinterface;
  ICWBearingLoad = interface;
  ICWBearingLoadDisp = dispinterface;
  ICWBaseExcitation = interface;
  ICWBaseExcitationDisp = dispinterface;
  ICWDistributedMass = interface;
  ICWDistributedMassDisp = dispinterface;
  ICWDynamicInitialCondition = interface;
  ICWDynamicInitialConditionDisp = dispinterface;
  ICWRemoteLoad = interface;
  ICWRemoteLoadDisp = dispinterface;
  ICWEdgeWeldConnector = interface;
  ICWEdgeWeldConnectorDisp = dispinterface;
  ICWThermalStudyOptions = interface;
  ICWThermalStudyOptionsDisp = dispinterface;
  ICWResults = interface;
  ICWResultsDisp = dispinterface;
  ICWPlot = interface;
  ICWPlotDisp = dispinterface;
  ICWFrequencyStudyOptions = interface;
  ICWFrequencyStudyOptionsDisp = dispinterface;
  ICWBucklingStudyOptions = interface;
  ICWBucklingStudyOptionsDisp = dispinterface;
  ICWStaticStudyOptions = interface;
  ICWStaticStudyOptionsDisp = dispinterface;
  ICWNonLinearStudyOptions = interface;
  ICWNonLinearStudyOptionsDisp = dispinterface;
  ICWBeamManager = interface;
  ICWBeamManagerDisp = dispinterface;
  ICWBeamBody = interface;
  ICWBeamBodyDisp = dispinterface;
  ICWJoints = interface;
  ICWJointsDisp = dispinterface;
  ICWDynamicStudyOptions = interface;
  ICWDynamicStudyOptionsDisp = dispinterface;
  ICWDampingOptions = interface;
  ICWDampingOptionsDisp = dispinterface;
  ICWStudyResultOptions = interface;
  ICWStudyResultOptionsDisp = dispinterface;
  ICWDropTestStudyOptions = interface;
  ICWDropTestStudyOptionsDisp = dispinterface;
  ICWDropTestResultOptions = interface;
  ICWDropTestResultOptionsDisp = dispinterface;
  ICWDropTestSetup = interface;
  ICWDropTestSetupDisp = dispinterface;
  ICWFatigueStudyOptions = interface;
  ICWFatigueStudyOptionsDisp = dispinterface;
  ICWFatigueEvent = interface;
  ICWFatigueEventDisp = dispinterface;
  ICwAddincallback = interface;
  ICwAddincallbackDisp = dispinterface;

// *********************************************************************//
// Declaration of CoClasses defined in Type Library                       
// (NOTE: Here we map each CoClass to its Default Interface)              
// *********************************************************************//
  CwAddincallback = ICwAddincallback;
  CosmosWorks = ICosmosWorks;
  CWModelDoc = ICWModelDoc;
  CWStudyManager = ICWStudyManager;
  CWStudy = ICWStudy;
  CWSolidManager = ICWSolidManager;
  CWSolidComponent = ICWSolidComponent;
  CWSolidBody = ICWSolidBody;
  CWBeamManager = ICWBeamManager;
  CWBeamBody = ICWBeamBody;
  CWJoints = ICWJoints;
  CWMesh = ICWMesh;
  CWMeshControl = ICWMeshControl;
  CWMaterial = ICWMaterial;
  CWLoadsAndRestraintsManager = ICWLoadsAndRestraintsManager;
  CWLoadsAndRestraints = ICWLoadsAndRestraints;
  CWForce = ICWForce;
  CWPressure = ICWPressure;
  CWTemperature = ICWTemperature;
  CWHeatPower = ICWHeatPower;
  CWHeatFlux = ICWHeatFlux;
  CWConvection = ICWConvection;
  CWRadiation = ICWRadiation;
  CWGravity = ICWGravity;
  CWCentriFugalForce = ICWCentriFugalForce;
  CWRestraint = ICWRestraint;
  CWRemoteLoad = ICWRemoteLoad;
  CWBearingLoad = ICWBearingLoad;
  CWBaseExcitation = ICWBaseExcitation;
  CWDistributedMass = ICWDistributedMass;
  CWDynamicInitialCondition = ICWDynamicInitialCondition;
  CWFatigueEvent = ICWFatigueEvent;
  CWShellManager = ICWShellManager;
  CWShell = ICWShell;
  CWContactManager = ICWContactManager;
  CWContactSet = ICWContactSet;
  CWContactComponent = ICWContactComponent;
  CWThermalStudyOptions = ICWThermalStudyOptions;
  CWFrequencyStudyOptions = ICWFrequencyStudyOptions;
  CWBucklingStudyOptions = ICWBucklingStudyOptions;
  CWStaticStudyOptions = ICWStaticStudyOptions;
  CWNonLinearStudyOptions = ICWNonLinearStudyOptions;
  CWDynamicStudyOptions = ICWDynamicStudyOptions;
  CWDropTestStudyOptions = ICWDropTestStudyOptions;
  CWFatigueStudyOptions = ICWFatigueStudyOptions;
  CWDampingOptions = ICWDampingOptions;
  CWStudyResultOptions = ICWStudyResultOptions;
  CWDropTestSetup = ICWDropTestSetup;
  CWDropTestResultOptions = ICWDropTestResultOptions;
  CWResults = ICWResults;
  CWRigidConnector = ICWRigidConnector;
  CWLinkConnector = ICWLinkConnector;
  CWElasticConnector = ICWElasticConnector;
  CWPinConnector = ICWPinConnector;
  CWSpringConnector = ICWSpringConnector;
  CWBoltConnector = ICWBoltConnector;
  CWSpotWeldConnector = ICWSpotWeldConnector;
  CWEdgeWeldConnector = ICWEdgeWeldConnector;
  CWPlot = ICWPlot;


// *********************************************************************//
// Declaration of structures, unions and aliases.                         
// *********************************************************************//
  PInteger1 = ^Integer; {*}


// *********************************************************************//
// Interface: ICosmosWorks
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FD13E7BB-FD7F-4C1D-8ADB-71F9EDD8DAA4}
// *********************************************************************//
  ICosmosWorks = interface(IDispatch)
    ['{FD13E7BB-FD7F-4C1D-8ADB-71F9EDD8DAA4}']
    function Get_ActiveDoc: ICWModelDoc; safecall;
    function Get_VersionNumber: WideString; safecall;
    property ActiveDoc: ICWModelDoc read Get_ActiveDoc;
    property VersionNumber: WideString read Get_VersionNumber;
  end;

// *********************************************************************//
// DispIntf:  ICosmosWorksDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FD13E7BB-FD7F-4C1D-8ADB-71F9EDD8DAA4}
// *********************************************************************//
  ICosmosWorksDisp = dispinterface
    ['{FD13E7BB-FD7F-4C1D-8ADB-71F9EDD8DAA4}']
    property ActiveDoc: ICWModelDoc readonly dispid 1;
    property VersionNumber: WideString readonly dispid 2;
  end;

// *********************************************************************//
// Interface: ICWModelDoc
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B07A5588-BDE6-420D-9A02-BBB8BC822D1B}
// *********************************************************************//
  ICWModelDoc = interface(IDispatch)
    ['{B07A5588-BDE6-420D-9A02-BBB8BC822D1B}']
    function Get_StudyManager: ICWStudyManager; safecall;
    function Get_DefaultUnitSystem: Integer; safecall;
    procedure Set_DefaultUnitSystem(DefaultUnit: Integer); safecall;
    function AddDefaultStaticStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function AddDefaultThermalStudyPlot(NResultComponent: Integer; BTransient: WordBool): Integer; safecall;
    function AddDefaultDropTestStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function AddDefaultFatigueStudyPlot(NResultType: Integer): Integer; safecall;
    function AddDefaultNonLinearStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function GetSimulationOptionToggle(NUserPreferenceValue: Integer): WordBool; safecall;
    function SetSimulationOptionToggle(NUserPreferenceValue: Integer; BValue: WordBool): WordBool; safecall;
    function GetSimulationOptionIntegerValue(UserPreferenceValue: Integer): Integer; safecall;
    function SetSimulationOptionIntegerValue(UserPreferenceValue: Integer; Value: Integer): WordBool; safecall;
    function AddDefaultFrequencyOrBucklingStudyPlot(BAllModeShapes: WordBool; 
                                                    NDefMaxModeShapeValue: Integer; 
                                                    BDisplacement: WordBool; 
                                                    NDisplacementValue: Integer): Integer; safecall;
    function AddDefaultOptimizationStudyPlot(NOptimizationResultType: Integer): Integer; safecall;
    function SetSimulationOptionStringValue(NUserPreferenceValue: Integer; 
                                            const StringVal: WideString): WordBool; safecall;
    function GetSimulationOptionStringValue(NUserPreferenceValue: Integer): WideString; safecall;
    function SetSimulationOptionDoubleValue(NUserPreferenceValue: Integer; DVal: Double): WordBool; safecall;
    function GetSimulationOptionDoubleValue(NUserPreferenceValue: Integer): Double; safecall;
    function SetSimulationOptionDefaultPlotsBoundaryColorInRGB(NBoundaryOption: Integer; 
                                                               NRed: Integer; NGreen: Integer; 
                                                               NBlue: Integer): Integer; safecall;
    function GetSimulationOptionDefaultPlotsBoundaryColorInRGB(NBoundaryOption: Integer; 
                                                               out ErrorCode: Integer): OleVariant; safecall;
    function DeleteDefaultStaticStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function DeleteAllDefaultStaticStudyPlots: Integer; safecall;
    function DeleteDefaultThermalStudyPlot(NResultComponent: Integer; BTransient: WordBool): Integer; safecall;
    function DeleteAllDefaultThermalStudyPlots: Integer; safecall;
    function DeleteDefaultDropTestStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function DeleteAllDefaultDropTestStudyPlots: Integer; safecall;
    function DeleteDefaultFatigueStudyPlot(NResultType: Integer): Integer; safecall;
    function DeleteAllDefaultFatigueStudyPlots: Integer; safecall;
    function DeleteDefaultNonLinearStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; safecall;
    function DeleteAllDefaultNonLinearStudyPlots: Integer; safecall;
    property StudyManager: ICWStudyManager read Get_StudyManager;
    property DefaultUnitSystem: Integer read Get_DefaultUnitSystem write Set_DefaultUnitSystem;
  end;

// *********************************************************************//
// DispIntf:  ICWModelDocDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B07A5588-BDE6-420D-9A02-BBB8BC822D1B}
// *********************************************************************//
  ICWModelDocDisp = dispinterface
    ['{B07A5588-BDE6-420D-9A02-BBB8BC822D1B}']
    property StudyManager: ICWStudyManager readonly dispid 1;
    property DefaultUnitSystem: Integer dispid 2;
    function AddDefaultStaticStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 3;
    function AddDefaultThermalStudyPlot(NResultComponent: Integer; BTransient: WordBool): Integer; dispid 4;
    function AddDefaultDropTestStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 5;
    function AddDefaultFatigueStudyPlot(NResultType: Integer): Integer; dispid 6;
    function AddDefaultNonLinearStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 7;
    function GetSimulationOptionToggle(NUserPreferenceValue: Integer): WordBool; dispid 8;
    function SetSimulationOptionToggle(NUserPreferenceValue: Integer; BValue: WordBool): WordBool; dispid 9;
    function GetSimulationOptionIntegerValue(UserPreferenceValue: Integer): Integer; dispid 10;
    function SetSimulationOptionIntegerValue(UserPreferenceValue: Integer; Value: Integer): WordBool; dispid 11;
    function AddDefaultFrequencyOrBucklingStudyPlot(BAllModeShapes: WordBool; 
                                                    NDefMaxModeShapeValue: Integer; 
                                                    BDisplacement: WordBool; 
                                                    NDisplacementValue: Integer): Integer; dispid 12;
    function AddDefaultOptimizationStudyPlot(NOptimizationResultType: Integer): Integer; dispid 13;
    function SetSimulationOptionStringValue(NUserPreferenceValue: Integer; 
                                            const StringVal: WideString): WordBool; dispid 14;
    function GetSimulationOptionStringValue(NUserPreferenceValue: Integer): WideString; dispid 15;
    function SetSimulationOptionDoubleValue(NUserPreferenceValue: Integer; DVal: Double): WordBool; dispid 16;
    function GetSimulationOptionDoubleValue(NUserPreferenceValue: Integer): Double; dispid 17;
    function SetSimulationOptionDefaultPlotsBoundaryColorInRGB(NBoundaryOption: Integer; 
                                                               NRed: Integer; NGreen: Integer; 
                                                               NBlue: Integer): Integer; dispid 18;
    function GetSimulationOptionDefaultPlotsBoundaryColorInRGB(NBoundaryOption: Integer; 
                                                               out ErrorCode: Integer): OleVariant; dispid 19;
    function DeleteDefaultStaticStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 20;
    function DeleteAllDefaultStaticStudyPlots: Integer; dispid 21;
    function DeleteDefaultThermalStudyPlot(NResultComponent: Integer; BTransient: WordBool): Integer; dispid 22;
    function DeleteAllDefaultThermalStudyPlots: Integer; dispid 23;
    function DeleteDefaultDropTestStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 24;
    function DeleteAllDefaultDropTestStudyPlots: Integer; dispid 25;
    function DeleteDefaultFatigueStudyPlot(NResultType: Integer): Integer; dispid 26;
    function DeleteAllDefaultFatigueStudyPlots: Integer; dispid 27;
    function DeleteDefaultNonLinearStudyPlot(NResultType: Integer; NResultComponent: Integer): Integer; dispid 28;
    function DeleteAllDefaultNonLinearStudyPlots: Integer; dispid 29;
  end;

// *********************************************************************//
// Interface: ICWStudyManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9C3BEAB-0B21-41C1-8B44-2DE3CF28A03E}
// *********************************************************************//
  ICWStudyManager = interface(IDispatch)
    ['{C9C3BEAB-0B21-41C1-8B44-2DE3CF28A03E}']
    procedure Set_ActiveStudy(StudyIndex: Integer); safecall;
    function Get_ActiveStudy: Integer; safecall;
    function Get_StudyCount: Integer; safecall;
    function CreateNewStudy(const SName: WideString; NAnalysisType: Integer; NMeshType: Integer; 
                            out Errors: Integer): ICWStudy; safecall;
    function GetStudy(NIndex: Integer): ICWStudy; safecall;
    procedure DeleteStudy(const StudyName: WideString); safecall;
    function CreateNewStudy2(const SName: WideString; NAnalysisType: Integer; out Errors: Integer): ICWStudy; safecall;
    function CreateNewStudy3(const SName: WideString; NAnalysisType: Integer; 
                             NStudySubOptions: Integer; out Errors: Integer): ICWStudy; safecall;
    function RenameStudyFromID(NIndex: Integer; const SName: WideString): Integer; safecall;
    function RenameStudyFromName(const SOldName: WideString; const SNewName: WideString): Integer; safecall;
    function DuplicateStudy(const SName: WideString; const SNewName: WideString; 
                            const SConfiguration: WideString; NNLDynamic: Integer; 
                            out Errors: Integer): ICWStudy; safecall;
    property ActiveStudy: Integer read Get_ActiveStudy write Set_ActiveStudy;
    property StudyCount: Integer read Get_StudyCount;
  end;

// *********************************************************************//
// DispIntf:  ICWStudyManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C9C3BEAB-0B21-41C1-8B44-2DE3CF28A03E}
// *********************************************************************//
  ICWStudyManagerDisp = dispinterface
    ['{C9C3BEAB-0B21-41C1-8B44-2DE3CF28A03E}']
    property ActiveStudy: Integer dispid 1;
    property StudyCount: Integer readonly dispid 2;
    function CreateNewStudy(const SName: WideString; NAnalysisType: Integer; NMeshType: Integer; 
                            out Errors: Integer): ICWStudy; dispid 3;
    function GetStudy(NIndex: Integer): ICWStudy; dispid 4;
    procedure DeleteStudy(const StudyName: WideString); dispid 5;
    function CreateNewStudy2(const SName: WideString; NAnalysisType: Integer; out Errors: Integer): ICWStudy; dispid 6;
    function CreateNewStudy3(const SName: WideString; NAnalysisType: Integer; 
                             NStudySubOptions: Integer; out Errors: Integer): ICWStudy; dispid 7;
    function RenameStudyFromID(NIndex: Integer; const SName: WideString): Integer; dispid 8;
    function RenameStudyFromName(const SOldName: WideString; const SNewName: WideString): Integer; dispid 9;
    function DuplicateStudy(const SName: WideString; const SNewName: WideString; 
                            const SConfiguration: WideString; NNLDynamic: Integer; 
                            out Errors: Integer): ICWStudy; dispid 10;
  end;

// *********************************************************************//
// Interface: ICWStudy
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {999CA1B7-177C-4823-9F0E-A1816C1A003C}
// *********************************************************************//
  ICWStudy = interface(IDispatch)
    ['{999CA1B7-177C-4823-9F0E-A1816C1A003C}']
    function Get_Name: WideString; safecall;
    function Get_MeshType: Integer; safecall;
    function Get_AnalysisType: Integer; safecall;
    function Get_Mesh: ICWMesh; safecall;
    function Get_SolidManager: ICWSolidManager; safecall;
    function Get_ShellManager: ICWShellManager; safecall;
    function Get_ContactManager: ICWContactManager; safecall;
    function Get_LoadsAndRestraintsManager: ICWLoadsAndRestraintsManager; safecall;
    function CreateMesh(NUnits: Integer; NElementSize: Double; NTolerance: Double): Integer; safecall;
    function RunAnalysis: Integer; safecall;
    procedure UpdateAllComponents; safecall;
    function Get_ThermalStudyOptions: ICWThermalStudyOptions; safecall;
    function Get_Results: ICWResults; safecall;
    function Get_FrequencyStudyOptions: ICWFrequencyStudyOptions; safecall;
    function Get_BucklingStudyOptions: ICWBucklingStudyOptions; safecall;
    function Get_StaticStudyOptions: ICWStaticStudyOptions; safecall;
    function Get_NonLinearStudyOptions: ICWNonLinearStudyOptions; safecall;
    function SetNonLinearStudyOptions(const NonLinearOption: IDispatch): Integer; safecall;
    function Get_BeamManager: ICWBeamManager; safecall;
    function CreateAnalysisDatabase(const sResultPathName: WideString; out sDataBaseName: WideString): Integer; safecall;
    function ConnectAnalysisDatabase(const sResultPathName: WideString): Integer; safecall;
    function SetResultCombinationSetup(NOption: Integer; NItems: Integer; 
                                       MultiplicationFactors: OleVariant; StudyNames: OleVariant): Integer; safecall;
    function Get_DynamicStudyOptions: ICWDynamicStudyOptions; safecall;
    function Get_DampingOptions: ICWDampingOptions; safecall;
    function Get_StudyResultOptions: ICWStudyResultOptions; safecall;
    function Get_DropTestStudyOptions: ICWDropTestStudyOptions; safecall;
    function Get_DropTestResultOptions: ICWDropTestResultOptions; safecall;
    function AddDropTestSetup(const EntityForGravity: IDispatch; out ErrorCode: Integer): ICWDropTestSetup; safecall;
    function Get_DropTestSetup: ICWDropTestSetup; safecall;
    function Get_FatigueStudyOptions: ICWFatigueStudyOptions; safecall;
    function SetFatigueResultOptions(NFatigueCalculationsOption: Integer; DispArray: OleVariant): Integer; safecall;
    procedure Set_ShowOrHideFixtures(Param1: WordBool); safecall;
    procedure Set_ShowOrHideForce(Param1: WordBool); safecall;
    function ExportSimulationStudy(const SLocationPath: WideString; const SFileName: WideString; 
                                   NFormat: Integer; NNodeOffset: Integer; NElementOffset: Integer; 
                                   NOption: Integer; NUnit: Integer): Integer; safecall;
    function Get_DynamicAnalysisSubType: Integer; safecall;
    function Get_ConfigurationName: WideString; safecall;
    function CopyMeshFromStudy(const SStudyName: WideString): Integer; safecall;
    function GenerateReport(const SReportPath: WideString; const SDocName: WideString; 
                            BShowOnPublish: WordBool): Integer; safecall;
    property Name: WideString read Get_Name;
    property MeshType: Integer read Get_MeshType;
    property AnalysisType: Integer read Get_AnalysisType;
    property Mesh: ICWMesh read Get_Mesh;
    property SolidManager: ICWSolidManager read Get_SolidManager;
    property ShellManager: ICWShellManager read Get_ShellManager;
    property ContactManager: ICWContactManager read Get_ContactManager;
    property LoadsAndRestraintsManager: ICWLoadsAndRestraintsManager read Get_LoadsAndRestraintsManager;
    property ThermalStudyOptions: ICWThermalStudyOptions read Get_ThermalStudyOptions;
    property Results: ICWResults read Get_Results;
    property FrequencyStudyOptions: ICWFrequencyStudyOptions read Get_FrequencyStudyOptions;
    property BucklingStudyOptions: ICWBucklingStudyOptions read Get_BucklingStudyOptions;
    property StaticStudyOptions: ICWStaticStudyOptions read Get_StaticStudyOptions;
    property NonLinearStudyOptions: ICWNonLinearStudyOptions read Get_NonLinearStudyOptions;
    property BeamManager: ICWBeamManager read Get_BeamManager;
    property DynamicStudyOptions: ICWDynamicStudyOptions read Get_DynamicStudyOptions;
    property DampingOptions: ICWDampingOptions read Get_DampingOptions;
    property StudyResultOptions: ICWStudyResultOptions read Get_StudyResultOptions;
    property DropTestStudyOptions: ICWDropTestStudyOptions read Get_DropTestStudyOptions;
    property DropTestResultOptions: ICWDropTestResultOptions read Get_DropTestResultOptions;
    property DropTestSetup: ICWDropTestSetup read Get_DropTestSetup;
    property FatigueStudyOptions: ICWFatigueStudyOptions read Get_FatigueStudyOptions;
    property ShowOrHideFixtures: WordBool write Set_ShowOrHideFixtures;
    property ShowOrHideForce: WordBool write Set_ShowOrHideForce;
    property DynamicAnalysisSubType: Integer read Get_DynamicAnalysisSubType;
    property ConfigurationName: WideString read Get_ConfigurationName;
  end;

// *********************************************************************//
// DispIntf:  ICWStudyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {999CA1B7-177C-4823-9F0E-A1816C1A003C}
// *********************************************************************//
  ICWStudyDisp = dispinterface
    ['{999CA1B7-177C-4823-9F0E-A1816C1A003C}']
    property Name: WideString readonly dispid 1;
    property MeshType: Integer readonly dispid 2;
    property AnalysisType: Integer readonly dispid 3;
    property Mesh: ICWMesh readonly dispid 4;
    property SolidManager: ICWSolidManager readonly dispid 5;
    property ShellManager: ICWShellManager readonly dispid 6;
    property ContactManager: ICWContactManager readonly dispid 7;
    property LoadsAndRestraintsManager: ICWLoadsAndRestraintsManager readonly dispid 8;
    function CreateMesh(NUnits: Integer; NElementSize: Double; NTolerance: Double): Integer; dispid 9;
    function RunAnalysis: Integer; dispid 10;
    procedure UpdateAllComponents; dispid 11;
    property ThermalStudyOptions: ICWThermalStudyOptions readonly dispid 12;
    property Results: ICWResults readonly dispid 13;
    property FrequencyStudyOptions: ICWFrequencyStudyOptions readonly dispid 14;
    property BucklingStudyOptions: ICWBucklingStudyOptions readonly dispid 15;
    property StaticStudyOptions: ICWStaticStudyOptions readonly dispid 16;
    property NonLinearStudyOptions: ICWNonLinearStudyOptions readonly dispid 17;
    function SetNonLinearStudyOptions(const NonLinearOption: IDispatch): Integer; dispid 18;
    property BeamManager: ICWBeamManager readonly dispid 19;
    function CreateAnalysisDatabase(const sResultPathName: WideString; out sDataBaseName: WideString): Integer; dispid 20;
    function ConnectAnalysisDatabase(const sResultPathName: WideString): Integer; dispid 21;
    function SetResultCombinationSetup(NOption: Integer; NItems: Integer; 
                                       MultiplicationFactors: OleVariant; StudyNames: OleVariant): Integer; dispid 22;
    property DynamicStudyOptions: ICWDynamicStudyOptions readonly dispid 23;
    property DampingOptions: ICWDampingOptions readonly dispid 24;
    property StudyResultOptions: ICWStudyResultOptions readonly dispid 25;
    property DropTestStudyOptions: ICWDropTestStudyOptions readonly dispid 26;
    property DropTestResultOptions: ICWDropTestResultOptions readonly dispid 27;
    function AddDropTestSetup(const EntityForGravity: IDispatch; out ErrorCode: Integer): ICWDropTestSetup; dispid 28;
    property DropTestSetup: ICWDropTestSetup readonly dispid 29;
    property FatigueStudyOptions: ICWFatigueStudyOptions readonly dispid 30;
    function SetFatigueResultOptions(NFatigueCalculationsOption: Integer; DispArray: OleVariant): Integer; dispid 31;
    property ShowOrHideFixtures: WordBool writeonly dispid 32;
    property ShowOrHideForce: WordBool writeonly dispid 33;
    function ExportSimulationStudy(const SLocationPath: WideString; const SFileName: WideString; 
                                   NFormat: Integer; NNodeOffset: Integer; NElementOffset: Integer; 
                                   NOption: Integer; NUnit: Integer): Integer; dispid 34;
    property DynamicAnalysisSubType: Integer readonly dispid 35;
    property ConfigurationName: WideString readonly dispid 36;
    function CopyMeshFromStudy(const SStudyName: WideString): Integer; dispid 37;
    function GenerateReport(const SReportPath: WideString; const SDocName: WideString; 
                            BShowOnPublish: WordBool): Integer; dispid 38;
  end;

// *********************************************************************//
// Interface: ICWMesh
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5818CF4-0C05-49AC-997F-8A0DB432203B}
// *********************************************************************//
  ICWMesh = interface(IDispatch)
    ['{F5818CF4-0C05-49AC-997F-8A0DB432203B}']
    function Get_MeshType: Integer; safecall;
    function Get_MeshState: Integer; safecall;
    function Get_Quality: Integer; safecall;
    procedure Set_Quality(NQuality: Integer); safecall;
    function Get_AutomaticTransition: Integer; safecall;
    procedure Set_AutomaticTransition(BValue: Integer); safecall;
    function Get_SmoothSurface: Integer; safecall;
    procedure Set_SmoothSurface(BValue: Integer); safecall;
    function Get_AutomaticLooping: Integer; safecall;
    procedure Set_AutomaticLooping(BValue: Integer); safecall;
    function Get_NumberOfLoops: Integer; safecall;
    procedure Set_NumberOfLoops(DValue: Integer); safecall;
    function Get_ElementSizeFactorForEachLoop: Double; safecall;
    procedure Set_ElementSizeFactorForEachLoop(DValue: Double); safecall;
    function Get_ToleranceFactorForEachLoop: Double; safecall;
    procedure Set_ToleranceFactorForEachLoop(DValue: Double); safecall;
    function Get_MesherType: Integer; safecall;
    procedure Set_MesherType(NMesherType: Integer); safecall;
    function Get_UseJacobianCheckForSolids: Integer; safecall;
    procedure Set_UseJacobianCheckForSolids(BUse: Integer); safecall;
    function Get_UseJacobianCheckForShells: Integer; safecall;
    procedure Set_UseJacobianCheckForShells(BUse: Integer); safecall;
    function Get_NodeCount: Integer; safecall;
    function Get_ElementCount: Integer; safecall;
    function Get_MinElementsInCircle: Integer; safecall;
    procedure Set_MinElementsInCircle(NElements: Integer); safecall;
    function Get_MaxAspectRatio: Double; safecall;
    function Get_TimeToCompleteMesh: Integer; safecall;
    function Get_IsMeshFailed: Integer; safecall;
    function Get_MeshControlCount: Integer; safecall;
    function Get_ElementSize: Double; safecall;
    function Get_Tolerance: Double; safecall;
    function Get_GrowthRatio: Double; safecall;
    procedure Set_GrowthRatio(dGrowthRatio: Double); safecall;
    function Get_Unit_: Integer; safecall;
    function Get_MaxElementSize: Double; safecall;
    function Get_MinElementSize: Double; safecall;
    function GetNodes: OleVariant; safecall;
    function GetElements: OleVariant; safecall;
    function ApplyMeshControl(EntitiesArray: OleVariant; out ErrorCode: Integer): ICWMeshControl; safecall;
    procedure DeleteMeshControl(const SName: WideString); safecall;
    function GetShellElementNormalAt(const DispFace: IDispatch): Integer; safecall;
    function GetNodeDataFromEntity(const DispEntity: IDispatch; out NCount: Integer): OleVariant; safecall;
    function GetElementDataFromEntity(const DispEntity: IDispatch; out NCount: Integer): OleVariant; safecall;
    function GetNoOfFailedComponents: Integer; safecall;
    function IsComponentFailed(const SName: WideString): Integer; safecall;
    function GetFailedFaces(out NFailedFaces: Integer): OleVariant; safecall;
    function GetFailedEdges(out NFailedEdges: Integer): OleVariant; safecall;
    function GetMeshControlAt(NIndex: Integer): ICWMeshControl; safecall;
    function GetFailedComponents(out NComp: Integer): OleVariant; safecall;
    function FlipShellElements(DispFaceArray: OleVariant): Integer; safecall;
    procedure GetDefaultElementSizeAndTolerance(NUnits: Integer; out DElementSize: Double; 
                                                out DTolerance: Double); safecall;
    function GetNodeLocation(NNodeNo: Integer; out XVal: Double; out YVal: Double; out ZVal: Double): Integer; safecall;
    function GetElementLocation(NNodeNo: Integer; out XVal: Double; out YVal: Double; 
                                out ZVal: Double): Integer; safecall;
    procedure GetDefaultMaxAndMinElementSize(NUnits: Integer; out DMaxElementSize: Double; 
                                             out DMinElementSize: Double); safecall;
    function GetWorstJacobianRatio: Double; safecall;
    property MeshType: Integer read Get_MeshType;
    property MeshState: Integer read Get_MeshState;
    property Quality: Integer read Get_Quality write Set_Quality;
    property AutomaticTransition: Integer read Get_AutomaticTransition write Set_AutomaticTransition;
    property SmoothSurface: Integer read Get_SmoothSurface write Set_SmoothSurface;
    property AutomaticLooping: Integer read Get_AutomaticLooping write Set_AutomaticLooping;
    property NumberOfLoops: Integer read Get_NumberOfLoops write Set_NumberOfLoops;
    property ElementSizeFactorForEachLoop: Double read Get_ElementSizeFactorForEachLoop write Set_ElementSizeFactorForEachLoop;
    property ToleranceFactorForEachLoop: Double read Get_ToleranceFactorForEachLoop write Set_ToleranceFactorForEachLoop;
    property MesherType: Integer read Get_MesherType write Set_MesherType;
    property UseJacobianCheckForSolids: Integer read Get_UseJacobianCheckForSolids write Set_UseJacobianCheckForSolids;
    property UseJacobianCheckForShells: Integer read Get_UseJacobianCheckForShells write Set_UseJacobianCheckForShells;
    property NodeCount: Integer read Get_NodeCount;
    property ElementCount: Integer read Get_ElementCount;
    property MinElementsInCircle: Integer read Get_MinElementsInCircle write Set_MinElementsInCircle;
    property MaxAspectRatio: Double read Get_MaxAspectRatio;
    property TimeToCompleteMesh: Integer read Get_TimeToCompleteMesh;
    property IsMeshFailed: Integer read Get_IsMeshFailed;
    property MeshControlCount: Integer read Get_MeshControlCount;
    property ElementSize: Double read Get_ElementSize;
    property Tolerance: Double read Get_Tolerance;
    property GrowthRatio: Double read Get_GrowthRatio write Set_GrowthRatio;
    property Unit_: Integer read Get_Unit_;
    property MaxElementSize: Double read Get_MaxElementSize;
    property MinElementSize: Double read Get_MinElementSize;
  end;

// *********************************************************************//
// DispIntf:  ICWMeshDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F5818CF4-0C05-49AC-997F-8A0DB432203B}
// *********************************************************************//
  ICWMeshDisp = dispinterface
    ['{F5818CF4-0C05-49AC-997F-8A0DB432203B}']
    property MeshType: Integer readonly dispid 1;
    property MeshState: Integer readonly dispid 2;
    property Quality: Integer dispid 3;
    property AutomaticTransition: Integer dispid 4;
    property SmoothSurface: Integer dispid 5;
    property AutomaticLooping: Integer dispid 6;
    property NumberOfLoops: Integer dispid 7;
    property ElementSizeFactorForEachLoop: Double dispid 8;
    property ToleranceFactorForEachLoop: Double dispid 9;
    property MesherType: Integer dispid 10;
    property UseJacobianCheckForSolids: Integer dispid 11;
    property UseJacobianCheckForShells: Integer dispid 12;
    property NodeCount: Integer readonly dispid 13;
    property ElementCount: Integer readonly dispid 14;
    property MinElementsInCircle: Integer dispid 15;
    property MaxAspectRatio: Double readonly dispid 16;
    property TimeToCompleteMesh: Integer readonly dispid 17;
    property IsMeshFailed: Integer readonly dispid 18;
    property MeshControlCount: Integer readonly dispid 19;
    property ElementSize: Double readonly dispid 20;
    property Tolerance: Double readonly dispid 21;
    property GrowthRatio: Double dispid 22;
    property Unit_: Integer readonly dispid 23;
    property MaxElementSize: Double readonly dispid 24;
    property MinElementSize: Double readonly dispid 25;
    function GetNodes: OleVariant; dispid 26;
    function GetElements: OleVariant; dispid 27;
    function ApplyMeshControl(EntitiesArray: OleVariant; out ErrorCode: Integer): ICWMeshControl; dispid 28;
    procedure DeleteMeshControl(const SName: WideString); dispid 29;
    function GetShellElementNormalAt(const DispFace: IDispatch): Integer; dispid 30;
    function GetNodeDataFromEntity(const DispEntity: IDispatch; out NCount: Integer): OleVariant; dispid 31;
    function GetElementDataFromEntity(const DispEntity: IDispatch; out NCount: Integer): OleVariant; dispid 32;
    function GetNoOfFailedComponents: Integer; dispid 33;
    function IsComponentFailed(const SName: WideString): Integer; dispid 34;
    function GetFailedFaces(out NFailedFaces: Integer): OleVariant; dispid 35;
    function GetFailedEdges(out NFailedEdges: Integer): OleVariant; dispid 36;
    function GetMeshControlAt(NIndex: Integer): ICWMeshControl; dispid 37;
    function GetFailedComponents(out NComp: Integer): OleVariant; dispid 38;
    function FlipShellElements(DispFaceArray: OleVariant): Integer; dispid 39;
    procedure GetDefaultElementSizeAndTolerance(NUnits: Integer; out DElementSize: Double; 
                                                out DTolerance: Double); dispid 40;
    function GetNodeLocation(NNodeNo: Integer; out XVal: Double; out YVal: Double; out ZVal: Double): Integer; dispid 41;
    function GetElementLocation(NNodeNo: Integer; out XVal: Double; out YVal: Double; 
                                out ZVal: Double): Integer; dispid 42;
    procedure GetDefaultMaxAndMinElementSize(NUnits: Integer; out DMaxElementSize: Double; 
                                             out DMinElementSize: Double); dispid 43;
    function GetWorstJacobianRatio: Double; dispid 44;
  end;

// *********************************************************************//
// Interface: ICWMeshControl
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {270F9491-0450-4BB5-BEF5-6E520C01D9AF}
// *********************************************************************//
  ICWMeshControl = interface(IDispatch)
    ['{270F9491-0450-4BB5-BEF5-6E520C01D9AF}']
    function Get_ElementSize: Double; safecall;
    procedure Set_ElementSize(DEleSize: Double); safecall;
    function Get_Ratio: Double; safecall;
    procedure Set_Ratio(DRatio: Double); safecall;
    function Get_Layers: Integer; safecall;
    procedure Set_Layers(NVal: Integer); safecall;
    function Get_Units: Integer; safecall;
    procedure Set_Units(NUnits: Integer); safecall;
    function Get_UseSameElementSize: Integer; safecall;
    procedure Set_UseSameElementSize(BUseSame: Integer); safecall;
    function Get_WeightFactor: Double; safecall;
    procedure Set_WeightFactor(DWeightfactor: Double); safecall;
    function Get_EntityCount: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure SuppressUnSuppress; safecall;
    function GetEntityAt(NIndex: Integer; out NSelectionType: Integer): IDispatch; safecall;
    procedure MeshControlBeginEdit; safecall;
    function MeshControlEndEdit: Integer; safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    function Get_State: Integer; safecall;
    function Get_NumofElementsforBeams: SYSINT; safecall;
    procedure Set_NumofElementsforBeams(NNumofEle: SYSINT); safecall;
    property ElementSize: Double read Get_ElementSize write Set_ElementSize;
    property Ratio: Double read Get_Ratio write Set_Ratio;
    property Layers: Integer read Get_Layers write Set_Layers;
    property Units: Integer read Get_Units write Set_Units;
    property UseSameElementSize: Integer read Get_UseSameElementSize write Set_UseSameElementSize;
    property WeightFactor: Double read Get_WeightFactor write Set_WeightFactor;
    property EntityCount: Integer read Get_EntityCount;
    property Name: WideString read Get_Name;
    property State: Integer read Get_State;
    property NumofElementsforBeams: SYSINT read Get_NumofElementsforBeams write Set_NumofElementsforBeams;
  end;

// *********************************************************************//
// DispIntf:  ICWMeshControlDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {270F9491-0450-4BB5-BEF5-6E520C01D9AF}
// *********************************************************************//
  ICWMeshControlDisp = dispinterface
    ['{270F9491-0450-4BB5-BEF5-6E520C01D9AF}']
    property ElementSize: Double dispid 1;
    property Ratio: Double dispid 2;
    property Layers: Integer dispid 3;
    property Units: Integer dispid 4;
    property UseSameElementSize: Integer dispid 5;
    property WeightFactor: Double dispid 6;
    property EntityCount: Integer readonly dispid 7;
    property Name: WideString readonly dispid 8;
    procedure SuppressUnSuppress; dispid 9;
    function GetEntityAt(NIndex: Integer; out NSelectionType: Integer): IDispatch; dispid 10;
    procedure MeshControlBeginEdit; dispid 11;
    function MeshControlEndEdit: Integer; dispid 12;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 13;
    procedure RemoveEntity(NIndex: Integer); dispid 14;
    property State: Integer readonly dispid 15;
    property NumofElementsforBeams: SYSINT dispid 16;
  end;

// *********************************************************************//
// Interface: ICWSolidManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9D3E9AB-01A4-4B1C-A609-79E6A11D79C5}
// *********************************************************************//
  ICWSolidManager = interface(IDispatch)
    ['{B9D3E9AB-01A4-4B1C-A609-79E6A11D79C5}']
    function Get_ComponentCount: Integer; safecall;
    function GetComponentAt(NIndex: Integer; out ErrorCode: Integer): ICWSolidComponent; safecall;
    property ComponentCount: Integer read Get_ComponentCount;
  end;

// *********************************************************************//
// DispIntf:  ICWSolidManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {B9D3E9AB-01A4-4B1C-A609-79E6A11D79C5}
// *********************************************************************//
  ICWSolidManagerDisp = dispinterface
    ['{B9D3E9AB-01A4-4B1C-A609-79E6A11D79C5}']
    property ComponentCount: Integer readonly dispid 1;
    function GetComponentAt(NIndex: Integer; out ErrorCode: Integer): ICWSolidComponent; dispid 2;
  end;

// *********************************************************************//
// Interface: ICWSolidComponent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16F9E890-CC94-4F7A-B654-30D4CF5E7521}
// *********************************************************************//
  ICWSolidComponent = interface(IDispatch)
    ['{16F9E890-CC94-4F7A-B654-30D4CF5E7521}']
    function Get_SolidBodyCount: Integer; safecall;
    function Get_ComponentName: WideString; safecall;
    function GetSolidBodyAt(NIndex: Integer; out ErrorCode: Integer): ICWSolidBody; safecall;
    property SolidBodyCount: Integer read Get_SolidBodyCount;
    property ComponentName: WideString read Get_ComponentName;
  end;

// *********************************************************************//
// DispIntf:  ICWSolidComponentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {16F9E890-CC94-4F7A-B654-30D4CF5E7521}
// *********************************************************************//
  ICWSolidComponentDisp = dispinterface
    ['{16F9E890-CC94-4F7A-B654-30D4CF5E7521}']
    property SolidBodyCount: Integer readonly dispid 1;
    property ComponentName: WideString readonly dispid 2;
    function GetSolidBodyAt(NIndex: Integer; out ErrorCode: Integer): ICWSolidBody; dispid 3;
  end;

// *********************************************************************//
// Interface: ICWSolidBody
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {699EF572-B1EB-454A-90B7-AF0A52F59E1B}
// *********************************************************************//
  ICWSolidBody = interface(IDispatch)
    ['{699EF572-B1EB-454A-90B7-AF0A52F59E1B}']
    function Get_SolidBodyName: WideString; safecall;
    function GetDefaultMaterial: ICWMaterial; safecall;
    function GetSolidBodyMaterial: ICWMaterial; safecall;
    function SetSolidBodyMaterial(const RetVal: ICWMaterial): Integer; safecall;
    function SetLibraryMaterial(const SLibWithPathName: WideString; const SMaterialName: WideString): Integer; safecall;
    function ConvertToBeamBody: Integer; safecall;
    property SolidBodyName: WideString read Get_SolidBodyName;
  end;

// *********************************************************************//
// DispIntf:  ICWSolidBodyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {699EF572-B1EB-454A-90B7-AF0A52F59E1B}
// *********************************************************************//
  ICWSolidBodyDisp = dispinterface
    ['{699EF572-B1EB-454A-90B7-AF0A52F59E1B}']
    property SolidBodyName: WideString readonly dispid 1;
    function GetDefaultMaterial: ICWMaterial; dispid 2;
    function GetSolidBodyMaterial: ICWMaterial; dispid 3;
    function SetSolidBodyMaterial(const RetVal: ICWMaterial): Integer; dispid 4;
    function SetLibraryMaterial(const SLibWithPathName: WideString; const SMaterialName: WideString): Integer; dispid 5;
    function ConvertToBeamBody: Integer; dispid 6;
  end;

// *********************************************************************//
// Interface: ICWMaterial
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF582064-D953-42DD-AFAD-BBE8364B93B4}
// *********************************************************************//
  ICWMaterial = interface(IDispatch)
    ['{BF582064-D953-42DD-AFAD-BBE8364B93B4}']
    function Get_Count: Integer; safecall;
    function Get_Source: Integer; safecall;
    function Get_MaterialUnits: Integer; safecall;
    procedure Set_MaterialUnits(NUnits: Integer); safecall;
    function Get_ModelType: Integer; safecall;
    procedure Set_ModelType(NModelType: Integer); safecall;
    function Get_Category: WideString; safecall;
    procedure Set_Category(const SCategory: WideString); safecall;
    function Get_MaterialName: WideString; safecall;
    procedure Set_MaterialName(const SMaterialName: WideString); safecall;
    function Get_Description: WideString; safecall;
    procedure Set_Description(const SDescription: WideString); safecall;
    function Get_IncludeCreep: Integer; safecall;
    procedure Set_IncludeCreep(BIncludeCreep: Integer); safecall;
    function Get_MooneyRivlinConstants: Integer; safecall;
    procedure Set_MooneyRivlinConstants(NMooneyConstants: Integer); safecall;
    function Get_OgdenConstants: Integer; safecall;
    procedure Set_OgdenConstants(NOgdenConstant: Integer); safecall;
    function Get_NoOfShearModuli: Integer; safecall;
    procedure Set_NoOfShearModuli(NShearModuliNumber: Integer); safecall;
    function Get_NoOfBulkModuli: Integer; safecall;
    procedure Set_NoOfBulkModuli(NBulkModuliNumber: Integer); safecall;
    function GetPropertyByName(NUnit: Integer; const SName: WideString; out BTempDependent: Integer): Double; safecall;
    procedure SetPropertyByName(const SName: WideString; DValue: Double; BValue: Integer); safecall;
    function GetTemperatureCurveForProperty(const SPropName: WideString): OleVariant; safecall;
    procedure SetTemperatureCurveForProperty(const SPropName: WideString; VarCurveData: OleVariant; 
                                             out ErrorCode: Integer); safecall;
    function GetFatigueSNCurve(NIndex: Integer; out DStressRatio: Double): OleVariant; safecall;
    procedure SetFatigueSNCurve(NIndex: Integer; DStressRatio: Double; 
                                VarFatigueSNCurveData: OleVariant; out ErrorCode: Integer); safecall;
    function GetStressStrainCurve: OleVariant; safecall;
    procedure SetStressStrainCurve(VarCurveData: OleVariant; out ErrorCode: Integer); safecall;
    function GetMaterialDataCurve(NIndex: Integer; out BUseCurve: Integer): OleVariant; safecall;
    procedure SetMaterialDataCurve(NIndex: Integer; BUseCurve: Integer; VarCurveData: OleVariant; 
                                   out ErrorCode: Integer); safecall;
    function GetReferencePlaneName: WideString; safecall;
    procedure SetReferencePlane(const PlaneDisp: IDispatch; out ErrorCode: Integer); safecall;
    function Get_SNCurveSource: Integer; safecall;
    procedure Set_SNCurveSource(NSource: Integer); safecall;
    function GetAustenticSteelCurve: OleVariant; safecall;
    function GetCarbonSteelCurve: OleVariant; safecall;
    property Count: Integer read Get_Count;
    property Source: Integer read Get_Source;
    property MaterialUnits: Integer read Get_MaterialUnits write Set_MaterialUnits;
    property ModelType: Integer read Get_ModelType write Set_ModelType;
    property Category: WideString read Get_Category write Set_Category;
    property MaterialName: WideString read Get_MaterialName write Set_MaterialName;
    property Description: WideString read Get_Description write Set_Description;
    property IncludeCreep: Integer read Get_IncludeCreep write Set_IncludeCreep;
    property MooneyRivlinConstants: Integer read Get_MooneyRivlinConstants write Set_MooneyRivlinConstants;
    property OgdenConstants: Integer read Get_OgdenConstants write Set_OgdenConstants;
    property NoOfShearModuli: Integer read Get_NoOfShearModuli write Set_NoOfShearModuli;
    property NoOfBulkModuli: Integer read Get_NoOfBulkModuli write Set_NoOfBulkModuli;
    property SNCurveSource: Integer read Get_SNCurveSource write Set_SNCurveSource;
  end;

// *********************************************************************//
// DispIntf:  ICWMaterialDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BF582064-D953-42DD-AFAD-BBE8364B93B4}
// *********************************************************************//
  ICWMaterialDisp = dispinterface
    ['{BF582064-D953-42DD-AFAD-BBE8364B93B4}']
    property Count: Integer readonly dispid 1;
    property Source: Integer readonly dispid 2;
    property MaterialUnits: Integer dispid 3;
    property ModelType: Integer dispid 4;
    property Category: WideString dispid 5;
    property MaterialName: WideString dispid 6;
    property Description: WideString dispid 7;
    property IncludeCreep: Integer dispid 8;
    property MooneyRivlinConstants: Integer dispid 9;
    property OgdenConstants: Integer dispid 10;
    property NoOfShearModuli: Integer dispid 11;
    property NoOfBulkModuli: Integer dispid 12;
    function GetPropertyByName(NUnit: Integer; const SName: WideString; out BTempDependent: Integer): Double; dispid 13;
    procedure SetPropertyByName(const SName: WideString; DValue: Double; BValue: Integer); dispid 14;
    function GetTemperatureCurveForProperty(const SPropName: WideString): OleVariant; dispid 15;
    procedure SetTemperatureCurveForProperty(const SPropName: WideString; VarCurveData: OleVariant; 
                                             out ErrorCode: Integer); dispid 16;
    function GetFatigueSNCurve(NIndex: Integer; out DStressRatio: Double): OleVariant; dispid 17;
    procedure SetFatigueSNCurve(NIndex: Integer; DStressRatio: Double; 
                                VarFatigueSNCurveData: OleVariant; out ErrorCode: Integer); dispid 18;
    function GetStressStrainCurve: OleVariant; dispid 19;
    procedure SetStressStrainCurve(VarCurveData: OleVariant; out ErrorCode: Integer); dispid 20;
    function GetMaterialDataCurve(NIndex: Integer; out BUseCurve: Integer): OleVariant; dispid 21;
    procedure SetMaterialDataCurve(NIndex: Integer; BUseCurve: Integer; VarCurveData: OleVariant; 
                                   out ErrorCode: Integer); dispid 22;
    function GetReferencePlaneName: WideString; dispid 23;
    procedure SetReferencePlane(const PlaneDisp: IDispatch; out ErrorCode: Integer); dispid 24;
    property SNCurveSource: Integer dispid 25;
    function GetAustenticSteelCurve: OleVariant; dispid 26;
    function GetCarbonSteelCurve: OleVariant; dispid 27;
  end;

// *********************************************************************//
// Interface: ICWShellManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0680FB2B-F938-43C4-92D0-722586C802FD}
// *********************************************************************//
  ICWShellManager = interface(IDispatch)
    ['{0680FB2B-F938-43C4-92D0-722586C802FD}']
    function Get_ShellCount: Integer; safecall;
    function GetShellAt(NIndex: Integer; out ErrorCode: Integer): ICWShell; safecall;
    function CreateShell(DispArray: OleVariant): Integer; safecall;
    procedure DeleteShell(const SName: WideString); safecall;
    property ShellCount: Integer read Get_ShellCount;
  end;

// *********************************************************************//
// DispIntf:  ICWShellManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0680FB2B-F938-43C4-92D0-722586C802FD}
// *********************************************************************//
  ICWShellManagerDisp = dispinterface
    ['{0680FB2B-F938-43C4-92D0-722586C802FD}']
    property ShellCount: Integer readonly dispid 1;
    function GetShellAt(NIndex: Integer; out ErrorCode: Integer): ICWShell; dispid 2;
    function CreateShell(DispArray: OleVariant): Integer; dispid 3;
    procedure DeleteShell(const SName: WideString); dispid 4;
  end;

// *********************************************************************//
// Interface: ICWShell
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {34E51079-B9CD-4FD3-B862-E4EC94DDBE13}
// *********************************************************************//
  ICWShell = interface(IDispatch)
    ['{34E51079-B9CD-4FD3-B862-E4EC94DDBE13}']
    function Get_Name: WideString; safecall;
    function Get_ShellThickness: Double; safecall;
    procedure Set_ShellThickness(DThickness: Double); safecall;
    function Get_ShellUnit: Integer; safecall;
    procedure Set_ShellUnit(NUnit: Integer); safecall;
    function Get_Formulation: Integer; safecall;
    procedure Set_Formulation(NFormulation: Integer); safecall;
    function Get_State: Integer; safecall;
    function SetLibraryMaterial(const SLibraryPathName: WideString; const SMaterialName: WideString): Integer; safecall;
    function GetShellMaterial: ICWMaterial; safecall;
    function GetDefaultMaterial: ICWMaterial; safecall;
    function SetShellMaterial(const MaterialDisp: IDispatch): Integer; safecall;
    procedure SuppressUnSuppress; safecall;
    function Get_EntityCount: Integer; safecall;
    function GetEntityAt(NIndex: Integer): IDispatch; safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure ShellBeginEdit; safecall;
    function ShellEndEdit: Integer; safecall;
    function Get_ShellOffsetOption: Integer; safecall;
    procedure Set_ShellOffsetOption(NOption: Integer); safecall;
    function Get_ShellOffsetValue: Double; safecall;
    procedure Set_ShellOffsetValue(DOffsetValue: Double); safecall;
    property Name: WideString read Get_Name;
    property ShellThickness: Double read Get_ShellThickness write Set_ShellThickness;
    property ShellUnit: Integer read Get_ShellUnit write Set_ShellUnit;
    property Formulation: Integer read Get_Formulation write Set_Formulation;
    property State: Integer read Get_State;
    property EntityCount: Integer read Get_EntityCount;
    property ShellOffsetOption: Integer read Get_ShellOffsetOption write Set_ShellOffsetOption;
    property ShellOffsetValue: Double read Get_ShellOffsetValue write Set_ShellOffsetValue;
  end;

// *********************************************************************//
// DispIntf:  ICWShellDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {34E51079-B9CD-4FD3-B862-E4EC94DDBE13}
// *********************************************************************//
  ICWShellDisp = dispinterface
    ['{34E51079-B9CD-4FD3-B862-E4EC94DDBE13}']
    property Name: WideString readonly dispid 1;
    property ShellThickness: Double dispid 2;
    property ShellUnit: Integer dispid 3;
    property Formulation: Integer dispid 4;
    property State: Integer readonly dispid 5;
    function SetLibraryMaterial(const SLibraryPathName: WideString; const SMaterialName: WideString): Integer; dispid 6;
    function GetShellMaterial: ICWMaterial; dispid 7;
    function GetDefaultMaterial: ICWMaterial; dispid 8;
    function SetShellMaterial(const MaterialDisp: IDispatch): Integer; dispid 9;
    procedure SuppressUnSuppress; dispid 10;
    property EntityCount: Integer readonly dispid 11;
    function GetEntityAt(NIndex: Integer): IDispatch; dispid 12;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 13;
    procedure RemoveEntity(NIndex: Integer); dispid 14;
    procedure ShellBeginEdit; dispid 15;
    function ShellEndEdit: Integer; dispid 16;
    property ShellOffsetOption: Integer dispid 17;
    property ShellOffsetValue: Double dispid 18;
  end;

// *********************************************************************//
// Interface: ICWContactManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {242B7E91-5A69-4CE1-B429-7008A54F1555}
// *********************************************************************//
  ICWContactManager = interface(IDispatch)
    ['{242B7E91-5A69-4CE1-B429-7008A54F1555}']
    function Get_ContactSetCount: Integer; safecall;
    function Get_ContactComponentCount: Integer; safecall;
    function GetContactSetAt(NIndex: Integer): ICWContactSet; safecall;
    function GetContactComponentAt(NIndex: Integer): ICWContactComponent; safecall;
    procedure GetGlobalContact(out NContactType: Integer; out NOption: Integer); safecall;
    procedure SetGlobalContact(NContactType: Integer; NOption: Integer); safecall;
    function CreateContactSet(NContactSetType: Integer; ArraySourceEntities: OleVariant; 
                              ArrayTargetEntities: OleVariant; out ErrorCode: Integer): ICWContactSet; safecall;
    function CreateContactSet2(NContactSetType: Integer; NSelectionType: Integer; 
                               ArraySourceEntities: OleVariant; ArrayTargetEntities: OleVariant; 
                               out ErrorCode: Integer): ICWContactSet; safecall;
    function CreateContactComponent(NContactType: Integer; NOption: Integer; 
                                    const DispEntity: IDispatch; out ErrorCode: Integer): ICWContactComponent; safecall;
    procedure DeleteContactSet(const SName: WideString); safecall;
    procedure DeleteContactComponent(const SName: WideString); safecall;
    property ContactSetCount: Integer read Get_ContactSetCount;
    property ContactComponentCount: Integer read Get_ContactComponentCount;
  end;

// *********************************************************************//
// DispIntf:  ICWContactManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {242B7E91-5A69-4CE1-B429-7008A54F1555}
// *********************************************************************//
  ICWContactManagerDisp = dispinterface
    ['{242B7E91-5A69-4CE1-B429-7008A54F1555}']
    property ContactSetCount: Integer readonly dispid 1;
    property ContactComponentCount: Integer readonly dispid 2;
    function GetContactSetAt(NIndex: Integer): ICWContactSet; dispid 3;
    function GetContactComponentAt(NIndex: Integer): ICWContactComponent; dispid 4;
    procedure GetGlobalContact(out NContactType: Integer; out NOption: Integer); dispid 5;
    procedure SetGlobalContact(NContactType: Integer; NOption: Integer); dispid 6;
    function CreateContactSet(NContactSetType: Integer; ArraySourceEntities: OleVariant; 
                              ArrayTargetEntities: OleVariant; out ErrorCode: Integer): ICWContactSet; dispid 7;
    function CreateContactSet2(NContactSetType: Integer; NSelectionType: Integer; 
                               ArraySourceEntities: OleVariant; ArrayTargetEntities: OleVariant; 
                               out ErrorCode: Integer): ICWContactSet; dispid 8;
    function CreateContactComponent(NContactType: Integer; NOption: Integer; 
                                    const DispEntity: IDispatch; out ErrorCode: Integer): ICWContactComponent; dispid 9;
    procedure DeleteContactSet(const SName: WideString); dispid 10;
    procedure DeleteContactComponent(const SName: WideString); dispid 11;
  end;

// *********************************************************************//
// Interface: ICWContactSet
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0ED1F73C-9EAC-4D6A-9CCA-B637D9C9A0CB}
// *********************************************************************//
  ICWContactSet = interface(IDispatch)
    ['{0ED1F73C-9EAC-4D6A-9CCA-B637D9C9A0CB}']
    function Get_ContactSetType: Integer; safecall;
    procedure Set_ContactSetType(NType: Integer); safecall;
    function Get_Options: Integer; safecall;
    procedure Set_Options(NOptions: Integer); safecall;
    function Get_IncludeFriction: Integer; safecall;
    procedure Set_IncludeFriction(BIncludeFriction: Integer); safecall;
    function Get_FrictionValue: Double; safecall;
    procedure Set_FrictionValue(DFrictionValue: Double); safecall;
    function Get_WallFriction: Double; safecall;
    procedure Set_WallFriction(DWallFriction: Double); safecall;
    function Get_GapType: Integer; safecall;
    procedure Set_GapType(NGapType: Integer); safecall;
    function Get_ClearanceValue: Double; safecall;
    procedure Set_ClearanceValue(DClearanceValue: Double); safecall;
    function Get_ClearanceUnit: Integer; safecall;
    procedure Set_ClearanceUnit(NClearanceUnit: Integer); safecall;
    function Get_WallType: Integer; safecall;
    procedure Set_WallType(NWallType: Integer); safecall;
    function Get_WallStiffnessUnit: Integer; safecall;
    procedure Set_WallStiffnessUnit(NUnit: Integer); safecall;
    function Get_AxialStiffnessValue: Double; safecall;
    procedure Set_AxialStiffnessValue(DAxialStiffnessValue: Double); safecall;
    function Get_TangentialStiffnessValue: Double; safecall;
    procedure Set_TangentialStiffnessValue(DTangentialStiffnessValue: Double); safecall;
    function Get_ResistanceType: Integer; safecall;
    procedure Set_ResistanceType(NResistanceType: Integer); safecall;
    function Get_ResistanceValue: Double; safecall;
    procedure Set_ResistanceValue(DResistanceValue: Double); safecall;
    function Get_ResistanceUnit: Integer; safecall;
    procedure Set_ResistanceUnit(NUnit: Integer); safecall;
    function Get_ContactName: WideString; safecall;
    function Get_State: Integer; safecall;
    function Get_SourceEntityCount: Integer; safecall;
    function Get_TargetEntityCount: Integer; safecall;
    procedure SuppressUnSuppress; safecall;
    procedure ContactSetBeginEdit; safecall;
    function ContactSetEndEdit: Integer; safecall;
    procedure RemoveTargetEntity(NIndex: Integer); safecall;
    procedure RemoveSourceEntity(NIndex: Integer); safecall;
    procedure InsertTargetEntity(const DispEntity: IDispatch); safecall;
    procedure InsertSourceEntity(const DispEntity: IDispatch); safecall;
    function GetSourceEntityAt(NIndex: Integer; out NSel: Integer): IDispatch; safecall;
    function GetTargetEntityAt(NIndex: Integer; out NSel: Integer): IDispatch; safecall;
    property ContactSetType: Integer read Get_ContactSetType write Set_ContactSetType;
    property Options: Integer read Get_Options write Set_Options;
    property IncludeFriction: Integer read Get_IncludeFriction write Set_IncludeFriction;
    property FrictionValue: Double read Get_FrictionValue write Set_FrictionValue;
    property WallFriction: Double read Get_WallFriction write Set_WallFriction;
    property GapType: Integer read Get_GapType write Set_GapType;
    property ClearanceValue: Double read Get_ClearanceValue write Set_ClearanceValue;
    property ClearanceUnit: Integer read Get_ClearanceUnit write Set_ClearanceUnit;
    property WallType: Integer read Get_WallType write Set_WallType;
    property WallStiffnessUnit: Integer read Get_WallStiffnessUnit write Set_WallStiffnessUnit;
    property AxialStiffnessValue: Double read Get_AxialStiffnessValue write Set_AxialStiffnessValue;
    property TangentialStiffnessValue: Double read Get_TangentialStiffnessValue write Set_TangentialStiffnessValue;
    property ResistanceType: Integer read Get_ResistanceType write Set_ResistanceType;
    property ResistanceValue: Double read Get_ResistanceValue write Set_ResistanceValue;
    property ResistanceUnit: Integer read Get_ResistanceUnit write Set_ResistanceUnit;
    property ContactName: WideString read Get_ContactName;
    property State: Integer read Get_State;
    property SourceEntityCount: Integer read Get_SourceEntityCount;
    property TargetEntityCount: Integer read Get_TargetEntityCount;
  end;

// *********************************************************************//
// DispIntf:  ICWContactSetDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {0ED1F73C-9EAC-4D6A-9CCA-B637D9C9A0CB}
// *********************************************************************//
  ICWContactSetDisp = dispinterface
    ['{0ED1F73C-9EAC-4D6A-9CCA-B637D9C9A0CB}']
    property ContactSetType: Integer dispid 1;
    property Options: Integer dispid 2;
    property IncludeFriction: Integer dispid 3;
    property FrictionValue: Double dispid 4;
    property WallFriction: Double dispid 5;
    property GapType: Integer dispid 6;
    property ClearanceValue: Double dispid 7;
    property ClearanceUnit: Integer dispid 8;
    property WallType: Integer dispid 9;
    property WallStiffnessUnit: Integer dispid 10;
    property AxialStiffnessValue: Double dispid 11;
    property TangentialStiffnessValue: Double dispid 12;
    property ResistanceType: Integer dispid 13;
    property ResistanceValue: Double dispid 14;
    property ResistanceUnit: Integer dispid 15;
    property ContactName: WideString readonly dispid 16;
    property State: Integer readonly dispid 17;
    property SourceEntityCount: Integer readonly dispid 18;
    property TargetEntityCount: Integer readonly dispid 19;
    procedure SuppressUnSuppress; dispid 20;
    procedure ContactSetBeginEdit; dispid 21;
    function ContactSetEndEdit: Integer; dispid 22;
    procedure RemoveTargetEntity(NIndex: Integer); dispid 23;
    procedure RemoveSourceEntity(NIndex: Integer); dispid 24;
    procedure InsertTargetEntity(const DispEntity: IDispatch); dispid 25;
    procedure InsertSourceEntity(const DispEntity: IDispatch); dispid 26;
    function GetSourceEntityAt(NIndex: Integer; out NSel: Integer): IDispatch; dispid 27;
    function GetTargetEntityAt(NIndex: Integer; out NSel: Integer): IDispatch; dispid 28;
  end;

// *********************************************************************//
// Interface: ICWContactComponent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E739B4C6-B6A5-4C1D-830A-C7A29C746A46}
// *********************************************************************//
  ICWContactComponent = interface(IDispatch)
    ['{E739B4C6-B6A5-4C1D-830A-C7A29C746A46}']
    function Get_ContactComponentType: Integer; safecall;
    procedure Set_ContactComponentType(NType: Integer); safecall;
    function Get_Option: Integer; safecall;
    procedure Set_Option(NOption: Integer); safecall;
    function Get_IncludeFriction: Integer; safecall;
    procedure Set_IncludeFriction(BInclude: Integer); safecall;
    function Get_FrictionValue: Double; safecall;
    procedure Set_FrictionValue(DValue: Double); safecall;
    function Get_ContactName: WideString; safecall;
    function Get_State: Integer; safecall;
    procedure ReplaceEntity(const DispEntity: IDispatch); safecall;
    procedure SuppressUnSuppress; safecall;
    procedure ContactComponentBeginEdit; safecall;
    function ContactComponentEndEdit: Integer; safecall;
    property ContactComponentType: Integer read Get_ContactComponentType write Set_ContactComponentType;
    property Option: Integer read Get_Option write Set_Option;
    property IncludeFriction: Integer read Get_IncludeFriction write Set_IncludeFriction;
    property FrictionValue: Double read Get_FrictionValue write Set_FrictionValue;
    property ContactName: WideString read Get_ContactName;
    property State: Integer read Get_State;
  end;

// *********************************************************************//
// DispIntf:  ICWContactComponentDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E739B4C6-B6A5-4C1D-830A-C7A29C746A46}
// *********************************************************************//
  ICWContactComponentDisp = dispinterface
    ['{E739B4C6-B6A5-4C1D-830A-C7A29C746A46}']
    property ContactComponentType: Integer dispid 1;
    property Option: Integer dispid 2;
    property IncludeFriction: Integer dispid 3;
    property FrictionValue: Double dispid 4;
    property ContactName: WideString readonly dispid 5;
    property State: Integer readonly dispid 6;
    procedure ReplaceEntity(const DispEntity: IDispatch); dispid 7;
    procedure SuppressUnSuppress; dispid 8;
    procedure ContactComponentBeginEdit; dispid 9;
    function ContactComponentEndEdit: Integer; dispid 10;
  end;

// *********************************************************************//
// Interface: ICWLoadsAndRestraintsManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DEA3C90-44BB-45E0-A569-F4B196F47176}
// *********************************************************************//
  ICWLoadsAndRestraintsManager = interface(IDispatch)
    ['{9DEA3C90-44BB-45E0-A569-F4B196F47176}']
    function Get_Count: Integer; safecall;
    function GetLoadsAndRestraints(NIndex: Integer; out ErrorCode: Integer): ICWLoadsAndRestraints; safecall;
    function AddRestraint(NRestraintType: Integer; DispArray: OleVariant; const RefGeom: IDispatch; 
                          out ErrorCode: Integer): ICWRestraint; safecall;
    function AddPressure(NPressureType: Integer; DispArray: OleVariant; const RegGeom: IDispatch; 
                         out ErrorCode: Integer): ICWPressure; safecall;
    function AddForce(NForceType: Integer; DispArray: OleVariant; const RefGeom: IDispatch; 
                      out ErrorCode: Integer): ICWForce; safecall;
    function AddForce2(NForceType: Integer; NSelectionType: Integer; DispArray: OleVariant; 
                       const RefGeom: IDispatch; out ErrorCode: Integer): ICWForce; safecall;
    function AddGravity(const DispEntity: IDispatch; out ErrorCode: Integer): ICWGravity; safecall;
    function AddCentrifugalForce(const DispEntity: IDispatch; out ErrorCode: Integer): ICWCentriFugalForce; safecall;
    function AddTemperature(DispArray: OleVariant; out ErrorCode: Integer): ICWTemperature; safecall;
    function AddConvection(DispArray: OleVariant; out ErrorCode: Integer): ICWConvection; safecall;
    function AddHeatFlux(DispArray: OleVariant; out ErrorCode: Integer): ICWHeatFlux; safecall;
    function AddHeatPower(DispArray: OleVariant; out ErrorCode: Integer): ICWHeatPower; safecall;
    function AddRadiation(NRadType: Integer; DispArray: OleVariant; out ErrorCode: Integer): ICWRadiation; safecall;
    procedure DeleteLoadsAndRestraints(const SName: WideString); safecall;
    function AddRigidConnector(PersistIDFaceArray: OleVariant; PersistIDTargetArray: OleVariant; 
                               out ErrorCode: Integer): ICWRigidConnector; safecall;
    function AddLinkConnector(const VertexPointforFirstLocation: IDispatch; 
                              const VertexPointforSecondLocation: IDispatch; out ErrorCode: Integer): ICWLinkConnector; safecall;
    function AddElasticConnector(DispArray: OleVariant; var ErrorCode: Integer): ICWElasticConnector; safecall;
    function AddPinConnector(DispArrayComp1: OleVariant; DispArrayComp2: OleVariant; 
                             var ErrorCode: Integer): ICWPinConnector; safecall;
    function AddSpringConnector(NSpringSubType: Integer; DispArrayComp1: OleVariant; 
                                DispArrayComp2: OleVariant; var ErrorCode: Integer): ICWSpringConnector; safecall;
    function AddBoltConnector(NBoltType: Integer; DispArrayBoltHead: OleVariant; 
                              DispArrayBoltNut: OleVariant; var ErrorCode: Integer): ICWBoltConnector; safecall;
    function AddSpotWeldConnector(const FirstFace: IDispatch; const SecondFace: IDispatch; 
                                  DispArrayWeldLocations: OleVariant; var ErrorCode: Integer): ICWSpotWeldConnector; safecall;
    function AddBearingLoad(const CoordinateSystem: IDispatch; FirstFace: OleVariant; 
                            var ErrorCode: Integer): ICWBearingLoad; safecall;
    function AddForce3(ForceType: Integer; SelectionType: Integer; RefDirType: Integer; 
                       InterpolationMode: Integer; DistPercentageOpt: Integer; NumOfRows: Integer; 
                       DistValue: OleVariant; ForceValue: OleVariant; NonUniformLoading: WordBool; 
                       NULoadingOnBeam: WordBool; NonUniformLoadDistDef: Integer; 
                       NonUniformLoadDistType: Integer; Ucode: Integer; TorqueNFVal: Double; 
                       Comps: OleVariant; FlipOrigin: WordBool; IsCurvedBeam: WordBool; 
                       DispArray: OleVariant; const RefGeom: IDispatch; PerUnitLength: WordBool; 
                       out ErrorCode: Integer): ICWForce; safecall;
    function AddUniformBaseExcitation(NType: Integer; const DirectionEntity: IDispatch; 
                                      NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                      BDir2: Integer; DVal2: Double; BDir3: Integer; DVal3: Double; 
                                      out ErrorCode: Integer): ICWBaseExcitation; safecall;
    function AddSelectedBaseExcitation(NType: Integer; const SFixtureName: WideString; 
                                       NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                       BDir2: Integer; DVal2: Double; BDir3: Integer; 
                                       DVal3: Double; out ErrorCode: Integer): ICWBaseExcitation; safecall;
    function AddDistributedMass(DispArray: OleVariant; NUnits: Integer; DMass: Double; 
                                var ErrorCode: Integer): ICWDistributedMass; safecall;
    function AddInitialConditionForDynamicStudy(NType: Integer; NSelectionType: Integer; 
                                                DispArray: OleVariant; const RefEntity: IDispatch; 
                                                NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                                BDir2: Integer; DVal2: Double; BDir3: Integer; 
                                                DVal3: Double; out ErrorCode: Integer): ICWDynamicInitialCondition; safecall;
    function AddRemoteLoad(NLoadType: Integer; DispArray: OleVariant; NLocationUnits: Integer; 
                           DXValue: Double; DYValue: Double; DZValue: Double; out ErrorCode: Integer): ICWRemoteLoad; safecall;
    function AddEdgeWeldConnector(const FirstFace: IDispatch; const SecondFace: IDispatch; 
                                  Edges: OleVariant; NEdgeWeldStyle: Integer; 
                                  BSpringDamper: Integer; out ErrorCode: Integer): ICWEdgeWeldConnector; safecall;
    function GetEdgeWeldConnector(NIndex: Integer; out ErrorCode: Integer): ICWEdgeWeldConnector; safecall;
    property Count: Integer read Get_Count;
  end;

// *********************************************************************//
// DispIntf:  ICWLoadsAndRestraintsManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9DEA3C90-44BB-45E0-A569-F4B196F47176}
// *********************************************************************//
  ICWLoadsAndRestraintsManagerDisp = dispinterface
    ['{9DEA3C90-44BB-45E0-A569-F4B196F47176}']
    property Count: Integer readonly dispid 1;
    function GetLoadsAndRestraints(NIndex: Integer; out ErrorCode: Integer): ICWLoadsAndRestraints; dispid 2;
    function AddRestraint(NRestraintType: Integer; DispArray: OleVariant; const RefGeom: IDispatch; 
                          out ErrorCode: Integer): ICWRestraint; dispid 3;
    function AddPressure(NPressureType: Integer; DispArray: OleVariant; const RegGeom: IDispatch; 
                         out ErrorCode: Integer): ICWPressure; dispid 4;
    function AddForce(NForceType: Integer; DispArray: OleVariant; const RefGeom: IDispatch; 
                      out ErrorCode: Integer): ICWForce; dispid 5;
    function AddForce2(NForceType: Integer; NSelectionType: Integer; DispArray: OleVariant; 
                       const RefGeom: IDispatch; out ErrorCode: Integer): ICWForce; dispid 6;
    function AddGravity(const DispEntity: IDispatch; out ErrorCode: Integer): ICWGravity; dispid 7;
    function AddCentrifugalForce(const DispEntity: IDispatch; out ErrorCode: Integer): ICWCentriFugalForce; dispid 8;
    function AddTemperature(DispArray: OleVariant; out ErrorCode: Integer): ICWTemperature; dispid 9;
    function AddConvection(DispArray: OleVariant; out ErrorCode: Integer): ICWConvection; dispid 10;
    function AddHeatFlux(DispArray: OleVariant; out ErrorCode: Integer): ICWHeatFlux; dispid 11;
    function AddHeatPower(DispArray: OleVariant; out ErrorCode: Integer): ICWHeatPower; dispid 12;
    function AddRadiation(NRadType: Integer; DispArray: OleVariant; out ErrorCode: Integer): ICWRadiation; dispid 13;
    procedure DeleteLoadsAndRestraints(const SName: WideString); dispid 14;
    function AddRigidConnector(PersistIDFaceArray: OleVariant; PersistIDTargetArray: OleVariant; 
                               out ErrorCode: Integer): ICWRigidConnector; dispid 15;
    function AddLinkConnector(const VertexPointforFirstLocation: IDispatch; 
                              const VertexPointforSecondLocation: IDispatch; out ErrorCode: Integer): ICWLinkConnector; dispid 16;
    function AddElasticConnector(DispArray: OleVariant; var ErrorCode: Integer): ICWElasticConnector; dispid 17;
    function AddPinConnector(DispArrayComp1: OleVariant; DispArrayComp2: OleVariant; 
                             var ErrorCode: Integer): ICWPinConnector; dispid 18;
    function AddSpringConnector(NSpringSubType: Integer; DispArrayComp1: OleVariant; 
                                DispArrayComp2: OleVariant; var ErrorCode: Integer): ICWSpringConnector; dispid 19;
    function AddBoltConnector(NBoltType: Integer; DispArrayBoltHead: OleVariant; 
                              DispArrayBoltNut: OleVariant; var ErrorCode: Integer): ICWBoltConnector; dispid 20;
    function AddSpotWeldConnector(const FirstFace: IDispatch; const SecondFace: IDispatch; 
                                  DispArrayWeldLocations: OleVariant; var ErrorCode: Integer): ICWSpotWeldConnector; dispid 21;
    function AddBearingLoad(const CoordinateSystem: IDispatch; FirstFace: OleVariant; 
                            var ErrorCode: Integer): ICWBearingLoad; dispid 22;
    function AddForce3(ForceType: Integer; SelectionType: Integer; RefDirType: Integer; 
                       InterpolationMode: Integer; DistPercentageOpt: Integer; NumOfRows: Integer; 
                       DistValue: OleVariant; ForceValue: OleVariant; NonUniformLoading: WordBool; 
                       NULoadingOnBeam: WordBool; NonUniformLoadDistDef: Integer; 
                       NonUniformLoadDistType: Integer; Ucode: Integer; TorqueNFVal: Double; 
                       Comps: OleVariant; FlipOrigin: WordBool; IsCurvedBeam: WordBool; 
                       DispArray: OleVariant; const RefGeom: IDispatch; PerUnitLength: WordBool; 
                       out ErrorCode: Integer): ICWForce; dispid 23;
    function AddUniformBaseExcitation(NType: Integer; const DirectionEntity: IDispatch; 
                                      NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                      BDir2: Integer; DVal2: Double; BDir3: Integer; DVal3: Double; 
                                      out ErrorCode: Integer): ICWBaseExcitation; dispid 24;
    function AddSelectedBaseExcitation(NType: Integer; const SFixtureName: WideString; 
                                       NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                       BDir2: Integer; DVal2: Double; BDir3: Integer; 
                                       DVal3: Double; out ErrorCode: Integer): ICWBaseExcitation; dispid 25;
    function AddDistributedMass(DispArray: OleVariant; NUnits: Integer; DMass: Double; 
                                var ErrorCode: Integer): ICWDistributedMass; dispid 26;
    function AddInitialConditionForDynamicStudy(NType: Integer; NSelectionType: Integer; 
                                                DispArray: OleVariant; const RefEntity: IDispatch; 
                                                NUnits: Integer; BDir1: Integer; DVal1: Double; 
                                                BDir2: Integer; DVal2: Double; BDir3: Integer; 
                                                DVal3: Double; out ErrorCode: Integer): ICWDynamicInitialCondition; dispid 27;
    function AddRemoteLoad(NLoadType: Integer; DispArray: OleVariant; NLocationUnits: Integer; 
                           DXValue: Double; DYValue: Double; DZValue: Double; out ErrorCode: Integer): ICWRemoteLoad; dispid 28;
    function AddEdgeWeldConnector(const FirstFace: IDispatch; const SecondFace: IDispatch; 
                                  Edges: OleVariant; NEdgeWeldStyle: Integer; 
                                  BSpringDamper: Integer; out ErrorCode: Integer): ICWEdgeWeldConnector; dispid 29;
    function GetEdgeWeldConnector(NIndex: Integer; out ErrorCode: Integer): ICWEdgeWeldConnector; dispid 30;
  end;

// *********************************************************************//
// Interface: ICWLoadsAndRestraints
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BDD45B4-9046-4C42-8936-A988906D2597}
// *********************************************************************//
  ICWLoadsAndRestraints = interface(IDispatch)
    ['{7BDD45B4-9046-4C42-8936-A988906D2597}']
    function Get_Name: WideString; safecall;
    function Get_type_: Integer; safecall;
    function Get_State: Integer; safecall;
    function Get_EntityCount: Integer; safecall;
    procedure SuppressUnSuppress; safecall;
    function GetEntityAt(NIndex: Integer; out NSelType: Integer): IDispatch; safecall;
    function GetReferenceGeometry(out NSelType: Integer): IDispatch; safecall;
    property Name: WideString read Get_Name;
    property type_: Integer read Get_type_;
    property State: Integer read Get_State;
    property EntityCount: Integer read Get_EntityCount;
  end;

// *********************************************************************//
// DispIntf:  ICWLoadsAndRestraintsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {7BDD45B4-9046-4C42-8936-A988906D2597}
// *********************************************************************//
  ICWLoadsAndRestraintsDisp = dispinterface
    ['{7BDD45B4-9046-4C42-8936-A988906D2597}']
    property Name: WideString readonly dispid 1;
    property type_: Integer readonly dispid 2;
    property State: Integer readonly dispid 3;
    property EntityCount: Integer readonly dispid 4;
    procedure SuppressUnSuppress; dispid 5;
    function GetEntityAt(NIndex: Integer; out NSelType: Integer): IDispatch; dispid 6;
    function GetReferenceGeometry(out NSelType: Integer): IDispatch; dispid 7;
  end;

// *********************************************************************//
// Interface: ICWRestraint
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1B7607C-2C6B-447B-8183-633531BFDDAF}
// *********************************************************************//
  ICWRestraint = interface(IDispatch)
    ['{A1B7607C-2C6B-447B-8183-633531BFDDAF}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_RestraintType: Integer; safecall;
    procedure Set_RestraintType(NRestraintType: Integer); safecall;
    function GetCoordinateType: Integer; safecall;
    procedure GetTranslationComponentsValues(out BVal1: Integer; out BVal2: Integer; 
                                             out BVal3: Integer; out DVal1: Double; 
                                             out DVal2: Double; out DVal3: Double); safecall;
    procedure GetRotationComponentsValues(out BVal1: Integer; out BVal2: Integer; 
                                          out BVal3: Integer; out DVal1: Double; out DVal2: Double; 
                                          out DVal3: Double); safecall;
    procedure RestraintBeginEdit; safecall;
    function RestraintEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure SetReferenceGeometry(const DispRefEntity: IDispatch); safecall;
    procedure SetTranslationComponentsValues(BVal1: Integer; BVal2: Integer; BVal3: Integer; 
                                             DVal1: Double; DVal2: Double; DVal3: Double); safecall;
    procedure SetRotationComponentsValues(BVal1: Integer; BVal2: Integer; BVal3: Integer; 
                                          DVal1: Double; DVal2: Double; DVal3: Double); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property RestraintType: Integer read Get_RestraintType write Set_RestraintType;
  end;

// *********************************************************************//
// DispIntf:  ICWRestraintDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1B7607C-2C6B-447B-8183-633531BFDDAF}
// *********************************************************************//
  ICWRestraintDisp = dispinterface
    ['{A1B7607C-2C6B-447B-8183-633531BFDDAF}']
    property Unit_: Integer dispid 1;
    property RestraintType: Integer dispid 2;
    function GetCoordinateType: Integer; dispid 3;
    procedure GetTranslationComponentsValues(out BVal1: Integer; out BVal2: Integer; 
                                             out BVal3: Integer; out DVal1: Double; 
                                             out DVal2: Double; out DVal3: Double); dispid 4;
    procedure GetRotationComponentsValues(out BVal1: Integer; out BVal2: Integer; 
                                          out BVal3: Integer; out DVal1: Double; out DVal2: Double; 
                                          out DVal3: Double); dispid 5;
    procedure RestraintBeginEdit; dispid 6;
    function RestraintEndEdit: Integer; dispid 7;
    procedure RemoveEntity(NIndex: Integer); dispid 8;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 9;
    procedure SetReferenceGeometry(const DispRefEntity: IDispatch); dispid 10;
    procedure SetTranslationComponentsValues(BVal1: Integer; BVal2: Integer; BVal3: Integer; 
                                             DVal1: Double; DVal2: Double; DVal3: Double); dispid 11;
    procedure SetRotationComponentsValues(BVal1: Integer; BVal2: Integer; BVal3: Integer; 
                                          DVal1: Double; DVal2: Double; DVal3: Double); dispid 12;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 13;
    function GetTimeCurve: OleVariant; dispid 14;
  end;

// *********************************************************************//
// Interface: ICWPressure
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3D12186F-4CAE-4511-9456-B42FB68F06F9}
// *********************************************************************//
  ICWPressure = interface(IDispatch)
    ['{3D12186F-4CAE-4511-9456-B42FB68F06F9}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_Value: Double; safecall;
    procedure Set_Value(DValue: Double); safecall;
    function Get_DirectionType: Integer; safecall;
    procedure Set_DirectionType(NDirectionType: Integer); safecall;
    function Get_PressureType: Integer; safecall;
    procedure Set_PressureType(NPressureType: Integer); safecall;
    function Get_IncludeNonUniformDistribution: Integer; safecall;
    procedure Set_IncludeNonUniformDistribution(BInclude: Integer); safecall;
    procedure GetNonUniformData(out DConstVal: Double; out DX: Double; out DY: Double; 
                                out DXY: Double; out DXX: Double; out DYY: Double); safecall;
    procedure SetNonUniformData(DConstVal: Double; DX: Double; DY: Double; DXY: Double; 
                                DXX: Double; DYY: Double); safecall;
    procedure PressureBeginEdit; safecall;
    function PressureEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure SetReferenceGeometry(const RefEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveDate: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function GetCoordinateSystem: IDispatch; safecall;
    procedure SetCoordinateSystem(const DispCoordinateSystem: IDispatch); safecall;
    function Get_PhaseAngleUnit: Integer; safecall;
    procedure Set_PhaseAngleUnit(NUnit: Integer); safecall;
    function Get_PhaseAngle: Double; safecall;
    procedure Set_PhaseAngle(DAngleValue: Double); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property Value: Double read Get_Value write Set_Value;
    property DirectionType: Integer read Get_DirectionType write Set_DirectionType;
    property PressureType: Integer read Get_PressureType write Set_PressureType;
    property IncludeNonUniformDistribution: Integer read Get_IncludeNonUniformDistribution write Set_IncludeNonUniformDistribution;
    property PhaseAngleUnit: Integer read Get_PhaseAngleUnit write Set_PhaseAngleUnit;
    property PhaseAngle: Double read Get_PhaseAngle write Set_PhaseAngle;
  end;

// *********************************************************************//
// DispIntf:  ICWPressureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {3D12186F-4CAE-4511-9456-B42FB68F06F9}
// *********************************************************************//
  ICWPressureDisp = dispinterface
    ['{3D12186F-4CAE-4511-9456-B42FB68F06F9}']
    property Unit_: Integer dispid 1;
    property Value: Double dispid 2;
    property DirectionType: Integer dispid 3;
    property PressureType: Integer dispid 4;
    property IncludeNonUniformDistribution: Integer dispid 5;
    procedure GetNonUniformData(out DConstVal: Double; out DX: Double; out DY: Double; 
                                out DXY: Double; out DXX: Double; out DYY: Double); dispid 6;
    procedure SetNonUniformData(DConstVal: Double; DX: Double; DY: Double; DXY: Double; 
                                DXX: Double; DYY: Double); dispid 7;
    procedure PressureBeginEdit; dispid 8;
    function PressureEndEdit: Integer; dispid 9;
    procedure RemoveEntity(NIndex: Integer); dispid 10;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 11;
    procedure SetReferenceGeometry(const RefEntity: IDispatch); dispid 12;
    function SetTimeCurve(VarCurveDate: OleVariant; out ErrorCode: Integer): Integer; dispid 13;
    function GetTimeCurve: OleVariant; dispid 14;
    function GetCoordinateSystem: IDispatch; dispid 15;
    procedure SetCoordinateSystem(const DispCoordinateSystem: IDispatch); dispid 16;
    property PhaseAngleUnit: Integer dispid 17;
    property PhaseAngle: Double dispid 18;
  end;

// *********************************************************************//
// Interface: ICWForce
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9419308B-BB2A-4842-B652-7AF115171012}
// *********************************************************************//
  ICWForce = interface(IDispatch)
    ['{9419308B-BB2A-4842-B652-7AF115171012}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_NormalForceOrTorqueValue: Double; safecall;
    procedure Set_NormalForceOrTorqueValue(DValue: Double); safecall;
    function Get_ForceType: Integer; safecall;
    procedure Set_ForceType(NForceType: Integer); safecall;
    function Get_IncludeNonUniformDistribution: Integer; safecall;
    procedure Set_IncludeNonUniformDistribution(BInclude: Integer); safecall;
    procedure GetForceComponentValues(out B1: Integer; out B2: Integer; out B3: Integer; 
                                      out D1: Double; out D2: Double; out D3: Double); safecall;
    procedure SetForceComponentValues(B1: Integer; B2: Integer; B3: Integer; D1: Double; 
                                      D2: Double; D3: Double); safecall;
    procedure GetMomentComponentValues(out B1: Integer; out B2: Integer; out B3: Integer; 
                                       out D1: Double; out D2: Double; out D3: Double); safecall;
    procedure SetMomentComponentValues(B1: Integer; B2: Integer; B3: Integer; D1: Double; 
                                       D2: Double; D3: Double); safecall;
    procedure GetNonUniformData(out DConstVal: Double; out DX: Double; out DY: Double; 
                                out DXY: Double; out DX2: Double; out DY2: Double); safecall;
    procedure SetNonUniformData(DConstVal: Double; DX: Double; DY: Double; DXY: Double; 
                                DX2: Double; DY2: Double); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure SetReferenceGeometry(const RefEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function GetCoordinateSystem: IDispatch; safecall;
    procedure SetCoordinateSystem(const DispCoordinateSystem: IDispatch); safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure ForceBeginEdit; safecall;
    function ForceEndEdit: Integer; safecall;
    function Get_PhaseAngleUnit: Integer; safecall;
    procedure Set_PhaseAngleUnit(NUnit: Integer); safecall;
    function Get_PhaseAngle: Double; safecall;
    procedure Set_PhaseAngle(DAngleValue: Double); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property NormalForceOrTorqueValue: Double read Get_NormalForceOrTorqueValue write Set_NormalForceOrTorqueValue;
    property ForceType: Integer read Get_ForceType write Set_ForceType;
    property IncludeNonUniformDistribution: Integer read Get_IncludeNonUniformDistribution write Set_IncludeNonUniformDistribution;
    property PhaseAngleUnit: Integer read Get_PhaseAngleUnit write Set_PhaseAngleUnit;
    property PhaseAngle: Double read Get_PhaseAngle write Set_PhaseAngle;
  end;

// *********************************************************************//
// DispIntf:  ICWForceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9419308B-BB2A-4842-B652-7AF115171012}
// *********************************************************************//
  ICWForceDisp = dispinterface
    ['{9419308B-BB2A-4842-B652-7AF115171012}']
    property Unit_: Integer dispid 1;
    property NormalForceOrTorqueValue: Double dispid 2;
    property ForceType: Integer dispid 3;
    property IncludeNonUniformDistribution: Integer dispid 4;
    procedure GetForceComponentValues(out B1: Integer; out B2: Integer; out B3: Integer; 
                                      out D1: Double; out D2: Double; out D3: Double); dispid 5;
    procedure SetForceComponentValues(B1: Integer; B2: Integer; B3: Integer; D1: Double; 
                                      D2: Double; D3: Double); dispid 6;
    procedure GetMomentComponentValues(out B1: Integer; out B2: Integer; out B3: Integer; 
                                       out D1: Double; out D2: Double; out D3: Double); dispid 7;
    procedure SetMomentComponentValues(B1: Integer; B2: Integer; B3: Integer; D1: Double; 
                                       D2: Double; D3: Double); dispid 8;
    procedure GetNonUniformData(out DConstVal: Double; out DX: Double; out DY: Double; 
                                out DXY: Double; out DX2: Double; out DY2: Double); dispid 9;
    procedure SetNonUniformData(DConstVal: Double; DX: Double; DY: Double; DXY: Double; 
                                DX2: Double; DY2: Double); dispid 10;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 11;
    procedure SetReferenceGeometry(const RefEntity: IDispatch); dispid 12;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 13;
    function GetTimeCurve: OleVariant; dispid 14;
    function GetCoordinateSystem: IDispatch; dispid 15;
    procedure SetCoordinateSystem(const DispCoordinateSystem: IDispatch); dispid 16;
    procedure RemoveEntity(NIndex: Integer); dispid 17;
    procedure ForceBeginEdit; dispid 18;
    function ForceEndEdit: Integer; dispid 19;
    property PhaseAngleUnit: Integer dispid 20;
    property PhaseAngle: Double dispid 21;
  end;

// *********************************************************************//
// Interface: ICWGravity
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F932F397-D186-4381-88EF-EAA92E2ADCAE}
// *********************************************************************//
  ICWGravity = interface(IDispatch)
    ['{F932F397-D186-4381-88EF-EAA92E2ADCAE}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    procedure GetGravitationalAcclerationValues(out DVal1: Double; out DVal2: Double; 
                                                out DVal3: Double); safecall;
    procedure SetGravitationalAcclerationValues(DVal1: Double; DVal2: Double; DVal3: Double); safecall;
    procedure SetReferenceEntity(const RefEntity: IDispatch); safecall;
    function GravityEndEdit: Integer; safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    procedure GravityBeginEdit; safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
  end;

// *********************************************************************//
// DispIntf:  ICWGravityDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F932F397-D186-4381-88EF-EAA92E2ADCAE}
// *********************************************************************//
  ICWGravityDisp = dispinterface
    ['{F932F397-D186-4381-88EF-EAA92E2ADCAE}']
    property Unit_: Integer dispid 1;
    procedure GetGravitationalAcclerationValues(out DVal1: Double; out DVal2: Double; 
                                                out DVal3: Double); dispid 2;
    procedure SetGravitationalAcclerationValues(DVal1: Double; DVal2: Double; DVal3: Double); dispid 3;
    procedure SetReferenceEntity(const RefEntity: IDispatch); dispid 4;
    function GravityEndEdit: Integer; dispid 5;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 6;
    function GetTimeCurve: OleVariant; dispid 7;
    procedure GravityBeginEdit; dispid 8;
  end;

// *********************************************************************//
// Interface: ICWCentriFugalForce
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F335011-F5A5-4992-AA03-3BEC3BDF0436}
// *********************************************************************//
  ICWCentriFugalForce = interface(IDispatch)
    ['{9F335011-F5A5-4992-AA03-3BEC3BDF0436}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_AngularVelocity: Double; safecall;
    procedure Set_AngularVelocity(DAngularVelocity: Double); safecall;
    function Get_AngularAcceleration: Double; safecall;
    procedure Set_AngularAcceleration(DAngularAcceleration: Double); safecall;
    procedure SetReferenceEntity(const RefEntity: IDispatch); safecall;
    function CFForceEndEdit: Integer; safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    procedure CFForceBeginEdit; safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property AngularVelocity: Double read Get_AngularVelocity write Set_AngularVelocity;
    property AngularAcceleration: Double read Get_AngularAcceleration write Set_AngularAcceleration;
  end;

// *********************************************************************//
// DispIntf:  ICWCentriFugalForceDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9F335011-F5A5-4992-AA03-3BEC3BDF0436}
// *********************************************************************//
  ICWCentriFugalForceDisp = dispinterface
    ['{9F335011-F5A5-4992-AA03-3BEC3BDF0436}']
    property Unit_: Integer dispid 1;
    property AngularVelocity: Double dispid 2;
    property AngularAcceleration: Double dispid 3;
    procedure SetReferenceEntity(const RefEntity: IDispatch); dispid 4;
    function CFForceEndEdit: Integer; dispid 5;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 6;
    function GetTimeCurve: OleVariant; dispid 7;
    procedure CFForceBeginEdit; dispid 8;
  end;

// *********************************************************************//
// Interface: ICWTemperature
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94DD4C40-F7FA-47E3-BA06-BFEFD28F8E62}
// *********************************************************************//
  ICWTemperature = interface(IDispatch)
    ['{94DD4C40-F7FA-47E3-BA06-BFEFD28F8E62}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_TemperatureValue: Double; safecall;
    procedure Set_TemperatureValue(DTempValue: Double); safecall;
    procedure TemperatureBeginEdit; safecall;
    function TemperatureEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function Get_UseTimeCurve: Integer; safecall;
    procedure Set_UseTimeCurve(BUseTimeCurve: Integer); safecall;
    function Get_TemperatureType: Integer; safecall;
    procedure Set_TemperatureType(NTempType: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property TemperatureValue: Double read Get_TemperatureValue write Set_TemperatureValue;
    property UseTimeCurve: Integer read Get_UseTimeCurve write Set_UseTimeCurve;
    property TemperatureType: Integer read Get_TemperatureType write Set_TemperatureType;
  end;

// *********************************************************************//
// DispIntf:  ICWTemperatureDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {94DD4C40-F7FA-47E3-BA06-BFEFD28F8E62}
// *********************************************************************//
  ICWTemperatureDisp = dispinterface
    ['{94DD4C40-F7FA-47E3-BA06-BFEFD28F8E62}']
    property Unit_: Integer dispid 1;
    property TemperatureValue: Double dispid 2;
    procedure TemperatureBeginEdit; dispid 3;
    function TemperatureEndEdit: Integer; dispid 4;
    procedure RemoveEntity(NIndex: Integer); dispid 5;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 6;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 7;
    function GetTimeCurve: OleVariant; dispid 8;
    property UseTimeCurve: Integer dispid 9;
    property TemperatureType: Integer dispid 10;
  end;

// *********************************************************************//
// Interface: ICWConvection
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45DADB3D-E02B-4A7B-9BF0-D5536A3680A7}
// *********************************************************************//
  ICWConvection = interface(IDispatch)
    ['{45DADB3D-E02B-4A7B-9BF0-D5536A3680A7}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_ConvectionCoefficient: Double; safecall;
    procedure Set_ConvectionCoefficient(DValue: Double); safecall;
    function Get_BulkAmbientTemperature: Double; safecall;
    procedure Set_BulkAmbientTemperature(DValue: Double); safecall;
    procedure ConvectionBeginEdit; safecall;
    function ConvectionEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTemperatureCurve: OleVariant; safecall;
    function SetBulkTemperatureTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetBulkTemperatureTimeCurve: OleVariant; safecall;
    function Get_UseTimeCurve: Integer; safecall;
    procedure Set_UseTimeCurve(BUseCurve: Integer); safecall;
    function Get_UseTemperatureCurve: Integer; safecall;
    procedure Set_UseTemperatureCurve(BUseCurve: Integer); safecall;
    function Get_UseBulkTemperatureTimeCurve: Integer; safecall;
    procedure Set_UseBulkTemperatureTimeCurve(BUseCurve: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property ConvectionCoefficient: Double read Get_ConvectionCoefficient write Set_ConvectionCoefficient;
    property BulkAmbientTemperature: Double read Get_BulkAmbientTemperature write Set_BulkAmbientTemperature;
    property UseTimeCurve: Integer read Get_UseTimeCurve write Set_UseTimeCurve;
    property UseTemperatureCurve: Integer read Get_UseTemperatureCurve write Set_UseTemperatureCurve;
    property UseBulkTemperatureTimeCurve: Integer read Get_UseBulkTemperatureTimeCurve write Set_UseBulkTemperatureTimeCurve;
  end;

// *********************************************************************//
// DispIntf:  ICWConvectionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {45DADB3D-E02B-4A7B-9BF0-D5536A3680A7}
// *********************************************************************//
  ICWConvectionDisp = dispinterface
    ['{45DADB3D-E02B-4A7B-9BF0-D5536A3680A7}']
    property Unit_: Integer dispid 1;
    property ConvectionCoefficient: Double dispid 2;
    property BulkAmbientTemperature: Double dispid 3;
    procedure ConvectionBeginEdit; dispid 4;
    function ConvectionEndEdit: Integer; dispid 5;
    procedure RemoveEntity(NIndex: Integer); dispid 6;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 7;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 8;
    function GetTimeCurve: OleVariant; dispid 9;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 10;
    function GetTemperatureCurve: OleVariant; dispid 11;
    function SetBulkTemperatureTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 12;
    function GetBulkTemperatureTimeCurve: OleVariant; dispid 13;
    property UseTimeCurve: Integer dispid 14;
    property UseTemperatureCurve: Integer dispid 15;
    property UseBulkTemperatureTimeCurve: Integer dispid 16;
  end;

// *********************************************************************//
// Interface: ICWHeatFlux
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D77721DD-8FE5-45EB-92B6-FC8106968473}
// *********************************************************************//
  ICWHeatFlux = interface(IDispatch)
    ['{D77721DD-8FE5-45EB-92B6-FC8106968473}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_HFValue: Double; safecall;
    procedure Set_HFValue(DValue: Double); safecall;
    function Get_IncludeThermostat: Integer; safecall;
    procedure Set_IncludeThermostat(BInclude: Integer); safecall;
    procedure HeatFluxBeginEdit; safecall;
    function HeatFluxEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTemperatureCurve: OleVariant; safecall;
    function GetThermostat: IDispatch; safecall;
    procedure SetThermostat(const DispCoord: IDispatch); safecall;
    procedure SetCutOffTemperatures(DVal1: Double; DVal2: Double); safecall;
    procedure GetCutOffTemperatures(out DVal1: Double; out DVal2: Double); safecall;
    function Get_UseTimeCurve: Integer; safecall;
    procedure Set_UseTimeCurve(BUseCurve: Integer); safecall;
    function Get_UseTemperatureCurve: Integer; safecall;
    procedure Set_UseTemperatureCurve(BUseCurve: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property HFValue: Double read Get_HFValue write Set_HFValue;
    property IncludeThermostat: Integer read Get_IncludeThermostat write Set_IncludeThermostat;
    property UseTimeCurve: Integer read Get_UseTimeCurve write Set_UseTimeCurve;
    property UseTemperatureCurve: Integer read Get_UseTemperatureCurve write Set_UseTemperatureCurve;
  end;

// *********************************************************************//
// DispIntf:  ICWHeatFluxDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D77721DD-8FE5-45EB-92B6-FC8106968473}
// *********************************************************************//
  ICWHeatFluxDisp = dispinterface
    ['{D77721DD-8FE5-45EB-92B6-FC8106968473}']
    property Unit_: Integer dispid 1;
    property HFValue: Double dispid 2;
    property IncludeThermostat: Integer dispid 3;
    procedure HeatFluxBeginEdit; dispid 4;
    function HeatFluxEndEdit: Integer; dispid 5;
    procedure RemoveEntity(NIndex: Integer); dispid 6;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 7;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 8;
    function GetTimeCurve: OleVariant; dispid 9;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 10;
    function GetTemperatureCurve: OleVariant; dispid 11;
    function GetThermostat: IDispatch; dispid 12;
    procedure SetThermostat(const DispCoord: IDispatch); dispid 13;
    procedure SetCutOffTemperatures(DVal1: Double; DVal2: Double); dispid 14;
    procedure GetCutOffTemperatures(out DVal1: Double; out DVal2: Double); dispid 15;
    property UseTimeCurve: Integer dispid 16;
    property UseTemperatureCurve: Integer dispid 17;
  end;

// *********************************************************************//
// Interface: ICWHeatPower
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D89A6CF-C25E-4F41-8CB1-1F5722FD6DC3}
// *********************************************************************//
  ICWHeatPower = interface(IDispatch)
    ['{9D89A6CF-C25E-4F41-8CB1-1F5722FD6DC3}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_HPValue: Double; safecall;
    procedure Set_HPValue(DValue: Double); safecall;
    function Get_IncludeThermostat: Integer; safecall;
    procedure Set_IncludeThermostat(BInclude: Integer); safecall;
    procedure HeatPowerBeginEdit; safecall;
    function HeatPowerEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTemperatureCurve: OleVariant; safecall;
    function GetThermostat: IDispatch; safecall;
    procedure SetThermostat(const DispVertex: IDispatch); safecall;
    procedure SetCutOffTemperatures(DVal1: Double; DVal2: Double); safecall;
    procedure GetCutOffTemperatures(out DVal1: Double; out DVal2: Double); safecall;
    function Get_UseTimeCurve: Integer; safecall;
    procedure Set_UseTimeCurve(BUseCurve: Integer); safecall;
    function Get_UseTemperatureCurve: Integer; safecall;
    procedure Set_UseTemperatureCurve(BUseCurve: Integer); safecall;
    function Get_ThermostatUnits: Integer; safecall;
    procedure Set_ThermostatUnits(NUnit: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property HPValue: Double read Get_HPValue write Set_HPValue;
    property IncludeThermostat: Integer read Get_IncludeThermostat write Set_IncludeThermostat;
    property UseTimeCurve: Integer read Get_UseTimeCurve write Set_UseTimeCurve;
    property UseTemperatureCurve: Integer read Get_UseTemperatureCurve write Set_UseTemperatureCurve;
    property ThermostatUnits: Integer read Get_ThermostatUnits write Set_ThermostatUnits;
  end;

// *********************************************************************//
// DispIntf:  ICWHeatPowerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9D89A6CF-C25E-4F41-8CB1-1F5722FD6DC3}
// *********************************************************************//
  ICWHeatPowerDisp = dispinterface
    ['{9D89A6CF-C25E-4F41-8CB1-1F5722FD6DC3}']
    property Unit_: Integer dispid 1;
    property HPValue: Double dispid 2;
    property IncludeThermostat: Integer dispid 3;
    procedure HeatPowerBeginEdit; dispid 4;
    function HeatPowerEndEdit: Integer; dispid 5;
    procedure RemoveEntity(NIndex: Integer); dispid 6;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 7;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 8;
    function GetTimeCurve: OleVariant; dispid 9;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 10;
    function GetTemperatureCurve: OleVariant; dispid 11;
    function GetThermostat: IDispatch; dispid 12;
    procedure SetThermostat(const DispVertex: IDispatch); dispid 13;
    procedure SetCutOffTemperatures(DVal1: Double; DVal2: Double); dispid 14;
    procedure GetCutOffTemperatures(out DVal1: Double; out DVal2: Double); dispid 15;
    property UseTimeCurve: Integer dispid 16;
    property UseTemperatureCurve: Integer dispid 17;
    property ThermostatUnits: Integer dispid 18;
  end;

// *********************************************************************//
// Interface: ICWRadiation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB7E570D-AAF9-4925-AC3A-91C54A699DCD}
// *********************************************************************//
  ICWRadiation = interface(IDispatch)
    ['{EB7E570D-AAF9-4925-AC3A-91C54A699DCD}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_Emmisivity: Double; safecall;
    procedure Set_Emmisivity(DEmmisivityValue: Double); safecall;
    function Get_ViewFactor: Double; safecall;
    procedure Set_ViewFactor(DViewFactor: Double); safecall;
    function Get_AmbientTemperature: Double; safecall;
    procedure Set_AmbientTemperature(DAmbientTemperature: Double); safecall;
    function Get_OpenSystem: Integer; safecall;
    procedure Set_OpenSystem(BOpenSystem: Integer); safecall;
    function Get_RadiationType: Integer; safecall;
    procedure Set_RadiationType(NRadType: Integer); safecall;
    procedure RadiationBeginEdit; safecall;
    function RadiationEndEdit: Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTemperatureCurve: OleVariant; safecall;
    function Get_UseTimeCurve: Integer; safecall;
    procedure Set_UseTimeCurve(BUseCurve: Integer); safecall;
    function Get_UseTemperatureCurve: Integer; safecall;
    procedure Set_UseTemperatureCurve(BUseCurve: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property Emmisivity: Double read Get_Emmisivity write Set_Emmisivity;
    property ViewFactor: Double read Get_ViewFactor write Set_ViewFactor;
    property AmbientTemperature: Double read Get_AmbientTemperature write Set_AmbientTemperature;
    property OpenSystem: Integer read Get_OpenSystem write Set_OpenSystem;
    property RadiationType: Integer read Get_RadiationType write Set_RadiationType;
    property UseTimeCurve: Integer read Get_UseTimeCurve write Set_UseTimeCurve;
    property UseTemperatureCurve: Integer read Get_UseTemperatureCurve write Set_UseTemperatureCurve;
  end;

// *********************************************************************//
// DispIntf:  ICWRadiationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {EB7E570D-AAF9-4925-AC3A-91C54A699DCD}
// *********************************************************************//
  ICWRadiationDisp = dispinterface
    ['{EB7E570D-AAF9-4925-AC3A-91C54A699DCD}']
    property Unit_: Integer dispid 1;
    property Emmisivity: Double dispid 2;
    property ViewFactor: Double dispid 3;
    property AmbientTemperature: Double dispid 4;
    property OpenSystem: Integer dispid 5;
    property RadiationType: Integer dispid 6;
    procedure RadiationBeginEdit; dispid 7;
    function RadiationEndEdit: Integer; dispid 8;
    procedure RemoveEntity(NIndex: Integer); dispid 9;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 10;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 11;
    function GetTimeCurve: OleVariant; dispid 12;
    function SetTemperatureCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 13;
    function GetTemperatureCurve: OleVariant; dispid 14;
    property UseTimeCurve: Integer dispid 15;
    property UseTemperatureCurve: Integer dispid 16;
  end;

// *********************************************************************//
// Interface: ICWRigidConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {05882CCB-5A00-4CD5-B77F-8D374DEFEEAD}
// *********************************************************************//
  ICWRigidConnector = interface(IDispatch)
    ['{05882CCB-5A00-4CD5-B77F-8D374DEFEEAD}']
    procedure RigidConnectorBeginEdit; safecall;
    function RigidConnectorEndEdit: Integer; safecall;
    procedure RemoveEntityFromFirstLocation(NIndex: Integer); safecall;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); safecall;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); safecall;
    procedure RemoveEntityFromSecondLocation(NIndex: Integer); safecall;
    function GetFirstLocationEntityCount: Integer; safecall;
    function GetSecondLocationEntityCount: Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICWRigidConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {05882CCB-5A00-4CD5-B77F-8D374DEFEEAD}
// *********************************************************************//
  ICWRigidConnectorDisp = dispinterface
    ['{05882CCB-5A00-4CD5-B77F-8D374DEFEEAD}']
    procedure RigidConnectorBeginEdit; dispid 1;
    function RigidConnectorEndEdit: Integer; dispid 2;
    procedure RemoveEntityFromFirstLocation(NIndex: Integer); dispid 3;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); dispid 4;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); dispid 5;
    procedure RemoveEntityFromSecondLocation(NIndex: Integer); dispid 6;
    function GetFirstLocationEntityCount: Integer; dispid 7;
    function GetSecondLocationEntityCount: Integer; dispid 8;
  end;

// *********************************************************************//
// Interface: ICWLinkConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63F1A46F-2BDE-4367-83A1-FA3A22FCA775}
// *********************************************************************//
  ICWLinkConnector = interface(IDispatch)
    ['{63F1A46F-2BDE-4367-83A1-FA3A22FCA775}']
    procedure LinkConnectorBeginEdit; safecall;
    function LinkConnectorEndEdit: Integer; safecall;
    procedure ReplaceEntityAtFirstLocation(const Disp: IDispatch); safecall;
    procedure ReplaceEntityAtSecondLocation(const Disp: IDispatch); safecall;
  end;

// *********************************************************************//
// DispIntf:  ICWLinkConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {63F1A46F-2BDE-4367-83A1-FA3A22FCA775}
// *********************************************************************//
  ICWLinkConnectorDisp = dispinterface
    ['{63F1A46F-2BDE-4367-83A1-FA3A22FCA775}']
    procedure LinkConnectorBeginEdit; dispid 1;
    function LinkConnectorEndEdit: Integer; dispid 2;
    procedure ReplaceEntityAtFirstLocation(const Disp: IDispatch); dispid 3;
    procedure ReplaceEntityAtSecondLocation(const Disp: IDispatch); dispid 4;
  end;

// *********************************************************************//
// Interface: ICWElasticConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A355F90-47EB-4A23-824C-F2379DD92252}
// *********************************************************************//
  ICWElasticConnector = interface(IDispatch)
    ['{5A355F90-47EB-4A23-824C-F2379DD92252}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_StiffnessType: Integer; safecall;
    procedure Set_StiffnessType(NStiffnessType: Integer); safecall;
    function Get_NormalStiffnessValue: Double; safecall;
    procedure Set_NormalStiffnessValue(DValue: Double); safecall;
    function Get_ShearStiffnessValue: Double; safecall;
    procedure Set_ShearStiffnessValue(DValue: Double); safecall;
    procedure ElasticConnectorBeginEdit; safecall;
    function ElasticConnectorEndEdit: Integer; safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveEntityAt(NIndex: Integer); safecall;
    function GetEntityCount: Integer; safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property StiffnessType: Integer read Get_StiffnessType write Set_StiffnessType;
    property NormalStiffnessValue: Double read Get_NormalStiffnessValue write Set_NormalStiffnessValue;
    property ShearStiffnessValue: Double read Get_ShearStiffnessValue write Set_ShearStiffnessValue;
  end;

// *********************************************************************//
// DispIntf:  ICWElasticConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {5A355F90-47EB-4A23-824C-F2379DD92252}
// *********************************************************************//
  ICWElasticConnectorDisp = dispinterface
    ['{5A355F90-47EB-4A23-824C-F2379DD92252}']
    property Unit_: Integer dispid 1;
    property StiffnessType: Integer dispid 2;
    property NormalStiffnessValue: Double dispid 3;
    property ShearStiffnessValue: Double dispid 4;
    procedure ElasticConnectorBeginEdit; dispid 5;
    function ElasticConnectorEndEdit: Integer; dispid 6;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 7;
    procedure RemoveEntityAt(NIndex: Integer); dispid 8;
    function GetEntityCount: Integer; dispid 9;
  end;

// *********************************************************************//
// Interface: ICWPinConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1CDE52B5-1CA2-486A-AABB-093CED1BDF61}
// *********************************************************************//
  ICWPinConnector = interface(IDispatch)
    ['{1CDE52B5-1CA2-486A-AABB-093CED1BDF61}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    procedure Set_AxialStiffnessValue(DValue: Double); safecall;
    function Get_AxialStiffnessValue: Double; safecall;
    procedure Set_RotationalStiffnessValue(DValue: Double); safecall;
    function Get_RotationalStiffnessValue: Double; safecall;
    procedure Set_IncludeTypeWithKey(BValue: WordBool); safecall;
    function Get_IncludeTypeWithKey: WordBool; safecall;
    procedure Set_IncludeTypeWithRetainerRing(BValue: WordBool); safecall;
    function Get_IncludeTypeWithRetainerRing: WordBool; safecall;
    procedure Set_IncludeMass(BValue: WordBool); safecall;
    function Get_IncludeMass: WordBool; safecall;
    procedure Set_MassValue(DValue: Double); safecall;
    function Get_MassValue: Double; safecall;
    function Get_IncludeStrengthData: WordBool; safecall;
    procedure Set_IncludeStrengthData(BValue: WordBool); safecall;
    function Get_TensileStressAreaUnit: Integer; safecall;
    procedure Set_TensileStressAreaUnit(NValue: Integer); safecall;
    procedure Set_TensileStressAreaValue(DValue: Double); safecall;
    function Get_TensileStressAreaValue: Double; safecall;
    function Get_PinStrengthUnit: Integer; safecall;
    procedure Set_PinStrengthUnit(NValue: Integer); safecall;
    procedure Set_PinStrengthValue(NValue: Double); safecall;
    function Get_PinStrengthValue: Double; safecall;
    function Get_SafetyFactor: Double; safecall;
    procedure Set_SafetyFactor(NValue: Double); safecall;
    function Get_MaterialType: Integer; safecall;
    procedure Set_MaterialType(NMaterialType: Integer); safecall;
    procedure GetLibraryMaterial(out SMaterialLibName: WideString; out SMaterialName: WideString); safecall;
    procedure SetLibraryMaterial(const SMaterialLibName: WideString; const SMaterialName: WideString); safecall;
    procedure PinConnectorBeginEdit; safecall;
    function PinConnectorEndEdit: Integer; safecall;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); safecall;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); safecall;
    procedure RemoveEntityFromFirstLocation(NIndex: Integer); safecall;
    procedure RemoveEntityFromSecondLocation(NIndex: Integer); safecall;
    function GetFirstLocationEntityCount: Integer; safecall;
    function GetSecondLocationEntityCount: Integer; safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property AxialStiffnessValue: Double read Get_AxialStiffnessValue write Set_AxialStiffnessValue;
    property RotationalStiffnessValue: Double read Get_RotationalStiffnessValue write Set_RotationalStiffnessValue;
    property IncludeTypeWithKey: WordBool read Get_IncludeTypeWithKey write Set_IncludeTypeWithKey;
    property IncludeTypeWithRetainerRing: WordBool read Get_IncludeTypeWithRetainerRing write Set_IncludeTypeWithRetainerRing;
    property IncludeMass: WordBool read Get_IncludeMass write Set_IncludeMass;
    property MassValue: Double read Get_MassValue write Set_MassValue;
    property IncludeStrengthData: WordBool read Get_IncludeStrengthData write Set_IncludeStrengthData;
    property TensileStressAreaUnit: Integer read Get_TensileStressAreaUnit write Set_TensileStressAreaUnit;
    property TensileStressAreaValue: Double read Get_TensileStressAreaValue write Set_TensileStressAreaValue;
    property PinStrengthUnit: Integer read Get_PinStrengthUnit write Set_PinStrengthUnit;
    property PinStrengthValue: Double read Get_PinStrengthValue write Set_PinStrengthValue;
    property SafetyFactor: Double read Get_SafetyFactor write Set_SafetyFactor;
    property MaterialType: Integer read Get_MaterialType write Set_MaterialType;
  end;

// *********************************************************************//
// DispIntf:  ICWPinConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1CDE52B5-1CA2-486A-AABB-093CED1BDF61}
// *********************************************************************//
  ICWPinConnectorDisp = dispinterface
    ['{1CDE52B5-1CA2-486A-AABB-093CED1BDF61}']
    property Unit_: Integer dispid 1;
    property AxialStiffnessValue: Double dispid 2;
    property RotationalStiffnessValue: Double dispid 3;
    property IncludeTypeWithKey: WordBool dispid 4;
    property IncludeTypeWithRetainerRing: WordBool dispid 5;
    property IncludeMass: WordBool dispid 6;
    property MassValue: Double dispid 7;
    property IncludeStrengthData: WordBool dispid 8;
    property TensileStressAreaUnit: Integer dispid 9;
    property TensileStressAreaValue: Double dispid 10;
    property PinStrengthUnit: Integer dispid 11;
    property PinStrengthValue: Double dispid 12;
    property SafetyFactor: Double dispid 13;
    property MaterialType: Integer dispid 14;
    procedure GetLibraryMaterial(out SMaterialLibName: WideString; out SMaterialName: WideString); dispid 15;
    procedure SetLibraryMaterial(const SMaterialLibName: WideString; const SMaterialName: WideString); dispid 16;
    procedure PinConnectorBeginEdit; dispid 17;
    function PinConnectorEndEdit: Integer; dispid 18;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); dispid 19;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); dispid 20;
    procedure RemoveEntityFromFirstLocation(NIndex: Integer); dispid 21;
    procedure RemoveEntityFromSecondLocation(NIndex: Integer); dispid 22;
    function GetFirstLocationEntityCount: Integer; dispid 23;
    function GetSecondLocationEntityCount: Integer; dispid 24;
  end;

// *********************************************************************//
// Interface: ICWSpringConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {96DD49CD-CC09-4FAE-A559-7A795983D6EB}
// *********************************************************************//
  ICWSpringConnector = interface(IDispatch)
    ['{96DD49CD-CC09-4FAE-A559-7A795983D6EB}']
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    procedure Set_StiffnessType(NValue: Integer); safecall;
    function Get_StiffnessType: Integer; safecall;
    procedure Set_NormalRadialStiffnessValue(DValue: Double); safecall;
    function Get_NormalRadialStiffnessValue: Double; safecall;
    procedure Set_TangentialOrShearStiffnessValue(DValue: Double); safecall;
    function Get_TangentialOrShearStiffnessValue: Double; safecall;
    procedure Set_RotationalStiffnessValue(DValue: Double); safecall;
    function Get_RotationalStiffnessValue: Double; safecall;
    procedure Set_PreLoadForceType(NValue: Integer); safecall;
    function Get_PreLoadForceType: Integer; safecall;
    procedure Set_PreLoadForceValue(DValue: Double); safecall;
    function Get_PreLoadForceValue: Double; safecall;
    procedure SpringConnectorBeginEdit; safecall;
    function SpringConnectorEndEdit: Integer; safecall;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); safecall;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); safecall;
    procedure RemoveEntityAtFirstLocation(NIndex: Integer); safecall;
    procedure RemoveEntityAtSecondLocation(NIndex: Integer); safecall;
    function GetSourceEntityCount: Integer; safecall;
    function GetTargetEntityCount: Integer; safecall;
    procedure GetSpringType(out NSpringType: Integer; out NSpringSubType: Integer); safecall;
    procedure SetSpringType(NSpringType: Integer; NSpringSubType: Integer); safecall;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property StiffnessType: Integer read Get_StiffnessType write Set_StiffnessType;
    property NormalRadialStiffnessValue: Double read Get_NormalRadialStiffnessValue write Set_NormalRadialStiffnessValue;
    property TangentialOrShearStiffnessValue: Double read Get_TangentialOrShearStiffnessValue write Set_TangentialOrShearStiffnessValue;
    property RotationalStiffnessValue: Double read Get_RotationalStiffnessValue write Set_RotationalStiffnessValue;
    property PreLoadForceType: Integer read Get_PreLoadForceType write Set_PreLoadForceType;
    property PreLoadForceValue: Double read Get_PreLoadForceValue write Set_PreLoadForceValue;
  end;

// *********************************************************************//
// DispIntf:  ICWSpringConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {96DD49CD-CC09-4FAE-A559-7A795983D6EB}
// *********************************************************************//
  ICWSpringConnectorDisp = dispinterface
    ['{96DD49CD-CC09-4FAE-A559-7A795983D6EB}']
    property Unit_: Integer dispid 1;
    property StiffnessType: Integer dispid 2;
    property NormalRadialStiffnessValue: Double dispid 3;
    property TangentialOrShearStiffnessValue: Double dispid 4;
    property RotationalStiffnessValue: Double dispid 5;
    property PreLoadForceType: Integer dispid 6;
    property PreLoadForceValue: Double dispid 7;
    procedure SpringConnectorBeginEdit; dispid 8;
    function SpringConnectorEndEdit: Integer; dispid 9;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); dispid 10;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); dispid 11;
    procedure RemoveEntityAtFirstLocation(NIndex: Integer); dispid 12;
    procedure RemoveEntityAtSecondLocation(NIndex: Integer); dispid 13;
    function GetSourceEntityCount: Integer; dispid 14;
    function GetTargetEntityCount: Integer; dispid 15;
    procedure GetSpringType(out NSpringType: Integer; out NSpringSubType: Integer); dispid 16;
    procedure SetSpringType(NSpringType: Integer; NSpringSubType: Integer); dispid 17;
  end;

// *********************************************************************//
// Interface: ICWBoltConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BA4876E-EFB8-45C6-B0FB-BF93FF54C065}
// *********************************************************************//
  ICWBoltConnector = interface(IDispatch)
    ['{9BA4876E-EFB8-45C6-B0FB-BF93FF54C065}']
    function Get_BoltUnit: Integer; safecall;
    procedure Set_BoltUnit(NUnit: Integer); safecall;
    function Get_MaterialUnit: Integer; safecall;
    procedure Set_MaterialUnit(NUnit: Integer); safecall;
    function Get_HeadDiameterUnit: Integer; safecall;
    procedure Set_HeadDiameterUnit(NUnit: Integer); safecall;
    function Get_NutDiameterUnit: Integer; safecall;
    procedure Set_NutDiameterUnit(NUnit: Integer); safecall;
    function Get_BoltShankDiameterUnit: Integer; safecall;
    procedure Set_BoltShankDiameterUnit(NUnit: Integer); safecall;
    function Get_BoltType: Integer; safecall;
    procedure Set_BoltType(NValue: Integer); safecall;
    function Get_MaterialType: Integer; safecall;
    procedure Set_MaterialType(NValue: Integer); safecall;
    function Get_IncludeMass: WordBool; safecall;
    procedure Set_IncludeMass(BValue: WordBool); safecall;
    function Get_IncludeTightFit: WordBool; safecall;
    procedure Set_IncludeTightFit(BValue: WordBool); safecall;
    function Get_PreLoadForceType: Integer; safecall;
    procedure Set_PreLoadForceType(NValue: Integer); safecall;
    function Get_PreLoadForceValue: Double; safecall;
    procedure Set_PreLoadForceValue(DValue: Double); safecall;
    function Get_FrictionValue: Double; safecall;
    procedure Set_FrictionValue(DValue: Double); safecall;
    function Get_MassValue: Double; safecall;
    procedure Set_MassValue(DValue: Double); safecall;
    function Get_IncludeBoltSeries: WordBool; safecall;
    procedure Set_IncludeBoltSeries(BValue: WordBool); safecall;
    function Get_IncludeSymmetricalBolt: WordBool; safecall;
    procedure Set_IncludeSymmetricalBolt(BValue: WordBool); safecall;
    procedure Set_HeadDiameterValue(DValue: Double); safecall;
    function Get_HeadDiameterValue: Double; safecall;
    procedure Set_NutDiameterValue(DValue: Double); safecall;
    function Get_NutDiameterValue: Double; safecall;
    procedure Set_BoltShankDiameterValue(DValue: Double); safecall;
    function Get_BoltShankDiameterValue: Double; safecall;
    procedure Set_SameHeadAndNutDiameter(BValue: WordBool); safecall;
    function Get_SameHeadAndNutDiameter: WordBool; safecall;
    procedure Set_SymmetricalBoltType(NValue: Integer); safecall;
    function Get_SymmetricalBoltType: Integer; safecall;
    procedure Set_MaterialSource(NMaterialSource: Integer); safecall;
    function Get_MaterialSource: Integer; safecall;
    procedure Set_YoungModulus(DYoungModulus: Double); safecall;
    function Get_YoungModulus: Double; safecall;
    procedure Set_PoissonsRatio(DPoissonsRatio: Double); safecall;
    function Get_PoissonsRatio: Double; safecall;
    procedure Set_ThermalCoefficient(DThermalCoefficient: Double); safecall;
    function Get_ThermalCoefficient: Double; safecall;
    function Get_IncludeStrengthData: WordBool; safecall;
    procedure Set_IncludeStrengthData(BValue: WordBool); safecall;
    function Get_IncludeKnownTensileStressArea: WordBool; safecall;
    procedure Set_IncludeKnownTensileStressArea(BValue: WordBool); safecall;
    function Get_TensileStressAreaUnit: Integer; safecall;
    procedure Set_TensileStressAreaUnit(NUnit: Integer); safecall;
    function Get_ThreadsPerLengthUnit: Integer; safecall;
    procedure Set_ThreadsPerLengthUnit(NUnit: Integer); safecall;
    function Get_PinBoltStrengthUnit: Integer; safecall;
    procedure Set_PinBoltStrengthUnit(NUnit: Integer); safecall;
    procedure GetLibraryMaterial(out SMaterialLibName: WideString; out SMaterialName: WideString); safecall;
    procedure SetLibraryMaterial(const SMaterialLibName: WideString; const SMaterialName: WideString); safecall;
    procedure GetStrengthData(out DTensileStressArea: Double; out DPinBoltStrength: Double; 
                              out DSafetyFactor: Double); safecall;
    procedure SetStrengthData(DTensileStressArea: Double; DPinBoltStrength: Double; 
                              DSafetyFactor: Double); safecall;
    procedure BoltConnectorBeginEdit; safecall;
    function BoltConnectorEndEdit: Integer; safecall;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); safecall;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); safecall;
    procedure RemoveEntityAtFirstLocation(NIndex: Integer); safecall;
    procedure RemoveEntityAtSecondLocation(NIndex: Integer); safecall;
    procedure InsertReferenceGeometry(const DispEntity: IDispatch); safecall;
    procedure InsertBoltSeriesEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveBoltSeriesEntity(NIndex: Integer); safecall;
    procedure InsertTightFitEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveTightFitEntity(NIndex: Integer); safecall;
    function GetSourceEntityCount: Integer; safecall;
    function GetTargetEntityCount: Integer; safecall;
    function GetBoltSeriesEntityCount: Integer; safecall;
    property BoltUnit: Integer read Get_BoltUnit write Set_BoltUnit;
    property MaterialUnit: Integer read Get_MaterialUnit write Set_MaterialUnit;
    property HeadDiameterUnit: Integer read Get_HeadDiameterUnit write Set_HeadDiameterUnit;
    property NutDiameterUnit: Integer read Get_NutDiameterUnit write Set_NutDiameterUnit;
    property BoltShankDiameterUnit: Integer read Get_BoltShankDiameterUnit write Set_BoltShankDiameterUnit;
    property BoltType: Integer read Get_BoltType write Set_BoltType;
    property MaterialType: Integer read Get_MaterialType write Set_MaterialType;
    property IncludeMass: WordBool read Get_IncludeMass write Set_IncludeMass;
    property IncludeTightFit: WordBool read Get_IncludeTightFit write Set_IncludeTightFit;
    property PreLoadForceType: Integer read Get_PreLoadForceType write Set_PreLoadForceType;
    property PreLoadForceValue: Double read Get_PreLoadForceValue write Set_PreLoadForceValue;
    property FrictionValue: Double read Get_FrictionValue write Set_FrictionValue;
    property MassValue: Double read Get_MassValue write Set_MassValue;
    property IncludeBoltSeries: WordBool read Get_IncludeBoltSeries write Set_IncludeBoltSeries;
    property IncludeSymmetricalBolt: WordBool read Get_IncludeSymmetricalBolt write Set_IncludeSymmetricalBolt;
    property HeadDiameterValue: Double read Get_HeadDiameterValue write Set_HeadDiameterValue;
    property NutDiameterValue: Double read Get_NutDiameterValue write Set_NutDiameterValue;
    property BoltShankDiameterValue: Double read Get_BoltShankDiameterValue write Set_BoltShankDiameterValue;
    property SameHeadAndNutDiameter: WordBool read Get_SameHeadAndNutDiameter write Set_SameHeadAndNutDiameter;
    property SymmetricalBoltType: Integer read Get_SymmetricalBoltType write Set_SymmetricalBoltType;
    property MaterialSource: Integer read Get_MaterialSource write Set_MaterialSource;
    property YoungModulus: Double read Get_YoungModulus write Set_YoungModulus;
    property PoissonsRatio: Double read Get_PoissonsRatio write Set_PoissonsRatio;
    property ThermalCoefficient: Double read Get_ThermalCoefficient write Set_ThermalCoefficient;
    property IncludeStrengthData: WordBool read Get_IncludeStrengthData write Set_IncludeStrengthData;
    property IncludeKnownTensileStressArea: WordBool read Get_IncludeKnownTensileStressArea write Set_IncludeKnownTensileStressArea;
    property TensileStressAreaUnit: Integer read Get_TensileStressAreaUnit write Set_TensileStressAreaUnit;
    property ThreadsPerLengthUnit: Integer read Get_ThreadsPerLengthUnit write Set_ThreadsPerLengthUnit;
    property PinBoltStrengthUnit: Integer read Get_PinBoltStrengthUnit write Set_PinBoltStrengthUnit;
  end;

// *********************************************************************//
// DispIntf:  ICWBoltConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9BA4876E-EFB8-45C6-B0FB-BF93FF54C065}
// *********************************************************************//
  ICWBoltConnectorDisp = dispinterface
    ['{9BA4876E-EFB8-45C6-B0FB-BF93FF54C065}']
    property BoltUnit: Integer dispid 1;
    property MaterialUnit: Integer dispid 2;
    property HeadDiameterUnit: Integer dispid 3;
    property NutDiameterUnit: Integer dispid 4;
    property BoltShankDiameterUnit: Integer dispid 5;
    property BoltType: Integer dispid 6;
    property MaterialType: Integer dispid 7;
    property IncludeMass: WordBool dispid 8;
    property IncludeTightFit: WordBool dispid 9;
    property PreLoadForceType: Integer dispid 10;
    property PreLoadForceValue: Double dispid 11;
    property FrictionValue: Double dispid 12;
    property MassValue: Double dispid 13;
    property IncludeBoltSeries: WordBool dispid 14;
    property IncludeSymmetricalBolt: WordBool dispid 15;
    property HeadDiameterValue: Double dispid 16;
    property NutDiameterValue: Double dispid 17;
    property BoltShankDiameterValue: Double dispid 18;
    property SameHeadAndNutDiameter: WordBool dispid 19;
    property SymmetricalBoltType: Integer dispid 20;
    property MaterialSource: Integer dispid 21;
    property YoungModulus: Double dispid 22;
    property PoissonsRatio: Double dispid 23;
    property ThermalCoefficient: Double dispid 24;
    property IncludeStrengthData: WordBool dispid 25;
    property IncludeKnownTensileStressArea: WordBool dispid 26;
    property TensileStressAreaUnit: Integer dispid 27;
    property ThreadsPerLengthUnit: Integer dispid 28;
    property PinBoltStrengthUnit: Integer dispid 29;
    procedure GetLibraryMaterial(out SMaterialLibName: WideString; out SMaterialName: WideString); dispid 30;
    procedure SetLibraryMaterial(const SMaterialLibName: WideString; const SMaterialName: WideString); dispid 31;
    procedure GetStrengthData(out DTensileStressArea: Double; out DPinBoltStrength: Double; 
                              out DSafetyFactor: Double); dispid 32;
    procedure SetStrengthData(DTensileStressArea: Double; DPinBoltStrength: Double; 
                              DSafetyFactor: Double); dispid 33;
    procedure BoltConnectorBeginEdit; dispid 34;
    function BoltConnectorEndEdit: Integer; dispid 35;
    procedure InsertEntityAtFirstLocation(const DispEntity: IDispatch); dispid 36;
    procedure InsertEntityAtSecondLocation(const DispEntity: IDispatch); dispid 37;
    procedure RemoveEntityAtFirstLocation(NIndex: Integer); dispid 38;
    procedure RemoveEntityAtSecondLocation(NIndex: Integer); dispid 39;
    procedure InsertReferenceGeometry(const DispEntity: IDispatch); dispid 40;
    procedure InsertBoltSeriesEntity(const DispEntity: IDispatch); dispid 41;
    procedure RemoveBoltSeriesEntity(NIndex: Integer); dispid 42;
    procedure InsertTightFitEntity(const DispEntity: IDispatch); dispid 43;
    procedure RemoveTightFitEntity(NIndex: Integer); dispid 44;
    function GetSourceEntityCount: Integer; dispid 45;
    function GetTargetEntityCount: Integer; dispid 46;
    function GetBoltSeriesEntityCount: Integer; dispid 47;
  end;

// *********************************************************************//
// Interface: ICWSpotWeldConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {756B2585-6350-460A-9C2A-7F25DA9D094A}
// *********************************************************************//
  ICWSpotWeldConnector = interface(IDispatch)
    ['{756B2585-6350-460A-9C2A-7F25DA9D094A}']
    function Get_SpotWeldDiameterUnit: Integer; safecall;
    procedure Set_SpotWeldDiameterUnit(NUnit: Integer); safecall;
    procedure Set_SpotWeldDiameterValue(DValue: Double); safecall;
    function Get_SpotWeldDiameterValue: Double; safecall;
    procedure SpotWeldConnectorBeginEdit; safecall;
    function SpotWeldConnectorEndEdit: Integer; safecall;
    procedure ReplaceEntityAtFirstFace(const DispEntity: IDispatch); safecall;
    procedure ReplaceEntityAtSecondFace(const DispEntity: IDispatch); safecall;
    procedure InsertSpotWeldLocations(const DispEntity: IDispatch); safecall;
    procedure RemoveSpotWeldLocationAt(NIndex: Integer); safecall;
    function GetSourceEntityCount: Integer; safecall;
    function GetTargetEntityCount: Integer; safecall;
    function GetSpotWeldLocationCount: Integer; safecall;
    property SpotWeldDiameterUnit: Integer read Get_SpotWeldDiameterUnit write Set_SpotWeldDiameterUnit;
    property SpotWeldDiameterValue: Double read Get_SpotWeldDiameterValue write Set_SpotWeldDiameterValue;
  end;

// *********************************************************************//
// DispIntf:  ICWSpotWeldConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {756B2585-6350-460A-9C2A-7F25DA9D094A}
// *********************************************************************//
  ICWSpotWeldConnectorDisp = dispinterface
    ['{756B2585-6350-460A-9C2A-7F25DA9D094A}']
    property SpotWeldDiameterUnit: Integer dispid 1;
    property SpotWeldDiameterValue: Double dispid 2;
    procedure SpotWeldConnectorBeginEdit; dispid 3;
    function SpotWeldConnectorEndEdit: Integer; dispid 4;
    procedure ReplaceEntityAtFirstFace(const DispEntity: IDispatch); dispid 5;
    procedure ReplaceEntityAtSecondFace(const DispEntity: IDispatch); dispid 6;
    procedure InsertSpotWeldLocations(const DispEntity: IDispatch); dispid 7;
    procedure RemoveSpotWeldLocationAt(NIndex: Integer); dispid 8;
    function GetSourceEntityCount: Integer; dispid 9;
    function GetTargetEntityCount: Integer; dispid 10;
    function GetSpotWeldLocationCount: Integer; dispid 11;
  end;

// *********************************************************************//
// Interface: ICWBearingLoad
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E240A061-9543-4D8A-8749-2C9C850F7035}
// *********************************************************************//
  ICWBearingLoad = interface(IDispatch)
    ['{E240A061-9543-4D8A-8749-2C9C850F7035}']
    function Get_BearingLoadUnit: Integer; safecall;
    procedure Set_BearingLoadUnit(NUnit: Integer); safecall;
    function Get_XDirectionValue: Double; safecall;
    procedure Set_XDirectionValue(DValue: Double); safecall;
    function Get_YDirectionValue: Double; safecall;
    procedure Set_YDirectionValue(DValue: Double); safecall;
    function Get_Direction: Integer; safecall;
    procedure Set_Direction(NValue: Integer); safecall;
    procedure BearingLoadBeginEdit; safecall;
    function BearingLoadEndEdit: Integer; safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure ReplaceCoordinateSystem(const DispEntity: IDispatch); safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function GetEntityCount: Integer; safecall;
    property BearingLoadUnit: Integer read Get_BearingLoadUnit write Set_BearingLoadUnit;
    property XDirectionValue: Double read Get_XDirectionValue write Set_XDirectionValue;
    property YDirectionValue: Double read Get_YDirectionValue write Set_YDirectionValue;
    property Direction: Integer read Get_Direction write Set_Direction;
  end;

// *********************************************************************//
// DispIntf:  ICWBearingLoadDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E240A061-9543-4D8A-8749-2C9C850F7035}
// *********************************************************************//
  ICWBearingLoadDisp = dispinterface
    ['{E240A061-9543-4D8A-8749-2C9C850F7035}']
    property BearingLoadUnit: Integer dispid 1;
    property XDirectionValue: Double dispid 2;
    property YDirectionValue: Double dispid 3;
    property Direction: Integer dispid 4;
    procedure BearingLoadBeginEdit; dispid 5;
    function BearingLoadEndEdit: Integer; dispid 6;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 7;
    procedure ReplaceCoordinateSystem(const DispEntity: IDispatch); dispid 8;
    procedure RemoveEntity(NIndex: Integer); dispid 9;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 10;
    function GetTimeCurve: OleVariant; dispid 11;
    function GetEntityCount: Integer; dispid 12;
  end;

// *********************************************************************//
// Interface: ICWBaseExcitation
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1517A9E9-7BE0-4BE8-9571-7ADAFE1EB5FB}
// *********************************************************************//
  ICWBaseExcitation = interface(IDispatch)
    ['{1517A9E9-7BE0-4BE8-9571-7ADAFE1EB5FB}']
    function Get_BaseExcitationType: Integer; safecall;
    procedure Set_BaseExcitationType(NType: Integer); safecall;
    function Get_FixtureNameInSelectedExcitation: WideString; safecall;
    procedure Set_FixtureNameInSelectedExcitation(const SFixtureName: WideString); safecall;
    function Get_Unit_: Integer; safecall;
    procedure Set_Unit_(NUnit: Integer); safecall;
    function Get_PhaseAngleUnit: Integer; safecall;
    procedure Set_PhaseAngleUnit(NUnit: Integer); safecall;
    function Get_PhaseAngle: Double; safecall;
    procedure Set_PhaseAngle(DAngleValue: Double); safecall;
    procedure GetExcitationDirections(out BDir1: Integer; out BDir2: Integer; out BDir3: Integer); safecall;
    procedure SetExcitationDirections(BDir1: Integer; BDir2: Integer; BDir3: Integer); safecall;
    procedure GetExcitationDirectionValues(out DVal1: Double; out DVal2: Double; out DVal3: Double); safecall;
    procedure SetExcitationDirectionValues(DVal1: Double; DVal2: Double; DVal3: Double); safecall;
    procedure SetDirectionEntityForUniformExcitation(const RefEntity: IDispatch); safecall;
    function GetTimeOrFrequencyCurve: OleVariant; safecall;
    function SetTimeOrFrequencyCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    procedure BaseExcitationBeginEdit; safecall;
    function BaseExcitationEndEdit: Integer; safecall;
    property BaseExcitationType: Integer read Get_BaseExcitationType write Set_BaseExcitationType;
    property FixtureNameInSelectedExcitation: WideString read Get_FixtureNameInSelectedExcitation write Set_FixtureNameInSelectedExcitation;
    property Unit_: Integer read Get_Unit_ write Set_Unit_;
    property PhaseAngleUnit: Integer read Get_PhaseAngleUnit write Set_PhaseAngleUnit;
    property PhaseAngle: Double read Get_PhaseAngle write Set_PhaseAngle;
  end;

// *********************************************************************//
// DispIntf:  ICWBaseExcitationDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {1517A9E9-7BE0-4BE8-9571-7ADAFE1EB5FB}
// *********************************************************************//
  ICWBaseExcitationDisp = dispinterface
    ['{1517A9E9-7BE0-4BE8-9571-7ADAFE1EB5FB}']
    property BaseExcitationType: Integer dispid 1;
    property FixtureNameInSelectedExcitation: WideString dispid 2;
    property Unit_: Integer dispid 3;
    property PhaseAngleUnit: Integer dispid 4;
    property PhaseAngle: Double dispid 5;
    procedure GetExcitationDirections(out BDir1: Integer; out BDir2: Integer; out BDir3: Integer); dispid 6;
    procedure SetExcitationDirections(BDir1: Integer; BDir2: Integer; BDir3: Integer); dispid 7;
    procedure GetExcitationDirectionValues(out DVal1: Double; out DVal2: Double; out DVal3: Double); dispid 8;
    procedure SetExcitationDirectionValues(DVal1: Double; DVal2: Double; DVal3: Double); dispid 9;
    procedure SetDirectionEntityForUniformExcitation(const RefEntity: IDispatch); dispid 10;
    function GetTimeOrFrequencyCurve: OleVariant; dispid 11;
    function SetTimeOrFrequencyCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 12;
    procedure BaseExcitationBeginEdit; dispid 13;
    function BaseExcitationEndEdit: Integer; dispid 14;
  end;

// *********************************************************************//
// Interface: ICWDistributedMass
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41D30066-FCCC-4499-AE79-76D4BEDDAA82}
// *********************************************************************//
  ICWDistributedMass = interface(IDispatch)
    ['{41D30066-FCCC-4499-AE79-76D4BEDDAA82}']
    function Get_Units: Integer; safecall;
    procedure Set_Units(NUnits: Integer); safecall;
    function Get_TotalMass: Double; safecall;
    procedure Set_TotalMass(DMass: Double); safecall;
    function InsertEntity(const DispEntity: IDispatch): Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    property Units: Integer read Get_Units write Set_Units;
    property TotalMass: Double read Get_TotalMass write Set_TotalMass;
  end;

// *********************************************************************//
// DispIntf:  ICWDistributedMassDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {41D30066-FCCC-4499-AE79-76D4BEDDAA82}
// *********************************************************************//
  ICWDistributedMassDisp = dispinterface
    ['{41D30066-FCCC-4499-AE79-76D4BEDDAA82}']
    property Units: Integer dispid 1;
    property TotalMass: Double dispid 2;
    function InsertEntity(const DispEntity: IDispatch): Integer; dispid 3;
    procedure RemoveEntity(NIndex: Integer); dispid 4;
  end;

// *********************************************************************//
// Interface: ICWDynamicInitialCondition
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C21B30F-8C77-4E44-A8F3-761DC509ED32}
// *********************************************************************//
  ICWDynamicInitialCondition = interface(IDispatch)
    ['{9C21B30F-8C77-4E44-A8F3-761DC509ED32}']
    function Get_InitialConditionType: Integer; safecall;
    procedure Set_InitialConditionType(NType: Integer); safecall;
    function Get_Units: Integer; safecall;
    procedure Set_Units(NUnits: Integer); safecall;
    procedure GetDirections(out BDir1: Integer; out BDir2: Integer; out BDir3: Integer); safecall;
    procedure SetDirections(BDir1: Integer; BDir2: Integer; BDir3: Integer); safecall;
    procedure GetValues(out DVal1: Double; out DVal2: Double; out DVal3: Double); safecall;
    procedure SetValues(DVal1: Double; DVal2: Double; DVal3: Double); safecall;
    procedure SetDirectionEntity(const RefEntity: IDispatch); safecall;
    function InsertEntity(const DispEntity: IDispatch): Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    property InitialConditionType: Integer read Get_InitialConditionType write Set_InitialConditionType;
    property Units: Integer read Get_Units write Set_Units;
  end;

// *********************************************************************//
// DispIntf:  ICWDynamicInitialConditionDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9C21B30F-8C77-4E44-A8F3-761DC509ED32}
// *********************************************************************//
  ICWDynamicInitialConditionDisp = dispinterface
    ['{9C21B30F-8C77-4E44-A8F3-761DC509ED32}']
    property InitialConditionType: Integer dispid 1;
    property Units: Integer dispid 2;
    procedure GetDirections(out BDir1: Integer; out BDir2: Integer; out BDir3: Integer); dispid 3;
    procedure SetDirections(BDir1: Integer; BDir2: Integer; BDir3: Integer); dispid 4;
    procedure GetValues(out DVal1: Double; out DVal2: Double; out DVal3: Double); dispid 5;
    procedure SetValues(DVal1: Double; DVal2: Double; DVal3: Double); dispid 6;
    procedure SetDirectionEntity(const RefEntity: IDispatch); dispid 7;
    function InsertEntity(const DispEntity: IDispatch): Integer; dispid 8;
    procedure RemoveEntity(NIndex: Integer); dispid 9;
  end;

// *********************************************************************//
// Interface: ICWRemoteLoad
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E273951-C865-45F6-89F9-7DAAB971010E}
// *********************************************************************//
  ICWRemoteLoad = interface(IDispatch)
    ['{9E273951-C865-45F6-89F9-7DAAB971010E}']
    function Get_LoadType: Integer; safecall;
    procedure Set_LoadType(NType: Integer); safecall;
    function Get_LocationUnit: Integer; safecall;
    procedure Set_LocationUnit(NUnit: Integer); safecall;
    function Get_ForceOrTranslationUnit: Integer; safecall;
    procedure Set_ForceOrTranslationUnit(NUnit: Integer); safecall;
    function Get_MomentOrRotationUnit: Integer; safecall;
    procedure Set_MomentOrRotationUnit(NUnit: Integer); safecall;
    function Get_MassUnit: Integer; safecall;
    procedure Set_MassUnit(NUnit: Integer); safecall;
    procedure GetLocationValues(out DXValue: Double; out DYValue: Double; out DZValue: Double); safecall;
    procedure SetLocationValues(DXValue: Double; DYValue: Double; DZValue: Double); safecall;
    procedure GetForceOrTranslationValues(out BInclude: Integer; out BXValue: Integer; 
                                          out DXValue: Double; out BYValue: Integer; 
                                          out DYValue: Double; out BZValue: Integer; 
                                          out DZValue: Double); safecall;
    procedure SetForceOrTranslationValues(BInclude: Integer; BXValue: Integer; DXValue: Double; 
                                          BYValue: Integer; DYValue: Double; BZValue: Integer; 
                                          DZValue: Double); safecall;
    procedure GetMomentOrRotationValues(out BInclude: Integer; out BXValue: Integer; 
                                        out DXValue: Double; out BYValue: Integer; 
                                        out DYValue: Double; out BZValue: Integer; 
                                        out DZValue: Double); safecall;
    procedure SetMomentOrRotationValues(BInclude: Integer; BXValue: Integer; DXValue: Double; 
                                        BYValue: Integer; DYValue: Double; BZValue: Integer; 
                                        DZValue: Double); safecall;
    function GetMassValues(out BInclude: Integer): OleVariant; safecall;
    procedure SetMassValues(BInclude: Integer; Var_: OleVariant); safecall;
    function GetTimeOrFrequencyCurve: OleVariant; safecall;
    function SetTimeOrFrequencyCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    procedure RemoveEntity(NIndex: Integer); safecall;
    procedure InsertEntity(const DispEntity: IDispatch); safecall;
    procedure SetReferenceCoordinateSystem(BGlobal: Integer; const DispRefEntity: IDispatch); safecall;
    procedure RemoteLoadBeginEdit; safecall;
    function RemoteLoadEndEdit: Integer; safecall;
    property LoadType: Integer read Get_LoadType write Set_LoadType;
    property LocationUnit: Integer read Get_LocationUnit write Set_LocationUnit;
    property ForceOrTranslationUnit: Integer read Get_ForceOrTranslationUnit write Set_ForceOrTranslationUnit;
    property MomentOrRotationUnit: Integer read Get_MomentOrRotationUnit write Set_MomentOrRotationUnit;
    property MassUnit: Integer read Get_MassUnit write Set_MassUnit;
  end;

// *********************************************************************//
// DispIntf:  ICWRemoteLoadDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {9E273951-C865-45F6-89F9-7DAAB971010E}
// *********************************************************************//
  ICWRemoteLoadDisp = dispinterface
    ['{9E273951-C865-45F6-89F9-7DAAB971010E}']
    property LoadType: Integer dispid 1;
    property LocationUnit: Integer dispid 2;
    property ForceOrTranslationUnit: Integer dispid 3;
    property MomentOrRotationUnit: Integer dispid 4;
    property MassUnit: Integer dispid 5;
    procedure GetLocationValues(out DXValue: Double; out DYValue: Double; out DZValue: Double); dispid 6;
    procedure SetLocationValues(DXValue: Double; DYValue: Double; DZValue: Double); dispid 7;
    procedure GetForceOrTranslationValues(out BInclude: Integer; out BXValue: Integer; 
                                          out DXValue: Double; out BYValue: Integer; 
                                          out DYValue: Double; out BZValue: Integer; 
                                          out DZValue: Double); dispid 8;
    procedure SetForceOrTranslationValues(BInclude: Integer; BXValue: Integer; DXValue: Double; 
                                          BYValue: Integer; DYValue: Double; BZValue: Integer; 
                                          DZValue: Double); dispid 9;
    procedure GetMomentOrRotationValues(out BInclude: Integer; out BXValue: Integer; 
                                        out DXValue: Double; out BYValue: Integer; 
                                        out DYValue: Double; out BZValue: Integer; 
                                        out DZValue: Double); dispid 10;
    procedure SetMomentOrRotationValues(BInclude: Integer; BXValue: Integer; DXValue: Double; 
                                        BYValue: Integer; DYValue: Double; BZValue: Integer; 
                                        DZValue: Double); dispid 11;
    function GetMassValues(out BInclude: Integer): OleVariant; dispid 12;
    procedure SetMassValues(BInclude: Integer; Var_: OleVariant); dispid 13;
    function GetTimeOrFrequencyCurve: OleVariant; dispid 14;
    function SetTimeOrFrequencyCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 15;
    procedure RemoveEntity(NIndex: Integer); dispid 16;
    procedure InsertEntity(const DispEntity: IDispatch); dispid 17;
    procedure SetReferenceCoordinateSystem(BGlobal: Integer; const DispRefEntity: IDispatch); dispid 18;
    procedure RemoteLoadBeginEdit; dispid 19;
    function RemoteLoadEndEdit: Integer; dispid 20;
  end;

// *********************************************************************//
// Interface: ICWEdgeWeldConnector
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB37E913-D238-4016-BCAC-9DEDF4A8E72A}
// *********************************************************************//
  ICWEdgeWeldConnector = interface(IDispatch)
    ['{FB37E913-D238-4016-BCAC-9DEDF4A8E72A}']
    function GetEdgeWeldType(out ErrorCode: Integer): Integer; safecall;
    function SetEdgeWeldType(NOption: Integer): Integer; safecall;
    function GetFirstFace(out ErrorCode: Integer): IDispatch; safecall;
    function GetSecondFace(out ErrorCode: Integer): IDispatch; safecall;
    function ReplaceFacesThenAutoGenerateTouchingEdges(NEdgeWeldStyle: Integer; 
                                                       const DispFace1: IDispatch; 
                                                       const DispFace2: IDispatch): Integer; safecall;
    function ReplaceFacesAndEdges(NEdgeWeldStyle: Integer; const DispFace1: IDispatch; 
                                  const DispFace2: IDispatch; Edges: OleVariant): Integer; safecall;
    function GetEdgeList(out ErrorCode: Integer): OleVariant; safecall;
    function AddEdges(NEdgeWeldStyle: Integer; Edges: OleVariant): Integer; safecall;
    function RemoveEdges(NEdgeWeldStyle: Integer; Edges: OleVariant): Integer; safecall;
    function IsWeldOrientation(out ErrorCode: Integer): WordBool; safecall;
    function SetWeldOrientation(BOrientation: WordBool): Integer; safecall;
    function IsInducedBendingMomentIncluded(out ErrorCode: Integer): WordBool; safecall;
    function SetInducedBendingMomentIncluded(BIncluded: WordBool): Integer; safecall;
    function GetCodeType(out ErrorCode: Integer): Integer; safecall;
    function SetCodeType(NOption: Integer): Integer; safecall;
    function GetWeldSizingSettingUS(out NElectrodeMaterial: Integer; out DWeldStrength: Double; 
                                    out NWeldStrengthUnit: Integer; 
                                    out NSafetyFactorLiftOption: Integer; 
                                    out DSafetyFactor: Double; out BIsEstimatedWeldSize: WordBool; 
                                    out DEstimatedWeldSize: Double; 
                                    out NEstimatedWeldSizeUnit: Integer): Integer; safecall;
    function SetWeldSizingSettingUS(NElectrodeMaterial: Integer; DWeldStrength: Double; 
                                    NWeldStrengthUnit: Integer; NSafetyFactorLiftOption: Integer; 
                                    DSafetyFactor: Double; BIsEstimatedWeldSize: WordBool; 
                                    DEstimatedWeldSize: Double; NEstimatedWeldSizeUnit: Integer): Integer; safecall;
    function GetWeldSizingSettingEuro(out NWeakMaterial: Integer; 
                                      out DUltimateTensileStrength: Double; 
                                      out NTensileStrengthUnit: Integer; 
                                      out DCorrelationFactor: Double; 
                                      out DPartialSafetyFactor: Double; 
                                      out BIsEstimatedWeldSize: WordBool; 
                                      out DEstimatedWeldSize: Double; 
                                      out NEstimatedWeldSizeUnit: Integer): Integer; safecall;
    function SetWeldSizingSettingEuro(NWeakMaterial: Integer; DUltimateTensileStrength: Double; 
                                      NTensileStrengthUnit: Integer; DCorrelationFactor: Double; 
                                      DPartialSafetyFactor: Double; BIsEstimatedWeldSize: WordBool; 
                                      DEstimatedWeldSize: Double; NEstimatedWeldSizeUnit: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICWEdgeWeldConnectorDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {FB37E913-D238-4016-BCAC-9DEDF4A8E72A}
// *********************************************************************//
  ICWEdgeWeldConnectorDisp = dispinterface
    ['{FB37E913-D238-4016-BCAC-9DEDF4A8E72A}']
    function GetEdgeWeldType(out ErrorCode: Integer): Integer; dispid 1;
    function SetEdgeWeldType(NOption: Integer): Integer; dispid 2;
    function GetFirstFace(out ErrorCode: Integer): IDispatch; dispid 3;
    function GetSecondFace(out ErrorCode: Integer): IDispatch; dispid 4;
    function ReplaceFacesThenAutoGenerateTouchingEdges(NEdgeWeldStyle: Integer; 
                                                       const DispFace1: IDispatch; 
                                                       const DispFace2: IDispatch): Integer; dispid 5;
    function ReplaceFacesAndEdges(NEdgeWeldStyle: Integer; const DispFace1: IDispatch; 
                                  const DispFace2: IDispatch; Edges: OleVariant): Integer; dispid 6;
    function GetEdgeList(out ErrorCode: Integer): OleVariant; dispid 7;
    function AddEdges(NEdgeWeldStyle: Integer; Edges: OleVariant): Integer; dispid 8;
    function RemoveEdges(NEdgeWeldStyle: Integer; Edges: OleVariant): Integer; dispid 9;
    function IsWeldOrientation(out ErrorCode: Integer): WordBool; dispid 10;
    function SetWeldOrientation(BOrientation: WordBool): Integer; dispid 11;
    function IsInducedBendingMomentIncluded(out ErrorCode: Integer): WordBool; dispid 12;
    function SetInducedBendingMomentIncluded(BIncluded: WordBool): Integer; dispid 13;
    function GetCodeType(out ErrorCode: Integer): Integer; dispid 14;
    function SetCodeType(NOption: Integer): Integer; dispid 15;
    function GetWeldSizingSettingUS(out NElectrodeMaterial: Integer; out DWeldStrength: Double; 
                                    out NWeldStrengthUnit: Integer; 
                                    out NSafetyFactorLiftOption: Integer; 
                                    out DSafetyFactor: Double; out BIsEstimatedWeldSize: WordBool; 
                                    out DEstimatedWeldSize: Double; 
                                    out NEstimatedWeldSizeUnit: Integer): Integer; dispid 16;
    function SetWeldSizingSettingUS(NElectrodeMaterial: Integer; DWeldStrength: Double; 
                                    NWeldStrengthUnit: Integer; NSafetyFactorLiftOption: Integer; 
                                    DSafetyFactor: Double; BIsEstimatedWeldSize: WordBool; 
                                    DEstimatedWeldSize: Double; NEstimatedWeldSizeUnit: Integer): Integer; dispid 17;
    function GetWeldSizingSettingEuro(out NWeakMaterial: Integer; 
                                      out DUltimateTensileStrength: Double; 
                                      out NTensileStrengthUnit: Integer; 
                                      out DCorrelationFactor: Double; 
                                      out DPartialSafetyFactor: Double; 
                                      out BIsEstimatedWeldSize: WordBool; 
                                      out DEstimatedWeldSize: Double; 
                                      out NEstimatedWeldSizeUnit: Integer): Integer; dispid 18;
    function SetWeldSizingSettingEuro(NWeakMaterial: Integer; DUltimateTensileStrength: Double; 
                                      NTensileStrengthUnit: Integer; DCorrelationFactor: Double; 
                                      DPartialSafetyFactor: Double; BIsEstimatedWeldSize: WordBool; 
                                      DEstimatedWeldSize: Double; NEstimatedWeldSizeUnit: Integer): Integer; dispid 19;
  end;

// *********************************************************************//
// Interface: ICWThermalStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43AA3958-9093-4066-BA75-21EA9E206C98}
// *********************************************************************//
  ICWThermalStudyOptions = interface(IDispatch)
    ['{43AA3958-9093-4066-BA75-21EA9E206C98}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_SolutionType: Integer; safecall;
    procedure Set_SolutionType(NSolutionType: Integer); safecall;
    function Get_TotalTime: Double; safecall;
    procedure Set_TotalTime(DTotalTime: Double); safecall;
    function Get_TimeIncrement: Double; safecall;
    procedure Set_TimeIncrement(DTimeIncrement: Double); safecall;
    function Get_ConvergenceTolerance: Double; safecall;
    procedure Set_ConvergenceTolerance(DConvgTolerance: Double); safecall;
    function Get_RelaxationFactor: Integer; safecall;
    procedure Set_RelaxationFactor(NRelaxFactor: Integer); safecall;
    function Get_FixedValue: Double; safecall;
    procedure Set_FixedValue(DFixedValue: Double); safecall;
    function Get_UseTemperatureFromThermalStudy: Integer; safecall;
    procedure Set_UseTemperatureFromThermalStudy(BUseTemperatureForThermalStudy: Integer); safecall;
    function Get_ThermalStudyNameUsedForInitialTemperature: WideString; safecall;
    procedure Set_ThermalStudyNameUsedForInitialTemperature(const SThermalStudyName: WideString); safecall;
    function Get_TimeSteps: Integer; safecall;
    procedure Set_TimeSteps(NTimeSteps: Integer); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property SolutionType: Integer read Get_SolutionType write Set_SolutionType;
    property TotalTime: Double read Get_TotalTime write Set_TotalTime;
    property TimeIncrement: Double read Get_TimeIncrement write Set_TimeIncrement;
    property ConvergenceTolerance: Double read Get_ConvergenceTolerance write Set_ConvergenceTolerance;
    property RelaxationFactor: Integer read Get_RelaxationFactor write Set_RelaxationFactor;
    property FixedValue: Double read Get_FixedValue write Set_FixedValue;
    property UseTemperatureFromThermalStudy: Integer read Get_UseTemperatureFromThermalStudy write Set_UseTemperatureFromThermalStudy;
    property ThermalStudyNameUsedForInitialTemperature: WideString read Get_ThermalStudyNameUsedForInitialTemperature write Set_ThermalStudyNameUsedForInitialTemperature;
    property TimeSteps: Integer read Get_TimeSteps write Set_TimeSteps;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
  end;

// *********************************************************************//
// DispIntf:  ICWThermalStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {43AA3958-9093-4066-BA75-21EA9E206C98}
// *********************************************************************//
  ICWThermalStudyOptionsDisp = dispinterface
    ['{43AA3958-9093-4066-BA75-21EA9E206C98}']
    property SolverType: Integer dispid 1;
    property SolutionType: Integer dispid 2;
    property TotalTime: Double dispid 3;
    property TimeIncrement: Double dispid 4;
    property ConvergenceTolerance: Double dispid 5;
    property RelaxationFactor: Integer dispid 6;
    property FixedValue: Double dispid 7;
    property UseTemperatureFromThermalStudy: Integer dispid 8;
    property ThermalStudyNameUsedForInitialTemperature: WideString dispid 9;
    property TimeSteps: Integer dispid 10;
    property ResultFolder: WideString dispid 11;
  end;

// *********************************************************************//
// Interface: ICWResults
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5AC1F26-0CD1-4A33-81D3-571ADE6A7ECD}
// *********************************************************************//
  ICWResults = interface(IDispatch)
    ['{C5AC1F26-0CD1-4A33-81D3-571ADE6A7ECD}']
    function GetMaximumAvailableSteps: Integer; safecall;
    function GetStress(NElementNumber: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                       NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxStress(NComponent: Integer; NElementNumber: Integer; NStepNum: Integer; 
                             const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetStrain(NElementNumber: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                       out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxStrain(NComponent: Integer; NElementNumber: Integer; NStepNumber: Integer; 
                             const DispPlane: IDispatch; out ErrorCode: Integer): OleVariant; safecall;
    function GetTranslationalDisplacement(NStepNumber: Integer; const DispPlane: IDispatch; 
                                          NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetRotationalDisplacement(NStepNumber: Integer; const DispPlane: IDispatch; 
                                       NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetReactionForcesAndMoments(NStepNumber: Integer; const DispPlane: IDispatch; 
                                         NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxDisplacement(NComponent: Integer; NStepNumber: Integer; 
                                   const DispPlane: IDispatch; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetResonantFrequencies(out ErrorCode: Integer): OleVariant; safecall;
    function GetMassParticipation(out ErrorCode: Integer): OleVariant; safecall;
    function GetBucklingLoadFactors(out ErrorCode: Integer): OleVariant; safecall;
    function GetThermalValues(NStepNumber: Integer; const DispPlane: IDispatch; NUnits: Integer; 
                              out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxThermal(NComponent: Integer; NStepNumber: Integer; 
                              const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetStressComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                 const DispPlane: IDispatch; NUnits: Integer; 
                                                 out ErrorCode: Integer): OleVariant; safecall;
    function GetStrainComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                 const DispPlane: IDispatch; out ErrorCode: Integer): OleVariant; safecall;
    function GetDisplacementComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       out ErrorCode: Integer): OleVariant; safecall;
    function GetThermalComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                  const DispPlane: IDispatch; NUnits: Integer; 
                                                  out ErrorCode: Integer): OleVariant; safecall;
    function GetStressForEntities(NComponent: Integer; NStepNumber: Integer; 
                                  const DispPlane: IDispatch; 
                                  ArrayArraySelectedEntities: OleVariant; NUnits: Integer; 
                                  out ErrorCode: Integer): OleVariant; safecall;
    function GetStrainForEntities(NComponent: Integer; NStepNumber: Integer; 
                                  const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                  out ErrorCode: Integer): OleVariant; safecall;
    function GetDisplacementForEntities(NComponent: Integer; NStepNumber: Integer; 
                                        const DispPlane: IDispatch; 
                                        ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; safecall;
    function GetThermalForEntities(NComponent: Integer; NStepNumber: Integer; 
                                   const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                   NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetBeamMinMaxStress(NComponent: Integer; NStepNumber: Integer; NUnits: Integer; 
                                 out ErrorCode: Integer): OleVariant; safecall;
    function DeletePlot(const PlotName: WideString): WordBool; safecall;
    function ActivatePlot(const PlotName: WideString): WordBool; safecall;
    function GetPlotCount: Integer; safecall;
    function GetPlotNames: OleVariant; safecall;
    function IGetPlotNames(Count: Integer): WideString; safecall;
    function GetBeamForcesForEntities(NComponent: Integer; NStepNumber: Integer; 
                                      ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                      out ErrorCode: Integer): OleVariant; safecall;
    function GetBeamStressForEntities(NComponent: Integer; NStepNumber: Integer; 
                                      ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                      out ErrorCode: Integer): OleVariant; safecall;
    function GetStressForEntities2(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetStrainForEntities2(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; out ErrorCode: Integer): OleVariant; safecall;
    function GetLinearizedStressValues(NComponent: Integer; DPoint1X: Double; DPoint1Y: Double; 
                                       DPoint1Z: Double; DPoint2X: Double; DPoint2Y: Double; 
                                       DPoint2Z: Double; NIntermPoints: Integer; NUnits: Integer; 
                                       out ErrorCode: Integer): OleVariant; safecall;
    function GetHeatPowerOrEnergy(BHeatEnergy: Integer; ArraySelectedEntities: OleVariant; 
                                  NUnits: Integer; NStepNumber: Integer; NStepNumber2: Integer; 
                                  out ErrorCode: Integer): OleVariant; safecall;
    function GetDisplacementAtPoints(NComponent: Integer; NStepNumber: Integer; 
                                     const DispPlane: IDispatch; ArrayPoints: OleVariant; 
                                     NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetStressForEntities3(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                   NShellFace: Integer; NPlyNumber: Integer; 
                                   BInPlyDirection: WordBool; out ErrorCode: Integer): OleVariant; safecall;
    function GetStrainForEntities3(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NShellFace: Integer; 
                                   NPlyNumber: Integer; BInPlyDirection: WordBool; 
                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetEnvelopeStressForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                          NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                          ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                          NShellFace: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetEnvelopeStrainForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                          NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                          ArraySelectedEntities: OleVariant; NShellFace: Integer; 
                                          out ErrorCode: Integer): OleVariant; safecall;
    function GetEnvelopeDisplacementForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                                NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                                ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                                NShellFace: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetEnvelopeVelocityForEntities(NComponent: Integer; NEnvelopeType: Integer; 
                                            const DispPlane: IDispatch; 
                                            ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                            out ErrorCode: Integer): OleVariant; safecall;
    function GetEnvelopeAccelerationForEntities(NComponent: Integer; NEnvelopeType: Integer; 
                                                const DispPlane: IDispatch; 
                                                ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                                out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxVelocity(NComponent: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                               NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxAcceleration(NComponent: Integer; NStepNum: Integer; 
                                   const DispPlane: IDispatch; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetVelocityComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                   const DispPlane: IDispatch; NUnits: Integer; 
                                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetAccelerationComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       out ErrorCode: Integer): OleVariant; safecall;
    function GetVelocityForEntities(NComponent: Integer; NStepNumber: Integer; 
                                    const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                    NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetAccelerationForEntities(NComponent: Integer; NStepNumber: Integer; 
                                        const DispPlane: IDispatch; 
                                        ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxFatigue(NComponent: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetFatigueForEntities(NComponent: Integer; ArraySelectedEntities: OleVariant; 
                                   out ErrorCode: Integer): OleVariant; safecall;
    function GetFactorOfSafetyForComposites(BIsComposite: WordBool; 
                                            ArraySelectedEntities: OleVariant; 
                                            NonCompositeCriterion: Integer; 
                                            CompositeCriterion: Integer; PlyNumber: Integer; 
                                            ShellFaceOption: Integer; 
                                            NormalShellFaceOption: Integer; 
                                            FosDistributionOption: Integer; MinFOSVal: Integer; 
                                            out ErrorCode: Integer): OleVariant; safecall;
    function GetContactForcesAndFriction(NStepNumber: Integer; const DispPlane: IDispatch; 
                                         ArraySelectedEntities: OleVariant; NForceType: Integer; 
                                         NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetRemoteForces(NStepNumber: Integer; const DispPlane: IDispatch; 
                             ArraySelectedEntities: OleVariant; NUnits: Integer; 
                             out ErrorCode: Integer): OleVariant; safecall;
    function GetConnectorForces(NStepNumber: Integer; const SName: WideString; NUnits: Integer; 
                                out ErrorCode: Integer): OleVariant; safecall;
    function GetFreeBodyForcesAndMoments(const DispPlane: IDispatch; SelectedRefPoint: OleVariant; 
                                         ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                         out ErrorCode: Integer): OleVariant; safecall;
    function SavePlotsAseDrawings(const SFileLocation: WideString; const SFileName: WideString; 
                                  const SPlotName: WideString): Integer; safecall;
    function AddIsoClippingToPlot(const PlotName: WideString; NIsoPlanes: Integer; 
                                  IsoValues: OleVariant; BShowClipSurface: WordBool; 
                                  BShowCutUncut: WordBool): Integer; safecall;
    function GetEdgeWeldResults(const EdgeWeldConnector: WideString; NUnit: Integer; 
                                out BPassFail: WordBool; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxFactorOfSafety(BAllBodies: WordBool; ArraySelectedEntities: OleVariant; 
                                     NComponent: Integer; NShellOptions: Integer; 
                                     out ErrorCode: Integer): OleVariant; safecall;
    function GetConnectorForces2(NStepNumber: Integer; const SName: WideString; NUnits: Integer; 
                                 out ErrorCode: Integer): OleVariant; safecall;
    function GetThermalValuesAtPoints(NComponent: Integer; NStepNumber: Integer; 
                                      const DispPlane: IDispatch; ArrayPoints: OleVariant; 
                                      NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetPlotDisplayOptions(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; safecall;
    function SetPlotDisplayOptions(const SPlotName: WideString; ArrayInput: OleVariant): Integer; safecall;
    function GetPlotPositionFormatOptions(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; safecall;
    function SetPlotPositionFormatOptions(const SPlotName: WideString; ArrayInput: OleVariant): Integer; safecall;
    function GetPlotColorOptions(const SPlotName: WideString; out NType: Integer; 
                                 out NBaseColor: Integer; out NContour: Integer; 
                                 out BFlip: WordBool; out BSpecifyColorLimit: WordBool; 
                                 out VarColor: OleVariant): Integer; safecall;
    function SetPlotColorOptions(const SPlotName: WideString; NType: Integer; NContour: Integer; 
                                 NBaseColor: Integer; BFlip: WordBool; 
                                 BSpecifyColorLimit: WordBool; VarColor: OleVariant): Integer; safecall;
    function GetPlotSettings(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; safecall;
    function SetPlotSettings(const SPlotName: WideString; ArrayInput: OleVariant): Integer; safecall;
    function GetMinMaxFactorOfSafetyWithDetailSettings(BAllBodies: WordBool; 
                                                       ArraySelectedEntities: OleVariant; 
                                                       NComponent: Integer; BUpperLimit: WordBool; 
                                                       DUpperValue: Double; NStressUnit: Integer; 
                                                       NStressLimitOption: Integer; 
                                                       DStressValue: Double; 
                                                       NCompressiveStressLimitOption: Integer; 
                                                       DCompressiveStressValue: Double; 
                                                       DMultiplicationFactor: Double; 
                                                       DCompressiveStressMultiplicationFactor: Double; 
                                                       BCombinedStressOnBeams: WordBool; 
                                                       NShellOptions: Integer; 
                                                       out ErrorCode: Integer): OleVariant; safecall;
    function GetReactionForcesAndMomentsWithSelections(NStepNumber: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       SelectedObjects: OleVariant; 
                                                       out SelectionAndEntireModelReactionForcesAndMoments: OleVariant; 
                                                       out EachSelectedObjectReactionForcesAndMoments: OleVariant; 
                                                       out ErrorCode: Integer): OleVariant; safecall;
    function GetConnectorForcesWithTimeValue(DTimeValue: Double; const SName: WideString; 
                                             NUnits: Integer; out DAccurateTimeValue: Double; 
                                             out ErrorCode: Integer): OleVariant; safecall;
    function CreatePlot(NResultType: Integer; NComponent: Integer; NUnits: Integer; 
                        BValueByElem: WordBool; out ErrorCode: Integer): ICWPlot; safecall;
    function GetMinMaxStressRMS(NComponent: Integer; NElementNumber: Integer; 
                                const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxDisplacementRMS(NComponent: Integer; const DispPlane: IDispatch; 
                                      NUnits: Integer; out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxStressForHarmonic(NComponent: Integer; BByElementNumber: Integer; 
                                        BAvgOnBoundary: Integer; NStepNum: Integer; 
                                        const DispPlane: IDispatch; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; safecall;
    function GetMinMaxDisplacementForHarmonic(NComponent: Integer; NStepNum: Integer; 
                                              const DispPlane: IDispatch; NUnits: Integer; 
                                              out ErrorCode: Integer): OleVariant; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICWResultsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {C5AC1F26-0CD1-4A33-81D3-571ADE6A7ECD}
// *********************************************************************//
  ICWResultsDisp = dispinterface
    ['{C5AC1F26-0CD1-4A33-81D3-571ADE6A7ECD}']
    function GetMaximumAvailableSteps: Integer; dispid 1;
    function GetStress(NElementNumber: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                       NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 2;
    function GetMinMaxStress(NComponent: Integer; NElementNumber: Integer; NStepNum: Integer; 
                             const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 3;
    function GetStrain(NElementNumber: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                       out ErrorCode: Integer): OleVariant; dispid 4;
    function GetMinMaxStrain(NComponent: Integer; NElementNumber: Integer; NStepNumber: Integer; 
                             const DispPlane: IDispatch; out ErrorCode: Integer): OleVariant; dispid 5;
    function GetTranslationalDisplacement(NStepNumber: Integer; const DispPlane: IDispatch; 
                                          NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 6;
    function GetRotationalDisplacement(NStepNumber: Integer; const DispPlane: IDispatch; 
                                       NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 7;
    function GetReactionForcesAndMoments(NStepNumber: Integer; const DispPlane: IDispatch; 
                                         NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 8;
    function GetMinMaxDisplacement(NComponent: Integer; NStepNumber: Integer; 
                                   const DispPlane: IDispatch; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; dispid 9;
    function GetResonantFrequencies(out ErrorCode: Integer): OleVariant; dispid 10;
    function GetMassParticipation(out ErrorCode: Integer): OleVariant; dispid 11;
    function GetBucklingLoadFactors(out ErrorCode: Integer): OleVariant; dispid 12;
    function GetThermalValues(NStepNumber: Integer; const DispPlane: IDispatch; NUnits: Integer; 
                              out ErrorCode: Integer): OleVariant; dispid 13;
    function GetMinMaxThermal(NComponent: Integer; NStepNumber: Integer; 
                              const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 14;
    function GetStressComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                 const DispPlane: IDispatch; NUnits: Integer; 
                                                 out ErrorCode: Integer): OleVariant; dispid 15;
    function GetStrainComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                 const DispPlane: IDispatch; out ErrorCode: Integer): OleVariant; dispid 16;
    function GetDisplacementComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       out ErrorCode: Integer): OleVariant; dispid 17;
    function GetThermalComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                  const DispPlane: IDispatch; NUnits: Integer; 
                                                  out ErrorCode: Integer): OleVariant; dispid 18;
    function GetStressForEntities(NComponent: Integer; NStepNumber: Integer; 
                                  const DispPlane: IDispatch; 
                                  ArrayArraySelectedEntities: OleVariant; NUnits: Integer; 
                                  out ErrorCode: Integer): OleVariant; dispid 19;
    function GetStrainForEntities(NComponent: Integer; NStepNumber: Integer; 
                                  const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                  out ErrorCode: Integer): OleVariant; dispid 20;
    function GetDisplacementForEntities(NComponent: Integer; NStepNumber: Integer; 
                                        const DispPlane: IDispatch; 
                                        ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; dispid 21;
    function GetThermalForEntities(NComponent: Integer; NStepNumber: Integer; 
                                   const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                   NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 22;
    function GetBeamMinMaxStress(NComponent: Integer; NStepNumber: Integer; NUnits: Integer; 
                                 out ErrorCode: Integer): OleVariant; dispid 23;
    function DeletePlot(const PlotName: WideString): WordBool; dispid 24;
    function ActivatePlot(const PlotName: WideString): WordBool; dispid 26;
    function GetPlotCount: Integer; dispid 27;
    function GetPlotNames: OleVariant; dispid 28;
    function IGetPlotNames(Count: Integer): WideString; dispid 29;
    function GetBeamForcesForEntities(NComponent: Integer; NStepNumber: Integer; 
                                      ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                      out ErrorCode: Integer): OleVariant; dispid 30;
    function GetBeamStressForEntities(NComponent: Integer; NStepNumber: Integer; 
                                      ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                      out ErrorCode: Integer): OleVariant; dispid 31;
    function GetStressForEntities2(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; dispid 32;
    function GetStrainForEntities2(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; out ErrorCode: Integer): OleVariant; dispid 33;
    function GetLinearizedStressValues(NComponent: Integer; DPoint1X: Double; DPoint1Y: Double; 
                                       DPoint1Z: Double; DPoint2X: Double; DPoint2Y: Double; 
                                       DPoint2Z: Double; NIntermPoints: Integer; NUnits: Integer; 
                                       out ErrorCode: Integer): OleVariant; dispid 34;
    function GetHeatPowerOrEnergy(BHeatEnergy: Integer; ArraySelectedEntities: OleVariant; 
                                  NUnits: Integer; NStepNumber: Integer; NStepNumber2: Integer; 
                                  out ErrorCode: Integer): OleVariant; dispid 35;
    function GetDisplacementAtPoints(NComponent: Integer; NStepNumber: Integer; 
                                     const DispPlane: IDispatch; ArrayPoints: OleVariant; 
                                     NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 36;
    function GetStressForEntities3(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                   NShellFace: Integer; NPlyNumber: Integer; 
                                   BInPlyDirection: WordBool; out ErrorCode: Integer): OleVariant; dispid 37;
    function GetStrainForEntities3(BValueByNode: WordBool; NComponent: Integer; 
                                   NStepNumber: Integer; const DispPlane: IDispatch; 
                                   ArraySelectedEntities: OleVariant; NShellFace: Integer; 
                                   NPlyNumber: Integer; BInPlyDirection: WordBool; 
                                   out ErrorCode: Integer): OleVariant; dispid 38;
    function GetEnvelopeStressForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                          NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                          ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                          NShellFace: Integer; out ErrorCode: Integer): OleVariant; dispid 39;
    function GetEnvelopeStrainForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                          NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                          ArraySelectedEntities: OleVariant; NShellFace: Integer; 
                                          out ErrorCode: Integer): OleVariant; dispid 40;
    function GetEnvelopeDisplacementForEntities(BValueByNode: WordBool; NComponent: Integer; 
                                                NEnvelopeType: Integer; const DispPlane: IDispatch; 
                                                ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                                NShellFace: Integer; out ErrorCode: Integer): OleVariant; dispid 41;
    function GetEnvelopeVelocityForEntities(NComponent: Integer; NEnvelopeType: Integer; 
                                            const DispPlane: IDispatch; 
                                            ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                            out ErrorCode: Integer): OleVariant; dispid 42;
    function GetEnvelopeAccelerationForEntities(NComponent: Integer; NEnvelopeType: Integer; 
                                                const DispPlane: IDispatch; 
                                                ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                                out ErrorCode: Integer): OleVariant; dispid 43;
    function GetMinMaxVelocity(NComponent: Integer; NStepNum: Integer; const DispPlane: IDispatch; 
                               NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 44;
    function GetMinMaxAcceleration(NComponent: Integer; NStepNum: Integer; 
                                   const DispPlane: IDispatch; NUnits: Integer; 
                                   out ErrorCode: Integer): OleVariant; dispid 45;
    function GetVelocityComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                   const DispPlane: IDispatch; NUnits: Integer; 
                                                   out ErrorCode: Integer): OleVariant; dispid 46;
    function GetAccelerationComponentForAllStepsAtNode(NComponent: Integer; NNodeNum: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       out ErrorCode: Integer): OleVariant; dispid 47;
    function GetVelocityForEntities(NComponent: Integer; NStepNumber: Integer; 
                                    const DispPlane: IDispatch; ArraySelectedEntities: OleVariant; 
                                    NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 48;
    function GetAccelerationForEntities(NComponent: Integer; NStepNumber: Integer; 
                                        const DispPlane: IDispatch; 
                                        ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; dispid 49;
    function GetMinMaxFatigue(NComponent: Integer; out ErrorCode: Integer): OleVariant; dispid 50;
    function GetFatigueForEntities(NComponent: Integer; ArraySelectedEntities: OleVariant; 
                                   out ErrorCode: Integer): OleVariant; dispid 51;
    function GetFactorOfSafetyForComposites(BIsComposite: WordBool; 
                                            ArraySelectedEntities: OleVariant; 
                                            NonCompositeCriterion: Integer; 
                                            CompositeCriterion: Integer; PlyNumber: Integer; 
                                            ShellFaceOption: Integer; 
                                            NormalShellFaceOption: Integer; 
                                            FosDistributionOption: Integer; MinFOSVal: Integer; 
                                            out ErrorCode: Integer): OleVariant; dispid 52;
    function GetContactForcesAndFriction(NStepNumber: Integer; const DispPlane: IDispatch; 
                                         ArraySelectedEntities: OleVariant; NForceType: Integer; 
                                         NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 53;
    function GetRemoteForces(NStepNumber: Integer; const DispPlane: IDispatch; 
                             ArraySelectedEntities: OleVariant; NUnits: Integer; 
                             out ErrorCode: Integer): OleVariant; dispid 54;
    function GetConnectorForces(NStepNumber: Integer; const SName: WideString; NUnits: Integer; 
                                out ErrorCode: Integer): OleVariant; dispid 55;
    function GetFreeBodyForcesAndMoments(const DispPlane: IDispatch; SelectedRefPoint: OleVariant; 
                                         ArraySelectedEntities: OleVariant; NUnits: Integer; 
                                         out ErrorCode: Integer): OleVariant; dispid 56;
    function SavePlotsAseDrawings(const SFileLocation: WideString; const SFileName: WideString; 
                                  const SPlotName: WideString): Integer; dispid 57;
    function AddIsoClippingToPlot(const PlotName: WideString; NIsoPlanes: Integer; 
                                  IsoValues: OleVariant; BShowClipSurface: WordBool; 
                                  BShowCutUncut: WordBool): Integer; dispid 58;
    function GetEdgeWeldResults(const EdgeWeldConnector: WideString; NUnit: Integer; 
                                out BPassFail: WordBool; out ErrorCode: Integer): OleVariant; dispid 59;
    function GetMinMaxFactorOfSafety(BAllBodies: WordBool; ArraySelectedEntities: OleVariant; 
                                     NComponent: Integer; NShellOptions: Integer; 
                                     out ErrorCode: Integer): OleVariant; dispid 60;
    function GetConnectorForces2(NStepNumber: Integer; const SName: WideString; NUnits: Integer; 
                                 out ErrorCode: Integer): OleVariant; dispid 61;
    function GetThermalValuesAtPoints(NComponent: Integer; NStepNumber: Integer; 
                                      const DispPlane: IDispatch; ArrayPoints: OleVariant; 
                                      NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 62;
    function GetPlotDisplayOptions(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; dispid 63;
    function SetPlotDisplayOptions(const SPlotName: WideString; ArrayInput: OleVariant): Integer; dispid 64;
    function GetPlotPositionFormatOptions(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; dispid 65;
    function SetPlotPositionFormatOptions(const SPlotName: WideString; ArrayInput: OleVariant): Integer; dispid 66;
    function GetPlotColorOptions(const SPlotName: WideString; out NType: Integer; 
                                 out NBaseColor: Integer; out NContour: Integer; 
                                 out BFlip: WordBool; out BSpecifyColorLimit: WordBool; 
                                 out VarColor: OleVariant): Integer; dispid 67;
    function SetPlotColorOptions(const SPlotName: WideString; NType: Integer; NContour: Integer; 
                                 NBaseColor: Integer; BFlip: WordBool; 
                                 BSpecifyColorLimit: WordBool; VarColor: OleVariant): Integer; dispid 68;
    function GetPlotSettings(const SPlotName: WideString; out ErrorCode: Integer): OleVariant; dispid 69;
    function SetPlotSettings(const SPlotName: WideString; ArrayInput: OleVariant): Integer; dispid 70;
    function GetMinMaxFactorOfSafetyWithDetailSettings(BAllBodies: WordBool; 
                                                       ArraySelectedEntities: OleVariant; 
                                                       NComponent: Integer; BUpperLimit: WordBool; 
                                                       DUpperValue: Double; NStressUnit: Integer; 
                                                       NStressLimitOption: Integer; 
                                                       DStressValue: Double; 
                                                       NCompressiveStressLimitOption: Integer; 
                                                       DCompressiveStressValue: Double; 
                                                       DMultiplicationFactor: Double; 
                                                       DCompressiveStressMultiplicationFactor: Double; 
                                                       BCombinedStressOnBeams: WordBool; 
                                                       NShellOptions: Integer; 
                                                       out ErrorCode: Integer): OleVariant; dispid 71;
    function GetReactionForcesAndMomentsWithSelections(NStepNumber: Integer; 
                                                       const DispPlane: IDispatch; NUnits: Integer; 
                                                       SelectedObjects: OleVariant; 
                                                       out SelectionAndEntireModelReactionForcesAndMoments: OleVariant; 
                                                       out EachSelectedObjectReactionForcesAndMoments: OleVariant; 
                                                       out ErrorCode: Integer): OleVariant; dispid 72;
    function GetConnectorForcesWithTimeValue(DTimeValue: Double; const SName: WideString; 
                                             NUnits: Integer; out DAccurateTimeValue: Double; 
                                             out ErrorCode: Integer): OleVariant; dispid 73;
    function CreatePlot(NResultType: Integer; NComponent: Integer; NUnits: Integer; 
                        BValueByElem: WordBool; out ErrorCode: Integer): ICWPlot; dispid 74;
    function GetMinMaxStressRMS(NComponent: Integer; NElementNumber: Integer; 
                                const DispPlane: IDispatch; NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 75;
    function GetMinMaxDisplacementRMS(NComponent: Integer; const DispPlane: IDispatch; 
                                      NUnits: Integer; out ErrorCode: Integer): OleVariant; dispid 76;
    function GetMinMaxStressForHarmonic(NComponent: Integer; BByElementNumber: Integer; 
                                        BAvgOnBoundary: Integer; NStepNum: Integer; 
                                        const DispPlane: IDispatch; NUnits: Integer; 
                                        out ErrorCode: Integer): OleVariant; dispid 77;
    function GetMinMaxDisplacementForHarmonic(NComponent: Integer; NStepNum: Integer; 
                                              const DispPlane: IDispatch; NUnits: Integer; 
                                              out ErrorCode: Integer): OleVariant; dispid 78;
  end;

// *********************************************************************//
// Interface: ICWPlot
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A69BE93A-C2C6-41FF-A6E6-13B0C95C568F}
// *********************************************************************//
  ICWPlot = interface(IDispatch)
    ['{A69BE93A-C2C6-41FF-A6E6-13B0C95C568F}']
    function GetPlotName(out SPlotName: WideString): Integer; safecall;
    function AddRefGeometry(NDispType: Integer; const DispPlaneAxisCoordSys: IDispatch): Integer; safecall;
    function ShowTensorOrVector(BShowTensorOrVector: WordBool): Integer; safecall;
    function ShowPlotOnSelEntities(BSelFaceOnly: WordBool; ArraySelectedEntities: OleVariant): Integer; safecall;
    function ShowBeamProfile(BShowBeamProfile: WordBool): Integer; safecall;
    function ShowShellin3D(BShowShellin3D: WordBool): Integer; safecall;
    function ShowAvgResultsAcrossBoundaryForParts(BAvgResultsAcrossBoundaryForParts: WordBool): Integer; safecall;
    function ShowNormalizeValuesFrom0To1(BNormalizeValuesFrom0To1: WordBool): Integer; safecall;
    function ShowDeformedPlot(BShowDeformed: WordBool; NDeformOption: Integer; 
                              DUserDefValue: Double; BShowColors: WordBool): Integer; safecall;
    function SetPlotTitle(const SPlotTitle: WideString): Integer; safecall;
    function ApplyNameViewOrientation(const SNameViewOrientation: WideString): Integer; safecall;
    function SetFOSPlot(BFOSPlot: WordBool): Integer; safecall;
    function ActivatePlot: Integer; safecall;
    function ShowAs3DPlot(BShowAs3D: WordBool): Integer; safecall;
    function Set2DPlanarRevolveAngle(D2DPlanarRevolveAngle: Double): Integer; safecall;
    function SetNormalizeModeShape(BNormModeShape: WordBool): Integer; safecall;
    function GetMinMaxResultValues(out ErrorCode: Integer): OleVariant; safecall;
    function SetPlotStepNumber(NStepNumber: Integer): Integer; safecall;
    function SetModeShape(NModeShape: Integer): Integer; safecall;
  end;

// *********************************************************************//
// DispIntf:  ICWPlotDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A69BE93A-C2C6-41FF-A6E6-13B0C95C568F}
// *********************************************************************//
  ICWPlotDisp = dispinterface
    ['{A69BE93A-C2C6-41FF-A6E6-13B0C95C568F}']
    function GetPlotName(out SPlotName: WideString): Integer; dispid 1;
    function AddRefGeometry(NDispType: Integer; const DispPlaneAxisCoordSys: IDispatch): Integer; dispid 2;
    function ShowTensorOrVector(BShowTensorOrVector: WordBool): Integer; dispid 3;
    function ShowPlotOnSelEntities(BSelFaceOnly: WordBool; ArraySelectedEntities: OleVariant): Integer; dispid 4;
    function ShowBeamProfile(BShowBeamProfile: WordBool): Integer; dispid 5;
    function ShowShellin3D(BShowShellin3D: WordBool): Integer; dispid 6;
    function ShowAvgResultsAcrossBoundaryForParts(BAvgResultsAcrossBoundaryForParts: WordBool): Integer; dispid 7;
    function ShowNormalizeValuesFrom0To1(BNormalizeValuesFrom0To1: WordBool): Integer; dispid 8;
    function ShowDeformedPlot(BShowDeformed: WordBool; NDeformOption: Integer; 
                              DUserDefValue: Double; BShowColors: WordBool): Integer; dispid 9;
    function SetPlotTitle(const SPlotTitle: WideString): Integer; dispid 10;
    function ApplyNameViewOrientation(const SNameViewOrientation: WideString): Integer; dispid 11;
    function SetFOSPlot(BFOSPlot: WordBool): Integer; dispid 12;
    function ActivatePlot: Integer; dispid 13;
    function ShowAs3DPlot(BShowAs3D: WordBool): Integer; dispid 14;
    function Set2DPlanarRevolveAngle(D2DPlanarRevolveAngle: Double): Integer; dispid 15;
    function SetNormalizeModeShape(BNormModeShape: WordBool): Integer; dispid 16;
    function GetMinMaxResultValues(out ErrorCode: Integer): OleVariant; dispid 17;
    function SetPlotStepNumber(NStepNumber: Integer): Integer; dispid 18;
    function SetModeShape(NModeShape: Integer): Integer; dispid 19;
  end;

// *********************************************************************//
// Interface: ICWFrequencyStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {268D40CF-565F-4259-B009-BAC3F5DA8F60}
// *********************************************************************//
  ICWFrequencyStudyOptions = interface(IDispatch)
    ['{268D40CF-565F-4259-B009-BAC3F5DA8F60}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_Options: Integer; safecall;
    procedure Set_Options(NOptions: Integer); safecall;
    function Get_NoOfFrequencies: Integer; safecall;
    procedure Set_NoOfFrequencies(NNoOfFreq: Integer); safecall;
    function Get_LowerBoundFrequency: Integer; safecall;
    procedure Set_LowerBoundFrequency(NLowerBoundFreq: Integer); safecall;
    function Get_UpperBoundFrequency: Integer; safecall;
    procedure Set_UpperBoundFrequency(NUpperBoundFreq: Integer); safecall;
    function Get_UseSoftSpring: Integer; safecall;
    procedure Set_UseSoftSpring(BUseSoftSpring: Integer); safecall;
    function Get_UseLowerBoundFrequency: Integer; safecall;
    procedure Set_UseLowerBoundFrequency(BUseLBFreq: Integer); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); safecall;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property Options: Integer read Get_Options write Set_Options;
    property NoOfFrequencies: Integer read Get_NoOfFrequencies write Set_NoOfFrequencies;
    property LowerBoundFrequency: Integer read Get_LowerBoundFrequency write Set_LowerBoundFrequency;
    property UpperBoundFrequency: Integer read Get_UpperBoundFrequency write Set_UpperBoundFrequency;
    property UseSoftSpring: Integer read Get_UseSoftSpring write Set_UseSoftSpring;
    property UseLowerBoundFrequency: Integer read Get_UseLowerBoundFrequency write Set_UseLowerBoundFrequency;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
  end;

// *********************************************************************//
// DispIntf:  ICWFrequencyStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {268D40CF-565F-4259-B009-BAC3F5DA8F60}
// *********************************************************************//
  ICWFrequencyStudyOptionsDisp = dispinterface
    ['{268D40CF-565F-4259-B009-BAC3F5DA8F60}']
    property SolverType: Integer dispid 1;
    property Options: Integer dispid 2;
    property NoOfFrequencies: Integer dispid 3;
    property LowerBoundFrequency: Integer dispid 4;
    property UpperBoundFrequency: Integer dispid 5;
    property UseSoftSpring: Integer dispid 6;
    property UseLowerBoundFrequency: Integer dispid 7;
    property ResultFolder: WideString dispid 8;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); dispid 9;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); dispid 10;
  end;

// *********************************************************************//
// Interface: ICWBucklingStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B6B0702-61D6-4C9B-9A1F-1FAAC4DCF0E4}
// *********************************************************************//
  ICWBucklingStudyOptions = interface(IDispatch)
    ['{8B6B0702-61D6-4C9B-9A1F-1FAAC4DCF0E4}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_BucklingModes: Integer; safecall;
    procedure Set_BucklingModes(NOptions: Integer); safecall;
    function Get_UseSoftSpring: Integer; safecall;
    procedure Set_UseSoftSpring(BUseSoftSpring: Integer); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); safecall;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property BucklingModes: Integer read Get_BucklingModes write Set_BucklingModes;
    property UseSoftSpring: Integer read Get_UseSoftSpring write Set_UseSoftSpring;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
  end;

// *********************************************************************//
// DispIntf:  ICWBucklingStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {8B6B0702-61D6-4C9B-9A1F-1FAAC4DCF0E4}
// *********************************************************************//
  ICWBucklingStudyOptionsDisp = dispinterface
    ['{8B6B0702-61D6-4C9B-9A1F-1FAAC4DCF0E4}']
    property SolverType: Integer dispid 1;
    property BucklingModes: Integer dispid 2;
    property UseSoftSpring: Integer dispid 3;
    property ResultFolder: WideString dispid 4;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); dispid 5;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); dispid 6;
  end;

// *********************************************************************//
// Interface: ICWStaticStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62C99DD5-374D-4444-B8F3-4163C5F6FB6F}
// *********************************************************************//
  ICWStaticStudyOptions = interface(IDispatch)
    ['{62C99DD5-374D-4444-B8F3-4163C5F6FB6F}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_IncludeGlobalFriction: Integer; safecall;
    procedure Set_IncludeGlobalFriction(BIncludeGlobalFriction: Integer); safecall;
    function Get_FrictionCoefficient: Double; safecall;
    procedure Set_FrictionCoefficient(DFrictionCoeff: Double); safecall;
    function Get_IgnoreClearanceForSurfaceContact: Integer; safecall;
    procedure Set_IgnoreClearanceForSurfaceContact(BIgnoreClearacne: Integer); safecall;
    function Get_LargeDisplacement: Integer; safecall;
    procedure Set_LargeDisplacement(BLargeDisplacement: Integer); safecall;
    function Get_ComputeFreeBodyForce: Integer; safecall;
    procedure Set_ComputeFreeBodyForce(BComputeBodyForce: Integer); safecall;
    function Get_UseInPlaneEffect: Integer; safecall;
    procedure Set_UseInPlaneEffect(BInPlaneEffect: Integer); safecall;
    function Get_UseSoftSpring: Integer; safecall;
    procedure Set_UseSoftSpring(BUseSoftSpring: Integer); safecall;
    function Get_UseInertialRelief: Integer; safecall;
    procedure Set_UseInertialRelief(BUseInertialRelief: Integer); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); safecall;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property IncludeGlobalFriction: Integer read Get_IncludeGlobalFriction write Set_IncludeGlobalFriction;
    property FrictionCoefficient: Double read Get_FrictionCoefficient write Set_FrictionCoefficient;
    property IgnoreClearanceForSurfaceContact: Integer read Get_IgnoreClearanceForSurfaceContact write Set_IgnoreClearanceForSurfaceContact;
    property LargeDisplacement: Integer read Get_LargeDisplacement write Set_LargeDisplacement;
    property ComputeFreeBodyForce: Integer read Get_ComputeFreeBodyForce write Set_ComputeFreeBodyForce;
    property UseInPlaneEffect: Integer read Get_UseInPlaneEffect write Set_UseInPlaneEffect;
    property UseSoftSpring: Integer read Get_UseSoftSpring write Set_UseSoftSpring;
    property UseInertialRelief: Integer read Get_UseInertialRelief write Set_UseInertialRelief;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
  end;

// *********************************************************************//
// DispIntf:  ICWStaticStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62C99DD5-374D-4444-B8F3-4163C5F6FB6F}
// *********************************************************************//
  ICWStaticStudyOptionsDisp = dispinterface
    ['{62C99DD5-374D-4444-B8F3-4163C5F6FB6F}']
    property SolverType: Integer dispid 1;
    property IncludeGlobalFriction: Integer dispid 2;
    property FrictionCoefficient: Double dispid 3;
    property IgnoreClearanceForSurfaceContact: Integer dispid 4;
    property LargeDisplacement: Integer dispid 5;
    property ComputeFreeBodyForce: Integer dispid 6;
    property UseInPlaneEffect: Integer dispid 7;
    property UseSoftSpring: Integer dispid 8;
    property UseInertialRelief: Integer dispid 9;
    property ResultFolder: WideString dispid 10;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); dispid 11;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); dispid 12;
  end;

// *********************************************************************//
// Interface: ICWNonLinearStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F7A7474A-BAA4-45BC-A752-3D06B294EAA4}
// *********************************************************************//
  ICWNonLinearStudyOptions = interface(IDispatch)
    ['{F7A7474A-BAA4-45BC-A752-3D06B294EAA4}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_StartTime: Double; safecall;
    function Get_EndTime: Double; safecall;
    procedure Set_EndTime(DEndTime: Double); safecall;
    function Get_SaveDataForRestartingAnalysis: Integer; safecall;
    procedure Set_SaveDataForRestartingAnalysis(BSave: Integer); safecall;
    function Get_TimeIncrement: Integer; safecall;
    procedure Set_TimeIncrement(NTimeIncrement: Integer); safecall;
    procedure GetAutomaticTimeIncrement(out DInitialTimeIncrement: Double; out DMiNVal: Double; 
                                        out DMaxVal: Double; out NNoOfAdjustments: Integer); safecall;
    procedure SetAutomaticTimeIncrement(DInitialTimeIncrement: Double; DMiNVal: Double; 
                                        DMaxVal: Double; NNoOfAdjustments: Integer); safecall;
    function Get_FixedTimeIncrement: Double; safecall;
    procedure Set_FixedTimeIncrement(DFixeDTimeIncrement: Double); safecall;
    function Get_UseLargeDisplacement: Integer; safecall;
    procedure Set_UseLargeDisplacement(BUseLargeDisplacement: Integer); safecall;
    function Get_UseUpdateLoadDirection: Integer; safecall;
    procedure Set_UseUpdateLoadDirection(BUseUpdateLoadDir: Integer); safecall;
    function Get_UseLargeStrain: Integer; safecall;
    procedure Set_UseLargeStrain(BUseLargeStrain: Integer); safecall;
    function Get_ResultFolderPath: WideString; safecall;
    procedure Set_ResultFolderPath(const SResultFolderPath: WideString); safecall;
    function Get_ControlMethodType: Integer; safecall;
    procedure Set_ControlMethodType(NType: Integer); safecall;
    function Get_IterativeMethodType: Integer; safecall;
    procedure Set_IterativeMethodType(NType: Integer); safecall;
    function Get_IntegrationMethodType: Integer; safecall;
    procedure Set_IntegrationMethodType(NType: Integer); safecall;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); safecall;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); safecall;
    function SetDisplacementControlOptions(const DispEntity: IDispatch; 
                                           NDisplacementComponent: Integer; NUnit: Integer): Integer; safecall;
    procedure GetDisplacementControlOptions(out NDisplacementComponent: Integer; out NUnit: Integer); safecall;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; safecall;
    function GetTimeCurve: OleVariant; safecall;
    function SetArcLengthCompletionOptions(DMaxLoad: Double; DMaxDisplacement: Double; 
                                           NUnit: Integer; NArcSteps: Integer; 
                                           DArcLenMultiplier: Double): Integer; safecall;
    procedure GetArcLengthCompletionOptions(out DMaxLoad: Double; out DMaxDisplacement: Double; 
                                            out NUnit: Integer; out NMaxArcSteps: Integer; 
                                            out DArcLengthMultiplier: Double); safecall;
    function SetStepToleranceOptions(NEqilibriumIteration: Integer; 
                                     NMaxEqilibriumIteration: Integer; DConvTol: Double; 
                                     DPlasticityTol: Double; NSingularityEleFactor: Double): Integer; safecall;
    procedure GetStepToleranceOptions(out NEqilibriumIteration: Integer; 
                                      out NMaxEqilibriumIteration: Integer; out DConvTol: Double; 
                                      out DPlasticityTol: Double; out NSingularityEleFactor: Double); safecall;
    procedure GetDisplacementControlOptions2(out NDisplacementComponent: Integer; 
                                             out NUnit: Integer; out Dispatch: IDispatch); safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property StartTime: Double read Get_StartTime;
    property EndTime: Double read Get_EndTime write Set_EndTime;
    property SaveDataForRestartingAnalysis: Integer read Get_SaveDataForRestartingAnalysis write Set_SaveDataForRestartingAnalysis;
    property TimeIncrement: Integer read Get_TimeIncrement write Set_TimeIncrement;
    property FixedTimeIncrement: Double read Get_FixedTimeIncrement write Set_FixedTimeIncrement;
    property UseLargeDisplacement: Integer read Get_UseLargeDisplacement write Set_UseLargeDisplacement;
    property UseUpdateLoadDirection: Integer read Get_UseUpdateLoadDirection write Set_UseUpdateLoadDirection;
    property UseLargeStrain: Integer read Get_UseLargeStrain write Set_UseLargeStrain;
    property ResultFolderPath: WideString read Get_ResultFolderPath write Set_ResultFolderPath;
    property ControlMethodType: Integer read Get_ControlMethodType write Set_ControlMethodType;
    property IterativeMethodType: Integer read Get_IterativeMethodType write Set_IterativeMethodType;
    property IntegrationMethodType: Integer read Get_IntegrationMethodType write Set_IntegrationMethodType;
  end;

// *********************************************************************//
// DispIntf:  ICWNonLinearStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F7A7474A-BAA4-45BC-A752-3D06B294EAA4}
// *********************************************************************//
  ICWNonLinearStudyOptionsDisp = dispinterface
    ['{F7A7474A-BAA4-45BC-A752-3D06B294EAA4}']
    property SolverType: Integer dispid 1;
    property StartTime: Double readonly dispid 2;
    property EndTime: Double dispid 3;
    property SaveDataForRestartingAnalysis: Integer dispid 4;
    property TimeIncrement: Integer dispid 5;
    procedure GetAutomaticTimeIncrement(out DInitialTimeIncrement: Double; out DMiNVal: Double; 
                                        out DMaxVal: Double; out NNoOfAdjustments: Integer); dispid 6;
    procedure SetAutomaticTimeIncrement(DInitialTimeIncrement: Double; DMiNVal: Double; 
                                        DMaxVal: Double; NNoOfAdjustments: Integer); dispid 7;
    property FixedTimeIncrement: Double dispid 8;
    property UseLargeDisplacement: Integer dispid 9;
    property UseUpdateLoadDirection: Integer dispid 10;
    property UseLargeStrain: Integer dispid 11;
    property ResultFolderPath: WideString dispid 12;
    property ControlMethodType: Integer dispid 13;
    property IterativeMethodType: Integer dispid 14;
    property IntegrationMethodType: Integer dispid 15;
    procedure GetZeroStrainTemperature(out DZeroStrainTemperature: Double; 
                                       out NZeroStrainTemperatureUnit: Integer); dispid 16;
    procedure SetZeroStrainTemperature(DZeroStrainTemperature: Double; 
                                       NZeroStrainTemperatureUnit: Integer); dispid 17;
    function SetDisplacementControlOptions(const DispEntity: IDispatch; 
                                           NDisplacementComponent: Integer; NUnit: Integer): Integer; dispid 18;
    procedure GetDisplacementControlOptions(out NDisplacementComponent: Integer; out NUnit: Integer); dispid 19;
    function SetTimeCurve(VarCurveData: OleVariant; out ErrorCode: Integer): Integer; dispid 20;
    function GetTimeCurve: OleVariant; dispid 21;
    function SetArcLengthCompletionOptions(DMaxLoad: Double; DMaxDisplacement: Double; 
                                           NUnit: Integer; NArcSteps: Integer; 
                                           DArcLenMultiplier: Double): Integer; dispid 22;
    procedure GetArcLengthCompletionOptions(out DMaxLoad: Double; out DMaxDisplacement: Double; 
                                            out NUnit: Integer; out NMaxArcSteps: Integer; 
                                            out DArcLengthMultiplier: Double); dispid 23;
    function SetStepToleranceOptions(NEqilibriumIteration: Integer; 
                                     NMaxEqilibriumIteration: Integer; DConvTol: Double; 
                                     DPlasticityTol: Double; NSingularityEleFactor: Double): Integer; dispid 24;
    procedure GetStepToleranceOptions(out NEqilibriumIteration: Integer; 
                                      out NMaxEqilibriumIteration: Integer; out DConvTol: Double; 
                                      out DPlasticityTol: Double; out NSingularityEleFactor: Double); dispid 25;
    procedure GetDisplacementControlOptions2(out NDisplacementComponent: Integer; 
                                             out NUnit: Integer; out Dispatch: IDispatch); dispid 26;
  end;

// *********************************************************************//
// Interface: ICWBeamManager
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D770D195-0FB7-4771-A269-30BD773D393A}
// *********************************************************************//
  ICWBeamManager = interface(IDispatch)
    ['{D770D195-0FB7-4771-A269-30BD773D393A}']
    function Get_BeamCount: Integer; safecall;
    function GetBeamBodyAt(NIndex: Integer; out ErrorCode: Integer): ICWBeamBody; safecall;
    function GetJointGroup(out ErrorCode: Integer): ICWJoints; safecall;
    property BeamCount: Integer read Get_BeamCount;
  end;

// *********************************************************************//
// DispIntf:  ICWBeamManagerDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {D770D195-0FB7-4771-A269-30BD773D393A}
// *********************************************************************//
  ICWBeamManagerDisp = dispinterface
    ['{D770D195-0FB7-4771-A269-30BD773D393A}']
    property BeamCount: Integer readonly dispid 1;
    function GetBeamBodyAt(NIndex: Integer; out ErrorCode: Integer): ICWBeamBody; dispid 2;
    function GetJointGroup(out ErrorCode: Integer): ICWJoints; dispid 3;
  end;

// *********************************************************************//
// Interface: ICWBeamBody
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BE3D86C7-8AD9-463F-A134-8B70E114BF1B}
// *********************************************************************//
  ICWBeamBody = interface(IDispatch)
    ['{BE3D86C7-8AD9-463F-A134-8B70E114BF1B}']
    function Get_BeamBodyName: WideString; safecall;
    function Get_BeamType: Integer; safecall;
    procedure Set_BeamType(NType: Integer); safecall;
    function Get_BeamEnd1ConnectionType: Integer; safecall;
    procedure Set_BeamEnd1ConnectionType(NType: Integer); safecall;
    function Get_BeamEnd2ConnectionType: Integer; safecall;
    procedure Set_BeamEnd2ConnectionType(NType: Integer); safecall;
    function GetDefaultMaterial: ICWMaterial; safecall;
    function GetBeamBodyMaterial: ICWMaterial; safecall;
    function SetBeamBodyMaterial(const RetVal: ICWMaterial): Integer; safecall;
    function SetLibraryMaterial(const SLibWithPathName: WideString; const SMaterialName: WideString): Integer; safecall;
    procedure SetManualEnd1ConnectionType(BHingeIstDir: Integer; BHinge2ndDir: Integer; 
                                          BHingeAlongBeam: Integer; BSlide1stDir: Integer; 
                                          BSlide2ndDir: Integer; BSlideAlongBeam: Integer); safecall;
    procedure GetManualEnd1ConnectionType(out BHingeIstDir: Integer; out BHinge2ndDir: Integer; 
                                          out BHingeAlongBeam: Integer; out BSlide1stDir: Integer; 
                                          out BSlide2ndDir: Integer; out BSlideAlongBeam: Integer); safecall;
    procedure SetManualEnd2ConnectionType(BHingeIstDir: Integer; BHinge2ndDir: Integer; 
                                          BHingeAlongBeam: Integer; BSlide1stDir: Integer; 
                                          BSlide2ndDir: Integer; BSlideAlongBeam: Integer); safecall;
    procedure GetManualEnd2ConnectionType(out BHingeIstDir: Integer; out BHinge2ndDir: Integer; 
                                          out BHingeAlongBeam: Integer; out BSlide1stDir: Integer; 
                                          out BSlide2ndDir: Integer; out BSlideAlongBeam: Integer); safecall;
    procedure BeamBeginEdit; safecall;
    function BeamEndEdit: Integer; safecall;
    procedure ConvertToSolidBody; safecall;
    property BeamBodyName: WideString read Get_BeamBodyName;
    property BeamType: Integer read Get_BeamType write Set_BeamType;
    property BeamEnd1ConnectionType: Integer read Get_BeamEnd1ConnectionType write Set_BeamEnd1ConnectionType;
    property BeamEnd2ConnectionType: Integer read Get_BeamEnd2ConnectionType write Set_BeamEnd2ConnectionType;
  end;

// *********************************************************************//
// DispIntf:  ICWBeamBodyDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BE3D86C7-8AD9-463F-A134-8B70E114BF1B}
// *********************************************************************//
  ICWBeamBodyDisp = dispinterface
    ['{BE3D86C7-8AD9-463F-A134-8B70E114BF1B}']
    property BeamBodyName: WideString readonly dispid 1;
    property BeamType: Integer dispid 2;
    property BeamEnd1ConnectionType: Integer dispid 3;
    property BeamEnd2ConnectionType: Integer dispid 4;
    function GetDefaultMaterial: ICWMaterial; dispid 5;
    function GetBeamBodyMaterial: ICWMaterial; dispid 6;
    function SetBeamBodyMaterial(const RetVal: ICWMaterial): Integer; dispid 7;
    function SetLibraryMaterial(const SLibWithPathName: WideString; const SMaterialName: WideString): Integer; dispid 8;
    procedure SetManualEnd1ConnectionType(BHingeIstDir: Integer; BHinge2ndDir: Integer; 
                                          BHingeAlongBeam: Integer; BSlide1stDir: Integer; 
                                          BSlide2ndDir: Integer; BSlideAlongBeam: Integer); dispid 9;
    procedure GetManualEnd1ConnectionType(out BHingeIstDir: Integer; out BHinge2ndDir: Integer; 
                                          out BHingeAlongBeam: Integer; out BSlide1stDir: Integer; 
                                          out BSlide2ndDir: Integer; out BSlideAlongBeam: Integer); dispid 10;
    procedure SetManualEnd2ConnectionType(BHingeIstDir: Integer; BHinge2ndDir: Integer; 
                                          BHingeAlongBeam: Integer; BSlide1stDir: Integer; 
                                          BSlide2ndDir: Integer; BSlideAlongBeam: Integer); dispid 11;
    procedure GetManualEnd2ConnectionType(out BHingeIstDir: Integer; out BHinge2ndDir: Integer; 
                                          out BHingeAlongBeam: Integer; out BSlide1stDir: Integer; 
                                          out BSlide2ndDir: Integer; out BSlideAlongBeam: Integer); dispid 12;
    procedure BeamBeginEdit; dispid 13;
    function BeamEndEdit: Integer; dispid 14;
    procedure ConvertToSolidBody; dispid 15;
  end;

// *********************************************************************//
// Interface: ICWJoints
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FFA493C-E5DC-4BA4-A0F6-F838A41A1563}
// *********************************************************************//
  ICWJoints = interface(IDispatch)
    ['{6FFA493C-E5DC-4BA4-A0F6-F838A41A1563}']
    function Get_IncludeAllSelectedBeam: WordBool; safecall;
    procedure Set_IncludeAllSelectedBeam(BYesNo: WordBool); safecall;
    function Get_IncludeUserSelectedBeam: WordBool; safecall;
    procedure Set_IncludeUserSelectedBeam(BYesNo: WordBool); safecall;
    function Get_PinBallRadiusUnit: Integer; safecall;
    procedure Set_PinBallRadiusUnit(NType: Integer); safecall;
    function Get_PinBallRadius: Double; safecall;
    procedure Set_PinBallRadius(DType: Double); safecall;
    function Get_IncludeDisplayNeutralAxis: WordBool; safecall;
    procedure Set_IncludeDisplayNeutralAxis(BYesNo: WordBool); safecall;
    function Get_IncludeKeepModifiedJointOnUpdate: WordBool; safecall;
    procedure Set_IncludeKeepModifiedJointOnUpdate(BYesNo: WordBool); safecall;
    procedure Set_IncludeTreatAsJointForClearanceLessThan(BYesNo: WordBool); safecall;
    function Get_IncludeTreatAsJointForClearanceLessThan: WordBool; safecall;
    procedure CalculateJoints; safecall;
    procedure DeleteJoint(const Disp: IDispatch); safecall;
    procedure InsertBeamEntity(const DispEntity: IDispatch); safecall;
    procedure RemoveBeamEntityAt(NIndex: Integer); safecall;
    procedure JointsBeginEdit; safecall;
    function JointsEndEdit: Integer; safecall;
    property IncludeAllSelectedBeam: WordBool read Get_IncludeAllSelectedBeam write Set_IncludeAllSelectedBeam;
    property IncludeUserSelectedBeam: WordBool read Get_IncludeUserSelectedBeam write Set_IncludeUserSelectedBeam;
    property PinBallRadiusUnit: Integer read Get_PinBallRadiusUnit write Set_PinBallRadiusUnit;
    property PinBallRadius: Double read Get_PinBallRadius write Set_PinBallRadius;
    property IncludeDisplayNeutralAxis: WordBool read Get_IncludeDisplayNeutralAxis write Set_IncludeDisplayNeutralAxis;
    property IncludeKeepModifiedJointOnUpdate: WordBool read Get_IncludeKeepModifiedJointOnUpdate write Set_IncludeKeepModifiedJointOnUpdate;
    property IncludeTreatAsJointForClearanceLessThan: WordBool read Get_IncludeTreatAsJointForClearanceLessThan write Set_IncludeTreatAsJointForClearanceLessThan;
  end;

// *********************************************************************//
// DispIntf:  ICWJointsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {6FFA493C-E5DC-4BA4-A0F6-F838A41A1563}
// *********************************************************************//
  ICWJointsDisp = dispinterface
    ['{6FFA493C-E5DC-4BA4-A0F6-F838A41A1563}']
    property IncludeAllSelectedBeam: WordBool dispid 1;
    property IncludeUserSelectedBeam: WordBool dispid 2;
    property PinBallRadiusUnit: Integer dispid 3;
    property PinBallRadius: Double dispid 4;
    property IncludeDisplayNeutralAxis: WordBool dispid 5;
    property IncludeKeepModifiedJointOnUpdate: WordBool dispid 6;
    property IncludeTreatAsJointForClearanceLessThan: WordBool dispid 7;
    procedure CalculateJoints; dispid 8;
    procedure DeleteJoint(const Disp: IDispatch); dispid 9;
    procedure InsertBeamEntity(const DispEntity: IDispatch); dispid 10;
    procedure RemoveBeamEntityAt(NIndex: Integer); dispid 11;
    procedure JointsBeginEdit; dispid 12;
    function JointsEndEdit: Integer; dispid 13;
  end;

// *********************************************************************//
// Interface: ICWDynamicStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62DA10EC-2A76-47F5-B132-AB32C9413288}
// *********************************************************************//
  ICWDynamicStudyOptions = interface(IDispatch)
    ['{62DA10EC-2A76-47F5-B132-AB32C9413288}']
    function Get_SolverType: Integer; safecall;
    procedure Set_SolverType(NSolverType: Integer); safecall;
    function Get_ResultFolderPath: WideString; safecall;
    procedure Set_ResultFolderPath(const SResultFolderPath: WideString); safecall;
    function Get_UseSoftSpring: Integer; safecall;
    procedure Set_UseSoftSpring(BUseSoftSpring: Integer); safecall;
    function Get_IncompatibleBondingOption: Integer; safecall;
    procedure Set_IncompatibleBondingOption(NBondingOption: Integer); safecall;
    procedure GetFrequencyOption(out NOption: Integer; out DValue: Double); safecall;
    procedure SetFrequencyOption(NOption: Integer; DValue: Double); safecall;
    procedure GetFrequencyShiftOption(out BChecked: WordBool; out DFrequencyValue: Double); safecall;
    procedure SetFrequencyShiftOption(BChecked: WordBool; DFrequencyValue: Double); safecall;
    procedure GetTimeHistoryTimeRangeValues(out DStartTime: Double; out DEndTime: Double; 
                                            out DTimeIncrement: Double); safecall;
    procedure SetTimeHistoryTimeRangeValues(DStartTime: Double; DEndTime: Double; 
                                            DTimeIncrement: Double); safecall;
    procedure GetTimeHistoryDeadLoadOptions(out BChecked: Integer; out SStudyName: WideString; 
                                            out DMultiplicationFactor: Double); safecall;
    procedure SetTimeHistoryDeadLoadOptions(BChecked: Integer; const SStudyName: WideString; 
                                            DMultiplicationFactor: Double); safecall;
    function Get_TimeHistoryIntegrationMethod: Integer; safecall;
    procedure Set_TimeHistoryIntegrationMethod(NMethod: Integer); safecall;
    function Get_TimeHistoryFirstIntegrationParameter: Double; safecall;
    procedure Set_TimeHistoryFirstIntegrationParameter(DValue: Double); safecall;
    function Get_TimeHistorySecondIntegrationParameter: Double; safecall;
    procedure Set_TimeHistorySecondIntegrationParameter(DValue: Double); safecall;
    function Get_TimeHistoryWilsonTheta: Double; safecall;
    procedure Set_TimeHistoryWilsonTheta(DValue: Double); safecall;
    function Get_HarmonicFrequencyUnits: Integer; safecall;
    procedure Set_HarmonicFrequencyUnits(NUnits: Integer); safecall;
    function Get_HarmonicFrequencyLowerLimit: Double; safecall;
    procedure Set_HarmonicFrequencyLowerLimit(DValue: Double); safecall;
    function Get_HarmonicFrequencyUpperLimit: Double; safecall;
    procedure Set_HarmonicFrequencyUpperLimit(DValue: Double); safecall;
    function Get_HarmonicNoOfPoints: Integer; safecall;
    procedure Set_HarmonicNoOfPoints(NPoints: Integer); safecall;
    function Get_HarmonicBandwidth: Double; safecall;
    procedure Set_HarmonicBandwidth(DValue: Double); safecall;
    function Get_HarmonicInterpolation: Integer; safecall;
    procedure Set_HarmonicInterpolation(NInterpolation: Integer); safecall;
    function Get_RandomVibrationFrequencyUnits: Integer; safecall;
    procedure Set_RandomVibrationFrequencyUnits(NUnits: Integer); safecall;
    function Get_RandomVibrationFrequencyLowerLimit: Double; safecall;
    procedure Set_RandomVibrationFrequencyLowerLimit(DValue: Double); safecall;
    function Get_RandomVibrationFrequencyUpperLimit: Double; safecall;
    procedure Set_RandomVibrationFrequencyUpperLimit(DValue: Double); safecall;
    function Get_RandomVibrationNoOfFrequencyPoints: Integer; safecall;
    procedure Set_RandomVibrationNoOfFrequencyPoints(NPoints: Integer); safecall;
    function Get_RandomVibrationCorrelationOption: Integer; safecall;
    procedure Set_RandomVibrationCorrelationOption(NCorrelation: Integer); safecall;
    procedure GetRandomVibrationPartialCorrelationDetails(out NUnits: Integer; 
                                                          out DInRadius: Double; 
                                                          out DOutRadius: Double); safecall;
    procedure SetRandomVibrationPartialCorrelationDetails(NUnits: Integer; DInRadius: Double; 
                                                          DOutRadius: Double); safecall;
    function Get_RandomVibrationAnalysisMethod: Integer; safecall;
    procedure Set_RandomVibrationAnalysisMethod(NMethod: Integer); safecall;
    function Get_RandomVibrationGaussIntegrationOrder: Integer; safecall;
    procedure Set_RandomVibrationGaussIntegrationOrder(NPoints: Integer); safecall;
    function Get_RandomVibrationBiasingParameter: Double; safecall;
    procedure Set_RandomVibrationBiasingParameter(DValue: Double); safecall;
    function Get_RandomVibrationCrossModeCutOffRatio: Double; safecall;
    procedure Set_RandomVibrationCrossModeCutOffRatio(DValue: Double); safecall;
    function Get_ResponseSpectrumModeCombinationMethod: Integer; safecall;
    procedure Set_ResponseSpectrumModeCombinationMethod(NMethod: Integer); safecall;
    function Get_ResponseSpectrumCurveInterpolation: Integer; safecall;
    procedure Set_ResponseSpectrumCurveInterpolation(NInterpolation: Integer); safecall;
    function Get_ResponseSpectrumClusterFactor: Double; safecall;
    procedure Set_ResponseSpectrumClusterFactor(DValue: Double); safecall;
    function Get_ResponseSpectrumUseMaterialDamping: Integer; safecall;
    procedure Set_ResponseSpectrumUseMaterialDamping(BChecked: Integer); safecall;
    function GetResultFolderPath2(out SResultFolderPath: WideString): Integer; safecall;
    function SetResultFolderPath2(const SResultFolderPath: WideString): Integer; safecall;
    function GetUseSoftSpring2(out BUseSoftSpring: Integer): Integer; safecall;
    function SetUseSoftSpring2(BUseSoftSpring: Integer): Integer; safecall;
    function GetIncompatibleBondingOption2(out NBondingOption: Integer): Integer; safecall;
    function SetIncompatibleBondingOption2(NBondingOption: Integer): Integer; safecall;
    function GetFrequencyOption2(out NOption: Integer; out DValue: Double): Integer; safecall;
    function SetFrequencyOption2(NOption: Integer; DValue: Double): Integer; safecall;
    function GetFrequencyShiftOption2(out BChecked: WordBool; out DFrequencyValue: Double): Integer; safecall;
    function SetFrequencyShiftOption2(BChecked: WordBool; DFrequencyValue: Double): Integer; safecall;
    function GetTimeHistoryTimeRangeValues2(out DStartTime: Double; out DEndTime: Double; 
                                            out DTimeIncrement: Double): Integer; safecall;
    function SetTimeHistoryTimeRangeValues2(DStartTime: Double; DEndTime: Double; 
                                            DTimeIncrement: Double): Integer; safecall;
    function GetTimeHistoryDeadLoadOptions2(out BChecked: WordBool; out SStudyName: WideString; 
                                            out DMultiplicationFactor: Double): Integer; safecall;
    function SetTimeHistoryDeadLoadOptions2(BChecked: WordBool; const SStudyName: WideString; 
                                            DMultiplicationFactor: Double): Integer; safecall;
    function GetTimeHistoryIntegrationMethod2(out NMethod: Integer): Integer; safecall;
    function SetTimeHistoryIntegrationMethod2(NMethod: Integer): Integer; safecall;
    function GetTimeHistoryFirstIntegrationParameter2(out DFirstIntegration: Double): Integer; safecall;
    function SetTimeHistoryFirstIntegrationParameter2(DFirstIntegration: Double): Integer; safecall;
    function GetTimeHistorySecondIntegrationParameter2(out DSecondIntegration: Double): Integer; safecall;
    function SetTimeHistorySecondIntegrationParameter2(DSecondIntegration: Double): Integer; safecall;
    function GetTimeHistoryWilsonTheta2(out DWilsonTheta: Double): Integer; safecall;
    function SetTimeHistoryWilsonTheta2(DWilsonTheta: Double): Integer; safecall;
    function GetHarmonicFrequencyUnits2(out NUnits: Integer): Integer; safecall;
    function SetHarmonicFrequencyUnits2(NUnits: Integer): Integer; safecall;
    function GetHarmonicFrequencyLowerLimit2(out DLowerLimit: Double): Integer; safecall;
    function SetHarmonicFrequencyLowerLimit2(DLowerLimit: Double): Integer; safecall;
    function GetHarmonicFrequencyUpperLimit2(out DUpperLimit: Double): Integer; safecall;
    function SetHarmonicFrequencyUpperLimit2(DUpperLimit: Double): Integer; safecall;
    function GetHarmonicNoOfPoints2(out NPoints: Integer): Integer; safecall;
    function SetHarmonicNoOfPoints2(NPoints: Integer): Integer; safecall;
    function GetHarmonicBandwidth2(out DHarmonicBandwidth: Double): Integer; safecall;
    function SetHarmonicBandwidth2(DHarmonicBandwidth: Double): Integer; safecall;
    function GetHarmonicInterpolation2(out NInterpolation: Integer): Integer; safecall;
    function SetHarmonicInterpolation2(NInterpolation: Integer): Integer; safecall;
    function GetRandomVibrationFrequencyUnits2(out NUnits: Integer): Integer; safecall;
    function SetRandomVibrationFrequencyUnits2(NUnits: Integer): Integer; safecall;
    function GetRandomVibrationFrequencyLowerLimit2(out DLowerLimit: Double): Integer; safecall;
    function SetRandomVibrationFrequencyLowerLimit2(DLowerLimit: Double): Integer; safecall;
    function GetRandomVibrationFrequencyUpperLimit2(out DUpperLimit: Double): Integer; safecall;
    function SetRandomVibrationFrequencyUpperLimit2(DUpperLimit: Double): Integer; safecall;
    function GetRandomVibrationNoOfFrequencyPoints2(out NPoints: Integer): Integer; safecall;
    function SetRandomVibrationNoOfFrequencyPoints2(NPoints: Integer): Integer; safecall;
    function GetRandomVibrationCorrelationOption2(out NCorrelation: Integer): Integer; safecall;
    function SetRandomVibrationCorrelationOption2(NCorrelation: Integer): Integer; safecall;
    function GetRandomVibrationPartialCorrelationDetails2(out NUnits: Integer; 
                                                          out DInRadius: Double; 
                                                          out DOutRadius: Double): Integer; safecall;
    function SetRandomVibrationPartialCorrelationDetails2(NUnits: Integer; DInRadius: Double; 
                                                          DOutRadius: Double): Integer; safecall;
    function GetRandomVibrationAnalysisMethod2(out NMethod: Integer): Integer; safecall;
    function SetRandomVibrationAnalysisMethod2(NMethod: Integer): Integer; safecall;
    function GetRandomVibrationGaussIntegrationOrder2(out NPoints: Integer): Integer; safecall;
    function SetRandomVibrationGaussIntegrationOrder2(NPoints: Integer): Integer; safecall;
    function GetRandomVibrationBiasingParameter2(out DBiasing: Double): Integer; safecall;
    function SetRandomVibrationBiasingParameter2(DBiasing: Double): Integer; safecall;
    function GetRandomVibrationCrossModeCutOffRatio2(out DRatio: Double): Integer; safecall;
    function SetRandomVibrationCrossModeCutOffRatio2(DRatio: Double): Integer; safecall;
    function GetResponseSpectrumModeCombinationMethod2(out NMethod: Integer): Integer; safecall;
    function SetResponseSpectrumModeCombinationMethod2(NMethod: Integer): Integer; safecall;
    function GetResponseSpectrumCurveInterpolation2(out NInterpolation: Integer): Integer; safecall;
    function SetResponseSpectrumCurveInterpolation2(NInterpolation: Integer): Integer; safecall;
    function GetResponseSpectrumClusterFactor2(out DFactor: Double): Integer; safecall;
    function SetResponseSpectrumClusterFactor2(DFactor: Double): Integer; safecall;
    function GetResponseSpectrumUseMaterialDamping2(out BChecked: Integer): Integer; safecall;
    function SetResponseSpectrumUseMaterialDamping2(BChecked: Integer): Integer; safecall;
    property SolverType: Integer read Get_SolverType write Set_SolverType;
    property ResultFolderPath: WideString read Get_ResultFolderPath write Set_ResultFolderPath;
    property UseSoftSpring: Integer read Get_UseSoftSpring write Set_UseSoftSpring;
    property IncompatibleBondingOption: Integer read Get_IncompatibleBondingOption write Set_IncompatibleBondingOption;
    property TimeHistoryIntegrationMethod: Integer read Get_TimeHistoryIntegrationMethod write Set_TimeHistoryIntegrationMethod;
    property TimeHistoryFirstIntegrationParameter: Double read Get_TimeHistoryFirstIntegrationParameter write Set_TimeHistoryFirstIntegrationParameter;
    property TimeHistorySecondIntegrationParameter: Double read Get_TimeHistorySecondIntegrationParameter write Set_TimeHistorySecondIntegrationParameter;
    property TimeHistoryWilsonTheta: Double read Get_TimeHistoryWilsonTheta write Set_TimeHistoryWilsonTheta;
    property HarmonicFrequencyUnits: Integer read Get_HarmonicFrequencyUnits write Set_HarmonicFrequencyUnits;
    property HarmonicFrequencyLowerLimit: Double read Get_HarmonicFrequencyLowerLimit write Set_HarmonicFrequencyLowerLimit;
    property HarmonicFrequencyUpperLimit: Double read Get_HarmonicFrequencyUpperLimit write Set_HarmonicFrequencyUpperLimit;
    property HarmonicNoOfPoints: Integer read Get_HarmonicNoOfPoints write Set_HarmonicNoOfPoints;
    property HarmonicBandwidth: Double read Get_HarmonicBandwidth write Set_HarmonicBandwidth;
    property HarmonicInterpolation: Integer read Get_HarmonicInterpolation write Set_HarmonicInterpolation;
    property RandomVibrationFrequencyUnits: Integer read Get_RandomVibrationFrequencyUnits write Set_RandomVibrationFrequencyUnits;
    property RandomVibrationFrequencyLowerLimit: Double read Get_RandomVibrationFrequencyLowerLimit write Set_RandomVibrationFrequencyLowerLimit;
    property RandomVibrationFrequencyUpperLimit: Double read Get_RandomVibrationFrequencyUpperLimit write Set_RandomVibrationFrequencyUpperLimit;
    property RandomVibrationNoOfFrequencyPoints: Integer read Get_RandomVibrationNoOfFrequencyPoints write Set_RandomVibrationNoOfFrequencyPoints;
    property RandomVibrationCorrelationOption: Integer read Get_RandomVibrationCorrelationOption write Set_RandomVibrationCorrelationOption;
    property RandomVibrationAnalysisMethod: Integer read Get_RandomVibrationAnalysisMethod write Set_RandomVibrationAnalysisMethod;
    property RandomVibrationGaussIntegrationOrder: Integer read Get_RandomVibrationGaussIntegrationOrder write Set_RandomVibrationGaussIntegrationOrder;
    property RandomVibrationBiasingParameter: Double read Get_RandomVibrationBiasingParameter write Set_RandomVibrationBiasingParameter;
    property RandomVibrationCrossModeCutOffRatio: Double read Get_RandomVibrationCrossModeCutOffRatio write Set_RandomVibrationCrossModeCutOffRatio;
    property ResponseSpectrumModeCombinationMethod: Integer read Get_ResponseSpectrumModeCombinationMethod write Set_ResponseSpectrumModeCombinationMethod;
    property ResponseSpectrumCurveInterpolation: Integer read Get_ResponseSpectrumCurveInterpolation write Set_ResponseSpectrumCurveInterpolation;
    property ResponseSpectrumClusterFactor: Double read Get_ResponseSpectrumClusterFactor write Set_ResponseSpectrumClusterFactor;
    property ResponseSpectrumUseMaterialDamping: Integer read Get_ResponseSpectrumUseMaterialDamping write Set_ResponseSpectrumUseMaterialDamping;
  end;

// *********************************************************************//
// DispIntf:  ICWDynamicStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {62DA10EC-2A76-47F5-B132-AB32C9413288}
// *********************************************************************//
  ICWDynamicStudyOptionsDisp = dispinterface
    ['{62DA10EC-2A76-47F5-B132-AB32C9413288}']
    property SolverType: Integer dispid 1;
    property ResultFolderPath: WideString dispid 2;
    property UseSoftSpring: Integer dispid 3;
    property IncompatibleBondingOption: Integer dispid 4;
    procedure GetFrequencyOption(out NOption: Integer; out DValue: Double); dispid 5;
    procedure SetFrequencyOption(NOption: Integer; DValue: Double); dispid 6;
    procedure GetFrequencyShiftOption(out BChecked: WordBool; out DFrequencyValue: Double); dispid 7;
    procedure SetFrequencyShiftOption(BChecked: WordBool; DFrequencyValue: Double); dispid 8;
    procedure GetTimeHistoryTimeRangeValues(out DStartTime: Double; out DEndTime: Double; 
                                            out DTimeIncrement: Double); dispid 9;
    procedure SetTimeHistoryTimeRangeValues(DStartTime: Double; DEndTime: Double; 
                                            DTimeIncrement: Double); dispid 10;
    procedure GetTimeHistoryDeadLoadOptions(out BChecked: Integer; out SStudyName: WideString; 
                                            out DMultiplicationFactor: Double); dispid 11;
    procedure SetTimeHistoryDeadLoadOptions(BChecked: Integer; const SStudyName: WideString; 
                                            DMultiplicationFactor: Double); dispid 12;
    property TimeHistoryIntegrationMethod: Integer dispid 13;
    property TimeHistoryFirstIntegrationParameter: Double dispid 14;
    property TimeHistorySecondIntegrationParameter: Double dispid 15;
    property TimeHistoryWilsonTheta: Double dispid 16;
    property HarmonicFrequencyUnits: Integer dispid 17;
    property HarmonicFrequencyLowerLimit: Double dispid 18;
    property HarmonicFrequencyUpperLimit: Double dispid 19;
    property HarmonicNoOfPoints: Integer dispid 20;
    property HarmonicBandwidth: Double dispid 21;
    property HarmonicInterpolation: Integer dispid 22;
    property RandomVibrationFrequencyUnits: Integer dispid 23;
    property RandomVibrationFrequencyLowerLimit: Double dispid 24;
    property RandomVibrationFrequencyUpperLimit: Double dispid 25;
    property RandomVibrationNoOfFrequencyPoints: Integer dispid 26;
    property RandomVibrationCorrelationOption: Integer dispid 27;
    procedure GetRandomVibrationPartialCorrelationDetails(out NUnits: Integer; 
                                                          out DInRadius: Double; 
                                                          out DOutRadius: Double); dispid 28;
    procedure SetRandomVibrationPartialCorrelationDetails(NUnits: Integer; DInRadius: Double; 
                                                          DOutRadius: Double); dispid 29;
    property RandomVibrationAnalysisMethod: Integer dispid 30;
    property RandomVibrationGaussIntegrationOrder: Integer dispid 31;
    property RandomVibrationBiasingParameter: Double dispid 32;
    property RandomVibrationCrossModeCutOffRatio: Double dispid 33;
    property ResponseSpectrumModeCombinationMethod: Integer dispid 34;
    property ResponseSpectrumCurveInterpolation: Integer dispid 35;
    property ResponseSpectrumClusterFactor: Double dispid 36;
    property ResponseSpectrumUseMaterialDamping: Integer dispid 37;
    function GetResultFolderPath2(out SResultFolderPath: WideString): Integer; dispid 38;
    function SetResultFolderPath2(const SResultFolderPath: WideString): Integer; dispid 39;
    function GetUseSoftSpring2(out BUseSoftSpring: Integer): Integer; dispid 40;
    function SetUseSoftSpring2(BUseSoftSpring: Integer): Integer; dispid 41;
    function GetIncompatibleBondingOption2(out NBondingOption: Integer): Integer; dispid 42;
    function SetIncompatibleBondingOption2(NBondingOption: Integer): Integer; dispid 43;
    function GetFrequencyOption2(out NOption: Integer; out DValue: Double): Integer; dispid 44;
    function SetFrequencyOption2(NOption: Integer; DValue: Double): Integer; dispid 45;
    function GetFrequencyShiftOption2(out BChecked: WordBool; out DFrequencyValue: Double): Integer; dispid 46;
    function SetFrequencyShiftOption2(BChecked: WordBool; DFrequencyValue: Double): Integer; dispid 47;
    function GetTimeHistoryTimeRangeValues2(out DStartTime: Double; out DEndTime: Double; 
                                            out DTimeIncrement: Double): Integer; dispid 48;
    function SetTimeHistoryTimeRangeValues2(DStartTime: Double; DEndTime: Double; 
                                            DTimeIncrement: Double): Integer; dispid 49;
    function GetTimeHistoryDeadLoadOptions2(out BChecked: WordBool; out SStudyName: WideString; 
                                            out DMultiplicationFactor: Double): Integer; dispid 50;
    function SetTimeHistoryDeadLoadOptions2(BChecked: WordBool; const SStudyName: WideString; 
                                            DMultiplicationFactor: Double): Integer; dispid 51;
    function GetTimeHistoryIntegrationMethod2(out NMethod: Integer): Integer; dispid 52;
    function SetTimeHistoryIntegrationMethod2(NMethod: Integer): Integer; dispid 53;
    function GetTimeHistoryFirstIntegrationParameter2(out DFirstIntegration: Double): Integer; dispid 54;
    function SetTimeHistoryFirstIntegrationParameter2(DFirstIntegration: Double): Integer; dispid 55;
    function GetTimeHistorySecondIntegrationParameter2(out DSecondIntegration: Double): Integer; dispid 56;
    function SetTimeHistorySecondIntegrationParameter2(DSecondIntegration: Double): Integer; dispid 57;
    function GetTimeHistoryWilsonTheta2(out DWilsonTheta: Double): Integer; dispid 58;
    function SetTimeHistoryWilsonTheta2(DWilsonTheta: Double): Integer; dispid 59;
    function GetHarmonicFrequencyUnits2(out NUnits: Integer): Integer; dispid 60;
    function SetHarmonicFrequencyUnits2(NUnits: Integer): Integer; dispid 61;
    function GetHarmonicFrequencyLowerLimit2(out DLowerLimit: Double): Integer; dispid 62;
    function SetHarmonicFrequencyLowerLimit2(DLowerLimit: Double): Integer; dispid 63;
    function GetHarmonicFrequencyUpperLimit2(out DUpperLimit: Double): Integer; dispid 64;
    function SetHarmonicFrequencyUpperLimit2(DUpperLimit: Double): Integer; dispid 65;
    function GetHarmonicNoOfPoints2(out NPoints: Integer): Integer; dispid 66;
    function SetHarmonicNoOfPoints2(NPoints: Integer): Integer; dispid 67;
    function GetHarmonicBandwidth2(out DHarmonicBandwidth: Double): Integer; dispid 68;
    function SetHarmonicBandwidth2(DHarmonicBandwidth: Double): Integer; dispid 69;
    function GetHarmonicInterpolation2(out NInterpolation: Integer): Integer; dispid 70;
    function SetHarmonicInterpolation2(NInterpolation: Integer): Integer; dispid 71;
    function GetRandomVibrationFrequencyUnits2(out NUnits: Integer): Integer; dispid 72;
    function SetRandomVibrationFrequencyUnits2(NUnits: Integer): Integer; dispid 73;
    function GetRandomVibrationFrequencyLowerLimit2(out DLowerLimit: Double): Integer; dispid 74;
    function SetRandomVibrationFrequencyLowerLimit2(DLowerLimit: Double): Integer; dispid 75;
    function GetRandomVibrationFrequencyUpperLimit2(out DUpperLimit: Double): Integer; dispid 76;
    function SetRandomVibrationFrequencyUpperLimit2(DUpperLimit: Double): Integer; dispid 77;
    function GetRandomVibrationNoOfFrequencyPoints2(out NPoints: Integer): Integer; dispid 78;
    function SetRandomVibrationNoOfFrequencyPoints2(NPoints: Integer): Integer; dispid 79;
    function GetRandomVibrationCorrelationOption2(out NCorrelation: Integer): Integer; dispid 80;
    function SetRandomVibrationCorrelationOption2(NCorrelation: Integer): Integer; dispid 81;
    function GetRandomVibrationPartialCorrelationDetails2(out NUnits: Integer; 
                                                          out DInRadius: Double; 
                                                          out DOutRadius: Double): Integer; dispid 82;
    function SetRandomVibrationPartialCorrelationDetails2(NUnits: Integer; DInRadius: Double; 
                                                          DOutRadius: Double): Integer; dispid 83;
    function GetRandomVibrationAnalysisMethod2(out NMethod: Integer): Integer; dispid 84;
    function SetRandomVibrationAnalysisMethod2(NMethod: Integer): Integer; dispid 85;
    function GetRandomVibrationGaussIntegrationOrder2(out NPoints: Integer): Integer; dispid 86;
    function SetRandomVibrationGaussIntegrationOrder2(NPoints: Integer): Integer; dispid 87;
    function GetRandomVibrationBiasingParameter2(out DBiasing: Double): Integer; dispid 88;
    function SetRandomVibrationBiasingParameter2(DBiasing: Double): Integer; dispid 89;
    function GetRandomVibrationCrossModeCutOffRatio2(out DRatio: Double): Integer; dispid 90;
    function SetRandomVibrationCrossModeCutOffRatio2(DRatio: Double): Integer; dispid 91;
    function GetResponseSpectrumModeCombinationMethod2(out NMethod: Integer): Integer; dispid 92;
    function SetResponseSpectrumModeCombinationMethod2(NMethod: Integer): Integer; dispid 93;
    function GetResponseSpectrumCurveInterpolation2(out NInterpolation: Integer): Integer; dispid 94;
    function SetResponseSpectrumCurveInterpolation2(NInterpolation: Integer): Integer; dispid 95;
    function GetResponseSpectrumClusterFactor2(out DFactor: Double): Integer; dispid 96;
    function SetResponseSpectrumClusterFactor2(DFactor: Double): Integer; dispid 97;
    function GetResponseSpectrumUseMaterialDamping2(out BChecked: Integer): Integer; dispid 98;
    function SetResponseSpectrumUseMaterialDamping2(BChecked: Integer): Integer; dispid 99;
  end;

// *********************************************************************//
// Interface: ICWDampingOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3AA2395-263B-4BEA-BFF6-E52A0B20687E}
// *********************************************************************//
  ICWDampingOptions = interface(IDispatch)
    ['{E3AA2395-263B-4BEA-BFF6-E52A0B20687E}']
    function Get_DampingType: Integer; safecall;
    procedure Set_DampingType(NDampingType: Integer); safecall;
    function Get_ComputeFromMaterialDamping: Integer; safecall;
    procedure Set_ComputeFromMaterialDamping(BSet: Integer); safecall;
    procedure GetRayleighDampingCoefficients(out DAlpha: Double; out DBeta: Double); safecall;
    procedure SetRayleighDampingCoefficients(DAlpha: Double; DBeta: Double); safecall;
    function GetDampingRatios: OleVariant; safecall;
    function SetDampingRatios(NRows: Integer; Values: OleVariant): Integer; safecall;
    property DampingType: Integer read Get_DampingType write Set_DampingType;
    property ComputeFromMaterialDamping: Integer read Get_ComputeFromMaterialDamping write Set_ComputeFromMaterialDamping;
  end;

// *********************************************************************//
// DispIntf:  ICWDampingOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {E3AA2395-263B-4BEA-BFF6-E52A0B20687E}
// *********************************************************************//
  ICWDampingOptionsDisp = dispinterface
    ['{E3AA2395-263B-4BEA-BFF6-E52A0B20687E}']
    property DampingType: Integer dispid 1;
    property ComputeFromMaterialDamping: Integer dispid 2;
    procedure GetRayleighDampingCoefficients(out DAlpha: Double; out DBeta: Double); dispid 3;
    procedure SetRayleighDampingCoefficients(DAlpha: Double; DBeta: Double); dispid 4;
    function GetDampingRatios: OleVariant; dispid 5;
    function SetDampingRatios(NRows: Integer; Values: OleVariant): Integer; dispid 6;
  end;

// *********************************************************************//
// Interface: ICWStudyResultOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA285FD1-5A65-4959-9297-5B588044D364}
// *********************************************************************//
  ICWStudyResultOptions = interface(IDispatch)
    ['{BA285FD1-5A65-4959-9297-5B588044D364}']
    function Get_SaveResultsForSolutionStepsOption: Integer; safecall;
    procedure Set_SaveResultsForSolutionStepsOption(NSolutionStepsOption: Integer); safecall;
    function Get_SaveDisplacementsAndVelocitiesOption: Integer; safecall;
    procedure Set_SaveDisplacementsAndVelocitiesOption(NQuantity: Integer); safecall;
    function Get_SaveStresses: Integer; safecall;
    procedure Set_SaveStresses(BSave: Integer); safecall;
    function Get_SaveReactions: Integer; safecall;
    procedure Set_SaveReactions(BSave: Integer); safecall;
    procedure GetSolutionStepsSetInformation(NSetNumber: Integer; out NStartStep: Integer; 
                                             out NEndStep: Integer; out NStepIncrement: Integer); safecall;
    function SetSolutionStepsSetInformation(NSetNumber: Integer; NStartStep: Integer; 
                                            NEndStep: Integer; NStepIncrement: Integer): Integer; safecall;
    procedure GetSensorDetailsForGraphsAndPlots(out NSensorOption: Integer; 
                                                out SSensorName: WideString); safecall;
    procedure SetSensorDetailsForGraphsAndPlots(NSensorOption: Integer; 
                                                const SSensorName: WideString); safecall;
    property SaveResultsForSolutionStepsOption: Integer read Get_SaveResultsForSolutionStepsOption write Set_SaveResultsForSolutionStepsOption;
    property SaveDisplacementsAndVelocitiesOption: Integer read Get_SaveDisplacementsAndVelocitiesOption write Set_SaveDisplacementsAndVelocitiesOption;
    property SaveStresses: Integer read Get_SaveStresses write Set_SaveStresses;
    property SaveReactions: Integer read Get_SaveReactions write Set_SaveReactions;
  end;

// *********************************************************************//
// DispIntf:  ICWStudyResultOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {BA285FD1-5A65-4959-9297-5B588044D364}
// *********************************************************************//
  ICWStudyResultOptionsDisp = dispinterface
    ['{BA285FD1-5A65-4959-9297-5B588044D364}']
    property SaveResultsForSolutionStepsOption: Integer dispid 1;
    property SaveDisplacementsAndVelocitiesOption: Integer dispid 2;
    property SaveStresses: Integer dispid 3;
    property SaveReactions: Integer dispid 4;
    procedure GetSolutionStepsSetInformation(NSetNumber: Integer; out NStartStep: Integer; 
                                             out NEndStep: Integer; out NStepIncrement: Integer); dispid 5;
    function SetSolutionStepsSetInformation(NSetNumber: Integer; NStartStep: Integer; 
                                            NEndStep: Integer; NStepIncrement: Integer): Integer; dispid 6;
    procedure GetSensorDetailsForGraphsAndPlots(out NSensorOption: Integer; 
                                                out SSensorName: WideString); dispid 7;
    procedure SetSensorDetailsForGraphsAndPlots(NSensorOption: Integer; 
                                                const SSensorName: WideString); dispid 8;
  end;

// *********************************************************************//
// Interface: ICWDropTestStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85D19761-12B3-4C55-BBCC-990A1353B32D}
// *********************************************************************//
  ICWDropTestStudyOptions = interface(IDispatch)
    ['{85D19761-12B3-4C55-BBCC-990A1353B32D}']
    function Get_LargeDisplacement: Integer; safecall;
    procedure Set_LargeDisplacement(BLargeDisplacement: Integer); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    property LargeDisplacement: Integer read Get_LargeDisplacement write Set_LargeDisplacement;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
  end;

// *********************************************************************//
// DispIntf:  ICWDropTestStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {85D19761-12B3-4C55-BBCC-990A1353B32D}
// *********************************************************************//
  ICWDropTestStudyOptionsDisp = dispinterface
    ['{85D19761-12B3-4C55-BBCC-990A1353B32D}']
    property LargeDisplacement: Integer dispid 1;
    property ResultFolder: WideString dispid 2;
  end;

// *********************************************************************//
// Interface: ICWDropTestResultOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4776DA98-3183-4EAF-B97F-355EA56AED67}
// *********************************************************************//
  ICWDropTestResultOptions = interface(IDispatch)
    ['{4776DA98-3183-4EAF-B97F-355EA56AED67}']
    function Get_SolutionTimeAfterImpact: Double; safecall;
    procedure Set_SolutionTimeAfterImpact(DTime: Double); safecall;
    function Get_SaveResultsStartingTime: Double; safecall;
    procedure Set_SaveResultsStartingTime(DTime: Double); safecall;
    function Get_NoOfPlots: Integer; safecall;
    procedure Set_NoOfPlots(NPlots: Integer); safecall;
    function Get_NoOfGraphSteps: Integer; safecall;
    procedure Set_NoOfGraphSteps(NSteps: Integer); safecall;
    procedure GetSensorDetails(out NSensorOption: Integer; out SSensorName: WideString); safecall;
    procedure SetSensorDetails(NSensorOption: Integer; const SSensorName: WideString); safecall;
    property SolutionTimeAfterImpact: Double read Get_SolutionTimeAfterImpact write Set_SolutionTimeAfterImpact;
    property SaveResultsStartingTime: Double read Get_SaveResultsStartingTime write Set_SaveResultsStartingTime;
    property NoOfPlots: Integer read Get_NoOfPlots write Set_NoOfPlots;
    property NoOfGraphSteps: Integer read Get_NoOfGraphSteps write Set_NoOfGraphSteps;
  end;

// *********************************************************************//
// DispIntf:  ICWDropTestResultOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {4776DA98-3183-4EAF-B97F-355EA56AED67}
// *********************************************************************//
  ICWDropTestResultOptionsDisp = dispinterface
    ['{4776DA98-3183-4EAF-B97F-355EA56AED67}']
    property SolutionTimeAfterImpact: Double dispid 1;
    property SaveResultsStartingTime: Double dispid 2;
    property NoOfPlots: Integer dispid 3;
    property NoOfGraphSteps: Integer dispid 4;
    procedure GetSensorDetails(out NSensorOption: Integer; out SSensorName: WideString); dispid 5;
    procedure SetSensorDetails(NSensorOption: Integer; const SSensorName: WideString); dispid 6;
  end;

// *********************************************************************//
// Interface: ICWDropTestSetup
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1FC7116-64EA-4872-8B2F-526B76AC9C17}
// *********************************************************************//
  ICWDropTestSetup = interface(IDispatch)
    ['{A1FC7116-64EA-4872-8B2F-526B76AC9C17}']
    function Get_DropType: Integer; safecall;
    procedure Set_DropType(NDropType: Integer); safecall;
    function Get_DropHeightType: Integer; safecall;
    procedure Set_DropHeightType(NDropHeightType: Integer); safecall;
    function Get_DropHeight: Double; safecall;
    procedure Set_DropHeight(DDropHeight: Double); safecall;
    function Get_DropHeightUnit: Integer; safecall;
    procedure Set_DropHeightUnit(NDropHeightUnit: Integer); safecall;
    function Get_Velocity: Double; safecall;
    procedure Set_Velocity(DVelocity: Double); safecall;
    function Get_VelocityUnit: Integer; safecall;
    procedure Set_VelocityUnit(NVelocityUnit: Integer); safecall;
    function Get_FlipVelocityDirection: Integer; safecall;
    procedure Set_FlipVelocityDirection(BFlip: Integer); safecall;
    function Get_Gravity: Double; safecall;
    procedure Set_Gravity(DGravity: Double); safecall;
    function Get_GravityUnit: Integer; safecall;
    procedure Set_GravityUnit(NGravityUnit: Integer); safecall;
    function Get_FlipGravityDirection: Integer; safecall;
    procedure Set_FlipGravityDirection(BFlip: Integer); safecall;
    function Get_TargetOrientationType: Integer; safecall;
    procedure Set_TargetOrientationType(NTargetOrientationType: Integer); safecall;
    function Get_FrictionCoefficient: Double; safecall;
    procedure Set_FrictionCoefficient(DFrictionCoefficient: Double); safecall;
    function Get_TargetStiffnessType: Integer; safecall;
    procedure Set_TargetStiffnessType(NTargetStiffnessType: Integer); safecall;
    function Get_StiffnessUnit: Integer; safecall;
    procedure Set_StiffnessUnit(NStiffnessUnit: Integer); safecall;
    function Get_NormalStiffness: Double; safecall;
    procedure Set_NormalStiffness(DNormalStiffness: Double); safecall;
    function Get_TangentialStiffness: Double; safecall;
    procedure Set_TangentialStiffness(DTangentialStiffness: Double); safecall;
    function Get_MassDensity: Double; safecall;
    procedure Set_MassDensity(DMassDensity: Double); safecall;
    function Get_TargetThickness: Double; safecall;
    procedure Set_TargetThickness(DTargetThickness: Double); safecall;
    function Get_ThicknessUnit: Integer; safecall;
    procedure Set_ThicknessUnit(NThicknessUnit: Integer); safecall;
    function SetEntityForVelocityDirection(const DispEntity: IDispatch): Integer; safecall;
    function SetEntityForGravityDirection(const DispEntity: IDispatch): Integer; safecall;
    function SetEntityForTargetOrientation(const DispEntity: IDispatch): Integer; safecall;
    procedure DropTestSetupBeginEdit; safecall;
    function DropTestSetupEndEdit: Integer; safecall;
    property DropType: Integer read Get_DropType write Set_DropType;
    property DropHeightType: Integer read Get_DropHeightType write Set_DropHeightType;
    property DropHeight: Double read Get_DropHeight write Set_DropHeight;
    property DropHeightUnit: Integer read Get_DropHeightUnit write Set_DropHeightUnit;
    property Velocity: Double read Get_Velocity write Set_Velocity;
    property VelocityUnit: Integer read Get_VelocityUnit write Set_VelocityUnit;
    property FlipVelocityDirection: Integer read Get_FlipVelocityDirection write Set_FlipVelocityDirection;
    property Gravity: Double read Get_Gravity write Set_Gravity;
    property GravityUnit: Integer read Get_GravityUnit write Set_GravityUnit;
    property FlipGravityDirection: Integer read Get_FlipGravityDirection write Set_FlipGravityDirection;
    property TargetOrientationType: Integer read Get_TargetOrientationType write Set_TargetOrientationType;
    property FrictionCoefficient: Double read Get_FrictionCoefficient write Set_FrictionCoefficient;
    property TargetStiffnessType: Integer read Get_TargetStiffnessType write Set_TargetStiffnessType;
    property StiffnessUnit: Integer read Get_StiffnessUnit write Set_StiffnessUnit;
    property NormalStiffness: Double read Get_NormalStiffness write Set_NormalStiffness;
    property TangentialStiffness: Double read Get_TangentialStiffness write Set_TangentialStiffness;
    property MassDensity: Double read Get_MassDensity write Set_MassDensity;
    property TargetThickness: Double read Get_TargetThickness write Set_TargetThickness;
    property ThicknessUnit: Integer read Get_ThicknessUnit write Set_ThicknessUnit;
  end;

// *********************************************************************//
// DispIntf:  ICWDropTestSetupDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {A1FC7116-64EA-4872-8B2F-526B76AC9C17}
// *********************************************************************//
  ICWDropTestSetupDisp = dispinterface
    ['{A1FC7116-64EA-4872-8B2F-526B76AC9C17}']
    property DropType: Integer dispid 1;
    property DropHeightType: Integer dispid 2;
    property DropHeight: Double dispid 3;
    property DropHeightUnit: Integer dispid 4;
    property Velocity: Double dispid 5;
    property VelocityUnit: Integer dispid 6;
    property FlipVelocityDirection: Integer dispid 7;
    property Gravity: Double dispid 8;
    property GravityUnit: Integer dispid 9;
    property FlipGravityDirection: Integer dispid 10;
    property TargetOrientationType: Integer dispid 11;
    property FrictionCoefficient: Double dispid 12;
    property TargetStiffnessType: Integer dispid 13;
    property StiffnessUnit: Integer dispid 14;
    property NormalStiffness: Double dispid 15;
    property TangentialStiffness: Double dispid 16;
    property MassDensity: Double dispid 17;
    property TargetThickness: Double dispid 18;
    property ThicknessUnit: Integer dispid 19;
    function SetEntityForVelocityDirection(const DispEntity: IDispatch): Integer; dispid 20;
    function SetEntityForGravityDirection(const DispEntity: IDispatch): Integer; dispid 21;
    function SetEntityForTargetOrientation(const DispEntity: IDispatch): Integer; dispid 22;
    procedure DropTestSetupBeginEdit; dispid 23;
    function DropTestSetupEndEdit: Integer; dispid 24;
  end;

// *********************************************************************//
// Interface: ICWFatigueStudyOptions
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C56F89-CCA5-4230-A725-39C88FE714FF}
// *********************************************************************//
  ICWFatigueStudyOptions = interface(IDispatch)
    ['{75C56F89-CCA5-4230-A725-39C88FE714FF}']
    function Get_ComputingAlternatingStressOption: Integer; safecall;
    procedure Set_ComputingAlternatingStressOption(NStressOption: Integer); safecall;
    function Get_ShellFace: Integer; safecall;
    procedure Set_ShellFace(NShellFace: Integer); safecall;
    function Get_MeanStressCorrectionOption: Integer; safecall;
    procedure Set_MeanStressCorrectionOption(NMeanStressCorrection: Integer); safecall;
    function Get_FatigueStrengthReductionFactor: Double; safecall;
    procedure Set_FatigueStrengthReductionFactor(DReductionFactor: Double); safecall;
    function Get_ResultFolder: WideString; safecall;
    procedure Set_ResultFolder(const SResultFolderPathName: WideString); safecall;
    function Get_ConstantAmplitudeEventInteractionOption: Integer; safecall;
    procedure Set_ConstantAmplitudeEventInteractionOption(NEventInteraction: Integer); safecall;
    procedure GetVariableAmplitudeEventOptions(out NNoOfBins: Integer; 
                                               out NPercentFilterLoadCycles: Integer); safecall;
    procedure SetVariableAmplitudeEventOptions(NNoOfBins: Integer; NPercentFilterLoadCycles: Integer); safecall;
    procedure GetInfiniteLifeSettings(out BChecked: Integer; out DCycles: Double); safecall;
    procedure SetInfiniteLifeSettings(BChecked: Integer; DCycles: Double); safecall;
    function AddFatigueEventForConstantAmplitude(const SAssociatedStudyName: WideString; 
                                                 DScale: Double; NStep: Integer; 
                                                 out ErrorCode: Integer): ICWFatigueEvent; safecall;
    function AddFatigueEventForVariableAmplitude(const SAssociatedStudyName: WideString; 
                                                 DScale: Double; NStep: Integer; 
                                                 VarLHCurveXData: OleVariant; 
                                                 VarLHCurveYData: OleVariant; 
                                                 NLHCurveType: Integer; DSamplingRate: Double; 
                                                 out ErrorCode: Integer): ICWFatigueEvent; safecall;
    function Get_LoadingEventCount: Integer; safecall;
    function GetFatigueEvent(NIndex: Integer; out ErrorCode: Integer): ICWFatigueEvent; safecall;
    procedure DeleteFatigueEvent(const SName: WideString); safecall;
    property ComputingAlternatingStressOption: Integer read Get_ComputingAlternatingStressOption write Set_ComputingAlternatingStressOption;
    property ShellFace: Integer read Get_ShellFace write Set_ShellFace;
    property MeanStressCorrectionOption: Integer read Get_MeanStressCorrectionOption write Set_MeanStressCorrectionOption;
    property FatigueStrengthReductionFactor: Double read Get_FatigueStrengthReductionFactor write Set_FatigueStrengthReductionFactor;
    property ResultFolder: WideString read Get_ResultFolder write Set_ResultFolder;
    property ConstantAmplitudeEventInteractionOption: Integer read Get_ConstantAmplitudeEventInteractionOption write Set_ConstantAmplitudeEventInteractionOption;
    property LoadingEventCount: Integer read Get_LoadingEventCount;
  end;

// *********************************************************************//
// DispIntf:  ICWFatigueStudyOptionsDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {75C56F89-CCA5-4230-A725-39C88FE714FF}
// *********************************************************************//
  ICWFatigueStudyOptionsDisp = dispinterface
    ['{75C56F89-CCA5-4230-A725-39C88FE714FF}']
    property ComputingAlternatingStressOption: Integer dispid 1;
    property ShellFace: Integer dispid 2;
    property MeanStressCorrectionOption: Integer dispid 3;
    property FatigueStrengthReductionFactor: Double dispid 4;
    property ResultFolder: WideString dispid 5;
    property ConstantAmplitudeEventInteractionOption: Integer dispid 6;
    procedure GetVariableAmplitudeEventOptions(out NNoOfBins: Integer; 
                                               out NPercentFilterLoadCycles: Integer); dispid 7;
    procedure SetVariableAmplitudeEventOptions(NNoOfBins: Integer; NPercentFilterLoadCycles: Integer); dispid 8;
    procedure GetInfiniteLifeSettings(out BChecked: Integer; out DCycles: Double); dispid 9;
    procedure SetInfiniteLifeSettings(BChecked: Integer; DCycles: Double); dispid 10;
    function AddFatigueEventForConstantAmplitude(const SAssociatedStudyName: WideString; 
                                                 DScale: Double; NStep: Integer; 
                                                 out ErrorCode: Integer): ICWFatigueEvent; dispid 11;
    function AddFatigueEventForVariableAmplitude(const SAssociatedStudyName: WideString; 
                                                 DScale: Double; NStep: Integer; 
                                                 VarLHCurveXData: OleVariant; 
                                                 VarLHCurveYData: OleVariant; 
                                                 NLHCurveType: Integer; DSamplingRate: Double; 
                                                 out ErrorCode: Integer): ICWFatigueEvent; dispid 12;
    property LoadingEventCount: Integer readonly dispid 13;
    function GetFatigueEvent(NIndex: Integer; out ErrorCode: Integer): ICWFatigueEvent; dispid 14;
    procedure DeleteFatigueEvent(const SName: WideString); dispid 15;
  end;

// *********************************************************************//
// Interface: ICWFatigueEvent
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8D3CE3B-5281-483A-9AE0-40F1D94D08A3}
// *********************************************************************//
  ICWFatigueEvent = interface(IDispatch)
    ['{F8D3CE3B-5281-483A-9AE0-40F1D94D08A3}']
    function Get_Cycles: Integer; safecall;
    procedure Set_Cycles(NCycles: Integer); safecall;
    function Get_LoadingType: Integer; safecall;
    procedure Set_LoadingType(NLoadingType: Integer); safecall;
    function Get_LoadingRatio: Double; safecall;
    procedure Set_LoadingRatio(DLoadingRatio: Double); safecall;
    function Get_NoOfRepeats: Integer; safecall;
    procedure Set_NoOfRepeats(NRepeats: Integer); safecall;
    function Get_StartTimes: Double; safecall;
    procedure Set_StartTimes(DStartTimes: Double); safecall;
    function GetStudyAssociationData(out VarStudyNames: OleVariant; out VarScales: OleVariant; 
                                     out VarSteps: OleVariant): Integer; safecall;
    function SetStudyAssociationData(NCount: Integer; VarStudyNames: OleVariant; 
                                     VarScales: OleVariant; VarSteps: OleVariant): Integer; safecall;
    function GetLoadHistoryCurve(out NType: Integer; out DSamplingRate: Double): OleVariant; safecall;
    function SetLoadHistoryCurve(VarLHCurveXData: OleVariant; VarLHCurveYData: OleVariant; 
                                 NType: Integer; DSamplingRate: Double): Integer; safecall;
    procedure FatigueEventBeginEdit; safecall;
    function FatigueEventEndEdit: Integer; safecall;
    function Get_Name: WideString; safecall;
    procedure SuppressUnSuppress; safecall;
    function Get_Cycles2: Double; safecall;
    procedure Set_Cycles2(DCycles: Double); safecall;
    property Cycles: Integer read Get_Cycles write Set_Cycles;
    property LoadingType: Integer read Get_LoadingType write Set_LoadingType;
    property LoadingRatio: Double read Get_LoadingRatio write Set_LoadingRatio;
    property NoOfRepeats: Integer read Get_NoOfRepeats write Set_NoOfRepeats;
    property StartTimes: Double read Get_StartTimes write Set_StartTimes;
    property Name: WideString read Get_Name;
    property Cycles2: Double read Get_Cycles2 write Set_Cycles2;
  end;

// *********************************************************************//
// DispIntf:  ICWFatigueEventDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {F8D3CE3B-5281-483A-9AE0-40F1D94D08A3}
// *********************************************************************//
  ICWFatigueEventDisp = dispinterface
    ['{F8D3CE3B-5281-483A-9AE0-40F1D94D08A3}']
    property Cycles: Integer dispid 1;
    property LoadingType: Integer dispid 2;
    property LoadingRatio: Double dispid 3;
    property NoOfRepeats: Integer dispid 4;
    property StartTimes: Double dispid 5;
    function GetStudyAssociationData(out VarStudyNames: OleVariant; out VarScales: OleVariant; 
                                     out VarSteps: OleVariant): Integer; dispid 6;
    function SetStudyAssociationData(NCount: Integer; VarStudyNames: OleVariant; 
                                     VarScales: OleVariant; VarSteps: OleVariant): Integer; dispid 7;
    function GetLoadHistoryCurve(out NType: Integer; out DSamplingRate: Double): OleVariant; dispid 8;
    function SetLoadHistoryCurve(VarLHCurveXData: OleVariant; VarLHCurveYData: OleVariant; 
                                 NType: Integer; DSamplingRate: Double): Integer; dispid 9;
    procedure FatigueEventBeginEdit; dispid 10;
    function FatigueEventEndEdit: Integer; dispid 11;
    property Name: WideString readonly dispid 12;
    procedure SuppressUnSuppress; dispid 13;
    property Cycles2: Double dispid 14;
  end;

// *********************************************************************//
// Interface: ICwAddincallback
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {49EEE451-912D-444C-BB23-A6976F71AA25}
// *********************************************************************//
  ICwAddincallback = interface(IDispatch)
    ['{49EEE451-912D-444C-BB23-A6976F71AA25}']
    procedure NewStudy; safecall;
    function AppUpdate: Integer; safecall;
    procedure EditDefineMaterial; safecall;
    function EditDefineMaterialUpdate: Integer; safecall;
    procedure CreateMesh; safecall;
    function StudyUpdate: Integer; safecall;
    procedure RunAnalysis; safecall;
    procedure DefineShellBySelectedSurfaces; safecall;
    function ShellUpdate: Integer; safecall;
    procedure DefineMeshControl; safecall;
    procedure DefineGlobalContact; safecall;
    function ContactUpdate: Integer; safecall;
    procedure DefineContactSet; safecall;
    procedure DropTestSetup; safecall;
    function DropTestSetUpdate: Integer; safecall;
    procedure DropTestResultOptions; safecall;
    function DropTestResultOptionsUpdate: Integer; safecall;
    function LoadsAndRestraintsUpdate: Integer; safecall;
    procedure DefineRestraints; safecall;
    procedure DefinePressures; safecall;
    procedure DefineForces; safecall;
    procedure DefineGravity; safecall;
    procedure DefineCentriFugal; safecall;
    procedure DefineRemoteLoads; safecall;
    procedure DefineRigidConnections; safecall;
    procedure DefineBearingLoads; safecall;
    function LoadsAndRestraintsUpdate2: Integer; safecall;
    procedure DefineTemperature; safecall;
    procedure ResultToolsDesignCheck; safecall;
    function StaticPostResultsUpdate: Integer; safecall;
    procedure PlotStress; safecall;
    procedure PlotDisplacement; safecall;
    procedure PlotStrain; safecall;
    procedure PlotThermal; safecall;
    function CommonPostResultsUpdate: Integer; safecall;
    function CommonPostResultsUpdate2: Integer; safecall;
    function ThermPostResultsUpdate: Integer; safecall;
    procedure ReportTemplate; safecall;
    procedure ResultToolsAnimate; safecall;
    function PostResultsUpdateAnimate: Integer; safecall;
    procedure ResultToolsClipping; safecall;
    function PostResultsUpdateClippingSec: Integer; safecall;
    procedure ResultToolsClippingIso; safecall;
    function PostResultsUpdateClippingIso: Integer; safecall;
    procedure ResultToolsSettings; safecall;
    function PostResultsUpdateSettings: Integer; safecall;
    procedure ResultToolsProbe; safecall;
    function PostResultsUpdateProbe: Integer; safecall;
    procedure ResultToolsListSelected; safecall;
    function PostResultsUpdateListSelected: Integer; safecall;
    procedure ResultToolsSaveAs; safecall;
    procedure ToggleDisplay; safecall;
    procedure TogglePostMode; safecall;
    function PostResultsUpdatePostMode: Integer; safecall;
    procedure DefineConvection; safecall;
    procedure DefineHeatPower; safecall;
    procedure DefineHeatFlux; safecall;
    procedure DefineRadiation; safecall;
    function ThermalStudyLoadsAndRestraintsUpdate: Integer; safecall;
    procedure ResultToolsReactionForce; safecall;
    procedure ResultToolsContactForce; safecall;
    procedure ResultToolsPinForce; safecall;
    function CommonPostResultsUpdate3: Integer; safecall;
    procedure ListModeShape; safecall;
    function FreqPostResultsUpdate: Integer; safecall;
    procedure DefineResponseGraph; safecall;
    function NonlinearPostResultsUpdate: Integer; safecall;
    procedure Parameters; safecall;
    procedure EditDefineDesignScenario; safecall;
    function UpdateDesignScenario: Integer; safecall;
    procedure RunDesidnScenario; safecall;
    procedure DesignResultShowSummary; safecall;
    function UpdateDesignResult: Integer; safecall;
    procedure DefineDesignResultGraph; safecall;
    procedure DefineOptObjective; safecall;
    procedure DefineOptDesignVar; safecall;
    procedure DefineOptConstraint; safecall;
    function OptimizationStudyUpdate: Integer; safecall;
    procedure OptDesignCycleResults; safecall;
    procedure OptDesignHistoryGraph; safecall;
    procedure OptLocalTrendGraph; safecall;
    procedure ChangeFatigueEventType; safecall;
    procedure AddFatigueEvent; safecall;
    function FatigueStudyUpdate: Integer; safecall;
    procedure FatigueDefinePlot; safecall;
    procedure FatigueList; safecall;
    function FatiguePlotUpdate: Integer; safecall;
    function TemperatureUpdate: Integer; safecall;
    function StudyRunUpdate: Integer; safecall;
    function PostResultsUpdate: Integer; safecall;
    function appCallbackFunction(cmd: SYSINT; data: SYSINT; const dsp: IDispatch): Integer; safecall;
    function AutomatedTest(ArgList: OleVariant): OleVariant; safecall;
    function RunCosworksBackOffice(ArgList: OleVariant): OleVariant; safecall;
    function LoadsAndRestraintsUpdate3: Integer; safecall;
    function MeshControlUpdate: Integer; safecall;
    function CommonPostResultsUpdateBeam: Integer; safecall;
    function CommonPostResultsUpdateBeam2: Integer; safecall;
    function ReportUpdate: Integer; safecall;
    function Get_CosmosWorks: ICosmosWorks; safecall;
    procedure TrendTracker; safecall;
    function TrendTrackerUpdate: Integer; safecall;
    procedure SetBaseline; safecall;
    function SetBaselineUpdate: Integer; safecall;
    procedure AddTrackedDataGraph; safecall;
    function AddTrackedDataGraphUpdate: Integer; safecall;
    procedure AddUniformBaseExcitation; safecall;
    function AddUniformBaseExcitationUpdate: Integer; safecall;
    procedure AddSelectBaseExcitation; safecall;
    function AddSelectBaseExcitationUpdate: Integer; safecall;
    procedure AddInitialCondition; safecall;
    function AddInitialConditionUpdate: Integer; safecall;
    procedure AddGlobalDamping; safecall;
    function AddGlobalDampingUpdate: Integer; safecall;
    procedure ToggleDeformMode; safecall;
    function PostResultsUpdateDeformMode: Integer; safecall;
    procedure PostResultCompareIn4Viewports; safecall;
    function PostResultCompareIn4ViewportsUpdate: Integer; safecall;
    procedure HelpErrCallback(mainProduct: Integer; const helpFile: WideString; helpTopic: Integer; 
                              const topicFile: WideString); safecall;
    function ContactSetUpdate: Integer; safecall;
    function CommonPostResultsUpdateBeamReactionForce: Integer; safecall;
    property CosmosWorks: ICosmosWorks read Get_CosmosWorks;
  end;

// *********************************************************************//
// DispIntf:  ICwAddincallbackDisp
// Flags:     (4416) Dual OleAutomation Dispatchable
// GUID:      {49EEE451-912D-444C-BB23-A6976F71AA25}
// *********************************************************************//
  ICwAddincallbackDisp = dispinterface
    ['{49EEE451-912D-444C-BB23-A6976F71AA25}']
    procedure NewStudy; dispid 1;
    function AppUpdate: Integer; dispid 2;
    procedure EditDefineMaterial; dispid 3;
    function EditDefineMaterialUpdate: Integer; dispid 4;
    procedure CreateMesh; dispid 5;
    function StudyUpdate: Integer; dispid 6;
    procedure RunAnalysis; dispid 7;
    procedure DefineShellBySelectedSurfaces; dispid 8;
    function ShellUpdate: Integer; dispid 9;
    procedure DefineMeshControl; dispid 10;
    procedure DefineGlobalContact; dispid 11;
    function ContactUpdate: Integer; dispid 12;
    procedure DefineContactSet; dispid 13;
    procedure DropTestSetup; dispid 14;
    function DropTestSetUpdate: Integer; dispid 15;
    procedure DropTestResultOptions; dispid 16;
    function DropTestResultOptionsUpdate: Integer; dispid 17;
    function LoadsAndRestraintsUpdate: Integer; dispid 18;
    procedure DefineRestraints; dispid 19;
    procedure DefinePressures; dispid 20;
    procedure DefineForces; dispid 21;
    procedure DefineGravity; dispid 22;
    procedure DefineCentriFugal; dispid 23;
    procedure DefineRemoteLoads; dispid 24;
    procedure DefineRigidConnections; dispid 25;
    procedure DefineBearingLoads; dispid 26;
    function LoadsAndRestraintsUpdate2: Integer; dispid 27;
    procedure DefineTemperature; dispid 28;
    procedure ResultToolsDesignCheck; dispid 29;
    function StaticPostResultsUpdate: Integer; dispid 30;
    procedure PlotStress; dispid 31;
    procedure PlotDisplacement; dispid 32;
    procedure PlotStrain; dispid 33;
    procedure PlotThermal; dispid 34;
    function CommonPostResultsUpdate: Integer; dispid 35;
    function CommonPostResultsUpdate2: Integer; dispid 36;
    function ThermPostResultsUpdate: Integer; dispid 37;
    procedure ReportTemplate; dispid 38;
    procedure ResultToolsAnimate; dispid 39;
    function PostResultsUpdateAnimate: Integer; dispid 40;
    procedure ResultToolsClipping; dispid 41;
    function PostResultsUpdateClippingSec: Integer; dispid 43;
    procedure ResultToolsClippingIso; dispid 44;
    function PostResultsUpdateClippingIso: Integer; dispid 45;
    procedure ResultToolsSettings; dispid 46;
    function PostResultsUpdateSettings: Integer; dispid 47;
    procedure ResultToolsProbe; dispid 48;
    function PostResultsUpdateProbe: Integer; dispid 49;
    procedure ResultToolsListSelected; dispid 50;
    function PostResultsUpdateListSelected: Integer; dispid 51;
    procedure ResultToolsSaveAs; dispid 52;
    procedure ToggleDisplay; dispid 53;
    procedure TogglePostMode; dispid 54;
    function PostResultsUpdatePostMode: Integer; dispid 55;
    procedure DefineConvection; dispid 56;
    procedure DefineHeatPower; dispid 57;
    procedure DefineHeatFlux; dispid 58;
    procedure DefineRadiation; dispid 59;
    function ThermalStudyLoadsAndRestraintsUpdate: Integer; dispid 60;
    procedure ResultToolsReactionForce; dispid 61;
    procedure ResultToolsContactForce; dispid 62;
    procedure ResultToolsPinForce; dispid 63;
    function CommonPostResultsUpdate3: Integer; dispid 64;
    procedure ListModeShape; dispid 65;
    function FreqPostResultsUpdate: Integer; dispid 66;
    procedure DefineResponseGraph; dispid 67;
    function NonlinearPostResultsUpdate: Integer; dispid 68;
    procedure Parameters; dispid 69;
    procedure EditDefineDesignScenario; dispid 70;
    function UpdateDesignScenario: Integer; dispid 71;
    procedure RunDesidnScenario; dispid 72;
    procedure DesignResultShowSummary; dispid 73;
    function UpdateDesignResult: Integer; dispid 74;
    procedure DefineDesignResultGraph; dispid 75;
    procedure DefineOptObjective; dispid 76;
    procedure DefineOptDesignVar; dispid 77;
    procedure DefineOptConstraint; dispid 78;
    function OptimizationStudyUpdate: Integer; dispid 79;
    procedure OptDesignCycleResults; dispid 80;
    procedure OptDesignHistoryGraph; dispid 81;
    procedure OptLocalTrendGraph; dispid 82;
    procedure ChangeFatigueEventType; dispid 83;
    procedure AddFatigueEvent; dispid 84;
    function FatigueStudyUpdate: Integer; dispid 85;
    procedure FatigueDefinePlot; dispid 86;
    procedure FatigueList; dispid 87;
    function FatiguePlotUpdate: Integer; dispid 88;
    function TemperatureUpdate: Integer; dispid 89;
    function StudyRunUpdate: Integer; dispid 90;
    function PostResultsUpdate: Integer; dispid 91;
    function appCallbackFunction(cmd: SYSINT; data: SYSINT; const dsp: IDispatch): Integer; dispid 92;
    function AutomatedTest(ArgList: OleVariant): OleVariant; dispid 93;
    function RunCosworksBackOffice(ArgList: OleVariant): OleVariant; dispid 94;
    function LoadsAndRestraintsUpdate3: Integer; dispid 95;
    function MeshControlUpdate: Integer; dispid 96;
    function CommonPostResultsUpdateBeam: Integer; dispid 97;
    function CommonPostResultsUpdateBeam2: Integer; dispid 98;
    function ReportUpdate: Integer; dispid 99;
    property CosmosWorks: ICosmosWorks readonly dispid 100;
    procedure TrendTracker; dispid 101;
    function TrendTrackerUpdate: Integer; dispid 102;
    procedure SetBaseline; dispid 103;
    function SetBaselineUpdate: Integer; dispid 104;
    procedure AddTrackedDataGraph; dispid 105;
    function AddTrackedDataGraphUpdate: Integer; dispid 106;
    procedure AddUniformBaseExcitation; dispid 107;
    function AddUniformBaseExcitationUpdate: Integer; dispid 108;
    procedure AddSelectBaseExcitation; dispid 109;
    function AddSelectBaseExcitationUpdate: Integer; dispid 110;
    procedure AddInitialCondition; dispid 111;
    function AddInitialConditionUpdate: Integer; dispid 112;
    procedure AddGlobalDamping; dispid 113;
    function AddGlobalDampingUpdate: Integer; dispid 114;
    procedure ToggleDeformMode; dispid 115;
    function PostResultsUpdateDeformMode: Integer; dispid 116;
    procedure PostResultCompareIn4Viewports; dispid 117;
    function PostResultCompareIn4ViewportsUpdate: Integer; dispid 118;
    procedure HelpErrCallback(mainProduct: Integer; const helpFile: WideString; helpTopic: Integer; 
                              const topicFile: WideString); dispid 119;
    function ContactSetUpdate: Integer; dispid 120;
    function CommonPostResultsUpdateBeamReactionForce: Integer; dispid 121;
  end;

// *********************************************************************//
// The Class CoCwAddincallback provides a Create and CreateRemote method to          
// create instances of the default interface ICwAddincallback exposed by              
// the CoClass CwAddincallback. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCwAddincallback = class
    class function Create: ICwAddincallback;
    class function CreateRemote(const MachineName: string): ICwAddincallback;
  end;

// *********************************************************************//
// The Class CoCosmosWorks provides a Create and CreateRemote method to          
// create instances of the default interface ICosmosWorks exposed by              
// the CoClass CosmosWorks. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCosmosWorks = class
    class function Create: ICosmosWorks;
    class function CreateRemote(const MachineName: string): ICosmosWorks;
  end;

// *********************************************************************//
// The Class CoCWModelDoc provides a Create and CreateRemote method to          
// create instances of the default interface ICWModelDoc exposed by              
// the CoClass CWModelDoc. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWModelDoc = class
    class function Create: ICWModelDoc;
    class function CreateRemote(const MachineName: string): ICWModelDoc;
  end;

// *********************************************************************//
// The Class CoCWStudyManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWStudyManager exposed by              
// the CoClass CWStudyManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWStudyManager = class
    class function Create: ICWStudyManager;
    class function CreateRemote(const MachineName: string): ICWStudyManager;
  end;

// *********************************************************************//
// The Class CoCWStudy provides a Create and CreateRemote method to          
// create instances of the default interface ICWStudy exposed by              
// the CoClass CWStudy. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWStudy = class
    class function Create: ICWStudy;
    class function CreateRemote(const MachineName: string): ICWStudy;
  end;

// *********************************************************************//
// The Class CoCWSolidManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWSolidManager exposed by              
// the CoClass CWSolidManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWSolidManager = class
    class function Create: ICWSolidManager;
    class function CreateRemote(const MachineName: string): ICWSolidManager;
  end;

// *********************************************************************//
// The Class CoCWSolidComponent provides a Create and CreateRemote method to          
// create instances of the default interface ICWSolidComponent exposed by              
// the CoClass CWSolidComponent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWSolidComponent = class
    class function Create: ICWSolidComponent;
    class function CreateRemote(const MachineName: string): ICWSolidComponent;
  end;

// *********************************************************************//
// The Class CoCWSolidBody provides a Create and CreateRemote method to          
// create instances of the default interface ICWSolidBody exposed by              
// the CoClass CWSolidBody. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWSolidBody = class
    class function Create: ICWSolidBody;
    class function CreateRemote(const MachineName: string): ICWSolidBody;
  end;

// *********************************************************************//
// The Class CoCWBeamManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWBeamManager exposed by              
// the CoClass CWBeamManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBeamManager = class
    class function Create: ICWBeamManager;
    class function CreateRemote(const MachineName: string): ICWBeamManager;
  end;

// *********************************************************************//
// The Class CoCWBeamBody provides a Create and CreateRemote method to          
// create instances of the default interface ICWBeamBody exposed by              
// the CoClass CWBeamBody. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBeamBody = class
    class function Create: ICWBeamBody;
    class function CreateRemote(const MachineName: string): ICWBeamBody;
  end;

// *********************************************************************//
// The Class CoCWJoints provides a Create and CreateRemote method to          
// create instances of the default interface ICWJoints exposed by              
// the CoClass CWJoints. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWJoints = class
    class function Create: ICWJoints;
    class function CreateRemote(const MachineName: string): ICWJoints;
  end;

// *********************************************************************//
// The Class CoCWMesh provides a Create and CreateRemote method to          
// create instances of the default interface ICWMesh exposed by              
// the CoClass CWMesh. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWMesh = class
    class function Create: ICWMesh;
    class function CreateRemote(const MachineName: string): ICWMesh;
  end;

// *********************************************************************//
// The Class CoCWMeshControl provides a Create and CreateRemote method to          
// create instances of the default interface ICWMeshControl exposed by              
// the CoClass CWMeshControl. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWMeshControl = class
    class function Create: ICWMeshControl;
    class function CreateRemote(const MachineName: string): ICWMeshControl;
  end;

// *********************************************************************//
// The Class CoCWMaterial provides a Create and CreateRemote method to          
// create instances of the default interface ICWMaterial exposed by              
// the CoClass CWMaterial. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWMaterial = class
    class function Create: ICWMaterial;
    class function CreateRemote(const MachineName: string): ICWMaterial;
  end;

// *********************************************************************//
// The Class CoCWLoadsAndRestraintsManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWLoadsAndRestraintsManager exposed by              
// the CoClass CWLoadsAndRestraintsManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWLoadsAndRestraintsManager = class
    class function Create: ICWLoadsAndRestraintsManager;
    class function CreateRemote(const MachineName: string): ICWLoadsAndRestraintsManager;
  end;

// *********************************************************************//
// The Class CoCWLoadsAndRestraints provides a Create and CreateRemote method to          
// create instances of the default interface ICWLoadsAndRestraints exposed by              
// the CoClass CWLoadsAndRestraints. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWLoadsAndRestraints = class
    class function Create: ICWLoadsAndRestraints;
    class function CreateRemote(const MachineName: string): ICWLoadsAndRestraints;
  end;

// *********************************************************************//
// The Class CoCWForce provides a Create and CreateRemote method to          
// create instances of the default interface ICWForce exposed by              
// the CoClass CWForce. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWForce = class
    class function Create: ICWForce;
    class function CreateRemote(const MachineName: string): ICWForce;
  end;

// *********************************************************************//
// The Class CoCWPressure provides a Create and CreateRemote method to          
// create instances of the default interface ICWPressure exposed by              
// the CoClass CWPressure. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWPressure = class
    class function Create: ICWPressure;
    class function CreateRemote(const MachineName: string): ICWPressure;
  end;

// *********************************************************************//
// The Class CoCWTemperature provides a Create and CreateRemote method to          
// create instances of the default interface ICWTemperature exposed by              
// the CoClass CWTemperature. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWTemperature = class
    class function Create: ICWTemperature;
    class function CreateRemote(const MachineName: string): ICWTemperature;
  end;

// *********************************************************************//
// The Class CoCWHeatPower provides a Create and CreateRemote method to          
// create instances of the default interface ICWHeatPower exposed by              
// the CoClass CWHeatPower. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWHeatPower = class
    class function Create: ICWHeatPower;
    class function CreateRemote(const MachineName: string): ICWHeatPower;
  end;

// *********************************************************************//
// The Class CoCWHeatFlux provides a Create and CreateRemote method to          
// create instances of the default interface ICWHeatFlux exposed by              
// the CoClass CWHeatFlux. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWHeatFlux = class
    class function Create: ICWHeatFlux;
    class function CreateRemote(const MachineName: string): ICWHeatFlux;
  end;

// *********************************************************************//
// The Class CoCWConvection provides a Create and CreateRemote method to          
// create instances of the default interface ICWConvection exposed by              
// the CoClass CWConvection. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWConvection = class
    class function Create: ICWConvection;
    class function CreateRemote(const MachineName: string): ICWConvection;
  end;

// *********************************************************************//
// The Class CoCWRadiation provides a Create and CreateRemote method to          
// create instances of the default interface ICWRadiation exposed by              
// the CoClass CWRadiation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWRadiation = class
    class function Create: ICWRadiation;
    class function CreateRemote(const MachineName: string): ICWRadiation;
  end;

// *********************************************************************//
// The Class CoCWGravity provides a Create and CreateRemote method to          
// create instances of the default interface ICWGravity exposed by              
// the CoClass CWGravity. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWGravity = class
    class function Create: ICWGravity;
    class function CreateRemote(const MachineName: string): ICWGravity;
  end;

// *********************************************************************//
// The Class CoCWCentriFugalForce provides a Create and CreateRemote method to          
// create instances of the default interface ICWCentriFugalForce exposed by              
// the CoClass CWCentriFugalForce. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWCentriFugalForce = class
    class function Create: ICWCentriFugalForce;
    class function CreateRemote(const MachineName: string): ICWCentriFugalForce;
  end;

// *********************************************************************//
// The Class CoCWRestraint provides a Create and CreateRemote method to          
// create instances of the default interface ICWRestraint exposed by              
// the CoClass CWRestraint. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWRestraint = class
    class function Create: ICWRestraint;
    class function CreateRemote(const MachineName: string): ICWRestraint;
  end;

// *********************************************************************//
// The Class CoCWRemoteLoad provides a Create and CreateRemote method to          
// create instances of the default interface ICWRemoteLoad exposed by              
// the CoClass CWRemoteLoad. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWRemoteLoad = class
    class function Create: ICWRemoteLoad;
    class function CreateRemote(const MachineName: string): ICWRemoteLoad;
  end;

// *********************************************************************//
// The Class CoCWBearingLoad provides a Create and CreateRemote method to          
// create instances of the default interface ICWBearingLoad exposed by              
// the CoClass CWBearingLoad. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBearingLoad = class
    class function Create: ICWBearingLoad;
    class function CreateRemote(const MachineName: string): ICWBearingLoad;
  end;

// *********************************************************************//
// The Class CoCWBaseExcitation provides a Create and CreateRemote method to          
// create instances of the default interface ICWBaseExcitation exposed by              
// the CoClass CWBaseExcitation. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBaseExcitation = class
    class function Create: ICWBaseExcitation;
    class function CreateRemote(const MachineName: string): ICWBaseExcitation;
  end;

// *********************************************************************//
// The Class CoCWDistributedMass provides a Create and CreateRemote method to          
// create instances of the default interface ICWDistributedMass exposed by              
// the CoClass CWDistributedMass. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDistributedMass = class
    class function Create: ICWDistributedMass;
    class function CreateRemote(const MachineName: string): ICWDistributedMass;
  end;

// *********************************************************************//
// The Class CoCWDynamicInitialCondition provides a Create and CreateRemote method to          
// create instances of the default interface ICWDynamicInitialCondition exposed by              
// the CoClass CWDynamicInitialCondition. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDynamicInitialCondition = class
    class function Create: ICWDynamicInitialCondition;
    class function CreateRemote(const MachineName: string): ICWDynamicInitialCondition;
  end;

// *********************************************************************//
// The Class CoCWFatigueEvent provides a Create and CreateRemote method to          
// create instances of the default interface ICWFatigueEvent exposed by              
// the CoClass CWFatigueEvent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFatigueEvent = class
    class function Create: ICWFatigueEvent;
    class function CreateRemote(const MachineName: string): ICWFatigueEvent;
  end;

// *********************************************************************//
// The Class CoCWShellManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWShellManager exposed by              
// the CoClass CWShellManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWShellManager = class
    class function Create: ICWShellManager;
    class function CreateRemote(const MachineName: string): ICWShellManager;
  end;

// *********************************************************************//
// The Class CoCWShell provides a Create and CreateRemote method to          
// create instances of the default interface ICWShell exposed by              
// the CoClass CWShell. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWShell = class
    class function Create: ICWShell;
    class function CreateRemote(const MachineName: string): ICWShell;
  end;

// *********************************************************************//
// The Class CoCWContactManager provides a Create and CreateRemote method to          
// create instances of the default interface ICWContactManager exposed by              
// the CoClass CWContactManager. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWContactManager = class
    class function Create: ICWContactManager;
    class function CreateRemote(const MachineName: string): ICWContactManager;
  end;

// *********************************************************************//
// The Class CoCWContactSet provides a Create and CreateRemote method to          
// create instances of the default interface ICWContactSet exposed by              
// the CoClass CWContactSet. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWContactSet = class
    class function Create: ICWContactSet;
    class function CreateRemote(const MachineName: string): ICWContactSet;
  end;

// *********************************************************************//
// The Class CoCWContactComponent provides a Create and CreateRemote method to          
// create instances of the default interface ICWContactComponent exposed by              
// the CoClass CWContactComponent. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWContactComponent = class
    class function Create: ICWContactComponent;
    class function CreateRemote(const MachineName: string): ICWContactComponent;
  end;

// *********************************************************************//
// The Class CoCWThermalStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWThermalStudyOptions exposed by              
// the CoClass CWThermalStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWThermalStudyOptions = class
    class function Create: ICWThermalStudyOptions;
    class function CreateRemote(const MachineName: string): ICWThermalStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWFrequencyStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWFrequencyStudyOptions exposed by              
// the CoClass CWFrequencyStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFrequencyStudyOptions = class
    class function Create: ICWFrequencyStudyOptions;
    class function CreateRemote(const MachineName: string): ICWFrequencyStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWBucklingStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWBucklingStudyOptions exposed by              
// the CoClass CWBucklingStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBucklingStudyOptions = class
    class function Create: ICWBucklingStudyOptions;
    class function CreateRemote(const MachineName: string): ICWBucklingStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWStaticStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWStaticStudyOptions exposed by              
// the CoClass CWStaticStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWStaticStudyOptions = class
    class function Create: ICWStaticStudyOptions;
    class function CreateRemote(const MachineName: string): ICWStaticStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWNonLinearStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWNonLinearStudyOptions exposed by              
// the CoClass CWNonLinearStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWNonLinearStudyOptions = class
    class function Create: ICWNonLinearStudyOptions;
    class function CreateRemote(const MachineName: string): ICWNonLinearStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWDynamicStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWDynamicStudyOptions exposed by              
// the CoClass CWDynamicStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDynamicStudyOptions = class
    class function Create: ICWDynamicStudyOptions;
    class function CreateRemote(const MachineName: string): ICWDynamicStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWDropTestStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWDropTestStudyOptions exposed by              
// the CoClass CWDropTestStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDropTestStudyOptions = class
    class function Create: ICWDropTestStudyOptions;
    class function CreateRemote(const MachineName: string): ICWDropTestStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWFatigueStudyOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWFatigueStudyOptions exposed by              
// the CoClass CWFatigueStudyOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWFatigueStudyOptions = class
    class function Create: ICWFatigueStudyOptions;
    class function CreateRemote(const MachineName: string): ICWFatigueStudyOptions;
  end;

// *********************************************************************//
// The Class CoCWDampingOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWDampingOptions exposed by              
// the CoClass CWDampingOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDampingOptions = class
    class function Create: ICWDampingOptions;
    class function CreateRemote(const MachineName: string): ICWDampingOptions;
  end;

// *********************************************************************//
// The Class CoCWStudyResultOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWStudyResultOptions exposed by              
// the CoClass CWStudyResultOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWStudyResultOptions = class
    class function Create: ICWStudyResultOptions;
    class function CreateRemote(const MachineName: string): ICWStudyResultOptions;
  end;

// *********************************************************************//
// The Class CoCWDropTestSetup provides a Create and CreateRemote method to          
// create instances of the default interface ICWDropTestSetup exposed by              
// the CoClass CWDropTestSetup. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDropTestSetup = class
    class function Create: ICWDropTestSetup;
    class function CreateRemote(const MachineName: string): ICWDropTestSetup;
  end;

// *********************************************************************//
// The Class CoCWDropTestResultOptions provides a Create and CreateRemote method to          
// create instances of the default interface ICWDropTestResultOptions exposed by              
// the CoClass CWDropTestResultOptions. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWDropTestResultOptions = class
    class function Create: ICWDropTestResultOptions;
    class function CreateRemote(const MachineName: string): ICWDropTestResultOptions;
  end;

// *********************************************************************//
// The Class CoCWResults provides a Create and CreateRemote method to          
// create instances of the default interface ICWResults exposed by              
// the CoClass CWResults. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWResults = class
    class function Create: ICWResults;
    class function CreateRemote(const MachineName: string): ICWResults;
  end;

// *********************************************************************//
// The Class CoCWRigidConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWRigidConnector exposed by              
// the CoClass CWRigidConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWRigidConnector = class
    class function Create: ICWRigidConnector;
    class function CreateRemote(const MachineName: string): ICWRigidConnector;
  end;

// *********************************************************************//
// The Class CoCWLinkConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWLinkConnector exposed by              
// the CoClass CWLinkConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWLinkConnector = class
    class function Create: ICWLinkConnector;
    class function CreateRemote(const MachineName: string): ICWLinkConnector;
  end;

// *********************************************************************//
// The Class CoCWElasticConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWElasticConnector exposed by              
// the CoClass CWElasticConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWElasticConnector = class
    class function Create: ICWElasticConnector;
    class function CreateRemote(const MachineName: string): ICWElasticConnector;
  end;

// *********************************************************************//
// The Class CoCWPinConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWPinConnector exposed by              
// the CoClass CWPinConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWPinConnector = class
    class function Create: ICWPinConnector;
    class function CreateRemote(const MachineName: string): ICWPinConnector;
  end;

// *********************************************************************//
// The Class CoCWSpringConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWSpringConnector exposed by              
// the CoClass CWSpringConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWSpringConnector = class
    class function Create: ICWSpringConnector;
    class function CreateRemote(const MachineName: string): ICWSpringConnector;
  end;

// *********************************************************************//
// The Class CoCWBoltConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWBoltConnector exposed by              
// the CoClass CWBoltConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWBoltConnector = class
    class function Create: ICWBoltConnector;
    class function CreateRemote(const MachineName: string): ICWBoltConnector;
  end;

// *********************************************************************//
// The Class CoCWSpotWeldConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWSpotWeldConnector exposed by              
// the CoClass CWSpotWeldConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWSpotWeldConnector = class
    class function Create: ICWSpotWeldConnector;
    class function CreateRemote(const MachineName: string): ICWSpotWeldConnector;
  end;

// *********************************************************************//
// The Class CoCWEdgeWeldConnector provides a Create and CreateRemote method to          
// create instances of the default interface ICWEdgeWeldConnector exposed by              
// the CoClass CWEdgeWeldConnector. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWEdgeWeldConnector = class
    class function Create: ICWEdgeWeldConnector;
    class function CreateRemote(const MachineName: string): ICWEdgeWeldConnector;
  end;

// *********************************************************************//
// The Class CoCWPlot provides a Create and CreateRemote method to          
// create instances of the default interface ICWPlot exposed by              
// the CoClass CWPlot. The functions are intended to be used by             
// clients wishing to automate the CoClass objects exposed by the         
// server of this typelibrary.                                            
// *********************************************************************//
  CoCWPlot = class
    class function Create: ICWPlot;
    class function CreateRemote(const MachineName: string): ICWPlot;
  end;

implementation

uses System.Win.ComObj;

class function CoCwAddincallback.Create: ICwAddincallback;
begin
  Result := CreateComObject(CLASS_CwAddincallback) as ICwAddincallback;
end;

class function CoCwAddincallback.CreateRemote(const MachineName: string): ICwAddincallback;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CwAddincallback) as ICwAddincallback;
end;

class function CoCosmosWorks.Create: ICosmosWorks;
begin
  Result := CreateComObject(CLASS_CosmosWorks) as ICosmosWorks;
end;

class function CoCosmosWorks.CreateRemote(const MachineName: string): ICosmosWorks;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CosmosWorks) as ICosmosWorks;
end;

class function CoCWModelDoc.Create: ICWModelDoc;
begin
  Result := CreateComObject(CLASS_CWModelDoc) as ICWModelDoc;
end;

class function CoCWModelDoc.CreateRemote(const MachineName: string): ICWModelDoc;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWModelDoc) as ICWModelDoc;
end;

class function CoCWStudyManager.Create: ICWStudyManager;
begin
  Result := CreateComObject(CLASS_CWStudyManager) as ICWStudyManager;
end;

class function CoCWStudyManager.CreateRemote(const MachineName: string): ICWStudyManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWStudyManager) as ICWStudyManager;
end;

class function CoCWStudy.Create: ICWStudy;
begin
  Result := CreateComObject(CLASS_CWStudy) as ICWStudy;
end;

class function CoCWStudy.CreateRemote(const MachineName: string): ICWStudy;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWStudy) as ICWStudy;
end;

class function CoCWSolidManager.Create: ICWSolidManager;
begin
  Result := CreateComObject(CLASS_CWSolidManager) as ICWSolidManager;
end;

class function CoCWSolidManager.CreateRemote(const MachineName: string): ICWSolidManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWSolidManager) as ICWSolidManager;
end;

class function CoCWSolidComponent.Create: ICWSolidComponent;
begin
  Result := CreateComObject(CLASS_CWSolidComponent) as ICWSolidComponent;
end;

class function CoCWSolidComponent.CreateRemote(const MachineName: string): ICWSolidComponent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWSolidComponent) as ICWSolidComponent;
end;

class function CoCWSolidBody.Create: ICWSolidBody;
begin
  Result := CreateComObject(CLASS_CWSolidBody) as ICWSolidBody;
end;

class function CoCWSolidBody.CreateRemote(const MachineName: string): ICWSolidBody;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWSolidBody) as ICWSolidBody;
end;

class function CoCWBeamManager.Create: ICWBeamManager;
begin
  Result := CreateComObject(CLASS_CWBeamManager) as ICWBeamManager;
end;

class function CoCWBeamManager.CreateRemote(const MachineName: string): ICWBeamManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBeamManager) as ICWBeamManager;
end;

class function CoCWBeamBody.Create: ICWBeamBody;
begin
  Result := CreateComObject(CLASS_CWBeamBody) as ICWBeamBody;
end;

class function CoCWBeamBody.CreateRemote(const MachineName: string): ICWBeamBody;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBeamBody) as ICWBeamBody;
end;

class function CoCWJoints.Create: ICWJoints;
begin
  Result := CreateComObject(CLASS_CWJoints) as ICWJoints;
end;

class function CoCWJoints.CreateRemote(const MachineName: string): ICWJoints;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWJoints) as ICWJoints;
end;

class function CoCWMesh.Create: ICWMesh;
begin
  Result := CreateComObject(CLASS_CWMesh) as ICWMesh;
end;

class function CoCWMesh.CreateRemote(const MachineName: string): ICWMesh;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWMesh) as ICWMesh;
end;

class function CoCWMeshControl.Create: ICWMeshControl;
begin
  Result := CreateComObject(CLASS_CWMeshControl) as ICWMeshControl;
end;

class function CoCWMeshControl.CreateRemote(const MachineName: string): ICWMeshControl;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWMeshControl) as ICWMeshControl;
end;

class function CoCWMaterial.Create: ICWMaterial;
begin
  Result := CreateComObject(CLASS_CWMaterial) as ICWMaterial;
end;

class function CoCWMaterial.CreateRemote(const MachineName: string): ICWMaterial;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWMaterial) as ICWMaterial;
end;

class function CoCWLoadsAndRestraintsManager.Create: ICWLoadsAndRestraintsManager;
begin
  Result := CreateComObject(CLASS_CWLoadsAndRestraintsManager) as ICWLoadsAndRestraintsManager;
end;

class function CoCWLoadsAndRestraintsManager.CreateRemote(const MachineName: string): ICWLoadsAndRestraintsManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWLoadsAndRestraintsManager) as ICWLoadsAndRestraintsManager;
end;

class function CoCWLoadsAndRestraints.Create: ICWLoadsAndRestraints;
begin
  Result := CreateComObject(CLASS_CWLoadsAndRestraints) as ICWLoadsAndRestraints;
end;

class function CoCWLoadsAndRestraints.CreateRemote(const MachineName: string): ICWLoadsAndRestraints;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWLoadsAndRestraints) as ICWLoadsAndRestraints;
end;

class function CoCWForce.Create: ICWForce;
begin
  Result := CreateComObject(CLASS_CWForce) as ICWForce;
end;

class function CoCWForce.CreateRemote(const MachineName: string): ICWForce;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWForce) as ICWForce;
end;

class function CoCWPressure.Create: ICWPressure;
begin
  Result := CreateComObject(CLASS_CWPressure) as ICWPressure;
end;

class function CoCWPressure.CreateRemote(const MachineName: string): ICWPressure;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWPressure) as ICWPressure;
end;

class function CoCWTemperature.Create: ICWTemperature;
begin
  Result := CreateComObject(CLASS_CWTemperature) as ICWTemperature;
end;

class function CoCWTemperature.CreateRemote(const MachineName: string): ICWTemperature;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWTemperature) as ICWTemperature;
end;

class function CoCWHeatPower.Create: ICWHeatPower;
begin
  Result := CreateComObject(CLASS_CWHeatPower) as ICWHeatPower;
end;

class function CoCWHeatPower.CreateRemote(const MachineName: string): ICWHeatPower;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWHeatPower) as ICWHeatPower;
end;

class function CoCWHeatFlux.Create: ICWHeatFlux;
begin
  Result := CreateComObject(CLASS_CWHeatFlux) as ICWHeatFlux;
end;

class function CoCWHeatFlux.CreateRemote(const MachineName: string): ICWHeatFlux;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWHeatFlux) as ICWHeatFlux;
end;

class function CoCWConvection.Create: ICWConvection;
begin
  Result := CreateComObject(CLASS_CWConvection) as ICWConvection;
end;

class function CoCWConvection.CreateRemote(const MachineName: string): ICWConvection;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWConvection) as ICWConvection;
end;

class function CoCWRadiation.Create: ICWRadiation;
begin
  Result := CreateComObject(CLASS_CWRadiation) as ICWRadiation;
end;

class function CoCWRadiation.CreateRemote(const MachineName: string): ICWRadiation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWRadiation) as ICWRadiation;
end;

class function CoCWGravity.Create: ICWGravity;
begin
  Result := CreateComObject(CLASS_CWGravity) as ICWGravity;
end;

class function CoCWGravity.CreateRemote(const MachineName: string): ICWGravity;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWGravity) as ICWGravity;
end;

class function CoCWCentriFugalForce.Create: ICWCentriFugalForce;
begin
  Result := CreateComObject(CLASS_CWCentriFugalForce) as ICWCentriFugalForce;
end;

class function CoCWCentriFugalForce.CreateRemote(const MachineName: string): ICWCentriFugalForce;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWCentriFugalForce) as ICWCentriFugalForce;
end;

class function CoCWRestraint.Create: ICWRestraint;
begin
  Result := CreateComObject(CLASS_CWRestraint) as ICWRestraint;
end;

class function CoCWRestraint.CreateRemote(const MachineName: string): ICWRestraint;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWRestraint) as ICWRestraint;
end;

class function CoCWRemoteLoad.Create: ICWRemoteLoad;
begin
  Result := CreateComObject(CLASS_CWRemoteLoad) as ICWRemoteLoad;
end;

class function CoCWRemoteLoad.CreateRemote(const MachineName: string): ICWRemoteLoad;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWRemoteLoad) as ICWRemoteLoad;
end;

class function CoCWBearingLoad.Create: ICWBearingLoad;
begin
  Result := CreateComObject(CLASS_CWBearingLoad) as ICWBearingLoad;
end;

class function CoCWBearingLoad.CreateRemote(const MachineName: string): ICWBearingLoad;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBearingLoad) as ICWBearingLoad;
end;

class function CoCWBaseExcitation.Create: ICWBaseExcitation;
begin
  Result := CreateComObject(CLASS_CWBaseExcitation) as ICWBaseExcitation;
end;

class function CoCWBaseExcitation.CreateRemote(const MachineName: string): ICWBaseExcitation;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBaseExcitation) as ICWBaseExcitation;
end;

class function CoCWDistributedMass.Create: ICWDistributedMass;
begin
  Result := CreateComObject(CLASS_CWDistributedMass) as ICWDistributedMass;
end;

class function CoCWDistributedMass.CreateRemote(const MachineName: string): ICWDistributedMass;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDistributedMass) as ICWDistributedMass;
end;

class function CoCWDynamicInitialCondition.Create: ICWDynamicInitialCondition;
begin
  Result := CreateComObject(CLASS_CWDynamicInitialCondition) as ICWDynamicInitialCondition;
end;

class function CoCWDynamicInitialCondition.CreateRemote(const MachineName: string): ICWDynamicInitialCondition;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDynamicInitialCondition) as ICWDynamicInitialCondition;
end;

class function CoCWFatigueEvent.Create: ICWFatigueEvent;
begin
  Result := CreateComObject(CLASS_CWFatigueEvent) as ICWFatigueEvent;
end;

class function CoCWFatigueEvent.CreateRemote(const MachineName: string): ICWFatigueEvent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFatigueEvent) as ICWFatigueEvent;
end;

class function CoCWShellManager.Create: ICWShellManager;
begin
  Result := CreateComObject(CLASS_CWShellManager) as ICWShellManager;
end;

class function CoCWShellManager.CreateRemote(const MachineName: string): ICWShellManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWShellManager) as ICWShellManager;
end;

class function CoCWShell.Create: ICWShell;
begin
  Result := CreateComObject(CLASS_CWShell) as ICWShell;
end;

class function CoCWShell.CreateRemote(const MachineName: string): ICWShell;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWShell) as ICWShell;
end;

class function CoCWContactManager.Create: ICWContactManager;
begin
  Result := CreateComObject(CLASS_CWContactManager) as ICWContactManager;
end;

class function CoCWContactManager.CreateRemote(const MachineName: string): ICWContactManager;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWContactManager) as ICWContactManager;
end;

class function CoCWContactSet.Create: ICWContactSet;
begin
  Result := CreateComObject(CLASS_CWContactSet) as ICWContactSet;
end;

class function CoCWContactSet.CreateRemote(const MachineName: string): ICWContactSet;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWContactSet) as ICWContactSet;
end;

class function CoCWContactComponent.Create: ICWContactComponent;
begin
  Result := CreateComObject(CLASS_CWContactComponent) as ICWContactComponent;
end;

class function CoCWContactComponent.CreateRemote(const MachineName: string): ICWContactComponent;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWContactComponent) as ICWContactComponent;
end;

class function CoCWThermalStudyOptions.Create: ICWThermalStudyOptions;
begin
  Result := CreateComObject(CLASS_CWThermalStudyOptions) as ICWThermalStudyOptions;
end;

class function CoCWThermalStudyOptions.CreateRemote(const MachineName: string): ICWThermalStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWThermalStudyOptions) as ICWThermalStudyOptions;
end;

class function CoCWFrequencyStudyOptions.Create: ICWFrequencyStudyOptions;
begin
  Result := CreateComObject(CLASS_CWFrequencyStudyOptions) as ICWFrequencyStudyOptions;
end;

class function CoCWFrequencyStudyOptions.CreateRemote(const MachineName: string): ICWFrequencyStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFrequencyStudyOptions) as ICWFrequencyStudyOptions;
end;

class function CoCWBucklingStudyOptions.Create: ICWBucklingStudyOptions;
begin
  Result := CreateComObject(CLASS_CWBucklingStudyOptions) as ICWBucklingStudyOptions;
end;

class function CoCWBucklingStudyOptions.CreateRemote(const MachineName: string): ICWBucklingStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBucklingStudyOptions) as ICWBucklingStudyOptions;
end;

class function CoCWStaticStudyOptions.Create: ICWStaticStudyOptions;
begin
  Result := CreateComObject(CLASS_CWStaticStudyOptions) as ICWStaticStudyOptions;
end;

class function CoCWStaticStudyOptions.CreateRemote(const MachineName: string): ICWStaticStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWStaticStudyOptions) as ICWStaticStudyOptions;
end;

class function CoCWNonLinearStudyOptions.Create: ICWNonLinearStudyOptions;
begin
  Result := CreateComObject(CLASS_CWNonLinearStudyOptions) as ICWNonLinearStudyOptions;
end;

class function CoCWNonLinearStudyOptions.CreateRemote(const MachineName: string): ICWNonLinearStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWNonLinearStudyOptions) as ICWNonLinearStudyOptions;
end;

class function CoCWDynamicStudyOptions.Create: ICWDynamicStudyOptions;
begin
  Result := CreateComObject(CLASS_CWDynamicStudyOptions) as ICWDynamicStudyOptions;
end;

class function CoCWDynamicStudyOptions.CreateRemote(const MachineName: string): ICWDynamicStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDynamicStudyOptions) as ICWDynamicStudyOptions;
end;

class function CoCWDropTestStudyOptions.Create: ICWDropTestStudyOptions;
begin
  Result := CreateComObject(CLASS_CWDropTestStudyOptions) as ICWDropTestStudyOptions;
end;

class function CoCWDropTestStudyOptions.CreateRemote(const MachineName: string): ICWDropTestStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDropTestStudyOptions) as ICWDropTestStudyOptions;
end;

class function CoCWFatigueStudyOptions.Create: ICWFatigueStudyOptions;
begin
  Result := CreateComObject(CLASS_CWFatigueStudyOptions) as ICWFatigueStudyOptions;
end;

class function CoCWFatigueStudyOptions.CreateRemote(const MachineName: string): ICWFatigueStudyOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWFatigueStudyOptions) as ICWFatigueStudyOptions;
end;

class function CoCWDampingOptions.Create: ICWDampingOptions;
begin
  Result := CreateComObject(CLASS_CWDampingOptions) as ICWDampingOptions;
end;

class function CoCWDampingOptions.CreateRemote(const MachineName: string): ICWDampingOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDampingOptions) as ICWDampingOptions;
end;

class function CoCWStudyResultOptions.Create: ICWStudyResultOptions;
begin
  Result := CreateComObject(CLASS_CWStudyResultOptions) as ICWStudyResultOptions;
end;

class function CoCWStudyResultOptions.CreateRemote(const MachineName: string): ICWStudyResultOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWStudyResultOptions) as ICWStudyResultOptions;
end;

class function CoCWDropTestSetup.Create: ICWDropTestSetup;
begin
  Result := CreateComObject(CLASS_CWDropTestSetup) as ICWDropTestSetup;
end;

class function CoCWDropTestSetup.CreateRemote(const MachineName: string): ICWDropTestSetup;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDropTestSetup) as ICWDropTestSetup;
end;

class function CoCWDropTestResultOptions.Create: ICWDropTestResultOptions;
begin
  Result := CreateComObject(CLASS_CWDropTestResultOptions) as ICWDropTestResultOptions;
end;

class function CoCWDropTestResultOptions.CreateRemote(const MachineName: string): ICWDropTestResultOptions;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWDropTestResultOptions) as ICWDropTestResultOptions;
end;

class function CoCWResults.Create: ICWResults;
begin
  Result := CreateComObject(CLASS_CWResults) as ICWResults;
end;

class function CoCWResults.CreateRemote(const MachineName: string): ICWResults;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWResults) as ICWResults;
end;

class function CoCWRigidConnector.Create: ICWRigidConnector;
begin
  Result := CreateComObject(CLASS_CWRigidConnector) as ICWRigidConnector;
end;

class function CoCWRigidConnector.CreateRemote(const MachineName: string): ICWRigidConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWRigidConnector) as ICWRigidConnector;
end;

class function CoCWLinkConnector.Create: ICWLinkConnector;
begin
  Result := CreateComObject(CLASS_CWLinkConnector) as ICWLinkConnector;
end;

class function CoCWLinkConnector.CreateRemote(const MachineName: string): ICWLinkConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWLinkConnector) as ICWLinkConnector;
end;

class function CoCWElasticConnector.Create: ICWElasticConnector;
begin
  Result := CreateComObject(CLASS_CWElasticConnector) as ICWElasticConnector;
end;

class function CoCWElasticConnector.CreateRemote(const MachineName: string): ICWElasticConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWElasticConnector) as ICWElasticConnector;
end;

class function CoCWPinConnector.Create: ICWPinConnector;
begin
  Result := CreateComObject(CLASS_CWPinConnector) as ICWPinConnector;
end;

class function CoCWPinConnector.CreateRemote(const MachineName: string): ICWPinConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWPinConnector) as ICWPinConnector;
end;

class function CoCWSpringConnector.Create: ICWSpringConnector;
begin
  Result := CreateComObject(CLASS_CWSpringConnector) as ICWSpringConnector;
end;

class function CoCWSpringConnector.CreateRemote(const MachineName: string): ICWSpringConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWSpringConnector) as ICWSpringConnector;
end;

class function CoCWBoltConnector.Create: ICWBoltConnector;
begin
  Result := CreateComObject(CLASS_CWBoltConnector) as ICWBoltConnector;
end;

class function CoCWBoltConnector.CreateRemote(const MachineName: string): ICWBoltConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWBoltConnector) as ICWBoltConnector;
end;

class function CoCWSpotWeldConnector.Create: ICWSpotWeldConnector;
begin
  Result := CreateComObject(CLASS_CWSpotWeldConnector) as ICWSpotWeldConnector;
end;

class function CoCWSpotWeldConnector.CreateRemote(const MachineName: string): ICWSpotWeldConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWSpotWeldConnector) as ICWSpotWeldConnector;
end;

class function CoCWEdgeWeldConnector.Create: ICWEdgeWeldConnector;
begin
  Result := CreateComObject(CLASS_CWEdgeWeldConnector) as ICWEdgeWeldConnector;
end;

class function CoCWEdgeWeldConnector.CreateRemote(const MachineName: string): ICWEdgeWeldConnector;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWEdgeWeldConnector) as ICWEdgeWeldConnector;
end;

class function CoCWPlot.Create: ICWPlot;
begin
  Result := CreateComObject(CLASS_CWPlot) as ICWPlot;
end;

class function CoCWPlot.CreateRemote(const MachineName: string): ICWPlot;
begin
  Result := CreateRemoteComObject(MachineName, CLASS_CWPlot) as ICWPlot;
end;

end.
