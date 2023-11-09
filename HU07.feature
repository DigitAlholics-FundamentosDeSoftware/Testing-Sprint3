User Story: Creación de terapia

Feature: Creación de terapia

Como fisioterapeuta, deseo poder crear una terapia personalizada por cada paciente para poder brindarles mis servicios.

Criterio de Aceptación #1
Scenario: Usuario crea una terapia

Given el usuario tiene una sesión iniciada como fisioterapeuta
When abre la sección "Mis pacientes"
Then se presenta la lista de pacientes con sus datos: Nombre, tópico de la terapia y foto de perfil.

Criterio de Aceptación #2
Scenario: Usuario visualiza detalles de un paciente

Given el usuario se encuentra en la sección "Mis pacientes"
When selecciona un paciente de la lista
Then se presentan los datos del paciente: Nombre, tópico y foto de perfil.
And se muestran los botones "Historial Médico", "Citas médicas" y "Terapia"

Criterio de Aceptación #3
Scenario: Usuario inicia la creación de una terapia para un paciente

Given el usuario está en el perfil de un paciente
When presiona el botón "Terapia"
Then se presenta el campo "Título de la terapia",
And el campo "Descripción"
And una línea de tiempo con días calendario con la sección de "Actividades por día".

Criterio de Aceptación #4
Scenario: Usuario completa los detalles de la terapia

Given el usuario está en la vista de la terapia
And coloca el título de la terapia en el campo "Titulo de la terapia"
And coloca la descripción en el campo "Descripción"
When selecciona un día de la línea de tiempo
Then se presentan las opciones "Subir Video de Ejercicios" y "Agendar cita presencial"

Criterio de Aceptación #5
Scenario: Usuario sube un video de ejercicios para la terapia

Given el usuario ha seleccionado un día de la línea de tiempo
And se presentan las opciones "Subir Video de Ejercicios"
When presiona el botón "Subir Video"
Then se presenta el formulario para subir un video de ejercicios

Criterio de Aceptación #6
Scenario: Usuario publica un video de ejercicios

Given el usuario está en el formulario para subir un video de ejercicios
And coloca el título del video en el campo "Titulo del video"
And coloca la descripción del video en el campo "Descripción del video"
And adjunta un video desde su administrador de archivos
When presiona el botón "Publicar video de ejercicios"
Then se publica el video para el día seleccionado
And se muestra el mensaje "Video publicado"

Criterio de Aceptación #7
Scenario: Usuario agenda una cita presencial en la terapia

Given el usuario ha seleccionado un día de la línea de tiempo
And se presentan las opciones "Agendar cita presencial"
When presiona el botón "Agendar cita presencial"
Then se presenta el formulario para agendar una cita presencial

Criterio de Aceptación #8
Scenario: Usuario completa el formulario de cita presencial

Given el usuario está en el formulario para agendar una cita presencial
And coloca el motivo de la cita en el campo "Motivo de la cita"
And selecciona la hora en el campo "Hora"
When presiona el botón "Agendar cita"
Then se agenda la cita para el día seleccionado
And se muestra el mensaje "Cita Agendada"