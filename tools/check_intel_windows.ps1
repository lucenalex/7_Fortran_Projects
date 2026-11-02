# Verificacao SOMENTE de leitura, destinada a Windows com Intel oneAPI/HPC Toolkit e Visual Studio.
# Nao compila nem executa qualquer fonte ou binario legado.
param([switch]$RequireCompiler)
$ErrorActionPreference = 'Stop'
$root = (Resolve-Path (Join-Path $PSScriptRoot '..')).Path
$commandNames = @('ifx', 'ifort', 'devenv', 'vswhere', 'cmake')
$available = foreach ($name in $commandNames) {
    $command = Get-Command $name -ErrorAction SilentlyContinue
    [pscustomobject]@{ Tool = $name; Found = [bool]$command; Location = $(if ($command) { $command.Source } else { '' }) }
}
$projects = @(Get-ChildItem -LiteralPath $root -File -Recurse -Filter '*.vfproj' |
    Where-Object { $_.FullName -notmatch '[\\/]\.git[\\/]' } |
    ForEach-Object {
        $text = [System.IO.File]::ReadAllText($_.FullName)
        [pscustomobject]@{
            Project = $_.FullName.Substring($root.Length + 1)
            IntelFortran = $text.Contains('ProjectCreator="Intel Fortran"')
            HasIfxReference = $text.Contains('ifxCompiler')
            Win32 = $text.Contains('Win32')
            X64 = $text.Contains('x64')
        }
    })
$result = [pscustomobject]@{
    Timestamp = (Get-Date).ToString('o')
    Computer = $env:COMPUTERNAME
    Tools = @($available)
    ProjectCount = @($projects).Count
    Projects = @($projects)
    Comment = 'Environment inventory only. No projects were compiled or executed.'
}
$result | ConvertTo-Json -Depth 5
if ($RequireCompiler -and -not (@($available | Where-Object { $_.Tool -in @('ifx','ifort') -and $_.Found }).Count)) {
    Write-Error 'Intel Fortran compiler unavailable in current shell. Configure oneAPI command prompt.'
    exit 2
}
