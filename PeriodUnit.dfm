inherited Period: TPeriod
  Left = 349
  Top = 350
  Caption = #1055#1077#1088#1080#1086#1076' '#1091#1095#1077#1090#1072
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      OptionsView.GroupByBox = True
      object tvMainDateStart: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1085#1072#1095#1072#1083#1072
        DataBinding.FieldName = 'DateStart'
      end
      object tvMainDateEnd: TcxGridDBColumn
        Caption = #1044#1072#1090#1072' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
        DataBinding.FieldName = 'DateEnd'
      end
      object tvMainIsOpen: TcxGridDBColumn
        Caption = #1054#1090#1082#1088#1099#1090
        DataBinding.FieldName = 'IsOpen'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = ImageList
        Properties.Items = <
          item
            Description = #1044#1072
            ImageIndex = 0
            Value = True
          end
          item
            Description = #1053#1077#1090
            ImageIndex = 1
            Value = False
          end>
        Visible = False
        GroupIndex = 0
        Width = 52
      end
      object tvMainName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1087#1077#1088#1080#1086#1076#1072
        DataBinding.FieldName = 'Name'
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPeriod
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
