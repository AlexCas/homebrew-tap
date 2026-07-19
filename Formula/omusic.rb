class Omusic < Formula
  desc "Reproductor de música TUI que usa YouTube vía yt-dlp y mpv"
  homepage "https://github.com/AlexCas/omtube"
  version "0.3.0"
  license "MIT"

  depends_on "mpv"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.3.0/omusic_0.3.0_darwin_arm64.tar.gz"
      sha256 "2a044cd4b54a5143229ff07fc416175f77a623256e7d6ffcddf7eb0bdd775525"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.3.0/omusic_0.3.0_darwin_amd64.tar.gz"
      sha256 "a2658ef720e2bc68f6b55440f488383d0f2e3781b70eba09be27a9686fd7926f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.3.0/omusic_0.3.0_linux_arm64.tar.gz"
      sha256 "c6a1bc2c0f9b193827595bcff40f492ce9e3e1d7abd3417de601d7a614e15552"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.3.0/omusic_0.3.0_linux_amd64.tar.gz"
      sha256 "b782ef39d9ff645f7da99c66cb1964727108a3544a3e35df2911e24473fea360"
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
