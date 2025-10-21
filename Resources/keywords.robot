*** Settings ***
Documentation    Este archivo contiene las keywords para usar en los test-SANTIAGO VALLEJO
Library    SeleniumLibrary
Resource   variables.robot

*** Keywords ***
Close Browser Keyword
    [Documentation]    Cierra el navegador abierto de la ejecucion actual.
    Close Browser

Open Browser Keyword
    [Documentation]    Abre el navegador con la url de la aplicacion.
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    ${WAIT}

Register User
    [Documentation]    Registra un nuevo usuario.
    [Arguments]    ${razon}    ${nit}   ${sector}   ${telefono}    ${email}    ${password}
    Click Element       //*[@id="sidebar"]/div[1]/p[1]/a[1]
    Sleep   ${WAIT}
    Execute Javascript    window.scrollTo(0,200)
    Input Text    //*[@id="TxtNombre_I"]    ${razon}
    Input Text    //*[@id="TxtNit_I"]       ${nit}
    Click Element    //*[@id="LstSector_I"]
    Input Text    //*[@id="LstSector_I"]       ${sector}
    Sleep   ${WAIT_TWO}
    Click Element    //*[@id="LstSector_DDD_L_LBI11T0"]
    Sleep   ${WAIT}
    Input Text    //*[@id="TxtTelefono_I"]      ${telefono}
    Input Text    //*[@id="TxtCorreo_I"]        ${email}
    Input Password    //*[@id="TxtClave_I"]     ${password}
    Click Element    //*[@id="BtnRegistrar_CD"]/span[1]