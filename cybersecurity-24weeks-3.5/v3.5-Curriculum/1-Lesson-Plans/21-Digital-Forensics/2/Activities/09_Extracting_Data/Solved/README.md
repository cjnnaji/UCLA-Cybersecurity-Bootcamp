## Solution Guide: Extracting Evidence for Offline Analysis

#### Single File Export
 
A senior investigative team member has asked you to `Export` the `history.db` file for offline analysis.
  
  1. Locate the `history.db` file in the iPhone image file.
 
  2. Extract the file to the `Export` directory 
 
Now you will view the file using SQLite DB Browser, the third-party application used by your team. It's professional courtesy to verify your exports prior to handing them off to other team members.
 
  3. Open a new terminal window and navigate to the `Export` directory.
 
  4. Run the following command: `sqlitebrowser history.db`.
 
  The SQLite DB Browser will open.
 
  5. Click the **Browse Data** tab.
 
  6. Select **history_vists** in the Table dropdown menu to reveal the call history.

 
**Bonus**
 
 - What is the command to launch and simultaneously open the call table?
 
    -  `sqlitebrowser -R -t history_visits history.db`
 
 
#### Data Export Analysis
 
1. Within the history_visits table, there was a column `title` which showed that Peter had malicious intent.
2. Peter was searching for websites which could assist with:
   - Information on Forensic Accounting
   - Tips on how to launder money
----

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary.   All Rights Reserved.

