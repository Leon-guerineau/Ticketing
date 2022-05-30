/* Testé sous MySQL 5.x */

drop table if exists T_COMMENTAIRE;
drop table if exists T_TICKET;

create table T_TICKET (
  TIC_ID integer primary key auto_increment,
  TIC_DATE datetime not null,
  TIC_TITRE varchar(100) not null,
  TIC_CONTENU varchar(400) not null
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

create table T_COMMENTAIRE (
  COM_ID integer primary key auto_increment,
  COM_DATE datetime not null,
  COM_AUTEUR varchar(100) not null,
  COM_CONTENU varchar(200) not null,
  TIC_ID integer not null,
  constraint fk_com_bil foreign key(TIC_ID) references T_TICKET(TIC_ID)
) ENGINE=INNODB CHARACTER SET utf8 COLLATE utf8_general_ci;

insert into T_TICKET(TIC_DATE, TIC_TITRE, TIC_CONTENU) values
(NOW(), 'Premier ticket', 'Bonjour monde ! Ceci est le premier ticket sur ma plateforme.');
insert into T_TICKET(TIC_DATE, TIC_TITRE, TIC_CONTENU) values
(NOW(), 'Au travail', 'Il faut enrichir cette plateforme dès maintenant.');

insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, TIC_ID) values
(NOW(), 'A. Nonyme', 'Bravo pour ce début', 1);
insert into T_COMMENTAIRE(COM_DATE, COM_AUTEUR, COM_CONTENU, TIC_ID) values
(NOW(), 'Moi', 'Merci ! Je vais continuer sur ma lancée', 1);