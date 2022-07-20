### Title

* Terraform AWS Infrastructure-as-Code (IaC) - Directed Acyclic Graph Validation

### About / Synopsis

* The purpose of this project is to demonstrate the ease and flexibility of Terraform's Infrastructure-as-Code (IaC) capability by creating multiple resources on AWS and by reviewing the Terraform Graph, validate that resources are set up to be acyclic and not in an infinite lop between each other.

### Detailed Description 

* Terraform is installed/initialized on local computer using binary sourced from HashiCorp's website and a sample free AWS account is setup with a "deepto_terraform" root user

![image](https://user-images.githubusercontent.com/46364751/180022179-80f97cf5-9b9a-4c6b-b280-a2e2a5b816f7.png)

![image](https://user-images.githubusercontent.com/46364751/180022202-ebf8c92b-57bd-46f3-9998-6077033e0c79.png)


* Initially, to test connection to AWS, a "connect_test.tf" file is created and AWS account access keys along with a sample S3 bucket are created

![image](https://user-images.githubusercontent.com/46364751/180022238-a443d56a-3cd8-41ec-b3d9-d20a0b72376b.png)

![image](https://user-images.githubusercontent.com/46364751/180022264-88010334-26bc-4b32-bd3e-8d56620e612e.png)


* The AWS resource states are viewed in 2 ways:

	* The terraform.tfstate file is reviewed
	
	![image](https://user-images.githubusercontent.com/46364751/180022486-e8737a35-c926-4272-bc85-8c6fdd6fa90c.png)
	
	![image](https://user-images.githubusercontent.com/46364751/180022522-b7201555-4099-4161-924f-236445561c35.png)
	
	![image](https://user-images.githubusercontent.com/46364751/180022587-7df4b324-5f8c-4a77-bac1-287c4016ac48.png)

	
	* The "terraform state list" command shows the list of all resources
	
	![image](https://user-images.githubusercontent.com/46364751/180022783-8ef09bad-d1d7-4880-9ca0-4a5b954c23b1.png)


* The details of the S3 bucket resource are reviewed in more details using "terraform show" commands in multiple ways, including outputting it in json format

![image](https://user-images.githubusercontent.com/46364751/180023085-68ad358b-17a6-455d-bf06-5706f9d6a962.png)

![image](https://user-images.githubusercontent.com/46364751/180023323-a0507a2f-4fdd-4e51-b141-1529b24393f6.png)


* Upon satisfaction of unit testing, this initial S3 bucket is destroyed

![image](https://user-images.githubusercontent.com/46364751/180025038-6a979972-2dd8-4dcb-a3da-d03b62ec1f76.png)

* A new development file "deepto_terra_dev.tf" is created with multiple new resources, including a data variable

![image](https://user-images.githubusercontent.com/46364751/180025166-1378d273-ae7b-4d05-9418-af1a3d9cc81d.png)

![image](https://user-images.githubusercontent.com/46364751/180025507-716dca31-ec37-4bd3-a00b-81684d6fdab5.png)

![image](https://user-images.githubusercontent.com/46364751/180025539-c9be5aab-c7da-468a-a497-35724ca9a2d1.png)


* The execution plan is reviewed and applied

![image](https://user-images.githubusercontent.com/46364751/180025668-7db8152d-16ed-47fa-bbc4-ae61398e00f9.png)


* The list of created resources are reviewed

![image](https://user-images.githubusercontent.com/46364751/180025767-27309a49-bb63-459b-96d1-9a02f44314cb.png)


* A Terraform Graph is generated 

![image](https://user-images.githubusercontent.com/46364751/180025865-eadecb3b-8f21-441d-abd8-1aea0e0a5779.png)


* Using WebGraphviz.com and the Terraform Graph output, a visualization of all the resources is generated. Upon review of the graph diagram, it is confirmed that there are no nodes that are directly cyclic i.e. looped between each other. A sample path traversal is shown below:

![image](https://user-images.githubusercontent.com/46364751/180025973-f677c693-115c-4607-b346-4947bcce7aa5.png)


* In the AWS Console, the S3 Bucket and EC2 pages show the services are running without issues
![image](https://user-images.githubusercontent.com/46364751/180026303-1647d8e0-5376-4aeb-922d-d3f259e78415.png)

![image](https://user-images.githubusercontent.com/46364751/180026347-9c2572c6-5875-43ad-830d-fca2e638c6b4.png)


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





	
