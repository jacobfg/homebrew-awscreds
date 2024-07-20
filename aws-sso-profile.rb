# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class AwsSsoProfile < Formula
  desc "AWS tools for managing terminal profiles"
  homepage "https://github.com/jacobfg/aws-sso-profile"
  version "0.0.2"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.2/aws-sso-profile_0.0.2_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "d460bf6e2921078d376d1d835dcf3184c43394b7d4e64fbf4d95711ca8c8f216"

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
    url "https://github.com/jacobfg/aws-sso-profile/releases/download/0.0.2/aws-sso-profile_0.0.2_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "4e4e4b5149f33e633bb503b8c3e105e41de42aa691ebf154dcf81e45627f6b04"

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
    assert_match "aws-sso-profile: 0.0.2 (6994836)", shell_output("#{bin}/aws-sso-profile version")
  end
end
