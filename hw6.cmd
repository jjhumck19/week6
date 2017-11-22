az group create --name jhu6RSG --location eastus


az account list-locations --query "[].{Region:name}" --out table

az storage account create --name jhustorageacct --resource-group jhu6RSG --location eastus --sku Standard_LRS --encryption blob


az storage account keys list --account-name jhustorageacct --resource-group jhu6RSG --output table

#set AZURE_STORAGE_ACCOUNT
#set AZURE_storage_ACCESS_KEY

az storage container create --name jhustoragecontainer --account-key CvSNm9qPnhRjbWOiz59ZX2GZFRfzhDwkJmGcHCC5qrqGi87E08eQ89E5JYUpO5ShwY5zefIxp5iIMVAIemhh7A== --account-name jhustorageacct


az storage blob upload --container-name jhustoragecontainer --name jhublob --file /c/cygwin64/home/epgbuwm/homework/week6/storage_table_demo.py


az storage blob upload --container-name jhustoragecontainer --account-key CvSNm9qPnhRjbWOiz59ZX2GZFRfzhDwkJmGcHCC5qrqGi87E08eQ89E5JYUpO5ShwY5zefIxp5iIMVAIemhh7A== --account-name jhustorageacct --name jhublob --file /c/cygwin64/home/epgbuwm/homework/week6/storage_table_demo.py