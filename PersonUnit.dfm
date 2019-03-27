inherited Person: TPerson
  Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      OptionsView.GroupByBox = True
      object tvMainPersonFirstName: TcxGridDBColumn
        Caption = #1048#1084#1103
        DataBinding.FieldName = 'PersonFirstName'
        Width = 86
      end
      object tvMainPersonSecondName: TcxGridDBColumn
        Caption = #1054#1090#1095#1077#1089#1090#1074#1086
        DataBinding.FieldName = 'PersonSecondName'
        Width = 120
      end
      object tvMainPersonLastName: TcxGridDBColumn
        Caption = #1060#1072#1084#1080#1083#1080#1103
        DataBinding.FieldName = 'PersonLastName'
        Width = 86
      end
      object tvMainPost: TcxGridDBColumn
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'Post'
        Visible = False
        GroupIndex = 0
        Width = 26
      end
      object tvMainHireKind: TcxGridDBColumn
        Caption = #1060#1086#1088#1084#1072' '#1085#1072#1081#1084#1072
        DataBinding.FieldName = 'HireKind'
        Width = 174
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tPerson
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
