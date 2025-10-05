# Latest-AgOpenGPS-Shortcut

Do you grow weary of making new desktop shortcuts every time there is a new AgOpenGPS release?
Is it especially painfull because you have tablet buttons set up to launch AgOpenGPS?

I feel your pain.

With this simple script you can have a shortcut that automatically launches your latest local version. You can leave this shortcut on your desktop and you will not need to change it when you download a new AgOpenGPS release. If you have a tablet button shortcut, just point it at this shortcut.



# Instructions
1. Your releases must be organized into a folder. I recommend creating the folder "C:\AgOpenGPS Releases" and storing your AgOpenGPS versions there. The actual location of the folder and how you choose to name versions does not matter.
<img src="https://github.com/WildBuckwheat/AgOpenGPS-Latest-Shortcut/blob/main/Images/releasesFolder.jpg" height="350">

2. Copy The github folder "AgOpenGPS Latest" to your C: drive
<img src="https://github.com/WildBuckwheat/AgOpenGPS-Latest-Shortcut/blob/main/Images/latestFolder.jpg" height="350">

3. Copy the "Latest AgOpenGPS" shortcut to your desktop
<img src="https://github.com/WildBuckwheat/AgOpenGPS-Latest-Shortcut/blob/main/Images/shortcut.jpg" height="350">

4. Double click the desktop shortcut. PowerShell will ask you for the version storage path. In this example the storage path is C:\AgOpenGPS Releases
<img src="https://github.com/WildBuckwheat/AgOpenGPS-Latest-Shortcut/blob/main/Images/prompt.jpg" height="350">

5. Double click the desktop shortcut again. The latest version of AgOpenGPS in your version storage path should launch.


If you wish to change the folder that is parsed for the latest version, you can delete or edit the file located at C:\AgOpenGPS Latest\AgOpenGPSVersionsPath.txt