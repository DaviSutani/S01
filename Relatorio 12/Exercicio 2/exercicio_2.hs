pesoMaximo :: Double
pesoMaximo = 65.0
--pesoMaximo = 20.0

--Main.hs:3:1: error:
--    Multiple declarations of ‘pesoMaximo’

data Encomenda = Encomenda
  { destinatario :: String, peso :: Double, frete :: Double }

descrever :: Encomenda -> String
descrever encomenda = destinatario encomenda ++ " - " ++ show (peso encomenda) ++ " kg | frete: R$ "++ show (frete encomenda)

cabemNaVassoura :: [Encomenda] -> [Encomenda]
cabemNaVassoura encomendas = filter (\encomenda -> peso encomenda <= pesoMaximo) encomendas
totalDeFretes :: [Encomenda] -> Double
totalDeFretes encomendas = sum (map frete encomendas)

main :: IO ()
main = do
  let encomendas =
        [ Encomenda { destinatario = "Luiza", peso = 67, frete = 60 }
        , Encomenda { destinatario = "Jose", peso = 70, frete = 30.0 }
        , Encomenda { destinatario = "Rodolfo", peso = 30, frete = 8.0 }
        , Encomenda { destinatario = "Ivan", peso = 3, frete = 40.0 }
        ]
  let espaco = cabemNaVassoura encomendas
  mapM_ putStrLn (map descrever encomendas)
  putStrLn " "
  putStrLn "|    Vassoura suporta    |"
  putStrLn " "
  mapM_ putStrLn (map descrever espaco)
  putStrLn ("Total de fretes: R$ " ++ show (totalDeFretes espaco))