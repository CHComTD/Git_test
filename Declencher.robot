*** Settings ***
Library         SeleniumLibrary

*** Test cases  ***

    # Declanchement de job à distance:
TC
    Open browser    http://squashtf.intranet.fr:8080/jenkins/user/tdiallo/my-views/view/all/job/Job/build?token=1123     chrome
    Close browser
TC1    
    Open browser    http://squashtf.intranet.fr:8080/jenkins/user/tdiallo/my-views/view/Aprolliance/job/Aprolliance%20V2/build?token=1112    chrome
    Close browser
   
