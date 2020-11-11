import Control.Monad

-- Gomez Fuentes Alexsandro
-- ejecutar con "main"

-- funciones basicas
fib :: Int -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
------------------------------------------
mainit :: IO ()
mainit = forM_ [0..10] print
--------------------------------------------
listmenos' :: Int -> [a] -> [a]
listmenos' _ [] = []
listmenos' 0 list1 = list1
listmenos' x list1 = listmenos' (x-1) (init list1) 

----------------------------------------
factorial :: Int -> Int
factorial x = product [1..x]
------------------------------------------
testPalindromo :: String -> Bool
testPalindromo w = w == reverse w
---------------------------------------------

-- funciones del menu

opcion1 = do
    putStrLn ("ingresa posicion: ")
    num <- getLine
    let a = read num::Int
    print(fib a)
    main
-----------------------
opcion2 = do
    putStrLn ("numeros 1- 10: ")
    mainit
    main
-----------------------
opcion3 = do
    let a = [1..10]
    print(a)
    let b = init a
    print(b)
    let c = init b
    print(c)
    let d = init c
    print(d)
    let f = init d
    print(f)
    let g = init f
    print(g)
    let h = init g
    print(h)
    let i = init h
    print(i)
    let j = init i
    print(j)
    let k = init j
    print(k)
    main
-----------------------
opcion4 = do
    putStrLn ("ingresa numero: ")
    num <- getLine
    let a = read num::Int
    print(factorial a)
    main
-----------------------
opcion5 = do
    putStrLn ("inngresa palabra: ")
    str <- getLine
    print(testPalindromo str)
    main
-----------------------
opcion6 = do
    putStrLn ("1.Suma \n2.resta \n3.divi \n4.multi \n5.salir")
    num2 <- getLine
    case num2 of
            "1" -> suma
            "2" -> resta
            "3" -> divi
            "4" -> multi
            "5" -> putStrLn ("salio")
    main
-----------------------         
main :: IO ()
main = do
    putStrLn ("1.Serie Fibonacci \n2.Numeros 1-10 \n3.Factorial \n4.Desaparece números: \n5.Palíndromos \n6.Menú de calculadora \n7.salir")
    num <- getLine
    case num of
        "1" -> opcion1
        "2" -> opcion2
        "3" -> opcion3
        "4" -> opcion4
        "5" -> opcion5
        "6" -> opcion6
        "7" -> putStrLn ("fin")
        
---------------------------------------
--codigo del clase
suma=do
    putStrLn ("Numero 1 es:")
    x <- getLine
    putStrLn ("Numero 2 es:")
    y <- getLine
    let equis = read x::Int
    let ye = read y::Int
    let resu= equis + ye
    putStrLn("Resultado: "++show resu)

resta=do
    putStrLn ("Numero 1 es:")
    x <- getLine
    putStrLn ("Numero 2 es:")
    y <- getLine
    let equis = read x::Int
    let ye = read y::Int
    let resu= equis - ye
    putStrLn("Resultado: "++show resu)

multi=do
    putStrLn ("Numero 1 es:")
    x <- getLine
    putStrLn ("Numero 2 es:")
    y <- getLine
    let equis = read x::Int
    let ye = read y::Int
    let resu= equis * ye
    putStrLn("Resultado: "++show resu)

divi= do
    putStrLn ("Numero 1 es:")
    x <- getLine
    putStrLn ("Numero 2 es:")
    y <- getLine
    let equis = read x::Int
    let ye = read y::Int
    let resu= div equis ye
    putStrLn("Resultado: "++show resu)