\c reporting

create table public.product_events (
  id SERIAL PRIMARY KEY,
  evt_type character varying(255),
  user_id character varying(100),
  product_id character varying(100),
  location_id character varying(100),
  location character varying(255),
  evt_date timestamp,
  transaction_id character varying(100),
  platform character varying(50),
  meta character varying(1024),
  created timestamp default current_timestamp,
  last_modified timestamp default current_timestamp
);

create table public.user_events (
  id SERIAL PRIMARY KEY,
  evt_type character varying(255),
  user_id character varying(100),
  evt_date timestamp,
  platform character varying(50),
  meta character varying(1024),
  created timestamp default current_timestamp,
  last_modified timestamp default current_timestamp
);

insert into public.user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '1', '2024-01-02 09:00:00', 'app', null);

insert into public.user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '2', '2024-01-03 11:00:00', 'web', null);

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('signup', '3', '2024-01-03 08:20:00', 'web', null);

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '1', '2024-01-02 09:03:00', 'app', '{"type": "card", "valid_until": "08/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '2', '2024-01-03 11:13:00', 'web', '{"type": "card", "valid_until": "02/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '3', '2024-01-04 08:24:00', 'web', '{"type": "card", "valid_until": "01/24"}');

insert into user_events (evt_type, user_id, evt_date, platform, meta) 
values ('add-payment-method', '3', '2024-02-14 08:24:00', 'web', '{"type": "card", "valid_until": "01/26"}');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '1', '1', '1', 'LOC A', '2024-01-14 08:24:00', '1', 'app', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '1', '1', '2', 'LOC B', '2024-01-16 10:00:00', '1', 'app', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '1', '2', '2', 'LOC B', '2024-01-17 11:00:00', '2', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '1', '2', '2', 'LOC B', '2024-01-17 12:00:00', '2', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '2', '1', '2', 'LOC B', '2024-01-20 09:00:00', '3', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('return', '2', '1', '2', 'LOC B', '2024-01-21 12:00:00', '3', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '2', '1', '2', 'LOC B', '2024-01-22 09:00:00', '4', 'web', '');

insert into product_events (evt_type, user_id, product_id, location_id, location, evt_date, transaction_id, platform, meta)
values ('borrow', '3', '2', '1', 'LOC A', '2024-01-23 14:00:00', '5', 'app', '');
