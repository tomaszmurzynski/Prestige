CREATE TABLE adres (
  id_adres INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ulica VARCHAR(50) NOT NULL,
  numer VARCHAR(10) NOT NULL,
  kod CHAR(11) NOT NULL,
  miejscowosc VARCHAR(30) NOT NULL
);


CREATE TABLE klient (
  id_klient INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_adres INTEGER NOT NULL UNIQUE REFERENCES adres(id_adres),
  imie VARCHAR(25) NOT NULL,
  nazwisko VARCHAR(30) NOT NULL,
  pesel CHAR(11) NOT NULL UNIQUE,
  telefon VARCHAR(20) NOT NULL,
  email VARCHAR(30) NOT NULL,
  haslo VARCHAR(30) NOT NULL,
  rabat INTEGER NOT NULL DEFAULT 0,
  data_dodania DATETIME NOT NULL,
  usuniety BIT NOT NULL DEFAULT 0
);


CREATE TABLE kategoria (
  id_kategoria INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nazwa VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE podkategoria (
  id_podkategoria INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_kategoria INTEGER NOT NULL REFERENCES kategoria(id_kategoria),
  nazwa VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE pracownik (
  id_pracownik INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_adres INTEGER NOT NULL UNIQUE REFERENCES adres(id_adres),
  imie VARCHAR(25) NOT NULL,
  nazwisko VARCHAR(30) NOT NULL,
  data_zatrudnienia DATETIME NOT NULL,
  pensja DECIMAL(8,2) NOT NULL,
  dodatek DECIMAL (8,2) NULL,
  stanowisko VARCHAR(30) NOT NULL,
  usuniety BIT NOT NULL DEFAULT 0
);


CREATE TABLE producent (
  id_producent INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_adres INTEGER NOT NULL UNIQUE REFERENCES adres(id_adres),
  nazwa VARCHAR(30) NOT NULL UNIQUE
);


CREATE TABLE produkt (
  id_produkt INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_producent INTEGER NOT NULL REFERENCES producent(id_producent),
  id_podkategoria INTEGER NOT NULL REFERENCES podkategoria(id_podkategoria),
  nazwa VARCHAR(30) NOT NULL,
  opis VARCHAR(50) NOT NULL,
  cena_netto DECIMAL(10,2) NOT NULL,
  podatek INTEGER NOT NULL DEFAULT 23,
  ilosc_sztuk_magazyn INTEGER NOT NULL DEFAULT 0
);


CREATE TABLE status (
  id_status INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nazwa VARCHAR(50) NOT NULL,
  opis VARCHAR(50) NOT NULL
);


CREATE TABLE zamowienie (
  id_zamowienie INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_pracownik INTEGER NOT NULL REFERENCES pracownik(id_pracownik) ON DELETE CASCADE,
  id_klient INTEGER NOT NULL REFERENCES klient(id_klient) ON DELETE CASCADE,
  data_zamowienia DATETIME NOT NULL,
  cena_netto_dostawy DECIMAL(10,2) NOT NULL DEFAULT 0,
  podatek INTEGER NOT NULL DEFAULT 23
);


CREATE TABLE koszyk (
  id_zamowienie INTEGER NOT NULL REFERENCES zamowienie(id_zamowienie),
  id_produkt INTEGER NOT NULL REFERENCES produkt(id_produkt),
  cena_netto DECIMAL(10,2) NOT NULL,
  podatek INTEGER NOT NULL DEFAULT 23,
  ilosc_sztuk INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY(id_zamowienie, id_produkt)
);


CREATE TABLE zamowienie_status (
  id_zamowienie INTEGER NOT NULL REFERENCES zamowienie(id_zamowienie),
  id_status INTEGER NOT NULL REFERENCES status(id_status),
  data_zmiany_statusu DATETIME NOT NULL,
  uwagi VARCHAR(100) NULL,
  PRIMARY KEY(id_zamowienie, id_status)
);


CREATE TABLE faktura (
  id_faktura INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  id_zamowienie INTEGER NOT NULL REFERENCES zamowienie(id_zamowienie),
  id_klient INTEGER NOT NULL REFERENCES klient(id_klient) ON DELETE CASCADE,
  id_pracownik INTEGER NOT NULL REFERENCES pracownik(id_pracownik) ON DELETE CASCADE,
  nr_faktury VARCHAR(20) NOT NULL,
  data_wystawienia DATETIME NOT NULL,
  data_platnosci DATETIME NOT NULL,
  czy_oplacona BIT NOT NULL DEFAULT 0
);

