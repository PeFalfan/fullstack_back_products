
 GRANT ALL PRIVILEGES ON * . * TO 'root'@'localhost';

-- CREATE USER 'myuser'@'%' IDENTIFIED BY 'password';

 GRANT ALL PRIVILEGES ON *.* TO 'myuser'@'%' WITH GRANT OPTION;


-- Crear tabla PRODUCTOS
CREATE TABLE productos(
    id         BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre     VARCHAR(80) NOT NULL,
    tipo     VARCHAR(80) NOT NULL,
    descripcion     VARCHAR(200) NOT NULL,
    precio BIGINT NOT NULL,
    existencias BIGINT NOT NULL,
    imagen     VARCHAR(150) NOT NULL
);


-- inserta datos en la tabla productos
INSERT INTO productos (nombre,tipo,  descripcion, precio, existencias, descripcion)
VALUES
    ("Berserk VOL 5", "manga", "Volumen 5 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_5.jpg?alt=media&token=d2f79f10-5f5d-408f-ba58-019a34a1117e"),
    ("Berserk VOL 8", "manga", "Volumen 8 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_8.jpg?alt=media&token=96f0fdad-eccf-4c2b-bbd0-3cdaeaa37178"),
    ("Berserk VOL 27", "manga", "Volumen 27 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_27.jpg?alt=media&token=04eeb32c-7924-44ff-9222-b35d80d1e149"),
    ("Berserk VOL 40", "manga", "Volumen 40 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_40.jpg?alt=media&token=f71aaed7-8543-402c-a393-adee0c3568b0"),
    ("Berserk VOL 41", "manga", "Volumen 41 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_41.jpg?alt=media&token=1dddaa29-0185-4914-80a8-f5335cb27f92"),
    ("Berserk VOL 42", "manga", "Volumen 42 de manga Berserk", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fberserk_vol_42.jpg?alt=media&token=ed846133-7508-4d9c-88ce-dc45c674e32c"),
    ("Chainsaw Man VOL 1", "manga", "Volumen 1 de manga Chainsaw Man", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_1.jpg?alt=media&token=683c71a4-fd26-4732-a3b9-fe0b86d78c14"),
    ("Chainsaw Man VOL 2", "manga", "Volumen 2 de manga Chainsaw Man", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_2.jpg?alt=media&token=bd699f67-6886-4222-9ffb-6e5d8ff02c0e"),
    ("Chainsaw Man VOL 8", "manga", "Volumen 8 de manga Chainsaw Man", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_8.jpg?alt=media&token=2fc96ff8-f0ff-4c99-8446-c2d09f9c6aed"),
    ("Chainsaw Man VOL 10", "manga", "Volumen 10 de manga Chainsaw Man", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_10.jpg?alt=media&token=9a10e5ca-0cb9-42f3-8b3b-c49fdcc5125b"),
    ("Chainsaw Man VOL 12", "manga", "Volumen 12 de manga Chainsaw Man", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_12.jpg?alt=media&token=47d30697-7379-4e52-9841-c0ff7292439a"),
    ("Jujutsu Kaisen VOL 1", "manga", "Volumen 1 de manga Jujutsu Kaisen", 12500, 50, "https://firebasestorage.googleapis.com/v0/b/mangaman-770dc.appspot.com/o/img%2Fchainsawman_vol_1.jpg?alt=media&token=683c71a4-fd26-4732-a3b9-fe0b86d78c14");
