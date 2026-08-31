# Privacy

Wirt's Eye is designed to operate locally on the user's Windows PC.

## Local data

Wirt may store local configuration and progress information such as:

- Wirt settings and notification preferences;
- character/build/loadout information entered or observed by the user;
- farming/run telemetry;
- material/account-progress data;
- a bounded recent diagnostic history used to investigate OCR mistakes.

Frozen Windows builds keep mutable user data under `%LOCALAPPDATA%\WirtsEye` so updating the application does not require deleting the user's state.

## Network activity

Wirt's Eye does not automatically upload gameplay screenshots, account state, telemetry, or OCR captures.

When update checking is enabled, Wirt makes a normal HTTPS request to the public update manifest configured by the project. The hosting service may receive ordinary web-request information such as IP address and user agent, just as it would for other web traffic.

## Diagnostic/support bundles

A diagnostic bundle is created only when the user explicitly requests one. Depending on the problem being investigated, a bundle may contain:

- recent D2R screenshots/capture regions;
- OCR text/history;
- Wirt configuration;
- local telemetry relevant to recent runs/items;
- Wirt version information;
- screen resolution, DPI/scaling, and D2R client-window geometry.

Recent screenshots can contain character names, item tooltips, chat/game UI, or other information visible in D2R. Users should only share a diagnostic bundle when they are comfortable sharing its contents with the project maintainer/test group.

## No sale of user data

Wirt's Eye does not contain an advertising or user-data-sale system.
