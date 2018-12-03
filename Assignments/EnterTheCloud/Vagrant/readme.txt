This Vagrantfile can be used to create either local virtual machines or virtual machines on Azure.

Note1: Usage 1 creates two virtual machines that use saltstack for provisioning.

Note2: Usage 2 creates two virtual machines on Azure. This requires an Azure-account. 
In theory the machines should use Saltstack for provisioning on Azure, but this does not work.
There is something called Salt-cloud, which is supported in Azure, but for this you need the paid version of Salt, bundled with Salt-cloud. 
See this link: https://azure.microsoft.com/sv-se/blog/azure-virtual-machines-now-with-salt/
Therefore, Usage 2 only creates the virtual machines, without provisioning.
If needed it should be fairly easy to improve Usage 2, by instead using shell script for provisioning.

Note 3: In the case of using Azure, the Vagrantfile references a number of environment-variables and also key-files and certificate files.
For testing scenario 2 it is required that you prepare the host computer with all of this, plus that you have an active and working Azure account.

#################################
Usage 1:
vagrant up --provider=virtualbox
##################################


#################################
Usage 2:
vagrant up --provider=azure --no-parallel
##################################




/// Michael Hillström, 2018-12-03
