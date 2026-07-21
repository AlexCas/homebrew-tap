class Omusic < Formula
  desc "Reproductor de música TUI que usa YouTube vía yt-dlp y mpv"
  homepage "https://github.com/AlexCas/omtube"
  version "0.4.0"
  license "MIT"

  depends_on "mpv"
  depends_on "yt-dlp"

  on_macos do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.4.0/omusic_0.4.0_darwin_arm64.tar.gz"
      sha256 "2ec054280ebad96839fe0998f233cdfe85bcbcb53d955b94fa106c9969b6fe34"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.4.0/omusic_0.4.0_darwin_amd64.tar.gz"
      sha256 "7334854b9f9a58bcdfac3d1093a31de6c40e4081e923549eb9cac85c9df66779"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/AlexCas/omtube/releases/download/v0.4.0/omusic_0.4.0_linux_arm64.tar.gz"
      sha256 "289c23b11eb1978f1f8a2ec9d5ab74cf7790fd25e667a8b459505f0c95df5c07"
    end
    on_intel do
      url "https://github.com/AlexCas/omtube/releases/download/v0.4.0/omusic_0.4.0_linux_amd64.tar.gz"
      sha256 "e88a22ba38fdec6bfd8b127e08fa084c2368326765a62ad04b74f32ae7ef23de"
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
