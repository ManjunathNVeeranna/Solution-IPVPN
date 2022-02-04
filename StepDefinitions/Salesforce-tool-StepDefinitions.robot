*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/Salesforce-tool-imports.robot

*** Variables ***
${SFAusernameemail}    SFATST15@centurylink.com
${SFApassword}    Chemist21Marcy20!proved#

*** Keywords ***
I log in to Salesforce
    Launch Salesforce    ${SFA_Url}
    Login to Salesforce    ${SFAusernameemail}    ${SFApassword}
    
I Create an Opportunity
    Create Opportunity
    
I change the stage of opportunity as "${OpportunityStage}" and Prepare order
    Edit Opportunity    ${OpportunityStage}
    
I update Order Requirements
    Update Order Requirements    ${HotCut}    ${CCM}    ${Sales_Engineer}
    
Add Contacts to the order
    Add Existing Contact    ${existingContact}    Order Contact    Billing    Technical Data Gathering
    # Add New Contact    ${newContactDetails}    Technical Data Gathering
    
Generate the SOF Document
    Generate Document    Service Order Form
    
Add Global Attachment to the order
    Add Global Attachment    Service Order Form
    
Select Billing Account for the Order
    Select Billing Account    ${BAN} 
    Validate BAN is updated
    
Submit the order to Swift
    Submit to Swift
    
#Create a Deal Support Request
    #${dsrid}    Create a DSR    ${DSR_Info}
    #Update team member role for DSR    UCC Overlay  
    #Navigate back to quote    ${dsrid}    
    
    

