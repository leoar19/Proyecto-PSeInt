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
			4:	
				triviaJavaScript(nivel,puntaje,preguntas,respuestas);
			5:
				triviaPython(nivel, puntaje);
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
	desafioMatematica();
FinSubProceso

SubProceso desafioMatematica
	Esperar Tecla;
	Borrar Pantalla;
	Definir i Como Entero;
	Definir decision Como Cadena;
	Escribir "¿Quieres hacer un desafio adicional? (si/no)";
	Leer decision;
	Escribir "";
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
		comprobarMatriz(matriz);
	FinSi
FinSubProceso

SubProceso comprobarMatriz(matriz)
	Definir i,j,correcta Como Entero;
	Dimension correcta[3,2];
	Definir bien Como Logico;
	bien <- Verdadero;
	correcta[0,0] <- 1;
	correcta[0,1] <- 4;
	correcta[1,0] <- 2;
	correcta[1,1] <- 5;
	correcta[2,0] <- 3;
	correcta[2,1] <- 6;
	Para i <- 0 Hasta 2 Con Paso 1 Hacer
		Para j <- 0 Hasta 1 Con Paso 1 Hacer
			Si matriz[i,j] <> correcta[i,j] Entonces
				bien <- Falso;
			FinSi
		FinPara
	FinPara
	
	Si bien Entonces
		Escribir "CORRECTO SUPERASTE EL DESAFIO ADICIONAL!";
	SiNo
		Escribir "Incorrecto. La respuesta es: ";
		Escribir "| 1 4 |";
		Escribir "| 2 5 |";
		Escribir "| 3 6 |";
		Escribir "Debes de seguir practicando!";
	FinSi
FinSubProceso

SubProceso triviaJavaScript(nivel,puntaje,preguntas,respuestas)
	
	Definir i, vidas Como Entero;
	Definir respuesta Como Cadena;
	
	vidas <- 3;
	
	preguntas[1] <- "¿Qué función muestra un mensaje en consola?";
	respuestas[1] <- "1";
	
	preguntas[2] <- "¿Cómo se declara una variable moderna en JavaScript?";
	respuestas[2] <- "2";
	
	preguntas[3] <- "¿Qué palabra clave se utiliza para declarar constantes?";
	respuestas[3] <- "3";
	
	preguntas[4] <- "¿Qué símbolo se usa para comentarios de una línea?";
	respuestas[4] <- "1";
	
	preguntas[5] <- "¿Qué método muestra una ventana emergente?";
	respuestas[5] <- "2";
	
	preguntas[6] <- "¿Qué función solicita datos al usuario?";
	respuestas[6] <- "1";
	
	preguntas[7] <- "¿Cómo se escribe correctamente una condición?";
	respuestas[7] <- "3";
	
	preguntas[8] <- "¿Qué operador compara valor y tipo?";
	respuestas[8] <- "2";
	
	preguntas[9] <- "¿Qué estructura repite instrucciones varias veces?";
	respuestas[9] <- "1";
	
	preguntas[10] <- "¿Cómo se convierte un texto a número entero?";
	respuestas[10] <- "3";
	
	Escribir "";
	Escribir "================================";
	Escribir "TRIVIA DE JAVASCRIPT";
	Escribir "================================";
	Escribir "Vidas disponibles: ", vidas;
	Escribir "";
	
	Para i <- 1 Hasta 10 Hacer
		
		Si vidas > 0 Entonces
			
			Escribir "Pregunta ", i, ": ", preguntas[i];
			
			Segun i Hacer
				
				1:
					Escribir "1. console.log()";
					Escribir "2. consol.log()";
					Escribir "3. console.lgo()";
					
				2:
					Escribir "1. variable nombre;";
					Escribir "2. let nombre;";
					Escribir "3. vart nombre;";
					
				3:
					Escribir "1. constant";
					Escribir "2. constt";
					Escribir "3. const";
					
				4:
					Escribir "1. // comentario";
					Escribir "2. \\ comentario";
					Escribir "3. ## comentario";
					
				5:
					Escribir "1. prompt()";
					Escribir "2. alert()";
					Escribir "3. alret()";
					
				6:
					Escribir "1. prompt()";
					Escribir "2. imput()";
					Escribir "3. promt()";
					
				7:
					Escribir "1. if x > 5";
					Escribir "2. if x => 5";
					Escribir "3. if (x > 5)";
					
				8:
					Escribir "1. ==";
					Escribir "2. ===";
					Escribir "3. =";
					
				9:
					Escribir "1. for";
					Escribir "2. fro";
					Escribir "3. iff";
					
				10:
					Escribir "1. parseint()";
					Escribir "2. ParseInt()";
					Escribir "3. parseInt()";
					
			FinSegun;
			
			Leer respuesta;
			
			Si respuesta = respuestas[i] Entonces
				
				Escribir "¡¡CORRECTO!!";
				
			SiNo
				
				vidas <- vidas - 1;
				
				Escribir "INCORRECTO ~_~";
				Escribir "Te quedan ", vidas, " vidas.";
				
				Si vidas = 0 Entonces
					
					Escribir "";
					Escribir "====================";
					Escribir "GAME OVER";
					Escribir "Te has quedado sin vidas";
					Escribir "====================";
					
					Esperar 2 Segundos;
					
				FinSi;
				
			FinSi;
			
			Escribir "";
			
		FinSi;
		
	FinPara;
	
	Si vidas > 0 Entonces
		
		Escribir "";
		Escribir "================================";
		Escribir "FELICIDADES";
		Escribir "Has completado la Trivia de JavaScript";
		Escribir "Vidas restantes: ", vidas;
		Escribir "================================";
		
	FinSi;
	
	Escribir "";
	Escribir "Volviendo al menu...";
	
