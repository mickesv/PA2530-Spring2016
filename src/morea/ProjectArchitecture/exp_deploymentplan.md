---
title: "Develop Deployment Plan"
published: true
morea_id: exp_deploymentplan
morea_type: experience
morea_summary: "Develop a Deployment Plan for your Cloud Application"
morea_sort_order: 2
---
# Prerequisites
- You have [Created an Architecture]({{site.baseurl}}/morea/ProjectArchitecture/exp_architecture.html) for your project.

# Environments
Describe and motivate the deployment environments that you need. This may include (some of) the following:

- Development environment
- Testing environment
- Staging environment
- Production environment

Motivate why you need or do not need a particular environment. Describe how the environments differ, and motivate these differences.

# Filesystem Structuring
Define the directory structure to use in your project. This will include directories e.g. for development, test code, configurations for deployment and provisioning. Make sure that the directory structure is robust enough to allow several, or more than several, developers working in parallel on your application, and that you are able to use and utilize configuration management systems.


# Machine Configuration
Configure the required machines, e.g. in your Vagrantfile.

# Provisioning
Configure the provisioning of your machines, e.g. using Puppet.

## Test
Create a stub of your application and test deploy it in your different environments.

## Document
Your deployment plan is a part of your [presentation]({{site.baseurl}}/morea/ProjectArchitecture/exp_presentarchitecture.html).