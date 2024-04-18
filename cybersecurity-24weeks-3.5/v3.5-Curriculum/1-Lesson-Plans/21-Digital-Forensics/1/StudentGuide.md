## 21.1 Student Guide: Introduction to Digital Forensics

### Overview

Today's class will introduce you to the digital forensics field. The class covers procedures for collecting, preserving, analyzing, and reporting forensic evidence.

### Class Objectives

By the end of the class, you will be able to:

- Summarize the basic principles and methodologies of digital forensics.

- Describe various skill sets required for digital forensics jobs.

- Outline the proper approach to collecting, preserving, analyzing, and reporting forensic evidence.

- Conduct a preliminary review for a forensic case.

- Preserve and document evidence using Autopsy.


### Lab Environment

<details><summary>Lab Details</summary>
<br>

In this module, you will use a new Forensics lab environment located in Windows Azure Lab Services. RDP into the **Windows RDP host machine** using the following credentials:

  - Username: `azadmin`
  - Password: `p@ssw0rdp@ssw0rd`

Open Hyper-V Manager to access the nested machine:

**Kali Forensics machine:**
  - Username: `root`
  - Password: `toor`


</details>  



### Slideshow

Slides for today's class are available on Google Drive, located here: [21.1 Slides](https://docs.google.com/presentation/d/1bPwVxIARZtKSdPPWEnDl9DWamFNS5hsBhioMdRcvAdw/edit#slide=id.g880134032e_1_1246).


---

### 01. Instructor Do: Welcome and Overview (0:10)

Digital forensics is a very exciting cybersecurity field  that requires a unique set of skills.

  - You learned in earlier modules that penetration tests attempt to discover vulnerabilities in order to prevent breaches and cybercrimes.

  - You know that not all defenses can withstand the network attacks that are constant in today's cyber landscape.

  - Therefore, digital forensics attempts to discover evidence of a crime after it's been committed.

You will begin class by introducing the field of digital forensics and describing the field's roles, skill sets, and responsibilities.

#### Roles, Knowledge, and Skill Sets

Digital forensics professionals must have a thorough understanding of hardware, operating systems, and computer networks.

