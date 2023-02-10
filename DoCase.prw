#INCLUDE 'TOTVS.CH'

User Function ExemploDoCase()
    local cNome := ''

    cNome := FwInputBox('Digite o seu nome:', cNome)

    Do Case
    Case cNome == 'Edison'
        Alert('Olá, Edison!')
    Case cNome == 'Bolo'
        Alert('Olá, Bolo!')
    Case cNome == 'Edison Cake'
        Alert('Olá, Edison Cake!')
    Case cNome == 'Bolo de Cake'
        Alert('Olá, Bolo de Cake!')    
    Otherwise
        Alert('Não te conheço...')       
    EndCase
Return 
