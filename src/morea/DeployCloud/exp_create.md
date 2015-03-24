---
title: "Create Cloud Account"
published: true
morea_id: exp_create_account
morea_type: experience
morea_summary: "Create an account on a cloud provider and set up Vagrant to use it"
morea_sort_order: 1
---
# Create an Account

- [optional] Get a [Github Education Pack](https://education.github.com/pack)
- Create an account on [DigitalOcean](https://www.digitalocean.com/)

# Set up Vagrant
Install the DigitalOcean and the Puppet plugins for Vagrant:

{% highlight bash %}
$ vagrant plugin install vagrant-digitalocean
{% endhighlight %}

# Get a Token
Log in to DigitalOcean. Go to "Apps & API"/"Generate new Token".

Give it the name `vagrant`, with read *and* write permissions.

**Copy/paste and SAVE the token in a safe place. You will never find it again.**

# Generate SSH key
You need an SSH key to allow vagrant to login to your new droplet. Run `ssh-keygen`, and when asked where to save the generated key answer `/home/youruser/.ssh/digitalocean/api_id_rsa`. Hit <kbd>Enter</kbd> when asked for a passphrase.

# Create Vagrantfile

- Create and enter a new directory on your computer
- Run `vagrant init` to create a new Vagrantfile
- Edit the VagrantFile:

  - Remove/comment the line "config.vm.box = "base"
  - Add the following:

  {% highlight ruby %}
  config.vm.hostname = 'vagrant-test'

  config.vm.provider :digital_ocean do |provider, override|
    override.ssh.private_key_path = '~/.ssh/digitalocean/api_id_rsa'
    override.vm.box = 'digital_ocean'
    override.vm.box_url = "https://github.com/smdahlen/vagrant-digitalocean/raw/master/box/digital_ocean.box"

    provider.token = 'YOUR-TOKEN'
    provider.image = 'ubuntu-14-04-x64'
    provider.region = 'nyc2'
    provider.size = '512mb'
    provider.setup = false
  end
  {% endhighlight %}

  (See <https://github.com/smdahlen/vagrant-digitalocean> for an explanation of the options)

- Replace YOUR-TOKEN with the token you saved earlier

## Test

- Run `vagrant up` and wait for DigitalOcean to create your droplet
- Run `vagrant ssh` and poke around.

**Tip:** If you have more than one provider configuration (e.g., you may have one "virtualbox" provider, and one "digital_ocean", you may need to specify which provider to use: `vagrant up --provider=digital_ocean`.

## Cleanup       
Once you are done, **don't forget** to run `vagrant destroy -f`!

If you don't, your droplet will keep running and cost you money.


# Summary
You have now created a Vagrant configuration that runs on a cloud provider (DigitalOcean).

## Review Questions

- This Vagrantfile has no default settings for if you want to run it locally. How can you add this, and make sure that it mimics the settings that apply to DigitalOcean?

<!-- TODO Should these questions be part of assessments instead? -->
