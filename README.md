# SRE Agent Deployment

This repository contains the deployment configuration for our [SRE Agent](https://github.com/fuzzylabs/sre-agent), which is designed to monitor and diagnose issues in a Kubernetes cluster. The agent uses the Model Context Protocol (MCP) to communicate with various servers that provide information about the cluster and the codebase.

In this project you can build all of the necessary infrastructure in an AWS account using Terraform and then deploy the services using Helm.

## Quick Start

1. Deploy infrastructure using Terraform: [Documentation](terraform/README.md)

2. Deploy services using Helm: [Documentation](helm/README.md)
