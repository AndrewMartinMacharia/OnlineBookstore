delete from publisher;
delete from book;
delete from author;
delete from warehouse;
delete from authored;
delete from published;
delete from stored;
delete from profile;
delete from shopping_cart;
delete from cart_of;
delete from book_cart;

insert into publisher values ('01','Hachette University', '2251 Bridgeport Rd', '183356092');
insert into publisher values ('02','Shueisha Egmont', '3633 Haaglund', '982356092');
insert into publisher values ('03','Klett Education',  '3525 Tycos Dr', '283346392');
insert into publisher values ('04','Hachette Learning', '4689 Jade St', '183451072');
insert into publisher values ('05','Cengage Learning', '1500 Lillooet Street', '184356890');
insert into publisher values ('06','Houghton Mifflin Harcourt', '117 Bragg Road', '2833510248');
insert into publisher values ('07','Cengage Education', '2501 Scotchmere Dr', '782356672');
insert into publisher values ('08','Egmont Books', '2784 Reserve St', '983326598');
insert into publisher values ('09','Pearson Sheisha', '2408 rue des Champs', '281326099');
insert into publisher values ('10','Pearson Livre',  '2438 Scotchmere Dr', '2039561226');

insert into book values ('1933988673', 'Unlocking Android', 'Fiction','01','20','416');
insert into book values ('1935182722', 'Android in Action', 'Non-Fiction','02','24','426');
insert into book values ('1617290084', 'Specification by Example','Fiction','03','25','359');
insert into book values ('1933988746', 'Flex 3 in Action','Mystery','04','26','340');
insert into book values ('1935182420', 'Flex 4 in Action','Mystery','05','27','340');
insert into book values ('1933988312', 'Collective Intelligence','Thriller','06','28','523');
insert into book values ('1933988320', 'Zend Framework in Action','Biography','07','29','390'); 
insert into book values ('1933988797', 'Flex on Java','Poetry','08','30','430');
insert into book values ('1935182234', 'Griffon in Action', 'Crime','09','35','449');
insert into book values ('193518217X', 'OSGi in Depth','Fiction','10','40','387');


insert into author values ('1933988673', 'J.K. Rowling', '202 Ottawa Rd', '283353');
insert into author values ('1935182722', 'Mary GrandPré', '3633 Vancouver Rd', '2930323');
insert into author values ('1617290084', 'Sue Monk Kidd', '3525 Hamilton Dr', '2546923');
insert into author values ('1933988746', 'Mark Twain', '3578 Texas Dr', '18335923');
insert into author values ('1935182420', 'John Seelye', '3456 Lagos Dr', '2865922');
insert into author values ('1933988312', 'Guy Cardwell', '3908 Nexus Rd', '3460923');
insert into author values ('1933988320', 'James Dashner', '3409 Niour Dr', '3530963');
insert into author values ('1933988797', 'William Paul Young', '3595 Space Dr', '564953');
insert into author values ('1935182234', 'J.K. Rowling', '0234 Stoney Dr', '2860323');
insert into author values ('193518217X', 'Mary GrandPré', '3456 Okley Rd', '236925');

insert into warehouse values ('191548212','3456 Sanotarium Rd', '897432.09');

insert into authored values ('1933988673');
insert into authored values ('1935182722');
insert into authored values ('1617290084');
insert into authored values ('1933988746');
insert into authored values ('1935182420');
insert into authored values ('1933988312');
insert into authored values ('1933988320');
insert into authored values ('1933988797');
insert into authored values ('1935182234');
insert into authored values ('193518217X');

insert into published values ('01','1933988673');
insert into published values ('02', '1935182722');
insert into published values ('03','1617290084');
insert into published values ('04','1933988746');
insert into published values ('05','1935182420');
insert into published values ('06','1933988312');
insert into published values ('07','1933988320');
insert into published values ('08','1933988797');
insert into published values ('09','1935182234');
insert into published values ('10','193518217X');

insert into stored values ('1933988673','191548212');
insert into stored values ('1935182722', '191548212');
insert into stored values ('1617290084','191548212');
insert into stored values ('1933988746','191548212');
insert into stored values ('1935182420','191548212');
insert into stored values ('1933988312','191548212');
insert into stored values ('1933988320','191548212');
insert into stored values ('1933988797','191548212');
insert into stored values ('1935182234','191548212');
insert into stored values ('193518217X','191548212');


insert into profile values ('123', 'Stephen','102 Ottawa Rd', '2902438976');
insert into profile values ('124', 'Martin','120 Ottawa Rd', '2702438978');

insert into shopping_cart values ('01');
insert into shopping_cart values ('02');

insert into cart_of values('123');
insert into cart_of values('124');


insert into book_cart values ('1933988673');
insert into book_cart values ('1935182722');
insert into book_cart values ('1617290084');
insert into book_cart values ('1933988746');
insert into book_cart values ('1935182420');
insert into book_cart values ('1933988312');