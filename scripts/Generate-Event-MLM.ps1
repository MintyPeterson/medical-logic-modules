<#
.SYNOPSIS
  Generates an event MLM template.
.DESCRIPTION
  This script generates a template for an event-triggered medical logic module (MLM)
  based on user input. Event MLMs perform actions in response to a system-defined trigger.
#>

# These values will be used if optional inputs aren't supplied.
# You can replace these values with your own defaults.
$defaultInstitution = 'NHS'
$defaultAuthor = 'Tom Cook'
$defaultSpecialist = $defaultAuthor

# These values are used to configure various functionalty.
# You can replace these values with your own or use $null.
$namePrefix = 'nhs'
$lineLengthLimit = 50

# Prompts for mandatory/optional user input.
function Get-Input($prompt, $defaultValue) {
  if (![string]::IsNullOrWhiteSpace($defaultValue)) {
    $prompt = $prompt + ' (default: ' + $defaultValue + ')'
  }

  do {
    $userInput = Read-Host $prompt

    if ([string]::IsNullOrWhiteSpace($userInput) -And ![string]::IsNullOrWhiteSpace($defaultValue)) {
      $userInput = $defaultValue
    }
  }
  while([string]::IsNullOrWhiteSpace($userInput))

  return $userInput
}

# Takes a line of text and adds line breaks to make a paragraph.
function Convert-Line-To-Paragraph($line) {
  if (!$lineLengthLimit -or $line.Length -le $lineLengthLimit) {
    return $line
  }

  $paragraph = $null

  while ($line.Length -gt $lineLengthLimit) {
    $lastSpace = $line.LastIndexOf(' ', $lineLengthLimit)
    if ($lastSpace -eq -1) {
      $lastSpace = $lineLengthLimit
    }
    $paragraph += $line.Substring(0, $lastSpace).Trim() + "`r`n`t`t"
    $line = $line.Substring($lastSpace)
  }

  $paragraph += $line.Trim()

  return $paragraph
}

# Read the inputs.
$title = Get-Input 'Title'
$purpose = Get-Input 'Purpose'
$explanation = Get-Input 'Explanation'

Write-Host ''
Write-Host 'The following options can be left blank to accept the default values.'
Write-Host ''

[Diagnostics.CodeAnalysis.SuppressMessageAttribute(
  'PSUserDeclaredVarsMoreThanAssignments', 'Institution is used in ExpandString.')]
$institution = Get-Input 'Institution' $defaultInstitution

[Diagnostics.CodeAnalysis.SuppressMessageAttribute(
  'PSUserDeclaredVarsMoreThanAssignments', 'Author is used in ExpandString.')]
$author = Get-Input 'Author' $defaultAuthor

[Diagnostics.CodeAnalysis.SuppressMessageAttribute(
  'PSUserDeclaredVarsMoreThanAssignments', 'Specialist is used in ExpandString.')]
$specialist = Get-Input 'Specialist' $defaultSpecialist

# Build the outputs.
if (![string]::IsNullOrWhiteSpace($namePrefix)) {
  $namePrefix = $namePrefix + '_'
}

[Diagnostics.CodeAnalysis.SuppressMessageAttribute(
  'PSUserDeclaredVarsMoreThanAssignments', 'Name is used in ExpandString.')]
$name = ($namePrefix + $title).Replace(' ', '_').ToLower()

[Diagnostics.CodeAnalysis.SuppressMessageAttribute(
  'PSUserDeclaredVarsMoreThanAssignments', 'Date is used in ExpandString.')]
$date = [DateTime]::Today.ToString('yyyy-MM-dd')

$purpose = Convert-Line-To-Paragraph $purpose
$explanation = Convert-Line-To-Paragraph $explanation

# Add outputs to the template.
$documentTemplate = @'
maintenance:
	title: ${title};;
	mlmname: ${name};;
	arden: version 2.5;;
	version: 1.00;;
	institution: ${institution};;
	author: ${author};;
	specialist: ${specialist};;
	date: ${date};;
	validation: testing;;

library:
	purpose:
		${purpose}
	;;
	explanation:
		${explanation}

		Version 1.00
		------------
		+ Initial version.
	;;
	keywords:
		event
	;;
	citations:
		None.
	;;

knowledge:
	type:
		data-driven
	;;
	data:
		// Define the evoking events.
		// See: https://github.com/MintyPeterson/medical-logic-modules#events
	;;
	priority:
		50
	;;
	evoke:
	;;
	logic:
		conclude true;
	;;
	action:
		// Trigger the evoking events.
	;;

Urgency: 50;;
end:
'@

Write-Output $ExecutionContext.InvokeCommand.ExpandString($documentTemplate)