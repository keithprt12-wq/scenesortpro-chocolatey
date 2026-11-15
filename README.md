# SceneSort Pro: Chocolatey package source

Source for the [`scenesortpro`](https://community.chocolatey.org/packages/scenesortpro) Chocolatey community package.

SceneSort Pro organises a big, messy media library on your own Windows 10/11 PC: it finds duplicate videos, cleans file names and organises folders, all offline. Website: https://scenesortpro.com

## Install

- **Microsoft Store (recommended, automatic updates):** https://apps.microsoft.com/detail/9P1ZR7DXW5TD
- **Chocolatey:**

```
choco install scenesortpro
```

- **Direct installer:** https://scenesortpro.com/download.html

The free edition scans and previews every fix, with no card and no time limit; Pro applies them.

## Layout
- `scenesortpro/scenesortpro.nuspec`: package metadata
- `scenesortpro/tools/chocolateyinstall.ps1`: downloads the versioned installer from dl.scenesortpro.com and checks its SHA-256
- `scenesortpro/tools/chocolateyuninstall.ps1`: silent uninstall through the Apps & Features entry

Build with `choco pack scenesortpro/scenesortpro.nuspec`.
