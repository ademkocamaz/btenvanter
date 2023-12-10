object test_Form: Ttest_Form
  Left = 0
  Top = 0
  Caption = 'test_Form'
  ClientHeight = 889
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 528
    Width = 890
    Height = 361
    Align = alBottom
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object sButton1: TsButton
    Left = 56
    Top = 61
    Width = 75
    Height = 25
    Caption = 'sButton1'
    TabOrder = 1
    OnClick = sButton1Click
  end
  object sEdit1: TsEdit
    Left = 56
    Top = 92
    Width = 121
    Height = 21
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    Text = 'sEdit1'
  end
  object sButton2: TsButton
    Left = 56
    Top = 119
    Width = 75
    Height = 25
    Caption = 'sButton2'
    TabOrder = 3
    OnClick = sButton2Click
  end
  object sButton3: TsButton
    Left = 56
    Top = 150
    Width = 75
    Height = 25
    Caption = 'sButton3'
    TabOrder = 4
  end
  object VirtualStringTree1: TVirtualStringTree
    Left = 8
    Top = 369
    Width = 393
    Height = 153
    Header.AutoSizeIndex = 0
    Header.Font.Charset = DEFAULT_CHARSET
    Header.Font.Color = clWindowText
    Header.Font.Height = -11
    Header.Font.Name = 'Tahoma'
    Header.Font.Style = []
    TabOrder = 6
    Columns = <
      item
        Position = 0
      end>
  end
  object sDBGrid1: TsDBGrid
    Left = 0
    Top = 243
    Width = 882
    Height = 120
    Color = clWhite
    DataSource = DataSource2
    DrawingStyle = gdsGradient
    GradientEndColor = 14808056
    GradientStartColor = 15726842
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object sMemo1: TsMemo
    Left = 480
    Top = 384
    Width = 185
    Height = 89
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'sMemo1')
    ParentFont = False
    TabOrder = 7
    Text = 'sMemo1'
  end
  object sButton4: TsButton
    Left = 480
    Top = 479
    Width = 75
    Height = 25
    Caption = 'sButton4'
    TabOrder = 8
  end
  object kullanici_SMDBGrid: TSMDBGrid
    AlignWithMargins = True
    Left = 183
    Top = 8
    Width = 699
    Height = 229
    DataSource = DataSource3
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
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ADI'
        Title.Caption = 'Ad'#305
        Width = 63
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SOYADI'
        Title.Caption = 'Soyad'#305
        Width = 133
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BIRIM'
        Title.Caption = 'Birim'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON_DAHILI'
        Title.Caption = 'Telefon (Dahili)'
        Width = 158
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFON_GSM'
        Title.Caption = 'Telefon (GSM)'
        Width = 158
        Visible = True
      end>
  end
  object ZStoredProc1: TZStoredProc
    Connection = ZConnection1
    Params = <
      item
        DataType = ftWideString
        Name = 'PI_ADI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_SOYADI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_BIRIM'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_TELEFON_DAHILI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_TELEFON_GSM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'PI_ID'
        ParamType = ptInput
      end>
    StoredProcName = 'SP_KULLANICI_GUNCELLE'
    Left = 344
    Top = 112
    ParamData = <
      item
        DataType = ftWideString
        Name = 'PI_ADI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_SOYADI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_BIRIM'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_TELEFON_DAHILI'
        ParamType = ptInput
      end
      item
        DataType = ftWideString
        Name = 'PI_TELEFON_GSM'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'PI_ID'
        ParamType = ptInput
      end>
  end
  object ZTable1: TZTable
    Connection = ZConnection1
    SortedFields = 'ID'
    TableName = 'KULLANICI'
    IndexFieldNames = 'ID Asc'
    Left = 424
    Top = 112
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    ClientCodepage = 'WIN1254'
    Catalog = ''
    Properties.Strings = (
      'controls_cp=CP_UTF16'
      'codepage=WIN1254')
    HostName = ''
    Port = 0
    Database = ''
    User = 'SYSDBA'
    Password = 'masterkey'
    Protocol = 'firebirdd-2.5'
    Left = 256
    Top = 112
  end
  object frxReport1: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42644.565333900500000000
    ReportOptions.LastChange = 42644.565333900500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 352
    Top = 48
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end
      item
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Left = 3.779530000000000000
          Top = 3.779530000000001000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Memo.UTF8W = (
            'TEST')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1ADI: TfrxMemoView
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'ADI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."ADI"]')
          ParentFont = False
        end
        object frxDBDataset1SOYADI: TfrxMemoView
          Left = 166.299320000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'SOYADI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."SOYADI"]')
          ParentFont = False
        end
        object frxDBDataset1BIRIM: TfrxMemoView
          Left = 355.275820000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'BIRIM'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."BIRIM"]')
          ParentFont = False
        end
        object frxDBDataset1KAYIT_TARIHI: TfrxMemoView
          Left = 540.472790000000000000
          Width = 143.622140000000000000
          Height = 18.897650000000000000
          DataField = 'KAYIT_TARIHI'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."KAYIT_TARIHI"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Top = 1.574830000000020000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object frxDBDataset2TIPI: TfrxMemoView
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          DataField = 'TIPI'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."TIPI"]')
        end
        object frxDBDataset2DEGER1: TfrxMemoView
          Left = 355.275820000000000000
          Width = 158.740260000000000000
          Height = 22.677180000000000000
          DataField = 'DEGER1'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Memo.UTF8W = (
            '[frxDBDataset2."DEGER1"]')
        end
      end
      object DetailData2: TfrxDetailData
        FillType = ftBrush
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'frxDBDataset3'
        RowCount = 0
        object frxDBDataset3TIPI: TfrxMemoView
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'TIPI'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Memo.UTF8W = (
            '[frxDBDataset3."TIPI"]')
        end
        object frxDBDataset3KULLANICI_ADI: TfrxMemoView
          Left = 166.299320000000000000
          Width = 181.417440000000000000
          Height = 18.897650000000000000
          DataField = 'KULLANICI_ADI'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Memo.UTF8W = (
            '[frxDBDataset3."KULLANICI_ADI"]')
        end
        object frxDBDataset3SIFRE: TfrxMemoView
          Left = 355.275820000000000000
          Width = 211.653680000000000000
          Height = 18.897650000000000000
          DataField = 'SIFRE'
          DataSet = frxDBDataset3
          DataSetName = 'frxDBDataset3'
          Memo.UTF8W = (
            '[frxDBDataset3."SIFRE"]')
        end
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'ADI=ADI'
      'SOYADI=SOYADI'
      'BIRIM=BIRIM'
      'TELEFON_DAHILI=TELEFON_DAHILI'
      'TELEFON_GSM=TELEFON_GSM'
      'KAYIT_TARIHI=KAYIT_TARIHI')
    DataSet = ZTable1
    BCDToCurrency = False
    Left = 432
    Top = 48
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TIPI=TIPI'
      'DEGER1=DEGER1'
      'DEGER2=DEGER2'
      'DEGER3=DEGER3'
      'KULLANICI_ID=KULLANICI_ID'
      'KAYIT_TARIHI=KAYIT_TARIHI')
    DataSet = ZTable2
    BCDToCurrency = False
    Left = 528
    Top = 48
  end
  object ZTable2: TZTable
    Connection = ZConnection1
    SortedFields = 'ID'
    TableName = 'KULLANICI_BILGI'
    MasterFields = 'ID'
    MasterSource = DataSource1
    LinkedFields = 'KULLANICI_ID'
    IndexFieldNames = 'ID Asc'
    Left = 488
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = ZTable1
    Left = 424
    Top = 160
  end
  object ZTable3: TZTable
    Connection = ZConnection1
    SortedFields = 'ID'
    TableName = 'KULLANICI_GIRIS_BILGI'
    MasterFields = 'ID'
    MasterSource = DataSource1
    LinkedFields = 'KULLANICI_ID'
    IndexFieldNames = 'ID Asc'
    Left = 544
    Top = 112
  end
  object frxDBDataset3: TfrxDBDataset
    UserName = 'frxDBDataset3'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ID=ID'
      'TIPI=TIPI'
      'KULLANICI_ADI=KULLANICI_ADI'
      'SIFRE=SIFRE'
      'ACIKLAMA=ACIKLAMA'
      'ENVANTER_ID=ENVANTER_ID'
      'KULLANICI_ID=KULLANICI_ID'
      'KAYIT_TARIHI=KAYIT_TARIHI')
    DataSet = ZTable3
    BCDToCurrency = False
    Left = 616
    Top = 48
  end
  object ZReadOnlyQuery1: TZReadOnlyQuery
    Connection = ZConnection1
    SQL.Strings = (
      'SELECT * FROM KULLANICI')
    Params = <>
    Left = 512
    Top = 280
  end
  object DataSource2: TDataSource
    DataSet = ZReadOnlyQuery1
    Left = 608
    Top = 280
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    DriverID = 'BT_FB'
    VendorHome = 'F:\Adem\Desktop\bt_envanter\lib'
    VendorLib = 'fbembed.dll'
    Embedded = True
    Left = 816
    Top = 136
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=F:\Adem\Desktop\bt_envanter\data\BT'
      'Password=masterkey'
      'User_Name=SYSDBA'
      'CharacterSet=WIN1254'
      'DriverID=BT_FB')
    LoginPrompt = False
    Left = 824
    Top = 88
  end
  object FDTable1: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.AssignedValues = [uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_KULLANICI_ID'
    UpdateOptions.UpdateTableName = 'KULLANICI'
    UpdateOptions.KeyFields = 'ID'
    TableName = 'KULLANICI'
    Left = 744
    Top = 192
  end
  object FDScript1: TFDScript
    SQLScripts = <
      item
      end>
    Connection = FDConnection1
    Params = <>
    Macros = <>
    Left = 680
    Top = 192
  end
  object DataSource3: TDataSource
    DataSet = FDTable1
    Left = 816
    Top = 192
  end
end
