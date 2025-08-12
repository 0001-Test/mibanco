az group create -n tp-mibanco -l eastus
az provider register --namespace Microsoft.ContainerRegistry
az acr create -g tp-mibanco -n mibancoacr --sku Basic --admin-enabled true
az provider register --namespace Microsoft.ContainerService
az aks create -g tp-mibanco -n mibanco-aks --node-count 1 --generate-ssh-keys --attach-acr mibancoacr --node-vm-size Standard_A2_v2
az aks get-credentials -g rg-mibanco -n mibanco-aks
az ad sp create-for-rbac \
  --name "ghactions-mibanco" \
  --role Contributor \
  --scopes /subscriptions/<SUBSCRIPTIONS_ID> \
  --sdk-auth

############################################

helm repo add ingress-nginx https://kubernetes.github.io/ingress-nginx
helm repo update
helm install ingress-nginx ingress-nginx/ingress-nginx --namespace ingress-nginx --create-namespace