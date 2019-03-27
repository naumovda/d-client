inherited PersonEdit: TPersonEdit
  Left = 399
  Top = 244
  Caption = #1048#1085#1092#1086#1088#1084#1072#1094#1080#1103' '#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1077
  ClientHeight = 314
  ClientWidth = 805
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 805
    Height = 274
    object cxLabel1: TcxLabel
      Left = 16
      Top = 56
      Caption = #1060#1072#1084#1080#1083#1080#1103':'
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 120
      Top = 8
      DataBinding.DataField = 'PersonFirstName'
      DataBinding.DataSource = DSMaster
      TabOrder = 1
      Width = 121
    end
    object cxLabel2: TcxLabel
      Left = 16
      Top = 8
      Caption = #1048#1084#1103':'
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 120
      Top = 32
      DataBinding.DataField = 'PersonSecondName'
      DataBinding.DataSource = DSMaster
      TabOrder = 3
      Width = 121
    end
    object cxLabel3: TcxLabel
      Left = 16
      Top = 32
      Caption = #1054#1090#1095#1077#1089#1090#1074#1086':'
    end
    object cxDBTextEdit3: TcxDBTextEdit
      Left = 120
      Top = 56
      DataBinding.DataField = 'PersonLastName'
      DataBinding.DataSource = DSMaster
      TabOrder = 5
      Width = 121
    end
    object cxLabel4: TcxLabel
      Left = 16
      Top = 80
      Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 120
      Top = 80
      DataBinding.DataField = 'Post'
      DataBinding.DataSource = DSMaster
      Properties.KeyFieldNames = 'PostId'
      Properties.ListColumns = <
        item
          Caption = #1053#1072#1079#1074#1072#1085#1080#1077
          SortOrder = soAscending
          FieldName = 'PostName'
        end>
      TabOrder = 7
      Width = 121
    end
    object cxLabel5: TcxLabel
      Left = 16
      Top = 104
      Caption = #1060#1086#1088#1084#1072' '#1085#1072#1081#1084#1072
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 120
      Top = 104
      DataBinding.DataField = 'HireKind'
      DataBinding.DataSource = DSMaster
      Properties.KeyFieldNames = 'HireKindId'
      Properties.ListColumns = <
        item
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          FieldName = 'HireKindName'
        end>
      TabOrder = 9
      Width = 121
    end
    object cxLabel6: TcxLabel
      Left = 280
      Top = 8
      Caption = #1042#1086#1079#1088#1072#1089#1090':'
    end
    object cxDBCalcEdit1: TcxDBCalcEdit
      Left = 384
      Top = 8
      DataBinding.DataField = 'PersonAge'
      DataBinding.DataSource = DSMaster
      TabOrder = 11
      Width = 121
    end
    object cxLabel7: TcxLabel
      Left = 280
      Top = 32
      Caption = #1047#1072#1088#1072#1073#1086#1090#1085#1072#1103' '#1087#1083#1072#1090#1072':'
    end
    object cxDBCalcEdit2: TcxDBCalcEdit
      Left = 384
      Top = 32
      DataBinding.DataField = 'PersonCost'
      DataBinding.DataSource = DSMaster
      TabOrder = 13
      Width = 121
    end
    object cxLabel8: TcxLabel
      Left = 280
      Top = 56
      Caption = #1044#1072#1090#1072' '#1085#1072#1081#1084#1072':'
    end
    object cxDBDateEdit1: TcxDBDateEdit
      Left = 384
      Top = 56
      DataBinding.DataField = 'PersonHireDate'
      DataBinding.DataSource = DSMaster
      TabOrder = 15
      Width = 121
    end
    object cxLabel9: TcxLabel
      Left = 536
      Top = 8
      Caption = #1057#1090#1072#1078' '#1086#1073#1097#1080#1081':'
    end
    object cxDBCalcEdit3: TcxDBCalcEdit
      Left = 680
      Top = 8
      DataBinding.DataField = 'PersonStage'
      DataBinding.DataSource = DSMaster
      TabOrder = 17
      Width = 121
    end
    object cxLabel10: TcxLabel
      Left = 536
      Top = 32
      Caption = #1057#1090#1072#1078' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    end
    object cxDBCalcEdit4: TcxDBCalcEdit
      Left = 680
      Top = 32
      DataBinding.DataField = 'PersonStageSpec'
      DataBinding.DataSource = DSMaster
      TabOrder = 19
      Width = 121
    end
    object cxLabel11: TcxLabel
      Left = 536
      Top = 56
      Caption = #1057#1090#1072#1078' '#1074' '#1076#1072#1085#1085#1086#1081' '#1076#1086#1083#1078#1085#1086#1089#1090#1080':'
    end
    object cxDBCalcEdit5: TcxDBCalcEdit
      Left = 680
      Top = 56
      DataBinding.DataField = 'PersonStagePost'
      DataBinding.DataSource = DSMaster
      TabOrder = 21
      Width = 121
    end
    object cxLabel12: TcxLabel
      Left = 16
      Top = 128
      Caption = #1040#1076#1088#1077#1089':'
    end
    object cxDBTextEdit4: TcxDBTextEdit
      Left = 120
      Top = 128
      DataBinding.DataField = 'PersonAddress'
      DataBinding.DataSource = DSMaster
      TabOrder = 23
      Width = 681
    end
    object cxLabel13: TcxLabel
      Left = 16
      Top = 152
      Caption = #1058#1077#1083#1077#1092#1086#1085#1099':'
    end
    object cxDBTextEdit5: TcxDBTextEdit
      Left = 120
      Top = 152
      DataBinding.DataField = 'PersonPhone'
      DataBinding.DataSource = DSMaster
      TabOrder = 25
      Width = 681
    end
    object cxLabel14: TcxLabel
      Left = 16
      Top = 176
      Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077':'
    end
    object cxDBMemo1: TcxDBMemo
      Left = 120
      Top = 176
      DataBinding.DataField = 'PersonComment'
      DataBinding.DataSource = DSMaster
      TabOrder = 27
      Height = 89
      Width = 681
    end
  end
  inherited cxPageControl: TcxPageControl
    Top = 297
    Width = 805
    Height = 3
    ClientRectBottom = 5
    ClientRectRight = 805
    ClientRectTop = 5
    inherited cxTable: TcxTabSheet
      inherited dxBarDockControl: TdxBarDockControl
        Width = 805
      end
      inherited Grid: TcxGrid
        Width = 805
        Height = 1
      end
    end
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tPerson
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
    DockControlHeights = (
      0
      0
      23
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 486
    end
  end
end
