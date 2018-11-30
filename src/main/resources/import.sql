insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(1,'Primaria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(2,'Secundaria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(3,'Bachillerato');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(4,'Universidad');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(5,'Maestria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(6,'Doctorado');

INSERT INTO ROLE(roles) VALUES ('ROLE_ADMIN');

INSERT INTO ROLE(roles) VALUES ('ROLE_ALUMNO');
INSERT INTO ROLE(roles) VALUES ('ROLE_ALUMNO');
INSERT INTO ROLE(roles) VALUES ('ROLE_ALUMNO');
INSERT INTO ROLE(roles) VALUES ('ROLE_ALUMNO');

INSERT INTO ROLE(roles) VALUES ('ROLE_PROFESOR');
INSERT INTO ROLE(roles) VALUES ('ROLE_PROFESOR');
INSERT INTO ROLE(roles) VALUES ('ROLE_PROFESOR');
INSERT INTO ROLE(roles) VALUES ('ROLE_PROFESOR');

INSERT INTO PERSONA(nombre,username, password,sexo, enabled) VALUES ('administrador','admin@admin','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);

INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('juan','juan@alumno','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','h',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('luis','luis@alumno','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','h',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('emmanuel','emmanuel@alumno','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','h',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('kevin','kevin@alumno','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','h',1);

INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('elisa','elisa@profesor','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('maria','maria@profesor','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('petra','petra@profesor','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);
INSERT INTO PERSONA(nombre,username, password,sexo,enabled) VALUES ('enriqueta','enriqueta@profesor','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);

INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(1,1);

INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(2,2);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(3,3);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(4,4);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(5,5);

INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(6,6);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(7,7);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(8,8);
INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(9,9);

INSERT INTO PROFESOR(RFC,CURP,CV,CVT,INE,ID_PERSONA)VALUES ('1234567890','1234567890',null,null,null,6);
INSERT INTO PROFESOR(RFC,CURP,CV,CVT,INE,ID_PERSONA)VALUES ('qwertyuiop','abcdefghik',null,null,null,7);
INSERT INTO PROFESOR(RFC,CURP,CV,CVT,INE,ID_PERSONA)VALUES ('0123456780','1234567892',null,null,null,8);
INSERT INTO PROFESOR(RFC,CURP,CV,CVT,INE,ID_PERSONA)VALUES ('fnakjdnafk','afndkklnml',null,null,null,9);

INSERT INTO ALUMNO(ID_ALUMNO,ID_NIVEL)VALUES(2,3);
INSERT INTO ALUMNO(ID_ALUMNO,ID_NIVEL)VALUES(3,4);
INSERT INTO ALUMNO(ID_ALUMNO,ID_NIVEL)VALUES(4,5);
INSERT INTO ALUMNO(ID_ALUMNO,ID_NIVEL)VALUES(5,6);                                                                                    

INSERT INTO CURSO(ID_CURSO,DESCRIPCION,HORARIO,PROFESOR,TITULO,USERNAME,VISIBLE,RFC)VALUES(1,'curso para aprender ingles basico','matutino','elisa','Curso Ingles','elisa@profesor',0,'1234567890');

INSERT INTO CURSO(ID_CURSO,DESCRIPCION,HORARIO,PROFESOR,TITULO,USERNAME,VISIBLE,RFC)VALUES(2,'curso para aprender aleman basico','matutino','elisa','Curso aleman','elisa@profesor',0,'1234567890');

INSERT INTO CURSO(ID_CURSO,DESCRIPCION,HORARIO,PROFESOR,TITULO,USERNAME,VISIBLE,RFC)VALUES(3,'Matematicas para universitarios','matutino','elisa','Curso Matematicas','elisa@profesor',0,'1234567890');

