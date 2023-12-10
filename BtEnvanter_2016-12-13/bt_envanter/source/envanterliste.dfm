object envanterliste_Form: Tenvanterliste_Form
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Envanter Listesi'
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
  object envanter_SMDBGrid: TSMDBGrid
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 578
    Height = 455
    Align = alClient
    DataSource = bt_data.bt_envanter_DataSource
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
    OnDblClick = envanter_SMDBGridDblClick
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
    RegistrySection = 'kullanici_SMDBGrid'
    WidthOfIndicator = 11
    DefaultRowHeight = 17
    ScrollBars = ssVertical
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Title.Caption = 'No'
        Width = 27
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPI'
        Title.Caption = 'Envanter Tipi'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARKA'
        Title.Caption = 'Marka'
        Width = 69
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MODEL'
        Title.Caption = 'Model'
        Width = 66
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DURUM'
        Title.Caption = 'Durum'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'YERI'
        Title.Caption = 'Yeri'
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ACIKLAMA'
        Title.Caption = 'A'#231#305'klama'
        Width = 101
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIRIM'
        Title.Caption = 'Birim'
        Width = 56
        Visible = True
      end>
  end
end
