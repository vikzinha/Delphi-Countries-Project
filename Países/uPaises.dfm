object frmPaises: TfrmPaises
  Left = 0
  Top = 0
  Caption = 'Pa'#237'ses'
  ClientHeight = 524
  ClientWidth = 296
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object lblPais: TLabel
    Left = 33
    Top = 22
    Width = 32
    Height = 20
    Caption = 'Pa'#237's:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblCapital: TLabel
    Left = 33
    Top = 55
    Width = 53
    Height = 20
    Caption = 'Capital:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblContinente: TLabel
    Left = 33
    Top = 88
    Width = 83
    Height = 20
    Caption = 'Continente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblArea: TLabel
    Left = 33
    Top = 124
    Width = 36
    Height = 20
    Caption = #193'rea:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblPopulacao: TLabel
    Left = 33
    Top = 158
    Width = 77
    Height = 20
    Caption = 'Popula'#231#227'o:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblDensidade: TLabel
    Left = 33
    Top = 192
    Width = 76
    Height = 20
    Caption = 'Densidade:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -16
    Font.Name = 'AmpleSoft Pro Bold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbePais: TDBEdit
    Left = 136
    Top = 23
    Width = 121
    Height = 23
    DataField = 'NOME'
    DataSource = dsPaises
    TabOrder = 0
  end
  object dbeCapital: TDBEdit
    Left = 136
    Top = 56
    Width = 121
    Height = 23
    DataField = 'CAPITAL'
    DataSource = dsPaises
    TabOrder = 1
  end
  object dbeContinente: TDBEdit
    Left = 136
    Top = 89
    Width = 121
    Height = 23
    DataField = 'CONTINENTE'
    DataSource = dsPaises
    TabOrder = 2
  end
  object dbnPaises: TDBNavigator
    Left = 17
    Top = 376
    Width = 224
    Height = 25
    DataSource = dsPaises
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
    TabOrder = 3
  end
  object dbeArea: TDBEdit
    Left = 136
    Top = 125
    Width = 121
    Height = 23
    DataField = 'AREA'
    DataSource = dsPaises
    TabOrder = 4
  end
  object dbePopulacao: TDBEdit
    Left = 136
    Top = 159
    Width = 121
    Height = 23
    DataField = 'POPULACAO'
    DataSource = dsPaises
    TabOrder = 5
  end
  object dbeDensidade: TDBEdit
    Left = 136
    Top = 193
    Width = 121
    Height = 23
    DataField = 'Densidade'
    DataSource = dsPaises
    TabOrder = 6
  end
  object rdgContinente: TRadioGroup
    Left = 33
    Top = 248
    Width = 224
    Height = 105
    Caption = 'Pesquisar por Continente:'
    ItemIndex = 0
    Items.Strings = (
      'TODOS'
      'ASIA'
      'AMERICA DO NORTE'
      'AMERICA DO SUL')
    TabOrder = 7
    OnClick = rdgContinenteClick
  end
  object cnxPaises: TSQLConnection
    ConnectionName = 'MundoPaises'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DBXFirebirdDriver28' +
        '0.bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=28.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver280.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=28.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=C:\Users\vicvi\Documents\Salesiano\Delphi\Projetos\Pa'#237's' +
        'es\MUNDO.FDB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False')
    Connected = True
    Left = 49
    Top = 432
  end
  object dsPaises: TDataSource
    DataSet = qryPaises
    Left = 201
    Top = 432
  end
  object qryPaises: TSQLQuery
    OnCalcFields = qryPaisesCalcFields
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select nome, capital, continente, area, populacao from paises')
    SQLConnection = cnxPaises
    Left = 128
    Top = 432
    object qryPaisesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qryPaisesCAPITAL: TStringField
      FieldName = 'CAPITAL'
      Size = 30
    end
    object qryPaisesCONTINENTE: TStringField
      FieldName = 'CONTINENTE'
      Size = 30
    end
    object qryPaisesAREA: TLargeintField
      FieldName = 'AREA'
    end
    object qryPaisesPOPULACAO: TLargeintField
      FieldName = 'POPULACAO'
    end
    object qryPaisesDensidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Densidade'
      Calculated = True
    end
  end
end
