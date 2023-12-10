unit yenikullanici;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, sPanel, StdCtrls, Buttons, sBitBtn, sDBEdit, sDBComboBox,
  Data.DB, Vcl.DBCtrls, Vcl.Mask;

type
  Tyenikullanici_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenikullanici_kaydet_sBitBtn: TsBitBtn;
    yenikullanici_iptal_sBitBtn: TsBitBtn;
    yenikullanici_ADI_sDBEdit: TsDBEdit;
    yenikullanici_SOYADI_sDBEdit: TsDBEdit;
    yenikullanici_TELEFON_DAHILI_sDBEdit: TsDBEdit;
    yenikullanici_TELEFON_GSM_sDBEdit: TsDBEdit;
    yenikullanici_BIRIM_sDBComboBox: TsDBComboBox;
    yenikullanici_UNVAN_sDBEdit: TsDBEdit;
    yenikullanici_EMAIL_sDBEdit: TsDBEdit;
    procedure yenikullanici_kaydet_sBitBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure yenikullanici_iptal_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  yenikullanici_Form: Tyenikullanici_Form;

implementation

uses
  datamodule, tablo, kullanici;

{$R *.dfm}

procedure Tyenikullanici_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_kullanici_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_kullanici_ZTable.Cancel;
end;

procedure Tyenikullanici_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('KULLANICI', 'BIRIM', yenikullanici_BIRIM_sDBComboBox);
end;

procedure Tyenikullanici_Form.yenikullanici_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenikullanici_Form.yenikullanici_kaydet_sBitBtnClick
  (Sender: TObject);
begin
  bt_data.bt_kullanici_ZTable.Post;
  bt_kullanici.Yenile;
  Self.Close;
end;

end.
