# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class Awscreds < Formula
  desc "AWS Tools for managing credentials"
  homepage "https://github.com/jacobfg/awscreds"
  version "0.4.3"
  license "Apache-2.0"
  bottle :unneeded
  depends_on :macos

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/jacobfg/awscreds/releases/download/0.4.3/awscreds_0.4.3_darwin_amd64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "9b3b2cb741cef9fcb0ff95feab8eb71adb8e48876b999c4217e9ff6cf1a82c5d"
    end
    if Hardware::CPU.arm?
      url "https://github.com/jacobfg/awscreds/releases/download/0.4.3/awscreds_0.4.3_darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "8d14727e547706b5a0dd23016cd58fd6481f7a18e7398be57f06db8d937e2a43"
    end
  end

  def install
    # ldflags = %W[
    #   -s -w
    #   -X main.version=#{version}
    #   -X main.commit=#{Utils.git_head}
    #   -X main.date=#{time.rfc3339}
    #   -X main.builtBy=#{tap.user}
    # ].join(" ")
    # system "go", "build", *std_go_args(ldflags: ldflags)

    bin.install "awscreds"
    bash_completion.install "completions/awscreds.bash"
    fish_completion.install "completions/awscreds.fish"
    zsh_completion.install "completions/awscreds.zsh" => "_awscreds"

    prefix.install_metafiles
  end

  test do
    system "#{bin}/awscreds version"
    # test version to ensure that version number is embedded in binary
    # somehow add os/arch in version output
    assert_match "awscreds: 0.4.3 (374a40c)", shell_output("#{bin}/awscreds version")
    # assert_match "built by #{tap.user}", shell_output("#{bin}/awscreds version")
  end
end
