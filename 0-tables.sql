CREATE TYPE auth_class AS ENUM ('google', 'email');

CREATE TABLE users (
    user_id numeric PRIMARY KEY,
    firstname varchar(256),
    lastname varchar(256),
    password varchar(512),
    email varchar(256),
    auth_type auth_class NOT NULL,
    created_at timestamptz NOT NULL DEFAULT now(),
    last_logged_in timestamptz NOT NULL DEFAULT now()
);