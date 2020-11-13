
mesesnom=["Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"]
main = do
    let dias =[1..31]
    putStrLn ("introudce tu dia de nacimeinto: ") 
    x <- readLn :: IO Int
    let estaDentro = x `elem` dias
    if (estaDentro) 
        then do 
            putStrLn ("cumple con la espectativa") 
            pidemes 
        else putStrLn ("El dia es incorrecto")

pidemes = do
    let meses =[1..12]
    putStrLn ("introudce tu mes de nacimeinto: ") 
    x <- readLn :: IO Int
    let estaDentro = x `elem` meses
    if (estaDentro) 
        then do 
            putStrLn ("cumple con la espectativa") 
            buscarmes x
            buscardcantidad x
        else putStrLn ("El mes es incorrecto")

buscardcantidad x = do
    case x of
         1 -> putStrLn ("tu mes tiene 31 dias")
         3 -> putStrLn ("tu mes tiene 31 dias")
         5 -> putStrLn ("tu mes tiene 31 dias")
         7 -> putStrLn ("tu mes tiene 31 dias")
         8 -> putStrLn ("tu mes tiene 31 dias")
         10 -> putStrLn ("tu mes tiene 31 dias")
         12 -> putStrLn ("tu mes tiene 31 dias")
         4 -> putStrLn ("tu mes tiene 30 dias")
         6 -> putStrLn ("tu mes tiene 30 dias")
         9 -> putStrLn ("tu mes tiene 30 dias")
         11 -> putStrLn ("tu mes tiene 30 dias")
         2 -> putStrLn ("tu mes tiene 28 dias")

buscarmes mes = do
    putStrLn ("naciste el " ++ mesesnom!!(mes-1) ) 

