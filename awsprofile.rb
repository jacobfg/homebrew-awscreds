# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class Awsprofile < Formula
  desc "AWS tools for managing terminal profiles"
  homepage "https://github.com/jacobfg/awsprofile"
  version "0.0.2"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/awsprofile/releases/download/0.0.2/awsprofile_0.0.2_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "105cdce1467ac4804e30f47f1c328ea43174a907a76cc5195aa174ce21e53180"

    def install
      # bin.install "awsprofile"
      # bash_completion.install "awsprofile.bash" => "awsprofile"
      # zsh_completion.install "awsprofile.zsh" => "_awsprofile"
      # fish_completion.install "awsprofile.fish"

      bin.install "awsprofile" => "awsprofile"
      output = Utils.popen_read("SHELL=bash #{bin}/awsprofile completion bash")
      (bash_completion/"awsprofile").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/awsprofile completion zsh")
      (zsh_completion/"_awsprofile").write output
      prefix.install_metafiles

      # man1.install "manpages/awsprofile.1.gz"
    end
  end
  on_arm do
    url "https://github.com/jacobfg/awsprofile/releases/download/0.0.2/awsprofile_0.0.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "deccc02bf1f66d9ffd80991c757f373cc0a199bb540b7cc701ec21c0beb0cc2c"

    def install
      # bin.install "awsprofile"
      # bash_completion.install "awsprofile.bash" => "awsprofile"
      # zsh_completion.install "awsprofile.zsh" => "_awsprofile"
      # fish_completion.install "awsprofile.fish"

      bin.install "awsprofile" => "awsprofile"
      output = Utils.popen_read("SHELL=bash #{bin}/awsprofile completion bash")
      (bash_completion/"awsprofile").write output
      output = Utils.popen_read("SHELL=zsh #{bin}/awsprofile completion zsh")
      (zsh_completion/"_awsprofile").write output
      prefix.install_metafiles

      # man1.install "manpages/awsprofile.1.gz"
    end
  end

  test do
    system "#{bin}/awsprofile version"
    assert_match "awsprofile: 0.0.2 (b56ba35)", shell_output("#{bin}/awsprofile version")
  end
end