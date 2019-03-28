object FCadEstado: TFCadEstado
  Left = 0
  Top = 0
  Caption = 'Cadastro de Estado'
  ClientHeight = 669
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
  object PCadastro: TPageControl
    Left = 0
    Top = 0
    Width = 685
    Height = 669
    ActivePage = Cadastro
    Align = alClient
    TabOrder = 0
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 8
      ExplicitTop = 28
      object Label1: TLabel
        Left = 40
        Top = 32
        Width = 8
        Height = 13
        Caption = 'id'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 72
        Width = 37
        Height = 13
        Caption = 'sigla_uf'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 40
        Top = 112
        Width = 26
        Height = 13
        Caption = 'nome'
        FocusControl = DBEdit3
      end
      object BtEditar: TButton
        Left = 155
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 0
        OnClick = BtEditarClick
      end
      object BtNovo: TButton
        Left = 40
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = BtNovoClick
      end
      object BtSalvar: TButton
        Left = 271
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 2
        OnClick = BtSalvarClick
      end
      object BtCancelar: TButton
        Left = 386
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BtCancelarClick
      end
      object BtExcluir: TButton
        Left = 502
        Top = 240
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = BtExcluirClick
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 48
        Width = 134
        Height = 21
        DataField = 'id'
        DataSource = DMConexao.DSEstado
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 88
        Width = 30
        Height = 21
        DataField = 'sigla_uf'
        DataSource = DMConexao.DSEstado
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 128
        Width = 199
        Height = 21
        DataField = 'nome'
        DataSource = DMConexao.DSEstado
        TabOrder = 7
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGEstado: TDBGrid
        Left = 16
        Top = 45
        Width = 641
        Height = 576
        DataSource = DMConexao.DSEstado
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGEstadoDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sigla_uf'
            Width = 140
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
            Width = 414
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
