unit hakkinda;

interface

uses
  System.Classes,
  Vcl.Controls, Vcl.Forms, sPanel,
  sLabel, acImage, Vcl.StdCtrls, acPNG, Vcl.ExtCtrls;

type
  Thakkinda_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    bt_envanter_sImage: TsImage;
    bt_envanter_sLabel: TsLabel;
    altpanel_sPanel: TsPanel;
    hakkinda_sLabel: TsLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  hakkinda_Form: Thakkinda_Form;

implementation

{$R *.dfm}

end.
