# homebrew-tap

Homebrew tap for [`bastyn`](https://github.com/BASTYN-labs/bastyn-scan).

```
brew install bastyn-labs/tap/bastyn
```

The formula in `Formula/bastyn.rb` is generated and pushed automatically by
`bastyn-scan`'s release pipeline (`.github/workflows/release.yml`, jobs
`render-and-verify-tap` / `push-tap`) on every final release tag. Do not
edit it by hand — changes will be overwritten on the next release.
