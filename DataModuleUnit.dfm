object dmPublic: TdmPublic
  OldCreateOrder = False
  Left = 401
  Top = 151
  Height = 631
  Width = 974
  object Conn: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=database.mdb;Persis' +
      't Security Info=False;'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object frxReport: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41031.806130821800000000
    ReportOptions.LastChange = 43332.688220833330000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'procedure Memo4OnBeforePrint(Sender: TfrxComponent);'
      'begin'
      ''
      'end;'
      ''
      'begin'
      ''
      'end.')
    Left = 568
    Top = 16
    Datasets = <
      item
        DataSet = frxSaldo
        DataSetName = 'frxSaldo'
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
        Height = 113.385900000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Width = 718.110700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1056#1109#1057#1026#1056#1109#1057#8218#1056#1029#1056#1109'-'#1057#1027#1056#176#1056#187#1057#1034#1056#1169#1056#1109#1056#1030#1056#176#1057#1039' '#1056#1030#1056#181#1056#1169#1056#1109#1056#1112#1056#1109#1057#1027#1057#8218#1057#1034
            #1056#1029#1056#176' '#1056#1111#1056#181#1057#1026#1056#1105#1056#1109#1056#1169' '#1057#1027' [DateStart] '#1056#1111#1056#1109' [DateEnd]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo2: TfrxMemoView
          Top = 75.590600000000000000
          Width = 264.567100000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1057#1033#1056#181#1056#1108#1057#8218)
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 264.567100000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216#1056#176#1056#187#1056#176#1056#1029#1057#1027' '#1056#1029#1056#176' [DateStart]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 604.724800000000000000
          Top = 75.590600000000000000
          Width = 113.385900000000000000
          Height = 37.795300000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8216#1056#176#1056#187#1056#176#1056#1029#1057#1027' '#1056#1029#1056#176' [DateEnd]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 377.953000000000000000
          Top = 75.590600000000000000
          Width = 226.771800000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1115#1056#177#1056#1109#1057#1026#1056#1109#1057#8218)
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 377.953000000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#177#1056#181#1057#8218)
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 491.338900000000000000
          Top = 94.488250000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            #1056#1113#1057#1026#1056#181#1056#1169#1056#1105#1057#8218)
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Top = 52.913420000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8 = (
            
              #1057#8218#1056#1105#1056#1111' '#1056#1109#1056#1111#1056#187#1056#176#1057#8218#1057#8249': [PaymentType], '#1056#1108#1056#187#1056#1105#1056#181#1056#1029#1057#8218': [Client], '#1056#1169#1056#1109 +
              #1056#1110#1056#1109#1056#1030#1056#1109#1057#1026': [Document]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end>
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Height = 18.897650000000000000
        Top = 192.756030000000000000
        Width = 718.110700000000000000
        DataSet = frxSaldo
        DataSetName = 'frxSaldo'
        RowCount = 0
        object Memo4: TfrxMemoView
          Width = 264.567100000000000000
          Height = 18.897650000000000000
          OnBeforePrint = 'Memo4OnBeforePrint'
          DataField = 'ObjectName'
          DataSet = frxSaldo
          DataSetName = 'frxSaldo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8 = (
            '[frxSaldo."ObjectName"]')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 264.567100000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'B0'
          DataSet = frxSaldo
          DataSetName = 'frxSaldo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSaldo."B0"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 377.953000000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'D1'
          DataSet = frxSaldo
          DataSetName = 'frxSaldo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSaldo."D1"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          Left = 491.338900000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'K1'
          DataSet = frxSaldo
          DataSetName = 'frxSaldo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSaldo."K1"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 604.724800000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'B2'
          DataSet = frxSaldo
          DataSetName = 'frxSaldo'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haRight
          Memo.UTF8 = (
            '[frxSaldo."B2"]')
          ParentFont = False
        end
      end
    end
  end
  object dsDocumentState: TDataSource
    DataSet = tDocumentState
    Left = 24
    Top = 80
  end
  object tDocumentState: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDocumentStateAfterInsert
    IndexFieldNames = 'DayCount'
    TableName = 'DocumentState'
    Left = 40
    Top = 96
    object tDocumentStateObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDocumentStateObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
    end
    object tDocumentStateDocumentStateName: TWideStringField
      FieldName = 'DocumentStateName'
      Size = 255
    end
    object tDocumentStateDocumentIsOpen: TBooleanField
      FieldName = 'DocumentIsOpen'
    end
    object tDocumentStateDocumentColor: TWideStringField
      FieldName = 'DocumentColor'
      Size = 50
    end
    object tDocumentStateDayCount: TIntegerField
      FieldName = 'DayCount'
    end
  end
  object dsClientType: TDataSource
    DataSet = tClientType
    Left = 24
    Top = 152
  end
  object tClientType: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientTypeAfterInsert
    TableName = 'ClientType'
    Left = 40
    Top = 168
    object tClientTypeObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientTypeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientTypeClientTypeName: TWideStringField
      FieldName = 'ClientTypeName'
      Size = 50
    end
  end
  object dsClientTypeAttribute: TDataSource
    DataSet = tClientTypeAttribute
    Left = 24
    Top = 224
  end
  object tClientTypeAttribute: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientTypeAttributeAfterInsert
    IndexFieldNames = 'ClientTypeId'
    MasterFields = 'ObjectIntId'
    MasterSource = dsClientType
    TableName = 'ClientTypeAttribute'
    Left = 40
    Top = 240
    object tClientTypeAttributeObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientTypeAttributeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientTypeAttributeAttributeName: TWideStringField
      FieldName = 'AttributeName'
      Size = 50
    end
    object tClientTypeAttributeClientTypeId: TIntegerField
      FieldName = 'ClientTypeId'
    end
    object tClientTypeAttributeNumber: TIntegerField
      FieldName = 'Number'
    end
  end
  object dsClient: TDataSource
    DataSet = tClient
    Left = 24
    Top = 304
  end
  object tClient: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientAfterInsert
    TableName = 'Client'
    Left = 40
    Top = 320
    object tClientObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientClientName: TWideStringField
      FieldName = 'ClientName'
      Size = 255
    end
    object tClientClientTypeId: TIntegerField
      FieldName = 'ClientTypeId'
    end
    object tClientClientType: TStringField
      FieldKind = fkLookup
      FieldName = 'ClientType'
      LookupDataSet = tClientType
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'ClientTypeName'
      KeyFields = 'ClientTypeId'
      Size = 50
      Lookup = True
    end
    object tClientClientGroupId: TIntegerField
      FieldName = 'ClientGroupId'
    end
    object tClientClientGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClientGroup'
      LookupDataSet = tClientGroup
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'ClientGroupName'
      KeyFields = 'ClientGroupId'
      Size = 50
      Lookup = True
    end
  end
  object dsClientAttributeValue: TDataSource
    DataSet = tClientAttributeValue
    Left = 24
    Top = 376
  end
  object tClientAttributeValue: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientAttributeValueAfterInsert
    IndexFieldNames = 'ClientId'
    MasterFields = 'ObjectIntId'
    MasterSource = dsClient
    TableName = 'ClientAttributeValue'
    Left = 40
    Top = 392
    object tClientAttributeValueObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientAttributeValueObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientAttributeValueClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object tClientAttributeValueAttributeId: TIntegerField
      FieldName = 'AttributeId'
    end
    object tClientAttributeValueAttributeValue: TWideStringField
      FieldName = 'AttributeValue'
      Size = 255
    end
    object tClientAttributeValueAttribute: TStringField
      FieldKind = fkLookup
      FieldName = 'Attribute'
      LookupDataSet = tClientTypeAttributeList
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'AttributeName'
      KeyFields = 'AttributeId'
      Size = 50
      Lookup = True
    end
    object tClientAttributeValueNumber: TIntegerField
      FieldKind = fkLookup
      FieldName = 'Number'
      LookupDataSet = tClientTypeAttributeList
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'Number'
      KeyFields = 'AttributeId'
      Lookup = True
    end
  end
  object dsClientTypeAttributeList: TDataSource
    DataSet = tClientTypeAttributeList
    Left = 128
    Top = 224
  end
  object tClientTypeAttributeList: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientTypeAttributeAfterInsert
    TableName = 'ClientTypeAttribute'
    Left = 144
    Top = 240
    object tClientTypeAttributeListObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientTypeAttributeListObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientTypeAttributeListAttributeName: TWideStringField
      FieldName = 'AttributeName'
      Size = 50
    end
    object tClientTypeAttributeListClientTypeId: TIntegerField
      FieldName = 'ClientTypeId'
    end
    object tClientTypeAttributeListNumber: TIntegerField
      FieldName = 'Number'
    end
  end
  object dsDocument: TDataSource
    DataSet = tDocument
    Left = 128
    Top = 80
  end
  object tDocument: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDocumentAfterInsert
    BeforePost = tDocumentBeforePost
    OnCalcFields = tDocumentCalcFields
    IndexFieldNames = 'DocumentDate'
    TableName = 'Document'
    Left = 144
    Top = 96
    object tDocumentObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDocumentObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDocumentDocumentStateId: TIntegerField
      FieldName = 'DocumentStateId'
    end
    object tDocumentComment: TWideStringField
      FieldName = 'Comment'
      Size = 255
    end
    object tDocumentClientId: TIntegerField
      FieldName = 'ClientId'
    end
    object tDocumentClient: TStringField
      FieldKind = fkLookup
      FieldName = 'Client'
      LookupDataSet = tClient
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'ClientName'
      KeyFields = 'ClientId'
      Size = 50
      Lookup = True
    end
    object tDocumentDocumentDate: TDateTimeField
      FieldName = 'DocumentDate'
    end
    object tDocumentDocumentStartDate: TDateTimeField
      FieldName = 'DocumentStartDate'
    end
    object tDocumentIsArchive: TBooleanField
      FieldName = 'IsArchive'
    end
    object tDocumentGroupId: TIntegerField
      FieldName = 'GroupId'
    end
    object tDocumentDocumentGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'DocumentGroup'
      LookupDataSet = tDocumentGroup
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'GroupName'
      KeyFields = 'GroupId'
      Size = 50
      Lookup = True
    end
    object tDocumentClientGroup: TStringField
      FieldKind = fkLookup
      FieldName = 'ClientGroup'
      LookupDataSet = tClient
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'ClientGroup'
      KeyFields = 'ClientId'
      Size = 50
      Lookup = True
    end
    object tDocumentDaysCount: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'DaysCount'
      Calculated = True
    end
    object tDocumentDocumentPaymentDate: TDateTimeField
      FieldName = 'DocumentPaymentDate'
    end
    object tDocumentClientGroupCalc: TStringField
      FieldKind = fkCalculated
      FieldName = 'ClientGroupCalc'
      Size = 50
      Calculated = True
    end
    object tDocumentPaymentTypeId: TWideStringField
      FieldName = 'PaymentTypeId'
      Size = 50
    end
    object tDocumentPaymentType: TStringField
      FieldKind = fkLookup
      FieldName = 'PaymentType'
      LookupDataSet = tPaymentType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'PaymentTypeId'
      Size = 255
      Lookup = True
    end
    object tDocumentDocumentNumber: TWideStringField
      FieldName = 'DocumentNumber'
    end
    object tDocumentDocumentCode: TIntegerField
      FieldName = 'DocumentCode'
    end
    object tDocumentDescription: TStringField
      FieldKind = fkCalculated
      FieldName = 'Description'
      Size = 255
      Calculated = True
    end
    object tDocumentIsApproved: TBooleanField
      FieldName = 'IsApproved'
    end
    object tDocumentDocumentState: TStringField
      FieldKind = fkCalculated
      FieldName = 'State'
      Size = 255
      Calculated = True
    end
    object tDocumentDiscontPercent: TFloatField
      FieldName = 'DiscontPercent'
      DisplayFormat = '#0.00'
    end
    object tDocumentDocumentSum: TFloatField
      FieldName = 'DocumentSum'
      DisplayFormat = '#0.00'
    end
    object tDocumentDiscontSum: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DiscontSum'
      DisplayFormat = '#0.00'
      Calculated = True
    end
    object tDocumentDocumentSumTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DocumentSumTotal'
      DisplayFormat = '#0.00'
      Calculated = True
    end
  end
  object frxDBDocument: TfrxDBDataset
    UserName = 'frxDBDocument'
    CloseDataSource = False
    DataSource = dsDocument
    BCDToCurrency = False
    Left = 496
    Top = 16
  end
  object dsClientGroup: TDataSource
    DataSet = tClientGroup
    Left = 216
    Top = 80
  end
  object tClientGroup: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tClientGroupAfterInsert
    TableName = 'ClientGroup'
    Left = 232
    Top = 96
    object tClientGroupObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tClientGroupObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tClientGroupClientGroupName: TWideStringField
      FieldName = 'ClientGroupName'
      Size = 50
    end
  end
  object dsDocumentGroup: TDataSource
    DataSet = tDocumentGroup
    Left = 216
    Top = 152
  end
  object tDocumentGroup: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDocumentGroupAfterInsert
    TableName = 'DocumentGroup'
    Left = 232
    Top = 168
    object tDocumentGroupObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDocumentGroupObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDocumentGroupGroupName: TWideStringField
      FieldName = 'GroupName'
      Size = 50
    end
  end
  object frxDBClients: TfrxDBDataset
    UserName = 'frxDBClient'
    CloseDataSource = False
    DataSource = dsClient
    BCDToCurrency = False
    Left = 496
    Top = 72
  end
  object dsDocumentPayment: TDataSource
    DataSet = tDocumentPayment
    Left = 312
    Top = 152
  end
  object tDocumentPayment: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDocumentPaymentAfterInsert
    AfterPost = tDocumentPaymentAfterPost
    AfterDelete = tDocumentPaymentAfterDelete
    OnCalcFields = tDocumentPaymentCalcFields
    IndexFieldNames = 'DocumentId;PaymentDate'
    MasterFields = 'ObjectIntId'
    MasterSource = dsDocument
    TableName = 'DocumentPayment'
    Left = 328
    Top = 168
    object tDocumentPaymentObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tDocumentPaymentObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tDocumentPaymentDocumentId: TIntegerField
      FieldName = 'DocumentId'
    end
    object tDocumentPaymentPaymentDate: TDateTimeField
      FieldName = 'PaymentDate'
    end
    object tDocumentPaymentPaymentSum: TIntegerField
      FieldName = 'PaymentSum'
    end
    object tDocumentPaymentPaymentDone: TBooleanField
      FieldName = 'PaymentDone'
    end
    object tDocumentPaymentPaymentTypeId: TWideStringField
      FieldName = 'PaymentTypeId'
      Size = 50
    end
    object tDocumentPaymentPayment: TStringField
      FieldKind = fkLookup
      FieldName = 'PaymentType'
      LookupDataSet = tPaymentType
      LookupKeyFields = 'ObjectId'
      LookupResultField = 'ObjectName'
      KeyFields = 'PaymentTypeId'
      Size = 255
      Lookup = True
    end
    object tDocumentPaymentPaymentState: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaymentState'
      Size = 255
      Calculated = True
    end
    object tDocumentPaymentDocumentNumber: TWideStringField
      FieldName = 'DocumentNumber'
    end
    object tDocumentPaymentDocumentCode: TIntegerField
      FieldName = 'DocumentCode'
    end
    object tDocumentPaymentDescription: TStringField
      FieldKind = fkCalculated
      FieldName = 'Description'
      Size = 255
      Calculated = True
    end
  end
  object qVersion: TADOQuery
    Connection = Conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select ObjectCode from Version')
    Left = 496
    Top = 136
    object qVersionObjectCode: TIntegerField
      FieldName = 'ObjectCode'
    end
  end
  object qCreateVersionTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table Version'
      '(ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'ObjectCode int);')
    Left = 496
    Top = 192
  end
  object qCreatePaymentTypeTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table PaymentType'
      '('
      'ObjectId VARCHAR(50),'
      'ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'ObjectCode int NOT NULL,'
      'ObjectName varchar(255) NOT NULL,'
      'Prefix varchar(10)'
      ');')
    Left = 496
    Top = 248
  end
  object dsPaymentType: TDataSource
    DataSet = tPaymentType
    Left = 128
    Top = 296
  end
  object tPaymentType: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tPaymentTypeAfterInsert
    TableName = 'PaymentType'
    Left = 144
    Top = 312
    object tPaymentTypeObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tPaymentTypeObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPaymentTypeObjectCode: TIntegerField
      FieldName = 'ObjectCode'
    end
    object tPaymentTypeObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tPaymentTypePrefix: TWideStringField
      FieldName = 'Prefix'
      Size = 10
    end
  end
  object qCommon: TADOQuery
    Connection = Conn
    Parameters = <>
    Left = 384
    Top = 16
    object IntegerField1: TIntegerField
      FieldName = 'ObjectCode'
    end
  end
  object qAlterDocument: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add PaymentTypeId varchar(50)')
    Left = 496
    Top = 304
  end
  object qAlterDocumentPayment: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table DocumentPayment add PaymentTypeId varchar(50)')
    Left = 496
    Top = 384
  end
  object qAlterDocument01: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add DocumentNumber varchar(20)')
    Left = 512
    Top = 320
  end
  object qAlterDocument02: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add DocumentCode int')
    Left = 528
    Top = 336
  end
  object qGetMaxDocumentNumber: TADOQuery
    Connection = Conn
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select max(DocumentCode) as Code from Document')
    Left = 144
    Top = 376
    object qGetMaxDocumentNumberCode: TIntegerField
      FieldName = 'Code'
    end
  end
  object qGetMaxCode: TADOQuery
    Connection = Conn
    Parameters = <>
    Left = 384
    Top = 64
  end
  object qAlterDocumentPayment01: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table DocumentPayment add DocumentNumber varchar(20)'
      '')
    Left = 512
    Top = 400
  end
  object qAlterDocumentPayment02: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table DocumentPayment add DocumentCode int')
    Left = 528
    Top = 416
  end
  object tPayment: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tDocumentPaymentAfterInsert
    AfterPost = tDocumentPaymentAfterPost
    AfterDelete = tDocumentPaymentAfterDelete
    OnCalcFields = tPaymentCalcFields
    TableName = 'DocumentPayment'
    Left = 328
    Top = 240
    object tPaymentObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tPaymentObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tPaymentDocumentId: TIntegerField
      FieldName = 'DocumentId'
    end
    object tPaymentPaymentDate: TDateTimeField
      FieldName = 'PaymentDate'
    end
    object tPaymentPaymentSum: TIntegerField
      FieldName = 'PaymentSum'
    end
    object tPaymentPaymentDone: TBooleanField
      FieldName = 'PaymentDone'
    end
    object tPaymentPaymentTypeId: TWideStringField
      FieldName = 'PaymentTypeId'
      Size = 50
    end
    object tPaymentDocumentNumber: TWideStringField
      FieldName = 'DocumentNumber'
    end
    object tPaymentDocumentCode: TIntegerField
      FieldName = 'DocumentCode'
    end
    object tPaymentDocument: TStringField
      FieldKind = fkLookup
      FieldName = 'Document'
      LookupDataSet = tDocument
      LookupKeyFields = 'ObjectIntId'
      LookupResultField = 'Description'
      KeyFields = 'DocumentId'
      Size = 255
      Lookup = True
    end
    object tPaymentPaymentState: TStringField
      FieldKind = fkCalculated
      FieldName = 'PaymentState'
      Size = 255
      Calculated = True
    end
    object tPaymentDescription: TStringField
      FieldKind = fkCalculated
      FieldName = 'Description'
      Size = 255
      Calculated = True
    end
  end
  object dsPayment: TDataSource
    DataSet = tPayment
    Left = 312
    Top = 224
  end
  object qAlterDocument03: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add IsApproved bit')
    Left = 544
    Top = 352
  end
  object qAlterDocument04: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add DiscontPercent double')
    Left = 360
    Top = 312
  end
  object qAlterDocument05: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Document add DocumentSum double')
    Left = 376
    Top = 328
  end
  object qCreateSaldoTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table Saldo'
      '('
      'ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'ObjectCode VARCHAR(50),'
      'ObjectName varchar(255),'
      'D0 double, '
      'D1 double,'
      'K0 double,'
      'K1 double'
      ');')
    Left = 336
    Top = 400
  end
  object dsSaldo: TDataSource
    DataSet = tSaldo
    Left = 144
    Top = 432
  end
  object tSaldo: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tSaldoAfterInsert
    OnCalcFields = tSaldoCalcFields
    TableName = 'Saldo'
    Left = 160
    Top = 448
    object tSaldoObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tSaldoObjectCode: TWideStringField
      FieldName = 'ObjectCode'
      Size = 50
    end
    object tSaldoObjectName: TWideStringField
      FieldName = 'ObjectName'
      Size = 255
    end
    object tSaldoD0: TFloatField
      FieldName = 'D0'
    end
    object tSaldoD1: TFloatField
      FieldName = 'D1'
    end
    object tSaldoK0: TFloatField
      FieldName = 'K0'
    end
    object tSaldoK1: TFloatField
      FieldName = 'K1'
    end
    object tSaldoD2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'D2'
      Calculated = True
    end
    object tSaldoK2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'K2'
      Calculated = True
    end
    object tSaldoB0: TFloatField
      FieldKind = fkCalculated
      FieldName = 'B0'
      Calculated = True
    end
    object tSaldoB2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'B2'
      Calculated = True
    end
    object tSaldoB1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'B1'
      Calculated = True
    end
  end
  object frxSaldo: TfrxDBDataset
    UserName = 'frxSaldo'
    CloseDataSource = False
    DataSource = dsSaldo
    BCDToCurrency = False
    Left = 568
    Top = 72
  end
  object qCreateRouteTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table Route'
      '('
      'ObjectId VARCHAR(50),'
      'ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'ObjectCode int'
      ');')
    Left = 624
    Top = 192
  end
  object dsRoute: TDataSource
    DataSet = tRoute
    Left = 32
    Top = 504
  end
  object tRoute: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tRouteAfterInsert
    OnPostError = tRoutePostError
    TableName = 'Route'
    Left = 48
    Top = 520
    object tRouteObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tRouteObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tRouteObjectCode: TIntegerField
      FieldName = 'ObjectCode'
    end
  end
  object qCreateRoutesetTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table Routeset'
      '('
      'ObjectId VARCHAR(50),'
      'ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'Name VARCHAR(255)'
      ');')
    Left = 624
    Top = 240
  end
  object tRouteset: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tRoutesetAfterInsert
    TableName = 'Routeset'
    Left = 120
    Top = 520
    object tRoutesetObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tRoutesetObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tRoutesetName: TWideStringField
      FieldName = 'Name'
      Size = 255
    end
  end
  object dsRouteset: TDataSource
    DataSet = tRouteset
    Left = 104
    Top = 504
  end
  object qCreateRoutesetDetailTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'create table RoutesetDetail'
      '('
      'ObjectId VARCHAR(50),'
      'ObjectIntId COUNTER CONSTRAINT PrimaryKey PRIMARY KEY,'
      'RoutesetId INT,'
      'CarCount INT'
      ');')
    Left = 624
    Top = 296
  end
  object qAlterRoutesetDetailTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table RoutesetDetail '
      'add CONSTRAINT RoutesetDetailRouteId '
      'FOREIGN KEY (RoutesetId)'
      'REFERENCES Routeset(ObjectIntId) '
      'ON UPDATE CASCADE '
      'ON DELETE CASCADE;')
    Left = 624
    Top = 344
  end
  object qAlterRouteTable: TADOQuery
    Connection = Conn
    Parameters = <>
    SQL.Strings = (
      'alter table Route add CONSTRAINT RouteAK1 UNIQUE (ObjectCode)')
    Left = 624
    Top = 400
  end
  object tRoutesetDetail: TADOTable
    Connection = Conn
    CursorType = ctStatic
    AfterInsert = tRoutesetDetailAfterInsert
    TableName = 'RoutesetDetail'
    Left = 192
    Top = 520
    object tRoutesetDetailObjectId: TWideStringField
      FieldName = 'ObjectId'
      Size = 50
    end
    object tRoutesetDetailObjectIntId: TAutoIncField
      FieldName = 'ObjectIntId'
      ReadOnly = True
    end
    object tRoutesetDetailRoutesetId: TIntegerField
      FieldName = 'RoutesetId'
    end
    object tRoutesetDetailCarCount: TIntegerField
      FieldName = 'CarCount'
    end
  end
  object dsRoutesetDetail: TDataSource
    DataSet = tRoutesetDetail
    Left = 176
    Top = 504
  end
end
