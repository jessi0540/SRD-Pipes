*** Settings ***
Library    SeleniumLibrary
Library    resources/keywords.py

Suite Setup       Open Demo Browser
Suite Teardown    Close All Browsers

*** Variables ***
${BASE_URL}       https://example.com

*** Keywords ***
Open Demo Browser
    Open Browser    about:blank    %{BROWSER}    remote_url=%{SELENIUM_REMOTE_URL}

*** Test Cases ***
Home Page Loads (Selenium)
    Go To    ${BASE_URL}
    Title Should Be    Example Domain
    ${h1}=    Get Page Heading
    Should Be Equal    ${h1}    Example Domain

 
 