CREATE INDEX IF NOT EXISTS users_username_idx ON users (username);

CREATE INDEX IF NOT EXISTS comments_user_id_idx ON comments (user_id);
