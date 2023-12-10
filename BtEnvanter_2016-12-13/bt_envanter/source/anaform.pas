unit anaform;

interface

uses
  DB, Dialogs, Forms, sPanel, sBitBtn, DBGrids, sLabel, Menus, sSkinProvider, sSkinManager, sPageControl, Windows, acImage, SysUtils, StdCtrls, ExtCtrls, Buttons, Grids, Controls, ComCtrls, Classes, Mask, SMDBGrid, sDBEdit, ZDataset, frxClass,
  Vcl.DBCtrls, acPNG;

type
  Tanaform_Form = class(TForm)
    kullanici_sPanel: TsPanel;
    kullanici_menu_sPanel: TsPanel;
    bt_MainMenu: TMainMenu;
    kullanici_MainMenu: TMenuItem;
    envanter_MainMenu: TMenuItem;
    kullanici_ekle_MainMenu: TMenuItem;
    kullanici_sil_MainMenu: TMenuItem;
    envanter_ekle_MainMenu: TMenuItem;
    envanter_sil_MainMenu: TMenuItem;
    raporlar_MainMenu: TMenuItem;
    araclar_MainMenu: TMenuItem;
    hakkinda_MainMenu: TMenuItem;
    ayarlar_MainMenu: TMenuItem;
    bt_sSkinProvider: TsSkinProvider;
    bt_sSkinManager: TsSkinManager;
    bt_sPageControl: TsPageControl;
    kullanici_sTabSheet: TsTabSheet;
    envanter_sTabSheet: TsTabSheet;
    kullanici_ust_sPanel: TsPanel;
    kullanicilar_sLabel: TsLabel;
    kullanicilar_sPanel: TsPanel;
    kullanici_sImage: TsImage;
    kullanici_kullanicilar_sPanel: TsPanel;
    kullanici_envanter_sPanel: TsPanel;
    kullanici_giris_bilgi_sPanel: TsPanel;
    kullanici_ekle_sBitBtn: TsBitBtn;
    kullanici_sil_sBitBtn: TsBitBtn;
    kullanici_duzenle_sBitBtn: TsBitBtn;
    kullanici_envanter_menu_sPanel: TsPanel;
    kullanici_envanter_ekle_sBitBtn: TsBitBtn;
    kullanici_envanter_sil_sBitBtn: TsBitBtn;
    kullanici_giris_bilgi_menu_sPanel: TsPanel;
    kullanici_giris_bilgi_ekle_sBitBtn: TsBitBtn;
    kullanici_giris_bilgi_sil_sBitBtn: TsBitBtn;
    kullanici_giris_bilgi_duzenle_sBitBtn: TsBitBtn;
    lisans_sTabSheet: TsTabSheet;
    kullanici_bilgi_sPanel: TsPanel;
    kullanici_bilgi_menu_sPanel: TsPanel;
    kullanici_bilgi_ekle_sBitBtn: TsBitBtn;
    kullanici_bilgi_sil_sBitBtn: TsBitBtn;
    kullanici_bilgi_duzenle_sBitBtn: TsBitBtn;
    envanter_ust_sPanel: TsPanel;
    envanterler_sPanel: TsPanel;
    envanterler_sLabel: TsLabel;
    envanter_sImage: TsImage;
    lisans_ust_sPanel: TsPanel;
    lisanslar_sPanel: TsPanel;
    lisanslar_sLabel: TsLabel;
    lisans_sImage: TsImage;
    lisans_lisanslar_sPanel: TsPanel;
    lisans_menu_sPanel: TsPanel;
    lisans_ekle_sBitBtn: TsBitBtn;
    lisans_sil_sBitBtn: TsBitBtn;
    lisans_duzenle_sBitBtn: TsBitBtn;
    lisans_bilgi_sPanel: TsPanel;
    lisans_bilgi_menu_sPanel: TsPanel;
    lisans_bilgi_ekle_sBitBtn: TsBitBtn;
    lisans_bilgi_sil_sBitBtn: TsBitBtn;
    lisans_bilgi_duzenle_sBitBtn: TsBitBtn;
    envanter_envanterler_sPanel: TsPanel;
    envanter_menu_sPanel: TsPanel;
    envanter_ekle_sBitBtn: TsBitBtn;
    envanter_sil_sBitBtn: TsBitBtn;
    envanter_duzenle_sBitBtn: TsBitBtn;
    envanter_bilgi_sPanel: TsPanel;
    envanter_bilgi_menu_sPanel: TsPanel;
    envanter_bilgi_ekle_sBitBtn: TsBitBtn;
    envanter_bilgi_sil_sBitBtn: TsBitBtn;
    envanter_bilgi_duzenle_sBitBtn: TsBitBtn;
    envanter_sPanel: TsPanel;
    envanter_kullanici_sPanel: TsPanel;
    envanter_kullanici_sLabel: TsLabel;
    envanter_giris_bilgi_sPanel: TsPanel;
    envanter_giris_bilgi_menu_sPanel: TsPanel;
    envanter_giris_bilgi_ekle_sBitBtn: TsBitBtn;
    envanter_giris_bilgi_sil_sBitBtn: TsBitBtn;
    envanter_giris_bilgi_duzenle_sBitBtn: TsBitBtn;
    kullanici_giris_bilgi_SMDBGrid: TSMDBGrid;
    kullanici_bilgi_SMDBGrid: TSMDBGrid;
    kullanici_envanter_SMDBGrid: TSMDBGrid;
    envanter_SMDBGrid: TSMDBGrid;
    envanter_giris_bilgi_SMDBGrid: TSMDBGrid;
    envanter_lisans_sPanel: TsPanel;
    envanter_lisans_menu_sPanel: TsPanel;
    envanter_lisans_ekle_sBitBtn: TsBitBtn;
    envanter_lisans_sil_sBitBtn: TsBitBtn;
    envanter_lisans_SMDBGrid: TSMDBGrid;
    envanter_bilgi_SMDBGrid: TSMDBGrid;
    lisans_envanter_sPanel: TsPanel;
    lisans_envanter_sLabel: TsLabel;
    kullanici_sLabel: TsLabel;
    kullanici_giris_bilgi_sLabel: TsLabel;
    kullanici_bilgi_sLabel: TsLabel;
    kullanici_envanter_sLabel: TsLabel;
    envanter_sLabel: TsLabel;
    envanter_giris_bilgi_sLabel: TsLabel;
    envanter_bilgi_sLabel: TsLabel;
    envanter_lisans_sLabel: TsLabel;
    lisans_sLabel: TsLabel;
    lisans_bilgi_sLabel: TsLabel;
    kullanici_duzenle_MainMenu: TMenuItem;
    cizgi0: TMenuItem;
    cizgi1: TMenuItem;
    kullanici_bilgi_ekle_MainMenu: TMenuItem;
    kullanici_bilgi_sil_MainMenu: TMenuItem;
    kullanici_bilgi_duzenle_MainMenu: TMenuItem;
    cizgi2: TMenuItem;
    kullanici_giris_bilgi_ekle_MainMenu: TMenuItem;
    kullanici_giris_bilgi_sil_MainMenu: TMenuItem;
    kullanici_giris_bilgi_duzenle_MainMenu: TMenuItem;
    cizgi3: TMenuItem;
    bt_cikis_MainMenu: TMenuItem;
    envanter_duzenle_MainMenu: TMenuItem;
    cizgi4: TMenuItem;
    cizgi5: TMenuItem;
    envanter_bilgi_ekle_MainMenu: TMenuItem;
    envanter_bilgi_sil: TMenuItem;
    envanter_bilgi_duzenle_MainMenu: TMenuItem;
    cizgi6: TMenuItem;
    envanter_giris_bilgi_ekle_MainMenu: TMenuItem;
    envanter_giris_bilgi_sil_MainMenu: TMenuItem;
    envanter_giris_bilgi_duzenle_MainMenu: TMenuItem;
    lisans_MainMenu: TMenuItem;
    cizgi7: TMenuItem;
    envanter_lisans_ekle_MainMenu: TMenuItem;
    kullanici_envanter_ekle_MainMenu: TMenuItem;
    lisans_ekle_MainMenu: TMenuItem;
    lisans_sil_MainMenu: TMenuItem;
    lisans_duzenle_MainMenu: TMenuItem;
    cizgi8: TMenuItem;
    lisans_bilgi_ekle_MainMenu: TMenuItem;
    lisans_bilgi_sil_MainMenu: TMenuItem;
    lisans_bilgi_duzenle_MainMenu: TMenuItem;
    cizgi9: TMenuItem;
    envanter_kullanici_sec_sBitBtn: TsBitBtn;
    envanter_kullanýcý_ID_sDBEdit: TsDBEdit;
    envanter_kullanici_ADI_sDBEdit: TsDBEdit;
    envanter_kullanici_SOYADI_sDBEdit: TsDBEdit;
    envanter_kullanici_BIRIM_sDBEdit: TsDBEdit;
    envanter_kullanici_TELEFON_DAHILI_sDBEdit: TsDBEdit;
    envanter_kullanici_TELEFON_GSM_sDBEdit: TsDBEdit;
    envanter_kullanici_sil_sBitBtn: TsBitBtn;
    lisans_envanter_sil_sBitBtn: TsBitBtn;
    lisans_envanter_sec_sBitBtn: TsBitBtn;
    lisans_envanter_TIPI_sDBEdit: TsDBEdit;
    lisans_envanter_MODEL_sDBEdit: TsDBEdit;
    lisans_envanter_YERI_sDBEdit: TsDBEdit;
    lisans_envanter_DURUM_sDBEdit: TsDBEdit;
    lisans_envanter_MARKA_sDBEdit: TsDBEdit;
    lisans_envanter_ID_sDBEdit: TsDBEdit;
    lisans_SMDBGrid: TSMDBGrid;
    lisans_bilgi_SMDBGrid: TSMDBGrid;
    kullanici_yazdir_sBitBtn: TsBitBtn;
    kullanici_bilgi_yazdir_sBitBtn: TsBitBtn;
    kullanici_giris_bilgi_yazdir_sBitBtn: TsBitBtn;
    kullanici_envanter_yazdir_sBitBtn: TsBitBtn;
    envanter_yazdir_sBitBtn: TsBitBtn;
    kullanici_liste_rapor_MainMenu: TMenuItem;
    envanter_liste_rapor_MainMenu: TMenuItem;
    envanter_lisans_yazdir_sBitBtn: TsBitBtn;
    envanter_bilgi_yazdir_sBitBtn: TsBitBtn;
    envanter_giris_bilgi_yazdir_sBitBtn: TsBitBtn;
    lisans_yazdir_sBitBtn: TsBitBtn;
    lisans_bilgi_yazdir_sBitBtn: TsBitBtn;
    kullanici_liste_detayli_rapor_MainMenu: TMenuItem;
    cizgi10: TMenuItem;
    envanter_liste_detayli_MainMenu: TMenuItem;
    cizgi11: TMenuItem;
    lisans_liste_rapor_MainMenu: TMenuItem;
    lisans_liste_detayli_rapor_MainMenu: TMenuItem;
    kullanicilar_MainMenu: TMenuItem;
    envanter_kullanici_UNVAN_sDBEdit: TsDBEdit;
    envanter_kullanici_EMAIL_sDBEdit: TsDBEdit;
    sPanel1: TsPanel;
    sLabel1: TsLabel;
    sDBEdit1: TsDBEdit;
    sDBEdit2: TsDBEdit;
    sDBEdit3: TsDBEdit;
    sDBEdit4: TsDBEdit;
    sDBEdit5: TsDBEdit;
    sDBEdit6: TsDBEdit;
    sDBEdit7: TsDBEdit;
    sDBEdit8: TsDBEdit;
    procedure kullanici_ekle_sBitBtnClick(Sender: TObject);
    procedure kullanici_sil_sBitBtnClick(Sender: TObject);
    procedure kullanici_bilgi_sil_sBitBtnClick(Sender: TObject);
    procedure kullanici_giris_bilgi_sil_sBitBtnClick(Sender: TObject);
    procedure kullanici_duzenle_sBitBtnClick(Sender: TObject);
    procedure kullanici_bilgi_ekle_sBitBtnClick(Sender: TObject);
    procedure kullanici_bilgi_duzenle_sBitBtnClick(Sender: TObject);
    procedure kullanici_giris_bilgi_ekle_sBitBtnClick(Sender: TObject);
    procedure kullanici_giris_bilgi_duzenle_sBitBtnClick(Sender: TObject);
    procedure envanter_ekle_sBitBtnClick(Sender: TObject);
    procedure envanter_sil_sBitBtnClick(Sender: TObject);
    procedure envanter_duzenle_sBitBtnClick(Sender: TObject);
    procedure kullanici_ekle_MainMenuClick(Sender: TObject);
    procedure kullanici_sil_MainMenuClick(Sender: TObject);
    procedure kullanici_duzenle_MainMenuClick(Sender: TObject);
    procedure kullanici_bilgi_ekle_MainMenuClick(Sender: TObject);
    procedure kullanici_bilgi_sil_MainMenuClick(Sender: TObject);
    procedure kullanici_bilgi_duzenle_MainMenuClick(Sender: TObject);
    procedure kullanici_giris_bilgi_ekle_MainMenuClick(Sender: TObject);
    procedure kullanici_giris_bilgi_sil_MainMenuClick(Sender: TObject);
    procedure kullanici_giris_bilgi_duzenle_MainMenuClick(Sender: TObject);
    procedure envanter_ekle_MainMenuClick(Sender: TObject);
    procedure envanter_sil_MainMenuClick(Sender: TObject);
    procedure envanter_duzenle_MainMenuClick(Sender: TObject);
    procedure envanter_kullanici_sec_sBitBtnClick(Sender: TObject);
    procedure envanter_lisans_ekle_sBitBtnClick(Sender: TObject);
    procedure kullanici_envanter_ekle_sBitBtnClick(Sender: TObject);
    procedure envanter_kullanici_sil_sBitBtnClick(Sender: TObject);
    procedure envanter_bilgi_ekle_sBitBtnClick(Sender: TObject);
    procedure envanter_bilgi_sil_sBitBtnClick(Sender: TObject);
    procedure envanter_bilgi_duzenle_sBitBtnClick(Sender: TObject);
    procedure envanter_giris_bilgi_ekle_sBitBtnClick(Sender: TObject);
    procedure envanter_giris_bilgi_sil_sBitBtnClick(Sender: TObject);
    procedure envanter_giris_bilgi_duzenle_sBitBtnClick(Sender: TObject);
    procedure kullanici_envanter_sil_sBitBtnClick(Sender: TObject);
    procedure lisans_ekle_sBitBtnClick(Sender: TObject);
    procedure lisans_sil_sBitBtnClick(Sender: TObject);
    procedure lisans_duzenle_sBitBtnClick(Sender: TObject);
    procedure lisans_bilgi_ekle_sBitBtnClick(Sender: TObject);
    procedure lisans_bilgi_sil_sBitBtnClick(Sender: TObject);
    procedure lisans_bilgi_duzenle_sBitBtnClick(Sender: TObject);
    procedure envanter_lisans_sil_sBitBtnClick(Sender: TObject);
    procedure envanter_bilgi_SMDBGridDblClick(Sender: TObject);
    procedure envanter_SMDBGridDblClick(Sender: TObject);
    procedure envanter_giris_bilgi_SMDBGridDblClick(Sender: TObject);
    procedure kullanici_bilgi_SMDBGridDblClick(Sender: TObject);
    procedure kullanici_giris_bilgi_SMDBGridDblClick(Sender: TObject);
    procedure lisans_bilgi_SMDBGridDblClick(Sender: TObject);
    procedure kullanici_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_bilgi_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_giris_bilgi_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_envanter_yazdir_sBitBtnClick(Sender: TObject);
    procedure envanter_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_liste_rapor_MainMenuClick(Sender: TObject);
    procedure envanter_liste_rapor_MainMenuClick(Sender: TObject);
    procedure envanter_lisans_yazdir_sBitBtnClick(Sender: TObject);
    procedure envanter_bilgi_yazdir_sBitBtnClick(Sender: TObject);
    procedure envanter_giris_bilgi_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_SMDBGridDblClick(Sender: TObject);
    procedure lisans_yazdir_sBitBtnClick(Sender: TObject);
    procedure lisans_bilgi_yazdir_sBitBtnClick(Sender: TObject);
    procedure kullanici_envanter_ekle_MainMenuClick(Sender: TObject);
    procedure bt_cikis_MainMenuClick(Sender: TObject);
    procedure envanter_bilgi_ekle_MainMenuClick(Sender: TObject);
    procedure envanter_bilgi_silClick(Sender: TObject);
    procedure envanter_bilgi_duzenle_MainMenuClick(Sender: TObject);
    procedure envanter_lisans_ekle_MainMenuClick(Sender: TObject);
    procedure envanter_giris_bilgi_ekle_MainMenuClick(Sender: TObject);
    procedure envanter_giris_bilgi_sil_MainMenuClick(Sender: TObject);
    procedure envanter_giris_bilgi_duzenle_MainMenuClick(Sender: TObject);
    procedure lisans_ekle_MainMenuClick(Sender: TObject);
    procedure lisans_sil_MainMenuClick(Sender: TObject);
    procedure lisans_duzenle_MainMenuClick(Sender: TObject);
    procedure lisans_bilgi_ekle_MainMenuClick(Sender: TObject);
    procedure lisans_bilgi_sil_MainMenuClick(Sender: TObject);
    procedure lisans_bilgi_duzenle_MainMenuClick(Sender: TObject);
    procedure ayarlar_MainMenuClick(Sender: TObject);
    procedure bt_sSkinManagerAfterChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kullanici_liste_detayli_rapor_MainMenuClick(Sender: TObject);
    procedure envanter_liste_detayli_MainMenuClick(Sender: TObject);
    procedure lisans_liste_rapor_MainMenuClick(Sender: TObject);
    procedure lisans_liste_detayli_rapor_MainMenuClick(Sender: TObject);
    procedure hakkinda_MainMenuClick(Sender: TObject);
    procedure kullanicilar_MainMenuClick(Sender: TObject);
    procedure lisans_envanter_sec_sBitBtnClick(Sender: TObject);
    procedure lisans_envanter_sil_sBitBtnClick(Sender: TObject);
    procedure lisans_SMDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  anaform_Form: Tanaform_Form;

