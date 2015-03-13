---
title: "Basic Multi-Machine Setup"
published: true
morea_id: exp_multimachine
morea_type: experience
morea_summary: "A basic setup of some servers"
morea_sort_order: 1
---

# Prerequisites
- You have installed and tested [VirtualBox and Vagrant]({{site.baseurl}}/modules/getStarted)
- You have read the Vagrant tutorial on [Multi-Machines](http://docs.vagrantup.com/v2/multi-machine/)

# Set up Servers
Configure your `Vagrantfile` so that the following boxes are created upon startup, using the `hashicorp/precise64` image:

- Application server, with the hostname `appserver`
- Database server, hostname `dbserver`
- Web server, hostname `web`
- Test servers with the hostnames `tst0`, `tst1`, and `tst2`

  **Note**: The Vagrantfile is written in Ruby. Use this to make the number of test servers configurable.
  

# Provisioning
Using Puppet and the `node` directive, provision your servers so that:

- appserver has node.js installed
- dbserver has mysql installed and running
- web has nginx installed and running
- tst0 -- tst2 have simply ran `apt-get update` and nothing more.

  **Note 1**: You can use regular expressions to define the node names in your Puppet manifest.

  **Note 2**: You should not need to change the provisioning in your `Vagrantfile`; it should remain one line that is valid for all VM's.

## Test
TODO

# Summary
TODO

## Review Questions
TODO

<!--
# Provisioning with Vagrant
In this example you are going to make sure that you have `git` and `node.js` installed and ready to use. In order to install `node.js`, you also need `curl`.

Edit your Vagrantfile so that it reads:

{% highlight ruby %}
Vagrant.configure(2) do |config|
  config.vm.box = "hashicorp/precise64"

  config.vm.provision "shell", inline: <<-SHELL
sudo apt-get update
sudo apt-get install -y curl
sudo apt-get install -y git
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs
sudo apt-get install -y build-essential
  SHELL
end
{% endhighlight %}

As you can see, your provisioning in this case is a simple execution of a shell script.

Now, start your box, ssh into it, and see what you have installed:
{% highlight bash %}
$ vagrant up && vagrant ssh
vagrant@precise64:~$ node --version && npm --version
vagrant@precise64:~$ exit
$ vagrant destroy -f
{% endhighlight %}

# Summary
You now have a virtual box running Ubuntu and with git and node.js installed.

## Review Questions
- How can you integrate this into your development workflow?
  - How will you build your project on this platform?
  - How will you test your project on this platform?
- It takes some time to re-install node.js every time you bring this VM up. Can you speed this up in some way?
- What if you need more machines?
-->
<!-- TODO Should these questions be part of assessments instead? -->
