CREATE TABLE SP_DIMENSION (
	ID_DIMENSION			CHAR(1 BYTE) NOT NULL,
	DENOMINACION			VARCHAR2(40 BYTE) NOT NULL
);

ALTER TABLE SP_DIMENSION ADD CONSTRAINT SP_DIMENSION_PK PRIMARY KEY ( ID_DIMENSION );

CREATE TABLE SP_UNIDAD_DIVISORIA (
	ID_UNIDAD		VARCHAR2(50 BYTE) NOT NULL,
	NOMBRE			VARCHAR2(50 BYTE) NOT NULL,
	ID_DIMENSION		CHAR(1 BYTE) NOT NULL
);

ALTER TABLE SP_UNIDAD_DIVISORIA ADD CONSTRAINT SP_UNIDAD_DIV_PK PRIMARY KEY ( ID_UNIDAD );
ALTER TABLE SP_UNIDAD_DIVISORIA ADD CONSTRAINT DIMENSION_FK FOREIGN KEY ( ID_DIMENSION ) REFERENCES SP_DIMENSION ( ID_DIMENSION );

CREATE TABLE SP_INSUMO (
	ID_INSUMO	NUMBER NOT NULL,
	NOMBRE		VARCHAR2(50 BYTE) NOT NULL,
	TIPO_MATERIAL	VARCHAR2(30 BYTE) NOT NULL,
	ID_UNIDAD	VARCHAR2(5 BYTE) NOT NULL,
	PRECIO		NUMBER(7,2) NOT NULL,
	STOCK		NUMBER NOT NULL,
	ESTADO		CHAR(1 BYTE) NOT NULL
);

ALTER TABLE SP_INSUMO ADD CONSTRAINT SP_INSUMO_PK PRIMARY KEY ( ID_INSUMO );
ALTER TABLE SP_INSUMO ADD CONSTRAINT UNIDAD_INS_FK FOREIGN KEY ( ID_UNIDAD ) REFERENCES SP_UNIDAD_DIVISORIA ( ID_UNIDAD );

