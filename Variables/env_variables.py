from selenium.webdriver.chrome.options import Options
import os 

chrome_options = Options()

# chrome_options.add_argument("--incognito")
# prefs = {'profile.default_content_setting_values.cookies' : 1}
# chrome_options.add_experimental_option('prefs', prefs)
# prefs = {'profile.block_third_party_cookies' : False}
# chrome_options.add_experimental_option('prefs', prefs)
# chrome_options.add_experimental_option("prefs", {"profile.default_content_settings.cookies": 0})


# chrome_options.add_argument("--disable-infobars")
#chrome_options.add_argument("--disable-popup-blocking")
chrome_options.add_argument("--disable-web-security")
chrome_options.add_argument("--disable-features=SuppressDifferentOriginSubframeJSDialogs")

# chrome_options.add_argument("--disable-notifications")

prefs = {'download.default_directory' : f'{os.getcwd()}\Downloads'}
chrome_options.add_experimental_option('prefs', prefs)

browser = 'Chrome'

def get_variables(arg):
    if arg == 'test1':
        variables = {"env": arg,
                     "chrome_options": chrome_options,
                     "browser": browser,
                     "SFA_Url":"https://lumn--itv1.lightning.force.com/",
                     "SWIFT_URL":"http://${username}:${password}@swiftenv1",
                     "SES_URL":"http://${username}:${password}@revenueservicetest/WebUI/env1/",
                     "AP_URL":"https://autopilotapp-test1-01.test.intranet:3443/login",
                     "FD_URL":"https://flightdeck-ui-test1.kubeodc-test.corp.intranet/#/auth/login",
                     "iSE URL": "http://set-env1.level3.com/#designcards",
                     "GCA_URL": "http://revenueservicetest/WebUI/ENV1/RevenueCreditAuthWeb/Order/List",
                     "BPMS_URL": "http://bpmportalenv1/",
                     "Metastorm_URL": "https://${username}:${password}@mbpm-env1.level3.com/metastormsso/Default.aspx",
                     "ASRI_URL": "http://amd01adc-uat.adc1.level3.com:20100/AmdocsOSS/Portal/login.html",                 
                    }
        return variables
    elif arg == 'test2':
        variables = {"env": arg,
                     "chrome_options": chrome_options,
                     "browser": browser,
                     "SFA_Url":"https://lumn--itv2.lightning.force.com/",
                     "SWIFT_URL":"http://${username}:${password}@swiftenv2/",
                     "SES_URL":"http://${username}:${password}@revenueservicetest/WebUI/env2/",
                     "AP_URL":"https://autopilotapp-test2-01.test.intranet:3443/login",
                     "FD_URL":"https://flightdeck-ui-test2.kubeodc-test.corp.intranet/#/auth/login",
                     "iSE URL": "http://set-env2.level3.com/#designcards",
                     "GCA_URL": "http://revenueservicetest/WebUI/ENV2/RevenueCreditAuthWeb/Order/List",
                     "BPMS_URL": "http://bpmportalenv2/",
                     "Metastorm_URL": "https://${username}:${password}@mbpm-env2.level3.com/metastormsso/Default.aspx",
                     "ASRI_URL": "http://amd03adc-uat.adc1.level3.com:20300/AmdocsOSS/Portal/login.html",                    
                     }
        return variables
    elif arg == 'test4':
        variables = {"env": arg,
                     "chrome_options": chrome_options,
                     "browser": browser,
                     "SFA_Url":"https://lumn--e2e.my.salesforce.com",
                     "SWIFT_URL":"http://${username}:${password}@swiftenv4",
                     "SES_URL":"http://${username}:${password}@revenueservicetest/WebUI/env4/",
                     "AP_URL":"https://autopilotapp-test4-01.test.intranet:3443/login",
                     "FD_URL":"https://flightdeck-ui-test4.kubeodc-test.corp.intranet/#/auth/login",
                     "BPMS_URL": "http://bpmportalenv4/",
                     "iSE URL": "http://set-env4.level3.com/#designcards",
                     "GCA_URL": "http://revenueservicetest/WebUI/ENV4/RevenueCreditAuthWeb/Order/List",
                     "Metastorm_URL": "https://mbpm-env4.level3.com/metastormsso/Default.aspx",
                     "ASRI_URL": "http://amd07adc-uat.adc1.level3.com:20700/AmdocsOSS/Portal/index.html"
                     }                
        return variables

