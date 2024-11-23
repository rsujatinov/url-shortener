# Url Shortener
Let's Build It: Url Shortener

## Infrastructure as Code

### Install Azure CLI

```bash
winget install Microsoft.AzureCLI
```

### Login into Azure

```bash
az login
```

### Create Resource Group

```bash
az group create --name url-shortener-dev --location westeurope
```

### Deployment

#### What If

```bash
az deployment group what-if --resource-group url-shortener-dev --template-file infrastructure/main.bicep
```

#### Deployment

```bash
az deployment group create --resource-group url-shortener-dev --template-file infrastructure/main.bicep
```

### Create User for GH Actions

```bash
az ad sp create-for-rbac --name "GitHub Actions SP" \
                         --role contributor \
                         --scopes /subscriptions/d51680e7-f4be-4dab-8462-588dbd5131dd \
                         --sdk-auth
```

#### Assign Infrastructure Deployer Role

```bash
ter
```

#### Configure a federated identity credential on an app
