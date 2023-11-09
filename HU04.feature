User Story: Ingreso de historial medico

Feature: Ingreso de historial medico

Como usuario, deseo ingresar mi historial médico para que el fisioterapeuta que contacte pueda conocer detalladamente mi condición física.

Criterio de Aceptación #1
Scenario: Usuario adjunta un historial médico al registrarse en la aplicación

Given el usuario ha rellenado el formulario de registro de cuenta
And le da a "Confirmar"
And se presenta la sección para subir su historial médico
When selecciona la opción "Subir"
And adjunta un archivo en formato de documento portable (Portable Document Format o PDF)
Then se muestra un mensaje de confirmación: "Archivo adjuntado con éxito"

Criterio de Aceptación #2
Scenario: Usuario sube un historial médico desde su perfil

Given el usuario cuenta con una sesión iniciada como paciente
And se encuentra en la sección "Mi perfil"
When selecciona la opción "Añadir historial médico"
And selecciona un archivo en formato de documento portable (Portable Document Format o PDF)
Then el sistema registra su historial médico.
And se muestra un mensaje de confirmación: "Archivo adjuntado con éxito"

Criterio de Aceptación #3
Scenario: Usuario adjunta un archivo invalido

Given el usuario cuenta con una sesión iniciada como paciente
And se encuentra en la sección "Mi perfil"
When selecciona la opción "Añadir historial médico"
And selecciona un archivo que no se encuentra en el formato de documento portable (Portable Document Format o PDF)
Then se presenta el mensaje: "Documento invalido", dentro de un cuadro de dialogo.