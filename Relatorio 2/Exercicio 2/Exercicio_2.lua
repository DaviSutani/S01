local entrada = tonumber(io.read())
local tabela = {}

for i = 1, entrada do
    print("Digite o elemento " ..i.. ":")
    tabela[i] = tonumber(io.read())
end
print("Digite o número para ser buscado:")
local busca = tonumber(io.read())
function contarOcorrencias(tabela, alvo)
    local count = 0
    for i = 1, #tabela do
        if busca == tabela[i] then
            count = count + 1
        end
    end
    return count
end
local resultado = contarOcorrencias(tabela, busca)
print("O número " ..busca.. " aparece " ..resultado.. " vez(es) na tabela.")