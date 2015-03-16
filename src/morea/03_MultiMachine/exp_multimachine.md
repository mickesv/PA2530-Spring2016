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

  **Note**: You will want to set up port forwarding here, so that port 8080 on your host is forwarded to port 80 on your guest.

- Test servers with the hostnames `tst0`, `tst1`, and `tst2`

  **Tip**: The Vagrantfile is written in Ruby. Use this to make the number of test servers configurable.
  

# Provisioning
Using Puppet and the `node` directive, provision your servers so that:

- appserver has node.js installed
- dbserver has mysql installed and running
- web has nginx installed and running
- tst0 -- tst2 have simply ran `apt-get update` and nothing more.

  **Tip 1**: You can use regular expressions to define the node names in your Puppet manifest.

  **Tip 2**: Use the `default` node for the servers you have not yet set up.

  **Note**: You should not need to change the provisioning in your `Vagrantfile`; it should remain one line that is valid for all VM's.

## Test
Start your virtual boxes and run the following to test your configurations:
{% highlight bash %}
$ vagrant ssh appserver -c "node --version && npm --version"
$ curl http://127.0.0.1:8080/
$ vagrant ssh dbserver -c "mysqlshow --user=root --password=<YOUR_ROOT_PASSWORD>"
{% endhighlight %}

Cleanup afterwards by running `vagrant destroy -f`

# Summary
You have now a configuration that allows you to start up several virtual boxes and provision them separately.

## Review Questions
- How should you structure your project directory so that all puppet and your server configurations are neatly kept in one place?
- How do you populate your database with data?
- How do you automatically configure your boxes so they can find each other?

<!-- TODO Should these questions be part of assessments instead? -->

#Cave!
You have only scratched the surface of Puppet. There is a lot more to explore. For example, <https://forge.puppetlabs.com/> has a large set of preconfigured modules that one may install. You should also study how to set up a puppet master that continuously monitors and manages your configuraton.
