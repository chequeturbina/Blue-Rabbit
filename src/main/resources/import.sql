insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(1,'Primaria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(2,'Secundaria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(3,'Bachillerato');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(4,'Universidad');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(5,'Maestria');
insert into NIVEL_EDU(ID_NIVEL,NIVEL)VALUES(6,'Doctorado');

INSERT INTO ROLE(roles) VALUES ('ROLE_ADMIN');

INSERT INTO PERSONA(username, password,sexo, enabled) VALUES ('admin@admin','$2a$10$O9wxmH/AeyZZzIS09Wp8YOEMvFnbRVJ8B4dmAMVSGloR62lj.yqXG','m',1);

INSERT INTO PERSONA_ROLES(PERSONAS_ID,ROLES_ID)VALUES(1,1);