FinSubProceso


// -oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-


// Funcion principal para mostrar y hacer el cuestionario de python
SubProceso triviaPython(nivel por valor, puntaje por valor)
	Escribir " ,=e __--__---===e   e===---__--__--,-";
	Escribir " `-.       TRIVIA DE PYTHON       ,-´";
	Escribir "_,-´___--__---===e   e===---__--__`=e";
	// Definiendo
	// pregspuestas: matriz con preguntas + respuestas (incorrectas y correctas). Donde [i,0] siempre es la pregunta e [i,4] la respuesta correcta
	// pregIndexesDisponibles: arreglo para facilitar la aparición aleatoria de preguntas (1. 2. 3.)
	// respIndexesDisponibles: arreglo que hace lo mismo que el anterior, pero para las respuestas (A,B,C,D)
	// arrOpciones: arreglo con prefijos (A,B,C,D) que luego seran concatenados con las opciones aleatorias
	definir pregspuestas, pregIndexesDisponibles, respIndexesDisponibles, arrOpciones Como Caracter;
	// indexPregActual: indica en qué pregunta estamos, para asegurar que aparezcan las opciones correspondientes
	// iteracionActual: su unico proposito es imprimir el número de la pregunta
	definir indexPregActual, iteracionActual como entero;
	dimension pregspuestas[5,5];
	dimension pregIndexesDisponibles[5];
	dimension respIndexesDisponibles[4];
	dimension arrOpciones[4];
	
	pyCargarValores(nivel, pregspuestas, pregIndexesDisponibles, respIndexesDisponibles, arrOpciones);
	
	para iteracionActual <- 0 hasta 4 con paso 1 Hacer
		// Elegimos el index de la pregunta al azar, garantizando que en cada partida aparezcan en distinto orden
		indexPregActual <- pyObtenerPosicionValida(pregIndexesDisponibles, 0, 4);
		pyMostrarPreg(pregspuestas, indexPregActual, iteracionActual);
		pyMostrarOpciones(pregspuestas, indexPregActual, arrOpciones, respIndexesDisponibles);
		pyVerificarRespuesta(pySolicitarRespuestaJugador(arrOpciones), arrOpciones, pregspuestas, indexPregActual, puntaje);
	FinPara
	
	pyMostrarPuntaje(puntaje);
FinSubProceso


