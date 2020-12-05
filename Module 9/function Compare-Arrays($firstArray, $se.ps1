function Compare-Arrays($firstArray, $secondArray){
          $BeckWins = 0
          $McFaulWins = 0
          for($i=0; $i -le $firstArray.Length; $i++)
             {
                       if ($firstArray[$i] -gt $secondArray[$i]){ 
                              $BeckWins += 1
                        }
                        elseif ($firstArray[$i] -lt $secondArray[$i]){
                               $McFaulWins += 1
                        }
             }
          if ($BeckWins -gt $McFaulWins){
                 Write-Host "The winner is Beck with $BeckWins Wins!"
          }
          else {
                 Write-Host "The winner is McFaul with $McFaulWins wins!"
          }   
   }
   Compare-Arrays ($Beck, $McFaul)