# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class Awscreds < Formula
  desc "AWS Tools for managing credentials"
  homepage "https://github.com/jacobfg/awscreds"
  version "0.5.1"
  license "Apache-2.0"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/jacobfg/awscreds/releases/download/0.5.1/awscreds_0.5.1_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "0f7d20fc6889f796eefe48dcb78788e1e9c2de5d77e75912d8ad5645e98c0ad3"

    def install
      bin.install "awscreds"
      bash_completion.install "awscreds.bash" => "awscreds"
      zsh_completion.install "awscreds.zsh" => "_awscreds"
      fish_completion.install "awscreds.fish"
      # man1.install "manpages/awscreds.1.gz"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/jacobfg/awscreds/releases/download/0.5.1/awscreds_0.5.1_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "8e08250bbbc3c6818f428154006528d72422e91163cc729cf1c21abe42466b9c"

    def install
      bin.install "awscreds"
      bash_completion.install "awscreds.bash" => "awscreds"
      zsh_completion.install "awscreds.zsh" => "_awscreds"
      fish_completion.install "awscreds.fish"
      # man1.install "manpages/awscreds.1.gz"
    end
  end

  test do
    system "#{bin}/awscreds version"
    # test version to ensure that version number is embedded in binary
    # somehow add os/arch in version output
    assert_match "awscreds: 0.5.1 (215be4f)", shell_output("#{bin}/awscreds version")
    # assert_match "built by #{tap.user}", shell_output("#{bin}/awscreds version")
  end
end
