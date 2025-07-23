# Documentación del Proyecto de Base de Datos: TiendaOnline

## 1. Introducción al problema y objetivos

- **Problema**: Resolver la gestion de las operación de una tienda online, esto incluye: clientes, pedidos, reseñas de productos y categorias. 

- **Objetivo general**: Genera el diseño y la implementación de una base de datos relacional funcional y normalizada para la tienda online.

- **Objetivos específicos**:
  - Modelar conceptualmente el sistema usando un modelo E-R y su esquema. 
  - Aplicar principios de normalización hasta 3FN.
  - Implementar las tablas en SQL con sus respectivas restricciones.
  - Poblar la base de datos con datos de prueba.
  - Crear consultas y procedimientos almacenados.
  - Evaluar el rendimiento y funcionamiento del diseño.

---

## 2. Diagrama Entidad-Relación (ER) y justificación de la normalización

### 2.1 Primer Diagrama E-R generado despues del analisis 



### 2.2 Justificación de la normalización

- Se identificaron las entidades y atributos.
- Se aplicaron las tres primeras formas normales:
  - **1FN**: eliminación de atributos multivaluados o compuestos.
  - **2FN**: eliminación de dependencias parciales.
  - **3FN**: eliminación de dependencias transitivas.
- Justificación de claves primarias y foráneas.
- Justificación de la descomposición de `Pedidos` y `Detalles_Pedido`.

---

## 3. Scripts SQL

### 3.1 Creación de tablas

```sql
CREATE TABLE Clientes (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100) NOT NULL,
    Correo_Electronico VARCHAR(150) NOT NULL UNIQUE,
    Direccion VARCHAR(255) NOT NULL,
    Telefono VARCHAR(20) NOT NULL
);

