inherited ClientTypeEdit: TClientTypeEdit
  Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1082#1083#1080#1077#1085#1090#1072
  ClientWidth = 518
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited cxPageControl: TcxPageControl
    Top = 72
    Width = 518
    Height = 284
    ClientRectBottom = 280
    ClientRectRight = 514
    inherited cxTable: TcxTabSheet
      Caption = #1040#1090#1090#1088#1080#1073#1091#1090#1099' '#1082#1083#1080#1077#1085#1090#1072
      inherited dxBarDockControl: TdxBarDockControl
        Width = 510
      end
      inherited Grid: TcxGrid
        Width = 510
        Height = 230
        inherited tvMain: TcxGridDBTableView
          object tvMainNumber: TcxGridDBColumn
            Caption = #8470' '#1087'/'#1087
            DataBinding.FieldName = 'Number'
          end
          object tvMainAttributeName: TcxGridDBColumn
            Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1072#1090#1090#1088#1080#1073#1091#1090#1072
            DataBinding.FieldName = 'AttributeName'
            Width = 420
          end
        end
      end
    end
  end
  inherited dxLayoutMain: TdxLayoutControl
    Width = 518
    Height = 47
    object cxName: TcxDBTextEdit [0]
      Left = 164
      Top = 10
      DataBinding.DataField = 'ClientTypeName'
      DataBinding.DataSource = DSMaster
      Style.HotTrack = False
      TabOrder = 0
      Width = 329
    end
    inherited dxLayoutMainGroup_Root: TdxLayoutGroup
      object dxLayoutMainItem1: TdxLayoutItem
        CaptionOptions.Text = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1090#1080#1087#1072' '#1082#1083#1080#1077#1085#1090#1072':'
        Control = cxName
        ControlOptions.ShowBorder = False
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tClientTypeAttribute
  end
  inherited DSMaster: TDataSource
    DataSet = dmPublic.tClientType
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
      25
      26)
    inherited dxButtons: TdxBar
      DockedLeft = 191
    end
  end
end
