unit envanterdetay;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.SysUtils,
  SMDBGrid,
  sLabel, sPanel, sDBNavigator, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  Tenvanterdetay_Form = class(TForm)
    envanter_envanterler_sPanel: TsPanel;
    envanter_menu_sPanel: TsPanel;
    envanter_sLabel: TsLabel;
    envanter_SMDBGrid: TSMDBGrid;
    envanter_lisans_sPanel: TsPanel;
    envanter_lisans_menu_sPanel: TsPanel;
    envanter_lisans_sLabel: TsLabel;
    envanter_lisans_SMDBGrid: TSMDBGrid;
    envanter_bilgi_sPanel: TsPanel;
    envanter_bilgi_menu_sPanel: TsPanel;
    envanter_bilgi_sLabel: TsLabel;
    envanter_bilgi_SMDBGrid: TSMDBGrid;
    envanter_giris_bilgi_sPanel: TsPanel;
    envanter_giris_bilgi_menu_sPanel: TsPanel;
    envanter_giris_bilgi_sLabel: TsLabel;
    envanter_giris_bilgi_SMDBGrid: TSMDBGrid;
    envanter_bilgi_sDBNavigator: TsDBNavigator;
    sDBNavigator1: TsDBNavigator;
    sDBNavigator2: TsDBNavigator;
    sDBNavigator3: TsDBNavigator;
  private
    { Private declarations }
    envanterID: Int64;
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;ID: Int64);overload;
  end;

var
  envanterdetay_Form: Tenvanterdetay_Form;

implementation

{$R *.dfm}

{ Tenvanterdetay_Form }

constructor Tenvanterdetay_Form.Create(AOwner:TComponent;ID: Int64);
begin
  inherited Create(AOwner);
  envanterID := ID;
  showmessage(inttostr(envanterID));
end;

end.


