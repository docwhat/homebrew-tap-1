# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cuelang/cue"
  version "0.3.0-alpha4"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha4/cue_0.3.0-alpha4_Darwin_x86_64.tar.gz"
    sha256 "659912f149bb1534c2e72baae31e3d4de108b292af3907f402d25fa101f80d98"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha4/cue_0.3.0-alpha4_Linux_x86_64.tar.gz"
      sha256 "ba54e55d91ffc430fdb83116b2bf4b0e284083396e5ca63af3fad742c2920da5"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/cuelang/cue/releases/download/v0.3.0-alpha4/cue_0.3.0-alpha4_Linux_arm64.tar.gz"
        sha256 "7a7c7187bcdc8f6395ea9efda8253208343ebeb85e078b34606acebaab20784b"
      else
      end
    end
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
