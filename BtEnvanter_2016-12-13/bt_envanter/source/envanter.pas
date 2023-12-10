unit envanter;

interface

uses
  Data.DB;

type
  TEnvanter = class(TObject)
  private
    { private declarations }
  protected
    { protected declarations }
  public
    { public declarations }
    procedure Yenile;
    // ---------------------------------
    // ENVANTER
    procedure Ekle;
    procedure Sil;
    procedure Duzenle;
    // ---------------------------------
    // ENVANTER_BILGI
    procedure BilgiEkle;
    procedure BilgiSil;
    procedure BilgiDuzenle;
    // ---------------------------------
    // ENVANTER_GIRIS_BILGI
    procedure GirisEkle;
    procedure GirisSil;
    procedure GirisDuzenle;
    // ---------------------------------

  end;

var
  bt_envanter: TEnvanter;

implementation

uses
  Vcl.Forms, tablo, Vcl.Dialogs, yenienvanter, datamodule, yenienvanterbilgi, System.SysUtils, yenienvantergirisbilgi;

{ TEnvanter }

procedure TEnvanter.Yenile;
var
  ID:Int64;
begin
  ID:=bt_data.bt_envanter_ZTable.FieldByName('ID').AsLargeInt;

  bt_data.bt_envanter_ZTable.Refresh;
  bt_data.bt_envanter_bilgi_ZTable.Refresh;
  bt_data.bt_envanter_giris_bilgi_ZTable.Refresh;
  bt_data.bt_envanter_lisans_ZReadOnlyQuery.Refresh;
  bt_data.bt_envanter_kullanici_ZReadOnlyQuery.Refresh;
  bt_data.bt_kullanici_envanter_ZReadOnlyQuery.Refresh;

  bt_data.bt_envanter_ZTable.Locate('ID',ID,[loCaseInsensitive]);
end;

// ENVANTER
// ---------------------------------------------------------------------------------------------------------
procedure TEnvanter.Duzenle;
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenienvanter_Form, yenienvanter_Form);
  bt_data.bt_envanter_ZTable.Edit;
  yenienvanter_Form.Caption := 'Envanter/Düzenle';
  yenienvanter_Form.ShowModal;
  FreeAndNil(yenienvanter_Form);
end;

procedure TEnvanter.Ekle;
begin
  Application.CreateForm(Tyenienvanter_Form, yenienvanter_Form);
  bt_data.bt_envanter_ZTable.Insert;
  yenienvanter_Form.Caption := 'Envanter/Ekle';
  yenienvanter_Form.ShowModal;
  FreeAndNil(yenienvanter_Form);
end;

procedure TEnvanter.Sil;
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_envanter_ZTable.FieldByName('ID').AsString + ' No''lu ' + bt_data.bt_envanter_ZTable.FieldByName('TIPI').AsString + ' ' + bt_data.bt_envanter_ZTable.FieldByName('MARKA').AsString + ' ' + bt_data.bt_envanter_ZTable.FieldByName('MODEL').AsString + '" kayýt ve baðlý tüm kayýtlar silinecektir emin misiniz?')) then
  begin
    bt_data.bt_envanter_ZTable.Delete;
    bt_envanter.Yenile;
  end;

end;
// ---------------------------------------------------------------------------------------------------------

// ENVANTER_BILGI

procedure TEnvanter.BilgiDuzenle;
begin
  if bt_data.bt_envanter_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenienvanterbilgi_Form, yenienvanterbilgi_Form);
  bt_data.bt_envanter_bilgi_ZTable.Edit;
  yenienvanterbilgi_Form.Caption := 'Envanter/Bilgi/Duzenle';
  yenienvanterbilgi_Form.ShowModal;
  FreeAndNil(yenienvanterbilgi_Form);
end;

procedure TEnvanter.BilgiEkle;
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenienvanterbilgi_Form, yenienvanterbilgi_Form);
  bt_data.bt_envanter_bilgi_ZTable.Insert;
  yenienvanterbilgi_Form.Caption := 'Envanter/Bilgi/Ekle';
  yenienvanterbilgi_Form.ShowModal;
  FreeAndNil(yenienvanterbilgi_Form);
end;

procedure TEnvanter.BilgiSil;
begin
  if bt_data.bt_envanter_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_envanter_bilgi_ZTable.FieldByName('TIPI').AsString + ' ' + bt_data.bt_envanter_bilgi_ZTable.FieldByName('ACIKLAMA').AsString + ' ' + bt_data.bt_envanter_bilgi_ZTable.FieldByName('DEGER1').AsString + '" kayýt silinecektir emin misiniz?')) then
  begin
    bt_data.bt_envanter_bilgi_ZTable.Delete;
    bt_envanter.Yenile
  end;
end;
// ---------------------------------------------------------------------------------------------------------

// ENVANTER_GIRIS_BILGI

procedure TEnvanter.GirisDuzenle;
begin
  if bt_data.bt_envanter_giris_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenienvantergirisbilgi_Form, yenienvantergirisbilgi_Form);
  bt_data.bt_envanter_giris_bilgi_ZTable.Edit;
  yenienvantergirisbilgi_Form.Caption := 'Envanter/Giriþ Bilgisi/Düzenle';
  yenienvantergirisbilgi_Form.ShowModal;
  FreeAndNil(yenienvantergirisbilgi_Form);
end;

procedure TEnvanter.GirisEkle;
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tyenienvantergirisbilgi_Form, yenienvantergirisbilgi_Form);
  bt_data.bt_envanter_giris_bilgi_ZTable.Insert;
  yenienvantergirisbilgi_Form.Caption := 'Envanter/Giriþ Bilgisi/Ekle';
  yenienvantergirisbilgi_Form.ShowModal;
  FreeAndNil(yenienvantergirisbilgi_Form);
end;

procedure TEnvanter.GirisSil;
begin
  if bt_data.bt_envanter_giris_bilgi_ZTable.RecordCount = 0 then
    Exit;
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('"' + bt_data.bt_envanter_giris_bilgi_ZTable.FieldByName('TIPI').AsString + ' ' + bt_data.bt_envanter_giris_bilgi_ZTable.FieldByName('KULLANICI_ADI').AsString + ' ' + bt_data.bt_envanter_giris_bilgi_ZTable.FieldByName('SIFRE').AsString + '" kayýt silinecektir emin misiniz?')) then
  begin
    bt_data.bt_envanter_giris_bilgi_ZTable.Delete;
    bt_envanter.Yenile;
  end;
end;

end.


