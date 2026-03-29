class GraphqlAnalyzer < Formula
  desc "Fast, Rust-powered GraphQL validation and linting CLI"
  homepage "https://github.com/trevor-scheer/graphql-analyzer"
  version "0.1.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-apple-darwin.tar.xz"
      sha256 "e9b5e10a25bf42555628b5b4288e66f84681be7d586ad5089832a458aee15003"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-apple-darwin.tar.xz"
      sha256 "a2663be623470cfd616d156a4eb22724fc45fb2a43a170ce76adf2b1648ade0f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "67a884da39000e71776a1d0bfe4627b8745f96e4d29a88a36ac7463265c5a73c"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "9b246cfb8f2273f61af25977b8e81ba276ecc96440d5ea8ca6015c71652bc4b8"
    end
  end

  def install
    bin.install "graphql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graphql --version")
  end
end
