data Esboco = Esboco
  { titulo:: String, tecnica:: String, horas:: Int}

esbocoMaisRecente :: [Esboco] -> String
esbocoMaisRecente []    = "O caderno está vazio."
esbocoMaisRecente (e:_) = "Titulo: "++titulo e ++ " | Tecnica: " ++ tecnica e ++ ""

contarEsbocos :: [Esboco] -> Int
contarEsbocos []        = 0
contarEsbocos (_:resto) = 1 + contarEsbocos resto

horasDesenhando :: [Esboco] -> Int
horasDesenhando []        = 0
horasDesenhando (e:resto) = horas e + horasDesenhando resto

main :: IO ()
main = do
  let caderno =
        [ Esboco { titulo = "Mulher gritante", tecnica = "nanquim", horas = 4 }
        , Esboco { titulo = "Paris", tecnica = "grafite", horas = 6 }
        , Esboco { titulo = "Ceu estrelado", tecnica = "carvão", horas = 3 }
        ]

  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esboços: " ++ show (contarEsbocos caderno))
  putStrLn ("Horas: " ++ show (horasDesenhando caderno))
  putStrLn (esbocoMaisRecente [])

  let cadernoNovo = Esboco { titulo = "Torre de Babel", tecnica = "nanquim", horas = 5 } : caderno
  putStrLn " "
  putStrLn "|   Caderno novo   |"
  putStrLn " "
  putStrLn (esbocoMaisRecente cadernoNovo)
  putStrLn ("Esboços: " ++ show (contarEsbocos cadernoNovo))
  putStrLn " "
  putStrLn "|   Caderno anterior   |"
  putStrLn " "
  putStrLn (esbocoMaisRecente caderno)
  putStrLn ("Esboços: " ++ show (contarEsbocos caderno))

  --putStrLn (titulo (head []))
  --main: Prelude.head: empty list
  -- CallStack (from HasCallStack):
  