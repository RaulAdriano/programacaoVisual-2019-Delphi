object FCadAluno: TFCadAluno
  Left = 0
  Top = 0
  Caption = 'Cadastro de Aluno'
  ClientHeight = 518
  ClientWidth = 585
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 8
    Height = 13
    Caption = 'id'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 45
    Height = 13
    Caption = 'dataNasc'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 16
    Top = 33
    Width = 134
    Height = 21
    DataField = 'id'
    DataSource = DMConexao.DSAlunos
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 16
    Top = 72
    Width = 521
    Height = 21
    DataField = 'nome'
    DataSource = DMConexao.DSAlunos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 16
    Top = 112
    Width = 134
    Height = 21
    DataField = 'dataNasc'
    DataSource = DMConexao.DSAlunos
    TabOrder = 2
  end
  object Button1: TButton
    Left = 16
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Novo'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 120
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = Button2Click
  end
end
