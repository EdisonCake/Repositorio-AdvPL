#INCLUDE 'TOTVS.CH'

User Function Exemplo01()
    local cNome     := ''
    local cNota     := ''
    local nNota1    := 0
    local nNota2    := 0
    local nNota3    := 0
    local nMedia    := 0

    cNome  := FwInputBox('Digite seu nome: ', cNome)

    cNota := FwInputBox('Digite a 1� nota: ', cNota)
    nNota1 := val(cNota)
    cNota := ''

    cNota := FwInputBox('Digite a 2� nota: ', cNota)
    nNota2 := val(cNota)
    cNota := ''

    cNota := FwInputBox('Digite a 3� nota: ', cNota)
    nNota3 := val(cNota)

    nMedia := (nNota1 + nNota2 + nNota3) / 3

    if nMedia >= 6
        FwAlertSuccess('Parab�ns, ' + cNome + ', ' + CRLF +;
        'voc� foi aprovado acima da m�dia!' + CRLF +;
        'M�dia atual: ' + CValToChar(nMedia), 'Parab�ns!')
    else
        FwAlertError('Voc� foi reprovado.' + CRLF +;
        'M�dia atual: ' + CValToChar(nMedia), 'Que pena...')
    endif


Return 
