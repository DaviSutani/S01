data Etapa = NaFila | NoBanho | Concluido
  deriving (Show, Eq)

data Atendimento = Atendimento{ cliente:: String, servico:: String, valor:: Double, etapa:: Etapa}

descrever :: Atendimento -> String
descrever at =
  cliente at ++ " - " ++ servico at ++ " - " ++ show (etapa at)

concluir :: Atendimento -> Atendimento
concluir at = at { etapa = Concluido }

arrecadado :: [Atendimento] -> Double
arrecadado atendimentos =
  sum (map valor (filter (\at -> etapa at == Concluido) atendimentos))

main :: IO ()
main = do
  let zeus =
        Atendimento { cliente = "Zeus", servico = "Banho de raios", valor = 200.0, etapa = NaFila }
  let kratos =
        Atendimento { cliente = "Kratos", servico = "Banho gelado", valor = 20.0, etapa = NoBanho }
  let curupira =
        Atendimento { cliente = "Curupira", servico = "Banho quente", valor = 40.0, etapa = NaFila }
  let originais = [zeus, kratos, curupira]
  let atualizados = [zeus, concluir kratos, concluir curupira]
  putStrLn " "
  putStrLn "|    Lista original:   |"
  putStrLn " "
  mapM_ putStrLn (map descrever originais)
  putStrLn ("Arrecadado: " ++ show (arrecadado originais))
  putStrLn " "
  putStrLn "|    Lista nova:    |"
  putStrLn " "
  mapM_ putStrLn (map descrever atualizados)
  putStrLn ("Arrecadado: " ++ show (arrecadado atualizados))