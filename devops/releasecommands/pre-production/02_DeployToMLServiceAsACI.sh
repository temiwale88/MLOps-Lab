az ml model deploy -g $(azureml.resourceGroup) -w $(azureml.workspaceName) -n $(service.name.staging) -f ../metadata/model.json --dc aciDeploymentConfig.yml --ic inferenceConfig.yml --overwrite
