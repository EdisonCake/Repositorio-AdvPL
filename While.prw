#INCLUDE 'TOTVS.CH'
#DEFINE nQtdNotas 3

User Function ExemploWhile()
    local cNome := ''
    local cNota := ''
    local nMedia := 0
    local nCount := 1

    cNome := FwInputBox('Digite seu nome:', cNome)

    while nCount <= nQtdNotas
        cNota := FwInputBox('Digite a ' + CVALTOCHAR(nCount) + '� nota:', cNota)
        nMedia += val(cNota)
        cNota := ''
        nCount++
    end

    nMedia /= nQtdNotas

    if nMedia > 6
        FwAlertSuccess('Parab�ns! Aprovado!' + CRLF +;
        'M�dia Atual: ' + cValToChar(nMedia), 'Parab�ns')
    else
        FwAlertError('Reprovado!' + CRLF +;
        'Que pena, ' + cNome + '...' + CRLF +;
        'M�dia Atual: ' + cValToChar(nMedia), 'Reprovado')
    ENDIF
    
Return
