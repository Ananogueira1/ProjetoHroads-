USE HROADS_TARDE;
GO

---DQL

SELECT * FROM TIPOHABILIDADE;
GO

SELECT * FROM CLASSE;
GO

SELECT * FROM HABILIDADE;
GO

SELECT * FROM CLASSEHABILIDADE;
GO

SELECT * FROM PERSONAGEM;
GO

SELECT * FROM TIPOUSUARIO;
GO

SELECT * FROM USUARIO;
GO

-- Selecionar somente os id’s das habilidades classificando-os por ordem 
-- crescente; 
SELECT  idHabilidade  FROM  Habilidade
GO
-- Selecionar todos os tipos de habilidades; 
SELECT  *  FROM  TIPOHABILIDADE
GO

-- Selecionar todas as habilidades e a quais tipos de habilidades elas fazem parte; 

SELECT  nome, QualTipoHabilidade  [IDTIPOHABILIDADE] FROM  Habilidade H
INNER JOIN TipoHabilidade TH
ON  H . idTipoHabilidade  =  TH . idTipoHabilidade
GO

-- Selecionar todos os personagens e suas respectivas classes; 
SELECT  nomePersonagem PERSONAGEM, TipoClasse classe  FROM  PERSONAGEM P
LEFT JOIN CLASSE C
ON P. idClasse  =  C. idClasse 
GO

/*--- Selecionar todos os personagens e as classes (mesmo que elas não tenham 
correspondência em personagens)*/

SELECT  nomePersonagem Personagem, TipoClasse Classe  FROM  PERSONAGEM P 
LEFT JOIN CLASSE C
ON P . idClasse  =  C . idClasse 
GO

--- Selecionar todas as classes e suas respectivas habilidades 
SELECT  TipoClasse Classe, idTipoHabilidade Habilidade  FROM  CLASSE C 
LEFT JOIN CLASSEHABILIDADE CH 
ON  C . idClasse  =  CH . idClasse 
LEFT JOIN  HABILIDADE H 
ON  CH . idClasseHabilidade  =  H . idHabilidade 
GO

*/--- Selecionar todas as habilidades e suas classes (somente as que possuem 
correspondência);  */ 
SELECT  idClasseHabilidade Habilidade, TipoClasse Classe  FROM  CLASSE C 
LEFT JOIN CLASSEHABILIDADE CH 
ON C . idClasse  =  CH . idClasse 
INNER JOIN  HABILIDADE H 
ON  CH . idClasseHabilidade  =  H . idHabilidade 
GO

/*  
Selecionar todas as habilidades e suas classes (mesmo que elas não tenham 
correspondência). 
*/ 
SELECT  nome Habilidade, TipoClasse Classe  FROM  CLASSE C 
FULL OUTER JOIN CLASSEHABILIDADE CH 
ON  C . idClasse  =  CH . idClasse 
FULL OUTER JOIN  HABILIDADE H 
ON  CH . idClasseHabilidade  =  H . idHabilidade 
GO 