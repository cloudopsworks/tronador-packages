<!-- 
  ** DO NOT EDIT THIS FILE
  ** 
  ** This file was automatically generated. 
  ** 1) Make all changes to `README.yaml` 
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file. 
  -->
[![README Header][readme_header_img]][readme_header_link]

[![cloudopsworks][logo]](https://cloudops.works/)

# Cloud Ops Works Accelerate Packages

 [![Build Status](https://github.com/cloudopsworks/tronador-packages/workflows/build/badge.svg?branch=master&event=push)](https://github.com/cloudopsworks/tronador-packages/actions/workflows/build.yml) [![Latest Release](https://img.shields.io/github/v/release/cloudopsworks/tronador-packages?display_name=tag)](https://github.com/cloudopsworks/tronador-packages/releases/latest) [![Slack Community](https://slack.cloudops.works/badge.svg)](https://slack.cloudops.works)


This `tronador` is a collection of Makefiles to facilitate building Golang projects, Dockerfiles, Helm charts, and more.
It's designed to work with CI/CD systems such as GitHub Actions, Codefresh, Travis CI, CircleCI and Jenkins.


---

This project is part of our comprehensive approach towards DevOps Acceleration. 
[<img align="right" title="Share via Email" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/ios-mail.svg"/>][share_email]
[<img align="right" title="Share on Google+" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-googleplus.svg" />][share_googleplus]
[<img align="right" title="Share on Facebook" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-facebook.svg" />][share_facebook]
[<img align="right" title="Share on Reddit" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-reddit.svg" />][share_reddit]
[<img align="right" title="Share on LinkedIn" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-linkedin.svg" />][share_linkedin]
[<img align="right" title="Share on Twitter" width="24" height="24" src="https://docs.cloudops.works/images/ionicons/logo-twitter.svg" />][share_twitter]




It's 100% Open Source and licensed under the [APACHE2](LICENSE).











## Screenshots


![demo](https://cdn.rawgit.com/cloudopsworks/tronador/master/docs/demo.svg)
*Example of using the `tronador` to build a docker image*



## Usage



At the top of your `Makefile` add, the following...

```make
-include $(shell curl -sSL -o .tronador "https://cowk.io/acc"; echo .tronador)
```

This will download a `Makefile` called `.tronador` and include it at run-time. We recommend adding the `.tronador` file to your `.gitignore`.

This automatically exposes many new targets that you can leverage throughout your build & CI/CD process.

Run `make help` for a list of available targets.

**NOTE:** the `/` is interchangable with the `:` in target names

## GitHub Actions

The `tronador` is compatible with [GitHub Actions](https://github.com/features/actions).

Here's an example of running `make readme/lint` 

```
name: tronador/readme/lint
on: [pull_request]
jobs:
  build:
    name: 'Lint README.md'
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - uses: cloudopsworks/tronador@master
      with:
        entrypoint: /usr/bin/make
        args: readme/lint
 ```

## Quick Start

Here's how to get started...

1. `git clone https://github.com/cloudopsworks/tronador-packages.git` to pull down the repository
2. `make init` to initialize the [`tronador`](https://github.com/cloudopsworks/tronador-packages/)




## Makefile Targets
```
gh                        2.33.0     
ghr                       0.14.2     Upload multiple artifacts to GitHub Releases in parallel
gitversion                6.0.0-beta.3 GitVersion Tool - from log to SemVer
gomplate                  3.10.0     
semver                    v0.4.5     SEMVER utility for versioning generation
terraform                 1.3.3      Terraform is a tool for building, changing, and combining infrastructure safely and efficiently.
terraform-docs            0.16.0     Generate docs from terraform modules
yq                        4.23.1     
```



## Share the Love 

Like this project? Please give it a ★ on [our GitHub](https://github.com/cloudopsworks/tronador-packages)! (it helps us **a lot**) 

Are you using this project or any of our other projects? Consider [leaving a testimonial][testimonial]. =)


## Related Projects

Check out these related projects.

- [Packages](https://github.com/cloudopsworks/tronador) - Cloud Ops Works installer and distribution of native apps




## References

For additional context, refer to some of these links. 

- [Wikipedia - Test Harness](https://en.wikipedia.org/wiki/Test_harness) - The `tronador` is similar in concept to a "Test Harness"


## Help

**Got a question?** We got answers. 

File a GitHub [issue](https://github.com/cloudopsworks/tronador-packages/issues), send us an [email][email] or join our [Slack Community][slack].

[![README Commercial Support][readme_commercial_support_img]][readme_commercial_support_link]

## DevOps Tools

## Slack Community


## Newsletter

## Office Hours

## Contributing

### Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudopsworks/tronador-packages/issues) to report any bugs or file feature requests.

### Developing




## Copyrights

Copyright © 2021-2023 [Cloud ops Works LLC](https://cloudops.works)





## License 

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0) 

See [LICENSE](LICENSE) for full details.

    Licensed to the Apache Software Foundation (ASF) under one
    or more contributor license agreements.  See the NOTICE file
    distributed with this work for additional information
    regarding copyright ownership.  The ASF licenses this file
    to you under the Apache License, Version 2.0 (the
    "License"); you may not use this file except in compliance
    with the License.  You may obtain a copy of the License at

      https://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing,
    software distributed under the License is distributed on an
    "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
    KIND, either express or implied.  See the License for the
    specific language governing permissions and limitations
    under the License.









## Trademarks

All other trademarks referenced herein are the property of their respective owners.

## About

This project is maintained by [Cloud Ops Works LLC][website]. 


### Contributors

|  [![Cristian Beraha][berahac_avatar]][berahac_homepage]<br/>[Cristian Beraha][berahac_homepage] |
|---|

  [berahac_homepage]: https://github.com/berahac
  [berahac_avatar]: https://github.com/berahac.png?size=50

[![README Footer][readme_footer_img]][readme_footer_link]
[![Beacon][beacon]][website]

  [logo]: https://cloudops.works/logo-300x69.svg
  [docs]: https://cowk.io/docs?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=docs
  [website]: https://cowk.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=website
  [github]: https://cowk.io/github?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=github
  [jobs]: https://cowk.io/jobs?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=jobs
  [hire]: https://cowk.io/hire?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=hire
  [slack]: https://cowk.io/slack?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=slack
  [linkedin]: https://cowk.io/linkedin?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=linkedin
  [twitter]: https://cowk.io/twitter?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=twitter
  [testimonial]: https://cowk.io/leave-testimonial?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=testimonial
  [office_hours]: https://cloudops.works/office-hours?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=office_hours
  [newsletter]: https://cowk.io/newsletter?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=newsletter
  [email]: https://cowk.io/email?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=email
  [commercial_support]: https://cowk.io/commercial-support?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=commercial_support
  [we_love_open_source]: https://cowk.io/we-love-open-source?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=we_love_open_source
  [terraform_modules]: https://cowk.io/terraform-modules?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=terraform_modules
  [readme_header_img]: https://cloudops.works/readme/header/img
  [readme_header_link]: https://cloudops.works/readme/header/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=readme_header_link
  [readme_footer_img]: https://cloudops.works/readme/footer/img
  [readme_footer_link]: https://cloudops.works/readme/footer/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=readme_footer_link
  [readme_commercial_support_img]: https://cloudops.works/readme/commercial-support/img
  [readme_commercial_support_link]: https://cloudops.works/readme/commercial-support/link?utm_source=github&utm_medium=readme&utm_campaign=cloudopsworks/tronador-packages&utm_content=readme_commercial_support_link
  [share_twitter]: https://twitter.com/intent/tweet/?text=Cloud+Ops+Works+Accelerate+Packages&url=https://github.com/cloudopsworks/tronador-packages
  [share_linkedin]: https://www.linkedin.com/shareArticle?mini=true&title=Cloud+Ops+Works+Accelerate+Packages&url=https://github.com/cloudopsworks/tronador-packages
  [share_reddit]: https://reddit.com/submit/?url=https://github.com/cloudopsworks/tronador-packages
  [share_facebook]: https://facebook.com/sharer/sharer.php?u=https://github.com/cloudopsworks/tronador-packages
  [share_googleplus]: https://plus.google.com/share?url=https://github.com/cloudopsworks/tronador-packages
  [share_email]: mailto:?subject=Cloud+Ops+Works+Accelerate+Packages&body=https://github.com/cloudopsworks/tronador-packages
  [beacon]: https://ga-beacon.cloudops.works/G-7XWMFVFXZT/cloudopsworks/tronador-packages?pixel&cs=github&cm=readme&an=tronador-packages
