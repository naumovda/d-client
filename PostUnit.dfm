inherited Post: TPost
  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainPostName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'PostName'
        Width = 462
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPost
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
