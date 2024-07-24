# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class AwsSsoProfile < Formula
  desc "AWS tools for managing terminal profiles"
  homepage "https://github.com/jacobfg/aws-sso-profile"
  version "0.0.14"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.14/aws-sso-profile_0.0.14_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "e86b922e1c2822db6bc481125c5ee013055037fd0fc8c8888c268316152737f5"

    def install
      # bin.install "aws-sso-profile"
      # bash_completion.install "aws-sso-profile.bash" => "aws-sso-profile"
      # zsh_completion.install "aws-sso-profile.zsh" => "_aws-sso-profile"
      # fish_completion.install "aws-sso-profile.fish"

      bin.install "aws-sso-profile" => "aws-sso-profile"
      output = Utils.popen_read("SHELL=bash PATH=#{bin}:#{PATH} aws-sso-profile completion bash")
      (bash_completion/"aws-sso-profile").write output
      output = Utils.popen_read("SHELL=zsh PATH=#{bin}:#{PATH} aws-sso-profile completion zsh")
      (zsh_completion/"_aws-sso-profile").write output
      prefix.install_metafiles

      # man1.install "manpages/aws-sso-profile.1.gz"
    end
  end
  on_arm do
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.14/aws-sso-profile_0.0.14_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "153be8e2322e9a9a3cddbdf2587d7ddaf53d0285c7168a4991a1fb9d62ecfdc0"

    def install
      # bin.install "aws-sso-profile"
      # bash_completion.install "aws-sso-profile.bash" => "aws-sso-profile"
      # zsh_completion.install "aws-sso-profile.zsh" => "_aws-sso-profile"
      # fish_completion.install "aws-sso-profile.fish"

      bin.install "aws-sso-profile" => "aws-sso-profile"
      output = Utils.popen_read("SHELL=bash PATH=#{bin}:#{PATH} aws-sso-profile completion bash")
      (bash_completion/"aws-sso-profile").write output
      output = Utils.popen_read("SHELL=zsh PATH=#{bin}:#{PATH} aws-sso-profile completion zsh")
      (zsh_completion/"_aws-sso-profile").write output
      prefix.install_metafiles

      # man1.install "manpages/aws-sso-profile.1.gz"
    end
  end

  test do
    system "#{bin}/aws-sso-profile version"
    assert_match "aws-sso-profile: 0.0.14 (fccf3fd)", shell_output("#{bin}/aws-sso-profile version")
  end
end
