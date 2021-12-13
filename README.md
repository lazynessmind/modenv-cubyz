# ️modenv-cubyz

**`[IN PROGRESS]`**

In progress development of clone ready modding environment to Cubyz

Currently only supporting Windows with Powershell scripts and Maven for build system.

#### TODO:
- [ ] Add example mod sources like blocks and items.
- [ ] Linux support with bash scripts.
- [ ] Gradle support.
- [ ] Prompt users the version of cubyz that they want to work with.

### Use steps:

- Clone the repo and enter the directory.
```powershell
> git clone https://github.com/lazyJunk/modenv-cubyz
> cd modenv-cubyz
```
- After that you need to run the `setup.ps1` powershell script to download and setup the workspace.
```powershell
> setup.ps1
```
This setup will do the following things:
- Get the **cubyz release version** from **workspace.props**.
- Download and decompress the **game assets** with the given version.
- Check if you are using Intellij, if so the script will copy the runs in `dev\runs\` to your workspace folder.

When done you can open the folder on your IDE and it's done.

### Not in Intellij:

If you are not on Intellij (U should :3) you need to create a run config that runs `cubyz.client.GameLauncher` and set the working directory to the workspace root folder.
