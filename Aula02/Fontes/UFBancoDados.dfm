object FBancoDados: TFBancoDados
  Left = 0
  Top = 0
  Caption = 'Banco de Dados'
  ClientHeight = 691
  ClientWidth = 721
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 729
    Height = 97
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 42
      Width = 40
      Height = 13
      Caption = 'Servidor'
    end
    object Portalb: TLabel
      Left = 528
      Top = 42
      Width = 26
      Height = 13
      Caption = 'porta'
    end
    object EDPorta: TEdit
      Left = 565
      Top = 39
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object EDServidor: TEdit
      Left = 85
      Top = 39
      Width = 412
      Height = 21
      TabOrder = 1
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 103
    Width = 729
    Height = 114
    TabOrder = 1
    object Label3: TLabel
      Left = 32
      Top = 58
      Width = 36
      Height = 13
      Caption = 'Usuario'
    end
    object Label4: TLabel
      Left = 528
      Top = 58
      Width = 29
      Height = 13
      Caption = 'senha'
    end
    object Label5: TLabel
      Left = 32
      Top = 26
      Width = 29
      Height = 13
      Caption = 'Banco'
    end
    object EDUser: TEdit
      Left = 85
      Top = 55
      Width = 412
      Height = 21
      TabOrder = 0
    end
    object EDSenha: TEdit
      Left = 565
      Top = 55
      Width = 121
      Height = 21
      PasswordChar = '*'
      TabOrder = 1
    end
    object EDBanco: TEdit
      Left = 85
      Top = 23
      Width = 412
      Height = 21
      TabOrder = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 223
    Width = 729
    Height = 82
    TabOrder = 2
    object LBStatus: TLabel
      Left = 312
      Top = 32
      Width = 68
      Height = 13
      Caption = 'Desconectado'
    end
    object BTConectar: TBitBtn
      Left = 32
      Top = 16
      Width = 209
      Height = 49
      Caption = 'Conectar'
      TabOrder = 0
      OnClick = BTConectarClick
    end
    object BTDesconectar: TBitBtn
      Left = 448
      Top = 16
      Width = 209
      Height = 49
      Caption = 'Desconectar'
      TabOrder = 1
      OnClick = BTDesconectarClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 311
    Width = 729
    Height = 346
    TabOrder = 3
    object EDPesquisa: TEdit
      Left = 24
      Top = 16
      Width = 489
      Height = 21
      TabOrder = 0
    end
    object BTBuscar: TBitBtn
      Left = 528
      Top = 12
      Width = 158
      Height = 25
      Caption = 'Executar'
      TabOrder = 1
      OnClick = BTBuscarClick
    end
    object DBGAlunos: TDBGrid
      Left = 24
      Top = 43
      Width = 662
      Height = 190
      DataSource = DMConexao.DSAlunos
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object DBNavigator1: TDBNavigator
      Left = 24
      Top = 232
      Width = 660
      Height = 49
      DataSource = DMConexao.DSAlunos
      TabOrder = 3
    end
  end
  object BTCadAluno: TButton
    Left = 24
    Top = 616
    Width = 209
    Height = 25
    Caption = 'Cadastrar Aluno'
    TabOrder = 4
    OnClick = BTCadAlunoClick
  end
end
