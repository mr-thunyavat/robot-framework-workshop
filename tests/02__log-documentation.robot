*** Settings ***
Resource    ../resources/02__log-documentation/log-wiki.robot

*** Test Cases ***
Log Ada Lovelace's Summary Documment
    ${summary_text}=    Get Document Summary    ${SUMMARY_PATH}
    Log    ${summary_text}

Log Ada Lovelace's Research
    ${research_text}=    Get Research    ${RESEARCH_PATH}
    Log    ${research_text}