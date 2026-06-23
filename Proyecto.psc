// Proyecto de PSeInt: Preguntados
Proceso Proyecto Alt+F4...//
	
    Definir nombre Como Cadena;
    Definir edad, puntaje, i Como Entero;
    Definir nivel Como Cadena;
    Definir respuesta Como Cadena;
	
    Definir preguntas Como Cadena;
    Definir respuestas Como Cadena;
	
    Dimension preguntas[11];
    Dimension respuestas[11];
	
    Escribir "=== BIENVENIDO AL JUEGO TRIVIA ===";
	
    Escribir "Ingrese su nombre: ";
    Leer nombre;
	
    Escribir "Ingrese su edad: ";
    Leer edad;
	
    // Nivel segun la edad...//
    Si edad < 13 Entonces
        nivel <- "basico";
    Sino
        Si edad < 18 Entonces
            nivel <- "intermedio";
        Sino
            nivel <- "avanzado";
        FinSi
    FinSi
	
    Escribir "Hola ", nombre, ", tu nivel es: ", nivel;
	
    // Cargar preguntas segun el nivel, que lo da la edad ingresada...//
    Si nivel = "basico" Entonces
		
        preguntas[1] <- "¿Cuanto es 2 + 2?";
        respuestas[1] <- "4";
		
        preguntas[2] <- "¿Cuanto es 5 + 3?";
        respuestas[2] <- "8";
		
        preguntas[3] <- "¿Color del cielo?";
        respuestas[3] <- "azul";
		
        preguntas[4] <- "¿Cuanto es 10 - 5?";
        respuestas[4] <- "5";
		
        preguntas[5] <- "¿Animal que ladra?";
        respuestas[5] <- "perro";
		
        preguntas[6] <- "¿Cuanto es 3 + 6?";
        respuestas[6] <- "9";
		
        preguntas[7] <- "¿Color del pasto?";
        respuestas[7] <- "verde";
		
        preguntas[8] <- "¿Cuanto es 7 - 2?";
        respuestas[8] <- "5";
		
        preguntas[9] <- "¿Cuanto es 1 + 1?";
        respuestas[9] <- "2";
		
        preguntas[10] <- "¿Animal que vuela?";
        respuestas[10] <- "pajaro";
		
    Sino
        Si nivel = "intermedio" Entonces
			
            preguntas[1] <- "¿Capital de Argentina?";
            respuestas[1] <- "buenos aires";
			
            preguntas[2] <- "¿Cuanto es 12 / 3?";
            respuestas[2] <- "4";
			
            preguntas[3] <- "¿Color mezcla de rojo y azul?";
            respuestas[3] <- "violeta";
			
            preguntas[4] <- "¿Cuanto es 9 * 2?";
            respuestas[4] <- "18";
			
            preguntas[5] <- "¿Planeta en el que vivimos?";
            respuestas[5] <- "tierra";
			
            preguntas[6] <- "¿Cuanto es 15 - 5?";
            respuestas[6] <- "10";
			
            preguntas[7] <- "¿Idioma de Argentina?";
            respuestas[7] <- "espanol";
			
            preguntas[8] <- "¿Cuanto es 6 * 2?";
            respuestas[8] <- "12";
			
            preguntas[9] <- "¿Animal que maulla?";
            respuestas[9] <- "gato";
			
            preguntas[10] <- "¿Cuanto es 20 / 4?";
            respuestas[10] <- "5";
			
        Sino
			
            preguntas[1] <- "¿Cuanto es 5 * 6?";
            respuestas[1] <- "30";
			
            preguntas[2] <- "¿Raiz cuadrada de 81?";
            respuestas[2] <- "9";
			
            preguntas[3] <- "¿Lenguaje de programacion que usas?";
            respuestas[3] <- "pseint";
			
            preguntas[4] <- "¿Cuanto es 100 / 4?";
            respuestas[4] <- "25";
			
            preguntas[5] <- "¿Sistema operativo de Microsoft?";
            respuestas[5] <- "windows";
			
            preguntas[6] <- "¿Cuanto es 7 * 8?";
            respuestas[6] <- "56";
			
            preguntas[7] <- "¿Capital de Francia?";
            respuestas[7] <- "paris";
			
            preguntas[8] <- "¿Cuanto es 9 * 9?";
            respuestas[8] <- "81";
			
            preguntas[9] <- "¿Dispositivo para ingresar datos?";
            respuestas[9] <- "teclado";
			
            preguntas[10] <- "¿Cuanto es 50 + 25?";
            respuestas[10] <- "75";
			
        FinSi
    FinSi
	
    puntaje <- 0;
	
    Escribir "";
    Escribir "=== COMIENZA EL JUEGO ===";
	
    Para i <- 1 Hasta 10 Hacer
		
        Escribir "Pregunta ", i, ": ", preguntas[i];
        Leer respuesta;
		
        Si respuesta = respuestas[i] Entonces
            Escribir "Correcto!";
            puntaje <- puntaje + 1;
        Sino
            Escribir "Incorrecto. Respuesta correcta: ", respuestas[i];
        FinSi
		
        Escribir "";
		
    FinPara
	
    Escribir "=== RESULTADO FINAL ===";
    Escribir "Jugador: ", nombre;
    Escribir "Nivel: ", nivel;
    Escribir "Puntaje: ", puntaje, " de 10";
	
    Si puntaje >= 8 Entonces
        Escribir "EXCELENTE, te felicio!";
    Sino
        Si puntaje >= 7 Entonces
            Escribir "BIEN, DEBES ESFORZARTE MAS!";
        Sino
            Escribir "DEJA EL CELULAR Y ESTUDIA MAS!";
        FinSi
    FinSi
	
FinProceso
