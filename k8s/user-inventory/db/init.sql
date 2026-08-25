CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO users (name, email)
VALUES
    ('Arup', 'arup@example.com'),
    ('Rahul', 'rahul@example.com'),
    ('Amit', 'amit@example.com')
ON CONFLICT (email) DO NOTHING;
