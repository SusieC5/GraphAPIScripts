<# function addTwoNumbers {

    param (
        $firstNumber,
        $secondNumber
    )
   
        return $firstNumber + $secondNumber
}

$total = addTwoNumbers -firstNumber 5 -secondNumber 31

write-host "Not so fun fact: if I add the day and month of my birthday together I get $total"
 #>

$number = Get-Random -Minimum 1 -Maximum 5000
$number