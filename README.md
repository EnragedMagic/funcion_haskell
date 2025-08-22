# funcion_haskell
# Funcion Sucesora Haskell


| Caso                   | Entrada           | Salida                                   |
| ---------------------- | ----------------- | ---------------------------------------- |
| **Suma**               | `add 3 4`         | `7`                                      |
| **Multiplicacion**     | `multiplicar 3 4` | `12`                                     |
| **Resta**              | `restar 10 4`     | `6`                                      |
| **Division**           | `dividir 20 5`    | `4`                                      |
| **Division por 0**     | `dividir 5 0`     | Error: `"Division por cero no definida"` |
| **Suma real**          | `addReal 3.5 2.7` | `6.2`                                    |
| **Resta con negativo** | `restar 4 10`     | `-6`                                     |


---
# Observaciones

- La funcion sucesor (sucesor n = n+1) y la funcion predecesor (predecesor n = n-1) son la base de todas las operaciones.

- La suma y la multiplicacion se implementan aplicando sucesivamente el sucesor.

- La resta y la division se implementan aplicando sucesivamente el predecesor.

- En los enteros, sucesor y predecesor tienen sentido natural.

- En los reales, no existe un "sucesor inmediato", por lo que se usa directamente la suma aritmetica.

- La division por 0 no esta definida y en este proyecto se controla con un error explicito.

- No se puede dividir por 0 porque no existe un resultado valido.

  Con Int → error en ejecucion (divide by zero).

  Con Float/Double → x/0 da Infinity, y 0/0 da NaN.
