object DMConexao: TDMConexao
  OldCreateOrder = False
  Height = 354
  Width = 456
  object FDConexao: TFDConnection
    Params.Strings = (
      'Database=aula02'
      'User_Name=postgres'
      'Password=root'
      'Server=localhost'
      'DriverID=PG')
    Connected = True
    Left = 32
    Top = 16
  end
  object FDDriver: TFDPhysPgDriverLink
    VendorHome = 
      'D:\BACKUP\Faculdade\DPS\PROGRAMACAO VISUAL - LEANDRO\PROJETOS\pr' +
      'ogramacaoVisual-2019-Delphi\Aula02\Fontes\Win32\Debug'
    Left = 112
    Top = 16
  end
  object FDQAlunos: TFDQuery
    Connection = FDConexao
    SQL.Strings = (
      'Select * from aluno')
    Left = 32
    Top = 88
    object FDQAlunosid: TIntegerField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDQAlunosnome: TWideStringField
      FieldName = 'nome'
      Origin = 'nome'
      Size = 100
    end
    object FDQAlunosdataNasc: TDateField
      FieldName = 'dataNasc'
      Origin = '"dataNasc"'
    end
  end
  object DSAlunos: TDataSource
    DataSet = FDQAlunos
    Left = 128
    Top = 96
  end
end
