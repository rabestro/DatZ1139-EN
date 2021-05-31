SET DATEFORMAT DMY;

DROP TABLE if exists DELIVERY_ORDER;
DROP TABLE if exists ORDER_PAYMENT;
DROP TABLE if exists CUSTOMER;
DROP TABLE if exists DELIVERY_DATA;
DROP TABLE if exists TRANSPORT;
DROP TABLE if exists DELIVERY_SERVICE;

CREATE TABLE CUSTOMER (
    CUSTOMER_ID int IDENTITY NOT NULL PRIMARY KEY,
    CUSTOMER_FIRST_NAME varchar(50) NOT NULL,
    CUSTOMER_LAST_NAME varchar(50) NOT NULL
    );
INSERT INTO CUSTOMER (CUSTOMER_FIRST_NAME, CUSTOMER_LAST_NAME) values ('John', 'Cena');
INSERT INTO CUSTOMER (CUSTOMER_FIRST_NAME, CUSTOMER_LAST_NAME) values ('Garry', 'Goodsprings');
INSERT INTO CUSTOMER (CUSTOMER_FIRST_NAME, CUSTOMER_LAST_NAME) values ('Tony', 'Montana');
INSERT INTO CUSTOMER (CUSTOMER_FIRST_NAME, CUSTOMER_LAST_NAME) values ('Marty', 'McFly');
CREATE TABLE DELIVERY_SERVICE (
    DELIVERY_SERVICE_ID int IDENTITY NOT NULL PRIMARY KEY,
    REGISTRATION_NUMBER varchar(20) NOT NULL,
    NAME varchar(50) NOT NULL,
    ADDRESS varchar(50) NOT NULL,
    WEB_PAGE varchar(50),
    SPECIALIZATION varchar(50) NOT NULL
    );
INSERT INTO DELIVERY_SERVICE (REGISTRATION_NUMBER, NAME, ADDRESS, WEB_PAGE, SPECIALIZATION) values
('22332222', 'Omniva', 'Riga', 'www.one.lv', 'parcels');
INSERT INTO DELIVERY_SERVICE (REGISTRATION_NUMBER, NAME, ADDRESS, WEB_PAGE, SPECIALIZATION) values
('13567804', 'Wolt', 'Riga', 'www.wolt.lv', 'food');
INSERT INTO DELIVERY_SERVICE (REGISTRATION_NUMBER, NAME, ADDRESS, WEB_PAGE, SPECIALIZATION) values
('13567804', 'DPD', 'Riga', 'www.dpd.com/lv', 'parcels');
INSERT INTO DELIVERY_SERVICE (REGISTRATION_NUMBER, NAME, ADDRESS, WEB_PAGE, SPECIALIZATION) values
('13567804', 'Bolt', 'Riga', 'www.bolt.com', 'food');


CREATE TABLE TRANSPORT (
    TRANSPORT_ID int IDENTITY NOT NULL PRIMARY KEY,
    DELIVERY_SCHEDULE date NOT NULL,
    TRANSPORT_TYPE varchar(50)
    );
INSERT INTO TRANSPORT (DELIVERY_SCHEDULE, TRANSPORT_TYPE) values
('02-05-2021', 'car');
INSERT INTO TRANSPORT (DELIVERY_SCHEDULE, TRANSPORT_TYPE) values
('02-05-2021', 'van');
INSERT INTO TRANSPORT (DELIVERY_SCHEDULE, TRANSPORT_TYPE) values
('02-05-2021', 'bicycle');

