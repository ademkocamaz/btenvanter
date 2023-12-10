unit yenikullanicigirisbilgi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, sBitBtn, ExtCtrls, sPanel, Vcl.DBCtrls,
  sDBComboBox, sDBEdit, Data.DB, System.UITypes, Vcl.Mask;

type
  Tyenikullanicigirisbilgi_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenikullanicigirisbilgi_kaydet_sBitBtn: TsBitBtn;
    yenikullanicigirisbilgi_iptal_sBitBtn: TsBitBtn;
    yenikullanicigirisbilgi_TIPI_sDBComboBox: TsDBComboBox;
    yenikullanicigirisbilgi_KULLANICI_ADI_sDBEdit: TsDBEdit;
    yenikullanicigirisbilgi_SIFRE_sDBEdit: TsDBEdit;
    yenikullanicigirisbilgi_ACIKLAMA_sDBEdit: TsDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure yenikullanicigirisbilgi_kaydet_sBitBtnClick(Sender: TObject);
    procedure yenikullanicigirisbilgi_iptal_sBitBtnClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenikullanicigirisbilgi_Form: Tyenikullanicigirisbilgi_Form;

implementation

{$R *.dfm}

uses
  datamodule, tablo;

procedure Tyenikullanicigirisbilgi_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if bt_data.bt_kullanici_giris_bilgi_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_kullanici_giris_bilgi_ZTable.Cancel;
end;

procedure Tyenikullanicigirisbilgi_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('KULLANICI_GIRIS_BILGI', 'TIPI',
    yenikullanicigirisbilgi_TIPI_sDBComboBox);
end;

function Tyenikullanicigirisbilgi_Form.KontrolEt: Boolean;
begin
  if yenikullanicigirisbilgi_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit;
  end;
  Result := True;
end;

procedure Tyenikullanicigirisbilgi_Form.
  yenikullanicigirisbilgi_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenikullanicigirisbilgi_Form.
  yenikullanicigirisbilgi_kaydet_sBitBtnClick(Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_kullanici_giris_bilgi_ZTable.Post;
    bt_data.bt_kullanici_giris_bilgi_ZTable.Refresh;
    Self.Close;
  end;
end;

end.
