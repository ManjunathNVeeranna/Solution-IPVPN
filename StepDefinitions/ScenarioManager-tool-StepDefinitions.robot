*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/ScenarioManager-tool-imports.robot

*** Keywords ***

I Create an Quote
    Naviagte to SM
    Create Quote
    
I Add Location to the Quote 
    Adding Locations
           
Complete Profit Approval
    Validate Product Package
    
#*******************************************************************************
#                    UCaaS - Zoom
#*******************************************************************************
    
# I Select UCaaS Product with UCaas Type "${UCaaSType}"
    # Select Product    UCaaS
    # Select UCaaS Type    ${UCaaSType}
    # Set Suite Variable    ${var_UCaaSType}    ${UCaaSType}
    
# I Configure Plan type "${ZoomPlanType}" with License Quantity "${LicenseQty}"
    # Set Suite Variable    ${var_ZoomPlanType}    ${ZoomPlanType}
    # Set Suite Variable    ${var_LicenseQty}    ${LicenseQty}
    # Configure Plan type   ${ZoomPlanType}    ${LicenseQty} 
    
# # I choose add on - "${}" with quantity "{}"
    

# I finish the configuration
    # Finish Configuration
    
    
#****************************************************************************************
#                     SDWAN - Versa
#****************************************************************************************
# I Select SD-WAN Product with Vendor "${SdwanVendor}"
    # Select Product    SD-WAN
    # Select SDWAN Vendor    ${SdwanVendor}
    # Set Suite Variable    ${var_SdwanVendor}    ${SdwanVendor}
    
# I Configure CPE device type as "${CPEdevicetype}"
    # Select CPE device type    ${CPEdevicetype}
    
# I Select Security upgrade
    # select security upgrade
    
# Configure access one as "${AccessOne}"
    # Configure Access One    ${AccessOne}
    
# I Save the Product Configuration
    # Save the Product Configuration
    

#****************************************************************************************
#                     SDWAN - Meraki
#****************************************************************************************

# Configure "${Product}" Product "${BundleName}" Bundle without LTE  
    # Select Product    ${Product}
    # Configure SDWAN Meraki Product 
    # Configure Bundle    ${BundleName}    None  
    # Save the Product Configuration  
    
# Configure "${Product}" Product "${BundleName}" Bundle with LTE 
    # Select Product    ${Product}
    # Configure SDWAN Meraki Product 
    # Configure Bundle    ${BundleName}    Cellular Internet Access  
    # Save the Product Configuration   
    




###############################################

             ###IPVPN######
            
##################################################


I Select IPVPN Product
    Select Product    IP VPN Port and Access
    
I Select with Access "${IPVPNAccess}"
    Select Access Type  "${IPVPNAccess}"
    # Click Continue
    # Click Continue under Logical Interface
    # Click Continue under Local Access
    # Click Continue under VPN Port
    Complete Configuration
    # Complete Profit Approval
