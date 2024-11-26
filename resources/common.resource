*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.google.com/

*** Keywords ***
Enter Google Website
    Open Browser    ${URL}    ${BROWSER}