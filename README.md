### Title

* Terraform AWS Infrastructure-as-Code (IaC) - Directed Acyclic Graph Validation

### About / Synopsis

* The purpose of this project is to demonstrate the ease and flexibility of Terraform's Infrastructure-as-Code (IaC) capability by creatin multiple resources on AWS and by reviewing the Terraform Graph, validate that resources are set up to be acyclic and not in an infinite lop between each other.

### Detailed Description 

* Terraform is installed/initialized on local computer using binary sourced from HashiCorp's website and a sample free AWS account is setup with a "deepto_terraform" root user

* Initially, to test connection to AWS, a "connect_test.tf" file is created and AWS account access keys along with a sample S3 bucket are created

* The AWS resource states are viewed in 2 ways:

	* The terraform.tfstate file is reviewed
	
	* The "terraform state list" command shows the list of all resources
	

* The details of the S3 bucket resource are reviewed in more details using "terraform show" commands in multiple ways, including outputting it in json format

* Upon satisfaction of unit testing, this initial S3 bucket is destroyed

* A new development file "deepto_terra_dev.tf" is created with multiple new resources, including a data variable

* The execution plan is reviewed and applied


* The list of created resources are reviewed


* A Terraform Graph is generated 



* Using WebGraphviz.com and the Terraform Graph output, a visualization of all the resources is generated. Upon review of the graph diagram, it is confirmed that there are no nodes that are directly cyclic i.e. looped between each other


* In the AWS Console, the S3 Bucket and EC2 pages show the services are running without issues



### Installation / Software Requirements

* The following tool was used in this project:

	* Terraform Open Source 1.2.5
	* Command Prompt 10.0.19041.746
	* Amazon Web Services (AWS) Console
	

### License / Citation

* AWS Customer Agreement: https://aws.amazon.com/agreement/
* Terraform Open Source: https://www.terraform.io/downloads

### Support

* This project is a standalone development initiative without any ongoing support





	