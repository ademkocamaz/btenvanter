unit lisans;

interface

type
  TLisans = class(TObject)
  private
    { private declarations }
  public
    { public declarations }
    procedure Yenile;
    // ---------------------------------
    // LISANS
    procedure Ekle;
    procedure Sil;
    procedure Duzenle;
    // ---------------------------------
    // LISANS_BILGI
    procedure BilgiEkle;
    procedure BilgiSil;
    procedure BilgiDuzenle;
  end;

var
  bt_lisans: TLisans;

implementation

uses
  tablo, datamodule, Vcl.Forms, yenilisans, Vcl.Dialogs, System.SysUtils,
  yenilisansbilgi;

{ TLisans }
procedure TLisans.Yenile;
begin
  bt_data.bt_lisans_ZTable.Refresh;
  bt_data.bt_lisans_bilgi_ZTable.Refresh;
  bt_data.bt_lisans_envanter_ZReadOnlyQuery.Refresh;
  bt_data.bt_envanter_lisans_ZReadOnlyQuery.Refresh;
  bt_data.bt_envanter_lisans_bilgi_ZReadOnlyQuery.Refresh;
end;

// LISANS
// ---------------------------------------------------------------------------------------------------------
procedure TLisans.Duzenle;
begin
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenilisans_Form, yenilisans_Form);
  bt_data.bt_lisans_ZTable.Edit;
  yenilisans_Form.Caption := 'Lisans/Düzenle';
  yenilisans_Form.ShowModal;
  FreeAndNil(yenilisans_Form);
end;

procedure TLisans.Ekle;
begin
  Application.CreateForm(Tyenilisans_Form, yenilisans_Form);
  bt_data.bt_lisans_ZTable.Insert;
  yenilisans_Form.Caption := 'Lisans/Ekle';
  yenilisans_Form.ShowModal;
  FreeAndNil(yenilisans_Form);
end;

procedure TLisans.Sil;
begin
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_lisans_ZTable.FieldByName('ID')
    .AsString + ' No''lu' + bt_data.bt_lisans_ZTable.FieldByName('TIPI')
    .AsString + ' ' + bt_data.bt_lisans_ZTable.FieldByName('ACIKLAMA').AsString
    + '" kayýt ve baðlý tüm kayýtlar silinecektir emin misiniz?')) then
  begin
    bt_data.bt_lisans_ZTable.Delete;
    bt_lisans.Yenile;
  end;
end;

// LISANS_BILGI
// ---------------------------------------------------------------------------------------------------------
procedure TLisans.BilgiDuzenle;
begin
  if bt_data.bt_lisans_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenilisansbilgi_Form, yenilisansbilgi_Form);
  bt_data.bt_lisans_bilgi_ZTable.Edit;
  yenilisansbilgi_Form.Caption := 'Lisans/Bilgi/Duzenle';
  yenilisansbilgi_Form.ShowModal;
  FreeAndNil(yenilisansbilgi_Form);
end;

procedure TLisans.BilgiEkle;
begin
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenilisansbilgi_Form, yenilisansbilgi_Form);
  bt_data.bt_lisans_bilgi_ZTable.Insert;
  yenilisansbilgi_Form.Caption := 'Envanter/Bilgi/Ekle';
  yenilisansbilgi_Form.ShowModal;
  FreeAndNil(yenilisansbilgi_Form);
end;

procedure TLisans.BilgiSil;
begin
  if bt_data.bt_lisans_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_lisans_bilgi_ZTable.FieldByName
    ('TIPI').AsString + ' ' + bt_data.bt_lisans_bilgi_ZTable.FieldByName
    ('ACIKLAMA').AsString + ' ' + bt_data.bt_lisans_bilgi_ZTable.FieldByName
    ('DEGER1').AsString + '" kayýt silinecektir emin misiniz?')) then
  begin
    bt_data.bt_lisans_bilgi_ZTable.Delete;
    bt_lisans.Yenile
  end;
end;

end.
