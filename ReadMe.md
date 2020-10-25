# iOS Persistence and Core Data

# [Udacity Course](https://classroom.udacity.com/courses/ud325)

##  **UserDefault**
- UserDefaults is not a good fit for a note-taking app. Thousands of notes, images, and whatever else a user might store would be way too much information for UserDefaults to handle. Trying to store all this in UserDefaults would have negative performance implications. This will be a job for Core Data.
## **SandBox**
- self-Contained area of the file system  in which to keep all of its stuff
- similarities between the two file systems (iOS and OSX).

    - *Similarities* :
        - They are both Unix based. If you don’t know what this means, never mind. ;-)
        - Both have special folders called Documents or Library for each user (OSX) or App (iOS)
        - Both may sync content with the cloud by using iCloud  

    - *Differences* :
        - While the security (who can access which folders) on OSX is relatively lax, on iOS it is extremely strict.
        - The absolute paths for key folders in OSX, such as your home folder, don’t change every time you boot your Mac. On iOS, on the other hand, the absolute path for key folders will change.
    
<img src="assets/ios_app_layout_2x.png" width="50%" />

1- **Bundle Container**
- The Bundle Container contains the application itself, or more specifically, a directory that holds the executable code and resources, like images and sound files or whatever else that code uses.
2- **Data Container**
- The Data Container, like its name might suggest, holds all the user and app data. Within it are three sub-containers:
    - **Documents**
        - Documents is where user data should go
    - **Library**
        - library is for non-user data files or files that you don’t want to expose to the user.
    - **temp**
        - Temp is used for storing temporary data that needs no persistence across launches.
