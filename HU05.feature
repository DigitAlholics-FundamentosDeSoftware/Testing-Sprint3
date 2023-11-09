User Story: Ingreso de perfil profesional

Feature: Ingreso de perfil profesional

Como fisioterapeuta, deseo ingresar los detalles de mi formación profesional para que los usuarios conozcan mis habilidades y mi experiencia.

Criterio de Aceptación #1
Scenario: Usuario ingresa su perfil profesional al registrarse en la aplicación

Given el usuario ha rellenado el formulario para el registro de cuenta
And le da a "Confirmar"
And se presenta el formulario para ingresar su perfil profesional
And coloca su especialización en el campo "Especialización"
And coloca en su centro de estudios en el campo "Centro de Estudios"
And coloca sus años de experiencia en el campo "Años de experiencia"
When presiona el botón "Confirmar"
Then el sistema registra los datos de su perfil profesional.
And se presenta el mensaje: "Perfil profesional registrado"

Criterio de Aceptación #2
Scenario: Usuario modifica su perfil profesional

Given el usuario cuenta con una sesión iniciada como fisioterapeuta
And se encuentra en la sección "Mi perfil"
When selecciona la opción "Perfil Profesional"
Then el sistema presenta el formulario para el ingreso del perfil profesional.

Criterio de Aceptación #3
Scenario: Usuario actualiza su perfil profesional

Given el usuario se encuentra en el formulario para el ingreso del perfil académico
And coloca su especialización en el campo "Especialización"
And coloca en su centro de estudios en el campo "Centro de Estudios"
And coloca sus años de experiencia en el campo "Años de experiencia"
When presiona el botón "Confirmar"
Then el sistema registra los datos de su perfil profesional.
And se presenta el mensaje: "Perfil profesional actualizado"