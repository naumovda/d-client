inherited FormReportAbs1: TFormReportAbs1
  Left = 428
  Top = 375
  Caption = #1055#1077#1095#1072#1090#1100' '#1087#1083#1072#1085#1072' '#1079#1072#1090#1088#1072#1090' '#1085#1072' '#1087#1077#1088#1080#1086#1076
  PixelsPerInch = 96
  TextHeight = 13
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
    inherited dxActions: TdxBar
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarSubItem1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton2'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'dxBarButton4'
        end>
    end
    inherited dxBarSubItem1: TdxBarSubItem
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
        end>
    end
  end
end
