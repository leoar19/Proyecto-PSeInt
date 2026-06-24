// Proyecto de PSeInt: Preguntados
Proceso Proyecto
	menu;
	Escribir "";
FinProceso

SubProceso menu
	Definir opcionMenu, edad, puntaje Como Entero;
	Definir nombre, nivel, preguntas, respuestas Como Cadena;
	Dimension preguntas[11];
	Dimension respuestas[11];
	opcionMenu <- 0;
	Escribir "";
	Escribir "=== BIENVENIDO AL JUEGO TRIVIA ===";
    Escribir "> Ingrese su nombre: ";
    Leer nombre;
    Escribir "> Ingrese su edad: ";
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
	
	Mientras opcionMenu <> 6 Hacer
		puntaje <- 0;
		Escribir "";
		Escribir "=== TRIVIA ===";
		Escribir "1. Trivia General";
		Escribir "2. Trivia de Matemáticas";
		Escribir "3. Trivia de Java";
		Escribir "4. Trivia de JavaScript";
		Escribir "5. Trivia de Python";
		Escribir "6. Salir";
		Escribir "";
		Escribir "> Elija una opcion: ";
		Leer opcionMenu;
		Escribir "";
		Segun opcionMenu Hacer
			1:
				triviaGeneral(nivel,puntaje, preguntas, respuestas);
			2:
				triviaMatematica(nivel,puntaje, preguntas, respuestas);
			6:
			De Otro Modo:
				Escribir "Opcion no valida.";
		FinSegun
	FinMientras
FinSubProceso

SubProceso triviaGeneral(nivel, puntaje, preguntas, respuestas)
	Definir i Como Entero;
	Definir respuesta Como Cadena;
	// Cargar preguntas segun el nivel, que lo da la edad ingresada
    Si nivel = "basico" Entonces
		
        preguntas[1] <- "¿Cuanto es 2 + 2?";
        respuestas[1] <- "4";
		
        preguntas[2] <- "¿Cuanto es 5 + 3?";
        respuestas[2] <- "8";
		
        preguntas[3] <- "¿Color del cielo? (Minusculas)";
        respuestas[3] <- "azul";
		
        preguntas[4] <- "¿Cuanto es 10 - 5?";
        respuestas[4] <- "5";
		
        preguntas[5] <- "¿Animal que ladra? (Minusculas)";
        respuestas[5] <- "perro";
		
        preguntas[6] <- "¿Cuanto es 3 + 6?";
        respuestas[6] <- "9";
		
        preguntas[7] <- "¿Color del pasto? (Minusculas)";
        respuestas[7] <- "verde";
		
        preguntas[8] <- "¿Cuanto es 7 - 2?";
        respuestas[8] <- "5";
		
        preguntas[9] <- "¿Cuanto es 1 + 1?";
        respuestas[9] <- "2";
		
        preguntas[10] <- "¿Animal que vuela? (Minusculas)";
        respuestas[10] <- "pajaro";
		
    Sino
        Si nivel = "intermedio" Entonces
			
            preguntas[1] <- "¿Capital de Argentina? (Minusculas)";
            respuestas[1] <- "buenos aires";
			
            preguntas[2] <- "¿Cuanto es 12 / 3?";
            respuestas[2] <- "4";
			
            preguntas[3] <- "¿Color mezcla de rojo y azul? (Minusculas)";
            respuestas[3] <- "violeta";
			
            preguntas[4] <- "¿Cuanto es 9 * 2?";
            respuestas[4] <- "18";
			
            preguntas[5] <- "¿Planeta en el que vivimos? (Minusculas)";
            respuestas[5] <- "tierra";
			
            preguntas[6] <- "¿Cuanto es 15 - 5?";
            respuestas[6] <- "10";
			
            preguntas[7] <- "¿Idioma de Argentina? (Minusculas)";
            respuestas[7] <- "español";
			
            preguntas[8] <- "¿Cuanto es 6 * 2?";
            respuestas[8] <- "12";
			
            preguntas[9] <- "¿Animal que maulla? (Minusculas)";
            respuestas[9] <- "gato";
			
            preguntas[10] <- "¿Cuanto es 20 / 4?";
            respuestas[10] <- "5";
			
        Sino
			
            preguntas[1] <- "¿Cuanto es 5 * 6?";
            respuestas[1] <- "30";
			
            preguntas[2] <- "¿Raiz cuadrada de 81?";
            respuestas[2] <- "9";
			
            preguntas[3] <- "¿Lenguaje de programacion que usas? (Minusculas)";
            respuestas[3] <- "pseint";
			
            preguntas[4] <- "¿Cuanto es 100 / 4?";
            respuestas[4] <- "25";
			
            preguntas[5] <- "¿Sistema operativo de Microsoft? (Minusculas)";
            respuestas[5] <- "windows";
			
            preguntas[6] <- "¿Cuanto es 7 * 8?";
            respuestas[6] <- "56";
			
            preguntas[7] <- "¿Capital de Francia? (Minusculas)";
            respuestas[7] <- "paris";
			
            preguntas[8] <- "¿Cuanto es 9 * 9?";
            respuestas[8] <- "81";
			
            preguntas[9] <- "¿Dispositivo para ingresar caracteres? (Minusculas)";
            respuestas[9] <- "teclado";
			
            preguntas[10] <- "¿Cuanto es 50 + 25?";
            respuestas[10] <- "75";
			
        FinSi
    FinSi
	
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
    Escribir "Puntaje: ", puntaje, " de 10";
	
    Si puntaje >= 8 Entonces
        Escribir "EXCELENTE, te felicito!";
    Sino
        Si puntaje >= 7 Entonces
            Escribir "BIEN, DEBES ESFORZARTE MAS!";
        Sino
            Escribir "DEJA EL CELULAR Y ESTUDIA MAS!";
        FinSi
    FinSi
	Escribir "";
	Escribir "Volviendo al menu...";
