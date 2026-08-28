local entrada = tonumber(io.read())
local tabela = {}
for i = 1, entrada do
    print("Digite o elemento " ..i.. ":")
    tabela[i] = tonumber(io.read())
end
local maior = tonumber(io.read())
function filtrarMaiores(tabela, limite)
    for i = 1, entrada do
        if tabela[i] > limite then
            print(tabela[i])
        end
    end
end
print("-- Elementos maiores que " ..maior.. " --")
filtrarMaiores(tabela, maior)