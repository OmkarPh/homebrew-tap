# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class SpellcheckerBloomfilter < Formula
  desc "A Bloomfilter powered Spell checker implemented in golang"
  homepage "https://github.com/OmkarPh/spellchecker-bloomfilter"
  version "0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/OmkarPh/spellchecker-bloomfilter/releases/download/v0.1/spellchecker-bloomfilter_0.1_darwin_amd64.tar.gz"
      sha256 "acd8c6a1dd141c117e4d9ec509a2ca24bb6fb628b98c945fd41800c4305349ea"

      def install
        bin.install "spellchecker-bloomfilter"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/OmkarPh/spellchecker-bloomfilter/releases/download/v0.1/spellchecker-bloomfilter_0.1_darwin_arm64.tar.gz"
      sha256 "b6ae2cf21077a04012e007e849524560b0dd17206a11ba74b4e10d214bf92d66"

      def install
        bin.install "spellchecker-bloomfilter"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/OmkarPh/spellchecker-bloomfilter/releases/download/v0.1/spellchecker-bloomfilter_0.1_linux_amd64.tar.gz"
      sha256 "9d9de1a164a0171d9c8107b9593897b4e9a1e6961bab9404e358451521ec60d0"

      def install
        bin.install "spellchecker-bloomfilter"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/OmkarPh/spellchecker-bloomfilter/releases/download/v0.1/spellchecker-bloomfilter_0.1_linux_arm64.tar.gz"
      sha256 "e132ba86fa8d467c7e237831e7b2d52c54784ea7e42fdbe6afeeee2fef7b7643"

      def install
        bin.install "spellchecker-bloomfilter"
      end
    end
  end
end