// Cargamos todas las preguntas a la matriz y llenamos los arreglos con los indices posibles
subproceso pyCargarValores(nivel por valor, pregspuestas Por Referencia, pregIndexesDisponibles Por Referencia, respIndexesDisponibles Por Referencia, arrOpciones Por Referencia)
	definir i como entero;
	
	Si nivel = "basico" Entonces
		// Pregunta #1
		pregspuestas[0,0] <- "/n¿Qué función se utiliza para mostrar texto en pantalla en Python?";
		pregspuestas[0,1] <- "display()";
		pregspuestas[0,2] <- "show()";
		pregspuestas[0,3] <- "output()";
		pregspuestas[0,4] <- "print()";
		// Pregunta #2
		pregspuestas[1,0] <- "/n¿Cuál de las siguientes opciones crea una lista?";
		pregspuestas[1,1] <- "(1, 2, 3)";
		pregspuestas[1,2] <- "<1, 2, 3>";
		pregspuestas[1,3] <- "{1, 2, 3}";
		pregspuestas[1,4] <- "[1, 2, 3]";
		// Pregunta #3
		pregspuestas[2,0] <- "/n¿Qué tipo de dato representa un valor verdadero o falso?";
		pregspuestas[2,1] <- "int";
		pregspuestas[2,2] <- "float";
		pregspuestas[2,3] <- "str";
		pregspuestas[2,4] <- "bool";
		// Pregunta #4
		pregspuestas[3,0] <- "/n¿Cuál es el resultado de 3 + 2 * 4?";
		pregspuestas[3,1] <- "20";
		pregspuestas[3,2] <- "14";
		pregspuestas[3,3] <- "24";
		pregspuestas[3,4] <- "11";
		// Pregunta #5
		pregspuestas[4,0] <- "/n¿Qué símbolo se utiliza para escribir comentarios de una sola línea?";
		pregspuestas[4,1] <- "//";
		pregspuestas[4,2] <- "--";
		pregspuestas[4,3] <- "%";
		pregspuestas[4,4] <- "#";
	finsi
	si nivel = "intermedio" Entonces
		// Pregunta #1
		pregspuestas[0,0] <- "/n¿Qué da la expresión len([4,0,4])?";
		pregspuestas[0,1] <- "Error";
		pregspuestas[0,2] <- "1";
		pregspuestas[0,3] <- "2";
		pregspuestas[0,4] <- "3";
		// Pregunta #2
		pregspuestas[1,0] <- "/n¿Qué método agrega un elemento al final de una lista?";
		pregspuestas[1,1] <- "add()";
		pregspuestas[1,2] <- "insert()";
		pregspuestas[1,3] <- "extend()";
		pregspuestas[1,4] <- "append()";
		// Pregunta #3
		pregspuestas[2,0] <- "/n¿Cuál es el resultado de list(range(1, 5))?";
		pregspuestas[2,1] <- "[1, 2, 3, 4, 5]";
		pregspuestas[2,2] <- "[0, 1, 2, 3, 4]";
		pregspuestas[2,3] <- "[1, 5]";
		pregspuestas[2,4] <- "[1, 2, 3, 4]";
		// Pregunta #4
		pregspuestas[3,0] <- "/n¿Qué estructura se utiliza para manejar excepciones?";
		pregspuestas[3,1] <- "if / else";
		pregspuestas[3,2] <- "for / while";
		pregspuestas[3,3] <- "switch / case";
		pregspuestas[3,4] <- "try / except";
		// Pregunta #5
		pregspuestas[4,0] <- "¿Qué imprime el siguiente código?\n            x = [1, 2, 3]\n            print(x[-1])";		pregspuestas[4,1] <- "";
		pregspuestas[4,1] <- "1";
		pregspuestas[4,2] <- "2";
		pregspuestas[4,3] <- "Error";
		pregspuestas[4,4] <- "3";
	FinSi
	si nivel = "avanzado" Entonces
		// Pregunta #1
		pregspuestas[0,0] <- "¿Cuál es el resultado de la siguiente expresión?\n        [lambda: i for i in range(3)][0]()";
		pregspuestas[0,1] <- "Error";
		pregspuestas[0,2] <- "0";
		pregspuestas[0,3] <- "1";
		pregspuestas[0,4] <- "2";
		// Pregunta #2
		pregspuestas[1,0] <- "¿Qué imprime este código?\n       a = [1, 2]\n       b = a\n       b.append(3)\n       print(a)";
		pregspuestas[1,1] <- "[1, 2]";
		pregspuestas[1,2] <- "[3]";
		pregspuestas[1,3] <- "Error";
		pregspuestas[1,4] <- "[1, 2, 3]";
		// Pregunta #3
		pregspuestas[2,0] <- "/n¿Qué método especial se ejecuta automáticamente al crear una instancia de una clase?";
		pregspuestas[2,1] <- "start";
		pregspuestas[2,2] <- "newclass";
		pregspuestas[2,3] <- "create";
		pregspuestas[2,4] <- "init";
		// Pregunta #4
		pregspuestas[3,0] <- "¿Qué imprime el siguiente código?\n        print(type(type(5)))";
		pregspuestas[3,1] <- "<class ´int´>";
		pregspuestas[3,2] <- "<class ´object´>";
		pregspuestas[3,3] <- "<class ´class´>";
		pregspuestas[3,4] <- "<class ´type´>";
		// Pregunta #5
		pregspuestas[4,0] <- "/n¿Cuál es la principal ventaja de un generador (yield) frente a una lista?";
		pregspuestas[4,1] <- "Siempre es más rápido";
		pregspuestas[4,2] <- "Permite almacenar más tipos de datos";
		pregspuestas[4,3] <- "Puede modificar variables globales automáticamente";
		pregspuestas[4,4] <- "Consume menos memoria al generar valores bajo demanda";
	FinSi
	
	para i <- 0 hasta 4 con paso 1 Hacer
		pregIndexesDisponibles[i] <- ConvertirATexto(i); // [0, 1, 2, 3, 4] equivalen a las 5 preguntas
	FinPara
	
	pyReiniciarOpciones(respIndexesDisponibles, arrOpciones);
