local function gerarSenha()
    print("[Gerador de Senhas] Ola, vamos gerar uma senha para voce com algumas perguntas!")
    print("[Gerador de Senhas] Digite seu primeiro nome:")

    local nomePut = io.read()
    local nome = string.sub(nomePut, 0, 4) .. string.len(nomePut).. string.reverse(string.sub(nomePut, 0, 4))

    print("[Gerador de Senhas] Sua nova senha: " .. nome)
end

gerarSenha()