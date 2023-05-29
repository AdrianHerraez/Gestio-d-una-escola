CREATE DATABASE gestio;
USE gestio;

CREATE TABLE `alumne` (
  `MatriculaAlu` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomAlu` VARCHAR(25) NULL,
  `CognomsAlu` VARCHAR(45) NULL,
  `ImatgeAlu` VARCHAR(100) NULL,
  `TelfAlu` VARCHAR(9) NULL,
  `DireccioAlu` VARCHAR(100) NULL,
  `CPAlu` VARCHAR(8) NULL,
  `PwdAlu` VARCHAR(20) NULL,
  `GenereAlu` VARCHAR(1) NULL,
  `NomTutor1Alu` VARCHAR(45) NULL,
  `NomTutor2Alu` VARCHAR(45) NULL,
  `CognomTutor1Alu` VARCHAR(45) NULL,
  `CognomTutor2Alu` VARCHAR(45) NULL,
  `TelfTutor1Alu` VARCHAR(9) NULL,
  `TelfTutor2Alu` VARCHAR(9) NULL,
  `MailAlu` VARCHAR(45) NULL
);

CREATE TABLE `educador` (
  `IdEdu` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomEdu` VARCHAR(25) NULL,
  `CognomsEdu` VARCHAR(45) NULL,
  `PwdEdu` VARCHAR(20) NULL,
  `TelfEdu` VARCHAR(9) NULL,
  `MailEdu` VARCHAR(45) NULL,
  `SalariEdu` VARCHAR(6) NULL,
  `DataContracteEdu` DATE NULL,
  `PermisosEdu` CHAR(1) NULL,
  `IdDepEdu` INT(11) NULL
);

CREATE TABLE `curs` (
  `IdCurs` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomCurs` VARCHAR(25) NULL,
  `DescripcioCurs` VARCHAR(100) NULL
);

CREATE TABLE `modul` (
  `IdMod` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomMod` VARCHAR(25) NULL,
  `DescripcioMod` VARCHAR(100) NULL,
  `IdAulaMod` INT(11) NULL
);

