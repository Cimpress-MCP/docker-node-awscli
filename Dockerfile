FROM node:8.4.0
LABEL maintainer="lynxsquad@cimpress.com" nodeVersion="8.4.0" version="1.0.0"

# apt-get must be updated first
RUN apt-get update

# Official AWS documentation recommends using python3 and associated tooling.
# That doesn't work, or at least it does not work as easily as advertised.
# Instead, just go with 'standard' python
RUN apt-get install python-dev python-pip -y

# The awsebcli has a dependency issue, this resolves it
RUN easy_install --upgrade six

RUN pip install awscli

# Elastic Beanstalk has its own CLI
RUN pip install awsebcli

ADD ./ssh root/.ssh
RUN chmod 700 root/.ssh/gitlab_rsa

RUN npm i -g yarn@v1.3.2

CMD ["/bin/bash"]
