create table Persona(
    ci int not null,
    nombre varchar(25),
    ap_pat varchar(25),
    ap_mat varchar(25),
    f_nac date,
    departamento int, /*arreglar campo de datos*/
    PRIMARY KEY (ci)
);

create table usuario(
    ci int not null,
    usuario varchar(50),
    pwd varchar(100),
    PRIMARY KEY (ci),
    FOREIGN KEY (ci) REFERENCES Persona(ci)
);
Create table Docente(
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
    PRIMARY KEY (sigla),
);

create table contiene(
    ci_usuario int not null,
    ci_docente  int not null,
    sigla varchar(10) not null,
    status varchar(4),
    FOREIGN KEY (ci_usuario) REFERENCES usuario(ci),
    FOREIGN KEY (ci_docente) REFERENCES Persona(ci)
    FOREIGN KEY (sigla) REFERENCES Nota(sigla)

);
);
