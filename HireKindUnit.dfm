inherited HireKind: THireKind
  Caption = #1058#1080#1087' '#1085#1072#1081#1084#1072' '#1088#1072#1073#1086#1090#1085#1080#1082#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainHireKindName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1092#1086#1088#1084#1099' '#1085#1072#1081#1084#1072
        DataBinding.FieldName = 'HireKindName'
        Width = 539
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tHireKind
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    DockControlHeights = (
      0
      0
      26
      0)
  end
end
