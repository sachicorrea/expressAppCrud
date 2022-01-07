-- MariaDB dump 10.19  Distrib 10.6.5-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: functionsComunike
-- ------------------------------------------------------
-- Server version	10.6.5-MariaDB-1:10.6.5+maria~focal

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `class_tb`
--

DROP TABLE IF EXISTS `class_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_tb`
--

LOCK TABLES `class_tb` WRITE;
/*!40000 ALTER TABLE `class_tb` DISABLE KEYS */;
INSERT INTO `class_tb` VALUES (1,'formato','2021-12-22 21:40:29'),(2,'numerico','2021-12-22 21:40:29'),(3,'moneda','2021-12-22 21:40:29'),(4,'fecha','2021-12-22 21:40:29'),(5,'matematicas','2021-12-22 21:40:29'),(6,'alfanumerico','2021-12-22 21:40:29'),(7,'archivo','2021-12-22 21:40:29'),(8,'documental','2022-01-05 02:51:37');
/*!40000 ALTER TABLE `class_tb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `function_tb`
--

DROP TABLE IF EXISTS `function_tb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `function_tb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL,
  `function_name` varchar(100) NOT NULL,
  `label` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `source_code` text NOT NULL,
  `syntax` text NOT NULL,
  `example` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_function` (`parent_id`),
  CONSTRAINT `fk_function` FOREIGN KEY (`parent_id`) REFERENCES `class_tb` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `function_tb`
--

LOCK TABLES `function_tb` WRITE;
/*!40000 ALTER TABLE `function_tb` DISABLE KEYS */;
INSERT INTO `function_tb` VALUES (1,8,'multiplicacion','artimética','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua','function myFunction(p1, p2) { return p1 * p2; }  ','Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum','function myFunction(p1, p2) { return p1 * p2; }','2021-12-22 21:46:11'),(2,3,'moneda colombia','moneda','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old','function myFunction(a, b) {   return a * b; }','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.','var x = myFunction(4, 3); document.getElementById(\"demo\").innerHTML = x;  function myFunction(a, b) {   return a * b; }','2021-12-22 21:46:11'),(3,1,'mancheta','diseño, css','prueba','function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }','function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }','function myFunction(a, b) {   return a * b;  // Function returns the product of a and b }','2021-12-22 21:46:11'),(4,5,'factorial','numerico','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ','const factorial = function fac(n) {return n < 2 ? 1 : n * fac(n - 1)}','const factorial = function fac(n) {return n < 2 ? 1 : n * fac(n - 1) }','console.log(factorial(3))','2021-12-22 21:46:11'),(5,8,'periodo','periodo, fecha','Función que calcual el año mes actual','function periodo() {\r\n                var a = new Date();\r\n                a = a.toLocaleString(\'en-US\', { timeZone: \'America/Bogota\' })\r\n                a = new Date(a);\r\n                var months = [\'01\',\'02\',\'03\',\'04\',\'05\',\'06\',\'07\',\'08\',\'09\',\'10\',\'11\',\'12\'];\r\n                var meses_txt       = [\'Enero\',\'Febrero\',\'Marzo\',\'Abril\',\'Mayo\',\'Junio\',\'Julio\',\'Agosto\',\'Septiembre\',\'Octubre\',\'Noviembre\',\'Diciembre\'];\r\n                var days = [\'Domingo\',\'Lunes\',\'Martes\',\'Miércoles\',\'Jueves\',\'Viernes\',\'Sábado\'];\r\n                var year = a.getFullYear();\r\n                var month = a.getMonth() + 1;\r\n                var date = a.getDate();\r\n                var day = days[a.getDay()];\r\n                var hour = a.getHours();\r\n                var min = a.getMinutes();\r\n                var sec = a.getSeconds();\r\n                \r\n                if(month < 10){\r\n                   month = \'0\'+month;\r\n                }\r\n                var time = year + \'-\'+month;\r\n                return time;\r\n            }; ','let periodo  = periodo () // año-mes\r\n            ','let periodo  = periodo () // año-mes','2021-12-22 21:46:11'),(6,1,'comprimir comentarios','comentarios','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. ','if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}\r\n','if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}','if (shouldDefineZero) {\r\nfunction zero() {// DANGER: compatibility risk\r\nconsole.log(\"This is zero.\");}\r\n}','2021-12-22 21:46:11'),(7,2,'millares','formato','If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text.','if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}','if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}','if (shouldDefineZero) {function zero() {// DANGER: compatibility risk console.log(\"This is zero.\");}\r\n}','2021-12-22 21:46:11'),(8,2,'eliminar numeros','expresiones reguladas','Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.','// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}','// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}\r\n','// This function returns a string padded with leading zeros\r\nfunction padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}','2021-12-22 21:46:11'),(9,6,'eliminacion simbolos','formato, alfanumerico','Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC.','// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}','// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}','// This function returns a string padded with leading zeros function padZeros(num, totalLen) {var numStr = num.toString(); // Initialize return value as string var numZeros = totalLen - numStr.length; // Calculate no. of zeros for (var i = 1; i <= numZeros; i++) {numStr = \"0\" + numStr;} return numStr;}','2021-12-22 21:46:11'),(10,4,'fecha musulmana','calendario','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness.','let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\'','let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\'','let athletes = new Array(3); // creates an array with initial size 3 let scores = new Array(1, 2, 3); // create an array with three numbers 1,2 3 let signs = new Array(\'Red\'); // creates an array with one element \'Red\'','2021-12-22 21:46:11'),(11,8,'conteo caracteres','numerico','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.','let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\n            const lastElement = seas.pop();\r\n            console.log(lastElement);  ','let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\n            const lastElement = seas.pop();\r\n            console.log(lastElement); ','let seas = [\'Black Sea\', \'Caribbean Sea\', \'North Sea\', \'Baltic Sea\'];\r\n            const lastElement = seas.pop();\r\n            console.log(lastElement); ','2021-12-22 21:46:11'),(12,3,'monedas intercambio','euro, dolar','Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.','function square(x) { x = x * x; return x;}','function square(x) { x = x * x; return x;}','var y = 10;\r\nvar result = square(y);\r\nconsole.log(y); // 10 -- no change\r\nconsole.log(result); // 100 ','2021-12-22 21:46:11'),(13,4,'calendario europeo','function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);','The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc','function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);','function turnOn(machine){machine.isOn = true;} var computer = {isOn: false}; turnOn(computer);','console.log(computer.isOn); // true;','2021-12-22 21:46:11'),(14,6,'eliminacion otros caracteres','alfanumerico','The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested','function greeting(){let message = \'Hi\';\r\nfunction sayHi(){console.log(message);}return sayHi;}let hi = greeting();','function greeting(){let message = \'Hi\';\r\nfunction sayHi(){console.log(message);}return sayHi;}let hi = greeting();','hi(); // still can access the message variable','2021-12-22 21:46:11'),(15,1,'titulos','encabezado','he generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc','function greeting(message) {return function(name){return message + \' \' + name;}}let sayHi = greeting(\'Hi\');let sayHello = greeting(\'Hello\');','function greeting(message) {return function(name){return message + \' \' + name;}}let sayHi = greeting(\'Hi\');let sayHello = greeting(\'Hello\');','console.log(sayHi(\'John\')); // Hi John console.log(sayHello(\'John\')); // Hello John','2021-12-22 21:46:11'),(16,5,'promedio aritmetico','formato, matematicas','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ','const para =document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}','const para = document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}','const para = document.querySelector(\'p\');para.addEventListener(\'click\', updateName);function updateName(){let name = prompt(\'Enter a new name\'); para.textContent = \'Player 1: \' + name;}','2021-12-22 21:46:11'),(17,7,'pdf','extension, formato archivo, pdf','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness','let str = \'JavaScript Substring\';let substring = str.substring(0,10);','let str = \'JavaScript Substring\';let substring = str.substring(0,10);','console.log(substring);','2021-12-22 21:46:11'),(18,7,'argumentos','array, funcion','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet','for (let i = 0; i < 100; i++) {ctx.beginPath(); ctx.fillStyle = \'rgba(255,0,0,0.5)\'; ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI); ctx.fill();} ','for (let i = 0; i < 100; i++) {ctx.beginPath(); ctx.fillStyle = \'rgba(255,0,0,0.5)\'; ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI); ctx.fill();}','for (let i = 0; i < 100; i++) {ctx.beginPath(); ctx.fillStyle = \'rgba(255,0,0,0.5)\'; ctx.arc(random(WIDTH), random(HEIGHT), random(50), 0, 2 * Math.PI);ctx.fill();}','2021-12-22 21:46:11'),(19,1,'pie de pagina','footer, presentacion','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.','const buttons = document.querySelectorAll(\'button\'); for (let i = 0; i < buttons.length ; i++) {buttons[i].addEventListener(\'click\', createParagraph);} ','const buttons = document.querySelectorAll(\'button\'); for (let i = 0; i < buttons.length ; i++) {buttons[i].addEventListener(\'click\', createParagraph);}','const buttons = document.querySelectorAll(\'button\'); for (let i = 0; i < buttons.length ; i++) {buttons[i].addEventListener(\'click\', createParagraph);}','2021-12-22 21:46:11'),(20,2,'fecha gringa','otros','this is garbage','let str = \"Please locate where \'locate\' occurs!\"; str.indexOf(\"locate\"); ','let str = \"Please locate where \'locate\' occurs!\"; str.indexOf(\"locate\");','let str = \"Please locate where \'locate\' occurs!\"; str.indexOf(\"locate\");','2021-12-29 23:06:16');
/*!40000 ALTER TABLE `function_tb` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-06 21:48:44
