---
title: "Host Lookup"
published: true
morea_id: exp_lookup
morea_type: experience
morea_summary: "Ensuring that all servers can find each other"
morea_sort_order: 1
---

# Prerequisites
- You have installed and tested [VirtualBox and Vagrant]({{site.baseurl}}/modules/getStarted)
- You have read the Vagrant tutorial on [Multi-Machines](http://docs.vagrantup.com/v2/multi-machine/)
- You have configured the [Basic Multi-Machine Setup]({{site.baseurl}}/morea/03_MultiMachine/exp_multimachine.html)

# Host lookup
There is no simple and obvious way to make sure that your VM's can find out about each others' IP-numbers. You could, as part of Vagrant's provisioning get the IP-address from each machine, e.g. by executing:

{% highlight bash %}
ifconfig eth0 | grep inet | awk '{ print $2 }' | awk -F: '{print $2}' | head -1
{% endhighlight %}

and put into a local [Redis](http://redis.io/) database, that you then can query from your different machines. You can also set a static IP-address for each host, but this will not work when you "go cloud", since you will typically receive a dynamic IP-address from the cloud provider.

Other options include setting up one of your boxes as a DNS server, but it is unclear whether the cloud provider will allow this, and you will have little hope of keeping your DNS server secure. You may also break up yur startup into two parts, where you first create a proxy server with one `vagrant up` command, and then start the rest of your boxes giving the IP-address of your proxy server as a parameter.

A final option, which is the cleanest I have found as yet, is to use Puppet. In your manifest file, you create an array in the top scope, and as you fire up each node, you append the IP-address into that array.

## Tasks
Explore the following options. List benefits and liabilities of each. Create a proof-of-concept for each:

- Split start-up into two separate stages
- Use local Redis server
- Use Puppet to create a local `/etc/hosts` on each guest with all your servers' IP addresses. Please note that `/etc/hosts` is not a shared folder, so you will need to first create it as `/vagrant/hosts`.

  You may run into the problem that all your virtual boxes have the same IP-number. This is because eth0 is the same for all of them, and Puppet uses the first available network interface to determine the `$ipaddress` variable.

<!--
if $ipaddress_eth1==undef {
 $myip=$ipaddress
 } else {
 $myip=$ipaddress_eth1
 }

notify{"my ip ${myip}":}

host {$hostname:
  ensure=>'present',
  target=>'/vagrant/hosts',
  ip=>$myip,
 }
-->


# Summary
You have now a configuration that allows you to start up several virtual boxes and provision them separately, and where the different machines are aware of each other.

# Review Questions
- How can you seamlessly transfer your application to a cloud provider?
- Running several machines on the cloud can become expensive. Are there cheaper options available, rather than creating a single VM for each role?