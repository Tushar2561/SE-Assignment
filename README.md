
File Organizer Automation
📌 Overview
The File Organizer Automation System is a Bash script that automatically sorts files into categorized folders based on their extensions. It helps keep directories organized without manual intervention.
🛠 Features
✅ Automatically scans a specified directory
✅ Sorts files into categories (Images, Documents, Videos, Music, Archives, Others)
✅ Creates folders if they don't exist
✅ Logs all operations in a file for tracking
✅ Handles errors (e.g., permission issues, missing files)
🚀 How to Use
1. Clone the Repository
git clone [Your Repository URL]
cd file-organizer
2. Make the Script Executable
chmod +x file_organizer.sh
3. Run the Script
./file_organizer.sh /path/to/directory
Example:
./file_organizer.sh ~/Downloads
📂 Folder Structure
📂 Target Directory
 ├── 📂 Images
 ├── 📂 Documents
 ├── 📂 Videos
 ├── 📂 Music
 ├── 📂 Archives
 ├── 📂 Others
 └── file_organizer.log
🛠 Dependencies
Linux OS (Ubuntu, Debian, Fedora, etc.)
Bash shell
Basic Linux utilities (mv, mkdir, grep, etc.)
📝 Logging
The script generates a file_organizer.log file in the same directory, recording all file movements.
🛠 Future Enhancements
🔹 Add GUI support for non-command-line users
🔹 Implement a configuration file for custom categories
🔹 Schedule automation using cron jobs
📜 License
This project is open-source and licensed under the MIT License.# SE-Assignment
