#INCLUDE 'TOTVS.CH'

User Function ExemploDoCase()
    local cNome := ''

    cNome := FwInputBox('Digite o seu nome:', cNome)

    Do Case
    Case cNome == 'Edison'
        Alert('Ol�, Edison!')
    Case cNome == 'Bolo'
        Alert('Ol�, Bolo!')
    Case cNome == 'Edison Cake'
        Alert('Ol�, Edison Cake!')
    Case cNome == 'Bolo de Cake'
        Alert('Ol�, Bolo de Cake!')    
    Otherwise
        Alert('N�o te conhe�o...')       
    EndCase
Return 
