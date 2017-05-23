﻿<#
.SYNOPSIS
    Restores the Stacks SQL Server Logging NuGet packages.
#>

Push-Location $PSScriptRoot

foreach($item in Get-ChildItem -Path ..\ -Filter 'project.json' -Recurse) {
    Push-Location $item.Directory

    dotnet restore

    Pop-Location
}

Pop-Location