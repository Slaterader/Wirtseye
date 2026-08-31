# One-time GitHub repository setup

After copying these files into the new GitHub Desktop repository:

1. Replace every `OWNER/REPOSITORY` placeholder in `updates/manifest.json` with the real GitHub owner and repository name.
2. Commit and push the files.
3. Create a GitHub Release for the current Friends & Family package using tag `v5.0-alpha1-rc1`.
4. Upload `WirtsEye-5.0-alpha1-rc1-FRIENDS.zip` as a Release asset.
5. Confirm the release is reachable from the URL placed in `updates/manifest.json`.
6. The raw updater URL will be:

   `https://raw.githubusercontent.com/OWNER/REPOSITORY/main/updates/manifest.json`

7. Put that exact raw URL into RC2's factory `loot_config.json` at:

```json
"updates": {
  "enabled": true,
  "channel": "alpha",
  "check_on_startup": true,
  "manifest_url": "YOUR_RAW_GITHUB_MANIFEST_URL",
  "download_page": "https://github.com/OWNER/REPOSITORY/releases"
}
```

After that, RC2 and later builds can check the repository for newer Alpha releases.

## Recommended repository settings

- Enable **Issues**.
- Leave **Discussions** optional for now.
- Use GitHub **Releases** for binaries instead of committing ZIP/EXE files into Git history.
- Add a repository description such as: `Passive OCR loot and farming companion for Diablo II: Resurrected.`
- Add topics such as `diablo2`, `diablo2resurrected`, `d2r`, `ocr`, `loot-tracker` if desired.

No source-code license is included in this starter because a source-publication/license decision has not been made yet.
