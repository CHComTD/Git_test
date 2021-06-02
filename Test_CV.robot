*** Settings ***
Library         SeleniumLibrary
Library         SikuliLibrary

*** Test cases  ***
TC
    Open browser    http://squash.intranet.fr:8080/squash/login     firefox
TC1
    click element   xpath://*[@id="username"]
    Input Text   name=username    tdiallo
TC2
    click element   xpath://*[@id="password"]
    input Text  name=password   Frsang-squash 
TC3
    click element   xpath://*[@id="login-form-button-set"]/input
TC4
    click element   xpath://*[@id="requirement-link"]
Tc5
    click element   xpath://*[@id="RequirementLibrary-22"]
TC6
    click element   xpath://*[@id="Requirement-163"]/ins
TC7
    click element   xpath://*[@id="ui-id-35"]
TC8
    client element  xpath://*[@id="attachment-detail-table"]/tbody/tr/td[2]/a
TC5   
    Close Browser