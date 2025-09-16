[CmdletBinding()]
param (
    [Parameter(HelpMessage="The action to execute.")]
    [ValidateSet("Build", "Pack")]
    [string] $Action = "Build",

    [Parameter(HelpMessage="The msbuild configuration to use.")]
    [ValidateSet("Debug", "Release")]
    [string] $Configuration = "Debug",

    [switch] $SkipClean
)

function RunCommand {
    param ([string] $CommandExpr)
    Write-Verbose "  $CommandExpr"
    Invoke-Expression $CommandExpr
}

$rootDir = $PSScriptRoot
$srcDir = Join-Path -Path $rootDir -ChildPath 'src'
$projectDir = Join-Path -Path $srcDir -ChildPath 'Falco.Template'

if (!$SkipClean.IsPresent)
{
    RunCommand "dotnet restore $projectDir --force --force-evaluate --nologo --verbosity quiet"
    RunCommand "dotnet clean $projectDir -c $Configuration --nologo --verbosity quiet"
}

switch ($Action) {
    "Pack"  { RunCommand "dotnet pack `"$projectDir`" -c $Configuration --include-symbols --include-source" }
    Default { RunCommand "dotnet build `"$projectDir`" -c $Configuration" }
}
