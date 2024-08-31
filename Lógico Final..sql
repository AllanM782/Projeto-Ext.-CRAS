

CREATE TABLE Dados_Pes (
    CodIndividuo NUMERIC PRIMARY KEY,
    Nome_Comp VARCHAR (95),
    DatNasc DATE,
    CPF NUMERIC,
    RG NUMERIC,
    Telefone NUMERIC,
    Emai VARCHAR (95),
    Ocupacao VARCHAR (95),
    Cor VARCHAR (95),
    Sexo VARCHAR (95),
    Lougradouro VARCHAR (95),
    Num NUMERIC,
    Bairro VARCHAR (95),
    Cidade VARCHAR (95),
    CEP NUMERIC
);

CREATE TABLE Membro_Fam (
    CodDep NUMERIC PRIMARY KEY,
    fk__Dados_Pes__CodIndividuo NUMERIC,
    Nome_Dep VARCHAR (95),
    CPF NUMERIC,
    RG NUMERIC,
    Sexo VARCHAR (95),
    Ocupacao VARCHAR (95),
    Cor VARCHAR (95),
    Grau_de_Fam_ VARCHAR (95)
);

CREATE TABLE Colaborador (
    CodAtendente NUMERIC PRIMARY KEY,
    CPF NUMERIC,
    Nome_Atd VARCHAR (95)
);

CREATE TABLE Serv_Of_Atendimento (
    ID_Servico NUMERIC VARCHAR PRIMARY KEY,
    Nome_do_Servico VARCHAR (95),
    Descricao_Servico VARCHAR (95),
    Pub_Alvo VARCHAR (95)
);
 
ALTER TABLE Membro_Fam ADD CONSTRAINT FK_Membro_Fam_2
    FOREIGN KEY (fk__Dados_Pes__CodIndividuo)
    REFERENCES Dados_Pes (CodIndividuo)
    ON DELETE CASCADE;