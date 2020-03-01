inherited Routeset: TRouteset
  Caption = #1042#1072#1088#1080#1072#1085#1090#1099' '#1088#1072#1079#1084#1077#1097#1077#1085#1080#1103' '#1088#1077#1082#1083#1072#1084#1099
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1074#1072#1088#1080#1072#1085#1090#1072
        DataBinding.FieldName = 'Name'
        Width = 460
      end
    end
  end
  inherited dxLeft: TdxLayoutControl
    Visible = False
  end
  inherited cxSplitterMain: TcxSplitter
    Visible = False
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tRouteset
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
