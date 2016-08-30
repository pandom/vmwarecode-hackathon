## VMworld 2016 VMware{code} Hackathon

## Objectives

Create a fixture of tests using Behaviour Driven Development processes. This provides users the ability to pro-actively check and validate a variety of checks to ensure health and stability of the SDDC stack.


## Requirements

* PowerNSX - one line installer - ``` $Branch="v2";$url="https://raw.githubusercontent.com/vmware/powernsx/$Branch/PowerNSXInstaller.ps1"; try { $wc = new-object Net.WebClient;$scr = try { $wc.DownloadString($url)} catch { if ( $_.exception.innerexception -match "(407)") { $wc.proxy.credentials = Get-Credential -Message "Proxy Authentication Required"; $wc.DownloadString($url) } else { throw $_ }}; $scr | iex } catch { throw $_ } ```
 
* Pester - https://github.com/pester/Pester/wiki/Pester
* PShould - https://github.com/jonwagner/PShould
* Posh-SSH - https://github.com/darkoperator/Posh-SSH

## Tasks

These are tasks that are required

* Install above repos into Powershell
* Install NSX 6.2.4 against NUC (NSX-Manager-6.2.4-`*`.ova on Anthony's laptop)
* Modify controller cluster (1vcpu,512MB) (VMware staff task)
* Prepare NSX
* Deploy 3 tier app (3_Tier-App-v1.5.ova on Anthony's laptop)
* Deploy Edge/DLR/LS + 3 Tier app.

* Build recursive master test fixture script. This will recursively run test in each folder as part of the fixture.
* Build tests for specific functions thought about by team.

## Example Pester test.


```
