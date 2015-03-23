---
title: "Deploy Project"
published: true
morea_id: exp_deploy
morea_type: experience
morea_summary: "Deploy your project on the Cloud"
morea_sort_order: 1
morea_labels:
 - Checkpoint
---
# Prerequisites
- You have [Created a Deployment Plan]({{site.baseurl}}/morea/ProjectArchitecture/exp_deploymentplan.html) for your project.
- You have [Created a Test Plan]({{site.baseurl}}/morea/ProjectImplementation/exp_testplan.html) for your project.
- You have [Implemented]({{site.baseurl}}/morea/ProjectImplementation/exp_implement.html) your project.

# Test
Deploy your project in your test environment. Run your system tests. Run any other tests that you have created.

Maintain a test log during this stage so that it is possible to see which commands you enter, which tests you have run, in what order, and the state of your application and machines before and after each test.

# Stage
If you have defined a staging environment, deploy your project here and re-run all the tests once more. Update your test log continuously.

# Deploy
Deploy your project with your cloud provider, and re-run relevant tests again (remember to keep your test log updated).

# Cleanup
Rember to always clean up and bring down your machines when you are not using them. You are now running live on a cloud provider and have a limited budget.