local palavras = {
    "gato",
    "rato",
    "sapo",
    "bola",
    "vaso",
    "lupa",
    "pena",
    "livro",
    "chave",
    "cama",
    "mesa",
    "pano",
    "fogao",
}

local function hasNumber(str)
    for i = 1, #str do
    local char = str:sub(i, i)
    if tonumber(char) then
        return true
    end
end
return false
end

local palavraEscolhida = ""

local function gerarAleatorio()
   palavraEscolhida = palavras[math.random(12)]
end

local function startGame()
    local numero = 0
    local pToFind = 1
    
    for i = 2, string.len(palavraEscolhida) do
    pToFind = pToFind .. i
    end

    print("[Forca] Bem-vindo ao jogo da Forca")
    print("[Forca] Palavra: " .. pToFind)
    print("")

    ::ESCOLHER::
    if hasNumber(pToFind) == false then
        print("[Forca] Voce ganhou o jogo da forca!")
        return
    end

    local escolha = io.read()

    if string.find(palavraEscolhida, escolha) then
      print("[Forca] Voce acertou a palavra!")
      palavraEncontrada = string.find(palavraEscolhida, escolha)
      pToFind = string.gsub(pToFind, palavraEncontrada, escolha)
      print(pToFind)

      goto ESCOLHER
    else
    if numero == 5 then
        numero = numero + 1
    else 
        print("[Forca] Voce perdeu o jogo da forca!")
    end
end
end



local function start()
    gerarAleatorio()
end

start()
startGame()