- View the following link from NICCS detailing skills, knowledge, and other aspects associated with digital forensics:

  - [Cyber Security Workforce Framework: Digital Forensics](https://niccs.us-cert.gov/workforce-development/cyber-security-workforce-framework/digital-forensics)

Emphasize that roles and responsibilities in the field of digital forensics are not well-defined across job titles. Specific job roles and responsibilities vary by organization, but may include the following:

- **Computer forensics investigators:** These professionals gather digital information for computer system investigations, producing criminal evidence that can be used in a court of law.
  - Legal cases involve data theft, espionage, and cyberwarfare.

  - This career field involves analyzing data found on hard drives, network communications, and cloud-based data communication systems, as well as the production of reports and possible testimony in a court of law.

- **Computer forensics technicians:** These are digital detectives who work with law enforcement or government entities, or as private investigators.

  - They use investigative and computer analysis techniques to acquire, analyze, and preserve digitized evidence to be used for legal purposes.

  - They also inspect storage media and retrieve corrupted and deleted files from computing storage media, such as hard drives, removable flash media, and mobile devices. This material is used in legal proceedings.

- **Forensic computer analysts:** These professionals specialize in the recovery of deleted emails or other data that has been encrypted or deleted. This material is used in legal cases involving computer crimes.

  - Evidence produced by forensic computer analysts is used by law enforcement to assist with ongoing investigations.

  - Evidence may also be used in a court of law to help convict criminals involved in computer crimes with cases related to child pornography, drug sales, or corporate espionage, among others.


----

### 02. Instructor Do: Introduction to Digital Forensics (0:25)

#### What Is Digital Forensics?

Digital forensics is a field dedicated to identifying, extracting, preserving, and reporting on information obtained from computer and network systems.

- The following definition of digital forensics was published in the article ["Digital Records Forensics: A New Science and Academic Program for Forensic Readiness"](../1/Assets/instructor-resources/Digital_Records_Forensics.pdf) in the *Journal of Digital Forensics, Security and Law*:

   “The use of scientifically derived and proven methods toward the preservation, collection, validation, identification, analysis, interpretation, documentation and presentation of digital evidence derived from digital sources for the purpose of facilitating or furthering the reconstruction of events found to be criminal, or helping to anticipate unauthorized actions shown to be disruptive to planned operations.”


#### Legal Requirements

Why is it important to preserve the integrity of digital evidence?

Forensic evidence that is intended to be used in legal proceedings must satisfy a set of legal standards in order to be admissible.

- Imagine the disappointment of spending months searching through computer and network systems collecting evidence, only to have it considered inadmissible and thrown out due to improper procedures.

- Forensic evidence is held to the same standards as any other evidence submitted in a legal case. All evidence must be wholly intact and unaltered from the scene of the crime.

- Once evidence is collected, the investigator or analyst is accountable for its ownership and whereabouts at all times.

#### Chain of Custody

A **chain of custody** is a documentation of the possession of evidence.

- Evidence taken into custody must be accounted for. This means that its whereabouts and ownership must be accurately documented at all times, from the time it is acquired to when it is presented in the court room.

- When testifying about the integrity of evidence, one must be able to provide a documented, uninterrupted chain of custody, which includes:

  - A detailed log of each person who accessed or handled the evidence.
  - The purpose of that access.
  - Dates and times it was handled.

- If you are not able to show an uninterrupted chain of custody, months or even years of hard work can be considered inadmissible in a court of law, leading to the possible release of criminals. This is why it's so critical to ensure that a proper chain of custody is maintained at all times.

#### The Digital Forensics Process

The National Institute of Standards and Technology defines a process for performing digital forensics in [Special Publication 800-86](../1/Assets/instructor-resources/NIST_800_86.pdf) as follows:

- **Collection:** We must first collect the data before we can examine and analyze it. The collection phase is the springboard to the digital forensics process, which includes identifying, labeling, recording, and acquiring data from sources while following procedures to preserve the integrity of the data.

- **Examination:** After we've collected the evidence, we begin the examination phase, which ensures that all data collected is relevant to the case. This includes forensically processing collected data and assessing and extracting data of interest while preserving the integrity of the data. This usually means working from a copy rather than the original.

- **Analysis:** After we've identified all relevant evidence, we begin the analysis phase by analyzing the results of the examination, using legally approved methods and techniques, to derive information that addresses the questions that inspired the collection and examination.

- **Reporting:** After we've analyzed all of the evidence, digital forensics investigators are required to formally report the results of the analysis, which may include describing the actions used, explaining how tools and procedures were selected, determining what other actions need to be performed, and recommendeding improvements to the forensic process.

#### Evidence Acquisition

**Evidence acquisition** is one of the most critical steps in the entire forensic process. If done improperly, it can result in evidence being missed, lost, or inadmissible in a court of law.

- Digital forensics data has one of two classifications: network-based or host-based.

   - **Network-based** data comes from data communications captured by network-based systems such as an IDS, IPS, and firewalls, in the form of a packet capture or similar.

     - Packet captures are useful for reconstructing events involving computer break-ins.

     - Logs from firewalls also provide insight into network activity.

   - **Host-based** data is typically found on a system that encompasses a wide variety of artifacts.

     - Investigations involving computer break-ins may involve the forensic examination of local file systems, programs, access to critical documents, and/or alterations to system files and directories.

     - Host-based examinations may involve reconstructing internet use, unauthorized activity, email recovery, and the identification of malicious files.

#### Creating Forensic Backups

During an investigation, it is important that evidence is not contaminated. As a forensic investigator, you will **image** the data. This image, not the original media, will be used for analysis.

  - **A bit-stream image** captures all created sections of a hard drive, known as partitions, whether used or not, and all unallocated drive space that doesn’t belong to partitions.

   - This method allows forensic examiners to recover deleted files and fragments of data that may exist on a hard drive.

   - A **local file system backup** is inadequate for forensic analysis. If you do make a copy through the file or operating system, you can see only the data that the operating system sees. This won’t capture deleted files or slack space, which may contain relevant data. Therefore, you must obtain a **bit-level copy**.

If needed, provide the following explanations to accompany the above descriptions:

  - A bit-level copy or bit-stream image copies over everything: slack space, deleted files, and the regular files as well.

  - A local backup only copies the files that are on the system. This does not copy over slack space or deleted files.

  - Slack space is the area of a file system that indicates deleted or truncated files.

Local backups of hard drives should be performed only if the machine can be taken offline. If it’s taken off of the network, then the owner of the machine cannot send remote commands to, for example, wipe the computer or lock the digital forensics experts out.

- A forensic backup differs from a typical local backup:

  - Typical local backups target intact files. The backup image does not include the free space and slack space on a hard drive.

  - Forensic backups (system image or bit-level backups)  create an exact replica of all contents contained on the entire hard drive, including slack space, free space, and deleted files.

   - Forensic backup images are created in the following formats:

     - **Raw formats:** These formats can be created with programs such as `dd`, `ddfldd`, and `ddcdd`.
       - .bin
       - .dd
       - .img
       - .raw

     - **Advanced Forensic Format (AFF):** The AFF format is for disk images and related forensic metadata.
       - .AFF
       - .AFF4


#### Working with Live Systems

One should always use caution when working with live systems. It is possible that an attacker is waiting for the user to log back into the system to complete the attack.

- The primary reason for working on a live system is to capture items that will not survive a power loss, such as volatile memory, swap files, running processes, and active network connections.

 - Mistakes such as writing data to memory or disk can potentially destroy evidence, which is why it is critical to use forensic tools such as write blockers.

    - A **write blocker** is a device that allows anything connected to it to perform only read operations, therefore preventing the drive from being written to and overwriting evidence.

#### File Systems

The file systems that you may encounter during an investigation.

   - **New Technology File System (NTFS):** Supported under Windows 10, 8, 7, Vista, XP, and NT.

   - **File Allocation Table (FAT):** Supported by older and newer versions of Windows.

   - **Apple File System :** Used by macOS systems.
     - Apple File System for 10.13+ is APFS
     - Apple File System for 10.12- is MacOS extended

   - **Fourth Extended File System (Ext4):** Used in most Linux distributions.

#### Overview of Storage Media

Do you know which type of storage devices they have in their computer, tablet, or phone.

Here is a brief overview of the physical layout of hard and solid-state devices and how data is stored. Note the implications for digital forensics.

- Physical vs. Virtual Drives

    - A **virtual drive** resides on a physical drive and emulates the characteristics of a hard drive. The drive can be mounted and dismounted and data can be read and written to it.

    - Drives in general are limited by the speed at which they can receive and send information.

- Mechanical Hard Drives

    - Mechanical hard drives have very delicate moving parts that can be damaged if not handled properly.

    - Mechanical hard drives can have far larger storage capacities than other types of drives. Therefore, the imaging process can take an extremely long time when performing a bit-level copy.

    - Implications for forensics: Data can be recovered from badly damaged or comprised devices. This requires extensive knowledge of the inner workings of hard drives and how hard drives store data.

-  Flash Storage

    - Flash storage devices have no moving parts and use flash memory, allowing for quicker read and write access.

    - Flash memory or flash storage is **non-volatile**, meaning it holds data even when it's not connected to power. This technology is used in devices such as USB drives, mobile phones, cameras, and tablet computers.

- Solid-State Drives (SSD)

   - SSD storage devices use flash memory chips and have no moving parts. They also have larger storage capacity and have faster read&ndash;write access.

   -  Implications for forensics: An SSD is not a mechanical drive. One must be careful with the forensics tools used to image and recover data. The data on an SSD can be lost or wiped out in seconds.

- SD or MicroSD Cards

  - SD cards store data inside a flash memory chip, similar to solid-state devices. They are used in cell phones and smartphones.

  - Implications for forensics: It is possible to retrieve data from an SD card even if it has been reformatted or the data has been deleted. This is because data is not immediately erased, the storage is only set aside for reuse. As long as the storage space has not been used, the preexisting data is still available. This is very useful for forensics recovery.

You may encounter password-protected storage media and password-protected **firmware**.

  - Firmware is a specific class of computer software that provides the low-level control for a device's specific hardware.

- These situations present extreme challenges to forensic investigators and must be considered during the initial stages of the investigation.

#### Working with Cloud-Based Evidence

Working with online evidence, such as hard drives and volatile memory located on cloud-based hardware, presents a whole new set of challenges.

- Ask the class if anyone can think of any challenges associated with cloud-based evidence.

- You will explore these challenges in the next activity.

Answer any questions before proceeding to the first activity.


### 03. Student Do: Digital Forensics in the Cloud (0:20)

- In this activity, you will look at a case concerning a DoS attack that occurred at an online shopping website.

- You will list at least four challenges associated with conducting a cloud forensics investigation.

- You will also research how these challenges affect the chain of custody during a digital forensics investigation.

- As a bonus, you will be asked to provide at least one example of how evidence can be obtained to validate the chain of custody in cloud-based forensic investigations.

Complete the following activity:

- [Activity File: Digital Forensics in the Cloud](Activities/03_Cloud_Forensics/Unsolved/README.md)



### 04. Instructor Review: Digital Forensics in the Cloud Activity (0:10)

Explain that the goal of this activity was to demonstrate the challenges digital forensics investigators face when dealing with cloud-based systems.

Note the following solution guide and use it to guide your review:

- [Solution Guide: Digital Forensics in the Cloud](Activities/03_Cloud_Forensics/Solved/README.md)



### 05. Instructor Do: Overview of Digital Forensics Types and Methodology (0:15)

In addition to cloud-based forensics, digital forensics is a continuously evolving scientific field that incorporates many sub-disciplines.

Note the following subdisciplines:

- **Computer forensics** is the identification, preservation, collection, analysis, and reporting of evidence acquired from computers, notebooks, and storage media. It is used to support investigations and legal proceedings.

- **Disk forensics** involves acquiring and analyzing information stored on physical storage media, such as hard drives, smartphones, GPS systems, and removable media. This involves the recovery process of hidden data, deleted data, and slack space information.

- **Memory forensics** inspects computer memory to identify an attacker's activities on a system.

     - This area requires the broadest skill set. You must have knowledge of CPU architectures, operating systems and memory management, page tables, and virtual addressing, among other things.

     - Memory forensics is different from disk forensics in that the data investigated is stored in volatile memory, such as RAM. Unlike non-volatile memory, volatile memory refers to storage media that loses its data when rebooted. Data on hard drives does _not_ change between reboots, so it is non-volatile.

- **Network forensics** is the monitoring, recording, storing, and analysis of all network traffic to determine the source of security events.

  -  Can you think of any tools that can be used for network forensics?

    - Network forensic tools include Wireshark, NetworkMiner, and Snort, among others.  

    - Investigators in this area have an excellent understanding of communication and network protocols and the tools needed to capture and analyze data.

- **Email forensics** analyzes the source and content of an email as evidence. Email forensics includes the process of identifying the sender, recipient, date, time, and original location of an email message.

   - Can you think of any famous email forensics cases?

     **Hint:** What about the 2016 presidential election? Sony?

   - Email forensics is important when proving attribution, as is often required by conspiracy and fraud cases.

- **Mobile device forensics** The recovery of digital evidence from smartphones, GPS devices, SIM cards, PDAs, tablets, and game consoles.

  - For example: Cell phone forensics can be used in a distracted driving case. A forensic expert can use this data to analyze what was happening at the time of the accident.

- Other forensic areas include drone, internet, and malware technologies.


#### Digital Forensic Investigation Methodology

Now that you understand the importance of maintaining an accurate chain of custody, we will explore the methodology for conducting digital forensic investigations.

A successful digital forensics investigation is crucial for the prosecution of computer criminals.

- Note the importance of having a clearly defined, step-by-step process for collecting digital evidence to allow it to be presentable in a court of law.

Digital forensics has a number of investigative frameworks. They include variations of the following phases:

 1. Prepare for the investigation
 2. Collect the evidence/Forensic recovery
 3. Preserve the evidence
 4. Electronic discovery and analysis
 5. Present and report

Here are these phases in greater detail.

#### 1. Prepare for the Investigation

Preparation is an important first step in conducting an investigation. However, there is not always a lot of time for it.

-  As an investigator, you want to consider such things as whether the incident was remote or local, what laws are relevant, and what tools should be used (GUI or CLI).

#### 2. Collect the Evidence/Forensic Recovery

The success of the analysis phase depends on the collection phase.

 - During the collection phase, the investigator makes decisions about what data to collect and the best way to collect it.

 - During forensic recovery, the evidence is extracted from a device and a master copy is made.

 - How you collect the evidence determines if the evidence is admissible in court.

#### 3. Preserve the Evidence

Investigators never work on the original copy of the evidence. A read-only master is made and stored in a digital vault.

   - All processing is done on the copy.

   - Investigators use a write blocker to ensure the prevention of data contamination.

 A **cryptographic digest** or **hash** is made to ensure that evidence has not been altered in any way.

   - This hash ensures the **integrity** of the evidence throughout the investigative process.

#### 4. Electronic Discovery and Analysis

Analysis is done after data has been collected. This is sometimes referred to as **dead analysis**.

 - It's important to document everything, including:
   - Time
   - Date
   - Locations
   - Applications used

 - Additionally, your evidence must be reproducible. If it is not, it may be ruled as inadmissible.

#### 5. Present and Report

In this phase, investigators write an expert report that lists all tests conducted, when and how they were conducted, what was found, and the investigation's conclusions.

 * Forensics investigators may be called to testify as expert witnesses in trials or depositions.




### 06. Instructor Do: The Pure Gold Credit Union Case (0:05)

By now, you should be ready to dive into an investigation.

- Over the next two days, you will be working on a case involving a ficticious bank theft at Pure Gold Credit Union.

  - The scenario is centered around employees at **Pure Gold Credit Union** who conspired to steal funds from their credit union's branch.

  - Suspicious activity was reported to senior management and devices were seized, including physical images of mobile devices.

  - The seized evidence was processed by the ingest team at the Crime Laboratory.

  - The evidence was backed up using the EnCase forensic application.


  - You will analyze an iPhone image of one of the Credit Union's employees. This will test their ability to use digital forensic tools to perform a scientific investigation.


### 07. Student Do: The Pure Gold Credit Union Case (0:15)


- In this activity, you will work as forensics investigators conducting an investigation into the Pure Gold Credit Union Case.

- You will work in small groups to become familiar with the case.

- You are provided a list of the evidence for the case.

- You are tasked with answering several questions while reviewing the case.

Use the following files:

- [Activity File: Pure Gold Credit Union Case](Activities/07-Pure_Gold_Credit_Union_Investigation/unsolved/readme.md)
- [Resource File: Pure Gold Credit Union Scenario PDF](https://docs.google.com/document/d/1SawB-4AWmpGasziw8y7DEoPiVzwrXjxAY0EgSIocBKI/edit)


### 08. Instructor Review: The Pure Gold Credit Union Activity (0:10)

In this activity, you were introduced to the Pure Gold Credit Union Case Study. They will continue their investigation throughout this module.

Use the following solution file to guide your review:

 - [Solution File: Pure Gold Credit Union Case](Activities/07-Pure_Gold_Credit_Union_Investigation/solved/readme.md)


### 09. Everybody Do: Introduction to Autopsy (0:20)

The last page of the Pure Gold Credit Union Activity describes the storage devices that were imaged as evidence.

- Note that the seized evidence included an iPhone image. This image contains storage devices that hold operating system data, file system data, applications, documents, pictures, videos, and music.

- You will be looking for evidence related to the case, including:

  - SMS messages that show intent to commit a crime.
  - IP address information that indicates GPS location data.
  - Emails and email addresses that contain incriminating evidence.

#### Open-source Tools

Dgital forensics relies on the expertise of examiners to analyze and interpret data retrieved by trusted forensics examination tools.

- Although most forensic examiners have started to use open-source tools, they may not know that they can perform a complete investigation using only open-source tools.

You will be using the [Sleuth Kit Autopsy Forensic Application](https://sleuthkit.org/autopsy/docs/user-docs/4.3/index.html).

 - **Autopsy** is an open-source graphical tool that runs on Windows and Linux platforms.

 - You will be using Autopsy in the Kali Linux operating system.

In order to run Autopsy properly, you will need to ensure that the Oracle Java Development Kit is installed and updated on our Kali machine.

- Run the following in a new terminal window: `apt install -y default-jdk`.

Before you begin the analysis phase of the investigation, we will need to prepare the data prior to ingestion into Autopsy by generating file hashes of the digital evidence.

#### Prepare the Data

Now you need to prepare the data.

-  You would first run a **virus scan** on the image. (This takes time, so you won't be doing it during class.) If any virus files are found during a virus scan, you should be documented and included in our report.

- Next, you will generate **MD5** and **SHA-256** hashes for the evidence. This will ensure the integrity of the evidence. It's best practice to hash the evidence file using two different hashing algorithms. One can be used as a backup hash for the other.

   - Open a terminal window in Kali Linux and navigate to the `/root/Documents` directory.

   - Run the following:

     - `md5sum "PeterIphoneimage.zip" > peter.original.md5log.txt`

     - `sha256sum "PeterIphoneimage.zip" > peter.original.sha256log.txt`

- The file has a zip extension

    - Note that there is another iphone image for Rosie's phone that you will be analyzing later in the week.

    - Run the following:

      - `unzip PeteriPhoneImage.zip -d PeteriPhoneImage`
      - The above command will extract the contents of the zip file and place them into a new directory called `PeteriPhoneImage`.

#### The Autopsy Workflow

The Autopsy software has a lot of features, but in this demonstration you will cover the following steps in the workflow:

  1. **Create a case:** Create case name, investigator information, and optional information. Case information helps investigators track the progress of the case.

  2. **Add an image:** Autopsy supports Raw, EnCase, and Virtual Disk image formats. For this case, our evidence was imaged with EnCase software.

  3. **Configure ingest modules:** For example, Email Parser, Embedded File Extractor, Android Analyzer. Ingest modules help label and categorize evidence during the ingestion process.

  4. **Ingest in progress:** The process of loading the file into Autopsy. Autopsy analyzes the file and directory structure of the iPhone image, then attempts to recreate the directory tree in its original format.

  5. **Manual analysis:** Analyze data. During this stage, we manually research the iPhone's entire file system in search of all relevant information to the case.

  6. **Create timeline:** Determine times, data, and data sources. During this phase, we attempt to recreate a timeline of events that the investigation team can use to understand the actions of everyone involved.

  7. **Report:** Finally, you will consolidate all documented evidence records into a single document that will serve as evidence in a court of law. The format is either HTML or Excel.




#### Step 1. Create a Case

Follow along on their own machines.

You will need to create a case.

  1. Navigate to the following directory: `/root/autopsy-files/autopsy-4.10.0/bin`.

  2. Type `./autopsy` to launch the application.

  3. In the Welcome window, select **New Case**.

     ![An image with the Welcome window with an option to select "New Case."](Images/autopsy-running-4.0.png)


  4. Type the **Case Name**: `Pure-Gold-Credit-Union`

  5. Type the **Base Directory**: `/root/casedata/`

  6. For **Case Type**, select **Single-user**.

  7. Click **Next**.

  ![An image showing the case name, base directory, and case type fileds, with the "Next" button at the bottom.](Images/A-NEW-IMAGES/forensic1.png)

Next, enter optional information:

- Enter a **Case Number** relevant to your case. For this demo, we'll use `1EZ215-P`.

  - Case names and numbers help investigators keep track of the hundreds or thousands of cases that may be in the system.

- You will leave the other optional information  blank: **name**, **phone**, **email**, and **notes**.

- Select **Finish**.

Next, you will add the evidence file and configure ingest modules.

#### Step 2: Add an Image

1. Select **Logical Files**.

2. Click **Next**.

   ![An image showing "Disk image or VM File" selected and the "Next" button at the bottom.](Images/forensic2.png)

3. Leave the dropdown as "Local Files and Folders", then click "Add"

 ![An image showing the local files option.](Images/forensic3.png)

4. In the pop-up window, navigate to and select the directory named `PeteriPhoneImage`, and click **Select**.

  ![An image of the pop up window](Images/forensic4.png)
  
5. Click **Next** to proceed to **Step 3**.

#### Step 3: Configure Ingest Modules

The ingest modules help label and categorize evidence during the ingestion process.

You will  need to ingest everything for this next part

- Click **Select All**.

- Click **Keyword Search** and check all of the boxes.

There are two ingest modules that are particularly important: **Extension Mismatch Detector** and **Keyword Search**.

 - Extension Mismatch Detector uses the results from the File Type Identification and flags files that have an extension not traditionally associated with the file's detected type. In other words, it ignores "known" files.

 - Keyword Search is used to extract the maximum amount of data from the files being indexed.

     * The indexing will try to extract data from supported file formats, such as text files:

       * Phone numbers
       * IP addresses
       * Email addresses
       * URLs
       * Credit card numbers

    **Note:** The more items you select, the longer the ingest process will take.

 ![An image showing a list of files for the ingest process.](Images/A-NEW-IMAGES/17.png)

- Ensure that the **Extension Manager** and **Keyword Search** boxes are checked and click **Next**.

#### Step 4: Ingest in Progress
 * Autopsy is now analyzing the image file. When this process is finished, the file is ready to be viewed and analyzed by the investigator.

The status is shown in the bottom-right corner of the window. You can click the progress bar to see the status.

 ![An image of the ingest process](Images/forensic5.png)
  


### 10. Break (0:15)


### 11. Everybody Do: Autopsy Continued  (0:15)

#### Step 5: Manual Analysis with Keyword Search

You can see the results of the Keyword Search ingest module as follows:

- Click on **Keyword Lists** in the upper-right portion of the toolbar.

  - You can see all of the categories that Autopsy discovered during the file ingest process, such as phone numbers, IP addresses, etc.

- In the dropdown, check **IP Addresses**.

- Click **Search**.

- Autopsy will highlight all of the IPs contained in the file for easy reference.

   ![An image showing the keyword search results for IP addresses.](Images/A-NEW-IMAGES/forensic6.png)

  - Jow could IP address information can be used in this case.

    - Answer: IP addresses can reveal location information (GPS coordinates) in addition to identifying other networks or computer systems that were contacted and/or used to commit the crime.

#### Step 5b: Manual Analysis of SMS Messages


Autopsy provides us with a way to view and read SMS messages, but first we have to set up our database.

- Before you make changes, you need to close our case file.

 - In the top-left corner, click **Case**.

 - In the dropdown, click **Close Case**.

 - If the Welcome window appears, click **Close**.

- Click **Tools** on the top menu bar.

 - In the dropdown, select **Options**.

    ![An image showing "Options" selected from the "Tools" toolbar menu.](Images/A-NEW-IMAGES/4.png)

 - In the **Options** window, select **Central Repository**.

 - In the **Central Repository Database Configuration** window, place a check mark in the **Use a Central Repository** box, then click **Configure**.

   ![An image showing a check mark in the "Use a Central Repository" box.](Images/A-NEW-IMAGES/5.png)

 - In the **Database Type** dropdown, select **SQLite** and click **OK**.

   ![An image of the database type dropdown field with "SQLite" selected.](Images/A-NEW-IMAGES/6.png)

 - Click **Yes** in the **Database Does Not Exist** pop-up box, then click **OK**.

   ![The "Database Does Not Exist" pop-up window with the "Yes" option highlighted.](Images/A-NEW-IMAGES/7.png)

 - Reopen the recent case file by clicking **Case** in the upper-left corner, navigating to **Open Recent Case** and selecting `Pure-Gold-Credit-Union`.

 - Click the **Keywords Search** box in the upper-right corner.

   -  In the dropdown, enter `sms.db` and click **Search**.

  ![An image highlighting the keyword search box with "sms.db" entered.](Images/A-NEW-IMAGES/forensic7.png)

 - You should now see the `sms.db` file populated in the **Keyword Search** (the lower-right window pane) in the **Table** tab.

 - Click the `sms.db` file to highlight it.

   - You should now be able to read SMS messages in the **Data Content** window pane in the lower-right window inside the **Indexed Text** tab.

   ![An image showing the sms.db file and the SMS messages visible in the Indexed Text tab.](Images/A-NEW-IMAGES/forensic8.png)

    - What types of information can SMS messages reveal?

      - Answer: SMS messages can implicate other individuals involved in the crime. They can also reveal the objective of the crime or the motives for committing it.

- In the next class, you will examine an iPhone image. You will continue to learn about reporting in future classes.

### 12. Instructor Do: Wrap-Up and Review (0:10)

Digital forensics relies on the expertise of examiners to analyze and interpret data retrieved by trusted forensics examination tools.

Summary for today:

- Although most forensic examiners have adopted the use of open-source tools, many of them may not know that they can perform a complete investigation using only open-source tools.

- Autopsy is an open-source, multi-platform, graphical tool that runs on Windows, Ubuntu, Kali Linux, and OS X platforms.

The steps we needed to complete for our first autopsy investigation were:

- Generate MD5 and SHA-256 hashes for the evidence in order to ensure the integrity of the evidence.

- Specify a case name and number to help investigators keep track of the files and their progress.

- Select the file type to be ingested, i.e., .E01, and specify a working directory where progress will be saved.

- Specify a standard time zone for the case.

- Configure ingest modules to help categorize, label, and organize data.

- Set up our central SQLite database repository to allow us to read SMS messages.

In the next class, you will continue our investigation using Autopsy to analyze artifacts on iPhone images.


---

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary.   All Rights Reserved.
