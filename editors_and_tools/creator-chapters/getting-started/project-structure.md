# Project structure

Using the Dashboard, we can begin by creating a Hello World project. The created project has a specific folder structure. We will learn about the Cocos Creator project in this section.

## Project folder structure

After creating and opening a Cocos Creator project for the first time, you will see the following structure is included in the project folder:

```
ProjectName(project folder)
├──assets
├──library
├──local
├──settings
├──temp
└──project.json
```

Next we will introduce the function of each folder.

### Resource folder(assets)

‘assets’
- Public folders for project collaborators
  - **assets**
    Project resource files, including all actual elements used to form a project. Such as:
    - Scenes
    - Scripts
    - Sprites
    - Textures
    - Audio files
    - ...
    Just think of all of them as loaded resources in the Assets Panel of the [Editor]（/start/editor-overview)
  - **settings**
    These are global project settings, which are of a project-level and are shared by all project collaborators, such as:
    - Plug-in settings
    - Button settings
    - Physics settings
    - ...
- Private folders used by the current client *(and you should ignore them in version control)*
  - **library**
    Files in this folder are for resource library management, and will be used by the [Editor](/manual/start/editor-overview) for library data persistence and resource display.
  - **local**
    Local project settings, which store the user's customized settings, such as the Editor layout.
  - **temp**
    Temporary files created by the Cocos Creator Engine.


---

Continue on to read [support.md].
