# Wirt's Eye release process

This repository is the official public release and update home for Wirt's Eye.

## Alpha release flow

1. **Build the release artifact locally.**
2. **Run the release/privacy validation gates.**
   - Do not package local account state, screenshots, logs, telemetry, backups, caches, diagnostics, or developer-only artifacts.
   - Use `tools/validate_release_privacy.py` when available in the build workflow.
3. **Test the exact artifact you intend to publish.**
4. **Calculate the ZIP SHA-256 hash.**
5. **Create the GitHub Release** with a version tag matching the build, for example:
   - `v5.0-alpha3-preview10-hotfix7`
6. **Upload the final portable ZIP** as the Release asset.
   - Do not commit large EXE/ZIP binaries directly into repository history.
7. **Publish release notes** on the GitHub Release.
8. **Update `updates/manifest.json`** with the release metadata:
   - `version`
   - `download_url` / `release_page`
   - `asset_url`
   - `asset_kind`
   - `sha256`
   - short `notes`
9. **Commit and push the manifest last.**
10. **Verify the updater from an older supported build** before treating the release as complete.
11. **Post the release in the Wirt's Eye Discord** `#releases` channel and publish the announcement.

Publishing the manifest last prevents Wirt from offering a release before its asset is available.

## Important: never silently replace a published asset

The update manifest pins the release ZIP by SHA-256.

If a published ZIP is replaced or repacked — **even for documentation-only changes** — its hash changes. Do not replace a live release asset without also updating the manifest hash and retesting the updater path.

Prefer publishing a new version rather than mutating an already-distributed release.

## Update channels

- `alpha` — active public/test builds.
- `stable` — future conservative releases.

There is no stable Wirt's Eye release yet.

## Hash helper

From PowerShell:

```powershell
.\tools\Get-ReleaseHash.ps1 -Path "C:\path\to\WirtsEye-release.zip"
```

You can also use:

```powershell
Get-FileHash "C:\path\to\WirtsEye-release.zip" -Algorithm SHA256
```

## Release checklist

Before changing the manifest, confirm:

- version inside the app matches the GitHub tag;
- release asset filename is correct;
- release asset downloads successfully;
- SHA-256 matches the exact uploaded asset;
- release notes are posted;
- privacy validation passes;
- updater successfully sees and downloads the release from an older supported build.

## Community

Discord: https://discord.gg/xkf6KGehJH
