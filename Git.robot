*** Settings ***
Library         SeleniumLibrary
Library         SikuliLibrary

*** Test cases  ***
TC 
    # Ouverture du site NA:
    Open browser    https://test.nounouadom.com/   Chrome 
    click element    xpath://*[@id="popup-buttons"]/button[1] 
TC1
    click element   xpath://*[@id="navbar"]/div[2]/div[1]/ul/li[3]
TC2 
    # Acceder au formulaire:
    click element   xpath://*[@id="node-13"]
    #click element   xpath://*[@id="popup-buttons"]/button[1]
TC3
   # Choisir son agence:
    click element   xpath://*[@id="navbar"]/div[2]/div[1]/ul/li[2]/a
    click element   xpath://*[@id="edit-submitted-agence"]/option[12]
TC4
     # Saisir son Prénom:
    click element    xpath://*[@id="edit-submitted-prenom"]
    Input Text  name=submitted[prenom]  CHCOM
TC5
    # Saisir son Nom
    click element   xpath://*[@id="edit-submitted-nom"]
    input Text  name=submitted[nom]     C-spontanée
    click element   xpath://*[@id="popup-buttons"]/button[1]
TC6
    # Saisir son Numéro de téléphone
    click element   xpath://*[@id="edit-submitted-telephone"]   
    input text  name=submitted[telephone]   0200120001  
    #click element   xpath://*[@id="popup-buttons"]/button[1]
TC7
    # Saisir son email
    click element   xpath://*[@id="edit-submitted-email"]              
    input text  name=submitted[email]   tafs@yahoo.fr
TC8
    # Saisir son code postal
    click element   xpath://*[@id="edit-submitted-code-postal"]
    input text  name=submitted[code_postal]     53000
TC9
    #click element   xpath://*[@id="edit-submitted-permis-b"]/div/label/div/div/label[1]  
    #click element   xpath://*[@id="edit-submitted-vehicule"]/div/label/div/div/label[1]   
TC10
    # Etape suivante
    click element  xpath://*[@id="webform-client-form-17"]/div/div[11]/button   
TC11
    # Postes souhaités
    click element   xpath://*[@id="edit-submitted-type-de-poste"]/div[1]/label  
    click element   xpath://*[@id="edit-submitted-type-de-contrat-souhaite-841"]
    click element   xpath://*[@id="edit-submitted-type-de-poste"]/div[4]/label
    # Contrats souhaités
    #click element   xpath//*[@id="edit-submitted-type-de-contrat-souhaite-7"] 
    click element   xpath//*[@id="edit-submitted-type-de-contrat-souhaite"]/div[3]/label  
    #click element   xpath//*[@id="edit-submitted-type-de-contrat-souhaite-7"]     
TC12
    click element   xpath://*[@id="webform-client-form-17"]/div/div[5]/button[2]
TC13
    click element   xpath://*[@id="edit-submitted-type-de-contrat-souhaite"]/div[2]/label  
TC14
    click element   xpath://*[@id="edit-submitted-cv-upload--2"]    
TC15
    click element   xpath://*[@id="webform-client-form-17"]/div/div[5]/button[2] 
    ## CV
    click element   xpath://*[@id="edit-submitted-cv-upload"]
TC16
    Open browser    https://www.git.chcom.fr/     chrome
TC17
    click element   xpath://*[@id="user_login"]   
    Input Text   name=user[login]   tdiallo@concepthygiene.com
TC18
    click element   xpath://*[@id="user_password"]  
    input Text     name=user[password]  eds@3i_j5
TC19
    click element   xpath://*[@id="new_user"]/div[5]/input
TC20   
    click element   xpath://*[@id="content-body"]/div[5]/ul/li[1]/div[2]/div[1]/div/h2/a/span/span[1]