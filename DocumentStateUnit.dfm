inherited DocumentState: TDocumentState
  Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1086#1074
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Grid: TcxGrid
    inherited tvMain: TcxGridDBTableView
      object tvMainDocumentStateName: TcxGridDBColumn
        Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1086#1089#1090#1086#1103#1085#1080#1103' '#1076#1086#1075#1086#1074#1086#1088#1072
        DataBinding.FieldName = 'DocumentStateName'
        Width = 208
      end
      object tvMainDocumentIsOpen: TcxGridDBColumn
        Caption = #1054#1090#1082#1088#1099#1090'?'
        DataBinding.FieldName = 'DocumentIsOpen'
        PropertiesClassName = 'TcxCheckBoxProperties'
        Properties.ImmediatePost = True
        Properties.NullStyle = nssUnchecked
        Width = 80
      end
      object tvMainDocumentColor: TcxGridDBColumn
        Caption = #1062#1074#1077#1090
        DataBinding.FieldName = 'DocumentColor'
        PropertiesClassName = 'TcxColorComboBoxProperties'
        Properties.CustomColors = <>
      end
      object tvMainDayCount: TcxGridDBColumn
        Caption = #1050#1086#1083'-'#1074#1086' '#1076#1085#1077#1081
        DataBinding.FieldName = 'DayCount'
      end
    end
  end
  inherited DS: TDataSource
    DataSet = dmPublic.tDocumentState
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
