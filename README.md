# Fix Pending Devices in Azure AD

This guide explains how to resolve issues with devices stuck in a "pending" state in Azure AD after replacing hardware like the motherboard. 

When hardware components like the motherboard are swapped out, the device's hardware ID changes. Azure AD uses this ID to manage and authenticate devices. 

So when the hardware ID changes, Azure AD will put the device into a pending state until it can re-register the new hardware ID.

## Contents

This guide contains:

- An explanation of why hardware changes cause pending state
- Steps to remove the device from Azure AD 
- Instructions to rejoin the device to Azure AD
- Details on how this forces Azure AD to re-register the device 

## How to Use

Follow these steps:

1. Open an elevated PowerShell prompt
2. Run dsregcmd /leave to remove the device from Azure AD. Run the following command:

    ```PowerShell
    dsregcmd /leave
    ```

![image](https://github.com/DvirEzra/Fixing_Pending_Devices_in_AzureAD/assets/122629905/7c8ffd5a-1ade-4a43-b697-21ff574c447d)



    
3. Restart the computer
4. Run `dsregcmd /join` to rejoin the device to Azure AD. Run the following command:

    ```PowerShell
     dsregcmd /join
    ```

![‏‏לכידה](https://github.com/DvirEzra/Fixing_Pending_Devices_in_AzureAD/assets/122629905/9fb47036-60bc-4e8a-a74c-6387c39bbe6f)



This will force Azure AD to grab the new hardware ID and register the device properly.

Afterwards, the pending state should be resolved and Azure AD authentication issues fixed.

### PowerShell Script

For convenience, you can also run the following script:

```PowerShell
# Leave Azure AD
dsregcmd /leave

# Wait 30 seconds 
Start-Sleep -Seconds 30

# Rejoin Azure AD
dsregcmd /join 
```

Save this script and run it in an elevated PowerShell prompt.