implementation

uses
  kullanici, datamodule, envanter, envanterliste, lisansliste, lisans, tablo, ayarlar, hakkinda, kullanicilar, kullaniciliste;

{$R *.dfm}

// ----------------------------------------------------------------------------------------------------
// KULLANICI
procedure Tanaform_Form.kullanici_ekle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.Ekle;
end;

procedure Tanaform_Form.kullanici_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.Ekle;
end;

procedure Tanaform_Form.kullanici_envanter_ekle_MainMenuClick(Sender: TObject);
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tenvanterliste_Form, envanterliste_Form);
  envanterliste_Form.ShowModal;
  FreeAndNil(envanterliste_Form);
end;

procedure Tanaform_Form.kullanici_envanter_ekle_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir kullanýcý seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tenvanterliste_Form, envanterliste_Form);
  envanterliste_Form.ShowModal;
  FreeAndNil(envanterliste_Form);
end;

procedure Tanaform_Form.kullanici_envanter_sil_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_kullanici_envanter_ZReadOnlyQuery.RecordCount = 0 then
    Exit;
  if (bt_tablo.SilinsinMi('Seçili Kullanýcý''nýn Seçili Envanter''den Kullanýcý baðlantýsý kaldýrýlacak emin misiniz?')) then
  begin
    bt_envanter.Yenile;
    bt_data.bt_envanter_ZTable.Locate('ID', bt_data.bt_kullanici_envanter_ZReadOnlyQuery.FieldByName('ID').AsVariant, [loCaseInsensitive]);
    bt_data.bt_envanter_ZTable.Edit;
    bt_data.bt_envanter_ZTable.FieldByName('KULLANICI_ID').Clear;
    bt_data.bt_envanter_ZTable.Post;
    bt_data.bt_kullanici_envanter_ZReadOnlyQuery.Refresh;
    bt_envanter.Yenile;
  end;
