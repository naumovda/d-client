inherited ExpenseList: TExpenseList
  Left = 340
  Top = 203
  Caption = #1042#1099#1073#1086#1088' '#1089#1090#1072#1090#1100#1080' '#1079#1072#1090#1088#1072#1090
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxSplitter: TcxSplitter
    HotZoneClassName = ''
    HotZone = nil
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tExpenseList
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
    inherited dxBarManagerBar1: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxRefresh'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxRefresh'
        end>
    end
  end
end
