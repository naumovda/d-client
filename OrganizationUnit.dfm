inherited Organization: TOrganization
  Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080'-'#1082#1083#1080#1077#1085#1090#1099
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      OptionsView.GroupByBox = True
      object tvMainOrganizationName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        DataBinding.FieldName = 'OrganizationName'
        Width = 93
      end
      object tvMainOrganizationBase: TcxGridDBColumn
        Caption = #1056#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1100
        DataBinding.FieldName = 'OrganizationBase'
        Width = 105
      end
      object tvMainOrganizationINN: TcxGridDBColumn
        Caption = #1048#1053#1053
        DataBinding.FieldName = 'OrganizationINN'
        Width = 83
      end
      object tvMainOrganizationAddress: TcxGridDBColumn
        Caption = #1040#1076#1088#1077#1089
        DataBinding.FieldName = 'OrganizationAddress'
        Width = 102
      end
      object tvMainOrganizationSite: TcxGridDBColumn
        Caption = #1042#1077#1073'-'#1089#1072#1081#1090
        DataBinding.FieldName = 'OrganizationSite'
        Width = 82
      end
      object tvMainOrganizationBank: TcxGridDBColumn
        Caption = #1056#1077#1082#1074#1080#1079#1080#1090#1099
        DataBinding.FieldName = 'OrganizationBank'
        Width = 89
      end
      object tvMainOrganizationComment: TcxGridDBColumn
        Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
        DataBinding.FieldName = 'OrganizationComment'
        Width = 108
      end
      object tvMainOrganizationKind: TcxGridDBColumn
        Caption = #1042#1080#1076'  '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        DataBinding.FieldName = 'OrganizationKind'
        Visible = False
        GroupIndex = 0
        Width = 102
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tOrganization
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
