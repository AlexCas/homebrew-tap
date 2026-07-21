class Omusic < Formula
  desc "Reproductor de música TUI que usa YouTube vía yt-dlp y mpv"
  homepage "https://github.com/AlexCas/omtube"
  version "0.5.0"
  license "MIT"

  depends_on "mpv"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.5.0/omusic_0.5.0_darwin_arm64.tar.gz"
      sha256 "71decca1420cb568e501e6d315df530c9fe1c9db1c5cd943cbaee08cb8819ba9"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.5.0/omusic_0.5.0_darwin_amd64.tar.gz"
      sha256 "43b3f5abb7f12bcf0d3e2192329e50ba1f722d7348386f2d2fb3464e82f11d40"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.5.0/omusic_0.5.0_linux_arm64.tar.gz"
      sha256 "6c4ed596cba0f2e0d4b2652508eaae082dec4844feda0975116c71f297e6d86c"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.5.0/omusic_0.5.0_linux_amd64.tar.gz"
      sha256 "e6f89e6f154cce6a7580709024bf0d25265e8eb66795bec0a3cfa7910940b076"
    end
  end

  def install
    bin.install "omusic"
  end

  def caveats
    <<~EOS
      Para el panel de portada instalá chafa (opcional):
        brew install chafa
    EOS
  end

  test do
    assert_match "omusic", shell_output("#{bin}/omusic --version")
  end
end
