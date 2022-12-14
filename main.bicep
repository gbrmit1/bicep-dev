


module core_vnet_deployment './module/vnet_deployment.bicep' = {
  name: 'coreVnetDeploy'
  params: {
    vnetname: 'CoreServicesVnet'
    vnetaddressprefix: '10.20.0.0/16'
    vnetlocation: 'eastus'
    tagowner: 'robert mitchell'
    subnets:[
      {
        name: 'gatewaysubnet'
        subnetprefix: '10.20.0.0/27'
      }
      {
        name: 'sharedservicessubnet'
        subnetprefix: '10.20.10.0/24'
      }
      {
        name: 'databasesubnet'
        subnetprefix: '10.20.20.0/24'
      }
      {
        name: 'publicwebservicesubnet'
        subnetprefix: '10.20.30.0/24'
      }
    ]

  }
}

module mfg_vnet_deployment './module/vnet_deployment.bicep' = {
  name: 'mfgVnetDeploy'
  params: {
    vnetname: 'MfgServicesVnet'
    vnetaddressprefix: '10.30.0.0/16'
    vnetlocation: 'westeurope'
    tagowner: 'robert mitchell'
    subnets:[
      {
        name: 'sensorsubnet1'
        subnetprefix: '10.30.20.0/24'
      }
      {
        name: 'sensorsubnet2'
        subnetprefix: '10.30.21.0/24'
      }
      {
        name: 'sensorsubnet3'
        subnetprefix: '10.30.22.0/24'
      }
    ]

  }
}

module res_vnet_deployment './module/vnet_deployment.bicep' = {
  name: 'resVnetDeploy'
  params: {
    vnetname: 'ResServicesVnet'
    vnetaddressprefix: '10.40.0.0/16'
    vnetlocation: 'southeastasia'
    tagowner: 'robert mitchell'
    subnets:[
      {
        name: 'researchsubnet'
        subnetprefix: '10.40.0.0/24'
      }
    ]

  }
}



