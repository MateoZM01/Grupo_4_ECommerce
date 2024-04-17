CREATE DATABASE Digital_Commerce;

USE Digital_Commerce;

CREATE TABLE usuarios(
	id INT(15) NOT NULL,
	nombre VARCHAR(30) NOT NULL,
	apellido VARCHAR(30) NOT NULL,
    email VARCHAR(30) NOT NULL,
    contrasenia VARCHAR(20) NOT NULL,
    imagen VARCHAR(100) NOT NULL,
    genero VARCHAR(20) NOT NULL, 
	fecha_nacimiento DATE NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    ciudad VARCHAR(20) NOT NULL,
    direccion VARCHAR(20) NOT NULL,
	telefono VARCHAR(20) DEFAULT NULL,
	PRIMARY KEY (id)
);

INSERT INTO usuarios (id, nombre, apellido, email, contrasenia, imagen, genero, fecha_nacimiento, categoria, pais, ciudad, direccion) VALUES
(1, 'Juan', 'Pérez', 'juan.perez@correo.com', 'clave123', 'avatar1.png', 'Masculino', '1997-02-03', 'Minorista', 'Argentina', 'Buenos Aires', 'La Rioja N°1957'),
(2, 'Roxana', 'Carabajal', 'roxi.cara@correo.com', 'roxcara', 'avatar2.png', 'Femenino', '1987-01-15', 'Mayorista', 'Argentina', 'Santiago del Estero', 'Paris N°593'),
(3, 'María', 'Fernández', 'maria.fernadez@correo.com', 'contraseña', 'avatar3.png', 'Femenino', '2000-03-27', 'Minorista', 'Argentina', 'Tucumán', 'Balcarce N°841'),
(4, 'David', 'Torres', 'david.torres@correo.com', 'password123', 'avatar4.png', 'Masculino', '1998-12-16', 'Mayorista', 'Argentina', 'Santiago del Estero', 'Libertad N°225'),
(5, 'Isabella', 'Ruiz', 'isabella.ruiz@correo.com', 'isaruiz2', 'avatar5.png', 'Femenino', '1980-06-10', 'Minorista', 'Argentina', 'Córdoba', 'Estrada N°398'),
(6, 'Gabriel', 'López', 'gabriel.lopez@correo.com', 'gabilopez123', 'avatar6.png', 'Masculino', '1993-04-01', 'Mayorista', 'Argentina', 'Santiago del Estero', 'Mayo N°140');

CREATE TABLE productos(
	id INT(15) NOT NULL,
    nombre VARCHAR(30) NOT NULL,
    precio DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(20) NOT NULL,
    imagen VARCHAR(100) NOT NULL,
    descripcion TEXT,
    PRIMARY KEY (id)
);