FinSubProceso

SubProceso triviaMatematica(nivel,puntaje, preguntas, respuestas)
	Definir i Como Entero;
	Definir respuesta Como Cadena;
	Si nivel = "basico" Entonces
		preguntas[1] <- "¿Cuanto es 5 + 13?";
		respuestas[1] <- "18";
		
		preguntas[2] <- "¿Cuanto es 12 - 7?";
		respuestas[2] <- "5";
		
		preguntas[3] <- "¿Cuanto es 4 x 6?";
		respuestas[3] <- "24";
		
		preguntas[4] <- "¿Cuanto es 18 / 3?";
		respuestas[4] <- "6";
		
		preguntas[5] <- "¿Cual es el doble de 9?";
		respuestas[5] <- "18";
		
		preguntas[6] <- "¿Cual es la mitad de 20?";
		respuestas[6] <- "10";
		
		preguntas[7] <- "¿Cuanto es 0 x 22?";
		respuestas[7] <- "0";
		
		preguntas[8] <- "¿Cual es el triple de 3?";
		respuestas[8] <- "9";
		
		preguntas[9] <- "¿Cuanto es 10 x 0?";
		respuestas[9] <- "0";
		
		preguntas[10] <- "¿Cuanto es 9 + 8?";
		respuestas[10] <- "17";
	SiNo
		Si nivel = "intermedio" Entonces
			preguntas[1] <- "¿Cuanto es 15 x 8?";
			respuestas[1] <- "120";
			
			preguntas[2] <- "¿Cuanto es 72 / 12?";
			respuestas[2] <- "6";
			
			preguntas[3] <- "¿Cual es el 25% de 200?";
			respuestas[3] <- "50";
			
			preguntas[4] <- "¿Cuanto es 7 al cuadrado?";
			respuestas[4] <- "49";
			
			preguntas[5] <- "¿Cuanto es 3 al cubo?";
			respuestas[5] <- "27";
			
			preguntas[6] <- "¿Si un producto cuesta $80 y aumenta un 10% cual es el nuevo precio?";
			respuestas[6] <- "88";
			
			preguntas[7] <- "¿Cual es el siguiente numero de la secuencia: 2, 4, 8,16 ?";
			respuestas[7] <- "32";
			
			preguntas[8] <- "¿Cuanto es (5 + 4) x 3?";
			respuestas[8] <- "27";
			
			preguntas[9] <- "¿Cual suma el perimetro de un triangulo con lados de 3, 4 y 5?";
			respuestas[9] <- "12";
			
			preguntas[10] <- "¿Cuanto es 81 / 9 + 6?";
			respuestas[10] <- "15";
		SiNo
			preguntas[1] <- "Si A = {1,2} y B = {2,3} ¿cuantos elementos tendra su union?";
			respuestas[1] <- "3";
			
			preguntas[2] <- "Si A = {1,2,3,4} y B = {3,4,5,6} ¿cuantos elementos tendra su interseccion?";
			respuestas[2] <- "2";
			
			preguntas[3] <- "Si A = {2,4,6,8} ¿el numero 5 pertenece a A? (1=Si, 0=No)";
			respuestas[3] <- "0";
			
			preguntas[4] <- "¿Cuanto es 5! (factorial)?";
			respuestas[4] <- "120";
			
			preguntas[5] <- "Si P y Q son Verdaderos ¿cual es el valor de P ^ Q? (Solo inicial)";
			respuestas[5] <- "V";
			
			preguntas[6] <- "Si P = V y Q = F ¿cual es el valor de P v Q? (Solo inicial)";
			respuestas[6] <- "V";
			
			preguntas[7] <- "Si P = V ¿cual es el valor de NOT P? (Solo inicial)";
			respuestas[7] <- "F";
			
			preguntas[8] <- "¿Cual es el numero decimal correspondiente al numero binario 111?";
			respuestas[8] <- "7";
			
			preguntas[9] <- "¿Cual es el numero binario correspondiente al numero decimal 3?";
			respuestas[9] <- "11";
			
			preguntas[10] <- "¿Una matriz es nula cuando todos sus elementos son igual a que numero?";
			respuestas[10] <- "0";
		FinSi
	FinSi
	
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
    Escribir "Puntaje: ", puntaje, " de 10";
	
    Si puntaje >= 8 Entonces
        Escribir "EXCELENTE, te felicito!";
    Sino
        Si puntaje >= 7 Entonces
            Escribir "BIEN, DEBES ESFORZARTE MAS!";
        Sino
            Escribir "DEJA EL CELULAR Y ESTUDIA MAS!";
        FinSi
    FinSi
	Escribir "";
	
	Definir decision Como Cadena;
	Escribir "¿Quieres hacer un desafio adicional? (si/no)";
	Leer decision;
	Si decision = "si" Entonces
		Definir j, matriz Como Entero;
		Dimension matriz[3,2];
		Escribir "Escribir la transpuesta de la siguiente matriz: ";
		Escribir "| 1 2 3 |";
		Escribir "| 4 5 6 |";
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Para j <- 0 Hasta 1 Con Paso 1 Hacer
				Escribir Sin Saltar "Elemento [",i+1,"][",j+1,"]: ";
				Leer matriz[i,j];
			FinPara
		FinPara
		Escribir "";
		Escribir "Tu matriz transpuesta quedo asi: ";
		Para i <- 0 Hasta 2 Con Paso 1 Hacer
			Para j <- 0 Hasta 1 Con Paso 1 Hacer
				Escribir Sin Saltar matriz[i,j], " ";
			FinPara
			Escribir "";
		FinPara
		Escribir "La respuesta es...";
		Esperar 3 Segundos;
		Escribir "Error inesperado al leer la respuesta. ¡Tomalo como una oportunidad para investigar y aprender!";
		Escribir "";
	SiNo
		Escribir "";
	FinSi
	Escribir "Volviendo al menu...";
FinSubProceso
	