*** Settings ***
Resource     sunflowerBase.robot

*** Keywords ***
Quando Add Plant esta presente na tela
    Page Should Contain Text         ${ADD_PLANT}
Entao valido que meu jardim esta vazio
    Page Should Contain Text         ${JARDIM_VAZIO}
Dado que seleciono ADD Plant
    Wait Until Page Contains         ${ADD_PLANT}
    Click Text                       ${ADD_PLANT}
E seleciono My Garden
    Wait Until Page Contains         ${MY_GARDEN} 
    Click Text                       ${MY_GARDEN} 
E seleciono Plant List
    Wait Until Page Contains         ${PLANT_LIST}
    Click Text                       ${PLANT_LIST}
E seleciono uma planta
    Wait Until Page Contains         ${MACA}
    Click Text                       ${MACA}
Quando clico em incluir
    Click Element                    ${INCLUIR_FRUTA}
    ${TextoDaFruta}     Get Text     ${MACA}
Entao valido que a mesma foi plantada
    Wait Until Page Contains          ${MENSAGEM_PLANTA}
    Wait Until Element Is Visible     ${VOLTAR}
    Click Element                     ${VOLTAR}
    Wait Until Page Contains          ${MY_GARDEN} 
    Click Text                        ${MY_GARDEN} 
    Wait Until Page Contains          ${MACA}
    Should Be Equal                   ${TextoDaFruta}     APPLE
Dado que inicio o APP
    No Operation