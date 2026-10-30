*** Settings ***
Resource  resource.robot
Suite Setup  Initialize Tests
Suite Teardown  Close Browser

*** Test Cases ***
When setting the counter to a valid value the value is updated
    Set Counter  5
    Get Text  body  *=  nappia painettu 5 kertaa

When setting the counter to a negative value the value stays unchanged
    Set Counter  6
    Get Text  body  *=  nappia painettu 6 kertaa
    Set Counter  -3
    Get Text  body  *=  nappia painettu 6 kertaa

When setting the counter to a non-integer value the value stays unchanged
    Set Counter  7
    Get Text  body  *=  nappia painettu 7 kertaa
    Run Keyword And Expect Error  *Cannot type text*  Set Counter  abc
    Get Text  body  *=  nappia painettu 7 kertaa