end;

procedure Tanaform_Form.kullanici_envanter_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_kullanici_envanter_frxReport.ShowReport();
end;

procedure Tanaform_Form.kullanici_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.Duzenle;
end;

procedure Tanaform_Form.kullanici_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.Duzenle;
end;

procedure Tanaform_Form.kullanici_sil_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.Sil;
end;

procedure Tanaform_Form.kullanici_sil_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.Sil;
end;

procedure Tanaform_Form.kullanici_SMDBGridDblClick(Sender: TObject);
begin
  bt_kullanici.Duzenle;
end;

procedure Tanaform_Form.kullanici_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_kullanici_detay_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// KULLANICI_BILGI
procedure Tanaform_Form.kullanicilar_MainMenuClick(Sender: TObject);
begin
  Application.CreateForm(Tkullanicilar_Form,kullanicilar_Form);
  kullanicilar_Form.ShowModal;
  FreeAndNil(kullanicilar_Form);
end;

procedure Tanaform_Form.kullanici_bilgi_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.BilgiDuzenle;
end;

procedure Tanaform_Form.kullanici_bilgi_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.BilgiDuzenle;
end;

procedure Tanaform_Form.kullanici_bilgi_ekle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.BilgiEkle;
end;

procedure Tanaform_Form.kullanici_bilgi_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.BilgiEkle;
end;

