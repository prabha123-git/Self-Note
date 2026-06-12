
# EC2 Changing Instance Type

## Example

`t2.micro` → `t2.small`
---
### Steps

### Note: This only works for EBS-backed instances.
```
1. Stop the instance.
2. Go to **Instance Settings** → **Change Instance Type**.
3. Select the required instance type.
4. Start the instance.
```
---

### EC2 SSH for troubleshooting.

```
- Make sure the private key (pem Key) on your Linux machine has 400 permissions, else you will get "Unprotected Private Key file" error
- Also, you need to make sure that the username you provide when doing the SSH command is correct based on the OS you're connecting to,otherwise, you will get an error that will say host key not found, permission denied or connection closed by the instance on port 22.

Example : For AWS-linux - ec2-user
           For Ubuntu - Ubuntu
```
---
```
- If you get a **Connection timeout** error by SSH. 
    1. SG is not configured correctly
    2. Check the route table for the subnet(routes traffic destined outside VPC to IGW)
    3. NACL is not configured correctly
    4. Insatance doesn't have a public IPV4
    5. CPU load of the instance is high
 
```

---

### 

