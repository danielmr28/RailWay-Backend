CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE roles (
                       id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                       role VARCHAR(255)
);

CREATE TABLE us2ers (
                       id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                       name VARCHAR(255),
                       last_name VARCHAR(255),
                       email VARCHAR(255),
                       role_id UUID,
                       FOREIGN KEY (role_id) REFERENCES roles(id)
);

CREATE TABLE rooms (
                       id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                       description TEXT,
                       address VARCHAR(255),
                       available BOOLEAN,
                       user_id UUID,
                       FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

CREATE TABLE posts (
                       id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                       title VARCHAR(255),
                       price DECIMAL,
                       image VARCHAR(255),
                       status VARCHAR(50),
                       user_id UUID,
                       room_id UUID,
                       FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
                       FOREIGN KEY (room_id) REFERENCES rooms(id) ON DELETE CASCADE
);
CREATE TABLE payments (
                          id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
                          post_id UUID REFERENCES posts(id) ON DELETE CASCADE,
                          student_id UUID REFERENCES users(id) ON DELETE CASCADE,
                          amount DECIMAL NOT NULL,
                          payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                          status VARCHAR(50)
);