# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AtunAT060 < Formula
  desc "atun.io is a simple SSM/SSH tunnel manager"
  homepage "https://github.com/AutomationD/atun"
  version "0.6.0"
  license "Apache 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/AutomationD/atun/releases/download/v0.6.0/atun-darwin-amd64.tar.gz"
      sha256 "2c2c80bc0704b4d10eba0760d579bdefa18eb8722294393e794520860b25d967"

      def install
        bin.install "atun"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/AutomationD/atun/releases/download/v0.6.0/atun-darwin-arm64.tar.gz"
      sha256 "fa93dc81e065dcda58544174433b323a3c3d61337e38d76d4cc0a1635620def4"

      def install
        bin.install "atun"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.6.0/atun-linux-amd64.tar.gz"
        sha256 "af5131c4d4a9e4c969456b5d6011adc371b96cd3206034705ce44d583a820760"

        def install
          bin.install "atun"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/AutomationD/atun/releases/download/v0.6.0/atun-linux-arm64.tar.gz"
        sha256 "f3fbcd9267f79388cd0770c7110a75f8ec17f4b1e46db1138694a5621b617341"

        def install
          bin.install "atun"
        end
      end
    end
  end

  conflicts_with "atun-dev"
  conflicts_with "atun-dev@0.6.0"

  test do
    system "#{bin}/atun version"
  end
end
