inherited Expense: TExpense
  Left = 230
  Top = 243
  Width = 1012
  Height = 322
  Caption = #1057#1090#1072#1090#1100#1080' '#1079#1072#1090#1088#1072#1090
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    Left = 233
    Width = 771
    Height = 269
    inherited tvMain: TcxGridDBTableView
      object tvMainIsUsed: TcxGridDBColumn
        Caption = #1040#1082#1090#1080#1074#1085#1072#1103
        DataBinding.FieldName = 'IsUsed'
        Width = 63
      end
      object tvMainCode: TcxGridDBColumn
        Caption = #1050#1086#1076
        DataBinding.FieldName = 'Code'
        Width = 94
      end
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'Name'
        Width = 143
      end
      object tvMainIsDetailedByPerson: TcxGridDBColumn
        Caption = #1044#1077#1090'. '#1087#1086' '#1091#1095#1072#1089#1090#1085#1080#1082#1072#1084
        DataBinding.FieldName = 'IsDetailedByPerson'
        Width = 117
      end
      object tvMainIsDetailedByDate: TcxGridDBColumn
        Caption = #1044#1077#1090'. '#1087#1086' '#1076#1072#1090#1072#1084
        DataBinding.FieldName = 'IsDetailedByDate'
        Width = 103
      end
      object tvMainIsHasChilds: TcxGridDBColumn
        Caption = #1048#1084#1077#1077#1090' '#1087#1086#1090#1086#1084#1082#1086#1074
        DataBinding.FieldName = 'IsHasChilds'
        Width = 96
      end
      object tvMainIsIncome: TcxGridDBColumn
        Caption = #1055#1088#1080#1093#1086#1076'/'#1056#1072#1089#1093#1086#1076
        DataBinding.FieldName = 'IsIncome'
        Width = 107
      end
    end
  end
  object cxSplitter: TcxSplitter [1]
    Left = 225
    Top = 26
    Width = 8
    Height = 269
    HotZoneClassName = 'TcxSimpleStyle'
  end
  object dxDBTreeView: TdxDBTreeView [2]
    Left = 0
    Top = 26
    Width = 225
    Height = 269
    ShowNodeHint = True
    HotTrack = True
    DataSource = DS
    KeyField = 'ExpenseId'
    ListField = 'Name'
    ParentField = 'ParentExpenseId'
    RootValue = Null
    SeparatedSt = ' - '
    RaiseOnError = True
    BorderStyle = bsNone
    HideSelection = False
    Indent = 19
    Align = alLeft
    ParentColor = False
    Options = [trDBCanDelete, trDBConfirmDelete, trCanDBNavigate, trSmartRecordCopy, trCheckHasChildren]
    SelectedIndex = -1
    TabOrder = 6
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tExpense
    Left = 120
    Top = 58
  end
  inherited ImageList: TImageList
    Left = 88
    Top = 58
  end
  inherited Actions: TActionList
    Left = 55
    Top = 58
  end
  inherited cxStyleRepository: TcxStyleRepository
    Left = 158
    Top = 58
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    Left = 195
    Top = 57
    DockControlHeights = (
      0
      0
      26
      0)
  end
end