procedure Tanaform_Form.kullanici_bilgi_sil_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.BilgiSil;
end;

procedure Tanaform_Form.kullanici_bilgi_sil_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.BilgiSil;
end;

procedure Tanaform_Form.kullanici_bilgi_SMDBGridDblClick(Sender: TObject);
begin
  bt_kullanici.BilgiDuzenle;
end;

procedure Tanaform_Form.kullanici_bilgi_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_kullanici_bilgi_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// KULLANICI_GIRIS_BILGI
procedure Tanaform_Form.kullanici_giris_bilgi_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.GirisDuzenle;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.GirisDuzenle;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_ekle_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.GirisEkle;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.GirisEkle;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_sil_MainMenuClick(Sender: TObject);
begin
  bt_kullanici.GirisSil;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_sil_sBitBtnClick(Sender: TObject);
begin
  bt_kullanici.GirisSil;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_SMDBGridDblClick(Sender: TObject);
begin
  bt_kullanici.GirisDuzenle;
end;

procedure Tanaform_Form.kullanici_giris_bilgi_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_kullanici_giris_bilgi_frxReport.ShowReport();
end;

procedure Tanaform_Form.kullanici_liste_detayli_rapor_MainMenuClick(Sender: TObject);
begin
  bt_data.bt_kullanici_detay_frxDBDataset.RangeBegin := rbFirst;
  bt_data.bt_kullanici_detay_frxDBDataset.RangeEnd := reLast;

  bt_data.bt_kullanici_detay_frxReport.ShowReport();

  bt_data.bt_kullanici_detay_frxDBDataset.RangeBegin := rbCurrent;
  bt_data.bt_kullanici_detay_frxDBDataset.RangeEnd := reCurrent;

