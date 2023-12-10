unit kullanicilar;

interface

uses
  System.Classes, Vcl.Controls, Vcl.Forms, Data.DB, acDBGrid, sDBEdit, sBitBtn, sPanel,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tkullanicilar_Form = class(TForm)
    ayar_sPanel: TsPanel;
    yenikullanici_kaydet_sBitBtn: TsBitBtn;
    yenikullanici_iptal_sBitBtn: TsBitBtn;
    kullanicilar_KULLANICI_ADI_sDBEdit: TsDBEdit;
    kullanicilar_SIFRE_sDBEdit: TsDBEdit;
    ayarlar_sDBGrid: TsDBGrid;
    procedure yenikullanici_kaydet_sBitBtnClick(Sender: TObject);
    procedure yenikullanici_iptal_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kullanicilar_Form: Tkullanicilar_Form;

implementation

uses
  datamodule;

{$R *.dfm}

procedure Tkullanicilar_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if bt_data.bt_kullanicilar_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_kullanicilar_ZTable.Cancel;
end;

procedure Tkullanicilar_Form.yenikullanici_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tkullanicilar_Form.yenikullanici_kaydet_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_kullanicilar_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_kullanicilar_ZTable.Post;
  Self.Close;
end;

end.


