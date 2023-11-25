local function start()
    local mensagem = io.read()

    local msg = tostring(mensagem);

    if msg == string.reverse(msg) then
        print("[Palindromo] Sua mensagem e igual de tras para frente!")
    else
        print("[Palindromo] Sua mensagem e diferente de tras para frente!")
    end
end

start()