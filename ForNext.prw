#INCLUDE 'TOTVS.CH'

User Function ExemploForNext()
    local cMSG      := ''
    local nCount    := 0
    local nUser     := 0
    local cResp     := ''

    cResp := FwInputBox('Até quanto quer contar?', cResp)
    nUser := val(cResp)

    for nCount := 1 to nUser
        if nCount < nUser
            cMSG += cValToChar(nCount) + ', '
        else
            cMSG += cValToChar(nCount) + '.'
        ENDIF
    next

    FwAlertInfo(cMSG, 'Resultado')
Return
