## Solution Guide: Warm-up

- The first step is to navigate into the `/03-student/day2/warmup/` folder on your virtual machine. To do this, run the following command:

    - `cd /03-student/day2/warmup/`

- Next, confirm which directories are in this folder by running `ls`. This will display the following three directories:

    -  `physical_access_logs/`

    -  `server_logs/`

    -  `web_logs/`
      
- The next step is to create a directory called `additional_evidence`. Run the following command:      

    - `mkdir additional_evidence`

- We have been tasked with viewing the `physical_access_logs`. To navigate into this directory, run:

    - `cd physical_access_logs/`
      
- This folder contains six physical access logs. To view the contents, run preview commands (`head`, `more`, or `less`) to find out which contain the data for October 13, 2019. For example:

    - `head physical1`
       
 - After viewing all the files, we determine that the two files containing logs for that date are `physical4` and `physical5`. We need to combine these two files into a single file called `Physical_Access_evidence`.
 
   To do this, run the `cat` command:  
 
   - `cat physical4  physical5 > Physical_Access_evidence`
 
 - We can run the `ls` command again to show that the file has been created.
 
 - Lastly, we need to move this new file to the `additional_evidence` folder. We do this using absolute paths:
 
    - `mv /03-student/day2/warmup/physical_access_logs/Physical_Access_evidence /03-student/day2/warmup/additional_evidence`
            
--- 

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
