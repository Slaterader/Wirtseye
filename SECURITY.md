# Security

## Reporting a security issue

Please do **not** post suspected security vulnerabilities, credential exposure, unsafe update behavior, tampered release concerns, or code-signing/security problems as public GitHub Issues or public Discord posts.

If GitHub private vulnerability reporting is enabled for the repository, use that. Otherwise, join the Wirt's Eye Discord and contact the project maintainer privately:

https://discord.gg/xkf6KGehJH

Include:

- the affected Wirt's Eye version;
- a concise description of the issue;
- reproduction steps when safe to provide;
- whether you believe users or release integrity are currently at risk.

## Official releases

Only download Wirt's Eye from the official GitHub Releases page:

https://github.com/Slaterader/Wirtseye/releases

Release SHA-256 hashes are part of the release/update record. A matching checksum helps confirm that the downloaded ZIP is the artifact referenced by the project manifest.

Unsigned alpha software may still trigger Windows SmartScreen. A SmartScreen warning by itself does not prove that a file is malicious, and the absence of a warning does not prove that a file is safe.

## Update integrity

The Wirt's Eye update manifest identifies the approved version, release asset, and SHA-256 hash. Release assets and manifest metadata must remain synchronized.

Do not replace a published release ZIP without updating its hash and re-validating the updater flow.
