# Wirt's Eye

**Wirt's Eye** is an early-alpha Diablo II: Resurrected companion that passively reads information already visible on screen using OCR.

It is being built to help with loot inspection, farming context, character/build tracking, account projects, material awareness, and long-term progression without injecting into Diablo II: Resurrected, reading game memory, or sending gameplay input.

> **Alpha software:** Wirt's Eye is under active development. OCR accuracy, setup behavior, display compatibility, and UI layout are still being improved from tester feedback.

## Download

Use the **Releases** section of this repository for official test builds.

During the early alpha, Windows may show a SmartScreen / "Windows protected your PC" warning for new or unsigned builds. Only use packages downloaded from this repository and compare the published SHA-256 hash when available. Code signing is on the project roadmap.

## What Wirt's Eye does

- Watches visible D2R ground-item labels.
- Reads visible item tooltips when you inspect items.
- Can surface high-value drops and items worth manually checking.
- Tracks farming/run context and local statistics.
- Can maintain character, build, project, and account-progress information.
- Provides diagnostic bundles for OCR/scanning bugs when the user explicitly creates one.

## What Wirt's Eye does **not** do

- No game-memory reading.
- No process injection.
- No packet inspection.
- No automated movement, combat, looting, inventory management, or gameplay input.
- No automatic upload of screenshots, telemetry, or account data.

## Current alpha focus

The current development cycle is focused on real-world tester feedback, especially:

- different screen resolutions and Windows DPI scaling;
- character/stash setup scanning;
- unique-charm and ground-item recognition;
- quieter/selectable CHECK notification profiles;
- movable/responsive UI and inspection queue;
- update delivery and version migration.

## Reporting a problem

Open an **Issue** and choose **Bug / Bad Read**. Please include your display resolution, Windows scaling percentage, D2R display mode, and Wirt's Eye version.

For OCR or scanning failures, Wirt's Eye can create a diagnostic/support bundle. Those bundles can contain recent screenshots and OCR history, so review the privacy notice before sharing one.

See [SUPPORT.md](SUPPORT.md) and [PRIVACY.md](PRIVACY.md).

## Updates

Wirt's Eye uses a small public release manifest in [`updates/manifest.json`](updates/manifest.json). Early alpha builds only notify the user and open the official release page; a verified one-click updater is planned later.

## Project status

This repository currently serves as the project's **official release, update-feed, documentation, and issue-tracking home**. Source licensing/publication has not been selected yet.

## Disclaimer

Wirt's Eye is an independent community project and is not affiliated with, endorsed by, or sponsored by Blizzard Entertainment. Diablo, Diablo II, Diablo II: Resurrected, and related names are trademarks of their respective owners.
