#adding two values entered in the command-line. args[0] being the
#first input, [1] being # the second inputsdff
<#
function Add-Numbers {
          return($args[0] + $args[1])
}
Add-Numbers $args[0] $args[1]
#>
<#
function Add-Numbers ($intX, $intY){
          $result = $intX + $intY
          $result
}
Add-Numbers $args[0] $args[1]
#>
<#
function Add-Numbers{
          #initialize the parameters if not present
          Param([int]$intX = -1, [int]$intY = -1)
          $result = $intX + $intY
          if($result -ge 0)
          {
                    $bRet = $true
          }
          else {
                    $bRet = $false
          }
          return $bRet
}
Add-Numbers $args[0] $args[1]
#>
<#
function Add-Numbers($intValues){
          $intTotalSum = 0
          foreach($intSingle in $intValues)
          {
                    $intTotalSum += $intSingle
          }
          Write-Host "The total sum is $intTotalSum"
}
Add-Numbers 100, 20, 30, 2, 9, 11, 83
#>
<#
function Add-Numbers{

          $intTotalSum = 0
          for($i=0; $i -lt $args.Length; $i++)
          {
                    $intTotalSum += [int]$args[$i]
          }
          Write-Host "The total sum is $intTotalSum"
}
Add-Numbers 2 3 8 2 12
#>
<#
#Note that there is no function defined therefore, you can run this
#directly on the console.
param
(
       [Parameter(Mandatory=$true)]
       $Name,
       [Parameter(Mandatory=$true)]
       $SSN
)
"The information entered '$Name' and '$SSN'"
#>
function Two-Arrays{
          $script:Beck= @(1..100 | Get-Random -Count 10)       # 1st array with 10 random ints
          $script:McFaul = @(1..100 | Get-Random -Count 10)    # 2nd array with 10 random ints
       Write-Host "The created arrays are `nBeck  :$Beck `nMcFaul:$Mcfaul`n"
}
Two-Arrays
function Compare-Arrays($firstArray, $secondArray){
       $BeckWins = 0               # Keeps track of Beck wins
       $McFaulWins = 0             # Keeps track of McFaul wins
       for($i=0; $i -le $firstArray.Length; $i++)
          {          # if values of Beck array is greater than McFaul +1 to BeckWins
                    if ($firstArray[$i] -gt $secondArray[$i]){ 
                           $BeckWins += 1
                     } # if values of Beck array are less than McFaul +1 to McFaulWins
                     elseif ($firstArray[$i] -lt $secondArray[$i]){
                            $McFaulWins += 1
                     }
          }
       # if BeckWins is > McFaulWins then announce winner   
       if ($BeckWins -gt $McFaulWins){    
              Write-Host "The winner is Beck with $BeckWins Wins!`n"
       }
       # if McFaulwins is > BeckWins then announce winner
       elseif ($McFaulWins -gt $BeckWins) {
              Write-Host "The winner is McFaul with $McFaulWins wins!`n"
       }
       # if BeckWins == McFaulWins the announce tie
       else {
              Write-Host "It's a tie!`n"
       }   
}
Compare-Arrays $Beck $McFaul