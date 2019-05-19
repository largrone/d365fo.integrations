﻿
<#
    .SYNOPSIS
        Enable exceptions to be thrown
        
    .DESCRIPTION
        Change the default exception behavior of the module to support throwing exceptions
        
        Useful when the module is used in an automated fashion, like inside Azure DevOps pipelines and large PowerShell scripts

    .EXAMPLE
        PS C:\>Enable-d365Exception

        This will for the rest of the current PowerShell session make sure that exceptions will be thrown.
        
    .NOTES
        Tags: Exception, Exceptions, Warning, Warnings

        Author: Mötz Jensen (@Splaxi)
#>

function Enable-d365Exception {
    [CmdletBinding()]
    param ()

    $PSDefaultParameterValues['*:EnableException'] = $true
}