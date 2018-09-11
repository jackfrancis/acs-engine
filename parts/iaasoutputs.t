    "resourceGroup": {
        "type": "string",
        "value": "[variables('resourceGroup')]"
    },
    # all of these values should be computed pre-template runtime
    "vnetResourceGroup": {
        "type": "string",
        "value": "[variables('virtualNetworkResourceGroupName')]"
    },
    "subnetName": {
        "type": "string",
        "value": "[variables('subnetName')]"
    },
    "securityGroupName": {
        "type": "string",
        "value": "[variables('nsgName')]"
    },
    "virtualNetworkName": {
        "type": "string",
        "value": "[variables('virtualNetworkName')]"
    },
    "routeTableName": {
        "type": "string",
        "value": "[variables('routeTableName')]"
    },
    "primaryAvailabilitySetName": {
        "type": "string",
        "value": "[variables('primaryAvailabilitySetName')]"
    },
    "primaryScaleSetName": {
        "type": "string",
        "value": "[variables('primaryScaleSetName')]"
    }

