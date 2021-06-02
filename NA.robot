*** Settings ***
Library             SeleniumLibrary

*** variables ***
###### Test automatisé 
*** Test Cases ***
TC 
    # Ouverture du site NA:
    Open browser    https://test.nounouadom.com/   Chrome   
TC1  
    # Acceder au formulaire: 
    click element   xpath://*[@id="navbar"]   
TC2
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
    input Text  name=submitted[nom]     Test
TC6
    # Saisir son Numéro de téléphone
    click element   xpath://*[@id="edit-submitted-telephone"]
    input text      name=submitted[telephone]   0200000000
TC7
    # Accepter les cookies
    click element    xpath://*[@id="popup-buttons"]/button[1]
TC8
    # Saisir son email
    click element   xpath://*[@id="edit-submitted-email"]
    input text  name=submitted[email]   tdiallo@concepthygiene.com
TC9
    # Saisir son code postal
    click element   xpath://*[@id="edit-submitted-code-postal"]
    input text  name=submitted[code_postal]     53000
TC10
    # Selectionner "Une prestation de garde d'enfant à domicile"
    click element  xpath://*[@id="edit-submitted-vous-recherchez"]/div[1]
TC11
    # Précisez votre besoin
    click element   xpath://*[@id="edit-submitted-precisez-votre-besoin"]
    input text  name=submitted[precisez_votre_besoin]   Ceci est un mail automatisé.

TC12
    # Selectionner "J'accepte que mes données soient transmises ...."
    click element   xpath://*[@id="edit-submitted-rgpd-approbation"]/div/label
TC13
    # Clique sur "Envoyer", pour soumettre ta demande
    click element   xpath://*[@id="webform-client-form-16"]/div/div[12]
TC14
    # Fermeture du site NA:
    Close BROWSER
*** Keywords ***
