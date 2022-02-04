*** Keywords ***
Search For Order
    Navigate To Orders Page
    Wait For Page To Load    3 min
    Search Orders    ${var_customerordernum}   
    
Verify "${orderName}" Order Is Complete
    Wait For Order To Complete    Complete    ${orderName}
    Log    Order ${orderName} is Complete   
    
Research If Results Are Zero
    [Arguments]    ${retry}=3
    FOR    ${index}    IN RANGE    0    ${retry}
        ${count}=    Get Element Count    xpath://li[text()='Search returned 0 results.']
        ${result}=    Evaluate    ${count} > 0
        Run Keyword If    ${result}    Run Keyword    Click On Search Button 
    END