end;

procedure Tanaform_Form.kullanici_liste_rapor_MainMenuClick(Sender: TObject);
begin
  bt_data.bt_kullanici_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// ENVANTER
procedure Tanaform_Form.envanter_kullanici_sil_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_kullanici_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Kullanýcý kaydý bulunamadý.' + #13 + 'Kullanýcý bölümünden en az 1 Adet Kullanýcý oluþturmalýsýnýz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('Seçili Envanter''in Kullanýcý baðlantýsý kaldýrýlacak emin misiniz?')) then
  begin
    bt_data.bt_envanter_ZTable.Edit;
    bt_data.bt_envanter_ZTable.FieldByName('KULLANICI_ID').Clear;
    bt_data.bt_envanter_ZTable.Post;
    bt_envanter.Yenile;
  end;
end;

procedure Tanaform_Form.envanter_kullanici_sec_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tkullaniciliste_Form, kullaniciliste_Form);
  kullaniciliste_Form.ShowModal;
  FreeAndNil(kullaniciliste_Form);
end;

procedure Tanaform_Form.envanter_lisans_ekle_MainMenuClick(Sender: TObject);
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tlisansliste_Form, lisansliste_Form);
  lisansliste_Form.ShowModal;
  FreeAndNil(lisansliste_Form);
