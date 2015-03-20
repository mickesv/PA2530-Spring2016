---
title: "Install VirtualBox"
published: true
morea_id: exp_virtualbox
morea_type: experience
morea_summary: "Install and test Virtualbox"
morea_sort_order: 1
---

# Install VirtualBox

1. Download VirtualBox for your machine: [Download VirtualBox](https://www.virtualbox.org/wiki/Downloads)
1. Read more about installation details here: [VirtualBox User Manual, Chapter 2. Installation Details](https://www.virtualbox.org/manual/ch02.html)
1. Also download and install the *VirtualBox Extension Pack*

# Terminology

Read and understand the following terms, and how they relate to each other.

- Host Operating System
- Guest Operating System
- Virtual Machine

<!-- - Guest Addons -->

# Download Ubuntu ISO

1. Download [Ubuntu](http://www.ubuntu.com/download). Any version will do.

# Create a Virtual Machine

1. Start VirtualBox
1. Create a new Virtual Machine

   ![Create New](FVbox_tb.png)

1. Give it a name, and select Linux/Ubuntu (64 bit)

   ![Create New Dialogue](FVbox_new.png)

1. Click through all the other options with <kbd>Continue</kbd> and <kbd>Create</kbd> (it alternates)
1. Double click your newly created virtual machine. It will now ask you to select an install media.

   Click on the folder, select your downloaded ubuntu image, and then click on <kbd>Start</kbd>

   You are now running the ubuntu installer in your virual machine. Install Ubuntu in your usual way.

# Start/Pause/Stop your Virtual Machine

- Double-clicking on your VM in VirtualBox' UI will start your machine.
- CLosing the window will prompt you whether you want to pause the VM, shutdown nicely, or pull the plug.

   ![Close VM window](FVbox_close.png)

- The same options are also available by right-clicking your VM in the VirtualBox UI.

# Summary

You have now installed VirualBox. You have created a new virtual machine, and have installed ubuntu on it.

## Review Questions
- What can you use your virtual machine for?
- Can you start up your VM automatically?
- Can you start up your VM *without* attaching a screen (and run it like a true server)?
- What if your desired environment consists of several machines?
- Can you install different software so that you may boot up specialised versions of your guest operating systems?


<!-- TODO Should these questions be part of assessments instead? -->

