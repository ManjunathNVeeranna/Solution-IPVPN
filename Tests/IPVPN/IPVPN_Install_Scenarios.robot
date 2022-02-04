*** Settings ***
Resource    ../../StepDefinitions/Salesforce-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/ScenarioManager-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/NetworkDesigner-iSE-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/Swift-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/SES-tool-StepDefinitions.robot
Resource    ../../StepDefinitions/ASRI-tool-StepDefinitions.robot
#Resource    ../../StepDefinitions/BPMSProvision-tool-StepDefinitions.robotssssss
Test Teardown    Run Keyword If Test Failed    Capture Page Screenshot   
#Suite Teardown    Run Keyword    Close All Browsers          
   

*** Test Cases ***

# Create an Opportunity in Salesforce
   # [Tags]    Generic    SFA  
   # Given I log in to Salesforce
   # And I Create an Opportunity
    
# Create an Quote and add location 
    # [Tags]    Generic    SM
    # Given I Create an Quote
    # And I Add Location to the Quote
    
# Create IPVPN Product
    # [Tags]    Simplify    SM
    # Given I Select IPVPN Product
    

    # #And I Select Product "${Product}"
    # # And Configure access one as "Broadband Internet Access"
    # # When I Save the Product Configuration
    # # And Complete Profit Approval
    

# Configure IPVPN Product
    # [Tags]    Tier1    SM
    # Given I Select with Access "Ethernet 100Mbps "
    # # And Click Continue
    # # And Click Continue under Logical Interface
    # # And Click Continue under Local Access
    # # And Click Continue under VPN Port
    # And Complete Configuration
    # And Complete Profit Approval
   
    



# Prepare Order and Complete the Sales Exit Criteria 
    # [Tags]    Generic    SFA
    # And I change the stage of opportunity as "Solution Defined" and Prepare order
    # And I update Order Requirements
    # And Add Contacts to the order
    # # # #And Create a Deal Support Request
    # #And Generate the SOF Document
    # And Add Global Attachment to the order
    # And Select Billing Account for the Order
    # And Submit the order to Swift
    


    
    
# Complete the Design for the quote in iSE
    # [Tags]    Simplify    iSE
    # Given I login to iSE
    # When I create a Design using Quote ID
    # And I Complete IPVPN Configuration
    # And I Save the Design
    
# Complete the tasks for the IPVPN order in Swift
    # [Tags]    Generic    Swift
    # Given I Open SWIFT
    # And I Load order Package ID 
    # And I Validate that the iSE Design ID is displayed in Swift 
    # When Complete Analyze OR Adjust PSPs Task
    # #And Complete Gather Technical Information Task
    # And Complete Welcome Customer Task   
    # And Complete Customer Coordination Task
    # And Complete Order Details Task
    # And Complete Credit check if applicable

    
    
Complete Tasks in ASRI
    [Tags]    Generic    ASRI
    Given I Login to ASRI
    And I Click on Tasks Menu
    # Then Tasks page will be displayed
    #And I Click on Team Tasks 
    And I Search with the Order package ID
    # And I Complete the TDG Task
    And I Complete Device Port Selection task
    
       
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
    
    
    