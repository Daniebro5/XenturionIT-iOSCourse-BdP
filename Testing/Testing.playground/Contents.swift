import XCTest

var greeting = "Hello, Tests!"

/*
 FIRST (TDD -> Las pruebas primero)
 
 Fast: Deben correr rápidamente
 Independent/Isolated: No deben compartir estado entre ellas
 Repeatable: Deberías obtener el mismo resultado independientemente de cuando corras la prueba
 Self-validating: Completamente automatizada, y la salida debe ser Pass/Fail
 Timely: TDD -> Idealmente las pruebas van primero
 
 
 *** Qué es lo que debo probar? ******
 
 En general, las pruebas deberían cubrir:
    - Funcionalidad Core (Lo que brinda valor al cliente y lo que da plata a la empresa): Clases Model, métodos e interacciones de la lógica de negocio
    - Los workflow más comunes de UI (En conjunto con Analítica)
    - Casos de Borde (Peticiones de miles de archivos o cero archivos por rjemplo): cubrir casos extremos
    - Bug Fixes: Para que al introducir nuevo código, no ocurre un Regression
 */
