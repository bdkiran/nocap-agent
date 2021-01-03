SELECT * FROM users;

SELECT * FROM users where user_id = 1;

INSERT INTO users (user_id, firstname, lastname, password, email, auth_type) VALUES
    (1, 'Brad', 'Touche', 'hashedPassword', 'brad@gmail.com', 'email');

DELETE FROM users where user_id=1;

UPDATE users SET last_logged_in = now() WHERE user_id = 1;

