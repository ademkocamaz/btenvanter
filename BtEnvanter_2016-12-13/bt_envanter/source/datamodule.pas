unit datamodule;

interface

uses
  Forms, SysUtils, Classes, ZAbstractConnection, ZConnection, ZDataset, ZStoredProcedure, DB, Vcl.Dialogs, System.UITypes, acAlphaImageList, ZSqlMonitor, frxClass, frxDBSet,
  System.ImageList, Vcl.ImgList, Vcl.Controls, ZAbstractRODataset,
  ZAbstractDataset, ZAbstractTable;

type
  Tbt_data = class(TDataModule)
    bt_ZConnection: TZConnection;
    bt_kullanici_DataSource: TDataSource;
    bt_kullanici_ZTable: TZTable;
    bt_kullanici_bilgi_ZTable: TZTable;
    bt_kullanici_bilgi_DataSource: TDataSource;
    bt_kullanici_giris_bilgi_DataSource: TDataSource;
    bt_kullanici_giris_bilgi_ZTable: TZTable;
    SP_KULLANICI_EKLE_ZStoredProc: TZStoredProc;
    SP_KULLANICI_SIL_ZStoredProc: TZStoredProc;
    SP_KULLANICI_BILGI_EKLE_ZStoredProc: TZStoredProc;
    SP_KULLANICI_BILGI_SIL_ZStoredProc: TZStoredProc;
    SP_KULLANICI_GIRIS_BILGI_EKLE_ZStoredProc: TZStoredProc;
    SP_KULLANICI_GIRIS_BILGI_SIL_ZStoredProc: TZStoredProc;
    bt_kullanici_envanter_DataSource: TDataSource;
    bt_envanter_DataSource: TDataSource;
    bt_envanter_ZTable: TZTable;
    SP_ENVANTER_EKLE_ZStoredProc: TZStoredProc;
    SP_ENVANTER_SIL_ZStoredProc: TZStoredProc;
    bt_envanter_bilgi_DataSource: TDataSource;
    bt_envanter_bilgi_ZTable: TZTable;
    SP_ENVANTER_BILGI_EKLE_ZStoredProc: TZStoredProc;
    SP_ENVANTER_BILGI_SIL_ZStoredProc: TZStoredProc;
    bt_envanter_giris_bilgi_DataSource: TDataSource;
    bt_envanter_giris_bilgi_ZTable: TZTable;
    SP_ENVANTER_GIRIS_BILGI_EKLE_ZStoredProc: TZStoredProc;
    SP_ENVANTER_GIRIS_BILGI_SIL_ZStoredProc: TZStoredProc;
    bt_lisans_DataSource: TDataSource;
    bt_lisans_ZTable: TZTable;
    SP_LISANS_EKLE_ZStoredProc: TZStoredProc;
    SP_LISANS_SIL_ZStoredProc: TZStoredProc;
    bt_lisans_bilgi_DataSource: TDataSource;
    bt_lisans_bilgi_ZTable: TZTable;
    SP_LISANS_BILGI_EKLE_ZStoredProc: TZStoredProc;
    SP_LISANS_BILGI_SIL_ZStoredProc: TZStoredProc;
    bt_kullanici_sAlphaImageList: TsAlphaImageList;
    bt_sAlphaImageList: TsAlphaImageList;
    bt_lisans_sAlphaImageList: TsAlphaImageList;
    bt_envanter_sAlphaImageList: TsAlphaImageList;
    bt_envanter_kullanici_DataSource: TDataSource;
    bt_envanter_kullanici_ZReadOnlyQuery: TZReadOnlyQuery;
    bt_kullanici_envanter_ZReadOnlyQuery: TZReadOnlyQuery;
    bt_envanter_lisans_DataSource: TDataSource;
    bt_envanter_lisans_ZReadOnlyQuery: TZReadOnlyQuery;
    bt_lisans_envanter_DataSource: TDataSource;
    bt_lisans_envanter_ZReadOnlyQuery: TZReadOnlyQuery;
    bt_ZSQLMonitor: TZSQLMonitor;
    bt_kullanici_detay_frxDBDataset: TfrxDBDataset;
    bt_kullanici_bilgi_frxDBDataset: TfrxDBDataset;
    bt_kullanici_giris_bilgi_frxDBDataset: TfrxDBDataset;
    bt_kullanici_envanter_frxDBDataset: TfrxDBDataset;
    bt_kullanici_frxReport: TfrxReport;
    bt_kullanici_bilgi_frxReport: TfrxReport;
    bt_kullanici_giris_bilgi_frxReport: TfrxReport;
    bt_kullanici_envanter_frxReport: TfrxReport;
    bt_kullanici_detay_frxReport: TfrxReport;
    bt_envanter_frxDBDataset: TfrxDBDataset;
    bt_envanter_bilgi_frxDBDataset: TfrxDBDataset;
    bt_envanter_giris_bilgi_frxDBDataset: TfrxDBDataset;
    bt_envanter_kullanici_frxDBDataset: TfrxDBDataset;
    bt_envanter_lisans_frxDBDataset: TfrxDBDataset;
    bt_envanter_frxReport: TfrxReport;
    bt_envanter_bilgi_frxReport: TfrxReport;
    bt_envanter_giris_bilgi_frxReport: TfrxReport;
    bt_envanter_kullanici_frxReport: TfrxReport;
    bt_envanter_lisans_frxReport: TfrxReport;
    bt_lisans_frxReport: TfrxReport;
    bt_lisans_bilgi_frxReport: TfrxReport;
    bt_lisans_envanter_frxReport: TfrxReport;
    bt_lisans_frxDBDataset: TfrxDBDataset;
    bt_lisans_bilgi_frxDBDataset: TfrxDBDataset;
    bt_lisans_envanter_frxDBDataset: TfrxDBDataset;
    bt_envanter_detay_frxReport: TfrxReport;
    bt_kullanici_frxDBDataset: TfrxDBDataset;
    bt_envanter_detay_frxDBDataset: TfrxDBDataset;
    envanter_lisans_bilgi_frxDBDataset: TfrxDBDataset;
    bt_envanter_lisans_bilgi_ZReadOnlyQuery: TZReadOnlyQuery;
    envanter_lisans_bilgi_DataSource: TDataSource;
    bt_lisans_detay_frxDBDataset: TfrxDBDataset;
    bt_ayarlar_ZTable: TZTable;
    bt_ayarlar_DataSource: TDataSource;
    bt_lisans_detay_frxReport: TfrxReport;
    bt_kullanicilar_ZTable: TZTable;
    bt_kullanicilar_DataSource: TDataSource;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
    Fbt_fbembed: string;
    Fbt_database: string;
    FappPath: string;
  public
    { Public declarations }
    property bt_fbembed: string read Fbt_fbembed;
    property bt_database: string read Fbt_database;
    property bt_appPath: string read FappPath;
  end;

