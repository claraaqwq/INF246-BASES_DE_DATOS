/* Inserci�n de insumos */

INSERT INTO SP_DIMENSION (ID_DIMENSION, DENOMINACION) VALUES ('l', 'Longitud');
INSERT INTO SP_DIMENSION (ID_DIMENSION, DENOMINACION) VALUES ('m', 'Masa');
INSERT INTO SP_DIMENSION (ID_DIMENSION, DENOMINACION) VALUES ('v', 'Volumen');
INSERT INTO SP_DIMENSION (ID_DIMENSION, DENOMINACION) VALUES ('c', 'Cantidad');

INSERT INTO SP_UNIDAD_DIVISORIA (ID_UNIDAD, NOMBRE, ID_DIMENSION) VALUES ('ft2', 'Pulgada cuadrada', 'l');
INSERT INTO SP_UNIDAD_DIVISORIA (ID_UNIDAD, NOMBRE, ID_DIMENSION) VALUES ('gal', 'Gal�n', 'v');
INSERT INTO SP_UNIDAD_DIVISORIA (ID_UNIDAD, NOMBRE, ID_DIMENSION) VALUES ('unid', 'Unidad', 'c');
INSERT INTO SP_UNIDAD_DIVISORIA (ID_UNIDAD, NOMBRE, ID_DIMENSION) VALUES ('par', 'Par', 'c');

INSERT INTO SP_INSUMO (ID_INSUMO, NOMBRE, TIPO_MATERIAL, ID_UNIDAD, PRECIO, STOCK, ESTADO)
VALUES(1, 'Cuero nacional', 'Cuero', 'ft2' , 0.96, 529.30, 'A');
INSERT INTO SP_INSUMO (ID_INSUMO, NOMBRE, TIPO_MATERIAL, ID_UNIDAD, PRECIO, STOCK, ESTADO) 
VALUES(2, 'Cuero argentino', 'Cuero', 'ft2' , 1.27, 128.95, 'A');
INSERT INTO SP_INSUMO (ID_INSUMO, NOMBRE, TIPO_MATERIAL, ID_UNIDAD, PRECIO, STOCK, ESTADO) 
VALUES(3, 'Pegamento', 'Adhesivo', 'gal' , 8.60, 30.00, 'A');
INSERT INTO SP_INSUMO (ID_INSUMO, NOMBRE, TIPO_MATERIAL, ID_UNIDAD, PRECIO, STOCK, ESTADO) 
VALUES(4, 'Tachuelas plastificadas', 'Pl�stico', 'par' , 0.15, 85, 'A');
INSERT INTO SP_INSUMO (ID_INSUMO, NOMBRE, TIPO_MATERIAL, ID_UNIDAD, PRECIO, STOCK, ESTADO) 
VALUES(5, 'Plantillas plastificadas', 'Pl�stico', 'par' , 2.50, 100, 'A');

/* Inserci�n de productos */

INSERT INTO SP_TIPO_PRODUCTO (ID_TIPO, NOMBRE) VALUES(1, 'Zapatillas');
INSERT INTO SP_TIPO_PRODUCTO (ID_TIPO, NOMBRE) VALUES(2, 'Zapato');
INSERT INTO SP_TIPO_PRODUCTO (ID_TIPO, NOMBRE) VALUES(3, 'Mocasines');
INSERT INTO SP_TIPO_PRODUCTO (ID_TIPO, NOMBRE) VALUES(4, 'Botines');

INSERT INTO SP_PRODUCTO (ID_PRODUCTO, NOMBRE, ID_TIPO, PRECIO, ESTADO, STOCK)
VALUES(1, 'Zapatilla Outdoor Caballero Talla 40', 1, 76.50, 'A', 20);
INSERT INTO SP_PRODUCTO (ID_PRODUCTO, NOMBRE, ID_TIPO, PRECIO, ESTADO, STOCK) 
VALUES(2, 'Zapato Caballero Talla 41', 2, 90.50, 'A', 5);
INSERT INTO SP_PRODUCTO (ID_PRODUCTO, NOMBRE, ID_TIPO, PRECIO, ESTADO, STOCK) 
VALUES(3, 'Mocas�n Caballero Talla 41', 3, 95.50, 'A', 0);
INSERT INTO SP_PRODUCTO (ID_PRODUCTO, NOMBRE, ID_TIPO, PRECIO, ESTADO, STOCK) 
VALUES(4, 'Bot�n Dama Talla 39', 4, 110.50, 'A', 10);
INSERT INTO SP_PRODUCTO (ID_PRODUCTO, NOMBRE, ID_TIPO, PRECIO, ESTADO, STOCK) 
VALUES(5, 'Zapatilla Outdoor Dama Talla 38', 1, 74.50, 'A', 15);

