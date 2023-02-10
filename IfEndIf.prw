#INCLUDE 'TOTVS.CH'

User Function Exemplo01()
    local cNome     := ''
    local cNota     := ''
    local nNota1    := 0
    local nNota2    := 0
    local nNota3    := 0
    local nMedia    := 0

    cNome  := FwInputBox('Digite seu nome: ', cNome)

    cNota := FwInputBox('Digite a 1ª nota: ', cNota)
    nNota1 := val(cNota)
    cNota := ''

    cNota := FwInputBox('Digite a 2ª nota: ', cNota)
    nNota2 := val(cNota)
    cNota := ''

    cNota := FwInputBox('Digite a 3ª nota: ', cNota)
    nNota3 := val(cNota)

    nMedia := (nNota1 + nNota2 + nNota3) / 3

    if nMedia >= 6
        FwAlertSuccess('Parabéns, ' + cNome + ', ' + CRLF +;
        'você foi aprovado acima da média!' + CRLF +;
        'Média atual: ' + CValToChar(nMedia), 'Parabéns!')
    else
        FwAlertError('Você foi reprovado.' + CRLF +;
        'Média atual: ' + CValToChar(nMedia), 'Que pena...')
    endif


Return 
