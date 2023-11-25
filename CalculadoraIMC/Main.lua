local function gerarIMC()
    print("[IMC] Por favor, insira o seu peso: ")
    local peso = tonumber(io.read())
    print("[IMC] Peso: " .. peso)
    print("[IMC] Por favor, insira a sua altura: ")
    local altura = tonumber(io.read())

    print("[IMC] Estamos medindo o seu IMC...")
    print("[IMC] Peso: " .. peso)
    print("[IMC] Altura: " .. altura)
    print("")

    local imc = peso/altura^2

    print("[IMC] Seu IMC: " .. imc)
end

gerarIMC()