---
title: "Provisioning with Vagrant"
published: true
morea_id: exp_provisioning
morea_type: experience
morea_summary: "Simple Provisioning with Vagrant"
morea_sort_order: 2
---

# Prerequisites
- You have installed and tested [VirtualBox and Vagrant]({{site.baseurl}}/modules/getStarted)
- You have read the Vagrant tutorial on [Provisioning](http://docs.vagrantup.com/v2/provisioning/index.html)

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

<!-- TODO Should these questions be part of assessments instead? -->
