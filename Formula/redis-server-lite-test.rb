# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class RedisServerLiteTest < Formula
  desc "A lightweight Redis server implementation in Go."
  homepage "https://github.com/OmkarPh/redis-server-lite"
  version "0.0.1-test-actions-9"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/OmkarPh/test-redis-server-lite/releases/download/v0.0.1-test-actions-9/redis-server-lite_0.0.1-test-actions-9_darwin_arm64.tar.gz"
      sha256 "ea3280fa82d61703eb4139a58ab8ca70f4ddc0d3c112ba2b5701ae478195eda2"

      def install
        bin.install "redis-server-lite"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/OmkarPh/test-redis-server-lite/releases/download/v0.0.1-test-actions-9/redis-server-lite_0.0.1-test-actions-9_darwin_amd64.tar.gz"
      sha256 "99b993a35432ab1c69213e0452a4fcb2b99db4f4a7a23b93630a9d82e51d79eb"

      def install
        bin.install "redis-server-lite"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OmkarPh/test-redis-server-lite/releases/download/v0.0.1-test-actions-9/redis-server-lite_0.0.1-test-actions-9_linux_amd64.tar.gz"
      sha256 "6e6cc255dbe6c75f315f372200b3a25d5bba6f956239015edd12212dd8e67eab"

      def install
        bin.install "redis-server-lite"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OmkarPh/test-redis-server-lite/releases/download/v0.0.1-test-actions-9/redis-server-lite_0.0.1-test-actions-9_linux_arm64.tar.gz"
      sha256 "922d3d19ef22bbfcbf06a1a7040c4d6a3188e4f5bdae1dca20505b27988384c1"

      def install
        bin.install "redis-server-lite"
      end
    end
  end

  test do
    assert_match /A simple port-forward wrapper tool for multiple pods\/deployments\/services/, shell_output("#{bin}/kubepfm -h", 0)
  end
end