CREATE TABLE SP_TIPO_PRODUCTO (
	ID_TIPO		NUMBER NOT NULL,
	NOMBRE		VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE SP_TIPO_PRODUCTO ADD CONSTRAINT SP_TIPO_PROD_PK PRIMARY KEY ( ID_TIPO );

CREATE TABLE SP_PRODUCTO (
	ID_PRODUCTO			NUMBER NOT NULL,
	NOMBRE				VARCHAR2(50 BYTE) NOT NULL,
	ID_TIPO				NUMBER NOT NULL,
	PRECIO				NUMBER(6,2) NOT NULL,
	ESTADO				CHAR(1 BYTE) NOT NULL,
	STOCK				NUMBER NOT NULL
);

ALTER TABLE SP_PRODUCTO ADD CONSTRAINT SP_PRODUCTO_PK PRIMARY KEY ( ID_PRODUCTO );
ALTER TABLE SP_PRODUCTO ADD CONSTRAINT TIPO_PROD_FK FOREIGN KEY ( ID_TIPO ) REFERENCES SP_TIPO_PRODUCTO ( ID_TIPO );


CREATE TABLE SP_MATRIZ_INSUMO (
	ID_MATRIZ			NUMBER NOT NULL,
	ID_PRODUCTO			NUMBER NOT NULL,
	ID_INSUMO			NUMBER NOT NULL,
	CANTIDAD			NUMERIC(6, 2) NOT NULL,
	ULTIMA_MODIF		TIMESTAMP NOT NULL
);

ALTER TABLE SP_MATRIZ_INSUMO ADD CONSTRAINT SP_MATRIZ_INSUMO_PK PRIMARY KEY ( ID_MATRIZ );
ALTER TABLE SP_MATRIZ_INSUMO ADD CONSTRAINT MAT_PRO_FK FOREIGN KEY ( ID_PRODUCTO ) REFERENCES SP_PRODUCTO ( ID_PRODUCTO );
ALTER TABLE SP_MATRIZ_INSUMO ADD CONSTRAINT MAT_INS_FK FOREIGN KEY ( ID_INSUMO ) REFERENCES SP_INSUMO ( ID_INSUMO );

CREATE TABLE SP_ORDEN_COMPRA (
	ID_ORDEN			NUMBER NOT NULL,
	MONTO_TOTAL			NUMBER(6,2) NOT NULL,
	MONTO_IGV			VARCHAR2(20 BYTE) NOT NULL,
	FECHA_REGISTRO		TIMESTAMP NOT NULL,
	FECHA_AUTORIZACION	TIMESTAMP,
	FECHA_ENTREGA		TIMESTAMP,
	ESTADO				CHAR(1 BYTE) NOT NULL
);

ALTER TABLE SP_ORDEN_COMPRA ADD CONSTRAINT SP_ORDEN_COMPRA_PK PRIMARY KEY ( ID_ORDEN );

CREATE TABLE SP_DETALLE_COMPRA (
	ID_COMPRA			NUMBER NOT NULL,
	ID_ORDEN			NUMBER NOT NULL,
	ID_INSUMO			NUMBER NOT NULL,
	CANTIDAD			NUMERIC(6, 2) NOT NULL
);

ALTER TABLE SP_DETALLE_COMPRA ADD CONSTRAINT SP_DETALLE_COMPRA_PK PRIMARY KEY ( ID_COMPRA );
ALTER TABLE SP_DETALLE_COMPRA ADD CONSTRAINT COM_ORD_FK FOREIGN KEY ( ID_ORDEN ) REFERENCES SP_ORDEN_COMPRA ( ID_ORDEN );
ALTER TABLE SP_DETALLE_COMPRA ADD CONSTRAINT COM_INS_FK FOREIGN KEY ( ID_INSUMO ) REFERENCES SP_INSUMO ( ID_INSUMO );

CREATE TABLE SP_MOTIVO (
	ID_MOTIVO	CHAR(1 BYTE) NOT NULL,
	NOMBRE		VARCHAR2(100 BYTE) NOT NULL
);

ALTER TABLE SP_MOTIVO ADD CONSTRAINT SP_MOTIVO_PK PRIMARY KEY ( ID_MOTIVO );

CREATE TABLE SP_ORDEN_PRODUCCION (
	ID_ORDEN			NUMBER NOT NULL,
	MOTIVO				CHAR(1 BYTE) NOT NULL,
	FECHA_REGISTRO		TIMESTAMP NOT NULL,
	FECHA_AUTORIZACION	TIMESTAMP,
	FECHA_FIN		TIMESTAMP,
	ESTADO				CHAR(1 BYTE) NOT NULL
);

ALTER TABLE SP_ORDEN_PRODUCCION ADD CONSTRAINT SP_ORDEN_PRODUCCION_PK PRIMARY KEY ( ID_ORDEN );
ALTER TABLE SP_ORDEN_PRODUCCION ADD CONSTRAINT MOTIVO_ORD_FK FOREIGN KEY ( MOTIVO ) REFERENCES SP_MOTIVO ( ID_MOTIVO );

CREATE SEQUENCE SP_ORDEN_PRODUCCION_SEQ;

CREATE TABLE SP_DETALLE_PRODUCTO (
	ID_COMPRA			NUMBER NOT NULL,
	ID_ORDEN			NUMBER NOT NULL,
	ID_PRODUCTO			NUMBER NOT NULL,
	UNIDADES			NUMBER NOT NULL,
	MERMA				NUMBER default 0 NOT NULL
);

ALTER TABLE SP_DETALLE_PRODUCTO ADD CONSTRAINT SP_DETALLE_PRODUCTO_PK PRIMARY KEY ( ID_COMPRA );
ALTER TABLE SP_DETALLE_PRODUCTO ADD CONSTRAINT PRO_ORD_FK FOREIGN KEY ( ID_ORDEN ) REFERENCES SP_ORDEN_PRODUCCION ( ID_ORDEN );
ALTER TABLE SP_DETALLE_PRODUCTO ADD CONSTRAINT PRO_PRO_FK FOREIGN KEY ( ID_PRODUCTO ) REFERENCES SP_PRODUCTO ( ID_PRODUCTO );

CREATE SEQUENCE SP_DETALLE_PRODUCTO_SEQ;