CREATE TABLE `departament` (
  `IdDep` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomDep` VARCHAR(25) NULL,
  `DescripcioDep` VARCHAR(400) NULL,
  `PlantaDep` VARCHAR(9) NULL
);

CREATE TABLE `aula` (
  `IdAula` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `NomAula` VARCHAR(25) NULL,
  `DescripcioAula` VARCHAR(100) NULL,
  `PlantaAula` VARCHAR(9) NULL
);

CREATE TABLE `edumod` (
  `IdEduMod` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `IdEdu` INT(11) NULL,
  `IdMod` INT(11) NULL
);

CREATE TABLE `nota` (
  `IdNota` INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `UFNota` INT(2) NULL,
  `DescripcioNota` VARCHAR(100) NULL,
  `NumNota` DECIMAL(9,2) NULL,
  `MatriculaAluNota` INT(11) NULL,
  `IdCursNota` INT(11) NULL,
  `IdModNota` INT(11) NULL
);

  ALTER TABLE `educador` ADD CONSTRAINT `DepEduFK` FOREIGN KEY (`IdDepEdu`) REFERENCES `departament` (`IdDep`) ON DELETE CASCADE;
  ALTER TABLE `modul` ADD CONSTRAINT `AulaModFK` FOREIGN KEY (`IdAulaMod`) REFERENCES `aula` (`IdAula`) ON DELETE CASCADE;
  ALTER TABLE `edumod` ADD CONSTRAINT `EduEduModFK` FOREIGN KEY (`IdEdu`) REFERENCES `educador` (`IdEdu`) ON DELETE CASCADE;
  ALTER TABLE `edumod` ADD CONSTRAINT `ModulEduModFK` FOREIGN KEY (`IdMod`) REFERENCES `modul` (`IdMod`) ON DELETE CASCADE;
  ALTER TABLE `nota` ADD CONSTRAINT `AluNotaFK` FOREIGN KEY (`MatriculaAluNota`) REFERENCES `alumne` (`MatriculaAlu`) ON DELETE CASCADE;
  ALTER TABLE `nota` ADD CONSTRAINT `ModulNotaFK` FOREIGN KEY (`IdModNota`) REFERENCES `modul` (`IdMod`) ON DELETE CASCADE;
  ALTER TABLE `nota` ADD CONSTRAINT `CursNotaFK` FOREIGN KEY (`IdCursNota`) REFERENCES `curs`(`IdCurs`) ON DELETE CASCADE;


INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, PwdAlu, CPAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000220, 'Guillem', 'Abad', './img/Abad.png', '644612037', 'c/ de la Pau 36', 'qweQWE123', '08620', 'H', 'Jose', 'Maria', 'Abad', '1000220.joan23@fje.edu' , '654896321', '645123987', '1000220.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, PwdAlu, CPAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000221, 'Joan', 'Becerril','./img/Becerril.png' , '609212422', 'c/ McDonalds 12', 'qweQWE123', '08906', 'H', 'Pepe', 'Lucia', 'Becerril', '1000221.joan23@fje.edu' , '654896322', '645124987', '1000221.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, PwdAlu, CPAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000222, 'Luca', 'Lusuardi', './img/Lusuardi.png' , '657896752', 'c/ Maria del Mar 46', 'qweQWE123', '08440', 'H', 'Manolo', 'Julia', 'Lusuardi', '1000222.joan23@fje.edu' , '674896321', '685123987', '1000222.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, PwdAlu, CPAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000223, 'Marc', 'Colomé', './img/Colome.png' , '625437890', 'c/ Major 10', 'qweQWE123', '08620', 'H', 'Carlos', 'Laura', 'Colomer', '1000223.joan23@fje.edu' , '687654321', '698123456', '1000223.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000224,'Oriol','Larrazabal','./img/Larrazabal.png' ,'698743218','c/ Esglesia 5','08830','qweQWE123','H','David','Eva','Larrazabal','1000224.joan23@fje.edu' ,'654123789','687412589','1000224.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000225,'Pol','Marc','./img/Marc.png' ,'698743215','c/ del Mig 6','08620','qweQWE123','H','Miguel','Lorena','Marc','1000225.joan23@fje.edu' ,'654321789','698741235','1000226.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000226,'Iker','Peñas','./img/Peñas.png' ,'654789321','c/ de les Flors 20','08620','qweQWE123','H','Juan','Rosa','Peñas','1000226.joan23@fje.edu' ,'698543217','654789321','1000227.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000227,'Dylan','Castles','./img/Castles.png' ,'698743210','c/ dels Arbres 3','08620','qweQWE123','H','Pablo','Marta','Castles','1000227.joan23@fje.edu' ,'687654321','698741235','1000228.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000228,'Alberto','Bermejo','./img/Bermejo.png' ,'687432189','c/ Major 5','08620','qweQWE123','H','Fernando','Lucia','Bermejo','1000228.joan23@fje.edu' ,'698741235','654789321','1000229.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000229,'Juan','Carlos','./img/Carlos.png' ,'654789321','c/ del Sol 18','08620','qweQWE123','H','Luis','Carmen','Carlos','1000229.joan23@fje.edu' ,'687654321','698743215','1000230.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000230,'Zhou','Ming','./img/Ming.png' ,'698743215','c/ Major 8','08620','qweQWE123','H','Wang','Liu','Ming','1000230.joan23@fje.edu' ,'654789321','698741235','1000231.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000231,'Ivan','Moreno','./img/Moreno.png' ,'687543219','c/ de la Font 12','08620','qweQWE123','H','Sergio','Patricia','Moreno','1000231.joan23@fje.edu' ,'698741235','654789321','1000232.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000232,'Manav','Kummar','./img/Kummar.png' ,'654321789','c/ de les Flors 18','08620','qweQWE123','H','Rajesh','Pooja','Kummar','1000232.joan23@fje.edu' ,'654987321','698741258','1000234.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000233,'Julia','Suarez','./img/Suarez.png' ,'698743219','c/ Sant Antoni 6','08620','qweQWE123','M','Pablo','Laura','Suarez','1000233.joan23@fje.edu' ,'687654321','654321987','1000235.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000234,'Aina','Orozco','./img/Orozco.png' ,'654789312','c/ de la Lluna 15','08620','qweQWE123','M','David','Laura','Orozco','1000234.joan23@fje.edu' ,'687543219','654789321','1000236.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000235,'Mario','Palamari','./img/Palamari.png' ,'698743214','c/ del Mar 8','08620','qweQWE123','H','Juan','Ana','Palamari','1000235.joan23@fje.edu' ,'654987321','687543219','1000237.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000236,'Carla','Maldonado','./img/Maldonado.png' ,'654321789','c/ de la Font 6','08620','qweQWE123','M','Pedro','Sara','Maldonado','1000236.joan23@fje.edu','654789321','698743215','1000238.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000237,'Sergi','Rafael','./img/Rafael.png' ,'698743210','c/ Sant Antoni 12','08620','qweQWE123','H','Carlos','Laura','Rafael','1000237.joan23@fje.edu','654321987','687543219','1000239.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000238,'Oriol','Godoy','./img/Godoy.png' ,'654789321','c/ de les Flors 20','08620','qweQWE123','H','Jordi','Marta','Godoy','1000238.joan23@fje.edu','654987321','687543219','1000240.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000239,'Pau','Lopua','./img/Lopua.png' ,'698743215','c/ del Mig 6','08620','qweQWE123','H','Joan','Eva','Lopua','1000239.joan23@fje.edu','654789321','654321987','1000241.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000240,'Jorge','Fernández','./img/Martinez.png' ,'698743215','c/ del Sol 7','08001','qweQWE123','H','Alberto','Carmen','Fernandez','1000240.joan23@fje.edu','654321987','687543219','1000240.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000241,'Luisa','Gómez',NULL,'698743215','c/ Mayor 10','08001','qweQWE123','H','Juan','Liu','Gómez',NULL,'654789321','698741235','1000241.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000242,'Pedro','Ruíz',NULL,'698743215','c/ de la Luna 9','08001','qweQWE123','H','Sergio','Patricia','Ruíz',NULL,'698741235','654789321','1000242.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000243,'Laura','Pérez',NULL,'698743215','c/ de les Roses 15','08001','qweQWE123','H','manolo','Maria','Pérez',NULL,'654987321','698741258','1000243.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000244,'Sara','García',NULL,'698743215','c/ Sant Miquel 3','08001','qweQWE123','M','Pablo','Laura','García',NULL,'687654321','654321987','1000244.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000245,'Lucía','Sanchez',NULL,'698743215','c/ de la Estrella 5','08001','qweQWE123','M','David','Laura','Sánchez',NULL,'687543219','654789321','1000245.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000246,'Carlos','López',NULL,'698743215','c/ del Mar 4','08001','qweQWE123','H','Juan','Ana','López',NULL,'654987321','687543219','1000246.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000247,'Sandro','Calvo',NULL,'698743215','c/ de la Plaça 2','08001','qweQWE123','M','Pedro','Sara','Calvo',NULL,'654783221','698743215','1000247.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000248,'Marina','Martínez',NULL,'698743215','c/ de la Plaça 2','08001','qweQWE123','M','Pedro','Sara','Martínez',NULL,'654784521','698743215','1000248.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000249,'Maria','López',NULL,'698743215','c/ de la Plaça 2','08001','qweQWE123','M','Peter','Sara','López',NULL,'654784521','698743215','1000249.joan23@fje.edu');
INSERT INTO alumne (MatriculaAlu, NomAlu, CognomsAlu, ImatgeAlu, TelfAlu, DireccioAlu, CPAlu, PwdAlu, GenereAlu, NomTutor1Alu, NomTutor2Alu, CognomTutor1Alu, CognomTutor2Alu, TelfTutor1Alu, TelfTutor2Alu, MailAlu) VALUES (1000250,'Sara','López',NULL,'698743215','c/ de la Plaça 2','08001','qweQWE123','M','Pere','Sara','López',NULL,'654679321','698743215','1000250.joan23@fje.edu');

INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (1, 'DEP IT', 'Departament d informàtica - Encarregat de gestionar i mantenir els sistemes d informació i tecnologia utilitzats per l organització.', '3');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (2, 'DEP ENF', 'Departament d infermeria - Encarregat de vetllar per la salut dels alumnes i treballadors', '0');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (3, 'DEP DIR', 'Departament de direcció - Encarregat de la gestió global de l escola, establint polítiques i estratègies educatives, coordinant el funcionament dels altres departaments i representant l escola davant organismes externs.', '2');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (4, 'DEP ADM', 'Departament d administració - Responsable de les tasques administratives i financeres de l escola, com la gestió de matrícules, el control de despeses, la contractació de personal no docent i la gestió de recursos econòmics.', '3');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (5, 'DEP ORI', 'Departament d orientació - Brinda suport i assessorament a estudiants, pares i educadors en aspectes acadèmics, emocionals i d orientació vocacional. S encarrega de l atenció a la diversitat, la detecció i suport a necessitats especials i la coordinació de programes d orientació.', '1');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (6, 'DEP INF', 'Departament d infantil - Responsable de l educació i cura dels estudiants en l etapa d educació infantil, assegurant el seu desenvolupament cognitiu, emocional i social d acord amb els objectius pedagògics establerts.', '2');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (7, 'DEP SEC', 'Departament de secundària - Responsable de l educació dels estudiants en l etapa d educació secundària obligatòria i postobligatòria. Elabora plans d estudi, organitza activitats educatives i extraescolars, i coordina l avaluació i seguiment de l alumnat.', '1');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (8, 'DEP FP', 'Departament de FP - Responsable de l educació dels estudiants en els cicles formatius de grau mitjà i grau superior. Coordina els programes de formació, estableix convenis amb empreses per a les pràctiques professionals i realitza el seguiment de l alumnat en les seves trajectòries formatives.', '0');
INSERT INTO departament (IdDep, NomDep, DescripcioDep, PlantaDep) VALUES (9, 'DEP BATX', 'Departament de Batxillerat - Responsable de l educació dels estudiants en l etapa de Batxillerat. Elabora plans d estudi, organitza activitats educatives i extraescolars, i coordina l avaluació i seguiment de l alumnat.', '0');

INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Gerard', 'Orobitg', 'qweQWE123', '678123456', 'gerard.orobitg@fje.edu', 2000, '2018-06-07', 2, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Nuria', 'Garres', 'qweQWE123', '678123457', 'nuria.garres@fje.edu', 3000, '2014-03-04', 3, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Alberto', 'De Santos', 'qweQWE123', '678123458', 'alberto.desantos@fje.edu', 2000, '2015-05-12', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Ignasi', 'Romero', 'qweQWE123', '678123459', 'ignasi.romero@fje.edu', 2000, '2014-06-12', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Agnes', 'Plans', 'qweQWE123', '678123460', 'agnes.plans@fje.edu', 2000, '2019-06-01', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Sergio', 'Velasco', 'qweQWE123', '678123461', 'sergio.velasco@fje.edu', 2000, '2016-04-01', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Sergio', 'Jimenez', 'qweQWE123', '678123462', 'sergio.jimenez@fje.edu', 2000, '2016-12-09', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Alex', 'Cunillera', 'qweQWE123', '678123463', 'alex.cunillera@fje.edu', 2000, '2015-01-05', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Miguel', 'Delgado', 'qweQWE123', '678123464', 'miguel.delgado@fje.edu', 2000, '2015-06-01', 1, 8);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Pau', 'Dorca', 'qweQWE123', '678123465', 'pau.dorca@fje.edu', 2000, '2014-03-09', 1, 6);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Pedro', 'Blanco', 'qweQWE123', '678123466', 'pedro.blanco@fje.edu', 3000, '2013-06-07', 1, 7);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Laura', 'Pietro', 'qweQWE123', '678123467', 'laura.pietro@fje.edu', 2000, '2011-06-19', 1, 7);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Angela', 'Villalobos', 'qweQWE123', '678123468', 'angela.villalobos@fje.edu', 1200, '2019-03-20', 1, 6);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Xavier', 'Cano', 'qweQWE123', '678123469', 'xavier.cano@fje.edu', 1800, '2017-06-07', 1, 7);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Josep Maria', 'Cano', 'qweQWE123', '678123470', 'josepmaria.cano@fje.edu', 1700, '2017-01-14', 1, 6);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Patricia', 'Gutierrez', 'qweQWE123', '678123471', 'patricia.gutierrez@fje.edu', 1600, '2018-02-07', 1, 6);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Olga', 'Fernandez', 'qweQWE123', '678123472', 'olga.fernandez@fje.edu', 2000, '2006-03-04', 1, 9);
INSERT INTO educador (NomEdu, CognomsEdu, PwdEdu, TelfEdu, MailEdu, SalariEdu, DataContracteEdu, PermisosEdu, IdDepEdu) VALUES ('Laura', 'Garbayo', 'qweQWE123', '678123473', 'laura.garbayo@fje.edu', 2000, '2007-06-06', 1, 9);


INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (1, 'P3', 'EDUCACIÓ INFANTIL P3');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (2, 'P4', 'EDUCACIÓ INFANTIL P4');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (3, 'P5', 'EDUCACIÓ INFANTIL P5');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (4, '1R PRIM', 'EDUCACIÓ PRIMÀRIA 1R');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (5, '2N PRIM', 'EDUCACIÓ PRIMÀRIA 2N');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (6, '3R PRIM', 'EDUCACIÓ PRIMÀRIA 3R');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (7, '4T PRIM', 'EDUCACIÓ PRIMÀRIA 4T');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (8, '5È PRIM', 'EDUCACIÓ PRIMÀRIA 5È');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (9, '6È PRIM', 'EDUCACIÓ PRIMÀRIA 6È');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (10, '1R ESO', '1R ESO');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (11, '2N ESO', '2N ESO');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (12, '3R ESO', '3R ESO');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (13, '4T ESO', '4T ESO');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (16, '1R BATX HUM/SOC', '1R BATX HUM/SOC');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (17, '1R BATX TEC/CIE', '1R BATX TEC/CIE');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (18, '2N BATX HUM/SOC', '2N BATX HUM/SOC');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (19, '2N BATX TEC/CIE', '2N BATX TEC/CIE');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (20, 'SMX1', 'SMX1');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (21, 'SMX2', 'SMX2');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (22, 'ASIX1', 'ASIX1');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (23, 'ASIX2', 'ASIX2');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (24, 'GS Administració 1', 'GS Administració 1');
INSERT INTO curs (IdCurs, NomCurs, DescripcioCurs) VALUES (25, 'GS Administració 2', 'GS Administració 2');

INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (1, '000', 'Aula DEP Enfermeria', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (2, '001', 'Enfermeria', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (3, '002', 'Consergeria', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (4, '003', 'Aula DEP Batxillerat', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (5, '004', 'Aula DEP FP', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (6, '005', 'Aula DEP FP', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (7, '006', 'Aula P3', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (8, '007', 'Aula P4', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (9, '008', 'Aula P5', 0);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (10, '100', 'Aula 1r ESO', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (11, '101', 'Aula 2n ESO', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (12, '102', 'Aula 3r ESO', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (13, '103', 'Aula DEP Orientació', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (14, '104', 'Aula 4t ESO', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (15, '105', 'Aula DEP SEC', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (16, '106', 'Aula Batx SOC / HUM 1', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (17, '107', 'Aula Batx SOC / HUM 2', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (18, '108', 'Aula Batx TEC / CIEN 1', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (19, '109', 'Aula Batx TEC / CIEN 1', 1);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (20, '200', 'Aula DEP Direcció', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (21, '201', 'Aula DEP Infantil', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (22, '202', 'Aula 1r Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (23, '203', 'Aula 2n Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (24, '204', 'Aula 3r Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (25, '205', 'Aula 4rt Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (26, '206', 'Aula 5è Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (27, '207', 'Aula 6è Primaria', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (28, '208', 'Taller FP', 2);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (29, '300', 'Aula DEP IT', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (30, '301', 'Aula ASIX 1 / DAW 1', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (31, '302', 'Aula DEP Administració', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (32, '303', 'Aula GS Administració 1', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (33, '304', 'Aula ASIX 2 / DAW 2', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (34, '305', 'Aula SMX 1', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (35, '306', 'Aula SMX 2', 3);
INSERT INTO aula(IdAula, NomAula, DescripcioAula, PlantaAula) VALUES (36, '307', 'Aula GS Administració 2', 3);

INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (1,'Català','Inici aprenentatge en català',1);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (2,'Castellà','Inici aprenentatge en castellà',1);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (3,'Anglès','Inici aprenentatge en anglès',1);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (4,'Matemàtiques','Inici aprenentatge de les matemàtiques',1);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (5,'Plàstica','Inici aprenentatge de les arts plàstiques',1);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (6,'Català','Inici aprenentatge en català',2);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (7,'Castellà','Inici aprenentatge en castellà',2);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (8,'Anglès','Inici aprenentatge en anglès',2);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (9,'Matemàtiques','Inici aprenentatge de les matemàtiques',2);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (10,'Plàstica','Inici aprenentatge de les arts plàstiques',2);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (11,'Català','Inici aprenentatge en català',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (12,'Castellà','Inici aprenentatge en castellà',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (13,'Anglès','Inici aprenentatge en anglès',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (14,'Matemàtiques','Inici aprenentatge de les matemàtiques',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (15,'Anglès','Inici aprenentatge en anglès',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (16,'Plàstica','Inici aprenentatge de les arts plàstiques',3);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (17,'Català','Inici aprenentatge en català',4);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (18,'Castellà','Inici aprenentatge en castellà',4);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (19,'Anglès','Inici aprenentatge en anglès',4);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (20,'Plàstica','Inici aprenentatge de les arts plàstiques',4);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (21,'Matemàtiques','Inici aprenentatge de les matemàtiques',4);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (22,'Català','Inici aprenentatge en català',5);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (23,'Anglès','Inici aprenentatge en anglès',5);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (24,'Matemàtiques','Inici aprenentatge de les matemàtiques',5);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (25,'Plàstica','Inici aprenentatge de les arts plàstiques',5);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (26,'Art','Inici aprenentatge en arts escèniques',5);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (27,'Anglès','Adecuació de l anglès',6);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (28,'Català','Adecuació del català',6);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (29,'Castellà','Adecuació del castellà',6);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (30,'Plàstica','Aprenentatge de les eines de les arts plàstiques',6);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (31,'Biblioteca','Iniciació al món de la lectura',6);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (32,'Anglès','Aprenentatge dels temps verbals bàsics en anglès',7);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (33,'Català','Aprenentatge dels temps verbals bàsics en català',7);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (34,'Castellà','Aprenentatge dels temps verbals bàsics en castellà',7);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (35,'Biblioteca','Inici al món de la redacció i opinió de llibres',7);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (36,'Esport','Exploració dels diferents esports',7);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (37,'Anglès','Aprenentatge dels verbs en present en anglès + lèxic',8);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (38,'Català','Repàs dels temps verbals + comprensió lectora',8);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (39,'Castellà','Repàs dels temps verbals + comprensió lectora',8);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (40,'Matemàtiques','Aprenentatge de les divisions i multiplicacions',8);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (41,'Esport','Exploració dels diferents esports',8);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (42,'Anglès','Estudi dels verbs en passat en anglès + lèxic',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (43,'Català','Repàs dels temps verbals + comprensió lectora',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (44,'Castellà','Repàs dels temps verbals + comprensió lectora',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (45,'Matemàtiques','Aprenentatge de les divisions i multiplicacions + problemes',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (46,'Esport','Exploració dels diferents esports',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (48,'Anglès','Repàs dels temps verbals + lèxic',9);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (49,'Anglès','Repàs dels temps en passat+ redacció',10);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (50,'Català','Comprensió lectora + poesia',10);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (51,'Castellà','Comprensió lectora + poesia',10);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (52,'Esport','Normativa del futbol i bàsquet',10);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (53,'Anglès','Aprenentatge dels verbs en futur',11);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (54,'Català','Estudi de la narrativa al barroc',11);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (55,'Castellà','Estudi del segle d or de la ',11);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (56,'Matemàtiques','Formulació',11);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (57,'Anglès','Repàs dels temps en futur',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (58,'Català','Narrativa en català',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (59,'Castellà','Poesia castellana',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (60,'Matemàtiques','Arrels quadrades i problemes',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (61,'Esport','Normativa del tennis i handball',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (62,'Art','Estudi de l art grec i llatí',12);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (63,'Anglès','Tots els verbs verbals + comprensió lectora + redacció',13);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (64,'Català','Inici aprenentatge en anglès',13);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (65,'Castellà','Inici aprenentatge en anglès',13);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (66,'Matemàtiques','Formulació + arrels + equacions',13);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (67,'Art','Estudi de l art egipci',13);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (68,'Art','Inici aprenentatge en anglès',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (69,'Llati','Aprenentatge dels temps verbals + traducció',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (70,'Català','Estudi preparatiu selectivitat',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (71,'Castellà','Estudi preparatiu selectivitat',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (72,'Anglès','Inici aprenentatge en anglès',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (73,'Història','Estudi de tota la història a Espanya',16);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (74,'Art','Inici aprenentatge en anglès',17);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (75,'Llatí','Aprenentatge dels temps verbals + traducció',17);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (76,'Història','Estudi de tota la història a Espanya',17);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (77,'Economia','Estudi preparatiu selectivitat',17);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (78,'Geografia','Estudi preparatiu selectivitat',17);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (79,'Anglès','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (80,'Física','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (81,'Català','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (82,'Castellà','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (83,'Matemàtiques','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (84,'Química','Estudi preparatiu selectivitat',18);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (85,'Tecnologia','Estudi preparatiu selectivitata',19);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (86,'Dibux tècnic','Estudi preparatiu selectivitat',19);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (87,'Anglès','Estudi preparatiu selectivitat',19);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (88,'Matemàtiques','Estudi preparatiu selectivitat',19);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (89,'Base de dades','Introducció a les base de dades',20);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (90,'Programació','Estudi de les estructures',20);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (91,'Llenguatge de marques','Desenvolupament de pàgines web',21);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (92,'Xarxes','Introducció a les xarxes',21);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (93,'Sistemes Operatius','Aprenentatge amb Linux i Windows',21);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (94,'Base de dades','Triggers i disseny',21);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (95,'Ciberseguretat','Introducció a la ciberseguretat',22);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (96,'Serveis de xarxa','Preparació de serveis en xarxa',22);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (97,'Sistemes operatius','LDAP i permisos',22);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (98,'Ofimàtica','Professionalització de l ofimàtica',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (99,'FOL','Formació i orientació laboral',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (100,'Programació','Introducció a la programació',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (101,'EiE','Empresa i emprenedoria',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (102,'Serveis de xarxa','Preparació de serveis en xarxa',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (103,'Base de dades','Introducció a les Bases de dades',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (104,'Xarxes','Introducció a les xarxes',23);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (105,'FOL','Formació i orientació laboral',24);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (106,'EiE','Empresa i emprenedoria',24);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (107,'EiE','Empresa i emprenedoria',25);
INSERT INTO modul (IdMod,NomMod,DescripcioMod,IdAulaMod) VALUES (108,'FOL','Formació i orientació laboral',25);

INSERT INTO edumod(IdMod,IdEdu) VALUES (89,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (90,5);
INSERT INTO edumod(IdMod,IdEdu) VALUES (91,4);
INSERT INTO edumod(IdMod,IdEdu) VALUES (92,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (93,3);
INSERT INTO edumod(IdMod,IdEdu) VALUES (94,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (95,7);
INSERT INTO edumod(IdMod,IdEdu) VALUES (96,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (97,3);
INSERT INTO edumod(IdMod,IdEdu) VALUES (98,7);
INSERT INTO edumod(IdMod,IdEdu) VALUES (99,10);
INSERT INTO edumod(IdMod,IdEdu) VALUES (100,5);
INSERT INTO edumod(IdMod,IdEdu) VALUES (101,10);
INSERT INTO edumod(IdMod,IdEdu) VALUES (102,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (103,6);
INSERT INTO edumod(IdMod,IdEdu) VALUES (104,2);
INSERT INTO edumod(IdMod,IdEdu) VALUES (105,10);
INSERT INTO edumod(IdMod,IdEdu) VALUES (106,10);
INSERT INTO edumod(IdMod,IdEdu) VALUES (107,10);
INSERT INTO edumod(IdMod,IdEdu) VALUES (108,10);


INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (1,1,'Nota UF1 BD',4,1000220,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (2,2,'Nota UF2 BD',4,1000220,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (3,1,'Nota UF1 Programacio',65,1000220,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (4,2,'Nota UF2 Programacio',5,1000220,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (5,1,'Nota UF1 LM',4,1000220,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (6,2,'Nota UF2 LM',7,1000220,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (7,1,'Nota UF1 Xarxes',6,1000220,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (8,2,'Nota UF2 Xarxes',8,1000220,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (9,1,'Nota UF1 S.O.',9,1000220,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (10,2,'Nota UF2 S.O.',4,1000220,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (11,1,'Nota UF1 BD',9,1000221,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (12,2,'Nota UF2 BD',6,1000221,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (13,1,'Nota UF1 Programacio',8,1000221,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (14,2,'Nota UF2 Programacio',5,1000221,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (15,1,'Nota UF1 LM',7,1000221,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (16,2,'Nota UF2 LM',7,1000221,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (17,1,'Nota UF1 Xarxes',6,1000221,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (18,2,'Nota UF2 Xarxes',8,1000221,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (19,1,'Nota UF1 S.O.',9,1000221,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (20,2,'Nota UF2 S.O.',8,1000221,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (21,1,'Nota UF1 BD',8,1000222,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (22,2,'Nota UF2 BD',8,1000222,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (23,1,'Nota UF1 Programacio',9,1000222,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (24,2,'Nota UF2 Programacio',10,1000222,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (25,1,'Nota UF1 LM',7,1000222,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (26,2,'Nota UF2 LM',7,1000222,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (27,1,'Nota UF1 Xarxes',6,1000222,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (28,2,'Nota UF2 Xarxes',8,1000222,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (29,1,'Nota UF1 S.O.',7,1000222,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (30,2,'Nota UF2 S.O.',6,1000222,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (31,1,'Nota UF1 BD',3,1000223,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (32,2,'Nota UF2 BD',7,1000223,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (33,1,'Nota UF1 Programacio',5,1000223,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (34,2,'Nota UF2 Programacio',5,1000223,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (35,1,'Nota UF1 LM',4,1000223,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (36,2,'Nota UF2 LM',6,1000223,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (37,1,'Nota UF1 Xarxes',6,1000223,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (38,2,'Nota UF2 Xarxes',5,1000223,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (39,1,'Nota UF1 S.O.',6,1000223,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (40,2,'Nota UF2 S.O.',6,1000223,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (41,1,'Nota UF1 BD',6,1000224,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (42,2,'Nota UF2 BD',6,1000224,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (43,1,'Nota UF1 Programacio',5,1000224,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (44,2,'Nota UF2 Programacio',5,1000224,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (45,1,'Nota UF1 LM',8,1000224,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (46,2,'Nota UF2 LM',7,1000224,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (47,1,'Nota UF1 Xarxes',6,1000224,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (48,2,'Nota UF2 Xarxes',5,1000224,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (49,1,'Nota UF1 S.O.',5,1000224,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (50,2,'Nota UF2 S.O.',7,1000224,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (51,1,'Nota UF1 BD',5,1000225,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (52,2,'Nota UF2 BD',5,1000225,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (53,1,'Nota UF1 Programacio',5,1000225,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (54,2,'Nota UF2 Programacio',5,1000225,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (55,1,'Nota UF1 LM',7,1000225,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (56,2,'Nota UF2 LM',7,1000225,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (57,1,'Nota UF1 Xarxes',6,1000225,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (58,2,'Nota UF2 Xarxes',5,1000225,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (59,1,'Nota UF1 S.O.',5,1000225,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (60,2,'Nota UF2 S.O.',7,1000225,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (61,1,'Nota UF1 BD',3,1000226,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (62,2,'Nota UF2 BD',2,1000226,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (63,1,'Nota UF1 Programacio',5,1000226,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (64,2,'Nota UF2 Programacio',5,1000226,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (65,1,'Nota UF1 LM',4,1000226,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (66,2,'Nota UF2 LM',4,1000226,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (67,1,'Nota UF1 Xarxes',6,1000226,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (68,2,'Nota UF2 Xarxes',5,1000226,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (69,1,'Nota UF1 S.O.',5,1000226,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (70,2,'Nota UF2 S.O.',4,1000226,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (71,1,'Nota UF1 BD',3,1000227,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (72,2,'Nota UF2 BD',2,1000227,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (73,1,'Nota UF1 Programacio',5,1000227,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (74,2,'Nota UF2 Programacio',5,1000227,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (75,1,'Nota UF1 LM',4,1000227,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (76,2,'Nota UF2 LM',4,1000227,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (77,1,'Nota UF1 Xarxes',6,1000227,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (78,2,'Nota UF2 Xarxes',5,1000227,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (79,1,'Nota UF1 S.O.',5,1000227,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (80,2,'Nota UF2 S.O.',4,1000227,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (81,1,'Nota UF1 BD',3,1000228,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (82,2,'Nota UF2 BD',2,1000228,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (83,1,'Nota UF1 Programacio',5,1000228,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (84,2,'Nota UF2 Programacio',5,1000228,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (85,1,'Nota UF1 LM',4,1000228,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (86,2,'Nota UF2 LM',4,1000228,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (87,1,'Nota UF1 Xarxes',6,1000228,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (88,2,'Nota UF2 Xarxes',5,1000228,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (89,1,'Nota UF1 S.O.',5,1000228,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (90,2,'Nota UF2 S.O.',4,1000228,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (91,1,'Nota UF1 BD',3,1000229,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (92,2,'Nota UF2 BD',2,1000229,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (93,1,'Nota UF1 Programacio',5,1000229,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (94,2,'Nota UF2 Programacio',5,1000229,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (95,1,'Nota UF1 LM',4,1000229,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (96,2,'Nota UF2 LM',4,1000229,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (97,1,'Nota UF1 Xarxes',6,1000229,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (98,2,'Nota UF2 Xarxes',5,1000229,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (99,1,'Nota UF1 S.O.',5,1000229,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (100,2,'Nota UF2 S.O.',4,1000229,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (101,1,'Nota UF1 BD',3,1000230,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (102,2,'Nota UF2 BD',2,1000230,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (103,1,'Nota UF1 Programacio',5,1000230,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (104,2,'Nota UF2 Programacio',5,1000230,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (105,1,'Nota UF1 LM',4,1000230,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (106,2,'Nota UF2 LM',4,1000230,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (107,1,'Nota UF1 Xarxes',6,1000230,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (108,2,'Nota UF2 Xarxes',5,1000230,22,9);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (109,1,'Nota UF1 S.O.',5,1000230,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (110,2,'Nota UF2 S.O.',4,1000230,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (111,1,'Nota UF1 BD',4,1000231,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (112,2,'Nota UF2 BD',4,1000231,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (113,1,'Nota UF1 Programacio',5,1000231,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (114,2,'Nota UF2 Programacio',5,1000231,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (115,1,'Nota UF1 LM',4,1000231,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (116,2,'Nota UF2 LM',7,1000231,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (117,1,'Nota UF1 Xarxes',6,1000231,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (118,2,'Nota UF2 Xarxes',6,1000231,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (119,1,'Nota UF1 S.O.',10,1000231,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (120,2,'Nota UF2 S.O.',0,1000231,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (121,1,'Nota UF1 BD',3,1000232,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (122,2,'Nota UF2 BD',1,1000232,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (123,1,'Nota UF1 Programacio',8,1000232,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (124,2,'Nota UF2 Programacio',8,1000232,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (125,1,'Nota UF1 LM',7,1000232,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (126,2,'Nota UF2 LM',5,1000232,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (127,1,'Nota UF1 Xarxes',5,1000232,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (128,2,'Nota UF2 Xarxes',5,1000232,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (129,1,'Nota UF1 S.O.',5,1000232,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (130,2,'Nota UF2 S.O.',5,1000232,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (131,1,'Nota UF1 BD',3,1000233,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (132,2,'Nota UF2 BD',6,1000233,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (133,1,'Nota UF1 Programacio',5,1000233,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (134,2,'Nota UF2 Programacio',5,1000233,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (135,1,'Nota UF1 LM',4,1000233,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (136,2,'Nota UF2 LM',4,1000233,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (137,1,'Nota UF1 Xarxes',6,1000233,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (138,2,'Nota UF2 Xarxes',6,1000233,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (139,1,'Nota UF1 S.O.',6,1000233,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (140,2,'Nota UF2 S.O.',6,1000233,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (141,1,'Nota UF1 BD',5,1000234,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (142,2,'Nota UF2 BD',5,1000234,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (143,1,'Nota UF1 Programacio',5,1000234,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (144,2,'Nota UF2 Programacio',5,1000234,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (145,1,'Nota UF1 LM',5,1000234,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (146,2,'Nota UF2 LM',5,1000234,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (147,1,'Nota UF1 Xarxes',5,1000234,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (148,2,'Nota UF2 Xarxes',5,1000234,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (149,1,'Nota UF1 S.O.',5,1000234,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (150,2,'Nota UF2 S.O.',5,1000234,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (151,1,'Nota UF1 BD',3,1000235,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (152,2,'Nota UF2 BD',2,1000235,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (153,1,'Nota UF1 Programacio',5,1000235,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (154,2,'Nota UF2 Programacio',5,1000235,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (155,1,'Nota UF1 LM',4,1000235,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (156,2,'Nota UF2 LM',4,1000235,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (157,1,'Nota UF1 Xarxes',6,1000235,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (158,2,'Nota UF2 Xarxes',5,1000235,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (159,1,'Nota UF1 S.O.',5,1000235,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (160,2,'Nota UF2 S.O.',4,1000235,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (161,1,'Nota UF1 BD',6,1000236,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (162,2,'Nota UF2 BD',6,1000236,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (163,1,'Nota UF1 Programacio',5,1000236,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (164,2,'Nota UF2 Programacio',8,1000236,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (165,1,'Nota UF1 LM',7,1000236,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (166,2,'Nota UF2 LM',5,1000236,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (167,1,'Nota UF1 Xarxes',6,1000236,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (168,2,'Nota UF2 Xarxes',7,1000236,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (169,1,'Nota UF1 S.O.',6,1000236,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (170,2,'Nota UF2 S.O.',6,1000236,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (171,1,'Nota UF1 BD',7,1000237,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (172,2,'Nota UF2 BD',4,1000237,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (173,1,'Nota UF1 Programacio',6,1000237,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (174,2,'Nota UF2 Programacio',6,1000237,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (175,1,'Nota UF1 LM',6,1000237,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (176,2,'Nota UF2 LM',6,1000237,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (177,1,'Nota UF1 Xarxes',8,1000237,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (178,2,'Nota UF2 Xarxes',8,1000237,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (179,1,'Nota UF1 S.O.',8,1000237,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (180,2,'Nota UF2 S.O.',8,1000237,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (181,1,'Nota UF1 BD',6,1000238,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (182,2,'Nota UF2 BD',7,1000238,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (183,1,'Nota UF1 Programacio',8,1000238,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (184,2,'Nota UF2 Programacio',6,1000238,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (185,1,'Nota UF1 LM',5,1000238,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (186,2,'Nota UF2 LM',5,1000238,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (187,1,'Nota UF1 Xarxes',6,1000238,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (188,2,'Nota UF2 Xarxes',5,1000238,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (189,1,'Nota UF1 S.O.',5,1000238,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (190,2,'Nota UF2 S.O.',4,1000238,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (201,1,'Nota UF1 BD',8,1000239,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (202,2,'Nota UF2 BD',8,1000239,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (203,1,'Nota UF1 Programacio',5,1000239,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (204,2,'Nota UF2 Programacio',5,1000239,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (205,1,'Nota UF1 LM',5,1000239,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (206,2,'Nota UF2 LM',6,1000239,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (207,1,'Nota UF1 Xarxes',6,1000239,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (208,2,'Nota UF2 Xarxes',6,1000239,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (209,1,'Nota UF1 S.O.',7,1000239,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (210,2,'Nota UF2 S.O.',8,1000239,22,93);

INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (211,1,'Nota UF1 BD',3,1000240,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (212,2,'Nota UF2 BD',4,1000240,22,89);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (213,1,'Nota UF1 Programacio',5,1000240,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (214,2,'Nota UF2 Programacio',5,1000240,22,90);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (215,1,'Nota UF1 LM',7,1000240,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (216,2,'Nota UF2 LM',5,1000240,22,91);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (217,1,'Nota UF1 Xarxes',6,1000240,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (218,2,'Nota UF2 Xarxes',5,1000240,22,92);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (219,1,'Nota UF1 S.O.',7,1000240,22,93);
INSERT INTO nota(IdNota,UFNota,DescripcioNota,NumNota,MatriculaAluNota,IdCursNota, IdModNota) VALUES (220,2,'Nota UF2 S.O.',7,1000240,22,93);