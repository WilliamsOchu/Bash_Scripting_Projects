# Toolkit Script

### About the Project

This is a toolkit that has two scripts that perform basic administrative functions
First Script is a Cruff_script that prunes and removes old and redundant files from your home directory. It helps rid your Pc of redundant fles and frees up disk space  
Second Script is a utility thats can help organise files from any given directory into a central folder so they can be easily picked up

### Techniques Implemented

I made this scripts to implement different phases of me learning bash scripting

I tried to play around with loops, logic, arrays and also case statements 

### Continuity
I will continue to add more scripts to this project as I go on

Any script added will have its functionalities listed in the Scripts and Functionalities section below

To continue to contribute to open source the scripts can be modified or tweaked and then pull requests can be made 

The scripts can aslo be modifeid to users specific taste so they can be used in ways best suiting to the user

If you feel there is need to add scripts for a specific purpose kindly reach out to me and I will ensure the script gets added 

### Scripts and Functionalities
toolkit.sh = This script is run first. Its an executable file that provides the user an option to choose which script to run. The user has the option to choose to run either the <Cruff_script or Organiser_Script>

cruff_remover.sh = This script will remove old redundant files from a specified folder to help free up disk space. <br>  To use just enter the folder name or the folder path. <br> 
Enter the max length of time(days) to keep files. Files that fall after this date will be considered redundant and will be deleted from the directory. <br > 
An interactive message will be displayed showing the file names and a prompt message for you to confirm before deleting each file. A notification message will also be displayed for each file that is deleted or not deleted. <br>
Kindly ensure you want to delete a particular file before you go ahead. <br>
N:B: I will not be held responsible for data lost due to the use of this script

<br> 
organiser.sh = This script will organise the files in a given folder into a central folder so you can easily see the contents in a central folder. <br> It becomes handy when you have a folder with multiple files and you have difficulties grasping needing files <br> 
The script will organise the files into different folders like images, documents, archives, presentation, audio and many more. Files with extensions related to the sub-folder category will be sent to the sub-folder. Your original files will still be kept in their main directory <br>
A new folder called Organizer will be created in your home directory and the corresponding sub-folders will be created in this main Organizer folder <br>
For example .txt, .pdt, .odt will be sent to a sub-folder called documents and files with the extension .png, .jpg, .jpeg will be sent to a subfolder called images. This helps organise the files so that you can easily check for files in their appropriate category <br>
See the file-organiser.png image attached for file list groupings.

 
