# Leave Azure AD
dsregcmd /leave

# Wait 30 seconds 
Start-Sleep -Seconds 30

# Rejoin Azure AD
dsregcmd /join
