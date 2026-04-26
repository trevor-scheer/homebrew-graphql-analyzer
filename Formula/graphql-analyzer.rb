class GraphqlAnalyzer < Formula
  desc "Fast, Rust-powered GraphQL validation and linting CLI"
  homepage "https://github.com/trevor-scheer/graphql-analyzer"
  version "0.2.3-alpha.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-apple-darwin.tar.xz"
      sha256 "74a16b7cf440f11d39917b0f766ba0cdbb4c50b00e3b3e5ac2ec5f3db7734ab3"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-apple-darwin.tar.xz"
      sha256 "d20b996a530275509521152ffc8e01f46deee595e354e3677afef66229d8dd48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "5c6ff9c1a43f7ee8ff91eb29e6709cc044104961d75ec8d29c8c0529719b9369"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "0706690e5ccb9f1e7250b9805673ee0c2a6aad6069ffbbb69606f88a62795bf1"
    end
  end

  def install
    bin.install "graphql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graphql --version")
  end
end
