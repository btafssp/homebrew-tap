# homebrew-tap

Homebrew tap for btafssp's Apple Silicon Mac apps and tools.

| Name | Type | What it is |
| --- | --- | --- |
| [verbamac](https://github.com/btafssp/VerbaMac) | cask | Latin and Greek dictionary browser (Lewis & Short, LSJ, Morpheus) |
| [oed2-reader](https://github.com/btafssp/oed2-reader-mac) | cask | OED, an unofficial native reader for your own OED2 CD-ROM data |
| [ocr-pdf](https://github.com/btafssp/ocr-pdf-mac) | formula | Finder Quick Action that OCRs scanned PDFs with Kraken |

```sh
brew tap btafssp/tap
brew trust btafssp/tap

brew install --cask btafssp/tap/verbamac
brew install --cask btafssp/tap/oed2-reader
brew install btafssp/tap/ocr-pdf && ocr-pdf-setup
```

VerbaMac and OED are not notarized; on first launch, approve them in System Settings › Privacy & Security ("Open Anyway").

This tap was formerly named `btafssp/verbamac`; GitHub redirects the old name.