CREATE TABLE DELIVERY_DATA (
    DELIVERY_DATA_ID int IDENTITY NOT NULL PRIMARY KEY,
    ADDRESS varchar(50) NOT NULL,
    DELIVERY_START_DATE date NOT NULL,
    DELIVERY_END_DATE date NOT NULL,
    COMMENT varchar(50)
    );
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Ikškiles street 21', '01-05-2021', '05-05-2021', 'zxc door code');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Mārupes street 17', '02-05-2021', '06-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Blaumaņa street 3', '03-05-2021', '09-05-2021', 'at the door');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Mūkusalas street 96', '04-05-2021', '10-05-2021', 'door bell for the guard');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Grecinieku street 16', '05-05-2021', '08-06-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Brivibas street 58', '06-05-2021', '08-06-2021', 'leave at the door');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Ģertrudes street 113', '07-05-2021', '12-05-2021', 'qwe door code');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Matīsa street 8', '08-05-2021', '12-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Merķeļa street 31', '09-05-2021', '14-05-2021', 'back door');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Lidoņu street 4', '10-05-2021', '13-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Krišjāņa Valdemāra street 86', '11-05-2021', '14-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Krišjāņa Barona street 15', '12-05-2021', '15-05-2021', 'phone call at arrival');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Dzirciema street 50', '13-05-2021', '17-05-2021', 'beware of a dog');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Aristīda Briāna street 29', '14-05-2021', '20-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Daugavgrīvas street 116', '15-05-2021', '18-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Ūdens street 44', '16-05-2021', '20-05-2021', 'impossible to park the car');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Terbatas street 73', '17-05-2021', '22-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Ilmājas street 28', '18-05-2021', '27-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Kuģu street 96', '19-05-2021', '30-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Antonijas street 51', '20-05-2021', '28-05-2021', 'phone call at arrival');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Meža street 124', '21-05-2021', '25-05-2021', 'door code 56903');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Lienes street 1', '22-05-2021', '25-05-2021', 'door code 1504');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Baldones street 12', '21-05-2021', '25-05-2021', 'entrance from the main street');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Hipokrata street 49', '22-05-2021', '26-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Parādes street 33', '23-05-2021', '26-05-2021', 'door code uzx345');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Maskavas street 178', '23-05-2021', '27-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Akadēmiķa Saharova street 99', '23-05-2021', '28-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE) values
('Mazā Pils street 13', '23-05-2021', '29-05-2021');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Tallinas street 5', '24-05-2021', '28-05-2021', 'door code 3400');
INSERT INTO DELIVERY_DATA (ADDRESS, DELIVERY_START_DATE, DELIVERY_END_DATE, COMMENT) values
('Lāčplēša street 78', '25-05-2021', '30-05-2021', 'entrance from the yard');


