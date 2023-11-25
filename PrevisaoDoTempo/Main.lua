
local function formatador(temp, clima)
    print("=-=-=-=-=-=-=-=-=-=")
    print("Temperatura: " .. temp .. " graus")
    print("")
    print("Segundo nossas estatisticas, podemos")
    print("afirmar que o clima de hoje esta: " .. clima)
    print("=-=-=-=-=-=-=-=-=-=")
end


local function obter_previsao_tempo()
    temperatura = math.random(0, 35)

    local clima = ""
    if temperatura <= 10 then
        clima = "Frio"
    elseif temperatura <= 15 then
        clima = "Pouco frio"
    elseif temperatura <= 25 then
        clima = "Mediano"
    elseif temperatura <= 29 then
        clima = "Calor"
    else if temperatura <= 35 then
        clima = "Muito calor"
    end
end
formatador(temperatura, clima)
end



obter_previsao_tempo()