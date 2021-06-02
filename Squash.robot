*** Settings ***
Library         SeleniumLibrary
*** Test Cases ***
TC
    #Open browser    http://squashtf.intranet.fr:8080/jenkins/   chrome
    Open browser    http://squashtf.intranet.fr:8080/jenkins/login?from=%2Fjenkins%2F   chrome
    click element   xpath://*[@id="j_username"]
    input text  id=submitted[j_username]  tdiallo
