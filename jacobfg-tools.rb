# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "./lib/private_strategy.rb"
class JacobfgTools < Formula
  desc "CLI tools"
  homepage "https://github.com/jacobfg/okta-session-login"
  version "0.0.6"
  license "Apache-2.0"
  depends_on :macos

  on_intel do
    url "https://github.com/jacobfg/okta-session-login/releases/download/0.0.6/okta-session-login_0.0.6_darwin_amd64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "547c75fe41af333c0542eb4848f837a5cde7917c1fb1bdb6443ab995067f24ce"

    def install
      bin.install "cert-details" => "cert-details"
      bin.install "totp" => "totp"
      bin.install "httpdecode" => "httpdecode"
      bin.install "httpencode" => "httpencode"
      bin.install "osx-app-setup" => "osx-app-setup"
      bin.install "ini-print" => "ini-print"
      prefix.install_metafiles
    end
  end
  on_arm do
    url "https://github.com/jacobfg/okta-session-login/releases/download/0.0.6/okta-session-login_0.0.6_darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
    sha256 "5104c16ee796d7d10bbd2531b0bac9856c51ec54cdd868dc6f451522ab7b118a"

    def install
      bin.install "cert-details" => "cert-details"
      bin.install "totp" => "totp"
      bin.install "httpdecode" => "httpdecode"
      bin.install "httpencode" => "httpencode"
      bin.install "osx-app-setup" => "osx-app-setup"
      bin.install "ini-print" => "ini-print"
      prefix.install_metafiles
    end
  end
end
