function Concatenate-Strings ($X, $Y){
          $result = $X + " " + $Y
          $result.ToUpper()
}
Concatenate-Strings $args[0] $args[1]