$PasswordProfile = @{
    Password = 'Password1234'
    }

New-MgUser -DisplayName 'Susanna Cheng' `
    -PasswordProfile $PasswordProfile `
    -AccountEnabled `
    -MailNickName 'SueC' `
    -UserPrincipalName 'SueC@blanknessplc.onmicrosoft.com'`
    -UsageLocation GB
  