*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/ASRI-tool-imports.robot  

*** Variables ***

${username}    AB99286
${password}    VErna@1951
${ExpectedMsg}    "No Validation Exception!"         


*** Keywords ***

I Login to ASRI
    Launch ASRI    ${ASRI_URL}
    Login to ASRI    ${username}    ${password}

I Click on Tasks Menu
    Click on Team Tasks    
    
I Search with the Order package ID
    Search_with_the_Order_package_ID    ${var_customerordernum}
    
I Complete the TDG Task
    Complete_TDG_Task
    
I Complete Device Port Selection task
    Complete Device Port Selection task
# I Load order Package ID    
    # Search Order package ID    ${var_customerordernum}
    
# I Validate that the iSE Design ID is displayed in Swift
    # Validate_iSE_Design_ID
    
# Complete Analyze OR Adjust PSPs Task
    # Impersonate User    ${Task_AnalyzePSP_Locator}
    # Set OES    ${OES_Name}
    # # Validate Task
    # Complete Task
    # Wait Until a Task is complete    ${AnalyzePSPsComplt}
    
# #Complete Gather Technical Information Task 
    # # Wait for a Task to appear    Gather Technical Information
    # # Self Impersonate
    # # Impersonate User    ${Task_GatherOrder_Locator}    
    # # # Validate Task
    # # Add Attachement
    # # Complete Task
    # # Wait Until a Task is complete    ${GatherOrdDtlsComplt}

# Complete Welcome Customer Task
    # Wait for a Task to appear    Welcome Customer
    # Self Impersonate
    # Impersonate User    ${Task_WelcomeCustomer_Locator}
    # Complete Task
    # Wait Until a Task is complete    ${WelCustComplt}
    
# Complete Customer Coordination Task
    # Wait for a Task to appear    Customer Coordination
    # Self Impersonate
    # Impersonate User    ${Task_CustomerCoordination_Locator}
    # Complete CRD and NDD
    # Complete Task
    # Wait Until a Task is complete    ${CustCordComplt}
    
# Complete Order Details Task
    # Wait for a Task to appear    Complete Order Details
    # Self Impersonate
    # Impersonate User    ${Task_Complete_Order_Details_Locator}
    # Set VRF    ${VRFName}
    # # Open TDG form 
    # # # Check If Edit Button
    # # Edit TDG form
    # # Save TDG form
    # Self Impersonate
    # Impersonate User    ${Task_Complete_Order_Details_Locator}
    # Complete Task
    # Wait Until a Task is complete    ${CompleteOrder}
    
# # Complete TDG form
    
    # # Self Impersonate
    # # Open TDG form 
    # # # Check If Edit Button
    # # Edit TDG form
    # # Save TDG form
    
    
    
# # Wait for BPMS Acceptance Task to appear 
    # # Wait for a Task to appear    Waiting For BPMS Acceptance
    
# # BPMS Acceptance Task should be Auto Completed
    # # Wait Until BPMS Task is complete    ${WaitForBpmsComplt}

# # #####!!!!!!UcaaS!!!!!!########
    
# # When Complete UCC Role Order Package Task
    # # Wait for a UCCTask to appear    
    # # Validate a UCCTask
    # # Complete a UCCTask
    # # Wait Until a UCCTask is complete    ${Task_Completion_locator}
    
# # Complete Order Details Task 
    # # Wait for a OC Task to appear         
    # # Complete CRD and NDD  


# # Complete Credit check if applicable
    # # ${CreditAprrovReq}=    Validate if credit check task appearing   
    # # Run Keyword If    ${CreditAprrovReq}    Complete in GCA    ${GCA_URL}    ${var_customerordernum}    ${var_OrderResult}


    
# # Complete Credit check if applicable
    # # ${CreditAprrovReq}=    Validate if credit check task appearing   
    # # Run Keyword If    ${CreditAprrovReq}    Complete in Metastorm    ${Metastorm_URL}     
    
# Validate Status of the order is "${OrderStatus}"
    # Verify Order Status    ${OrderStatus}
    
# # I Validate that the iSE Design ID is displayed in Swift
    # # Validate iSE Design ID
    
    


    

  
    


