# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cue-lang/cue"
  version "0.4.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cue-lang/cue/releases/download/v0.4.0/cue_v0.4.0_darwin_amd64.tar.gz"
    sha256 "24717a72b067a4d8f4243b51832f4a627eaa7e32abc4b9117b0af9aa63ae0332"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cue-lang/cue/releases/download/v0.4.0/cue_v0.4.0_linux_amd64.tar.gz"
    sha256 "a118177d9c605b4fc1a61c15a90fddf57a661136c868dbcaa9d2406c95897949"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cue-lang/cue/releases/download/v0.4.0/cue_v0.4.0_linux_arm64.tar.gz"
    sha256 "d101a36607981a7652b7961955a84102c912ac35ca9d91de63a0201f2416ecfa"
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
