*** Settings ***
Resource    ../resources/01__search-lovelace-wiki//search-and-navigate.resource

*** Test Cases ***
Search Sirisoft Through Google Search Engine
    Enter Search Bar    ${SEARCH_WORD}
    Click Search

Enter Wikipedia With Search Result
    Enter Search Result    ${SEARCH_LINK}    ${SEARCH_WORD}    ${TITLE}