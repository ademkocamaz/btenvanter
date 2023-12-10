unit kullanici;

interface

type
  TKullanici = class(TObject)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure Yenile;
    // ---------------------------------
    // KULLANICI
    procedure Ekle;
    procedure Sil;
    procedure Duzenle;

    // ---------------------------------
    // KULLANICI_BILGI
    procedure BilgiEkle;
    procedure BilgiSil;
    procedure BilgiDuzenle;

    // ---------------------------------
    // KULLANICI_GIRIS_BILGI
    procedure GirisEkle;
    procedure GirisSil;
    procedure GirisDuzenle;
    // ---------------------------------
  end;

var
  bt_kullanici: TKullanici;

implementation

uses
  DB, tablo, Vcl.Forms, yenikullanici, datamodule, yenikullanicibilgi,
  yenikullanicigirisbilgi, System.SysUtils, Vcl.Dialogs;

{ TKullanici }

procedure TKullanici.Yenile;
var
  ID:Variant;
begin
  ID:=bt_data.bt_kullanici_ZTable.FieldByName('ID').AsVariant;

  bt_data.bt_kullanici_ZTable.Refresh;
  bt_data.bt_kullanici_bilgi_ZTable.Refresh;
  bt_data.bt_kullanici_giris_bilgi_ZTable.Refresh;
  bt_data.bt_kullanici_envanter_ZReadOnlyQuery.Refresh;
  bt_data.bt_envanter_kullanici_ZReadOnlyQuery.Refresh;

  bt_data.bt_kullanici_ZTable.Locate('ID',ID,[loCaseInsensitive]);
end;

// KULLANICI_BILGI
// ---------------------------------------------------------------------------------------------------------

procedure TKullanici.BilgiDuzenle;
begin
  if bt_data.bt_kullanici_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenikullanicibilgi_Form, yenikullanicibilgi_Form);
  bt_data.bt_kullanici_bilgi_ZTable.Edit;
  yenikullanicibilgi_Form.Caption := 'Kullanýcý/Bilgi/Düzenle';
  yenikullanicibilgi_Form.ShowModal;
  FreeAndNil(yenikullanicibilgi_Form);
end;

procedure TKullanici.BilgiEkle;
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;

  Application.CreateForm(Tyenikullanicibilgi_Form, yenikullanicibilgi_Form);
  bt_data.bt_kullanici_bilgi_ZTable.Insert;
  yenikullanicibilgi_Form.Caption := 'Kullanýcý/Bilgi/Ekle';
  yenikullanicibilgi_Form.ShowModal;
  FreeAndNil(yenikullanicibilgi_Form);
end;

procedure TKullanici.BilgiSil;
begin
  if bt_data.bt_kullanici_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_kullanici_bilgi_ZTable.FieldByName
    ('TIPI').AsString + ' ' + bt_data.bt_kullanici_bilgi_ZTable.FieldByName
    ('DEGER1').AsString + '" kayýt silinecektir emin misiniz?')) then
  begin
    bt_data.bt_kullanici_bilgi_ZTable.Delete;
    bt_kullanici.Yenile
  end;
end;

// ---------------------------------------------------------------------------------------------------------

// KULLANICI_GIRIS_BILGI
// ---------------------------------------------------------------------------------------------------------
procedure TKullanici.GirisDuzenle;
begin
  if bt_data.bt_kullanici_giris_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenikullanicigirisbilgi_Form,
    yenikullanicigirisbilgi_Form);
  bt_data.bt_kullanici_giris_bilgi_ZTable.Edit;
  yenikullanicigirisbilgi_Form.Caption := 'Kullanýcý/Giriþ Bilgisi/Düzenle';
  yenikullanicigirisbilgi_Form.ShowModal;
  FreeAndNil(yenikullanicigirisbilgi_Form);
end;

procedure TKullanici.GirisEkle;
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenikullanicigirisbilgi_Form,
    yenikullanicigirisbilgi_Form);
  bt_data.bt_kullanici_giris_bilgi_ZTable.Insert;
  yenikullanicigirisbilgi_Form.Caption := 'Kullanýcý/Giriþ Bilgisi/Ekle';
  yenikullanicigirisbilgi_Form.ShowModal;
  FreeAndNil(yenikullanicigirisbilgi_Form);
end;

procedure TKullanici.GirisSil;
begin
  if bt_data.bt_kullanici_giris_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_kullanici_giris_bilgi_ZTable.
    FieldByName('TIPI').AsString + ' ' +
    bt_data.bt_kullanici_giris_bilgi_ZTable.FieldByName('KULLANICI_ADI')
    .AsString + ' ' + bt_data.bt_kullanici_giris_bilgi_ZTable.FieldByName
    ('SIFRE').AsString + '" kayýt silinecektir emin misiniz?')) then
  begin
    bt_data.bt_kullanici_giris_bilgi_ZTable.Delete;
    //bt_data.bt_kullanici_giris_bilgi_ZTable.Refresh;
  end;
end;
// ---------------------------------------------------------------------------------------------------------

// KULLANICI
// ---------------------------------------------------------------------------------------------------------

procedure TKullanici.Ekle;
begin
  Application.CreateForm(Tyenikullanici_Form, yenikullanici_Form);
  bt_data.bt_kullanici_ZTable.Insert;
  yenikullanici_Form.Caption := 'Kullanýcý/Ekle';
  yenikullanici_Form.ShowModal;
  FreeAndNil(yenikullanici_Form);
end;

procedure TKullanici.Sil;
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_kullanici_ZTable.FieldByName('ID')
    .AsString + ' No''lu ' + bt_data.bt_kullanici_ZTable.FieldByName('ADI')
    .AsString + ' ' + bt_data.bt_kullanici_ZTable.FieldByName('SOYADI').AsString
    + '" kayýt ve baðlý tüm kayýtlar silinecektir emin misiniz?')) then
  begin
    bt_data.bt_kullanici_ZTable.Delete;
    bt_data.bt_kullanici_ZTable.Refresh;
  end;

end;

procedure TKullanici.Duzenle;
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanici seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenikullanici_Form, yenikullanici_Form);
  bt_data.bt_kullanici_ZTable.Edit;
  yenikullanici_Form.Caption := 'Kullanýcý/Düzenle';
  yenikullanici_Form.ShowModal;
  FreeAndNil(yenikullanici_Form);
end;
// ---------------------------------------------------------------------------------------------------------

end.
