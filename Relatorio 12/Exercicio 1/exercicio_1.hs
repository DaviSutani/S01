data Cafe = Cafe String Double Int

descrever :: Cafe -> String
descrever (Cafe nome preco _) = nome ++ " | Preco: R$ " ++ show preco

forca :: Cafe -> String
forca (Cafe _ _ intensidade)
  | intensidade >= 8 = "Forte"
  | intensidade >= 5 = "Equilibrado"
  | otherwise =  "Suave"
precoDoPedido :: Bool -> Cafe -> Double
precoDoPedido comLeite (Cafe _ preco _) =
  if comLeite
    then preco + 2.0
    else preco
main :: IO ()
main = do
  let cafepreto = Cafe "Cafe preto" 3.5 10
  let cappuccino = Cafe "Cappuccino" 8.0 6
  let cappuccinoGourmet = Cafe "Cappuccino com Nutella" 18.0 3

  putStrLn (descrever cafepreto)
  putStrLn ("Tipo: " ++ forca cafepreto)
  putStrLn (descrever cappuccino)
  putStrLn ("Tipo: " ++ forca cappuccino)
  putStrLn (descrever cappuccinoGourmet)
  putStrLn ("Tipo: " ++ forca cappuccinoGourmet)
  putStr "Cafe preto com leite: R$ "
  print (precoDoPedido True cafepreto)
  putStr "Cafe preto sem leite: R$ "
  print (precoDoPedido False cafepreto)