az ml workspace create -g $(azureml.resourceGroup) -w $(azureml.workspaceName) -l $(azureml.location) --exist-ok --yes
