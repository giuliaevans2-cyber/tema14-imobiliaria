script.sql
CREATE TABLE Proprietarios (
    id_proprietario INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Imoveis (
    id_imovel INT PRIMARY KEY,
    endereco VARCHAR(150),
    id_proprietario INT,
    FOREIGN KEY (id_proprietario)
    REFERENCES Proprietarios(id_proprietario)
);

CREATE TABLE Inquilinos (
    id_inquilino INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Contratos (
    id_contrato INT PRIMARY KEY,
    id_imovel INT,
    id_inquilino INT,
    data_inicio DATE,
    data_fim DATE,
    FOREIGN KEY (id_imovel)
    REFERENCES Imoveis(id_imovel),
    FOREIGN KEY (id_inquilino)
    REFERENCES Inquilinos(id_inquilino)
);

INSERT INTO Proprietarios VALUES (1,'João Silva');
INSERT INTO Proprietarios VALUES (2,'Maria Oliveira');
INSERT INTO Proprietarios VALUES (3,'Carlos Pereira');

INSERT INTO Imoveis VALUES (1,'Rua das Flores, 100',1);
INSERT INTO Imoveis VALUES (2,'Av. Paulista, 500',2);
INSERT INTO Imoveis VALUES (3,'Rua XV de Novembro, 200',3);

INSERT INTO Inquilinos VALUES (1,'Maria Souza');
INSERT INTO Inquilinos VALUES (2,'Pedro Lima');
INSERT INTO Inquilinos VALUES (3,'Ana Lima');
INSERT INTO Inquilinos VALUES (4,'Lucas Santos');
INSERT INTO Inquilinos VALUES (5,'Fernanda Costa');

INSERT INTO Contratos VALUES (1,1,1,'2026-01-01','2026-09-30');
INSERT INTO Contratos VALUES (2,1,2,'2026-10-01',NULL);
INSERT INTO Contratos VALUES (3,2,3,'2026-02-01','2026-12-31');
INSERT INTO Contratos VALUES (4,3,4,'2026-03-15',NULL);
INSERT INTO Contratos VALUES (5,2,5,'2025-01-01','2025-12-31');
SELECT * FROM Proprietarios;
SELECT * FROM Imoveis;
SELECT * FROM Inquilinos;
SELECT * FROM Contratos;
