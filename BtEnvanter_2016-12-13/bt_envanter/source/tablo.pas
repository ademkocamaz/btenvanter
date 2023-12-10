unit tablo;

interface

uses
  System.Classes, sDBComboBox;

type
  TTablo = class(TObject)
  private
    { private declarations }
    procedure IDSiraBosKontrolEt(tabloAdi: string);
  protected
    { protected declarations }
  public
    { public declarations }
    function SilinsinMi(mesaj: string): Boolean;
    procedure BosIDleriKontrolEt;
    procedure TurleriGetir(tabloAdi, alanAdi: string; Sender: TsDBComboBox);
  end;

var
  bt_tablo: TTablo;

implementation

uses
  Vcl.Forms, System.SysUtils, ZDataset, datamodule, Vcl.Dialogs, System.UITypes;

{ TTablo }
procedure TTablo.BosIDleriKontrolEt;
begin
  IDSiraBosKontrolEt('KULLANICI');
  IDSiraBosKontrolEt('KULLANICI_BILGI');
  IDSiraBosKontrolEt('KULLANICI_GIRIS_BILGI');

  IDSiraBosKontrolEt('ENVANTER');
  IDSiraBosKontrolEt('ENVANTER_BILGI');
  IDSiraBosKontrolEt('ENVANTER_GIRIS_BILGI');

  IDSiraBosKontrolEt('GIRIS');
  IDSiraBosKontrolEt('AYARLAR');

  IDSiraBosKontrolEt('LISANS');
  IDSiraBosKontrolEt('LISANS_BILGI');

end;

procedure TTablo.IDSiraBosKontrolEt(tabloAdi: string);
var
  tablo, tabloBosID, tabloBosIDYeni: TZReadOnlyQuery;
  kayitSayisi, sayac: Int64;
begin
  // ana tablo
  tablo := TZReadOnlyQuery.Create(Application);
  tablo.Connection := bt_data.bt_ZConnection;

  // bos id tablosu
  tabloBosID := TZReadOnlyQuery.Create(Application);
  tabloBosID.Connection := bt_data.bt_ZConnection;

  tabloBosIDYeni := TZReadOnlyQuery.Create(Application);
  tabloBosIDYeni.Connection := bt_data.bt_ZConnection;

  tablo.SQL.Text := 'SELECT * FROM ' + tabloAdi;
  tablo.Active := True;

  // tablo da kayýt varsa yoksa bakma
  if tablo.RecordCount > 0 then
  begin
    kayitSayisi := tablo.RecordCount;

    for sayac := 1 to kayitSayisi do
    begin
      tablo.Active := False;
      // sayacý id olarak kontrol et
      tablo.SQL.Text := 'SELECT ID FROM ' + tabloAdi + ' WHERE ID=' +
        (IntToStr(sayac));
      tablo.Active := True;

      // kayýt varsa bos id tablosunda da var mi kontrol et Primary Key hatasý almamak için
      if tablo.RecordCount > 0 then
      begin
        tabloBosID.Active := False;
        tabloBosID.SQL.Text := 'SELECT BOS_ID FROM ' + tabloAdi +
          '_BOS_ID WHERE BOS_ID=' + IntToStr(sayac);
        tabloBosID.Active := True;
        if tabloBosID.RecordCount > 0 then // bos id tablosunda da varsa sil
        begin
          tabloBosID.Active := False;
          tabloBosID.SQL.Text := 'DELETE FROM ' + tabloAdi +
            '_BOS_ID WHERE BOS_ID=' + IntToStr(sayac);
          tabloBosID.ExecSQL;
        end;
      end
      else // sayac id olarak tablo da kayýt mevcut deðilse
      begin
        // bos id tablosuna bakýyoruz kayýt var mý
        tabloBosID.Active := False;
        tabloBosID.SQL.Text := 'SELECT BOS_ID FROM ' + tabloAdi +
          '_BOS_ID WHERE BOS_ID=' + IntToStr(sayac);
        tabloBosID.Active := True;

        // sayac id olarak bos id tablosunda varsa
        if tabloBosID.RecordCount > 0 then // biþey yapma

        else
        begin
          tabloBosIDYeni.SQL.Text := 'INSERT INTO ' + tabloAdi +
            '_BOS_ID (BOS_ID) VALUES (' + IntToStr(sayac) + ')';
          tabloBosIDYeni.ExecSQL;
        end;

      end;

      tablo.Active := False;

    end;

    FreeAndNil(tablo);
    FreeAndNil(tabloBosID);
    FreeAndNil(tabloBosIDYeni);

  end
  else
  begin

  end;
end;

function TTablo.SilinsinMi(mesaj: string): Boolean;
var
  buttonSelected: Integer;
begin
  // Show a custom dialog
  buttonSelected := MessageDlg(mesaj, mtConfirmation, [mbYes, mbNo], 0);

  // Show the button type selected
  if buttonSelected = mrYes then
    Result := True
  else
    Result := False;
end;

procedure TTablo.TurleriGetir(tabloAdi, alanAdi: string; Sender: TsDBComboBox);
var
  bilgi_tipleri: TZReadOnlyQuery;
begin
  bilgi_tipleri := TZReadOnlyQuery.Create(Application);
  bilgi_tipleri.Connection := bt_data.bt_ZConnection;
  bilgi_tipleri.SQL.Text := 'SELECT ' + tabloAdi + '_' + alanAdi + ' FROM VIEW_'
    + tabloAdi + '_' + alanAdi + ';';
  // kullanici_bilgi_tipleri.ExecSQL;
  bilgi_tipleri.Active := True;
  bilgi_tipleri.FetchAll;
  bilgi_tipleri.First;
  while (not bilgi_tipleri.Eof) do
  begin
    Sender.Items.Add(bilgi_tipleri.FieldByName(tabloAdi + '_' + alanAdi)
      .AsString);
    bilgi_tipleri.Next;
  end;
  FreeAndNil(bilgi_tipleri);
end;

end.
