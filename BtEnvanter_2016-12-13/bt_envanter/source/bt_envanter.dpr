program bt_envanter;

uses
  Forms,
  anaform in 'anaform.pas' {anaform_Form},
  datamodule in 'datamodule.pas' {bt_data: TDataModule},
  yenienvanter in 'yenienvanter.pas' {yenienvanter_Form},
  yenikullanici in 'yenikullanici.pas' {yenikullanici_Form},
  acilis in 'acilis.pas' {acilis_Form},
  giris in 'giris.pas' {giris_Form},
  yenikullanicibilgi in 'yenikullanicibilgi.pas' {yenikullanicibilgi_Form},
  yenikullanicigirisbilgi in 'yenikullanicigirisbilgi.pas' {yenikullanicigirisbilgi_Form},
  kullanici in 'kullanici.pas',
  tablo in 'tablo.pas',
  envanter in 'envanter.pas',
  kullaniciliste in 'kullaniciliste.pas' {kullaniciliste_Form},
  envanterliste in 'envanterliste.pas' {envanterliste_Form},
  kullanicidetay in 'kullanicidetay.pas' {kullanicidetay_Form},
  envanterdetay in 'envanterdetay.pas' {envanterdetay_Form},
  lisansdetay in 'lisansdetay.pas' {lisansdetay_Form},
  yenienvanterbilgi in 'yenienvanterbilgi.pas' {yenienvanterbilgi_Form},
  yenienvantergirisbilgi in 'yenienvantergirisbilgi.pas' {yenienvantergirisbilgi_Form},
  yenilisans in 'yenilisans.pas' {yenilisans_Form},
  yenilisansbilgi in 'yenilisansbilgi.pas' {yenilisansbilgi_Form},
  lisans in 'lisans.pas',
  lisansliste in 'lisansliste.pas' {lisansliste_Form},
  ayarlar in 'ayarlar.pas' {ayarlar_Form},
  hakkinda in 'hakkinda.pas' {hakkinda_Form},
  yenigiris in 'yenigiris.pas' {yenigiris_Form},
  kullanicilar in 'kullanicilar.pas' {kullanicilar_Form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'BT Envanter';

  Application.CreateForm(Tbt_data, bt_data);
  Application.Run;

end.
