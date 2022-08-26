*** Settings ***
Library      AppiumLibrary
Resource     sunflowerElements.robot

*** Keywords ***
Iniciar App 
    Set Appium Timeout     5
    Open Application       http://localhost:4723/wd/hub
    ...                    automationName=UiAutomator2
    ...                    platformName=Android
    ...                    deviceName=Emulador
    ...                    app=C:/Users/Usuario/Desktop/Teste/sunflower.apk  
Fechar App     
    Close Application