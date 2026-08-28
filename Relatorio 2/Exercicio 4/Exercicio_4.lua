print("Digite o primeiro numero:")
local entrada1 = tonumber(io.read())
print("Digite o segundo numero:")
local entrada2 = tonumber(io.read())
print("Digite a operação:")
local operacao = io.read()
function analisarNumeros(entrada1, entrada2, operacao)
    function calcularMedia(entrada1, entrada2)
        return (entrada1 + entrada2) / 2
    end
    function encontrarMaior(entrada1, entrada2)
        if entrada1 > entrada2 then
            return entrada1
        else
            return entrada2
        end
    end
    function calcularDiferencaAbsoluta(entrada1, entrada2)
        return math.abs(entrada1 - entrada2)
    end
    if operacao == "media" then
        return calcularMedia(entrada1, entrada2)
    elseif operacao == "maior" then
        return encontrarMaior(entrada1, entrada2)
    elseif operacao == "diferenca" then
        return calcularDiferencaAbsoluta(entrada1, entrada2)
    else
        return "Operação inválida!"
    end
end
local resultado = analisarNumeros(entrada1, entrada2, operacao)
print("Resultado: " .. resultado)