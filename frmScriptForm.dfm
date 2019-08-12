object frmScript: TfrmScript
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Apply Script'
  ClientHeight = 429
  ClientWidth = 682
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTop: TPanel
    Left = 0
    Top = 0
    Width = 682
    Height = 117
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      682
      117)
    object lblScript: TLabel
      Left = 8
      Top = 70
      Width = 32
      Height = 13
      Caption = 'S&cript'
      FocusControl = cmbScripts
    end
    object lblFilter: TLabel
      Left = 8
      Top = 14
      Width = 32
      Height = 13
      Caption = '&Filter'
      FocusControl = edFilter
    end
    object lbEngine: TLabel
      Left = 8
      Top = 41
      Width = 32
      Height = 13
      Caption = 'Engine'
      FocusControl = cmbEngine
    end
    object cmbScripts: TComboBox
      Left = 46
      Top = 67
      Width = 548
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 30
      TabOrder = 1
      OnChange = cmbScriptsChange
      OnCloseUp = cmbScriptsCloseUp
      OnDropDown = cmbScriptsDropDown
      OnEnter = cmbScriptsEnter
      OnExit = cmbScriptsExit
      OnKeyDown = cmbScriptsKeyDown
      OnSelect = cmbScriptsSelect
    end
    object btnSave: TButton
      Left = 600
      Top = 65
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = '&Save'
      TabOrder = 3
      OnClick = btnSaveClick
    end
    object chkScriptsSubDir: TCheckBox
      Left = 46
      Top = 94
      Width = 192
      Height = 17
      Caption = '&Include scripts from subdirectories'
      TabOrder = 2
      OnClick = chkScriptsSubDirClick
    end
    object edFilter: TEdit
      Left = 46
      Top = 11
      Width = 548
      Height = 21
      TabOrder = 0
      OnChange = edFilterChange
      OnKeyDown = edFilterKeyDown
    end
    object cmbEngine: TComboBox
      Left = 46
      Top = 38
      Width = 548
      Height = 21
      Style = csDropDownList
      Anchors = [akLeft, akTop, akRight]
      DropDownCount = 30
      TabOrder = 4
      OnChange = cmbEngineChange
      Items.Strings = (
        'Pascal (JvInterpreter)'
        'Lua (VerySimple.Lua)')
    end
  end
  object pnlBottom: TPanel
    Left = 0
    Top = 394
    Width = 682
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      682
      35)
    object btnCancel: TButton
      Left = 600
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Cancel'
      ModalResult = 2
      TabOrder = 0
    end
    object btnOK: TButton
      Left = 519
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'OK'
      ModalResult = 1
      TabOrder = 1
    end
  end
  object pnlStatus: TPanel
    Left = 0
    Top = 373
    Width = 682
    Height = 21
    Align = alBottom
    BevelOuter = bvLowered
    TabOrder = 2
    object lblPosition: TLabel
      Left = 8
      Top = 4
      Width = 633
      Height = 13
      AutoSize = False
    end
  end
  object Editor: TMemo
    Left = 0
    Top = 117
    Width = 682
    Height = 256
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 3
    WantTabs = True
    WordWrap = False
    OnKeyUp = EditorKeyUp
    OnMouseUp = EditorMouseUp
    ExplicitTop = 160
    ExplicitHeight = 213
  end
  object dlgSave: TSaveDialog
    DefaultExt = 'pas'
    Filter = 'Pascal files (*.pas)|*.pas'
    Options = [ofOverwritePrompt, ofHideReadOnly, ofNoChangeDir, ofEnableSizing]
    OptionsEx = [ofExNoPlacesBar]
    Title = 'Save script'
    Left = 624
    Top = 16
  end
end
