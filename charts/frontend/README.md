# Helm Chart - frontend

## Installation
```bash
helm install --name onpk-frontend charts/backend
helm install --name onpk-frontend charts/backend
```

## Removal
```bash
helm uninstall onpk-frontend
```

## Configuration options (values.yaml)

Parameter | Description | Default
---       | ---         | ---
`services.frontend.replicaCount` | desired number of frontend pods | `3`
`services.frontend.image.repository` | frontend container image repository | `matejbabic/onpk-frontend`
`services.frontend.image.tag` | frontend container image tag | `""`
`services.frontend.image.pullPolicy` | frontend container image pull policy | `Always`
`services.frontend.env` | any additional environment variables to set in the pods | `(see values.yaml)`
`services.frontend.ingress.host` | ingress host | `frontend.mbabic.com`
