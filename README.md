# docker-aws

[![Build Status](https://img.shields.io/circleci/token/f41a8ea8d8fe8a47d6d409f60f53230c8c21ff67/project/VerdigrisTech/docker-aws.svg)](https://circleci.com/gh/VerdigrisTech/workflows/docker-aws)
[![Report Issues](https://img.shields.io/badge/issues-pivotal%20tracker-0fc8c3.svg)](https://www.pivotaltracker.com/n/projects/2152215)
[![Join Chat on Slack](https://img.shields.io/badge/slack-%23team--data-0fc8c3.svg)](https://verdigris.slack.com/messages/team-producta_data)

Base image for running AWS CLI commands on [CircleCI](https://circleci.com).

## Usage

Use this image as a primary container for deploying to AWS on
[CircleCI](https://circleci.com):

```yaml
version: 2
jobs:
  test:
    docker:
      - image: verdigristech/aws

# Rest of the config.yml for your project
# ...
```

---

Copyright © 2018 Verdigris Technologies Inc. All rights reserved.
