# Wirt's Eye

Wirt's Eye is an early-alpha **Diablo II: Resurrected companion app** that passively reads information already visible on screen and turns it into useful loot, build, farming, and account context.

It is designed to help players spend less time juggling browser tabs, spreadsheets, and memorized game knowledge while keeping gameplay itself manual.

**Current public alpha:** `5.0-alpha3-preview10-hotfix7`

[Download Wirt's Eye](https://github.com/Slaterader/Wirtseye/releases) · [Join the Discord](https://discord.gg/xkf6KGehJH) · [Support](SUPPORT.md) · [Privacy](PRIVACY.md) · [Changelog](CHANGELOG.md)

> **Alpha software:** Wirt's Eye is under active development. OCR accuracy, display compatibility, onboarding, run detection, item understanding, and UI behavior continue to improve from real-world testing.

## What Wirt's Eye does

Current and actively developed capabilities include:

- passive OCR of visible D2R ground labels and item tooltips;
- loot alerts and item inspection assistance;
- character, equipment, mercenary, and build tracking;
- build guides, leveling guidance, breakpoints, and progression stages;
- run/farm detection, history, and farming context;
- Smart Farming recommendations based on characters, goals, and needed gear;
- account projects, material tracking, runeword knowledge, and cube/crafting references;
- diagnostic bundles for investigating OCR, scanning, UI, and run-tracking problems;
- update checks and an updater flow for approved Wirt's Eye releases.

## What Wirt's Eye does not do

Wirt's Eye is a **manual-play companion**.

It does not:

- read Diablo II: Resurrected process memory;
- inject code into the game;
- inspect game network packets;
- automate movement, combat, looting, inventory management, or other gameplay input;
- automatically upload screenshots, telemetry, diagnostic bundles, or account data.

## Download and install

1. Download the newest **portable ZIP** from [GitHub Releases](https://github.com/Slaterader/Wirtseye/releases).
2. Extract the entire ZIP to a normal folder.
3. Run `WirtsEye.exe`.
4. Follow the first-run onboarding inside Wirt's Eye.

Do **not** run Wirt's Eye directly from inside the ZIP.

Wirt's Eye stores mutable user data under `%LOCALAPPDATA%\WirtsEye` by default so application updates do not require deleting your characters, settings, or account progress.

### Windows SmartScreen

Early alpha builds may be unsigned, so Windows can show a SmartScreen / "Windows protected your PC" warning. Only use packages downloaded from the official Wirt's Eye GitHub Releases page and compare the published SHA-256 hash when one is provided.

## Updates

Wirt's Eye checks the project's public release manifest when update checking is enabled. Current alpha builds include an updater helper and can offer approved releases published through the official GitHub repository.

Release metadata includes a version, release/download location, and SHA-256 hash. The release artifact and manifest must stay in sync.

## Reporting a problem

The easiest place to get help or report a problem is the **Wirt's Eye Discord**:

- help and setup questions → `#help-and-support`
- bugs / bad reads → `#bug-reports`
- feature ideas → `#feature-requests`
- current known problems → `#known-issues`

Join here: https://discord.gg/xkf6KGehJH

GitHub Issues remain available for users who prefer GitHub.

For OCR, scanning, run-detection, loadout, or crash problems, a Wirt's Eye diagnostic bundle is often the most useful attachment. Diagnostic bundles can contain screenshots and local Wirt state, so review [PRIVACY.md](PRIVACY.md) before sharing one publicly.

## Current development focus

The current development direction is centered on:

- OCR and item-reading reliability;
- run and farm detection accuracy;
- onboarding and first-time setup reliability across display sizes and DPI scaling;
- character/loadout stat accuracy and item identity;
- build-guide and leveling readability;
- UI/UX cleanup and clearer explanations;
- bug fixes driven by tester reports.

The public roadmap and current testing priorities are also maintained in the Wirt's Eye Discord.

## Project status

Wirt's Eye is an independent early-alpha community project. This repository currently serves as the official release, update-feed, documentation, and GitHub issue-tracking home.

Source publication/licensing for the application itself has not been finalized.

## Disclaimer

Wirt's Eye is an independent community project and is not affiliated with, endorsed by, or sponsored by Blizzard Entertainment.

Diablo, Diablo II, Diablo II: Resurrected, and related names are trademarks of their respective owners.
