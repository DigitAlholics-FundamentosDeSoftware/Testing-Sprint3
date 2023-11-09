User Story: Envío de diagnóstico

Feature: Envío de diagnóstico

Como fisioterapeuta, deseo enviar un diagnóstico de la consulta para que el paciente pueda visualizarlo.

Criterio de Aceptación #1
Scenario: Usuario envía los resultados de la consulta

Given el usuario está en la sección "Citas Médicas"
When selecciona una cita médica de la lista
Then el sistema presenta el nombre del paciente, el tópico de la cita, la fecha de la cita, la hora de la cita, el campo "Diagnostico" y el botón "Enviar Diagnostico".

Criterio de Aceptación #2
Scenario: Usuario redacta y envía el diagnóstico

Given el usuario redacta el diagnóstico de la cita en el campo "Diagnostico"
When presiona el botón "Enviar Diagnostico"
Then el sistema registra el diagnóstico del paciente.
And se muestra el mensaje "Diagnostico registrado".
And el sistema actualiza el estado de la cita médica