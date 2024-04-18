## Activity File: Email Export
 
In this activity, you'll continue in the role of digital forensic investigator.

- Your task is to export the email database for offline examination.
 
- You and the investigative team will use this offline email file to find additional incriminating evidence in an upcoming activity.

### Instructions
 
1. Open your case file in Autopsy:
 
   - Start the Kali VM and open a terminal.

   - Navigate to: `/root/autopsy-files/autopsy-4.10.0/bin`

   - Run `./autopsy` to launch Autopsy.

   - Open the recent case:
      - Case name: `Pure-Gold-Credit-Union`
      - Case number: `1EZ215-P`
 
2. A senior investigative team member has asked you to export the `Mail` folder for offline analysis:

    - Locate the `Mail` folder from the directory tree
        - Note that extracting a directory uses the same method as extracting a single file.

    - Extract the directory to the `Export` directory located at `/root/casedata/Pure_Gold_Credit_Union/Export`.
 
3. Verify the export:
 
   - Open a new terminal window.
 
   - Navigate to the `Exports` directory and `cd` into the `Message Data` directory.
 
   - Run `ls -l`.  Take note of the multiple directories present.
 
   - `cd` into any of the directories and take note of the EMLX files.
 
You have successfully exported Peter's emails for offline analysis.
 
We will examine these emails in upcoming activities to establish Peter's involvement in this case and uncover the identity of any co-conspirators.
 

----

2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
