## Activity File: Extracting Evidence for Offline Analysis
   

In this activity, you will continue your role as a digital forensics investigator.
 
- You are tasked with exporting the browser history database for offline examination. 

- This will allow other investigative team members to use alternative methods to analyze, parse, and create reports outside of Autopsy.
 
- The investigative team will use your file exports to identify if Peter has malicious intent.


### Instructions

#### Single File Export
 
A senior investigative team member has asked you to export the `history.db` file for offline analysis.

  1. Locate the `history.db` file in the iPhone image file.
 
  2. Extract the file to the `Export` directory.
 
Now you will view the file using SQLite DB Browser, the third-party application used by your team. It is professional courtesy to verify your exports prior to handing them off to other team members.
 
  3. Open a new terminal window and navigate to the `Export` directory.
 
  4. Run the following command: `sqlitebrowser history.db`.
 
   The SQLite DB Browser will open.
 
  5. Click the **Browse Data** tab.
 
  6. Select **history_visits** in the Table dropdown menu to reveal the browser history.
 
  **Bonus**
 
  - What is the command to launch and simultaneously open the call table?
 
 
#### Data Export Analysis 

1. Analyze the data in the history_visits table, and document any evidence that show's Peter's malicious intent.


----
 
&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary.   All Rights Reserved.

