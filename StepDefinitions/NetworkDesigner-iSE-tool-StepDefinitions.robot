*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/NetworkDesigner-iSE-tool-imports.robot


*** Variables ***
${username}    AB99286
${password}    VErna@1951

*** Keywords ***
I login to iSE
    Launch iSE    ${iSE URL} 
    Login to iSE    ${username}    ${password}
    
I create a Design using Quote ID
    Create Design using Quote    ${var_QuoteID}    
    
I Complete IPVPN Configuration
    Edit IPVPN Configuration    ${VRFName}
    # Specify the YesOrNo field    Utilizing Lumen ITS?    No
    # Specify the YesOrNo field    Firewall or Routing Services Only?    No
    # Specify the YesOrNo field    Non-standard Design Requirements?    No
    # Specify the YesOrNo field    Voice Services?    No
    # Specify the YesOrNo field    Security Services?    No
    # Specify the YesOrNo field    New Network Deployment    Yes
    # Enter Number Of Planned Appliances    1
    # Click On Update Button    
    



#I Complete SDWAN Shared Configuration
    # Edit SDWAN Shared Configuration
    # Specify the YesOrNo field    Utilizing Lumen ITS?    No
    # Specify the YesOrNo field    Firewall or Routing Services Only?    No
    # Specify the YesOrNo field    Non-standard Design Requirements?    No
    # Specify the YesOrNo field    Voice Services?    No
    # Specify the YesOrNo field    Security Services?    No
    # Specify the YesOrNo field    New Network Deployment    Yes
    # Enter Number Of Planned Appliances    1
    # Click On Update Button  
# I Complete the SDWAN Configuration for the Site
    # Edit SDWAN Premium 
    # Specify the YesOrNo field    Multi Tenant    No
    # Click On Update Button
    # Acknowledge all defaults
    # Click On Update Button
   
# # I Complete the BIA Configuration for the Site
    # # Edit BIA
    # Acknowledge all defaults
    # Click On Update Button

I Save the Design
    Save Design 
    Get iSE Design ID 
    Close Design
       
    