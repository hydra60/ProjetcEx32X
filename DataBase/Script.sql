create table Persona(
    ci int not null,
    nombre varchar(25),
    ap_pat varchar(25),
    ap_mat varchar(25),
    f_nac date,
    departamento int, /*arreglar campo de datos*/
    PRIMARY KEY (ci)
);

INSERT INTO Persona (ci, nombre, ap_pat, ap_mat, f_nac, departamento )
VALUES (12514307, "Benjamin", "Cruz", "Quino", "14/06/1997", 03),(1732897, "Samuel", "Cruz", "Quino", "14/06/1997", 03);

create table usuario(
    ci int not null,
    usuario varchar(50),
    pwd varchar(100),
    PRIMARY KEY (ci),
    FOREIGN KEY (ci) REFERENCES Persona(ci)
);

create table Nota(
    sigla varchar(10) not null,
    /*ci int not null,*/
    nota1 float,
    nota2 float,
    nota3 float,
    notaFinal float,
    PRIMARY KEY (sigla)
);

create table contiene(
    ci_usuario int not null,
    ci_docente  int not null,
    sigla varchar(10) not null,
    FOREIGN KEY (ci_usuario) REFERENCES usuario(ci),
    FOREIGN KEY (ci_docente) REFERENCES Persona(ci),
    FOREIGN KEY (sigla) REFERENCES Nota(sigla)
);