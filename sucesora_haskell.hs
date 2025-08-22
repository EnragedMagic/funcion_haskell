-- Definicion de la funcion sucesora
sucesor :: Int -> Int
sucesor n = n + 1

-- Definicion de la funcion predecesora
predecesor :: Int -> Int
predecesor n = n - 1

-- Parte 1: Suma y multiplicacion con sucesor

-- Suma de dos enteros positivos usando sucesor
add :: Int -> Int -> Int
add a 0 = a
add a b = add (sucesor a) (b - 1)

-- Multiplicacion de dos enteros positivos usando suma repetida
multiplicar :: Int -> Int -> Int
multiplicar _ 0 = 0
multiplicar a b = add a (multiplicar a (b - 1))

-- Parte 2: Resta y division con predecesor

-- Resta de dos enteros positivos usando predecesor
restar :: Int -> Int -> Int
restar a 0 = a
restar a b = restar (predecesor a) (b - 1)

-- Division de dos enteros positivos usando restas repetidas
dividir :: Int -> Int -> Int
dividir _ 0 = error "Division por cero no definida"
dividir a b
    | a < b     = 0
    | otherwise = 1 + dividir (restar a b) b

-- Parte 3: Numeros reales con sucesor (conceptual)

addReal :: Float -> Float -> Float
addReal x y = x + y

-- Ejemplos de prueba en main
main :: IO ()
main = do
    putStrLn "Parte 1:"
    print (add 3 4)              -- 7
    print (multiplicar 3 4)      -- 12

    putStrLn "Parte 2:"
    print (restar 10 4)          -- 6
    print (dividir 20 5)         -- 4
    -- print (dividir 5 0)       -- error: Division por cero no definida

    putStrLn "Parte 3:"
    print (addReal 3.5 2.7)      -- 6.2
