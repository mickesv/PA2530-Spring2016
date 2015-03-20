---
title: "Cloud Provisioning"
published: true
morea_id: exp_provisioning_cloud
morea_type: experience
morea_summary: "Provision your cloud multi-machine setup"
morea_sort_order: 1
morea_labels:
 - Checkpoint
---
# Prerequisites
- You have created a DigitalOcean [account]({{site.url}}/morea/DeployCloud/exp_create.html)
- You have configured your Vagrantfile as a [multi-machine-setup]({{site.url}}/morea/DeployCloud/exp_multimachines.html)

# Install Puppet
By default, Puppet is not installed on DigitalOcean boxes. Run the following to install a plugin that allows Vagrant to install it on startup.
{% highlight bash %}
$ vagrant plugin install vagrant-puppet-install
{% endhighlight %}

# Create your Puppet manifest
Provision your boxes using Puppet so that:

- appserver has node.js installed.
- dbserver has mysql installed and running.

You *ought* to be able to re-use a lot of the manifest that you created in your [Basic Multi-Machine Setup]({{site.url}}/morea/DeployMultiMachine/exp_multimachine.html).

# Configure Vagrant
Add the following to your `Vagrantfile` to install Puppet and use your manifest to provision your boxes:

{% highlight ruby %}
config.puppet_install.puppet_version = :latest    
config.vm.provision :puppet
{% endhighlight %}

## Test

- Run `vagrant up` and wait for DigitalOcean to create your droplets
- Run the following:

{% highlight bash %}
$ vagrant ssh appserver -c "node --version && npm --version"
$ vagrant ssh dbserver -c "mysqlshow --user=root --password=<YOUR_ROOT_PASSWORD>"
{% endhighlight %}

- Run `vagrant ssh <boxname>` and poke around.


## Cleanup       
Once you are done, **don't forget** to run `vagrant destroy -f`!
If you don't, your droplet will keep running and cost you money.


# Summary
You have now created a Vagrant configuration that runs two boxes on a cloud provider (DigitalOcean), individually provisioned.

