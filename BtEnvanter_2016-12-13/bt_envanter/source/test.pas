unit test;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZStoredProcedure, Grids, DBGrids, StdCtrls,
  sButton, ZDataset, ZAbstractConnection, ZConnection, sEdit, frxClass,
  frxDBSet, ToolWin, ActnMan, ActnCtrls, ExtCtrls, VirtualTrees, acDBGrid,
  sMemo, System.AnsiStrings,
  ZAbstractTable, ZAbstractDataset, FireDAC.Phys.FBDef, FireDAC.Stan.Intf,
  FireDAC.Phys, FireDAC.Phys.IBBase, FireDAC.Phys.FB, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.ScriptCommands,
  FireDAC.Stan.Util, FireDAC.Comp.Script, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, SMDBGrid;

type
  Ttest_Form = class(TForm)
    DBGrid1: TDBGrid;
    ZStoredProc1: TZStoredProc;
    ZTable1: TZTable;
    sButton1: TsButton;
    ZConnection1: TZConnection;
    sEdit1: TsEdit;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    frxDBDataset2: TfrxDBDataset;
    sButton2: TsButton;
    ZTable2: TZTable;
    sButton3: TsButton;
    DataSource1: TDataSource;
    ZTable3: TZTable;
    frxDBDataset3: TfrxDBDataset;
    VirtualStringTree1: TVirtualStringTree;
    ZReadOnlyQuery1: TZReadOnlyQuery;
    sDBGrid1: TsDBGrid;
    DataSource2: TDataSource;
    sMemo1: TsMemo;
    sButton4: TsButton;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    FDScript1: TFDScript;
    DataSource3: TDataSource;
    kullanici_SMDBGrid: TSMDBGrid;
    procedure sButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  test_Form: Ttest_Form;

implementation

{$R *.dfm}

procedure Ttest_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  // ZConnection1.Disconnect;
end;

procedure Ttest_Form.FormCreate(Sender: TObject);
begin
   ZConnection1.Database := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'data\BT.FDB';
   ZConnection1.LibraryLocation := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName)) + 'lib\fbembed.dll';
   ZConnection1.Connect;
   ZTable1.Active := True;
   ZTable1.Refresh;
   ZReadOnlyQuery1.Active := True;
end;

procedure Ttest_Form.sButton1Click(Sender: TObject);
begin
  frxReport1.ShowReport;
end;

procedure Ttest_Form.sButton2Click(Sender: TObject);
begin
  ZTable1.Locate('ADI', 'KAMÝL', []);
end;

end.
