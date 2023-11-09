User Story: Visualización del progreso de la terapia

Feature: Visualización del progreso de la terapia

Como usuario, deseo poder realizar un seguimiento claro del progreso de la terapia para conocer cuanto he avanzado en ella.

Criterio de Aceptación #1
Scenario: Usuario visualiza su progreso

Given el usuario tiene una sesión iniciada como paciente
And cuenta con una terapia dentro de la aplicación
When abre la sección "Inicio"
Then se presenta la información del progreso de su terapia.