inherited Route: TRoute
  Left = 420
  Top = 272
  Caption = #1052#1072#1088#1096#1088#1091#1090#1099
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainObjectCode: TcxGridDBColumn
        Caption = #1053#1086#1084#1077#1088' '#1084#1072#1088#1096#1088#1091#1090#1072
        DataBinding.FieldName = 'ObjectCode'
        Width = 212
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
    DataSet = dmPublic.tRoute
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
