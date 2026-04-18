Algoritmo ProcesoSistemaCitasMedicas
		Definir opcion Como Entero
		
		Repetir
			Escribir "===== SISTEMA DE CITAS MEDICAS ====="
			Escribir "1. Registrar medico"
			Escribir "2. Registrar paciente"
			Escribir "3. Agendar cita"
			Escribir "4. Salir"
			Leer opcion
			
			Segun opcion Hacer
				1:
					RegistrarMedico
				2:
					RegistrarPaciente
				3:
					AgendarCita
				4:
					Escribir "Saliendo del sistema..."
				De Otro Modo:
					Escribir "Opcion invalida"
			FinSegun
			
		Hasta Que opcion = 4
FinProceso


SubProceso RegistrarMedico
    Definir nombre, especialidad Como Cadena
    
    Escribir "Ingrese nombre del medico:"
    Leer nombre
    
    Escribir "Ingrese especialidad:"
    Leer especialidad
    
    Escribir "Medico registrado correctamente"
FinSubProceso


SubProceso RegistrarPaciente
    Definir nombre Como Cadena
    
    Escribir "Ingrese nombre del paciente:"
    Leer nombre
    
    Escribir "Paciente registrado correctamente"
FinSubProceso


SubProceso AgendarCita
    Definir medico, especialidad, fecha, hora Como Cadena
    Definir disponible, especialidad_valida Como Logico
    
    Escribir "Ingrese nombre del medico:"
    Leer medico
    
    Escribir "Ingrese especialidad requerida:"
    Leer especialidad
    
    Escribir "Ingrese fecha:"
    Leer fecha
    
    Escribir "Ingrese hora:"
    Leer hora
    
    disponible <- VerificarDisponibilidad(medico, fecha, hora)
    especialidad_valida <- ValidarEspecialidad(medico, especialidad)
    
    Si disponible Y especialidad_valida Entonces
        Escribir "Cita agendada correctamente"
    SiNo
        Escribir "Error: No se puede agendar la cita"
    FinSi
FinSubProceso


Funcion disponible <- VerificarDisponibilidad(medico, fecha, hora)
    Definir disponible Como Logico
    
    disponible <- Verdadero
    
FinFuncion


Funcion valido <- ValidarEspecialidad(medico, especialidad)
    Definir valido Como Logico
    
    valido <- Verdadero
    
	
FinFuncion
	
