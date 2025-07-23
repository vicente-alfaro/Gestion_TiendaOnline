

Analisis a partir de la descripción:

Despues de revisar las necesidades del proyecto, determinaremos las posibles entidades y sus atributos, además de los requerimientos principales.

Posibles entidades:
Productos.
Clientes.
Pedidos
Reseñas de productos
categorias

posibles entidades con sus atributos:
Productos: Nombre, descripción, precio, Stock(piezas existentes), categoria. 

Clientes: Nombre, correo electronico, dirrección y No. Telefonico. 

Pedidos: Fecha??, estado(pediente, enviado, entregado), productos que forman el pedido.

Reseñas de productos:calificacion del producto comprado, 

categorias: nombre, y descripcion de cada categoria. 

 

Analisis de los requerimientos:
Registrar productos: Nombre, descripcion, precio, stock,categoria. 

Clientes: Nombre, Correo electronico, dirección y numero de telefono.
 
Pedidos: fechas ??, estado(pendinte, enviado, entregado), productos que formar el pedido.

reseñas: calificacion de productos, comentario al producto.NOTA.  EL CLIENTE QUE ADQUIRIO EL PRODUCTO PUEDE HACER ESAS ACCIONES. 

categorias: telefonos, laptos, accesorios, descripcion de cada categoria. 


--
Posibles foreing key de cada entidad. 

Productos: Nombre, descripción, precio, Stock(piezas existentes), categoria. 
Foreing key de la entidad productos:
categoria, permite una relacion con la entidad categorias. 

Clientes: Nombre, correo electronico, dirrección y No. Telefonico. 
No tiene FK, candidata. 

Pedidos: Fecha??, estado(pediente, enviado, entregado), productos que forman el pedido.
FK candidata de la entidad pedido:
FK_Productos. 
Permite relacionar pedidos con productos.


Reseñas de productos:calificacion del producto comprado, comentario. 
Sin  fk candidata.
¿Productos?


categorias: nombre, y descripcion de cada categoria. 
sin fk candidata. 
 




Utlizamos UNIQUE Y CHECK, para realizar la unicidad de los correos electronico, y para no haceptar valores negativos en el stock. 