*** Settings ***
Library         SeleniumLibrary
#Library         SikuliLibrary

*** Test cases  ***
TC 
    # Ouverture du site NA:
    Open browser    https://test.nounouadom.com/   Chrome 
    #click element    xpath://*[@id="popup-buttons"]/button[1] 
TC1
    close browser