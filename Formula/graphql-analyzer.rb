class GraphqlAnalyzer < Formula
  desc "Fast, Rust-powered GraphQL validation and linting CLI"
  homepage "https://github.com/trevor-scheer/graphql-analyzer"
  version "0.2.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-apple-darwin.tar.xz"
      sha256 "70ca7670ecde36f6f399471a56c7e6ea9b3a9ea6e83503f7d496dfbdc68d1547"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-apple-darwin.tar.xz"
      sha256 "9b3a494af2472e5f5ef6887d0bb8c040e8dc5c5746e041662b2be124a0a17361"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "488130074f6cb5f6d7b4453f4446415247e178d5ff42d26de51766274cf6f192"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "78b818ea241fed7ef8bafebde8fd40676d01f726f0846bcf24d3c71b0abe8d56"
    end
  end

  def install
    bin.install "graphql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graphql --version")
  end
end
