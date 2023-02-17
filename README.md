# Team-Six-Project

### Steps to release an application


#### Create helm chart 
```
helm create application 
```

#### Update image information 
#### Change values.yaml
```
image:
  repository: us-west2-docker.pkg.dev/team6
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "latest"
```

#### Deploy application 
```
helm install traefik  ./application/
```

### Verify
```
helm list 
````

