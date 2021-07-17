existingaks=$(az ml computetarget list -g $(azureml.resourceGroup) -w $(azureml.workspaceName) --query "[?name=='$(aks.clusterName)'].name" -o tsv)
[[ -z "$existingaks" ]] && az ml computetarget create aks -g $(azureml.resourceGroup) -w $(azureml.workspaceName) -n $(aks.clusterName) -s $(aks.vmSize) -a $(aks.agentCount) || echo "compute target already exists, skipping..."
