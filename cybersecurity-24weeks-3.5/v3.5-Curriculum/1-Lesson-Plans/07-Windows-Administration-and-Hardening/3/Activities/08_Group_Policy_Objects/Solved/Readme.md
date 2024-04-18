## Solution Guide: Creating Group Policy with Group Policy Objects

Make sure that you have the **Windows Server machine** launched before continuing.

:warning: Unlink the **No Control Panel** GPO.

1. Navigate to the `Group Policy Management` tool.

    - With the `Server Manager` open, click on `Tools` at the top-right.

    - Select the `Group Policy Management` tool.

2. Name the GPO `Limit Settings`.

    - In the `Group Policy Management` window, right-click `Group Policy Objects` under `GOODCORP.NET` and click `New`.

    - In the `New GPO` window, type in `Limit Settings` for the `Name:`.

    - Click `OK`.

    - `Limit Settings` will appear under `Group Policy Objects` now.

3. Right-click the GPO to `Edit...` its policies.

    - Find the policy you need under `User Configuration` > `Policies` > `Administrative Templates` > `Control Panel`. The policy you're looking for is called `Settings Page Visibility`. This policy is **not** in a subfolder in `Control Panel`.

    - Set the policy to `Enabled`. 

    - Under `Settings Page Visibility:`, enter `showonly:about;themes`.

    - Apply and accept these changes. 

    - Close the `Group Policy Management Editor` window.

4. After you have enabled the policy, link the GPO to the `Sales` OU.

    - Right-click the `Sales` OU, select `Link an Existing GPO...`.

    - In the `Select GPO` window, select the `Limit Settings` GPO we just created and click `OK`.

5. Add the Sales group to the Remote Desktop Users group, if you haven't already.

    - Open the `Active Directory Users and Computers` menu.

    - Expand your `GC Users` organizational unit.

    - Select the `Sales` sub-organizational unit. The `Sales` _group_ will appear in the right-side pane.

    - Right-click that `Sales` group and select `Add to a group...`.

    - Under the `Enter the object names to select` area, enter `Remote` and click `Check Names`.

    - Click the `Remote Desktop Users` and click `OK`.

    - Click `OK` again.

6. Refresh these policy and group changes on the Windows 10 machine.

    - Go back to the Windows 10 machine, open a `CMD` or `PowerShell` window and enter:

        - `gpupdate`

    - This will update the Windows 10 machine with your latest changes.

    - Take a quick moment to look at the default `Windows Settings`.
 
       - Click the `Start` menu, then click the cogwheel icon to launch the `Settings` menu. 

       - You don't have to do anything here, but notice the different settings your `sysadmin` account has access to. 

7. Test the Group Policy changes as `Bob`. Verify that Bob's account has limited access to `Windows Settings` by doing the following:

    - Log in to the **Windows 10 machine** as the local `sysadmin` account and run `gpupdate` to pull the latest updates.

    - Toggle **Enhanced Session Mode** _OFF_ then log in to the **Windows 10 machine** as `Bob` with password `Ilovesales!`.

    - Once you're back in the **Windows 10 machine**, click the `Windows` button in the bottom-left and then click the `Settings` icon.

        - If you created the GPO properly, you should only see two entries there: `System` and `Personalization`. 

        - This indicates that the Group Policy Object was successfully applied. The standard `Windows Settings` screen has many more options.

    - Know that system administrators will often restrict access to various operating system settings to prevent users from making irreversible or potentially dangerous changes to their system. 

8.  Authenticate back to our local `sysadmin` account:

    - Log out of Bob's account by toggling **Enhanced Session Mode** _ON_ again.

    - Back at the Windows lock screen, click the screen and select `Other user`.

    - For the username, enter `.\sysadmin` and `cybersecurity` for the password. You'll notice that the `Sign in to:` selection at the bottom automatically changes when you type `.\`.

By toggling the session mode, you can use `GoodCorp.net\Bob` to sign in to Bob's domain account, and `.\sysadmin` to sign in to the local `sysadmin` account.

---

 © 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
