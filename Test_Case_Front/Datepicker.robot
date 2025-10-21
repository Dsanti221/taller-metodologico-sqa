*** Settings ***
Documentation    Casos de prueba para Taller SQA-SANTIAGO VALLEJO
Library    SeleniumLibrary
Resource    ../Resources/variables.robot
Resource   ../resources/keywords.robot
Suite Setup    Open Browser Keyword
Suite Teardown    Close Browser Keyword

*** Test Cases ***
Click on the date field
    [Documentation]    CP1(Aperura del calendario) Ingresa a la pagina y abre el calendario
    Given Page Should Contain    Datepicker
    Sleep   ${WAIT}
    Capture Page Screenshot    ../Reports_uno/formulario_visible.png
    Select Frame     //*[@id="content"]/iframe
    When Click Element    //*[@id="datepicker"]
    Sleep   ${WAIT}
    Then Capture Page Screenshot    ../Reports_uno/calendario_emergente.png
    #robot -d Reports_uno -t "Select the date on the form" Test_Case_Front/Datepicker.robot

Select the date on the form
    [Documentation]    CP2(Seleccion de fecha valda)Ingresa a la pagina y abre el calendario
    Given Page Should Contain    Datepicker
    Sleep   ${WAIT}
    Capture Page Screenshot    ../Reports_uno/formulario_visible_dos.png
    Select Frame     //*[@id="content"]/iframe
    When Click Element    //*[@id="datepicker"]
    Sleep   ${WAIT}
    Capture Page Screenshot    ../Reports_uno/calendario_emergente_dos.png
    Click Element    //a[text()="15"]
    Sleep   ${WAIT}
    Then Capture Page Screenshot    ../Reports_uno/fecha_seleccionada.png