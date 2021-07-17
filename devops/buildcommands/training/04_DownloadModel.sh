az ml model download -g $(azureml.resourceGroup) -w $(azureml.workspaceName) -i $(jq -r .modelId metadata/model.json) -t ./models --overwrite
