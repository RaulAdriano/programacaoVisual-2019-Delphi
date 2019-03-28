object FCadAluno: TFCadAluno
  Left = 0
  Top = 0
  Caption = 'Cadastro de Aluno'
  ClientHeight = 518
  ClientWidth = 685
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object PCAlunos: TPageControl
    Left = 0
    Top = 0
    Width = 685
    Height = 518
    ActivePage = TCadastro
    Align = alClient
    TabOrder = 0
    object TCadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 8
      ExplicitTop = 28
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
      object Label4: TLabel
        Left = 16
        Top = 136
        Width = 15
        Height = 13
        Caption = 'cpf'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 16
        Top = 176
        Width = 22
        Height = 13
        Caption = 'fone'
        FocusControl = DBEdit5
      end
      object Label6: TLabel
        Left = 16
        Top = 216
        Width = 13
        Height = 13
        Caption = 'cel'
        FocusControl = DBEdit6
      end
      object Label7: TLabel
        Left = 16
        Top = 256
        Width = 17
        Height = 13
        Caption = 'cep'
        FocusControl = DBEdit7
      end
      object BtNovo: TButton
        Left = 16
        Top = 448
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 0
        OnClick = BtNovoClick
      end
      object BtSalvar: TButton
        Left = 247
        Top = 448
        Width = 63
        Height = 25
        Caption = 'Salvar'
        TabOrder = 1
        OnClick = BtSalvarClick
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 33
        Width = 134
        Height = 21
        DataField = 'id'
        DataSource = DMConexao.DSAlunos
        Enabled = False
        TabOrder = 2
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 72
        Width = 521
        Height = 21
        DataField = 'nome'
        DataSource = DMConexao.DSAlunos
        TabOrder = 3
      end
      object DBEdit3: TDBEdit
        Left = 16
        Top = 112
        Width = 134
        Height = 21
        DataField = 'dataNasc'
        DataSource = DMConexao.DSAlunos
        TabOrder = 4
      end
      object BtEditar: TButton
        Left = 131
        Top = 448
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 5
        OnClick = BtEditarClick
      end
      object BtCancelar: TButton
        Left = 362
        Top = 448
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 6
        OnClick = BtCancelarClick
      end
      object BtExcluir: TButton
        Left = 478
        Top = 448
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 7
        OnClick = BtExcluirClick
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 152
        Width = 199
        Height = 21
        DataField = 'cpf'
        DataSource = DMConexao.DSAlunos
        TabOrder = 8
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 192
        Width = 199
        Height = 21
        DataField = 'fone'
        DataSource = DMConexao.DSAlunos
        TabOrder = 9
      end
      object DBEdit6: TDBEdit
        Left = 16
        Top = 232
        Width = 199
        Height = 21
        DataField = 'cel'
        DataSource = DMConexao.DSAlunos
        TabOrder = 10
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 272
        Width = 121
        Height = 21
        DataField = 'cep'
        DataSource = DMConexao.DSAlunos
        TabOrder = 11
      end
    end
    object TConsulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGAlunos: TDBGrid
        Left = 16
        Top = 45
        Width = 641
        Height = 430
        DataSource = DMConexao.DSAlunos
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGAlunosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 124
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dataNasc'
            Width = 63
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cpf'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fone'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cel'
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cep'
            Visible = True
          end>
      end
      object EPesquisar: TEdit
        Left = 16
        Top = 18
        Width = 405
        Height = 21
        TabOrder = 1
      end
      object BPesquisar: TBitBtn
        Left = 427
        Top = 14
        Width = 230
        Height = 25
        Caption = 'Executar'
        TabOrder = 2
        OnClick = BPesquisarClick
      end
    end
  end
end
