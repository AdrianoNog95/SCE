object DM: TDM
  OldCreateOrder = False
  Height = 575
  Width = 769
  object Conexao: TIBDatabase
    Connected = True
    DatabaseName = 
      'LOCALHOST:C:\Users\Adriano Nogueira\Documents\ProjetosDelphi\sce' +
      '\Banco\SCE.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1252')
    LoginPrompt = False
    DefaultTransaction = Transa
    ServerType = 'IBServer'
    Left = 72
    Top = 32
  end
  object Transa: TIBTransaction
    Active = True
    DefaultDatabase = Conexao
    Left = 160
    Top = 32
  end
  object qCliente: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from CLIENTE')
    UpdateObject = upCliente
    GeneratorField.Field = 'ID_CLI'
    GeneratorField.Generator = 'GEN_CLIENTE'
    Left = 24
    Top = 112
    object qClienteID_CLI: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO CLIENTE'
      FieldName = 'ID_CLI'
      Origin = '"CLIENTE"."ID_CLI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CLIENTE"."NOME"'
      Size = 30
    end
    object qClienteDT_NASC: TDateField
      DisplayLabel = 'DATA DE NASCIMENTO'
      FieldName = 'DT_NASC'
      Origin = '"CLIENTE"."DT_NASC"'
      EditMask = '00/00/0000'
    end
    object qClienteCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CLIENTE"."CPF"'
      EditMask = '000.000.000-00;0;_'
      Size = 11
    end
    object qClienteTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"CLIENTE"."TELEFONE"'
      EditMask = '(00)0000-0000;0;_'
      Size = 10
    end
    object qClienteCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"CLIENTE"."CELULAR"'
      EditMask = '(00)0000-0000;0;_'
      Size = 10
    end
    object qClienteENDERECO: TIBStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'ENDERECO'
      Origin = '"CLIENTE"."ENDERECO"'
      Size = 40
    end
    object qClienteID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"CLIENTE"."ID_USU_CADASTRO"'
    end
    object qClienteDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"CLIENTE"."DATA_CADASTRO"'
    end
    object qClienteID_USU_ALTERACAO: TIntegerField
      FieldName = 'ID_USU_ALTERACAO'
      Origin = '"CLIENTE"."ID_USU_ALTERACAO"'
    end
    object qClienteDATA_ALTERACAO: TDateField
      FieldName = 'DATA_ALTERACAO'
      Origin = '"CLIENTE"."DATA_ALTERACAO"'
    end
    object qClienteHORA_ALTERACAO: TTimeField
      FieldName = 'HORA_ALTERACAO'
      Origin = '"CLIENTE"."HORA_ALTERACAO"'
    end
  end
  object upCliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_CLI,'
      '  NOME,'
      '  DT_NASC,'
      '  CPF,'
      '  TELEFONE,'
      '  CELULAR,'
      '  ENDERECO,'
      '  ID_USU_CADASTRO,'
      '  DATA_CADASTRO,'
      '  ID_USU_ALTERACAO,'
      '  DATA_ALTERACAO,'
      '  HORA_ALTERACAO'
      'from CLIENTE '
      'where'
      '  ID_CLI = :ID_CLI')
    ModifySQL.Strings = (
      'update CLIENTE'
      'set'
      '  CELULAR = :CELULAR,'
      '  CPF = :CPF,'
      '  DATA_ALTERACAO = :DATA_ALTERACAO,'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  DT_NASC = :DT_NASC,'
      '  ENDERECO = :ENDERECO,'
      '  HORA_ALTERACAO = :HORA_ALTERACAO,'
      '  ID_CLI = :ID_CLI,'
      '  ID_USU_ALTERACAO = :ID_USU_ALTERACAO,'
      '  ID_USU_CADASTRO = :ID_USU_CADASTRO,'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  ID_CLI = :ID_CLI')
    InsertSQL.Strings = (
      'insert into CLIENTE'
      
        '  (CELULAR, CPF, DATA_ALTERACAO, DATA_CADASTRO, DT_NASC, ENDEREC' +
        'O, HORA_ALTERACAO, '
      '   ID_CLI, ID_USU_ALTERACAO, ID_USU_CADASTRO, NOME, TELEFONE)'
      'values'
      
        '  (:CELULAR, :CPF, :DATA_ALTERACAO, :DATA_CADASTRO, :DT_NASC, :E' +
        'NDERECO, '
      
        '   :HORA_ALTERACAO, :ID_CLI, :ID_USU_ALTERACAO, :ID_USU_CADASTRO' +
        ', :NOME, '
      '   :TELEFONE)')
    DeleteSQL.Strings = (
      'delete from CLIENTE'
      'where'
      '  ID_CLI = :ID_CLI')
    Left = 24
    Top = 168
  end
  object dsCliente: TDataSource
    DataSet = qCliente
    Left = 24
    Top = 224
  end
  object qFuncionarios: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FUNCIONARIO')
    UpdateObject = upFuncionarios
    GeneratorField.Field = 'ID_FUN'
    GeneratorField.Generator = 'GEN_FUNCIONARIO'
    Left = 104
    Top = 112
    object qFuncionariosID_FUN: TIntegerField
      DisplayLabel = 'C'#211'DIGO FUNCION'#193'RIOS'
      FieldName = 'ID_FUN'
      Origin = '"FUNCIONARIO"."ID_FUN"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFuncionariosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FUNCIONARIO"."NOME"'
      Size = 30
    end
    object qFuncionariosDT_NASC: TDateField
      DisplayLabel = 'DATA DE NASCIMENTO'
      FieldName = 'DT_NASC'
      Origin = '"FUNCIONARIO"."DT_NASC"'
      EditMask = '00/00/0000;1;_'
    end
    object qFuncionariosCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"FUNCIONARIO"."CPF"'
      EditMask = '000.000.000-00;0;_'
      Size = 11
    end
    object qFuncionariosTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FUNCIONARIO"."TELEFONE"'
      EditMask = '(00)0000-0000;0;_'
      Size = 10
    end
    object qFuncionariosCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"FUNCIONARIO"."CELULAR"'
      EditMask = '(00)0000-0000;0;_'
      Size = 10
    end
    object qFuncionariosENDERECO: TIBStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'ENDERECO'
      Origin = '"FUNCIONARIO"."ENDERECO"'
      Size = 40
    end
    object qFuncionariosID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"FUNCIONARIO"."ID_USU_CADASTRO"'
    end
    object qFuncionariosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"FUNCIONARIO"."DATA_CADASTRO"'
    end
  end
  object upFuncionarios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_FUN,'
      '  NOME,'
      '  DT_NASC,'
      '  CPF,'
      '  TELEFONE,'
      '  CELULAR,'
      '  ENDERECO'
      'from FUNCIONARIO '
      'where'
      '  ID_FUN = :ID_FUN')
    ModifySQL.Strings = (
      'update FUNCIONARIO'
      'set'
      '  CELULAR = :CELULAR,'
      '  CPF = :CPF,'
      '  DT_NASC = :DT_NASC,'
      '  ENDERECO = :ENDERECO,'
      '  ID_FUN = :ID_FUN,'
      '  NOME = :NOME,'
      '  TELEFONE = :TELEFONE'
      'where'
      '  ID_FUN = :ID_FUN')
    InsertSQL.Strings = (
      'insert into FUNCIONARIO'
      '  (CELULAR, CPF, DT_NASC, ENDERECO, ID_FUN, NOME, TELEFONE)'
      'values'
      
        '  (:CELULAR, :CPF, :DT_NASC, :ENDERECO, :ID_FUN, :NOME, :TELEFON' +
        'E)')
    DeleteSQL.Strings = (
      'delete from FUNCIONARIO'
      'where'
      '  ID_FUN = :ID_FUN')
    Left = 104
    Top = 168
  end
  object dsFuncionarios: TDataSource
    DataSet = qFuncionarios
    Left = 104
    Top = 224
  end
  object qFornecedor: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from FORNECEDOR')
    UpdateObject = upFornecedor
    GeneratorField.Field = 'ID_FOR'
    GeneratorField.Generator = 'GEN_FORNECEDOR'
    Left = 192
    Top = 112
    object qFornecedorID_FOR: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO FORNECEDOR'
      FieldName = 'ID_FOR'
      Origin = '"FORNECEDOR"."ID_FOR"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qFornecedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FORNECEDOR"."NOME"'
      Size = 30
    end
    object qFornecedorTIPO_PESSOA: TIBStringField
      DisplayLabel = 'TIPO DA PESSOA (JUR'#205'DICO/F'#205'SICO)'
      FieldName = 'TIPO_PESSOA'
      Origin = '"FORNECEDOR"."TIPO_PESSOA"'
      Size = 8
    end
    object qFornecedorCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"FORNECEDOR"."CPF_CNPJ"'
      Size = 14
    end
    object qFornecedorTELEFONE: TIBStringField
      FieldName = 'TELEFONE'
      Origin = '"FORNECEDOR"."TELEFONE"'
      EditMask = '(00)0000-0000;0;_'
      Size = 10
    end
    object qFornecedorRESPONSAVEL: TIBStringField
      DisplayLabel = 'RESPONS'#193'VEL'
      FieldName = 'RESPONSAVEL'
      Origin = '"FORNECEDOR"."RESPONSAVEL"'
    end
    object qFornecedorENDERECO: TIBStringField
      DisplayLabel = 'ENDERE'#199'O'
      FieldName = 'ENDERECO'
      Origin = '"FORNECEDOR"."ENDERECO"'
      Size = 40
    end
    object qFornecedorID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"FORNECEDOR"."ID_USU_CADASTRO"'
    end
    object qFornecedorDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"FORNECEDOR"."DATA_CADASTRO"'
    end
  end
  object upFornecedor: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_FOR,'
      '  NOME,'
      '  TIPO_PESSOA,'
      '  CPF_CNPJ,'
      '  TELEFONE,'
      '  RESPONSAVEL,'
      '  ENDERECO'
      'from FORNECEDOR '
      'where'
      '  ID_FOR = :ID_FOR')
    ModifySQL.Strings = (
      'update FORNECEDOR'
      'set'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  ENDERECO = :ENDERECO,'
      '  ID_FOR = :ID_FOR,'
      '  NOME = :NOME,'
      '  RESPONSAVEL = :RESPONSAVEL,'
      '  TELEFONE = :TELEFONE,'
      '  TIPO_PESSOA = :TIPO_PESSOA'
      'where'
      '  ID_FOR = :ID_FOR')
    InsertSQL.Strings = (
      'insert into FORNECEDOR'
      
        '  (CPF_CNPJ, ENDERECO, ID_FOR, NOME, RESPONSAVEL, TELEFONE, TIPO' +
        '_PESSOA)'
      'values'
      
        '  (:CPF_CNPJ, :ENDERECO, :ID_FOR, :NOME, :RESPONSAVEL, :TELEFONE' +
        ', :TIPO_PESSOA)')
    DeleteSQL.Strings = (
      'delete from FORNECEDOR'
      'where'
      '  ID_FOR = :ID_FOR')
    Left = 192
    Top = 168
  end
  object dsFornecedor: TDataSource
    DataSet = qFornecedor
    Left = 192
    Top = 224
  end
  object dsUsuario: TDataSource
    DataSet = qUsuario
    Left = 272
    Top = 224
  end
  object qUsuario: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from USUARIO')
    UpdateObject = upUsuario
    GeneratorField.Field = 'ID_USU'
    GeneratorField.Generator = 'GEN_USUARIO'
    Left = 272
    Top = 112
    object qUsuarioID_USU: TIntegerField
      DisplayLabel = 'C'#211'DIGO USU'#193'RIO'
      FieldName = 'ID_USU'
      Origin = '"USUARIO"."ID_USU"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qUsuarioID_FUN: TIntegerField
      DisplayLabel = 'C'#211'DIGO FUNCION'#193'RIO'
      FieldName = 'ID_FUN'
      Origin = '"USUARIO"."ID_FUN"'
    end
    object qUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"USUARIO"."LOGIN"'
      Size = 10
    end
    object qUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"USUARIO"."SENHA"'
      Size = 10
    end
    object qUsuarioID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"USUARIO"."ID_USU_CADASTRO"'
    end
    object qUsuarioDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"USUARIO"."DATA_CADASTRO"'
    end
  end
  object upUsuario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_USU,'
      '  ID_FUN,'
      '  LOGIN,'
      '  SENHA'
      'from USUARIO '
      'where'
      '  ID_USU = :ID_USU')
    ModifySQL.Strings = (
      'update USUARIO'
      'set'
      '  ID_FUN = :ID_FUN,'
      '  ID_USU = :ID_USU,'
      '  LOGIN = :LOGIN,'
      '  SENHA = :SENHA'
      'where'
      '  ID_USU = :ID_USU')
    InsertSQL.Strings = (
      'insert into USUARIO'
      '  (ID_FUN, ID_USU, LOGIN, SENHA)'
      'values'
      '  (:ID_FUN, :ID_USU, :LOGIN, :SENHA)')
    DeleteSQL.Strings = (
      'delete from USUARIO'
      'where'
      '  ID_USU = :ID_USU')
    Left = 272
    Top = 168
  end
  object dsEntrada: TDataSource
    DataSet = qEntrada
    Left = 336
    Top = 224
  end
  object qEntrada: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ENTRADA')
    UpdateObject = upEntrada
    GeneratorField.Field = 'ID_ENT'
    GeneratorField.Generator = 'GEN_ENTRADA'
    Left = 336
    Top = 112
    object qEntradaID_ENT: TIntegerField
      DisplayLabel = 'C'#211'DIGO ENTRADA'
      FieldName = 'ID_ENT'
      Origin = '"ENTRADA"."ID_ENT"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEntradaDATA: TDateField
      DisplayLabel = 'DATA DE ENTRADA'
      FieldName = 'DATA'
      Origin = '"ENTRADA"."DATA"'
      EditMask = '00/00/0000'
    end
    object qEntradaID_PRO: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO PRODUTO'
      FieldName = 'ID_PRO'
      Origin = '"ENTRADA"."ID_PRO"'
    end
    object qEntradaQTD: TIntegerField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTD'
      Origin = '"ENTRADA"."QTD"'
    end
    object qEntradaVALOR_COMPRA: TFloatField
      DisplayLabel = 'VALOR DA COMPRA'
      FieldName = 'VALOR_COMPRA'
      Origin = '"ENTRADA"."VALOR_COMPRA"'
      DisplayFormat = '0.00'
    end
    object qEntradaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"ENTRADA"."TOTAL"'
      DisplayFormat = '0.00'
    end
    object qEntradaID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"ENTRADA"."ID_USU_CADASTRO"'
    end
    object qEntradaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"ENTRADA"."DATA_CADASTRO"'
    end
  end
  object upEntrada: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_ENT,'
      '  DATA,'
      '  ID_PRO,'
      '  QTD,'
      '  VALOR_COMPRA,'
      '  TOTAL'
      'from ENTRADA '
      'where'
      '  ID_ENT = :ID_ENT')
    ModifySQL.Strings = (
      'update ENTRADA'
      'set'
      '  DATA = :DATA,'
      '  ID_ENT = :ID_ENT,'
      '  ID_PRO = :ID_PRO,'
      '  QTD = :QTD,'
      '  TOTAL = :TOTAL,'
      '  VALOR_COMPRA = :VALOR_COMPRA'
      'where'
      '  ID_ENT = :ID_ENT')
    InsertSQL.Strings = (
      'insert into ENTRADA'
      '  (DATA, ID_ENT, ID_PRO, QTD, TOTAL, VALOR_COMPRA)'
      'values'
      '  (:DATA, :ID_ENT, :ID_PRO, :QTD, :TOTAL, :VALOR_COMPRA)')
    DeleteSQL.Strings = (
      'delete from ENTRADA'
      'where'
      '  ID_ENT = :ID_ENT')
    Left = 336
    Top = 168
  end
  object dsSaida: TDataSource
    DataSet = qSaida
    Left = 408
    Top = 224
  end
  object qSaida: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from SAIDA')
    UpdateObject = upSaida
    GeneratorField.Field = 'ID_SAI'
    GeneratorField.Generator = 'GEN_SAIDA'
    Left = 408
    Top = 112
    object qSaidaID_SAI: TIntegerField
      DisplayLabel = 'C'#211'DIGO DE SA'#205'DA'
      FieldName = 'ID_SAI'
      Origin = '"SAIDA"."ID_SAI"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qSaidaDATA: TDateField
      DisplayLabel = 'DATA DE SA'#205'DA'
      FieldName = 'DATA'
      Origin = '"SAIDA"."DATA"'
      EditMask = '00/00/0000'
    end
    object qSaidaID_PRO: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO PRODUTO'
      FieldName = 'ID_PRO'
      Origin = '"SAIDA"."ID_PRO"'
    end
    object qSaidaQTD: TIntegerField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTD'
      Origin = '"SAIDA"."QTD"'
    end
    object qSaidaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"SAIDA"."VALOR"'
      DisplayFormat = '0.00'
    end
    object qSaidaTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"SAIDA"."TOTAL"'
      DisplayFormat = '0.00'
    end
    object qSaidaID_CLI: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO CLIENTE'
      FieldName = 'ID_CLI'
      Origin = '"SAIDA"."ID_CLI"'
    end
    object qSaidaID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"SAIDA"."ID_USU_CADASTRO"'
    end
    object qSaidaDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"SAIDA"."DATA_CADASTRO"'
    end
  end
  object upSaida: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_SAI,'
      '  DATA,'
      '  ID_PRO,'
      '  QTD,'
      '  VALOR,'
      '  TOTAL,'
      '  ID_CLI'
      'from SAIDA '
      'where'
      '  ID_SAI = :ID_SAI')
    ModifySQL.Strings = (
      'update SAIDA'
      'set'
      '  DATA = :DATA,'
      '  ID_CLI = :ID_CLI,'
      '  ID_PRO = :ID_PRO,'
      '  ID_SAI = :ID_SAI,'
      '  QTD = :QTD,'
      '  TOTAL = :TOTAL,'
      '  VALOR = :VALOR'
      'where'
      '  ID_SAI = :ID_SAI')
    InsertSQL.Strings = (
      'insert into SAIDA'
      '  (DATA, ID_CLI, ID_PRO, ID_SAI, QTD, TOTAL, VALOR)'
      'values'
      '  (:DATA, :ID_CLI, :ID_PRO, :ID_SAI, :QTD, :TOTAL, :VALOR)')
    DeleteSQL.Strings = (
      'delete from SAIDA'
      'where'
      '  ID_SAI = :ID_SAI')
    Left = 408
    Top = 168
  end
  object dsEstoque: TDataSource
    DataSet = qEstoque
    Left = 488
    Top = 224
  end
  object qEstoque: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from ESTOQUE')
    UpdateObject = uEstoque
    Left = 488
    Top = 112
    object qEstoqueID_PRO: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO PRODUTO'
      FieldName = 'ID_PRO'
      Origin = '"ESTOQUE"."ID_PRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEstoqueQTD: TIntegerField
      DisplayLabel = 'QUANTIDADE'
      FieldName = 'QTD'
      Origin = '"ESTOQUE"."QTD"'
    end
  end
  object uEstoque: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PRO,'
      '  QTD'
      'from ESTOQUE '
      'where'
      '  ID_PRO = :ID_PRO')
    ModifySQL.Strings = (
      'update ESTOQUE'
      'set'
      '  ID_PRO = :ID_PRO,'
      '  QTD = :QTD'
      'where'
      '  ID_PRO = :ID_PRO')
    InsertSQL.Strings = (
      'insert into ESTOQUE'
      '  (ID_PRO, QTD)'
      'values'
      '  (:ID_PRO, :QTD)')
    DeleteSQL.Strings = (
      'delete from ESTOQUE'
      'where'
      '  ID_PRO = :ID_PRO')
    Left = 488
    Top = 168
  end
  object dsProduto: TDataSource
    DataSet = qProduto
    Left = 560
    Top = 224
  end
  object qProduto: TIBQuery
    Database = Conexao
    Transaction = Transa
    Active = True
    BufferChunks = 1000
    CachedUpdates = False
    ParamCheck = True
    SQL.Strings = (
      'select * from PRODUTO')
    UpdateObject = upProduto
    Left = 560
    Top = 112
    object qProdutoID_PRO: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO PRODUTO'
      FieldName = 'ID_PRO'
      Origin = '"PRODUTO"."ID_PRO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PRODUTO"."NOME"'
    end
    object qProdutoINFORMACAO: TIBStringField
      DisplayLabel = 'INFORMA'#199#195'O'
      FieldName = 'INFORMACAO'
      Origin = '"PRODUTO"."INFORMACAO"'
      Size = 30
    end
    object qProdutoVALOR_VENDA: TFloatField
      DisplayLabel = 'VALOR DA VENDA'
      FieldName = 'VALOR_VENDA'
      Origin = '"PRODUTO"."VALOR_VENDA"'
      DisplayFormat = '0.00'
    end
    object qProdutoID_FOR: TIntegerField
      DisplayLabel = 'C'#211'DIGO DO FORNECEDOR'
      FieldName = 'ID_FOR'
      Origin = '"PRODUTO"."ID_FOR"'
    end
    object qProdutoID_USU_CADASTRO: TIntegerField
      FieldName = 'ID_USU_CADASTRO'
      Origin = '"PRODUTO"."ID_USU_CADASTRO"'
    end
    object qProdutoDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = '"PRODUTO"."DATA_CADASTRO"'
    end
  end
  object upProduto: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ID_PRO,'
      '  NOME,'
      '  INFORMACAO,'
      '  VALOR_VENDA,'
      '  ID_FOR,'
      '  ID_USU_CADASTRO,'
      '  DATA_CADASTRO'
      'from PRODUTO '
      'where'
      '  ID_PRO = :ID_PRO')
    ModifySQL.Strings = (
      'update PRODUTO'
      'set'
      '  DATA_CADASTRO = :DATA_CADASTRO,'
      '  ID_FOR = :ID_FOR,'
      '  ID_PRO = :ID_PRO,'
      '  ID_USU_CADASTRO = :ID_USU_CADASTRO,'
      '  INFORMACAO = :INFORMACAO,'
      '  NOME = :NOME,'
      '  VALOR_VENDA = :VALOR_VENDA'
      'where'
      '  ID_PRO = :ID_PRO')
    InsertSQL.Strings = (
      'insert into PRODUTO'
      
        '  (DATA_CADASTRO, ID_FOR, ID_PRO, ID_USU_CADASTRO, INFORMACAO, N' +
        'OME, VALOR_VENDA)'
      'values'
      
        '  (:DATA_CADASTRO, :ID_FOR, :ID_PRO, :ID_USU_CADASTRO, :INFORMAC' +
        'AO, :NOME, '
      '   :VALOR_VENDA)')
    DeleteSQL.Strings = (
      'delete from PRODUTO'
      'where'
      '  ID_PRO = :ID_PRO')
    Left = 560
    Top = 168
  end
end
