# TUFF Homebrew tap

The [Homebrew](https://brew.sh) cask for [TUFF](https://github.com/tuff-app/TUFF),
the local AI app built for the Mac.

```sh
brew install --cask tuff-app/tap/tuff
```

That installs `TUFF.app` and the `tuff` command. TUFF updates itself, and
`brew upgrade --cask tuff` works too. TUFF isn't notarized, so the first time,
Control-click the app and choose Open.

If you tapped TUFF before it moved here (`brew tap tuff-app/tuff` or
`brew tap rexmhall09/tuff`), Homebrew moves your install to this tap on the
next `brew update`.

The cask is updated with each release from the app's packaged ZIP
(`Scripts/update_homebrew.py` in TUFF). It must never get a `zap` stanza that
deletes models, chats or settings.

## Contributing

TUFF is one project split across a few repositories:

| Repository | What's in it |
| --- | --- |
| [TUFF](https://github.com/tuff-app/TUFF) | The Mac app, the `tuff` command and the inference engines |
| [sandbox](https://github.com/tuff-app/sandbox) | The Linux VM that runs web and file search in isolation |
| [homebrew-tap](https://github.com/tuff-app/homebrew-tap) | The Homebrew cask |
| [tuff-app.github.io](https://github.com/tuff-app/tuff-app.github.io) | The website and benchmark leaderboard |

They all follow the same
[contributing guide](https://github.com/tuff-app/.github/blob/main/CONTRIBUTING.md),
[maintainer roles](https://github.com/tuff-app/.github/blob/main/MAINTAINERS.md)
and [code of conduct](https://github.com/tuff-app/.github/blob/main/CODE_OF_CONDUCT.md).
Questions and ideas go in [Discussions](https://github.com/tuff-app/TUFF/discussions).

## Security

Please don't open a public issue for a security problem. Report it privately
through GitHub's vulnerability reporting on the repository it affects, or on
[TUFF](https://github.com/tuff-app/TUFF/security/advisories/new) if you're not
sure which. The [security policy](https://github.com/tuff-app/.github/blob/main/SECURITY.md)
has the details.

## License

[Apache 2.0](LICENSE). Model weights keep their own terms.
