# Local Deployment of the POSSIBLE Project

This repo contains a docker stack to deploy the services in the POSSIBLE project on a local development system.
To fully run the stack, it is expected that the [POSSIBLE-X Portal](https://github.com/POSSIBLE-X/possible-x-portal) as well as the [POSSIBLE-X Participant Portal](https://github.com/POSSIBLE-X/possible-x-participant-portal) are checked out in a folder "next to" the localdeployment folder, i.e. they can be referenced e.g. by `../possible-x-portal` and `../possible-x-participant-portal` respectively.

## Usage

### Preparation
Copy the `secrets_example/` folder to a `secrets/` folder. 
For IONOS S3 Transfer, add your secrets to the `secrets/edc_ionos_secrets.txt` file.


To run the stack with the partially private repos of POSSIBLE, generate a (classic) token at https://github.com/settings/tokens with the scope `read:packages` only.
Then log into your GitHub account using your user name and the just created token with
```
sudo echo [YOUR_READONLY_GITHUB_TOKEN] | docker login ghcr.io -u [YOUR_GITHUB_USERNAME] --password-stdin
```
Add this token at `secrets/git_auth_token.txt` as well.

Next, add your key for signing verifiable credentials at `secrets/vc_signing_key.txt`.

### Run docker compose
Create needed docker folder structure:
```
> ./scripts/recreate_docker_data.sh
```

Force re-pull images (e.g. when an update is not automatically picked up by docker)
```
> docker compose pull
```

Start the whole stack:
```
> docker compose up -d
```

Trigger a rebuild (e.g. when you change the code)
```
> docker compose up --build --force-recreate
```

Initialize Piveau with example participants
```
> ./scripts/init_catalog.sh
```

If you want to debug a specific service (e.g. by running it locally on the host system), you start docker compose up with all the services listed except the specific service to debug.
For example if you wanted to leave out the edc2, you would use 
```
> docker compose up edc1
```

Alternatively you can also first start the full stack and then shut down a specific service (e.g. the edc2) with

    docker compose down edc2
