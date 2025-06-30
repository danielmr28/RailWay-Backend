-- Insertar roles y guardar los UUIDs generados
INSERT INTO roles (id, role) VALUES
('11111111-1111-1111-1111-111111111111', 'Estudiante'),
('22222222-2222-2222-2222-222222222222', 'Propietario'),
('33333333-3333-3333-3333-333333333333', 'Administrador');

-- Insertar usuarios usando los UUIDs de roles
INSERT INTO users (id, name, last_name, email, role_id) VALUES
('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'Juan', 'Pérez', 'juan.perez@example.com', '11111111-1111-1111-1111-111111111111'),
('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 'Ana', 'Gómez', 'ana.gomez@example.com', '22222222-2222-2222-2222-222222222222'),
('aaaaaaa3-aaaa-aaaa-aaaa-aaaaaaaaaaa3', 'Carlos', 'Rodríguez', 'carlos.rodriguez@example.com', '11111111-1111-1111-1111-111111111111');

-- Insertar rooms usando los UUIDs de users
INSERT INTO rooms (id, description, address, available, user_id) VALUES
    ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'Habitación individual amueblada', 'Calle Principal 123', TRUE, 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1'),
('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'Apartamento de 2 habitaciones', 'Avenida Central 456', FALSE, 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2'),
('bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3', 'Estudio con vista al mar', 'Calle Costanera 789', TRUE, 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1');

-- Insertar posts usando los UUIDs de users y rooms
INSERT INTO posts (id, title, price, image, status, user_id, room_id) VALUES
('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'Habitación en el centro', 250.00, 'habitacion1.jpg', 'Disponible', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1'),
('ccccccc2-cccc-cccc-cccc-ccccccccccc2', 'Apartamento amplio', 500.00, 'apartamento2.jpg', 'Alquilado', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', 'bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2'),
('ccccccc3-cccc-cccc-cccc-ccccccccccc3', 'Estudio moderno', 300.00, 'estudio3.jpg', 'Disponible', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', 'bbbbbbb3-bbbb-bbbb-bbbb-bbbbbbbbbbb3');