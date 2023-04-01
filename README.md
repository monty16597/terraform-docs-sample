# Introduction
This project is sample of how terraform-doc in action works. It has automated terraform docs for the modules which are being created at [modules directory](https://github.com/monty16597/terraform-docs-sample/tree/main/modules). It will run [GitHub Action Workflow](https://github.com/monty16597/terraform-docs-sample/blob/main/.github/workflows/terraform-docs.yml). The workflow generate and update README.md file for modules on pull request creation.

*Note:* Please enable `Read and Write permissions` in [Workflow permissions of Action Settings of repo](https://github.com/monty16597/terraform-docs-sample/settings/actions)

We can add `terraform-docs.yml` configuration file in each modules to override settings of the terraform-docs tool.
i.e. We are overiding content of README.md file in lambda and s3 modules to add example. i.e. [Lambda terraform-docs configuration](https://github.com/monty16597/terraform-docs-sample/blob/main/modules/lambda/.terraform-docs.yml) and [Lambda generated README](https://github.com/monty16597/terraform-docs-sample/blob/main/modules/lambda/README.md).
