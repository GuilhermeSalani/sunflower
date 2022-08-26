*** Settings ***
Resource     ../resources/sunflowerSteps.robot

Test Setup         Iniciar App
Test Teardown      Fechar App

*** Test Cases ***
Validar que o Jardim esta vazio
    Dado que inicio o APP
    Quando Add Plant esta presente na tela
    Entao valido que meu jardim esta vazio

Deve realizar uma plantacao
    Dado que seleciono ADD Plant
    E seleciono uma planta
    Quando clico em incluir
    Entao valido que a mesma foi plantada