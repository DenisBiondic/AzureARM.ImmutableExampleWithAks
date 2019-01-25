#!/bin/sh

# call the script as ./deploy.sh <<cluster_name>> <<service_principal_app_id>> <<service_principal_secret>>

if ! az group show -n my-aks-group
then az group create -n my-aks-group -l northeurope
fi

az group deployment create --name AksDeployment --resource-group my-aks-group --template-file aks.json \
    --parameters @aks.params.json --parameters resourceName=$1 \
    --parameters servicePrincipalClientId=$2 --parameters servicePrincipalClientSecret=$3