<#
.SYNOPSIS
    Script rápido para verificar o status do Zabbix Agent no Windows.
.DESCRIPTION
    Verifica se o serviço 'Zabbix Agent' está instalado, rodando e qual o seu modo de inicialização.
#>

Write-Host "🔍 Verificando o status do Zabbix Agent..." -ForegroundColor Cyan

$serviceName = "Zabbix Agent"
$service = Get-Service -Name $serviceName -ErrorAction SilentlyContinue

if ($null -eq $service) {
    Write-Host "❌ O serviço '$serviceName' não está instalado neste computador." -ForegroundColor Red
} else {
    Write-Host "Status atual: $($service.Status)" -ForegroundColor Yellow
    Write-Host "Modo de início: $($service.StartType)" -ForegroundColor Yellow
    
    if ($service.Status -eq 'Running') {
        Write-Host "✅ O Zabbix Agent está rodando perfeitamente!" -ForegroundColor Green
    } else {
        Write-Host "⚠️ O serviço está parado. Tentando iniciar..." -ForegroundColor Yellow
        Start-Service -Name $serviceName
        Write-Host "✅ Serviço iniciado com sucesso!" -ForegroundColor Green
    }
}