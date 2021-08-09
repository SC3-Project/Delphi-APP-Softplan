object frmMain: TfrmMain
  Left = 194
  Top = 111
  Caption = 'Prova Delphi APP'
  ClientHeight = 532
  ClientWidth = 955
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlack
  Font.Height = -11
  Font.Name = 'Default'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar: TStatusBar
    Left = 0
    Top = 513
    Width = 955
    Height = 19
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    AutoHint = True
    Panels = <>
    SimplePanel = True
  end
  object MainMenu1: TMainMenu
    Tag = 3
    Left = 88
    Top = 40
    object File1: TMenuItem
      Caption = '&Tarefas'
      object FileNewItem: TMenuItem
        Tag = 1
        Caption = 'Tarefa &1'
        Hint = 'New|Create a new file'
        OnClick = FileNewItemClick
      end
      object FileOpenItem: TMenuItem
        Tag = 2
        Caption = 'Tarefa &2'
        Hint = 'Open|Open a file'
        OnClick = FileNewItemClick
      end
      object FileCloseItem: TMenuItem
        Tag = 3
        Caption = 'Tarefa &3'
        Hint = 'Close|Close current file'
        OnClick = FileNewItemClick
      end
    end
  end
end
