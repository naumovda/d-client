inherited OrganizationEdit: TOrganizationEdit
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086#1073' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
  ClientHeight = 391
  ClientWidth = 480
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 480
    Height = 346
    object cxLabel1: TcxLabel
      Left = 40
      Top = 8
      Caption = #1042#1080#1076' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080':'
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 144
      Top = 8
      DataBinding.DataField = 'OrganizationKind'
      DataBinding.DataSource = DSMaster
      Properties.ImmediatePost = True
      Properties.KeyFieldNames = 'OrganizationKindId'
      Properties.ListColumns = <
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FieldName = 'Name'
        end>
      TabOrder = 1
      Width = 153
    end
    object cxLabel2: TcxLabel
      Left = 51
      Top = 32
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 144
      Top = 32
      DataBinding.DataField = 'OrganizationName'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Width = 329
    end
    object cxLabel3: TcxLabel
      Left = 56
      Top = 56
      Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100':'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 144
      Top = 56
      DataBinding.DataField = 'OrganizationBase'
      DataBinding.DataSource = DSMaster
      TabOrder = 5
      Width = 329
    end
    object cxLabel4: TcxLabel
      Left = 103
      Top = 80
      Caption = #1048#1053#1053':'
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 144
      Top = 80
      DataBinding.DataField = 'OrganizationINN'
      DataBinding.DataSource = DSMaster
      TabOrder = 7
      Width = 329
    end
    object cxLabel5: TcxLabel
      Left = 96
      Top = 104
      Caption = #1040#1076#1088#1077#1089':'
    end
    object cxDBMemo1: TcxDBMemo
      Left = 144
      Top = 104
      DataBinding.DataField = 'OrganizationAddress'
      DataBinding.DataSource = DSMaster
      TabOrder = 9
      Height = 65
      Width = 329
    end
    object cxLabel6: TcxLabel
      Left = 82
      Top = 176
      Caption = #1042#1077#1073'-'#1089#1072#1081#1090':'
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 144
      Top = 176
      DataBinding.DataField = 'OrganizationSite'
      DataBinding.DataSource = DSMaster
      TabOrder = 11
      Width = 329
    end
    object cxLabel7: TcxLabel
      Left = 8
      Top = 200
      Caption = #1041#1072#1085#1082#1086#1074#1089#1082#1080#1077' '#1088#1077#1082#1074#1080#1079#1080#1090#1099':'
    end
    object cxDBMemo2: TcxDBMemo
      Left = 144
      Top = 200
      DataBinding.DataField = 'OrganizationBank'
      DataBinding.DataSource = DSMaster
      TabOrder = 13
      Height = 65
      Width = 329
    end
    object cxLabel8: TcxLabel
      Left = 64
      Top = 264
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
    end
    object cxDBMemo3: TcxDBMemo
      Left = 144
      Top = 272
      DataBinding.DataField = 'OrganizationComment'
      DataBinding.DataSource = DSMaster
      TabOrder = 15
      Height = 65
      Width = 329
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 369
    Width = 480
    Height = 2
    ClientRectBottom = 4
    ClientRectRight = 480
    ClientRectTop = 4
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 480
      end
      inherited Grid: TcxGrid
        Width = 480
        Height = 25
      end
    end
  end
  inherited DS: TDataSource
    Left = 432
    Top = 56
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tOrganization
    Left = 504
    Top = 32
  end
  inherited ActionList: TActionList
    Left = 496
    Top = 56
  end
  inherited ImageList: TImageList
    Left = 400
    Top = 58
  end
  inherited cxStyleRep: TcxStyleRepository
    Left = 528
    Top = 56
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True)
    Left = 560
    Top = 56
    DockControlHeights = (
      0
      0
      23
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 161
    end
  end
  inherited dxBarDB: TdxBarDBNavigator
    Left = 600
    Top = 57
  end
end
