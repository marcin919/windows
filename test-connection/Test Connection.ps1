$names=Get-content ".\ipadd_spec.txt"
  foreach($name in $names){
    if(Test-Connection -ComputerName $name -Count 1 -ErrorAction SilentlyContinue){
        Write-Host "$name is up" -ForegroundColor Green
        $output+="$name is up,"+"`n"
     }
     else{
         Write-Host "$name is down" -ForegroundColor Red
          $output+="$name is down,"+"`n"
      }
    }

  $output | Out-File ".\result.txt"
  Start-Sleep -s 15
