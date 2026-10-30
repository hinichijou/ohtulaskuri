*** Settings ***
Library  Browser

*** Variables ***
${SERVER}    localhost:5001
${DELAY}     500ms
${HOME_URL}  http://${SERVER}
${BROWSER}   chromium
${HEADLESS}  false

*** Keywords ***
Initialize Tests
    Open And Configure Browser
    Set Counter  0
    Get Text  body  *=  nappia painettu 0 kertaa

Open And Configure Browser
    IF  $HEADLESS == 'true'
        New Browser  browser=${BROWSER}  headless=True
    ELSE
        New Browser  browser=${BROWSER}  headless=False  slowMo=${DELAY}
    END
    New Context
    New Page  about:blank

Set Counter
    [Arguments]  ${value}
    Go To  ${HOME_URL}
    Fill Text  input[name="value"]  ${value}
    Click  [type=submit] >> text=aseta