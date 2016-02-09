# Project structure

Using the Dashboard, we can create a Hello World project as a start. The created project has a specific folder structure. We will learn about the Cocos Creator project in this section.

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

`assets` is
- Public folders to project collaborators
  - **assets**
    Project resource files, including all actual elements used to form up a project. Such as:
    - Scenes
    - Scripts
    - Sprites
    - Textures
    - Audio files
    - ...
    Just think of all of them as loaded resources in the Assets Panel of the [Editor]（/start/editor-overview)
  - **settings**
    Global project settings, which are of project-level and shared by all project collaborators. Such as:
    - Plug-in settings
    - Button settings
    - Physics settings
    - ...
- Private folders used by current client *(and you should ignore them in version control)*
  - **library**
    Files in this folder are for resource library management, and will be used by the [Editor](/manual/start/editor-overview) for library data persistence and resource display.
  - **local**
    Local project settings, which store user's customized settings, such as Editor layout.
  - **temp**
    Temporary files created by Cocos Creator Engine.


---

Continue to read [support.md].
