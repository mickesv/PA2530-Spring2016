---
title: "Install Vagrant"
published: true
morea_id: exp_vagrant
morea_type: experience
morea_summary: "Install and test Vagrant"
morea_sort_order: 1
---

# Install Vagrant
1. Make sure you have already installed [VirtualBox]({{site.baseurl}}/morea/01_GetStarted/exp_virtualbox.html)
1. Download and install Vagrant for your machine: [Download Vagrant](http://www.vagrantup.com/downloads.html)

# Create a new Vagrant Virtual Machine (Box)
1. Create and enter a new directory, and then run `vagrant init hashicorp/precise64` to create a new configuration.

   This will create a stub `Vagrantfile` which contains the configuration for your virtual box.
   
1. Start your virtual machine with `vagrant up` and log in to it with `vagrant ssh`.

   This will download (if necessary) a virtualbox Ubuntu 12.04 LTS 64-bit image, start it for you, and make it available so that you can ssh into it.

1. Browse around. Note that the directory `/vagrant` is the same as your starting directory on your host computer.


### Summary of Commands
{% highlight bash %}
$ mkdir myVagrantTest && cd myVagrantTest
$ vagrant init hashicorp/precise64   
$ vagrant up
[Lots of text here, telling you what Vagrant is up to]
$ vagrant ssh
Welcome to Ubuntu 12.04 LTS (GNU/Linux 3.2.0-23-generic-pae i686)

 * Documentation:  https://help.ubuntu.com/
New release '14.04.2 LTS' available.
Run 'do-release-upgrade' to upgrade to it.

Welcome to your Vagrant-built virtual machine.
Last login: Fri Sep 14 06:22:31 2012 from 10.0.2.2
vagrant@precise32:~$ 
{% endhighlight %}

### Notes

* Exit your Vagrant Virtual Machine as usual: `exit`
* Remember to clean up after yourself:
  {% highlight bash %}
  $ vagrant destroy -f
  {% endhighlight %}

* If you have VirtualBox running, you can see how machines are added and removed as a consequence of the `up` and `destroy` commands.
* To speed things up, you may wish to add a box (a virtual machine image) without attaching it to any particular configuration with `vagrant box add hashicorp/precise64`

   This will download the image and store it for future use. There is a [Catalogue](https://atlas.hashicorp.com/boxes/search) of available virtual machine images available for Vagrant.


# Summary

You have now installed Vagrant. You have downloaded a virtual machine image, started it, and logged in to it. After looking around, you have destroyed your virtual machine, thus leaving a clean slate for the next time you bring the machine up again.

Now would be a good idea to go back to the [Vagrant Tutorial](http://docs.vagrantup.com/v2/getting-started/index.html) and play around a bit more.

## Review Questions
- What can you now use your virtual machine for?
- What if your desired environment consists of several machines?
- Can you install different software so that you may boot up specialised versions of your guest operating systems?

<!-- TODO Should these questions be part of assessments instead? -->

