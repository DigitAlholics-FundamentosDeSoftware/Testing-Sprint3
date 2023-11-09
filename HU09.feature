User Story: Búsqueda de fisioterapeutas

Feature: Búsqueda de fisioterapeutas

Como usuario, deseo buscar fisioterapeutas ingresando su nombre en el buscador para encontrar al especialista de forma rápida.

Criterio de Aceptación #1
Scenario: Usuario busca un fisioterapeuta por su nombre

Given el usuario se encuentra en la sección "Fisioterapeutas"
And el sistema presenta la sección "Buscar" en la parte superior de la pantalla
When el usuario ingresa el nombre del fisioterapeuta en el campo "Buscar"
Then el sistema presenta los fisioterapeutas con nombres que coinciden con el nombre ingresado.

Criterio de Aceptación #2
Scenario: Usuario no encuentra resultados que coincidan con la búsqueda

Given el usuario se encuentra en la sección "Fisioterapeutas"
And el sistema presenta la sección "Buscar" en la parte superior de la pantalla
When el usuario ingresa el nombre del fisioterapeuta en el campo "Buscar"
And no existen fisioterapeutas registrados con el nombre ingresado
Then se presenta el mensaje: "No se encontraron resultados", en pantalla.