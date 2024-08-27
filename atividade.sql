CREATE DATABASE AutoViaLocadora;
use autovialocadora;
CREATE TABLE Marcas (
id Int auto_increment PRIMARY KEY,
nome VARCHAR(50) NOT NULL UNIQUE
);
CREATE TABLE Modelos (
id INT auto_increment PRIMARY KEY,
nome VARCHAR(50) NOT NULL,
id_marca INT,
FOREIGN KEY (id_marca) REFERENCES Marcas(id)
);
CREATE TABLE Veiculos (
id INT auto_increment primary key,
placa VARCHAR(10) NOT NULL UNIQUE,
ano INT NOT NULL,
cor VARCHAR(20),
id_modelo int,
status enum('Disponivel', 'Locado', 'Em Manutenção') default 'Disponivel',
foreign key (id_modelo) references Modelos(id)
);

create table Clientes (
id int auto_increment primary key,
nome varchar(100) not null,
cpf varchar(14) not null unique,
telefone varchar(15),
endereço varchar(255)
);

create table Contratos (
id int auto_increment primary key,
id_cliente int,
id_veiculo int,
data_inicio date not null,
data_fim date,
valor_total decimal(10, 2),
foreign key (id_cliente) references Clientes(id),
foreign key (id_veiculo) references veiculos(id)
);

 create table Pagamentos (
id int auto_increment primary key,
id_contrato int,
data_pagamento date not null,
valor decimal(10, 2) not null,
metodo enum('dinheiro', ' Cartão de Credito', 'Transferencia') not null,
foreign key (id_contrato) references contratos(id)
);   
    
insert into Marcas (nome) values
('Chevrolet'),
('Hyundai'),
('Audi'),
('Volkswagen'),
('Mercedes-benz'),
('Fiat'),
('Renalt'),
('Kia'),
('Jeep'),
('Land Rover'),
('Subaru'),
('Peugeot'),
('Chrysler'),
('Lexus'),
('Mazda'),
('Mistsubishi'),
('Suzuki'),
('Porsche'),
('Jaguar'),
('Infiniti'),
('Alfa Romeo'),
('Buick'),
('Cadillac'),
('Lincoln'),
('GMC');

set foreign_key_checks=1;
insert into veiculos (placa, ano, cor, id_modelo) values
('ABC1235', 2021, 'Prata', 1),
('XYZ5679', 2022, 'Cinza', 2),
('LMN9102', 2020, 'Preto', 3),
('DEF3456', 2021, 'Branco', 4),
('GHI7890', 2022, 'Vermelho', 5),
('JKL0123', 2019, 'Azul', 6),
('MNO4567', 2021, 'Amarelo', 7),
('PQR8901', 2020, 'Verde', 8),
('STU2345', 2022, 'Marrom', 9),
('VWX6789', 2021, 'Laranja', 10),
('YZA0123', 2019, 'Roxo', 11),
('BCD3456', 2022, 'Bege', 12),
('EFG7890', 2021, 'Dourado', 13),
('HIJ0123', 2020, 'Prata', 14),
('klm4567', 2022, 'Cinza', 15),
('NOP8901', 2021, 'Branco', 16),
('QRS2345', 2019, 'Preto', 17),
('TUV6789', 2022, 'Vermelho', 18),
('WXY0123', 2021, 'Azul', 19),
('ZAB3456', 2020, 'Amarelo', 20),
('CDE7890', 2022, 'Verde', 21),
('FGH0123', 2021, 'Marrom', 22),
('IJK4567', 2019, 'Laranja', 23),
('LMN8901', 2022, 'Roxo', 24),
('OPQ2345', 2021, 'Bege', 25),
('RST6789', 2020, 'Dourado', 26),
('UVW0123', 2022, 'Prata', 27),
('XYZ3456', 2021, 'Cinza', 28),
('ABC7890', 2020, 'Branco', 29),
('DEF0123', 2022, 'Preto' ,30);


 use autovialocadora;
 INSERT INTO Clientes (nome, cpf, telefone, endereço) VALUES
 ('Ana Paula', '111.272.323-44', '(11) 91234-5678', 'Rua D, 123'),
 ('Bruno Silva', '222.383.944-55', '(21) 92345-6789', 'Rua E, 456'),
 ('Clara Martins', '333.484.555-66', '(31) 93456-7890', 'Rua F, 789'),
 ('Daniel Souza', '704.555.666-77', '(41) 94567-8901', 'Rua G, 101'), 
 ('Eva Almeida', '509.666.777-88', '(51) 95678-9012', 'Rua H, 202'),
 ('Fernando Lima', '367.777.888-99', '(61) 96789-0123', 'Rua I, 303'),
 ('Gabriela Costa', '787.898.999-00', '(71) 97890-1234', 'Rua J, 404'),
 ('Henrique Oliveira', '076.999.000-11', '(81) 98901-2345', 'Rua K, 505'),
 ('Isabela Pereira', '934.700.111-22', '(91) 99012-3456', 'Rua L, 606'), 
 ('João Pedro', '200.256.222-33', '(11) 99123-4567', 'Rua M, 787'),
 ('Karina Sousa', '161.222.333-44', '(21) 99234-5678', 'Rua N, 808'),
 ('Lucas Andrade', '228.333.444-55', '(31) 99345-6789', 'Rua 0, 909'),
 ('Maria Clara', '333.744.555-66', '(41) 99456-7890', 'Rua P, 1010'),
 ('Nicolas Barbosa', '254.555.666-77', '(51) 99567-8901', 'Rua Q, 1111'),
 ('Olivia Silva', '535.766.777-88', '(61) 99678-9012', 'Rua R, 1212'),
 ('Paulo Henrique', '196.777.888-99', '(71) 99789-0123', 'Rua S, 1313'),
 ('Queila Gomes', '970.888.999-00', '(81) 99890-1234', 'Rua T, 1414'),
 ('Rafael Lima', '858.999.000-11', '(91) 99901-2345', 'Rua U, 1515'),
 ('Sofia Castro', '912.000.111-22', '(11) 90012-3456', 'Rua V, 1616'),
 ('Tiago Almeida', '029.111.222-33', '(21) 91123-4567', 'Rua W, 1717'),
 ('Ursula Ferreira', '801.222.333-44', '(31) 92234-5678', 'Rua X, 1818'),
 ('Vitor Santos', '226.233.444-55', '(41) 93345-6789', 'Rua Y, 1919'),
 ('Wanda Campos', '323.444.555-66', '(51) 944567890', 'Rua Z, 2020'),
