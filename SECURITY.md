# Wirt's Eye privacy

Wirt's Eye is designed to operate locally on the user's Windows PC. It is a passive screen/OCR companion and does not inject into Diablo II: Resurrected, read game memory, or send gameplay input.

## Data stored locally

Wirt may store local information such as:

- settings and notification preferences;
- character, build, loadout, mercenary, and account progress;
- rune, gem, material, project, and crafting state;
- farming/run telemetry and recent session information;
- logs and backups;
- a bounded recent OCR/capture history used to investigate recognition mistakes.

Frozen Windows builds keep mutable user data under `%LOCALAPPDATA%\WirtsEye` by default so updating the application does not require deleting user state.

Source/development runs may use a separate data directory. `WIRTS_EYE_DATA_DIR` can override the location for testing.

## Screen capture and OCR

Wirt reads screen regions locally in order to understand information already visible in D2R.

Legacy per-scan debug image dumping is disabled by default. A bounded recent capture/OCR history may remain available so a user can deliberately mark a recent miss or create a diagnostic bundle.

## Network activity

Wirt's Eye does not automatically upload gameplay screenshots, account state, telemetry, OCR captures, or diagnostic bundles.

When update checking is enabled, Wirt makes normal HTTPS requests to the project's public update manifest and, when the user accepts an update, may download an approved release artifact from the official project hosting location.

Those hosting services can receive ordinary web-request information such as IP address and user agent, as with normal web traffic.

## Diagnostic/support bundles

A diagnostic bundle is created only after the user explicitly chooses a support/diagnostic action.

Depending on the current build and the problem being investigated, a bundle may contain:

- recent D2R screenshots or capture regions;
- OCR text/history;
- Wirt configuration;
- session logs;
- local telemetry relevant to recent runs/items;
- Wirt version information;
- display resolution, DPI/scaling, and D2R client-window geometry;
- selected account/loadout state used to diagnose save, persistence, or refresh problems.

As of `5.0-alpha3-preview10-hotfix7`, diagnostic bundles may include `data/account_state.json` so character/loadout persistence problems can be diagnosed directly.

Recent screenshots can contain character names, item tooltips, chat/game UI, or anything else visible inside the captured region. Account/loadout state can reveal character names, equipment, project progress, and other local gameplay information.

**Review the diagnostic ZIP before sharing it.**

The bundle stays on the user's PC unless the user chooses to upload or send it through Discord, GitHub, email, or another service.

## No advertising or sale of user data

Wirt's Eye does not contain an advertising system or a user-data-sale system.

## Official community links

Discord: https://discord.gg/xkf6KGehJH

GitHub: https://github.com/Slaterader/Wirtseye
