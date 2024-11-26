*** Settings ***
Resource    ../common.resource

*** Variables ***
${SEARCH_WORD}    Ada Lovelace
${SEARCH_LINK}    //*[@id="kp-wp-tab-overview"]/div[1]/div/div/div/div/div/div[1]
${TITLE}    เอดา เลิฟเลซ

*** Keywords ***
Enter Search Bar
    [Arguments]    ${search_word}
    Wait Until Page Contains Element    xpath=//*[@id="APjFqb"]
    Input Text    xpath=//*[@id="APjFqb"]    ${search_word}

Click Search
    Click Element    xpath=/html/body/div[1]/div[3]/form/div[1]/div[1]/div[2]/div[4]/div[6]/center/input[1]

Enter Search Result 
    [Arguments]    ${xpath_query}    ${contains_word}    ${title}
    Wait Until Page Contains Element    xpath=${xpath_query}    30s
    Click Element    xpath=${xpath_query}
    Wait Until Page Contains    ${title}     30s
    
