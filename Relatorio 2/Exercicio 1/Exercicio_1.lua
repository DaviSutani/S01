local begin = tonumber(io.read())
local endd = tonumber(io.read())  
local base = tonumber(io.read())
function potencias(inicio, fim, base) 
    for i = inicio, fim do
        print(base ^ i)
    end 
end
potencias(begin,endd,base)