unit yenilisans;

interface

uses
  System.SysUtils, System.Classes, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.DBCtrls, sDBEdit, sDBComboBox, sBitBtn, sPanel, sDBDateEdit, Data.DB,
  System.UITypes, Vcl.Mask, sMaskEdit, sCustomComboEdit, sToolEdit,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tyenilisans_Form = class(TForm)
    anapanel_sPanel: TsPanel;
    yenilisans_kaydet_sBitBtn: TsBitBtn;
    yenilisans_iptal_sBitBtn: TsBitBtn;
    yenilisans_TIPI_sDBComboBox: TsDBComboBox;
    yenilisans_ACIKLAMA_sDBEdit: TsDBEdit;
    yenilisans_BASLANGIC_TARIHI_sDBDateEdit: TsDBDateEdit;
    yenilisans_BITIS_TARIHI_sDBDateEdit: TsDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure yenilisans_iptal_sBitBtnClick(Sender: TObject);
    procedure yenilisans_kaydet_sBitBtnClick(Sender: TObject);
  private
    { Private declarations }
    function KontrolEt: Boolean;
  public
    { Public declarations }
  end;

var
  yenilisans_Form: Tyenilisans_Form;

implementation

uses
  datamodule, tablo, lisans;

{$R *.dfm}

procedure Tyenilisans_Form.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if bt_data.bt_lisans_ZTable.State in [dsInsert, dsEdit] then
    bt_data.bt_lisans_ZTable.Cancel;

end;

procedure Tyenilisans_Form.FormCreate(Sender: TObject);
begin
  bt_tablo.TurleriGetir('LISANS', 'TIPI', yenilisans_TIPI_sDBComboBox);
end;

function Tyenilisans_Form.KontrolEt: Boolean;
begin
  if yenilisans_TIPI_sDBComboBox.Text = '' then
  begin
    MessageDlg('Tip bilgisini girmelisiniz.', mtError, [mbOK], 0);
    Result := False;
    Exit
  end
  else
    Result := True;
end;

procedure Tyenilisans_Form.yenilisans_iptal_sBitBtnClick(Sender: TObject);
begin
  Self.Close;
end;

procedure Tyenilisans_Form.yenilisans_kaydet_sBitBtnClick(Sender: TObject);
begin
  if KontrolEt then
  begin
    bt_data.bt_lisans_ZTable.Post;
    bt_lisans.Yenile;
    Self.Close;
  end;
end;

end.
