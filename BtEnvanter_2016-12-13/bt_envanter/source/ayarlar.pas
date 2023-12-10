unit ayarlar;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, sDBEdit, sBitBtn, sPanel, sComboBoxes, Data.DB, acDBGrid,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls;

type
  Tayarlar_Form = class(TForm)
    ayar_sPanel: TsPanel;
    yenikullanici_kaydet_sBitBtn: TsBitBtn;
    yenikullanici_iptal_sBitBtn: TsBitBtn;
    ayarlar_AYAR_sDBEdit: TsDBEdit;
    ayarlar_DEGER1_sDBEdit: TsDBEdit;
    ayarlar__sDBEdit: TsDBEdit;
    yenikullanici_TELEFON_GSM_sDBEdit: TsDBEdit;
    sSkinSelector1: TsSkinSelector;
    ayarlar_sDBGrid: TsDBGrid;
    gorunum_sPanel: TsPanel;
    procedure yenikullanici_kaydet_sBitBtnClick(Sender: TObject);
    procedure yenikullanici_iptal_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ayarlar_Form: Tayarlar_Form;

implementation

uses
  datamodule;

{$R *.dfm}

procedure Tayarlar_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if bt_data.bt_ayarlar_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_ayarlar_ZTable.Cancel;

end;

procedure Tayarlar_Form.yenikullanici_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tayarlar_Form.yenikullanici_kaydet_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_ayarlar_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_ayarlar_ZTable.Post;
  Self.Close;
end;

end.


