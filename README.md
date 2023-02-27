# Team-Six-Project

### Prerequisites for build.yaml workflow
  1. Create a Google Cloud Service account and add the Service Account Key to repo Secrets under "GCP_SA_KEY" name.
  2. Create a SonaCloud account and a project and add the sonar token to repo secrets under "SONAR_TOKEN" name.
  3. Create a Google Artifact repository using terraform and provided .tf files in GCP-Artifact-Repo folder.
  3. Provided the requested Workflow environment variables as requested bellow
  ```yaml
  env:
  repo:             "" # Add the URL for the desired GitHub Repository to build and push
  app_version:      "" # Add desired app version
  repo_region:      "" # Specify Google Artifact Region
  app_name:         "" # Will be used as working directory must corresponed to the cloned repository name
  tag_new_version:  ${GITHUB_SHA} # GitHub Variable storing commit's message
  enable_sonar:     true # True for repo code scanning
  project_id:       "" #Enter GCP project ID
  gcp_repo_name:    "" # Google Artifact repository name
  sonar_cloud_org:  "" # Add SonarCloud Organization name
  sonar_cloud_proj: "" # Add SonaCloud Project name

  ```




### Prerequisites for HELM
  1. Have installed and configure GCP CLI
  2. Have a working domain setup with GCP

#### Create helm chart 
1. Clone the Github Repository
2. Set the desired values in the values.yaml file
2. Run 
```
helm package [CHART_PATH] [...]
```
3. Install via 
```
helm install dokuwiki dokuwiki-0.1.0.tgz
``` 
*(dokuwiki-0.1.0.tgz default package name)


