<# 
.DESCRIPTION
Calcular el indice de masa corporal
.EXAMPLE
    .\IMC.ps1
    ¿Peso (kg)? 80
    ¿Altura (cm)? 1.76
    Tú IMC es 25,82
    [Bajo peso|Normal|Sobrepeso|Obeso]
.EXAMPLE
    .\IMC.ps1 -Peso 80 Altura 176
    Tú IMC es 25,82
#>
Param(
    [int]$peso,
    [int] $altura
)

if ($peso -eq ""){
    [int]$peso = Read-Host -Prompt "¿Cuál es tu peso (kg)? " 
}

if ($altura -eq ""){
    [int]$altura = Read-Host -Prompt "¿Cuánto mides (cm)? "
}

$alturaf = $altura / 100
$resultado = $peso/($alturaf*$alturaf)
Write-Host "Tu IMC es $resultado"

if ($resultado -lt 18.5){
Write-Host "Usted está demasiado flaco"
}

elseif ($resultado -lt 24.9){
Write-Host "Usted tiene un peso normal"
}


elseif ($resultado -lt 29.9){
Write-Host "Usted tiene sobrepeso"
}

elseif ($resultado -gt 30){
Write-Host "Usted tiene obesidad"
}
