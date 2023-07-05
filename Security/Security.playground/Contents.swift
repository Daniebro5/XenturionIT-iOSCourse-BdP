/*
 Seguridad en iOS y Swift es un tema extenso, pero aquí hay una descripción general de algunos mecanismos clave y su importancia:

 1. **Sandboxing:** Las aplicaciones de iOS están "enjauladas" o aisladas entre sí, lo que significa que una aplicación no puede acceder a los datos de otra aplicación a menos que se otorgue permiso explícito. Este aislamiento protege la privacidad del usuario y limita el daño que podría hacer una aplicación malintencionada.

 2. **Sistema de permisos:** Las aplicaciones de iOS deben solicitar permiso al usuario para acceder a datos sensibles como la ubicación, la cámara, el micrófono, los contactos, etc. Esto garantiza que el usuario tenga control sobre su información personal.

 3. **Encriptación de datos:** iOS ofrece encriptación tanto en reposo (cuando los datos están almacenados en el dispositivo) como en tránsito (cuando los datos se envían a través de la red). La encriptación en reposo es manejada por el sistema de archivos del dispositivo, mientras que la encriptación en tránsito puede ser implementada usando APIs como URLSession, que admite HTTPS.

 4. **Keychain:** Keychain es una forma segura de almacenar pequeñas piezas de datos sensibles, como contraseñas y tokens de autenticación. Los datos almacenados en el llavero están encriptados y son accesibles solo para tu aplicación, a menos que se configure explícitamente de otra manera.

 5. **Firma de código y App Store Review:** Todas las aplicaciones de la App Store están firmadas digitalmente por el desarrollador y revisadas por Apple para asegurar que cumplen con ciertas pautas de privacidad y seguridad. Esto añade una capa adicional de confianza en las aplicaciones.

 6. **Protección de la memoria:** Swift tiene varias características que ayudan a prevenir errores de memoria comunes que pueden llevar a problemas de seguridad. Por ejemplo, Swift evita el desbordamiento de buffer al verificar que los índices de los arrays son válidos antes de permitir el acceso a ellos.

 Estos son solo algunos de los mecanismos de seguridad en iOS y Swift. La seguridad es una parte crucial del desarrollo de aplicaciones, y conocer y entender estos mecanismos te permitirá construir aplicaciones que respeten la privacidad y seguridad de tus usuarios.
 
 
 
 Protección - Uso Desautorizado - Corrupción de datos - Uso Accidental
 Firmas digitales por defecto sobre HTTPS
 
 Tipos de datos de usuario:
    - Datos en movimiento: En transito, conexiones de red
    - Datos en uso: aquellos que están en memoria siendo utilizados
    - Datos en reposo: Datos escritos en disco, sin usar
 
 
 
 Datos en movimiento:
    - Razón original de encriptación
    - TLS -> Autenticar y pasar los datos encriptados (HTTPS)
 
 Datos en uso:
    - protegidos por autenticación de usuario (LocalAuth)
    - Biometricos o contraseña
 
 Datos en reposo:
    - Encriptación guardado
        - Protegido hasta primera autenticación (defecto)
            datos protegidos desde el encendido hasta que el usuario se autentica por primera vez, luego se mantienen sin cifrar incluso si el dispositivo está bloqueado
        - Completo: Los datos son accesibles solo cuando el dispositivo está desbloqueado, el archivo está abierto y se bloquea, sigue abierto.
        - Completo hasta abrir: si el archivo está abierto y el dispositivo se bloquea, todavía será accesible, pero si el archivo está cerrado cuando el dispositivo se bloquea, no será accesido hasta que el dispositivo se desbloquee
 
 Almacenar las llaves de encriptación, contraseñas, datos sensibles pequeños en el Keychain o en el iCloud Keychain
 
 Llaves: P8, P12, P256 ...
 
 Dispositivos desde el 2013, tienen un nuevo chip de seguridad, AppleEnclave,
 UID de 256 bits dedicado en cada teléfono.
 
 Llaves y datos en el SecureEnclave nunca se destruyen y nunca dejan este procesador, no puedes copiar las cosas, solo las puedes leer en operaciones indirectas como el KeyChain o el FaceID.

 Escribir mi propio algoritmo o sistema de encriptación? NO
 
 
 */
