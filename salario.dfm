object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Salario Semanal'
  ClientHeight = 260
  ClientWidth = 313
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  Visible = True
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 46
    Width = 233
    Height = 19
    Caption = 'Nombre Completo Del Empleado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 48
    Top = 119
    Width = 210
    Height = 19
    Caption = 'N'#250'mero De Horas Trabajadas'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 40
    Top = 71
    Width = 233
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Edit1Click
    OnExit = Edit1Exit
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 76
    Top = 144
    Width = 157
    Height = 27
    Alignment = taCenter
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    NumbersOnly = True
    ParentFont = False
    TabOrder = 1
    Text = '# Horas Trabajadas'
    OnClick = Edit2Click
  end
  object Button1: TButton
    Left = 98
    Top = 199
    Width = 121
    Height = 33
    BiDiMode = bdLeftToRight
    Caption = 'Calcular Salario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    TabOrder = 2
    OnClick = Button1Click
  end
end