var
  bt_data: Tbt_data;
  FappPath: string;

implementation

{$R *.dfm}

uses
  acilis, giris, anaform;

procedure Tbt_data.DataModuleCreate(Sender: TObject);
begin
  FappPath := IncludeTrailingPathDelimiter(ExtractFilePath(Application.ExeName));
  //ShowMessage(appPath);
  // Application.CreateForm(Ttest_Form,test_Form);test_Form.ShowModal;Halt;

  try
    // fbembed.dll yerini belirle
    Fbt_fbembed := FappPath + 'lib\fbembed.dll';
    // eðer dosya mevcutsa
    if FileExists(Fbt_fbembed) then
      // dll dosyasýna baðlan
      bt_ZConnection.LibraryLocation := Fbt_fbembed
    else
    // mevcut deðilse
    begin
      // göster ve uygulamayý sonlandýr.
      // ShowMessage(Ffbembed_dll+' bulunamadý!');
      raise Exception.CreateFmt('Veritabaný için kullanýlan kütüphane dosyasý bulunamadý! ' + #13 + '%s%', [Fbt_fbembed]);
    end;
    ;

    // BT.FDB yerini belirle
    Fbt_database := FappPath + 'data\BT.FDB';
    // mevcutsa
    if FileExists(Fbt_database) then
      // vt yolunu ayarla
      bt_ZConnection.Database := Fbt_database
    else
    // mevcut deðilse
    begin
      // göster ve uygulamayý sonlandýr.
      // ShowMessage(Fbt_fdb+' bulunamadý!');
      raise Exception.CreateFmt('Veritabaný dosyasý bulunamadý! ' + #13 + '%s%', [Fbt_database]);
    end;

    // bt_ZConnection.LibraryLocation:=ExtractFilePath(Application.ExeName);


    bt_ZConnection.Connect;

    // bt_ZConnection.ClientCodepage:='cCP_UTF8';
    bt_ZSQLMonitor.Active := True;
    bt_ZSQLMonitor.AutoSave := True;
    bt_ZSQLMonitor.FileName := FappPath + 'data\log.txt';

    Application.CreateForm(Tgiris_Form, giris_Form);
    giris_Form.ShowModal;
    if giris_Form.girisOnay = False then
    begin
      bt_ZConnection.Disconnect;
      bt_ZSQLMonitor.Active := False;
      FreeAndNil(giris_Form);
      Application.Terminate;
      Exit;
    end;
    FreeAndNil(giris_Form);

    acilis_Form := Tacilis_Form.Create(Application);
    acilis_Form.Show;
    repeat


    until (acilis.acilisKapat = True);
    FreeAndNil(acilis_Form);

    bt_ayarlar_ZTable.Active := True;
    bt_kullanicilar_ZTable.Active:=True;

    bt_kullanici_ZTable.Active := True;
    bt_kullanici_bilgi_ZTable.Active := True;
    bt_kullanici_giris_bilgi_ZTable.Active := True;
    bt_kullanici_envanter_ZReadOnlyQuery.Active := True;

    bt_envanter_ZTable.Active := True;
    bt_envanter_bilgi_ZTable.Active := True;
    bt_envanter_giris_bilgi_ZTable.Active := True;
    bt_envanter_kullanici_ZReadOnlyQuery.Active := True;
    bt_envanter_lisans_ZReadOnlyQuery.Active := True;
    bt_envanter_lisans_bilgi_ZReadOnlyQuery.Active:=True;

    bt_lisans_ZTable.Active := True;
    bt_lisans_bilgi_ZTable.Active := True;
    bt_lisans_envanter_ZReadOnlyQuery.Active := True;

    Application.CreateForm(Tanaform_Form, anaform_Form);
    anaform_Form.Show;
  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Halt;
    end;
  end;
end;

end.