FinSubProceso

//  Llena el arreglo con los posibles indexes para las respuestas y reasigna los prefijos vacios ya que
// cada vez que se responde una pregunta estos se concatenan y necesitan estar limpios para la siguiente pregunta
SubProceso pyReiniciarOpciones(respIndexesDisponibles, arrOpciones)
	definir i como entero;
	para i <- 0 hasta 3 con paso 1 Hacer
		respIndexesDisponibles[i] <- ConvertirATexto(i+1);
	FinPara
	arrOpciones[0] <- "A. ";
	arrOpciones[1] <- "B. ";
	arrOpciones[2] <- "C. ";
	arrOpciones[3] <- "D. ";
FinSubProceso

//   Mostramos la pregunta, el código extra de subcadenas es para simular el uso de caracteres de escape y así
// poder mostrar varias preguntas o condiciones para ella usando una sola cadena
SubProceso pyMostrarPreg(pregspuestas por referencia, indexPregActual por valor, iteracionActual por valor)
	definir letra, ultimaPosSalto como entero;
	ultimaPosSalto <- 0;
	
	Escribir "";
	Escribir iteracionActual + 1, ". " sin saltar;
	
	//  Esta parte busca el caracter especial e imprime todo lo anterior a él. Guardando la posición en la que
	// estaba para no imprimir una sección ya mostrada y para volver a hacerlo cuantas veces sea necesario 
	// hasta que se llegue al final de la cadena
	si Subcadena(pregspuestas[indexPregActual, 0], 0, 1) <> "/n" Entonces
		para letra <- 0 Hasta longitud(pregspuestas[indexPregActual, 0]) Hacer
			si Subcadena(pregspuestas[indexPregActual, 0], letra, letra+1) = "\n" Entonces
				escribir Subcadena(pregspuestas[indexPregActual, 0], ultimaPosSalto, letra - 1);
				ultimaPosSalto <- letra + 2;
			SiNo
				si letra = longitud(pregspuestas[indexPregActual, 0]) Entonces
					escribir Subcadena(pregspuestas[indexPregActual, 0], ultimaPosSalto, letra);
				FinSi
			FinSi
		FinPara
	sino
		Escribir Subcadena(pregspuestas[indexPregActual, 0], 2, longitud(pregspuestas[indexPregActual, 0]));
	FinSi
FinSubProceso