end;

procedure Tanaform_Form.envanter_lisans_ekle_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_envanter_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir envanter seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tlisansliste_Form, lisansliste_Form);
  lisansliste_Form.ShowModal;
  FreeAndNil(lisansliste_Form);
end;

procedure Tanaform_Form.envanter_lisans_sil_sBitBtnClick(Sender: TObject);
begin
  if (bt_tablo.SilinsinMi('Seçili Envanter''in Seçili Lisans''tan Envanter baðlantýsý kaldýrýlacak emin misiniz?')) then
  begin
    bt_lisans.Yenile;
    bt_data.bt_lisans_ZTable.Locate('ID', bt_data.bt_envanter_lisans_ZReadOnlyQuery.FieldByName('ID').AsVariant, [loCaseInsensitive]);
    bt_data.bt_lisans_ZTable.Edit;
    bt_data.bt_lisans_ZTable.FieldByName('ENVANTER_ID').Clear;
    bt_data.bt_lisans_ZTable.Post;
    bt_data.bt_envanter_lisans_ZReadOnlyQuery.Refresh;
    bt_lisans.Yenile;
  end;
end;

procedure Tanaform_Form.envanter_lisans_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_envanter_lisans_frxReport.ShowReport();
end;

procedure Tanaform_Form.envanter_liste_detayli_MainMenuClick(Sender: TObject);
begin
  bt_data.bt_envanter_detay_frxDBDataset.RangeBegin := rbFirst;
  bt_data.bt_envanter_detay_frxDBDataset.RangeEnd := reLast;

  bt_data.bt_envanter_detay_frxReport.ShowReport();

  bt_data.bt_envanter_detay_frxDBDataset.RangeBegin := rbCurrent;
  bt_data.bt_envanter_detay_frxDBDataset.RangeEnd := reCurrent;
end;

procedure Tanaform_Form.envanter_liste_rapor_MainMenuClick(Sender: TObject);
begin
  bt_data.bt_envanter_frxReport.ShowReport();
end;

procedure Tanaform_Form.envanter_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.Duzenle;
end;

