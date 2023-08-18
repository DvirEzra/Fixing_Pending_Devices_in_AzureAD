# Fixing_Pending_Devices_in_AzureAD
Recently fixed an issue where a computer was pending in Azure AD after replacing the motherboard, causing authentication problems. Running 'dsregcmd /leave' and 'dsregcmd /join' removed and rejoined the computer, forcing Azure AD to re-register it. Helpful when hardware changes cause pending state. #azuread #ithelp