CREATE TABLE ORDER_PAYMENT (
    PAYMENT_ID int IDENTITY NOT NULL PRIMARY KEY,
    DELIVERY_PRICE float NOT NULL,
    CUSTOMER_ID int NOT NULL,
    CONSTRAINT OPCUSTOMER_FK foreign key (CUSTOMER_ID) references CUSTOMER(CUSTOMER_ID)
    );
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(5.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(3.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(10.00, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(20.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(25.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(7.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(11.00, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(30.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(57.99, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(29.50, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(5.00, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(38.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(10.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(15.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(79.99, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(85.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(4.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(2.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(19.99, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(6.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(67.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(34.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(19.00, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(12.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(9.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(23.00, 2);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(22.00, 3);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(8.00, 4);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(3.00, 1);
INSERT INTO ORDER_PAYMENT (DELIVERY_PRICE, CUSTOMER_ID) values
(5.00, 2);

CREATE TABLE DELIVERY_ORDER (
    ORDER_ID int IDENTITY NOT NULL PRIMARY KEY,
    ORDER_CODE varchar(50) NOT NULL,
    NAME varchar(50) NOT NULL,
    AMOUNT int NOT NULL,
    TYPE varchar(50) NOT NULL,
    DELIVERY_DATA_ID int NOT NULL,
    TRANSPORT_ID int NOT NULL,
    DELIVERY_SERVICE_ID int NOT NULL,
    PAYMENT_ID int NOT NULL,
    CONSTRAINT ODELIVERY_DATA_FK foreign key (DELIVERY_DATA_ID) references DELIVERY_DATA(DELIVERY_DATA_ID),
    CONSTRAINT OTRANSPORT_FK foreign key (TRANSPORT_ID) references TRANSPORT(TRANSPORT_ID),
    CONSTRAINT ODELIVERY_SERVICE_FK foreign key (DELIVERY_SERVICE_ID) references DELIVERY_SERVICE(DELIVERY_SERVICE_ID),
    CONSTRAINT OPAYMENT_FK foreign key (PAYMENT_ID) references ORDER_PAYMENT(PAYMENT_ID)
    );
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('20356', 'Pillow', 2, 'home goods', 1, 1, 1, 1);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('20284', 'Socks', 10, 'clothes', 2, 2, 2, 2);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('21132', 'Wheal Chair', 1, 'medical equipment', 3, 3, 1, 3);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('21477', 'Table', 2, 'furniture', 4, 1, 3, 4);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('21593', 'Burger', 1, 'food', 5, 2, 4, 5);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('21905', 'Pizza', 5, 'food', 6, 3, 1, 6);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22110', 'Teapot', 1, 'kitchen stuff', 7, 1, 2, 7);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22350', 'Chair', 2, 'furniture', 8, 2, 3, 8);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22593', 'Laptop', 1, 'electronic devices', 9, 3, 4, 9);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22671', 'BBQ grill', 3, 'garden equipment', 10, 1, 1, 10);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22709', 'Plates', 20, 'kitchen stuff', 11, 2, 2, 11);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22817', 'Sushi', 16, 'food', 12, 3, 3, 12);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('22924', 'Coat', 1, 'clothes', 13, 1, 4, 13);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23001', 'Towel', 3, 'bathroom stuff', 14, 2, 1, 14);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23129', 'Air conditioner', 1, 'electronic devices', 15, 3, 2, 15);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23251', 'Headphones', 2, 'electronic devices', 16, 1, 3, 16);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23333', 'Bed', 1, 'furniture', 17, 2, 4, 17);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23488', 'Underpants', 12, 'clothes', 18, 3, 1, 18);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23592', 'Candies Laima', 30, 'food', 19, 1, 2, 19);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23664', 'Boots', 2, 'clothes', 20, 2, 3, 20);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23747', 'Cuba Coffee', 3, 'food', 21, 3, 4, 21);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23801', 'Bulbs', 15, 'other stuff', 22, 1, 1, 22);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('23976', 'Table lamp', 1, 'other stuff', 23, 2, 2, 23);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24006', 'Computer Monitor', 1, 'electronic devices', 24, 3, 3, 24);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24153', 'Fish and chips', 2, 'food', 25, 1, 4, 25);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24238', 'Blanket', 5, 'bedroom stuff', 26, 2, 1, 26);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24332', 'Door knob', 3, 'furniture', 27, 3, 2, 27);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24415', 'T-shirts', 20, 'clothes', 28, 1, 3, 28);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24568', 'Refrigerator', 1, 'kitchen stuff', 29, 2, 4, 29);
INSERT INTO DELIVERY_ORDER (ORDER_CODE, NAME, AMOUNT, TYPE, DELIVERY_DATA_ID, TRANSPORT_ID, DELIVERY_SERVICE_ID, PAYMENT_ID) values
('24639', 'Spoons', 30, 'kitchen stuff', 30, 3, 1, 30);



SELECT ds.NAME, COUNT(ds.NAME) TOTAL_DELIVERIES, AVG(DATEDIFF_BIG(day, DELIVERY_START_DATE, DELIVERY_END_DATE)) AVERAGE_WAITING_DAYS
FROM DELIVERY_ORDER do
RIGHT JOIN DELIVERY_SERVICE ds on do.DELIVERY_SERVICE_ID = ds.DELIVERY_SERVICE_ID
RIGHT JOIN DELIVERY_DATA dd on dd.DELIVERY_DATA_ID = do.DELIVERY_DATA_ID
GROUP BY ds.NAME;






























