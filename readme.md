## VMworld 2016 VMware{code} Hackathon

## Objectives

Create a fixture of tests using Behaviour Driven Development processes. This provides users the ability to pro-actively check and validate a variety of checks to ensure health and stability of the SDDC stack.


## Requirements

* PowerNSX
* Pester
* PShould

## Tasks

These are tasks that are required

* Install NSX 6.2.4 against NUC (NSX-Manager-6.2.4-`*`.ova on Anthony's laptop)
* Modify controller cluster (1vcpu,512MB) (VMware staff task)
* Prepare NSX
* Deploy 3 tier app (3_Tier-App-v1.5.ova on Anthony's laptop)

* Build recursive master test fixture script. This will recursively run test in each folder as part of the fixture.
* Build tests for specific functions thought about by team.

## Example Pester test.


```
