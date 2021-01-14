CREATE TYPE auth_class AS ENUM ('google', 'email');

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    firstname VARCHAR(256),
    lastname VARCHAR(256),
    password VARCHAR(128),
    email VARCHAR(256),
    auth_type auth_class NOT NULL,
    social_id VARCHAR(256),
    created_at timestamptz NOT NULL DEFAULT now(),
    last_logged_in timestamptz NOT NULL DEFAULT now()
);