//  Mostramos las opciones de la pregunta correspondiente, primero se concatenan los prefijos de arrOpciones con las
// opciones de la pregunta que haya tocado (esto nos sirve luego para verificar si lo que eligió el jugador es
// correcto). Luego se determina si la opcion A o C es más larga, esto para concatenar despues espacios
// especificos para que se vean simetricas por pantalla
SubProceso pyMostrarOpciones(pregspuestas, indexPregActual, arrOpciones, respIndexesDisponibles)
	definir i, indexOpcionActual, distanciaEspacio como entero;
	definir espacioCharsN, espacioChars8, espaciosParaA, espaciosParaC Como Caracter;
	
	pyReiniciarOpciones(respIndexesDisponibles, arrOpciones);
	espacioCharsN <- "";
	espacioChars8 <- "        ";
	
	escribir "";
	//  Concatenamos los prefijos con las opciones de la pregunta actual, de forma que los 
	// elementos pasen de  <arrOpciones[0] = "A. ">  a  <arrOpciones[0] = "A. print()"> 
	para i <- 0 hasta 3 Con Paso 1 Hacer
		indexOpcionActual <- pyObtenerPosicionValida(respIndexesDisponibles, 0, 3);
		arrOpciones[i] <- Concatenar(arrOpciones[i], pregspuestas[indexPregActual, indexOpcionActual + 1]);
	FinPara
	
	// calculamos la diferencia de espacio usando posiciones
	si longitud(arrOpciones[0]) > longitud(arrOpciones[2]) Entonces
		para distanciaEspacio <- (Longitud(arrOpciones[2]) + 1) Hasta Longitud(arrOpciones[0]) Hacer
			espacioCharsN <- Concatenar(espacioCharsN, " ");
		FinPara
		espaciosParaA <- espacioChars8;
		espaciosParaC <- Concatenar(espacioCharsN, espacioChars8);
	SiNo
		si longitud(arrOpciones[2]) > longitud(arrOpciones[0]) Entonces
			para distanciaEspacio <- (Longitud(arrOpciones[0]) + 1) Hasta Longitud(arrOpciones[2]) Hacer
				espacioCharsN <- Concatenar(espacioCharsN, " ");
			FinPara
			espaciosParaC <- espacioChars8;
			espaciosParaA <- Concatenar(espacioCharsN, espacioChars8);
		SiNo
			espaciosParaA <- espacioChars8;
			espaciosParaC <- espacioChars8;
		FinSi
	FinSi
	
	// mostramos las opciones ya con los espacios establecidos, de forma que nos quede:
	//  A    B              A  B
	//  C    D     y no:    C      D
	para i <- 0 Hasta 3 Hacer
		si i = 0 Entonces
			escribir arrOpciones[i], espaciosParaA sin saltar;
		SiNo
			si i = 2 Entonces
				escribir arrOpciones[i], espaciosParaC sin saltar;
			SiNo
				escribir arrOpciones[i];
			FinSi
		FinSi
	FinPara
FinSubProceso

//  Con esto podemos simular elegir un elemento de un arreglo de forma aleatoria en PSeInt, ya que no existe un pop().
// Conforme se usen los indices de preguntas u opciones, estos se van reemplazando con "none" forzando a que vuelva
// a tirar el dado en caso de que caiga en uno ya usado
funcion indexUsable <- pyObtenerPosicionValida(arrIndexesDisponibles por referencia, numMin por valor, numMax por valor)
	definir indexUsable como entero;
	definir posAzar como entero;
	definir espacioEncontrado Como Logico;
	Repetir
		posAzar <- Aleatorio(numMin,numMax);
		si arrIndexesDisponibles[posAzar] = "none" Entonces
			espacioEncontrado <- falso;
		SiNo
			espacioEncontrado <- Verdadero;
			arrIndexesDisponibles[posAzar] <- "none";
		FinSi
	Hasta Que espacioEncontrado
	indexUsable <- posAzar;
FinFuncion

// Devuelve la respuesta que eligió el jugador en forma de posición, no letra. Esto para luego poder hacer
// arrOpciones[decision] sin recurrir a un bucle. También incluye una advertencia si se ingresa algo que no sea
// a, b, c, d
funcion decisionJugadorIndex <- pySolicitarRespuestaJugador(arrOpciones)
	definir decisionJugador Como Caracter;
	definir decisionJugadorIndex, i como entero;
	definir respEsValida como logico;
	respEsValida <- falso;
	Repetir
		Escribir "";
		Escribir "Ingresa tu respuesta: " sin saltar;
		leer decisionJugador;
		para i <- 0 Hasta 3 Hacer
			si minusculas(decisionJugador) = Minusculas(Subcadena(arrOpciones[i], 0, 0)) Entonces
				decisionJugadorIndex <- i;
				respEsValida <- verdadero;
			FinSi
		FinPara
		si no respEsValida Entonces
			Escribir "";
			Escribir "(!) Por favor ingresa una opción válida. Por ejemplo: a (solo y sin espacios)";
			Esperar 2 segundos;
		FinSi
	Hasta Que respEsValida