('Xuxa Oliveira', '434.555.666-77', '(61) 95567-8901', 'Rua AA, 2121'),
('Yuri Alves', '515.666.777-88', '(71) 96678-9012', 'Rua BB, 2222'),
('Zara Costa', '662.777.888-99', '(81) 97789-0123', 'Rua CC, 2323'),
('Aline lima', '737.888.999-00', '(91) 98890-1234', 'Rua DD, 2424'),
('Bernado Sousa', '788.999.000-11', '(11) 99901-2345', 'Rua EE, 2626'),
('Carla Mendes', '969.000.111-22', '(21 90012-3456)', 'Rua FF, 2626'),
('Diego Santos', '009.111.222-33', '(31) 91123-4567', 'Rua GG, 2727');


set foreign_key_checks=0;
insert into Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) values
(1, 1, '2024-07-01', '2024-07-10', 500.00);

INSERT INTO Marcas (nome) VALUES
 ('Toyota'), ('Honda'), ('Ford');
 INSERT INTO Modelos (nome, id_marca) VALUES
('Corolla', 1),
('Civic', 2),
('Focus', 3);
INSERT INTO Veiculos (placa, ano, cor, id_modelo) VALUES
('ABC1234', 2020, 'Preto', 1),
('XYZ5678', 2021, 'Branco', 2),
('LMN9101', 2019, 'Azul', 3);
INSERT INTO Clientes (nome, cpf, telefone, endereco) VALUES
('Carlos Silva', '123.456.789-00', '(11) 98765-4321', 'Rua A, 123'),
('Maria Oliveira', '234.567.890-11', '(21) 98765-4321', 'Rua B, 456'),
('João Santos', '345.678.901-22', '(31) 98765-4321', 'Rua C, 789');
INSERT INTO Contratos (id_cliente, id_veiculo, data_inicio, data_fim, valor_total) VALUES
(1, 1, '2024-08-01', '2024-08-07', 350.00),
(2, 2, '2024-08-05', NULL, NULL),
(3, 3, '2024-08-10', '2024-08-15', 400.00);
INSERT INTO Pagamentos (id_contrato, data_pagamento, valor, metodo) VALUES
(1, '2024-08-01', 350.00, 'Cartão de Crédito'),
(3, '2024-08-10', 400.00, 'Dinheiro');
    