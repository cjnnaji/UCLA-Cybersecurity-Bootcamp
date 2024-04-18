## Terminal and Bash Day 1: Cheat Sheet 

### Key Terms

- An **absolute path** indicates the location of a file regardless of the user's current location in the file directory.
- A **relative path**, on the other hand, starts at the user's current location in the file directory. It doesn't require starting from the top of the directory structure.

### Preview Commands

  - To preview and scroll through a whole file, use the `more` or `less` commands.

    - `more`: Used to view a file one page at a time. To move to the next page, press space bar.

    - `less`: This command is similar to `more` except it allows you to scroll up and down in a file.

  - To preview a file by a certain number of lines, use the `head` or `tail` command.

    - `head`: Displays the top 10 lines of a file

    - `tail`: Displays the bottom 10 lines of a file

### cat and Data Streams

  - `cat` is short for "concatenate," a word meaning to link together.

  - `cat` combines the designated files and displays the results back to the user, but does not save the result beyond the command line.

  - A **data stream** is a way to describe channels of data as they are processed and moved through a system.

    - Data streams are used to move data from one process or program to another.

    - The two most used data streams are called `stdin` and `stdout`, pronounced "standard in" and "standard out."

    - In the context of a command, input data is usually the `argument` given to the program. The output data is the information returned by the program when the command is successful.

    - Input data is streamed using the data stream `stdin`.

    - Output data is streamed using the data stream `stdout`.

### Key Commands

- `pwd` to display the current working directory

- `ls` to list the directories and files in the current directory

- `cd` to navigate into a directory

- `mkdir` to make a directory

- `rmdir` to remove a directory

- `touch` to create an empty file

- `rm` to remove a file

- `history` to view the commands you have previously ran

- `echo` to display (or print) text on the terminal

- `clear` to clear out the terminal history on the page.

-------

&copy; 2023 edX Boot Camps LLC. Confidential and Proprietary. All Rights Reserved.
