USE HROADS_TARDE;
GO

---DML


INSERT INTO TIPOHABILIDADE (QualTipoHabilidade)
VALUES ('Ataque'), ('Defesa'), ('Cura'), ('Magia');
GO

INSERT INTO CLASSE (TipoClasse)
VALUES ('Barbaro'), ('Cruzado'), ('Caçadora de Demônios'), ('Monge'), ('Necromante'), ('Feiticeiro'), ('Arcanista');
GO

INSERT INTO HABILIDADE (idTipoHabilidade, nome)
VALUES (1, 'Lança Mortal'), (2, 'Escudo Supremo'), (3, 'Recuperar Vida');
GO

INSERT  INTO  Habilidade(idTipoHabilidade,Nome) 
VALUES ( 4 , ' NULL' ); 
GO

INSERT INTO CLASSEHABILIDADE (idClasse,idHabilidade)
VALUES ( 1 , 1 ), ( 2 , 2 ), ( 3 , 1 ), ( 4 , 3 ), ( 5 , 4 ), ( 6 , 3 ), ( 7 , 4 ), ( 1 , 2 ), ( 4 , 2 ); 
GO

INSERT INTO PERSONAGEM (idClasse,nomePersonagem,CapaMaxVida,CapaMaxMana,DataCriacao,DataAtual)
VALUES ( 1 , ' depuração' , ' 100' , ' 80' , ' 2021/09/08' , ' 16/09/2021' ), ( 2 , ' BitBug' , ' 70' , ' 100' , ' 10 / 08/2021 ' , ' 15/09/2021 ' ), ( 7 , ' Fer8 ' , ' 75 ' , ' 60 ' , ' 11/08/2021 ' , ' 17/09/2021 ' ); 
GO

INSERT INTO TIPOUSUARIO (permissao)
VALUES ( ' Administrador' ),( ' Jogador' );
GO

INSERT INTO USUARIO (email,senha,idTipoUsuario)
VALUES 	( ' admin@admin.com' ,  ' admin' ,  1 ),( ' jogador@jogador.com' ,  ' jogador' ,  2 ); 
GO

/* 
4 - Atualizar o nome do personagem Fer8 para Fer7 
*/ 
UPDATE  PERSONAGEM 
SET nomePersonagem =  ' Fer7' 
WHERE nomePersonagem =  ' Fer8' 
go 

/* 
5 - Atualizar o nome da classe de Necromante para Necromancer 
*/ 
UPDATE  CLASSE  
SET TipoClasse =  ' Necromante' 
WHERE TipoClasse =  ' Necromante' 
go