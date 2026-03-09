✉️ Outlook Auto Starter

📌 Description

This Batch script automates the startup of Microsoft Outlook on Windows.
It attempts to launch Outlook through different methods (main executable, alternative executable, or web version) and provides user-friendly messages in either Portuguese or English, depending on the system language.


⚙️ Features

- Automatic language detection: checks the system locale (PT/EN) and displays messages accordingly.
- Smart fallback sequence:
- Attempts to run olk.exe
- Attempts to run OUTLOOK.EXE
- If not found, opens Outlook Web in Microsoft Edge.
- Status messages: informs the user when Outlook is starting or alerts if it cannot be found.
- Visual style: uses colors and a header banner for a more user-friendly experience.


🚀 How to Use

- Download the script and copy into the startup file by pressing Win + R and type "shell:startup" (without the quotes), click OK, and place the script in this folder.
- Now every time your Windows starts, it will automatically open Outlook. Delete the script from this folder to stop it.



🖥️ Requirements

- Operating system: Windows
- Microsoft Outlook installed (or access to Outlook Web via Edge)
- Permission to run .bat scripts
- 

📂 Script Workflow

- Language detection: queries Windows registry (LocaleName).
- Startup message: displays a “please wait” message in the correct language.
- Execution attempts:
- olk.exe
- OUTLOOK.EXE
- msedge --app="https://outlook.office.com"
- Error handling: shows a message if Outlook is not found or disabled.
  

⚠️ Notes

- The script is designed to work in typical Windows environments with Outlook installed.
- If Outlook is unavailable, the script ensures access to Outlook Web.
  

✍️ Author

Diogo Santos Pombo – 2026, My intention with this script is to have the computer automatically open Outlook while it's booting up and I'm making coffee.
