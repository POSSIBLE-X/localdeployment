# Local Deployment of the POSSIBLE Project

This repo contains a docker stack to deploy the services in the POSSIBLE project on a local development system.


## Usage

### Preparation
Copy the `secrets_example/` folder to a `secrets/` folder. 
If IONOS S3 Transfer should be enabled, add your secrets to the `secrets/edc_ionos_secrets.txt` file.

To run the stack with the partially private repos of POSSIBLE, generate a (classic) token at https://github.com/settings/tokens with the scope `read:packages` only.
Then log into your GitHub account using your user name and the just created token with
```
sudo echo [YOUR_READONLY_GITHUB_TOKEN] | docker login ghcr.io -u [YOUR_GITHUB_USERNAME] --password-stdin
```


### Run docker compose
Start the whole stack:
```
> docker compose up
```

Trigger a rebuild (e.g. when you change the code)
```
> docker compose up --build --force-recreate
```

If you want to debug a specific service (e.g. by running it locally on the host system), you start docker compose up with all the services listed except the specific service to debug.
For example if you wanted to leave out the edc2, you would use 
```
> docker compose up edc1
```

Alternatively you can also first start the full stack and then shut down a specific service (e.g. the edc2) with

    docker compose down edc2
