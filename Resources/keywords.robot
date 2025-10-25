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
