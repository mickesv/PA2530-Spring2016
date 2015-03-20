---
title: "Multiple Machine Setup"
published: true
morea_id: exp_multimachine_cloud
morea_type: experience
morea_summary: "Create a multi-machine setup for your cloud provider"
morea_sort_order: 1
---
# Prerequisites
- You have created a DigitalOcean [account]({{site.url}}/morea/DeployCloud/exp_create.html)

# Multiple Machines
Configure your `Vagrantfile` to include the following two boxes:

- Application server, with the hostname `appserver`
- Database server, with the hostname `dbserver`

Note that you do not need to modify the `config.vm.provider` block you created previously.

## Test

- Run `vagrant up` and wait for DigitalOcean to create your droplets
- Run `vagrant ssh <boxname>` and poke around.

## Cleanup       
Once you are done, **don't forget** to run `vagrant destroy -f`!
If you don't, your droplet will keep running and cost you money.


# Summary
You have now created a Vagrant configuration that runs two boxes on a cloud provider (DigitalOcean).

## Review Questions
- How do you provision your droplets individually?

<!-- TODO Should these questions be part of assessments instead? -->
