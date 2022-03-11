## Medical logic modules
A collection of medical logic modules (MLMs) for healthcare systems. These MLMs were written against [Allscripts Sunrise™](https://uk.allscripts.com/solution/sunrise-epr).

### Adren Syntax

MLMs are implemented using Arden Syntax, a Health Level Seven International (HL7) ANSI-approved American National Standard language for encoding medical knowledge. Arden Syntax is used by individual clinicians, institutions, and vendors to develop clinical rules (that is, rules that directly impact patient care) using a standard format and language.

The [HL7 Arden Syntax group](http://www.hl7.org/special/Committees/arden/overview.cfm) represents and promotes its standard. 

## Scripts

The scripts directory contains interactive PowerShell scripts that can be used to generate MLM templates.

| Script                  | Description                        |
|-------------------------|------------------------------------|
| `Generate-Document-MLM` | Generates a document MLM template. |
| `Generate-Event-MLM`    | Generates an event MLM template    |
| `Generate-Form-MLM`     | Generates a form MLM template.     |

### Usage
1. Run the script.
2. Follow the on-screen instructions.

_Hint: On Windows, redirect the command output from the command line to the Windows clipboard using `clip`._