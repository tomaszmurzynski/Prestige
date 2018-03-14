INSERT INTO `kategoria`(`nazwa`) VALUES ('Kwiaty');
INSERT INTO `kategoria`(`nazwa`) VALUES ('Doniczki i osłonki');
INSERT INTO `kategoria`(`nazwa`) VALUES ('Ozdoby');

INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('1','Doniczkowe');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('1','Cięte');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('1','Sztuczne');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('2','Plastikowe');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('2','Porcelanowe');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('2','Szklane');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('3','Świąteczne');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('3','Okazjonalne');
INSERT INTO `podkategoria`(`id_kategoria`, `nazwa`) VALUES ('3','Florystyczne');



INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Warszawska','20B','80-180','Gdańsk','Poland');
INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Venus','181','2675 LN','Honserlersdijk','Holland');

INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('1','Eco Flowers Sabina Murzyńska');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('2','B.J. van Duyvenvoorde & Zn. B.V.');


INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Szczecińska','19','42-200','Częstochowa','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('3','Z.P.U.H. OLDEX Lisiecki Andrzej');

INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Wodnika','50','80-299','Gdańsk','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('4','IBERYS Hurtownia Kwiatów Sztucznych');

INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Aleja Zwycięstwa','245/5','81-525','Gdynia','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('5','Exotic Flowers');


INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Bolesława Chrobrego','145','87-100','Toruń','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('6','Fredi');


INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Dąbrowa','35','85-147','Bydgoszcz','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('7','Dekor-Hurt');


INSERT INTO `adres`(`ulica`, `numer`, `kod`, `miejscowosc`, `kraj`) VALUES ('Karola Szajnochy','14','85-001','Bydgoszcz','Poland');
INSERT INTO `producent`(`id_adres`, `nazwa`) VALUES ('8','P.H.U. "Antek" Hurtownia Kwiatów Sztucznych i Art. Florystycznych');
































