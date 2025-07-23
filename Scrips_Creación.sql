
CREATE DATABASE TiendaOnline;
USE TiendaOnline;


CREATE TABLE Categorias (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255) 
);


CREATE TABLE Productos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Descripcion VARCHAR(255),
    Precio FLOAT ,
    Stock INT CHECK (Stock >= 0),
    Categoria_Id INT,
    FOREIGN KEY (Categoria_Id) REFERENCES Categorias(Id)
);


CREATE TABLE Clientes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Correo_Electronico VARCHAR(150) UNIQUE,
    Direccion VARCHAR(255),
    Telefono VARCHAR(20)
);


CREATE TABLE Pedidos (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Fecha_pedido DATE,
    Estado VARCHAR(50) ,
    Id_Cliente INT,
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id)
);


CREATE TABLE Detalles_Pedido (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Id_Pedido INT ,
    Id_Producto INT ,
    Cantidad INT ,
    Precio_Unitario FLOAT ,
    FOREIGN KEY (Id_Pedido) REFERENCES Pedidos(Id),
    FOREIGN KEY (Id_Producto) REFERENCES Productos(Id)
);

CREATE TABLE Resenas (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Calificacion_Producto INT,
    Comentario VARCHAR(255) ,
    Fecha DATE ,
    Id_Producto INT ,
    Id_Cliente INT ,
    FOREIGN KEY (Id_Producto) REFERENCES Productos(Id),
    FOREIGN KEY (Id_Cliente) REFERENCES Clientes(Id)
);