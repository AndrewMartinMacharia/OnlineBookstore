create table profile (
	profile_id				varchar(50),
	name				varchar(50),
	address				varchar(50),
	phone				numeric(10,0),
	primary key (profile_id)
);

create table publisher(
	publisher_id 	varchar(50),
	name				varchar(50),
	address				varchar(50),
	phone				numeric(10,0),
	primary key (publisher_id)
);


create table book(
	ISBN				varchar(30), 
	name				varchar(30), 
	genre				varchar(30),
	publisher_id		varchar(30),
	price				numeric(6,2),
	number_of_pages		numeric(4,0), 
	primary key (ISBN),
	foreign key (publisher_id) references publisher (publisher_id)
	);
	
create table author(
	ISBN		varchar(30),
	name				varchar(30),
	address				varchar(30),
	phone				numeric(10,0),
	primary key (ISBN)
	);

create table authored(
	ISBN				varchar(30), 
	primary key (ISBN), 
	foreign key (ISBN) references book (ISBN)
	);
	
create table warehouse(
	warehouse_id		varchar(30),
	address				varchar(30),
	phone				numeric(8,2),
	primary key (warehouse_ID)
	);
	
create table stored(
	ISBN				varchar(30), 
	warehouse_id		varchar(30),
	primary key (ISBN, warehouse_id), 
	foreign key (ISBN) references book (ISBN),
	foreign key (warehouse_id) references warehouse (warehouse_id)
	);

	
create table published(
	publisher_id		varchar(30),
	ISBN				varchar(30), 
	primary key (ISBN, publisher_id), 
	foreign key (ISBN) references book (ISBN),
	foreign key (publisher_id) references publisher (publisher_id)
	);
	
create table cart_of(
	user_id				varchar(30), 
	primary key (user_id)
	);

create table shopping_cart(
	cart_id				varchar(30)
	);

create table book_cart(
	ISBN				varchar(30),
	primary key (ISBN)
	);

