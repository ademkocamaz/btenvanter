unit lisansliste;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Controls, Vcl.Forms,
  Vcl.Dialogs, Data.DB, Vcl.DBGrids, SMDBGrid, ZDataset, System.UITypes,
  Vcl.Grids;

type
  Tlisansliste_Form = class(TForm)
    lisans_SMDBGrid: TSMDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure lisans_SMDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
    lisansZReadOnlyQuery: TZReadOnlyQuery;
    lisansDataSource: TDataSource;
  public
    { Public declarations }
  end;

var
  lisansliste_Form: Tlisansliste_Form;

implementation

uses
  datamodule, lisans, envanter;

{$R *.dfm}

procedure Tlisansliste_Form.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(lisansZReadOnlyQuery);
  FreeAndNil(lisansDataSource);
end;

procedure Tlisansliste_Form.FormCreate(Sender: TObject);
begin
  try
    lisansZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
    lisansDataSource := TDataSource.Create(Application);

    lisansDataSource.DataSet := lisansZReadOnlyQuery;

    lisansZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
    lisansZReadOnlyQuery.SQL.Text := 'SELECT * FROM LISANS';
    lisansZReadOnlyQuery.Active := True;

    lisans_SMDBGrid.DataSource := lisansDataSource;

    if lisansZReadOnlyQuery.RecordCount = 0 then
      raise Exception.Create('Lisans kaydý bulunamadý.' + #13 +
        'Lisans bölümünden en az 1 Adet Lisans oluþturmalýsýnýz.');
  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Self.Close;
    end;
  end;

end;

procedure Tlisansliste_Form.lisans_SMDBGridDblClick(Sender: TObject);
var
  ID: Int64;
begin
  ID := bt_data.bt_envanter_ZTable.FieldByName('ID').AsLargeInt;
  bt_lisans.Yenile;
  bt_data.bt_lisans_ZTable.Locate('ID', lisansZReadOnlyQuery.FieldByName('ID')
    .AsVariant, [loCaseInsensitive]);
  bt_data.bt_lisans_ZTable.Edit;
  bt_data.bt_lisans_ZTable.FieldByName('ENVANTER_ID').AsLargeInt :=
    bt_data.bt_envanter_ZTable.FieldByName('ID').AsLargeInt;
  bt_data.bt_lisans_ZTable.Post;
  bt_lisans.Yenile;
  bt_envanter.Yenile;
  bt_data.bt_envanter_ZTable.Locate('ID', ID, [loCaseInsensitive]);
  Self.Close;
end;

end.
