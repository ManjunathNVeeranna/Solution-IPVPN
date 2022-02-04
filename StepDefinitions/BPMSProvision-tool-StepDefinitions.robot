*** Settings ***
Resource    ../Imports/CommonImports.robot
Resource    ../Imports/BPMS-tool-imports.robot

*** Variables ***
${assign_provisioning_request}    Assign Provisioning Request
${follow_up}    Follow Up
${initiate_asr_manual}    Initiate ASR Manual
${capture_foc}    CaptureFOC
${receive_completion_notification}    Receive Completion Notification
${foc_notification}    FOC Notification
${complete_broadband_segment}    Complete Broadband Segment
${static_ip}    11.11.11.14/24
${gateway_ip}    11.11.11.11/24

*** Keywords ***
Navigate To BPMS
    Launch BPMS    ${BPMS_URL}
      
Search For Incomplete Tasks
    Navigate To Task Reporting Page
    Search Incomplete Tasks    ${var_customerordernum}
    ${currentUser}=    Get Current User
    Set Global Variable    ${assigned_to}    ${currentUser}   
     
Assign CCD Value
    Wait For Task To Appear    ${assign_provisioning_request}    timeout=1 minute    retry=25
    Click on Manage Task    ${assign_provisioning_request}
    Wait For Page To Load    30s
    Navigate To Order Detail Page
    Wait For Page To Load    30s 
    Sleep    5s   
    Navigate To Order Date tab
    Wait For Page To Load    30s
    ${date}=    Get Date In Mmddyyy    days=2
    Fill CCD Commit Date    ${date}
    Save CCD
    Clear Notifications


Navigate Back To Results Page
    Click On Back
    Wait For Page To Load    30s
    Click On Back
    Wait For Page To Load    30s


Complete APR Task
    Wait For Task To Appear    ${assign_provisioning_request}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${assign_provisioning_request}    timeout=30s    retry=10
    Click on Manage Task    ${assign_provisioning_request}
    Assign Future Task To User    ban
    Save And Complete Task
    

Complete Follow Up Task
    Wait For Task To Appear    ${follow_up}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${follow_up}    timeout=30s    retry=10
    Click on Manage Task    ${follow_up}
    Check Mandatory Field
    Save And Complete Task
    
Complete Initiate ASR Manual
    Wait For Task To Appear    ${initiate_asr_manual}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${initiate_asr_manual}    timeout=30s    retry=10
    Click on Manage Task    ${initiate_asr_manual}
    ${date}=    Get Date In Mmddyyy    2
    ${timestamp}=    Get Timestamp
    Fill ASR Submit Date    ${date} 
    Fill Sub Account    ${timestamp}
    Fill Request Date    ${date}
    Save And Complete Task
    
Complete CaptureFOC
    Wait For Task To Appear    ${capture_foc}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${capture_foc}    timeout=30s    retry=10
    Click on Manage Task    ${capture_foc}
    ${date}=    Get Date In Mmddyyy    2
    Fill Expected RCVD Date    ${date}
    Fill FOC RCVD Date    ${date}
    Fill Commit Date    ${date}
    Save And Complete Task
    
Complete Receive Completion Notification
    Wait For Task To Appear    ${receive_completion_notification}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${receive_completion_notification}    timeout=30s    retry=10
    Click on Manage Task    ${receive_completion_notification}
    ${date}=    Get Date In Mmddyyy    2
    ${timestamp}=    Get Timestamp
    Fill Account Number    ${timestamp}
    Fill Date Completion    ${date}
    Fill Static IP    ${static_ip}
    Fill Gateway IP    ${gateway_ip}
    Save And Complete Task
    

Complete FOC Notification
    Wait For Task To Appear    ${foc_notification}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${foc_notification}    timeout=30s    retry=10
    Click on Manage Task    ${foc_notification}
    Save And Complete Task
    

Complete Broadband Segment
    Wait For Task To Appear    ${complete_broadband_segment}    timeout=30s    retry=5
    Check and Assign    ${assigned_to}    ${complete_broadband_segment}    timeout=30s    retry=10
    Click on Manage Task    ${complete_broadband_segment}
    Save And Complete Task
    Check Task Completed