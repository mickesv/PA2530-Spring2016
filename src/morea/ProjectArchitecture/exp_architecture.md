---
title: "Develop Architecture"
published: true
morea_id: exp_architecture
morea_type: experience
morea_summary: "Develop a Systems Architecture for your Cloud Application"
morea_sort_order: 1
---
# Prerequisites
- You have [Selected a Project]({{site.baseurl}}/morea/ProjectBusinessCase/exp_selectproject.html) and described it.


# Identify Architecture Relevant Concerns
Identify those of your requirements that are likely to have an architectural impact. This includes all your usual arcitectural drivers, but may also include some characteristica that are particularly relevant for a cloud solution. Examples of such characteristica include (but are not limited to):

- *Scalability*, in particular being flexible in terms of:
  - Max / median number of concurrent users
  - Max / median acceptable response time
  - Burst rates & times
  - Max / median latency
- *Reliability / Availability*, in particular your requirements on being able to handle:
  - Transient failures
  - Upgrades without downtime
  - Continuous monitoring and logging of application's health
  - Backups
  - Recovery
  - Migration
  - Data persistency
- *Performance*, your base and growth requirements on:
  - Computing power
  - Storage
- *Security*, your particular requirents for security of:
  - Data
  - Your hosts
  - Your network (or, to be specific, your cloud provider's network).
- *Privacy*
- *Cost Optimisation*


# Design a hardware-agnostic component/module view
Taking your architectural drivers, as identified above, into concern, create a component and/or module view.

# Design a cloud-aware deployment architecture
Distribute your modules on a hardware solution. Pay attention to the different tiers (e.g., load balancing, web, app/service, db) that your architecture may include.

Optimise your software and hardware solution for your most important architectural drivers. In particular, pay attention to cost optimisation and scalability requirements. Thus, keep cost optimisation in mind, and try to *reasonably*[^1] minimise the number of required servers. Also devise mechanisms for seamlessly adding more capacity.

You are also expected to devise a strategy for communication/synchronisation between your servers.

# Document
Document your architecture drivers and your architecture. This will be part of your project delivery.

**Hint:** You will also [make a presentation]({{site.baseurl}}/morea/ProjectArchitecture/exp_presentarchitecture.html) of the above, so in order to save effort you may wish to look at the requirements for that presentation before you compile your architecture document.

---
[^1]: For example, if you merge the functionality of two servers, you need to argue why the total load does not exceed the specified capacity of the box. 