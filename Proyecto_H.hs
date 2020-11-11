
main = do
    menu


menu = do
    putStrLn(" ")
    putStrLn("1.Serie de Fibonacci");
    putStrLn("2.Numeros del 1-10");
    putStrLn("3.Factorial");
    putStrLn("4.Escaleera de numeros");
    putStrLn("5.Palindromo");
    putStrLn("6.Calculadora");
    putStrLn("7.Salir");
    a <- getLine
    case a of
        "1"   ->  fibona 
        "2"   ->  recur 1 10
        "3"   ->  factorial 
        "4"   ->  nume 10
        "5"   ->  palin1
        "6"   ->  menuc
        "7"   ->  putStrLn ("END")

        

        




{-1 al 10-}
recur a b = do
    if a <= b
        then do
        print a
        recur (a + 1) b
    else menu




{-Factorial  // take 10 (iterate (*2) 1)-}
factorial  = do
    putStrLn("Numero:");
    a <- getLine
    let aux = product [1..read a]
    print aux
    menu



{--Escalera de numeros-}
nume a = do
    print [0..a]
    if a==0
        then do
        menu
    else
        nume (a-1) 


fibona   = do 
    putStrLn(" ")
    putStrLn("[0,1,1,2,3,5,8,13,21,34,55]")
    putStrLn("Indice a obtener");
    aux <- getLine
    let b = aux;
    let array = [0,1,1,2,3,5,8,13,21,34,55]
    let aux  =  array !!  read b
    putStrLn("El indice es:");
    print aux
    menu
    


-- let b = take 1 aux
palin1  = do
    putStrLn(" ")
    putStrLn("La palabra es:")
    aux <- getLine
    let z = reverse aux == aux
    putStrLn("Es palindromo")
    print z
    menu


menuc = do
    putStrLn("")
    putStrLn ("1.Suma")
    putStrLn ("2.Resta")
    putStrLn ("3.Division")
    putStrLn ("4.Multiplicacion")
    putStrLn ("5.División")
    putStrLn ("6.Salir")
    casos


casos  = do
    aux <- getLine
    case aux of
        "1"  -> suma
        "2" -> resta
        "3" -> multi
        "4" -> suma
        "5" -> divi
        "7" -> menu

suma = do
    putStrLn ("Número 1")
    a <- getLine
    putStrLn ("Número 2")
    b <- getLine
    putStrLn ("El resultado es:" ++ show (read (a) + read (b)))
    menuc

resta = do
    putStrLn ("Número 1")
    a <- getLine
    putStrLn ("Número 2")
    b <- getLine
    putStrLn ("El resultado es:" ++ show (read (a) - read (b)))
    menuc

multi = do
    putStrLn ("Número 1")
    a <- getLine
    putStrLn ("Número 2")
    b <- getLine
    putStrLn ("El resultado es:" ++ show (read (a) * read (b)))
    menuc

divi = do
    putStrLn ("Número 1")
    a <- getLine
    putStrLn ("Número 2")
    b <- getLine
    putStrLn ("El resultado es:" ++ show (read (a) / read (b)))
    menuc
