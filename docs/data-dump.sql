-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 02, 2022 at 07:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `funcionesjs`
--

-- --------------------------------------------------------

--
-- Table structure for table `clases_tb`
--

CREATE TABLE `clases_tb` (
  `id` int(11) NOT NULL,
  `clase` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clases_tb`
--

INSERT INTO `clases_tb` (`id`, `clase`) VALUES
(1, 'formato'),
(2, 'numerico'),
(3, 'moneda'),
(4, 'fecha'),
(5, 'matematicas'),
(6, 'alfanumerico'),
(7, 'archivo');

-- --------------------------------------------------------

--
-- Table structure for table `funciones_tb`
--

CREATE TABLE `funciones_tb` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) NOT NULL,
  `etiquetas` varchar(255) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `codigo_fuente` text DEFAULT NULL,
  `sintaxis` text DEFAULT NULL,
  `ejemplos` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `funciones_tb`
--

INSERT INTO `funciones_tb` (`id`, `parent_id`, `nombre`, `etiquetas`, `descripcion`, `codigo_fuente`, `sintaxis`, `ejemplos`) VALUES
(3, 5, 'multiplicacion', 'matematicas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua', 'function myFunction(p1, p2) {   return p1 * p2; }', 'Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum', 'function myFunction(p1, p2) {   return p1 * p2; } document.getElementById(\"demo\").innerHTML = myFunction(4, 3);'),
(4, 3, 'moneda colombia', 'moneda', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old', 'function myFunction(a, b) {   return a * b; }', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.', 'var x = myFunction(4, 3); document.getElementById(\"demo\").innerHTML = x;  function myFunction(a, b) {   return a * b; }'),
(6, 1, 'mancheta', 'diseño, css', 'prueba', 'function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }', 'function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }', 'function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }'),
(7, 5, 'factorial', 'numerico', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', 'const factorial = function fac(n) {return n < 2 ? 1 : n * fac(n - 1)}', 'const factorial = function fac(n) {return n < 2 ? 1 : n * fac(n - 1) }', 'console.log(factorial(3))'),
(8, 4, 'periodo', 'periodo, fecha, año, mes', 'Función que calcual el año mes actual', 'function periodo() {\r\n    var a = new Date();\r\n    a = a.toLocaleString(\'en-US\', { timeZone: \'America/Bogota\' })\r\n    a = new Date(a);\r\n    var months = [\'01\',\'02\',\'03\',\'04\',\'05\',\'06\',\'07\',\'08\',\'09\',\'10\',\'11\',\'12\'];\r\n    var meses_txt       = [\'Enero\',\'Febrero\',\'Marzo\',\'Abril\',\'Mayo\',\'Junio\',\'Julio\',\'Agosto\',\'Septiembre\',\'Octubre\',\'Noviembre\',\'Diciembre\'];\r\n    var days = [\'Domingo\',\'Lunes\',\'Martes\',\'Miércoles\',\'Jueves\',\'Viernes\',\'Sábado\'];\r\n    var year = a.getFullYear();\r\n    var month = a.getMonth() + 1;\r\n    var date = a.getDate();\r\n    var day = days[a.getDay()];\r\n    var hour = a.getHours();\r\n    var min = a.getMinutes();\r\n    var sec = a.getSeconds();\r\n    \r\n    if(month < 10){\r\n       month = \'0\'+month;\r\n    }\r\n    var time = year + \'-\'+month;\r\n    return time;\r\n};', 'let periodo  = periodo () // año-mes\r\n', 'let periodo  = periodo () // año-mes'),
(9, 1, 'comprimir comentarios', 'formato', 'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ', 'if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}\r\n', 'if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}', 'if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}'),
(10, 2, 'millares', 'formato', 'If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.', 'if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}', 'if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}', 'if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}'),
(11, 2, 'eliminar numeros', 'expresiones reguladas', 'Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', '// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}', '// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}\r\n', '// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}'),
(12, 6, 'eliminacion simbolos', 'formato, alfanumerico', 'Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC.', '// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}', '// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}', '// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}'),
(14, 4, 'fecha musulmana', 'calendario', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.', 'let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\'', 'let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\'', 'let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\''),
(15, 1, 'conteo caracteres', 'numerico', 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.', 'let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\nconst lastElement = seas.pop();\r\nconsole.log(lastElement); ', 'let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\nconst lastElement = seas.pop();\r\nconsole.log(lastElement); ', 'let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\nconst lastElement = seas.pop();\r\nconsole.log(lastElement); '),
(16, 3, 'monedas intercambio', 'euro, dolar', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.', 'function square(x) { x = x * x; return x;}', 'function square(x) { x = x * x; return x;}', 'var y = 10;\r\nvar result = square(y);\r\nconsole.log(y); // 10 -- no change\r\nconsole.log(result); // 100 '),
(17, 4, 'calendario europeo', 'function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);', 'The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc', 'function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);', 'function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);', 'console.log(computer.isOn); // true;'),
(18, 1, 'eliminacion otros caracteres', 'alfanumerico', 'The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested', 'function greeting(){let message = \'Hi\';\r\nfunction sayHi(){console.log(message);}return sayHi;}let hi = greeting();', 'function greeting(){let message = \'Hi\';\r\nfunction sayHi(){console.log(message);}return sayHi;}let hi = greeting();', 'hi(); // still can access the message variable'),
(19, 1, 'titulos', 'encabezado', 'he generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc', 'function greeting(message) {return function(name){return message + \' \' + name;}}let sayHi = greeting(\'Hi\');let sayHello = greeting(\'Hello\');', 'function greeting(message) {return function(name){return message + \' \' + name;}}let sayHi = greeting(\'Hi\');let sayHello = greeting(\'Hello\');', 'console.log(sayHi(\'John\')); // Hi John console.log(sayHello(\'John\')); // Hello John'),
(20, 5, 'promedio aritmetico', 'formato, matematicas', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ', 'const para =document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}', 'const para = document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}', 'const para = document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}'),
(21, 7, 'pdf', 'extension, formato archivo, pdf', 'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness', 'let str = \'JavaScript Substring\';let substring = str.substring(0,10);', 'let str = \'JavaScript Substring\';let substring = str.substring(0,10);', 'console.log(substring);'),
(22, 6, 'argumentos', 'array, funcion', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet', 'for (let i = 0; i < 100; i++) {\r\n  ctx.beginPath();\r\n  ctx.fillStyle = \'rgba(255,0,0,0.5)\';\r\n  ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI);\r\n  ctx.fill();\r\n}', 'for (let i = 0; i < 100; i++) {\r\n  ctx.beginPath();\r\n  ctx.fillStyle = \'rgba(255,0,0,0.5)\';\r\n  ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI);\r\n  ctx.fill();\r\n}', 'for (let i = 0; i < 100; i++) {\r\n  ctx.beginPath();\r\n  ctx.fillStyle = \'rgba(255,0,0,0.5)\';\r\n  ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI);\r\n  ctx.fill();\r\n}'),
(23, 1, 'pie de pagina', 'footer, presentacion', 'All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.', 'const buttons = document.querySelectorAll(\'button\');\r\n\r\nfor (let i = 0; i < buttons.length ; i++) {\r\n  buttons[i].addEventListener(\'click\', createParagraph);\r\n}', 'const buttons = document.querySelectorAll(\'button\');\r\n\r\nfor (let i = 0; i < buttons.length ; i++) {\r\n  buttons[i].addEventListener(\'click\', createParagraph);\r\n}', 'const buttons = document.querySelectorAll(\'button\');\r\n\r\nfor (let i = 0; i < buttons.length ; i++) {\r\n  buttons[i].addEventListener(\'click\', createParagraph);\r\n}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clases_tb`
--
ALTER TABLE `clases_tb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funciones_tb`
--
ALTER TABLE `funciones_tb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_Funciones` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clases_tb`
--
ALTER TABLE `clases_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `funciones_tb`
--
ALTER TABLE `funciones_tb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `funciones_tb`
--
ALTER TABLE `funciones_tb`
  ADD CONSTRAINT `FK_Funciones` FOREIGN KEY (`parent_id`) REFERENCES `clases_tb` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;