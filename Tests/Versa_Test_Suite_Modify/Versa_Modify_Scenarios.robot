*** Settings ***
Resource    ../../StepDefinitions/Salesforce-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/ScenarioManager-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/NetworkDesigner-iSE-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/Swift-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/SES-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/BPMSOrderCompletedStatus-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/BPMSProvision-tool-StepDefinitions.robot
Test Teardown    Run Keyword If Test Failed    Capture Page Screenshot   
Suite Teardown    Run Keyword    Close All Browsers          
   

*** Test Cases ***

# Create an Opportunity in Salesforce
    # [Tags]    Generic    SFA  
    # Given I log in to Salesforce
    # And I Create an Opportunity
    
# Create an Quote and add location 
    # [Tags]    Generic    SM
    # Given I Create an Quote
    # And I Add Location to the Quote
    
# Configure SDWAN Versa Product
    # [Tags]    Simplify    SM
    # Given I Select SD-WAN Product with Vendor "Versa"
    # And I Configure CPE device type as "Medium" 
    # And Configure access one as "Broadband Internet Access"
    # When I Save the Product Configuration
    # And Complete Profit Approval
    
# Configure SDWAN Versa with Security Upgrade
    # [Tags]    Tier1    SM  
    # Given I Select SD-WAN Product with Vendor "Versa"
    # And I Configure CPE device type as "Medium" 
    # And I Select Security upgrade
    # And Configure access one as "Broadband Internet Access"
    # When I Save the Product Configuration
    # And Complete Profit Approval
    
 # Prepare Order and Complete the Sales Exit Criteria 
    # [Tags]    Generic    SFA
    # And I change the stage of opportunity as "Solution Defined" and Prepare order
    # And I update Order Requirements
    # And Add Contacts to the order
    # # And Create a Deal Support Request
    # And Generate the SOF Document
    # And Add Global Attachment to the order
    # And Select Billing Account for the Order
    # And Submit the order to Swift
    
    
# Complete the Design for the quote in iSE
    # [Tags]    Simplify    iSE
    # Given I login to iSE
    # When I create a Design using Quote ID
    # And I Complete SDWAN Shared Configuration
    # And I Complete the SDWAN Configuration for the Site
    # And I Complete the BIA Configuration for the Site
    # And I Save the Design
    
Complete the tasks for the SDWAN order in Swift
    [Tags]    Generic    Swift
    Given I Open SWIFT
    And I Load order Package ID  
    # And I Validate that the iSE Design ID is displayed in Swift 
    # When Complete Analyze OR Adjust PSPs Task
    # And Complete Gather Order Details Task
    # And Complete Welcome Customer Task   
    # And Complete Customer Coordination Task
    # And Complete Credit check if applicable
    # And Complete Order Validation Task     
    # Then Wait for BPMS Acceptance Task to appear
    # And BPMS Acceptance Task should be Auto Completed
    
# Complete Provisioning From BPMS
    # [Tags]    Generic    BPMS
    # Given Navigate To BPMS
    # When Search For Incomplete Tasks
    # And Research If Results Are Zero
    # And Assign CCD Value
    # And Navigate Back To Results Page
    # Then Complete APR Task
    # Then Complete Follow Up Task
    # Then Complete Initiate ASR Manual
    # Then Complete CaptureFOC
    # Then Complete Receive Completion Notification
    # Then Complete FOC Notification
    # Then Complete Broadband Segment
    
# #Verify Orders are Completed in BPMS
    # Given Navigate To BPMS
    # When Search For Order
    # Then Verify "BROADBAND_ACCESS" Order Is Complete
    # And Verify "HC_SDWAN_CPE" Order Is Complete
    
    
       
# Validate order information in SES
    # [Tags]    Generic    SES
    # Given I Open SES application
    # And Navigate to SES My Services page
    # When I Retrieve the Order
    # Then Check if all ordered products displayed in result 
    # And Send "SD-WAN" to Kenan
    # And Send "CPE Package" to Kenan
    # And Send "Security Upgrade" to Kenan
    # And Send "Broadband Internet Access" to Kenan
    # And Navigate to BIP External Account page
    # And Generate Invoice and send it to "bindya.s.bangera@centurylink.com"
    
    
    