object frmTarefa2: TfrmTarefa2
  Left = 328
  Top = 116
  ActiveControl = edtIntervaloThread1
  Caption = 'Tarefa 2'
  ClientHeight = 162
  ClientWidth = 484
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object pgbThread1: TProgressBar
    Left = 0
    Top = 128
    Width = 484
    Height = 17
    Align = alBottom
    TabOrder = 1
  end
  object pgbThread2: TProgressBar
    Left = 0
    Top = 145
    Width = 484
    Height = 17
    Align = alBottom
    TabOrder = 2
  end
  object scbTarefa2: TScrollBox
    Left = 0
    Top = 0
    Width = 484
    Height = 128
    Align = alClient
    TabOrder = 0
    TabStop = True
    object Label1: TLabel
      Left = 154
      Top = 8
      Width = 161
      Height = 13
      Caption = 'Intervalo Thread 1 (milissegundos)'
    end
    object Label2: TLabel
      Left = 154
      Top = 48
      Width = 161
      Height = 13
      Caption = 'Intervalo Thread 2 (milissegundos)'
    end
    object edtIntervaloThread1: TEdit
      Left = 154
      Top = 24
      Width = 161
      Height = 21
      TabOrder = 0
      Text = '1.000'
      OnKeyDown = edtIntervaloThread1KeyDown
    end
    object UpDown1: TUpDown
      Left = 315
      Top = 24
      Width = 16
      Height = 21
      Associate = edtIntervaloThread1
      Max = 30000
      Increment = 1000
      Position = 1000
      TabOrder = 1
      TabStop = True
    end
    object edtIntervaloThread2: TEdit
      Left = 154
      Top = 64
      Width = 161
      Height = 21
      TabOrder = 2
      Text = '1.000'
      OnKeyDown = edtIntervaloThread1KeyDown
    end
    object UpDown2: TUpDown
      Left = 315
      Top = 64
      Width = 16
      Height = 21
      Associate = edtIntervaloThread2
      Max = 30000
      Increment = 1000
      Position = 1000
      TabOrder = 3
      TabStop = True
    end
    object btnExecutar: TBitBtn
      Left = 154
      Top = 94
      Width = 178
      Height = 25
      Caption = 'Executar'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300130000031
        00333773F77777FF7733331000909000133333377737F777FF33330098F0F890
        0333337733F733F77F33370980FFF08907333373373F373373F33099FF0FFFF9
        903337F3F373F33FF7F33090FFF0FF00903337F73337F37737F33099FFF0FFF9
        9033373F33F7F3F33733370980F0F0890733337FF737F7337F33330098F0F890
        03333F77FF3733377FFF000009999900000377777FFFFF77777F088700000008
        77037F3377777773337F088887707888870373F3337773F33373307880707088
        7033373FF737F73FF733337003303300733333777337FF777333333333000333
        3333333333777333333333333333333333333333333333333333}
      NumGlyphs = 2
      TabOrder = 4
      OnClick = btnExecutarClick
    end
  end
end