FinFuncion

// Compara lo que está después del prefijo en arrOpciones con lo que hay en pregspuestas[i,4]
// Ej: arrOpciones[0] es "A. append()", su subcadena entonces seria "append()", y lo que esta en pregspuestas[i,4] también seria "append()" 
SubProceso pyVerificarRespuesta(respuestaJugador, arrOpciones, pregspuestas, indexPregActual, puntaje Por Referencia)
	definir tiempoSuspenso, i como entero;
	tiempoSuspenso <- 1;
	
	Escribir "";
	Escribir "Y tu respuesta es..." sin saltar;
//	para i <- 1 Hasta 3 Hacer
//		Escribir "." sin saltar;
//		esperar tiempoSuspenso segundo;
//	FinPara
	esperar tiempoSuspenso segundo;
	si subcadena(arrOpciones[respuestaJugador], 3, longitud(arrOpciones[respuestaJugador])) = pregspuestas[indexPregActual, 4] Entonces
		si Aleatorio(0,1) = 1 Entonces
			Escribir "  (^^)//´´ CORRECTA!! \^o^/" sin saltar;
		SiNo
			Escribir "  \^o^/ CORRECTA!! (^^)//´´" sin saltar;
		FinSi
		esperar tiempoSuspenso Segundos;
		escribir "    +20 puntos ($_$)";
		// aqui se incrementa el puntaje, en unidad porque luego se multiplica
		puntaje <- puntaje + 1;
	SiNo
		si Aleatorio(0,1) = 1 Entonces
			Escribir "  (x _ X) INCORRECTA!! (~_~ )";
		SiNo
			Escribir "  (~_~ ) INCORRECTA!! (x _ X)";
		FinSi
	FinSi
	esperar tiempoSuspenso segundo;
FinSubProceso

// Finalmente mostramos los resultados, el puntaje es 100/n°preguntas. Incluye arte ASCII.
SubProceso pyMostrarPuntaje(puntaje Por Referencia)
	definir puntajePartida, puntajeTotal como entero;
	puntajePartida <- 20*puntaje;
	puntajeTotal <- 100;
	Escribir "";
	Escribir "";
	Escribir "Felicidades! Completaste la trivia de Python";
	Escribir "Vamos a ver, tu puntaje final es...";
	esperar 2 Segundos;
	si puntajePartida = 0 Entonces
		pyMostrarASCIIPuntaje0(puntajePartida, puntajeTotal);
	SiNo
		si puntajePartida = 20 Entonces
			pyMostrarASCIIPuntaje20(puntajePartida, puntajeTotal);
		SiNo
			si puntajePartida = 40 Entonces
				pyMostrarASCIIPuntaje40(puntajePartida, puntajeTotal);
			SiNo
				si puntajePartida = 60 Entonces
					pyMostrarASCIIPuntaje60(puntajePartida, puntajeTotal);
				SiNo
					si puntajePartida = 80 Entonces
						pyMostrarASCIIPuntaje80(puntajePartida, puntajeTotal);
					SiNo
						si puntajePartida = 100 Entonces
							pyMostrarASCIIPuntaje100(puntajePartida, puntajeTotal);
						SiNo
							escribir "   (!!!) ERROR FATAL";
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	escribir "";
	escribir "";
	Escribir "(!) Presione cualquier tecla para volver al menu";
	esperar tecla;
FinSubProceso

