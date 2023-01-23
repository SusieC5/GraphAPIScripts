function createPassword {

    # set length of password and number of special characters/numbers you want in it. Rest of password will be made of random upper/lowercase letters
    param (
        $stringLength = 14,
        $numLength = 3,
        $specialCharLength = 2,
        $charLength = $stringLength - $numLength - $specialCharLength
    )
    
    # variable for randomly generating characters
    $char = ((65..90)+ (97..122) | Get-Random -Count $charLength | ForEach-Object {[char]$_})
    
    # if NO numbers or special characters needed
    if (($specialCharLength -eq 0) -and ($numLength -eq 0)) {
        
        -Join ($char | Get-Random -Count $stringLength | ForEach-Object {[char]$_})
       }

    # if either numbers or special characters are needed
    elseif (($specialCharLength -eq 0) -or ($numLength -eq 0)) {

        if ($specialCharLength -eq 0) {

            $num = ((48..57)| Get-Random -Count $numLength | ForEach-Object {[char]$_})

             -Join ($char + $num | Get-Random -Count $stringLength | ForEach-Object {[char]$_})
        }
        
        else {
    
            $special = ((33..47) + (58..64)| Get-Random -Count $specialCharLength | ForEach-Object {[char]$_})

             -Join ($char + $special | Get-Random -Count $stringLength | ForEach-Object {[char]$_})
   
}
} 

# if numbers and special characters ARE needed
else {

    $num = ((48..57)| Get-Random -Count $numLength | ForEach-Object {[char]$_})
    $special = ((33..47) + (58..64)| Get-Random -Count $specialCharLength | ForEach-Object {[char]$_})

    -Join ($char + $special + $num | Get-Random -Count $stringLength | ForEach-Object {[char]$_})
}
}
createPassword
