---
title: "Getting Started With Virtualisation"
published: true
morea_id: getStarted
morea_outcomes:
 - outcome_virtualbox
 - outcome_vagrant
morea_readings:
 - reading_virtualbox
 - reading_vagrant
morea_experiences:
 - exp_virtualbox
 - exp_vagrant
morea_assessments:
 - ass_vagrant
morea_type: module
morea_sort_order: 1
morea_icon_url: /morea/01_GetStarted/logo_vbox.png
morea_labels:
 - 10 hours
---
Introduces a tool for virtualisation (VirtualBox), and a layer on top of this tool that enables automation (Vagrant).


<!--
Before deploying a cloud application, it is a good idea to first develop and test it locally. This can be done by first setting up a "private virtual cloud" (PVC for short), with all the machines you want, provisioned with the server software you need, and your application deployed on them.

In this module we introduce `VirtualBox` as one solution for creating your PVC.

Many virtualisation softwares, and VirtualBox in particular, has a graphical user interface. While this may be desirable in some cases, this makes it difficult to automate the creation of your PVC. Therefore, we also introduce `Vagrant`, which functions as a command-line based layer on top of VirtualBox.
-->