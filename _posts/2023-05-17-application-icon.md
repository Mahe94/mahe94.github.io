---
layout: post
title:  How to Add an Icon to Ubuntu Application
date:   2023-05-17
description: Just a Matter of Creating a File (and Maybe a Bit of Shell Programming)
tags: ubuntu
categories: programming-posts
---

**Introduction:**
When installing a new program on Ubuntu, it's common to encounter missing application icons. This can be frustrating, especially when there's no icon displayed on the sidebar when you load the application. In this tutorial, we will guide you through the process of adding an icon to such applications, ensuring a more visually appealing and organized user interface.

**Step 1 - Locating the Application.Desktop File:**
To begin, navigate to the `/usr/share/application/` directory and search for the `application_name.desktop` file. If this file does not exist, don't worry - we can create one with the following content.

```shell
[Desktop Entry]
Type=Application
Name= #application name
Exec= #path to application file
Icon= #path to application icon
Comment[en_US]=<What you want the mouse over text to be>
```

*Modifying the Script:* In the `application_name.desktop` file, ensure you replace `#application name` with the actual name of the application, `#path to application file` with the path to the application's file, and `#path to application icon` with the path to the application's icon file. This information is essential for the system to locate and display the correct icon.

**Step 2 - Restarting (if necessary):**
In some cases, you may need to restart your machine for the changes to take effect. However, in many instances, a restart is not required.

**Step 3 - Updating the Exec Path:**
Sometimes, when an application requires an update, the `Exec` path in the `application_name.desktop` file needs to be modified. To simplify this process, you can use the following bash script:

```shell
#!/bin/bash

echo "Updating Application Icon"
FILE_NAME=$(find . -type f -name "application_name*.AppImage")

FILE_NAME=${FILE_NAME##*/} #formatting commands
echo "$FILE_NAME"

sed -i -r "s#^(Exec=/home/username/Programs/application_name/).*#\1$FILE_NAME#" /usr/share/applications/application_name.desktop
echo "Updated"
```

*Understanding the Script:*
This script extracts the latest filename of the application using the `find` command. Sometimes, the output of the `find` command needs formatting, which is done with the help of the `sed` command. The `sed` command ensures that the `Exec` path in the `application_name.desktop` file is always up to date. The `\1` inserts the contents of the first capture group which is what matches between the first set of parentheses.

**Step 4 - Running the Script on Start Up:**
To make the script run automatically on start up, we just need to run `crontab -e` on terminal and add the following line at the end of the file.
```shell
@reboot /path/to/script
```