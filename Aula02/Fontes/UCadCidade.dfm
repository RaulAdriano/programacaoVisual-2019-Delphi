object FCadCidade: TFCadCidade
  Left = 0
  Top = 0
  Caption = 'CIDADE'
  ClientHeight = 661
  ClientWidth = 681
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 681
    Height = 661
    ActivePage = Consulta
    Align = alClient
    TabOrder = 0
    object Cadastro: TTabSheet
      Caption = 'Cadastro'
      ExplicitLeft = 0
      ExplicitTop = 28
      object Label1: TLabel
        Left = 40
        Top = 24
        Width = 45
        Height = 13
        Caption = 'id_cidade'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 40
        Top = 64
        Width = 47
        Height = 13
        Caption = 'id_estado'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 40
        Top = 104
        Width = 26
        Height = 13
        Caption = 'nome'
        FocusControl = DBEdit3
      end
      object BtEditar: TButton
        Left = 147
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Editar'
        TabOrder = 0
        OnClick = BtEditarClick
      end
      object BtNovo: TButton
        Left = 32
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Novo'
        TabOrder = 1
        OnClick = BtNovoClick
      end
      object BtSalvar: TButton
        Left = 263
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Salvar'
        TabOrder = 2
        OnClick = BtSalvarClick
      end
      object BtCancelar: TButton
        Left = 378
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Cancelar'
        TabOrder = 3
        OnClick = BtCancelarClick
      end
      object BtExcluir: TButton
        Left = 494
        Top = 216
        Width = 75
        Height = 25
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = BtExcluirClick
      end
      object DBEdit1: TDBEdit
        Left = 40
        Top = 40
        Width = 134
        Height = 21
        DataField = 'id_cidade'
        DataSource = DMConexao.DSCidades
        TabOrder = 5
      end
      object DBEdit2: TDBEdit
        Left = 40
        Top = 80
        Width = 134
        Height = 21
        DataField = 'id_estado'
        DataSource = DMConexao.DSCidades
        TabOrder = 6
      end
      object DBEdit3: TDBEdit
        Left = 40
        Top = 120
        Width = 600
        Height = 21
        DataField = 'nome'
        DataSource = DMConexao.DSCidades
        TabOrder = 7
      end
    end
    object Consulta: TTabSheet
      Caption = 'Consulta'
      ImageIndex = 1
      object DBGCidade: TDBGrid
        Left = 16
        Top = 45
        Width = 641
        Height = 576
        DataSource = DMConexao.DSCidades
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id_cidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'id_estado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nome'
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
