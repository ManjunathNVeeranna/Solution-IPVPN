*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/SES-tool-imports.robot


*** Keywords ***
I Open SES application
    Launch SES    
    
Navigate to SES My Services page    
    Select menu in RevenuePortal    SES    
    Open a SES Menu Tab    My Services            
    
        
I Retrieve the Order
    Select SES Status    ${SES_Status}
    Select Assigned to    ${AssignedTo}
    Search Customer order    ${var_customerordernum}
    
Check if all ordered products displayed in result    
    Check if a product displayed in result    SD-WAN
    Check if a product displayed in result    CPE Package
    Check if a product displayed in result    Security Upgrade
    Check if a product displayed in result    Broadband Internet Access
     
    ${BAN_num}    Get the BAN number
    Set Suite Variable    ${var_BAN_Num}    ${BAN_num}
    
# Check if SES status of all products is complete
    # Check if SES status complete    ${Broadband_SES_Cmplt}
    # Check if SES status complete    ${SDWAN_SES_Cmplt}
    # Check if SES status complete    ${CPEPackage_SES_Cmplt}
    # Check if SES status complete    ${OnsiteInst_SES_Cmplt}
    # Unselect Frame
    
Send "${Service}" to Kenan
    Click SCID for    ${Service}
    # Validate product details
    Click Send to Kenan
    Wait for Provisioning Status to Complete
    Open a SES Menu Tab    My Services
    # Open a SES Menu Tab    My Services            
    # Unselect Frame

# Send SD-WAN to Kenan
    # Click SCID    ${SDWAN_SCID}
    # Click Send to Kenan
    # Wait for Provisioning Status to Complete
    # Open a SES Menu Tab            
    
# Send CPE Package to Kenan
    # Click SCID    ${CPEPackage_SCID}
    # Click Send to Kenan
    # Wait for Provisioning Status to Complete
    # Open a SES Menu Tab            
    
# Send Onsite Installation to Kenan
    # Click SCID    ${OnSiteInstallation_SCID}
    # Click Send to Kenan
    # Wait for Provisioning Status to Complete
    # Open a SES Menu Tab            
    
   
    
Navigate to BIP External Account page    
    Select menu in RevenuePortal    BIP Processing
    Open a SES Menu Tab             BIP By External No
    
Generate Invoice and send it to "${email_id}" 
    Enter GUI Account Number    ${var_BAN_Num}
    Enter External Email Address    ${email_id}
    Submit Request
    
#I enter GUI number and Email address
# I enter GUI number as "${Number}" and Email address as "${Email}"
    # Enter GUI Account Number    ${Number}
    # Enter External Email Address    ${Email}
    # Submit External Account

Customer should receive email
    Log     "Complete"
    
    

    
    

    
    
