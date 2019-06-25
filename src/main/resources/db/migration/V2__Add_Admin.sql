insert into users (id, username, password, active)
    values (14, 'Admin', '123', true);

insert into user_role (user_id, roles)
    values (14, 'USER'), (14, 'ADMIN');