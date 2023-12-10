object lisansliste_Form: Tlisansliste_Form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Lisans Listesi'
  ClientHeight = 461
  ClientWidth = 584
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object lisans_SMDBGrid: TSMDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 578
    Height = 455
    Align = alClient
    DataSource = bt_data.bt_lisans_DataSource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnDblClick = lisans_SMDBGridDblClick
    Flat = True
    BandsFont.Charset = DEFAULT_CHARSET
    BandsFont.Color = clWindowText
    BandsFont.Height = -11
    BandsFont.Name = 'Tahoma'
    BandsFont.Style = []
    Groupings = <>
    GridStyle.Style = gsCustom
    GridStyle.OddColor = 12111064
    GridStyle.EvenColor = 6851744
    TitleHeight.PixelCount = 24
    FooterColor = clBtnFace
    ExOptions = [eoAutoWidth, eoDisableDelete, eoDisableInsert, eoENTERlikeTAB, eoKeepSelection, eoRowSizing, eoShowLookup, eoShowRecNo, eoStandardPopup, eoBLOBEditor, eoTitleWordWrap, eoShowFilterBar, eoAnyKeyFilter, eoFilterAutoApply, eoCellWordWrap]
    RegistryKey = 'Software\BtEnvanter'
    RegistrySection = 'lisans_SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssVertical
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'No'
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPI'
        Title.Caption = 'Lisans Tipi'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACIKLAMA'
        Title.Caption = 'A'#231#305'klama'
        Width = 151
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BASLANGIC_TARIHI'
        Title.Caption = 'Ba'#351'lang'#305#231' Tarihi'
        Width = 163
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BITIS_TARIHI'
        Title.Caption = 'Biti'#351' Tarihi'
        Width = 78
        Visible = True
      end>
  end
end
