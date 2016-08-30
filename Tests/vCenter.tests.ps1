

Describing "BloodyShell Tests" { 

	#Describes the Generic vCenter tests required to validate the environment.

    #Setup:
    #Code to obtain valid vCenter connection
    $vCenterConn = Connect-ViServer -User "administrator@vsphere.local" -Password "VMware1!" -server "192.168.1.201"

    it "has a valid vCenter connection" { 
        $vCenterConn | should not be null
    }
    
    if ($vCenterConn) { 

        #Only run these tests if vCenter is connected
        it "vsandatastore should exist" { 
            Get-Datastore "vsandatastore" | should not be null
        }
        it "NSX cluster should exist" { 
            Get-Cluster "nsx" | should not be null
        }

        foreach ( $vmhost in get-vmhost) {
            it "Host $($vmhost.name) has NTP server configured" { 
                Get-VMHostNTPServer -VMHost $vmhost | should not be null
            }
        }
    }


}