/* Inserci�n de matriz de insumos */

INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 1, 1, 1,  0.75, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 2, 1, 3,  0.90, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 3, 1, 4, 15.00, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 4, 2, 1,  0.70, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 5, 2, 3,  0.90, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 6, 2, 5, 12.00, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 7, 3, 2,  0.95, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 8, 3, 3,  0.90, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES( 9, 4, 2,  1.20, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(10, 4, 4, 10.00, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(11, 4, 5,  3.00, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(12, 5, 1,  1.50, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(13, 5, 3,  0.90, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(14, 5, 4,  0.75, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));
INSERT INTO SP_MATRIZ_INSUMO (ID_MATRIZ, ID_PRODUCTO, ID_INSUMO, CANTIDAD, ULTIMA_MODIF) VALUES(15, 5, 5,  0.20, TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'));

/* Inserci�n de orden de compra */

INSERT INTO SP_ORDEN_COMPRA (ID_ORDEN, MONTO_TOTAL, MONTO_IGV, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_ENTREGA, ESTADO)
VALUES(1, 223.0, 40.14, TO_TIMESTAMP('2022-09-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_ORDEN_COMPRA (ID_ORDEN, MONTO_TOTAL, MONTO_IGV, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_ENTREGA, ESTADO)
VALUES(2, 1088.0, 195.84, TO_TIMESTAMP('2022-09-08', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_ORDEN_COMPRA (ID_ORDEN, MONTO_TOTAL, MONTO_IGV, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_ENTREGA, ESTADO)
VALUES(3, 2500.0, 450, TO_TIMESTAMP('2022-08-01', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-08-10', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-08-10', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_ORDEN_COMPRA (ID_ORDEN, MONTO_TOTAL, MONTO_IGV, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_ENTREGA, ESTADO)
VALUES(4, 1505.0, 270.9, TO_TIMESTAMP('2022-07-25', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-07-26', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-07-27', 'YYYY-MM-DD'), 'A');

INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(1, 1, 1, 100.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(2, 1, 2, 100.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(3, 2, 3, 5.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(4, 2, 4, 300.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(5, 2, 5, 400.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(6, 3, 2, 50.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(7, 3, 3, 150.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(8, 3, 4, 30.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(9, 4, 1, 300.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(10, 4, 4, 30.0);
INSERT INTO SP_DETALLE_COMPRA (ID_COMPRA, ID_ORDEN, ID_INSUMO, CANTIDAD) VALUES(11, 4, 5, 270.0);


/* Inserci�n de orden de compra */

INSERT INTO SP_MOTIVO (ID_MOTIVO, NOMBRE) VALUES('P', 'Pedido solicitado');
INSERT INTO SP_MOTIVO (ID_MOTIVO, NOMBRE) VALUES('E', 'Pedido estimado');

INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(1, 'P', TO_TIMESTAMP('2022-07-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(1, 1, 1, 15);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(2,1, 2, 85);

INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(2, 'E', TO_TIMESTAMP('2022-07-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(3, 2, 3, 45);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(4, 2, 4, 105);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(5, 2, 5, 80);


INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(3, 'P', TO_TIMESTAMP('2022-08-04', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(6, 3, 1, 10);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(7, 3, 2, 80);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(8, 3, 3, 40);


INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(4, 'E', TO_TIMESTAMP('2022-08-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(9, 4, 4, 100);
INSERT INTO SP_DETALLE_PRODUCTO (ID_COMPRA, ID_ORDEN, ID_PRODUCTO, UNIDADES) VALUES(10, 4, 5, 75);

INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(5, 'E', TO_TIMESTAMP('2022-08-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');

INSERT INTO SP_ORDEN_PRODUCCION (ID_ORDEN, MOTIVO, FECHA_REGISTRO, FECHA_AUTORIZACION, FECHA_FIN, ESTADO)
VALUES(6, 'E', TO_TIMESTAMP('2022-08-18', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), TO_TIMESTAMP('2022-09-09', 'YYYY-MM-DD'), 'A');

commit;
