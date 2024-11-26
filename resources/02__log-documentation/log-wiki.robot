*** Settings ***
Resource    ../common.resource

*** Variables ***
${SUMMARY_PATH}   //*[@id="mw-content-text"]/div[1]/p[2] 
${RESEARCH_PATH}    //*[@id="mw-content-text"]/div[1]/p[5]

*** Keywords ***
Get Document Summary
    [Arguments]    ${summary_path}
    Wait Until Page Contains Element    xpath=${summary_path}    30s
    ${summry_text}=    Get Text    xpath=${summary_path}
    RETURN    ${summry_text}

Get Research
    [Arguments]    ${research_path}
    Wait Until Page Contains Element    xpath=${research_path}    30s
    ${research_text}=    Get Text    xpath=${research_path}
    RETURN    ${research_text}
