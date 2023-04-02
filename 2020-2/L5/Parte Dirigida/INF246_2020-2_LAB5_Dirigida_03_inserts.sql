INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 1, 'Arroz 1kg. Costeño', 3.5, 100);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 2, 'Azúcar Rubia 1kg.', 2.8, 80);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 3, 'Galleta Soda Field', 1.2, 200);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 4, 'Chocolate Sublime', 1.5, 30);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 5, 'Shampoo HyS', 16, 20);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 6, 'Leche Gloria tarro', 4.7, 35);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 7, 'Harina Blanca Flor 1kg.', 6.5, 40);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 8, 'Spaguetti Don Vittorio', 2.3, 20);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES ( 9, 'Aceite Metro', 7.5, 15);
INSERT INTO L5_PRODUCTO (ID_PRODUCTO, NOMBRE, PRECIO, STOCK) VALUES (10, 'Jabón de tocador', 3.8, 18);

INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (1, 'Flores', 'Tong', 'Juan', 'M', TO_DATE('15/06/1975', 'DD/MM/YYYY'), '972343481', 'jflores@gmail.com');
INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (2, 'Tapia', 'Delgado', 'Maria', 'F', TO_DATE('10/01/1955', 'DD/MM/YYYY'), '960491786', 'mtapia@hotmail.com');
INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (3, 'Quispe', 'Ramirez', 'Miguel', 'M', TO_DATE('09/03/1983', 'DD/MM/YYYY'), '962905883', 'mquispe@gmail.com');
INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (4, 'Arauco', 'Arana', 'Carlos', 'M', TO_DATE('11/02/2000', 'DD/MM/YYYY'), '962609096', 'carauco@gmail.com');
INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (5, 'Dallas', 'Miller', 'Ann', 'F', TO_DATE('15/06/1999', 'DD/MM/YYYY'), '965918300', 'adallas@miempresa.com');
INSERT INTO L5_CLIENTE (ID_CLIENTE, APE_PATERNO, APE_MATERNO, NOMBRES, SEXO, FECHA_NACIMIENTO, TELEFONO, EMAIL) VALUES (6, 'Cueva', 'Vasquez', 'Kim', 'F', TO_DATE('03/03/1996', 'DD/MM/YYYY'), '923950023', 'kim@hotmail.com');

INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (1, 1, TO_DATE('05/09/2020', 'DD/MM/YYYY'), TO_DATE('06/09/2020', 'DD/MM/YYYY'),  5.34, 0.96,  6.3);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (2, 2, TO_DATE('28/09/2020', 'DD/MM/YYYY'), TO_DATE('01/10/2020', 'DD/MM/YYYY'),  5.85, 1.05,  6.9);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (3, 2, TO_DATE('15/10/2020', 'DD/MM/YYYY'), TO_DATE('16/10/2020', 'DD/MM/YYYY'), 45.93, 8.27, 54.2);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (4, 3, TO_DATE('24/10/2020', 'DD/MM/YYYY'), TO_DATE('25/10/2020', 'DD/MM/YYYY'), 35.85, 6.45, 42.3);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (5, 4, TO_DATE('01/11/2020', 'DD/MM/YYYY'), TO_DATE('02/11/2020', 'DD/MM/YYYY'), 47.12, 8.48, 55.6);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (6, 5, TO_DATE('02/11/2020', 'DD/MM/YYYY'), NULL, 28.98, 5.22, 34.2);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (7, 4, TO_DATE('09/11/2020', 'DD/MM/YYYY'), NULL,  1.95, 0.35,  2.3);
INSERT INTO L5_VENTA (ID_VENTA, ID_CLIENTE, FECHA_VENTA, FECHA_ENTREGA, SUB_TOTAL, IGV, TOTAL) VALUES (8, 3, TO_DATE('12/11/2020', 'DD/MM/YYYY'), NULL, 16.95, 3.05, 20.0);

INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 1, 1,  1, 1,  2.97, 0.53,  3.5);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 2, 1,  2, 1,  2.37, 0.43,  2.8);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 3, 2,  3, 2,  2.03, 0.37,  2.4);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 4, 2,  4, 3,  3.81, 0.69,  4.5);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 5, 3,  6, 1,  3.98, 0.72,  4.7);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 6, 3,  7, 3, 16.53, 2.97, 19.5);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 7, 3,  9, 4, 25.42, 4.58, 30.0);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 8, 4,  1, 5, 14.83, 2.67, 17.5);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES ( 9, 4,  2, 8, 18.98, 3.42, 22.4);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (10, 4,  3, 2,  2.03, 0.37,  2.4);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (11, 5,  5, 3, 40.68, 7.32, 48.0);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (12, 5, 10, 2,  6.44, 1.16,  7.6);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (13, 6, 10, 9, 28.98, 5.22, 34.2);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (14, 7,  8, 1,  1.95, 0.35,  2.3);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (15, 8,  6, 1,  3.98, 0.72,  4.7);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (16, 8,  7, 2, 11.02, 1.98, 13.0);
INSERT INTO L5_DETALLE_VENTA (ID_DETALLE_VENTA, ID_VENTA, ID_PRODUCTO, CANTIDAD, SUB_TOTAL, IGV, TOTAL) VALUES (17, 8,  8, 1,  1.95, 0.35,  2.3);

