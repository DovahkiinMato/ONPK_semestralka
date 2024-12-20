# Helm Chart - backend

## Installation
```bash
helm install --name onpk-backend charts/backend
helm install --name onpk-backend charts/backend
```

## Removal
```bash
helm uninstall onpk-backend
```

## Configuration options (values.yaml)

Parameter | Description | Default
---       | ---         | ---
`services.backend.replicaCount` | desired number of backend pods | `1`
`services.backend.image.repository` | backend container image repository | `matejbabic/onpk-backend`
`services.backend.image.tag` | backend container image tag | `""`
`services.backend.image.pullPolicy` | backend container image pull policy | `Always`
`services.backend.env` | any additional environment variables to set in the pods | `(see values.yaml)`
`services.backend.ingress.host` | ingress host | `backend.mbabic.com`
`mongodb.*` | MongoDB chart specific values | `(see values.yaml)`
