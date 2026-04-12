class GraphqlAnalyzer < Formula
  desc "Fast, Rust-powered GraphQL validation and linting CLI"
  homepage "https://github.com/trevor-scheer/graphql-analyzer"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-apple-darwin.tar.xz"
      sha256 "3b6552a1ed8f594951b1d5cc601bea3a331cb25acc55b87d113974559b565563"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-apple-darwin.tar.xz"
      sha256 "4d4bb6e824198bfbaa4ea8eb764987f91aae0d27bbd5b9125786e4e4d6c5e235"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "cf982131981066ca21ff4433dad489f03ed7d95a59473be712faccfe0c237e9f"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fb78703768781de4f13dba8b4dffe4e52f62632b27cb97d05300ff03831f42c0"
    end
  end

  def install
    bin.install "graphql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graphql --version")
  end
end
