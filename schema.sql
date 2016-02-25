drop database if exists apartments;
create database apartments;

\c apartments;

drop table if exists buildings;
create table buildings (
  id serial primary key,
  name varchar(50) not null,
  address varchar(100)
);

drop table if exists units;
create table units (
  id serial primary key,
  building_id integer references buildings(id),
  floor integer
);

drop table if exists tenants;
create table tenants (
  id serial primary key,
  firstName varchar(50),
  lastName varchar(50)
  phone varchar(15)
);

drop table if exists rental_histories
create table rental_histories (
  id serial primary key,
  building_id integer references buildings(id),
  unit_id integer references units(id),
  tenant_id integer references tenants(id)
);