procedure Tanaform_Form.envanter_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.Duzenle;
end;

procedure Tanaform_Form.envanter_ekle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.Ekle;
end;

procedure Tanaform_Form.envanter_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.Ekle;
end;

procedure Tanaform_Form.envanter_sil_MainMenuClick(Sender: TObject);
begin
  bt_envanter.Sil;
end;

procedure Tanaform_Form.envanter_sil_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.Sil;
end;

procedure Tanaform_Form.envanter_SMDBGridDblClick(Sender: TObject);
//var
  //envaterDetay_Form:Tenvanterdetay_Form;
begin
  //envanterdetay_Form:=Tenvanterdetay_Form.Create(Application, bt_data.bt_envanter_ZTable.FieldByName('ID').AsLargeInt);
  //envanterdetay_Form.ShowModal;
  //FreeAndNil(envanterdetay_Form);
  bt_envanter.Duzenle;
end;

procedure Tanaform_Form.envanter_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_envanter_detay_frxReport.ShowReport();
end;

procedure Tanaform_Form.FormCreate(Sender: TObject);
var
  ayarlarZReadOnlyQuery: TZReadOnlyQuery;
  //ayarlarDataSource:TDataSource;
begin
  ayarlarZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
  //ayarlarDataSource:=TDataSource.Create(Application);

  ayarlarZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
  ayarlarZReadOnlyQuery.SQL.Text := 'SELECT * FROM AYARLAR WHERE AYAR=' + QuotedStr('TEMA');
  ayarlarZReadOnlyQuery.Active := True;
  bt_sSkinManager.SkinName := ayarlarZReadOnlyQuery.FieldByName('DEGER1').AsString;

  ayarlarZReadOnlyQuery.Active := False;
  FreeAndNil(ayarlarZReadOnlyQuery);
end;

procedure Tanaform_Form.hakkinda_MainMenuClick(Sender: TObject);
begin
  Application.CreateForm(Thakkinda_Form, hakkinda_Form);
  hakkinda_Form.ShowModal;
  FreeAndNil(hakkinda_Form);
end;

// ----------------------------------------------------------------------------------------------------
// ENVANTER_BILGI
procedure Tanaform_Form.ayarlar_MainMenuClick(Sender: TObject);
begin
  Application.CreateForm(Tayarlar_Form, ayarlar_Form);
  bt_data.bt_ayarlar_ZTable.Refresh;
  ayarlar_Form.ShowModal;
  FreeAndNil(ayarlar_Form);
end;

procedure Tanaform_Form.bt_cikis_MainMenuClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure Tanaform_Form.bt_sSkinManagerAfterChange(Sender: TObject);
begin
  bt_data.bt_ayarlar_ZTable.Locate('AYAR', 'TEMA', [loCaseInsensitive]);
  bt_data.bt_ayarlar_ZTable.Edit;
  bt_data.bt_ayarlar_ZTable.FieldByName('DEGER1').AsString := bt_sSkinManager.SkinName;
  bt_data.bt_ayarlar_ZTable.Post;
end;

procedure Tanaform_Form.envanter_bilgi_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.BilgiDuzenle;
end;

procedure Tanaform_Form.envanter_bilgi_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.BilgiDuzenle;
end;

procedure Tanaform_Form.envanter_bilgi_ekle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.BilgiEkle;
end;

procedure Tanaform_Form.envanter_bilgi_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.BilgiEkle;
end;

procedure Tanaform_Form.envanter_bilgi_silClick(Sender: TObject);
begin
  bt_envanter.BilgiSil;
end;

procedure Tanaform_Form.envanter_bilgi_sil_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.BilgiSil;
end;

procedure Tanaform_Form.envanter_bilgi_SMDBGridDblClick(Sender: TObject);
begin
  bt_envanter.BilgiDuzenle;
end;

procedure Tanaform_Form.envanter_bilgi_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_envanter_bilgi_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// ENVANTER_GIRIS_BILGI

procedure Tanaform_Form.envanter_giris_bilgi_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.GirisDuzenle;
end;

procedure Tanaform_Form.envanter_giris_bilgi_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.GirisDuzenle;
end;

procedure Tanaform_Form.envanter_giris_bilgi_ekle_MainMenuClick(Sender: TObject);
begin
  bt_envanter.GirisEkle;
end;

procedure Tanaform_Form.envanter_giris_bilgi_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.GirisEkle;
end;

procedure Tanaform_Form.envanter_giris_bilgi_sil_MainMenuClick(Sender: TObject);
begin
  bt_envanter.GirisSil;