SubProceso pyMostrarASCIIPuntaje0(puntajePartida, puntajeTotal)
	escribir "";
	escribir "________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶";
	escribir "______¶¶¶¶¶¶_____________¶¶¶¶¶¶";
	escribir "_____¶¶¶¶¶_________________¶¶¶¶¶¶";
	escribir "____¶¶¶¶_____________________¶¶¶¶¶";
	escribir "___¶¶¶¶_______________________¶¶¶¶¶";
	escribir "__¶¶¶¶_____¶__¶_______¶__¶______¶¶¶";
	escribir "__¶¶¶_______¶¶_________¶¶_______¶¶¶¶   /---------------------------------------\";
	escribir "_¶¶¶¶_______¶¶_________¶¶________¶¶¶   |  ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~  |";
	escribir "_¶¶¶_______¶__¶_______¶__¶_______¶¶¶¶  |                                       |";
	escribir "_¶¶¶______________________________¶¶¶  |            Qué has hecho...           |";
	escribir "_¶¶¶______________________________¶¶¶  \---------------------------------------/";
	escribir "_¶¶¶______________________________¶¶¶";
	escribir "_¶¶¶____________¶¶¶¶¶____________¶¶¶¶";
	escribir "_¶¶¶¶________¶¶¶¶¶¶¶¶¶¶¶_________¶¶¶";
	escribir "__¶¶¶______¶¶¶¶¶_____¶¶¶¶¶______¶¶¶¶";
	escribir "__¶¶¶¶____¶¶¶___________¶¶¶____¶¶¶¶";
	escribir "___¶¶¶¶___¶¶¶___________¶¶¶___¶¶¶¶";
	escribir "____¶¶¶¶____________________¶¶¶¶¶";
	escribir "_____¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶";
FinSubProceso

SubProceso pyMostrarASCIIPuntaje20(puntajePartida, puntajeTotal)
	escribir "";
	escribir "________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶";
	escribir "______¶¶¶¶¶¶_____________¶¶¶¶¶¶";
	escribir "_____¶¶¶¶¶_________________¶¶¶¶¶¶";
	escribir "____¶¶¶¶_____________________¶¶¶¶¶";
	escribir "___¶¶¶¶_______________________¶¶¶¶¶";
	escribir "__¶¶¶¶_____¶¶¶¶_______¶¶¶¶______¶¶¶";
	escribir "__¶¶¶_____¶¶¶¶¶¶_____¶¶¶¶¶¶_____¶¶¶¶   /---------------------------------------\";
	escribir "_¶¶¶¶_____¶¶¶¶¶¶_____¶¶¶¶¶¶______¶¶¶   | ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~  |";
	escribir "_¶¶¶_______¶¶¶¶_______¶¶¶¶_______¶¶¶¶  |                                       |";
	escribir "_¶¶¶______________________________¶¶¶  |               Ay ay ay...             |";
	escribir "_¶¶¶______________________________¶¶¶  \---------------------------------------/";
	escribir "_¶¶¶______________________________¶¶¶";
	escribir "_¶¶¶____________¶¶¶¶¶____________¶¶¶¶";
	escribir "_¶¶¶¶________¶¶¶¶¶¶¶¶¶¶¶_________¶¶¶";
	escribir "__¶¶¶______¶¶¶¶¶_____¶¶¶¶¶______¶¶¶¶";
	escribir "__¶¶¶¶____¶¶¶___________¶¶¶____¶¶¶¶";
	escribir "___¶¶¶¶___¶¶_____________¶¶___¶¶¶¶";
	escribir "____¶¶¶¶____________________¶¶¶¶¶";
	escribir "_____¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶";
FinSubProceso

SubProceso pyMostrarASCIIPuntaje40(puntajePartida, puntajeTotal)
	escribir "";
	escribir "11111111111¶¶¶¶¶¶¶_____¶¶¶¶¶¶¶";
	escribir "1111111¶¶¶¶¶________________¶¶¶¶¶";
	escribir "11111¶¶¶¶______________________¶¶¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1¶¶_______¶¶¶¶¶_________¶¶¶¶¶________¶¶";
	escribir "¶¶_______¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶________¶¶   /---------------------------------------\";
	escribir "¶________¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶_________¶¶  | ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~  |";
	escribir "¶_________¶¶¶¶¶_________¶¶¶¶¶__________¶¶  |                                       |";
	escribir "¶______________________________________¶¶  |         Deja mucho que desear         |";
	escribir "¶______________________________________¶¶  \---------------------------------------/";
	escribir "¶¶________¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶__________¶¶";
	escribir "1¶¶_____¶¶¶¶______________¶¶¶¶_______¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "111111¶¶¶______________________¶¶¶";
	escribir "111111111¶¶¶________________¶¶¶";
	escribir "11111111111¶¶¶¶¶¶______¶¶¶¶¶¶";
FinSubProceso

