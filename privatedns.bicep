
param vnetnameforprivatedns string = 'MfgServicesVnet'
resource coreservicesvnet 'Microsoft.Network/virtualNetworks@2022-07-01' existing = {
  name: vnetnameforprivatedns
}

resource privatednszone 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: 'contoso.com'
  location:'global'
  tags: {
    owner: 'robert mitchell'
  }
}


resource privatednszonelink 'Microsoft.Network/privateDnsZones/virtualNetworkLinks@2020-06-01' = {
  name: 'contoso.com/LinkToMfgSubnet'
  location:'global'
  dependsOn: [privatednszone]
  properties: {
    registrationEnabled:true
    virtualNetwork: {
      id: resourceId('Microsoft.Network/virtualNetworks',coreservicesvnet.name)
    }
  }
}


