SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+03:00";

CREATE TABLE `cidades` (
  `id_cidade` int NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `descricao` varchar(70) NOT NULL,
  `uf` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `pessoas` (
  `id_pessoa` int NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `nome` varchar(50) NOT NULL,
  `idade` int NOT NULL,
  `id_cidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `lojas` (
  `id_loja` int NOT NULL  AUTO_INCREMENT PRIMARY KEY,
  `fantasia` varchar(50) NOT NULL,
  `id_cidade` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


ALTER TABLE `pessoas`
  ADD CONSTRAINT `pessoas_cidades` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);

ALTER TABLE `lojas`
  ADD CONSTRAINT `lojas_cidades` FOREIGN KEY (`id_cidade`) REFERENCES `cidades` (`id_cidade`);


INSERT INTO cidades (id_cidade, descricao, uf)
    VALUES
        (1, 'CIDADE A', 'UA'),
        (2, 'CIDADE B', 'UB'),
        (3, 'CIDADE C', 'UC'),
        (4, 'CIDADE D', 'UD'),
        (5, 'CIDADE E', 'UE');

INSERT INTO pessoas (id_pessoa, nome, idade, id_cidade)
    VALUES
        (1, 'PESSOA 1', 11, 1),
        (2, 'PESSOA 2', 22, 2),
        (3, 'PESSOA 3', 33, 1),
        (4, 'PESSOA 4', 44, 1),
        (5, 'PESSOA 5', 55, 3),
        (6, 'PESSOA 6', 66, 2),
        (7, 'PESSOA 7', 77, 3),
        (8, 'PESSOA 8', 20, 2),
        (9, 'PESSOA 9', 30, 2),
        (10, 'PESSOA 10', 40, 3);
        

INSERT INTO lojas (id_loja, fantasia, id_cidade)
    VALUES
        (1, 'LOJA 1', 1),
        (2, 'LOJA 2', 2);    

COMMIT;