

## Usage ##
```
docker run --rm \
	-e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} \
	-e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} \
	-e AWS_SESSION_TOKEN="${AWS_SESSION_TOKEN}" \
	-e AWS_DEFAULT_REGION=us-east-1 \
	-v $(pwd):/data/ \
	ajmath/terraform:0.6.7-dev-elasticbeanstalk plan
```

### Optional features ###

#### Pass in ssh configuration ###

Mount a ssh key to `/opt/deploy_rsa`, `/opt/deploy_dsa`, `/opt/deploy_ecdsa` to
have it added to /root/.ssh/.

Pass in a `~/.ssh/known_hosts` line via `-e KNOWN_HOSTS=...` to have it added to `/root/.ssh/known_hosts`


#### Run with support for local modules ####

Mount the dir containing all modules and source as /data/ and then pass in
`-e TF_DIR=...` to have terraform only work in `TF_DIR`
