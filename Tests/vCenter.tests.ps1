

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
        it "succeeds because I told it to" { 
            $null | should be null
        }
        it "succeeds because I told it to" { 
            $null | should be null
        }

        it "succeeds because I told it to" { 
            $null | should be null
        }
    }

    it "fails because I told it to" { 
        $null | should not be null
    }

}