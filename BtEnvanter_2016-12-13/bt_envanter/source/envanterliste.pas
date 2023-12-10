unit envanterliste;

interface

uses
  System.SysUtils, System.Variants, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBGrids, SMDBGrid, ZDataset, System.UITypes, Vcl.Grids;

type
  Tenvanterliste_Form = class(TForm)
    envanter_SMDBGrid: TSMDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure envanter_SMDBGridDblClick(Sender: TObject);
  private
    { Private declarations }
    envanterZReadOnlyQuery: TZReadOnlyQuery;
    envanterDataSource: TDataSource;
  public
    { Public declarations }
  end;

var
  envanterliste_Form: Tenvanterliste_Form;

implementation

uses
  datamodule, envanter, kullanici, lisans;

{$R *.dfm}

procedure Tenvanterliste_Form.envanter_SMDBGridDblClick(Sender: TObject);
var
  ID: Int64;
begin

  ID := bt_data.bt_lisans_ZTable.FieldByName('ID').AsLargeInt;
  bt_data.bt_lisans_ZTable.Edit;
  bt_data.bt_lisans_ZTable.FieldByName('ENVANTER_ID').AsLargeInt:= envanterZReadOnlyQuery.FieldByName('ID').AsLargeInt;
  bt_data.bt_lisans_ZTable.Post;
  bt_envanter.Yenile;
  bt_lisans.Yenile;
  bt_data.bt_lisans_ZTable.Locate('ID', ID, [loCaseInsensitive]);
  Self.Close;

end;

procedure Tenvanterliste_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(envanterZReadOnlyQuery);
  FreeAndNil(envanterDataSource);
end;

procedure Tenvanterliste_Form.FormCreate(Sender: TObject);
begin
  try
    envanterZReadOnlyQuery := TZReadOnlyQuery.Create(Application);
    envanterDataSource := TDataSource.Create(Application);

    envanterDataSource.DataSet := envanterZReadOnlyQuery;

    envanterZReadOnlyQuery.Connection := bt_data.bt_ZConnection;
    envanterZReadOnlyQuery.SQL.Text := 'SELECT * FROM ENVANTER';
    envanterZReadOnlyQuery.Active := True;

    envanter_SMDBGrid.DataSource := envanterDataSource;
    if envanterZReadOnlyQuery.RecordCount = 0 then
      raise Exception.Create('Envanter kaydý bulunamadý' + #13 + 'Envanter bölümünden en az 1 Adet Envanter oluþturmalýsýnýz.');

  except
    on E: Exception do
    begin
      MessageDlg(E.Message, mtError, [mbOK], 0);
      Self.Close;
    end;
  end;
end;

end.


