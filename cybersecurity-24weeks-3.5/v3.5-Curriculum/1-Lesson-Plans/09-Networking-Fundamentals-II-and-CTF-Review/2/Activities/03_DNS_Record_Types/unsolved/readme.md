## Activity File: Analyzing DNS Record Types

In this activity, you will play the role of a security analyst at Acme Corp.

- Acme Corp recently updated the DNS records for several of its sites and needs you to confirm if the updates worked.

- Your task is to use `nslookup` to validate the DNS records for each of the domains provided.

- Make sure to include the command that was used to retrieve the results.

### Instructions
   
1. Acme Corp owns the following domains:
  
    - splunk.com
    - fireeye.com
    - nmap.org
    
    For each website, determine the following information for the DNS records and document your findings:
  
    - A record
        - Each result should include:
            - Name
            - IP address
    - NS record
        - Each result should include:
            - nameserver FQDN
            - nameserver IP address
    - MX record
        - Each result should include:
            - MX record
            - Priority
            - Hostname
  
2. Answer the following questions:
    
    a. Did any of the domains have more than one MX record? If so, why do you think that is?
    
    b. For nmap.org, list the mail servers from the highest to lowest priority.
  
#### Bonus

- Look up the SPF record for nmap.org and explain what it indicates.

---
© 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
