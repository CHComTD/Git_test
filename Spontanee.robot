*** Settings ***
Library         SeleniumLibrary
Library         SikuliLibrary

*** Variables ***

*** Test Cases ***
TC
    Open Browser   https://test-emploi.nounouadom.com    chrome
TC1
    click element    xpath://*[@id="navbar"]/div[2]/div[1]/ul/li[2]
    #click element    xpath://*[@id="popup-buttons"]/button[1]
TC2
    click element    xpath://*[@id="edit-submitted-agence"]
    click element    xpath://*[@id="edit-submitted-agence"]/option[12]
    click element    xpath://*[@id="popup-buttons"]/button[1]
TC3
    click element    xpath://*[@id="edit-submitted-prenom"]
    input Text    name=submitted[prenom]    CHCOM
TC4
    click element    xpath://*[@id="edit-submitted-nom"]
    input Text    name=submitted[nom]    Test-formulaire
    #click element    xpath://*[@id="popup-buttons"]/button[1]
TC5
    click element    xpath://*[@id="edit-submitted-telephone"]
    input Text    name=submitted[telephone]    0202000001
TC6
    click element    xpath://*[@id="edit-submitted-email"]
    input Text    name=submitted[email]    tdiallo@concepthygiene.com
TC7
    click element    xpath://*[@id="edit-submitted-code-postal"]
    input Text    name=submitted[code_postal]    53000
TC8
    click element    xpath://*[@id="webform-client-form-17"]/div/div[11]/button
TC9
    click element    xpath://*[@id="edit-submitted-type-de-poste-840"]
    click element    xpath://*[@id="edit-submitted-type-de-contrat-souhaite-7"]
    click element    xpath://*[@id="webform-client-form-17"]/div/div[5]/button[2]
TC10
    #click element    xpath://*[@id="edit-submitted-cv-upload"]
    click element    xpath://*[@id="edit-submitted-cv-upload--4"]
    #input document    name=files[submitted_cv]  http://squash.intranet.fr:8080/squash/requirement-workspace/CV.pdf
    Open browser    http://squash.intranet.fr:8080/squash/requirement-workspace/    chrome
    
    #SikuliLibrary.Input Text    /images/.pdf    http://squash.intranet.fr:8080/squash/requirement-workspace/CV.pdf
TC11
    click element    xpath://*[@id="edit-submitted-inscription-a-la-newsletter-nounou-adom-1"]
    click element    xpath://*[@id="edit-submitted-rgpd-approbation-1"]
TC12
    click element    xpath://*[@id="webform-client-form-17"]/div/div[6]/button[2]
TC13
    Close Browser