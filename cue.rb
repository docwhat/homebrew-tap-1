# This file was generated by GoReleaser. DO NOT EDIT.
class Cue < Formula
  desc "CUE is an open source data constraint language which aims to simplify tasks involving defining and using data."
  homepage "https://github.com/cuelang/cue"
  version "0.3.0-beta.3"

  if OS.mac?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-beta.3/cue_0.3.0-beta.3_Darwin_x86_64.tar.gz"
    sha256 "b15779a6fb3112a52ae0f99ba84a136ae859caaccc540447a30bf257e2670c6a"
  elsif OS.linux?
    url "https://github.com/cuelang/cue/releases/download/v0.3.0-beta.3/cue_0.3.0-beta.3_Linux_x86_64.tar.gz"
    sha256 "3a55f5ab134d39df9ef977e07a544d6db03f21898c02b16607090e90fc01b5eb"
  end

  def install
    bin.install "cue"
  end

  test do
    system "#{bin}/cue version"
  end
end
