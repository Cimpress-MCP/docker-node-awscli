# docker-node-aws
A docker image with Node 8 and the AWS CLI

## Instructions
### Build
* (optional) if adding SSH keys to the image, put the PEM files in `/ssh`. known_hosts file should be optional
* `docker build -t <image tag> .`
* `docker run -it <image tag>`

### Publish
* Our image lives in AWS Elastic Container Registry. Up to date information/commands on how to publish the image can be found on the AWS console

### Update
* SSH into build machine and `docker pull <image tag>`
* Theoretically manually pulling shouldn't be necessary, but even with https://github.com/awslabs/amazon-ecr-credential-helper configured we still don't see the updated image pulled down for new builds automatically.
