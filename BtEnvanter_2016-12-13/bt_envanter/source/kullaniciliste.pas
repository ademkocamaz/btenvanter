unit kullaniciliste;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.DBGrids,
  SMDBGrid, Data.DB, ZDataset, Vcl.Dialogs, System.UITypes, Vcl.Grids;

type
  Tkullaniciliste_Form = class(TForm)
    kullanici_SMDBGrid: TSMDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure kullanici_SMDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
    kullaniciZReadOnlyQuery: TZReadOnlyQuery;
    kullaniciDataSource: TDataSource;
  public
    { Public declarations }
  end;

var
  kullaniciliste_Form: Tkullaniciliste_Form;

implementation

uses
  datamodule, kullanici, envanter;

{$R *.dfm}

procedure Tkullaniciliste_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(kullaniciZReadOnlyQuery);
  FreeAndNil(kullaniciDataSource);
end;

procedure Tkullaniciliste_Form.FormCreate(Sender: TObject);
begin
  try
    kullaniciZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
    kullaniciDataSource := TDataSource.Create(Application);

    kullaniciDataSource.DataSet := kullaniciZReadOnlyQuery;

    kullaniciZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
    kullaniciZReadOnlyQuery.SQL.Text := 'SELECT * FROM KULLANICI';
    kullaniciZReadOnlyQuery.Active := True;

    kullanici_SMDBGrid.DataSource := kullaniciDataSource;
    if kullaniciZReadOnlyQuery.RecordCount = 0 then
      raise Exception.Create('Kullan�c� kayd� bulunamad�.' + #13 +
        'Kullan�c� b�l�m�nden en az 1 Adet Kullan�c� olu�turmal�s�n�z.');
  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Self.Close;
    end;
  end;
end;

procedure Tkullaniciliste_Form.kullanici_SMDBGridDblClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := bt_data.bt_envanter_ZTable.FieldByName('ID').AsLargeInt;
  bt_data.bt_envanter_ZTable.Edit;
  bt_data.bt_envanter_ZTable.FieldByName('KULLANICI_ID').AsLargeInt :=
    kullaniciZReadOnlyQuery.FieldByName('ID').AsLargeInt;
  bt_data.bt_envanter_ZTable.Post;
  bt_envanter.Yenile;
  bt_kullanici.Yenile;
  bt_data.bt_envanter_ZTable.Locate('ID', ID, [loCaseInsensitive]);
  Self.Close;
end;

end.
