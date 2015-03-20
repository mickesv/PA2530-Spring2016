---
title: "Provisioning with Puppet"
published: true
morea_id: exp_provisioning_puppet
morea_type: experience
morea_summary: "Provisioning with Puppet"
morea_sort_order: 3
morea_labels:
# - Required
 - Checkpoint
---

# Prerequisites
- You have installed and tested [VirtualBox and Vagrant]({{site.baseurl}}/modules/getStarted)
- You have read the Vagrant tutorial on [Provisioning](http://docs.vagrantup.com/v2/provisioning/index.html)
- You have tested [Provisioning with Vagrant]({{site.baseurl}}/morea/DeployProvisioning/exp_provisioning.html)
- You have studied the Puppet Documentation mentioned in: [Provisioning]({{site.baseurl}}/morea/DeployProvisioning/reading_provisioning.html)

# Convert from Vagrant Provisioning to Puppet
Remove your previous provisioning using Vagrant and the `"shell"` method from your `Vagrantfile`.

Create a file `project_root/manifests/default.pp` and set it up to do the following:

- execute `apt-get update`
- install `curl`
- install `nodejs`

  <div class="alert alert-info" role="alert"><b>Note</b>
  <p>Please note that you first need to execute the following line in order to install the correct version of node.js:  </p>
  <code>
  curl -sL https://deb.nodesource.com/setup | sudo bash -
  </code>
  </div>

## Test
Start up your box and execute the following:

{% highlight bash %}
vagrant ssh -c "node --version"
{% endhighlight %}

The version reported should *at least* be `v0.10.36`. If your version is `v0.6.12` (or similar) you have not executed the curl command above properly.

## Cleanup
Don't forget to run `vagrant destroy -f` to clean up your box once you are done.

<!--
# Checkpoint

TODO: At this point I would want them to download and execute a script that gathers some information and sends it to me...
-->