end;

procedure Tanaform_Form.envanter_giris_bilgi_sil_sBitBtnClick(Sender: TObject);
begin
  bt_envanter.GirisSil;
end;

procedure Tanaform_Form.envanter_giris_bilgi_SMDBGridDblClick(Sender: TObject);
begin
  bt_envanter.GirisDuzenle;
end;

procedure Tanaform_Form.envanter_giris_bilgi_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_envanter_giris_bilgi_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// LISANS
procedure Tanaform_Form.lisans_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_lisans.Duzenle;
end;

procedure Tanaform_Form.lisans_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.Duzenle;
end;

procedure Tanaform_Form.lisans_ekle_MainMenuClick(Sender: TObject);
begin
  bt_lisans.Ekle;
end;

procedure Tanaform_Form.lisans_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.Ekle;
end;

procedure Tanaform_Form.lisans_envanter_sec_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Bir lisans seçmelisiniz.');
    Exit;
  end;
  Application.CreateForm(Tenvanterliste_Form, envanterliste_Form);
  envanterliste_Form.ShowModal;
  FreeAndNil(envanterliste_Form);
end;

procedure Tanaform_Form.lisans_envanter_sil_sBitBtnClick(Sender: TObject);
begin
  if bt_data.bt_lisans_ZTable.RecordCount = 0 then
  begin
    ShowMessage('Lisans kaydý bulunamadý.' + #13 + 'Lisans bölümünden en az 1 Adet lisans oluþturmalýsýnýz.');
    Exit;
  end;
  if (bt_tablo.SilinsinMi('Seçili Lisans''ýn Envanter baðlantýsý kaldýrýlacak emin misiniz?')) then
  begin
    bt_data.bt_lisans_ZTable.Edit;
    bt_data.bt_lisans_ZTable.FieldByName('ENVANTER_ID').Clear;
    bt_data.bt_lisans_ZTable.Post;
    bt_lisans.Yenile;
  end;
end;

procedure Tanaform_Form.lisans_liste_detayli_rapor_MainMenuClick(
  Sender: TObject);
begin
  bt_data.bt_lisans_detay_frxDBDataset.RangeBegin := rbFirst;
  bt_data.bt_lisans_detay_frxDBDataset.RangeEnd := reLast;

  bt_data.bt_lisans_detay_frxReport.ShowReport();

  bt_data.bt_lisans_detay_frxDBDataset.RangeBegin := rbCurrent;
  bt_data.bt_lisans_detay_frxDBDataset.RangeEnd := reCurrent;
end;

procedure Tanaform_Form.lisans_liste_rapor_MainMenuClick(Sender: TObject);
begin
  bt_data.bt_lisans_frxReport.ShowReport();
end;

procedure Tanaform_Form.lisans_sil_MainMenuClick(Sender: TObject);
begin
  bt_lisans.Sil;
end;

procedure Tanaform_Form.lisans_sil_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.Sil;
end;

procedure Tanaform_Form.lisans_SMDBGridDblClick(Sender: TObject);
begin
  bt_lisans.Duzenle;
end;

procedure Tanaform_Form.lisans_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_lisans_frxReport.ShowReport();
end;

// ----------------------------------------------------------------------------------------------------
// LISANS_BILGI
procedure Tanaform_Form.lisans_bilgi_duzenle_MainMenuClick(Sender: TObject);
begin
  bt_lisans.BilgiDuzenle;
end;

procedure Tanaform_Form.lisans_bilgi_duzenle_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.BilgiDuzenle;
end;

procedure Tanaform_Form.lisans_bilgi_ekle_MainMenuClick(Sender: TObject);
begin
  bt_lisans.BilgiEkle;
end;

procedure Tanaform_Form.lisans_bilgi_ekle_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.BilgiEkle;
end;

procedure Tanaform_Form.lisans_bilgi_sil_MainMenuClick(Sender: TObject);
begin
  bt_lisans.BilgiSil;
end;

procedure Tanaform_Form.lisans_bilgi_sil_sBitBtnClick(Sender: TObject);
begin
  bt_lisans.BilgiSil;
end;

procedure Tanaform_Form.lisans_bilgi_SMDBGridDblClick(Sender: TObject);
begin
  bt_lisans.BilgiDuzenle;
end;

procedure Tanaform_Form.lisans_bilgi_yazdir_sBitBtnClick(Sender: TObject);
begin
  bt_data.bt_lisans_bilgi_frxReport.ShowReport();
end;

end.