SubProceso pyMostrarASCIIPuntaje60(puntajePartida, puntajeTotal)
	escribir "";
	escribir "11111111111¶¶¶¶¶¶¶_____¶¶¶¶¶¶¶";
	escribir "1111111¶¶¶¶¶________________¶¶¶¶¶";
	escribir "11111¶¶¶¶______________________¶¶¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1¶¶_______¶¶¶¶¶_________¶¶¶¶¶________¶¶";
	escribir "¶¶_______¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶________¶¶   /---------------------------------------\";
	escribir "¶________¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶_________¶¶  | ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~  |";
	escribir "¶_________¶¶¶¶¶_________¶¶¶¶¶__________¶¶  |                                       |";
	escribir "¶______________________________________¶¶  |     Bien hecho! Puedes ir por más?    |";
	escribir "¶______________________________________¶¶  \---------------------------------------/";
	escribir "¶¶___________¶¶¶¶_____¶¶¶¶____________¶¶";
	escribir "1¶¶_____________¶¶¶¶¶¶¶¶_____________¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "111111¶¶¶______________________¶¶¶";
	escribir "111111111¶¶¶________________¶¶¶";
	escribir "11111111111¶¶¶¶¶¶______¶¶¶¶¶¶";
FinSubProceso

SubProceso pyMostrarASCIIPuntaje80(puntajePartida, puntajeTotal)
	escribir "";
	escribir "11111111111¶¶¶¶¶¶¶_____¶¶¶¶¶¶¶";
	escribir "1111111¶¶¶¶¶________________¶¶¶¶¶";
	escribir "11111¶¶¶¶______________________¶¶¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1¶¶_______¶¶¶¶¶_________¶¶¶¶¶________¶¶";
	escribir "¶¶_______¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶________¶¶   /---------------------------------------\";
	escribir "¶________¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶_________¶¶  | ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~  |";
	escribir "¶_________¶¶¶¶¶_________¶¶¶¶¶__________¶¶  |                                       |";
	escribir "¶______________________________________¶¶  |     Excelente! Así es cómo se hace    |";
	escribir "¶______¶¶¶__________________¶¶¶________¶¶  \---------------------------------------/";
	escribir "¶¶_______¶¶¶______________¶¶¶_________¶¶";
	escribir "1¶¶________¶¶¶¶________¶¶¶¶__________¶¶";
	escribir "11¶¶_________¶¶¶¶¶¶¶¶¶¶¶¶___________¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "111111¶¶¶______________________¶¶¶";
	escribir "111111111¶¶¶________________¶¶¶";
	escribir "11111111111¶¶¶¶¶¶______¶¶¶¶¶¶";
FinSubProceso

SubProceso pyMostrarASCIIPuntaje100(puntajePartida, puntajeTotal)
	escribir "";
	escribir "11111111111¶¶¶¶¶¶¶_____¶¶¶¶¶¶¶";
	escribir "1111111¶¶¶¶¶________________¶¶¶¶¶";
	escribir "11111¶¶¶¶______________________¶¶¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "11¶¶________________________________¶¶";
	escribir "1¶¶_______¶¶¶¶¶_________¶¶¶¶¶________¶¶";
	escribir "¶¶_______¶¶¶¶¶¶¶_______¶¶¶¶¶¶¶________¶¶   /---------------------------------------\";
	escribir "¶________¶¶___¶¶_______¶¶___¶¶_________¶¶  | ~-~*~-~*~-~> [ ", puntajePartida, "/", puntajeTotal, " ] <~-~*~-~*~-~ |";
	escribir "¶________¶_____¶_______¶_____¶_________¶¶  |                                       |";
	escribir "¶______________________________________¶¶  |      PERFECTO!!! Campeão do mundo     |";
	escribir "¶______¶¶¶__________________¶¶¶________¶¶  \---------------------------------------/";
	escribir "¶¶_______¶¶¶______________¶¶¶_________¶¶";
	escribir "1¶¶________¶¶¶¶________¶¶¶¶__________¶¶";
	escribir "11¶¶_________¶¶¶¶¶¶¶¶¶¶¶¶___________¶¶";
	escribir "1111¶¶____________________________¶¶";
	escribir "111111¶¶¶______________________¶¶¶";
	escribir "111111111¶¶¶________________¶¶¶";
	escribir "11111111111¶¶¶¶¶¶______¶¶¶¶¶¶";
FinSubProceso

// -oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-oo-