INSERT INTO productos (id, nombre, precio, categoria, imagen, descripcion) VALUES
(1, 'Teclado Redragon', 60000, 'Nuevo', 'teclado_red.png', 'Disfrutá de tus partidas en otro nivel con Redragon, marca reconocida que se especializa en brindar la mejor experiencia de juego al público gamer desde hace más de 20 años. Sus teclados se adaptan a todo tipo de jugadores y esto los convierten en un fiel reflejo de la alta gama y calidad que la compañía ofrece.'),
(2, 'Auriculares', 320000, 'Nuevo', 'auri.logi.png', 'Sumérgete en el mundo de los videojuegos con los auriculares gamer inalámbricos Logitech Pro X Wireless en color negro. Diseñados especialmente para los amantes de los juegos, estos auriculares over-ear te permiten disfrutar de una experiencia de audio inmersiva y libre de cables gracias a su alcance inalámbrico de 15 metros. Con una duración de batería de hasta 20 horas, podrás jugar durante largas sesiones sin preocuparte por recargarlos. Además, el micrófono incorporado te permitirá comunicarte con tus compañeros de equipo de manera clara y nítida. Aunque no cuentan con cancelación de ruido ni resistencia al agua, los auriculares Logitech Pro X Wireless son la opción perfecta para aquellos que buscan comodidad y rendimiento en sus sesiones de juego.'),
(3, 'Samsung S23 Ultra', 1600000, 'Nuevo', 'celular.png', 'Hacé que las noches sean más épicas con la cámara nocturna. Es un kit de nivel profesional que cabe en una mano. La cámara posterior triple y la cámara de selfie ofrecen hardware y software de cámara innovadores para que puedas capturar fácilmente una galería llena de contenido digno de compartir. Adiós, resplandor. Las asombrosas pantallas Infinity-O de 120 Hz están diseñadas con Dynamic AMOLED 2X con tecnología Vision Booster para una alta visibilidad al aire libre, lo que mantiene la vista nítida a plena luz del día o de noche. Ahora el único resplandor que verás será el de las cámaras de los celosos. Disfrutá la noche sin necesidad de cables. La vida no disminuye su ritmo y tomar un descanso para recargar energía es una vía rápida para la ansiedad de estar desconectado. La batería se adapta de manera inteligente a la forma en que usás tu smartphone, por lo que dura más de 24 horas'),
(4, 'Monitor Gamer', 600000, 'Usado', 'monitor.png', 'Disfrutá de todas las cualidades que el monitor Gigabyte G27FC tiene para ofrecerte. Percibí las imágenes de una manera completamente diferente y complementá cualquier espacio ya sea en tu casa u oficina.'),
(5, 'Motherboard', 520000, 'Nuevo', 'placamadre.png', 'La serie PRO está diseñada para profesionales de todos los ámbitos de la vida. La línea presenta un rendimiento impresionante y alta calidad, mientras que su objetivo principal es: brindar a los usuarios una experiencia increíble. Los usuarios que se preocupan por la productividad y la eficiencia definitivamente pueden contar con la serie MSI PRO para ayudarlos con la multitarea y aumentar la eficiencia.'),
(6, 'Impresora Multifunción', 250000, 'Usado', 'impresora.hp.png', 'Las impresoras multifunción HP son una excelente opción para quienes necesitan un dispositivo que pueda imprimir, escanear, copiar y enviar faxes. Ofrecen una variedad de funciones y opciones para satisfacer las necesidades de diferentes usuarios, desde estudiantes y propietarios de pequeñas empresas hasta grandes empresas.'),
(7, 'Router WiFi Gigabit', 180000, 'Nuevo', 'router.png', 'El Router WiFi Gigabit te permite disfrutar de una experiencia online rápida, confiable y segura. Con velocidades WiFi Gigabit (hasta 1000 Mbps), es ideal para streaming de video 4K/8K, juegos online, descargas rápidas y mucho más.'),
(8, 'Mouse Pad Gamer', 7200, 'Nuevo', 'mousepad.png', 'Es tan fácil deslizar el mouse. Con tu Alitrade MP408003-1 podrás llenar la pantalla de tu ordenador de clicks. Su elaborada superficie le dará precisión y comodidad a tus movimientos.'),
(9, 'Procesador Amd Ryzen', 800000, 'Usado', 'Procesador-Amd-Ryzen-9-7900X.png', 'El AMD Ryzen™ 9 7900X es un potente procesador para computadoras de escritorio para gaming y streaming que está diseñado con 12 núcleos de CPU y 24 subprocesos, y tiene una velocidad de reloj base de 4,7 GHz.'),
(10, 'Memoria Kingston', 80000, 'Nuevo', 'MEMORIADDR5.png', 'DDR5 duplica el número de bancos de 16 a 32. Esto permite abrir más páginas simultáneamente, con el consiguiente aumento de la eficiencia. También se duplica la longitud mínima de ráfaga hasta 16, desde los 8 de DDR4.'),
(11, 'NVIDIA GeForce RTX 4090', 890000, 'Nuevo', 'rtx-4090.png', 'El RTX 4090 es una tarjeta gráfica impresionantemente potente que presenta la GPU AD102-300 en la arquitectura Ada Lovelace y viene con 16384 núcleos CUDA para renders 3D de 2520 MHz de 2520 MHz. Es posible que estos números no signifiquen nada si no sabes lo que estás viendo');

CREATE TABLE compras(
	id INTEGER NOT NULL,
    id_usuario INT(15) NOT NULL,
	id_producto INT(15) NOT NULL,
    total TINYINT(4) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY(id_producto) REFERENCES productos(id)
);

INSERT INTO compras (id, id_usuario, id_producto, total) VALUES
(1, 1, 1, 1),
(2, 2, 2, 3),
(3, 3, 3, 4),
(4, 4, 4, 6);

CREATE TABLE stock_productos(
	id INTEGER NOT NULL,
	id_producto INT(15) NOT NULL,
    total TINYINT(4) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY(id_producto) REFERENCES productos(id)
);

INSERT INTO stock_productos (id, id_producto, total) VALUES
(1, 1, 50),
(2, 2, 30),
(3, 3, 40),
(4, 4, 10),
(5, 5, 25),
(6, 6, 2),
(7, 7, 12),
(8, 8, 8),
(9, 9, 15),
(10, 10, 27),
(11, 11, 30);