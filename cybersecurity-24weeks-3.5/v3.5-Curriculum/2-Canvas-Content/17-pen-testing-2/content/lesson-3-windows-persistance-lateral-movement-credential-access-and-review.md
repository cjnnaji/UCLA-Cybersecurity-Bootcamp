## Lesson 3: Windows Persistence, Lateral Movement, Credential Access, and Review 
 
### Overview

In today's class, you'll finish the second penetration testing module by establishing persistence on a Windows machine, laterally moving to the domain controller, and accessing the database where Active Directory credentials are stored. We'll finish the day with a review of the pen testing modules using a service called Kahoot!
 
### What You'll Learn
 
By the end of today's class, you'll be able to:
 
- Understand how Windows credentials and Mimikatz work.

- Perform lateral movement to other machines in a network.

- Explain what DC replication is and how to use the DCSync attack.

### Today's Activities

* **Credential dumping:** In today's activities, you will continue to play the role of a pen tester conducting an engagement on MegaCorpOne. You are now tasked with using the Metasploit `kiwi` extension to dump the credentials cached on the WIN10 machine. Then, you'll save and crack the hashes using `john`.

* **Credential access:** Since you now have administrator access on WINDC01, you are tasked with performing DCSync to it and recovering password hashes for any user you wish.
