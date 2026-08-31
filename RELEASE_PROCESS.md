# Release process

This repository is the public release/update home for Wirt's Eye.

## Early-alpha release flow

1. Build and test the release artifact locally.
2. Calculate its SHA-256 hash.
3. In GitHub, create a release with a matching version tag, for example `v5.0-alpha1-rc2`.
4. Upload the finished tester artifact to the GitHub Release. Do not commit large EXE/ZIP binaries directly into the repository history.
5. Publish release notes.
6. Edit `updates/manifest.json` with the new version, GitHub release URL, SHA-256 hash, and short notes.
7. Commit/push the manifest **after** the release artifact is available.

Publishing the manifest last prevents Wirt from notifying users about a build that cannot yet be downloaded.

## Update channels

- `alpha`: active tester builds.
- `stable`: future conservative/public releases.

The first updater implementation is deliberately read-only: it checks the manifest and opens the official release page. A later updater will download, verify SHA-256, back up state, replace application files from a separate updater process, and restart Wirt.

## Hash helper

From PowerShell:

```powershell
.\tools\Get-ReleaseHash.ps1 -Path "C:\path\to\WirtsEye-release.zip"
```

## RC1 Friends build SHA-256

`7e3df6f8569c704f6249ef53b740ecd79f324454d7e54e1c1536c9b6294d5f0d`
