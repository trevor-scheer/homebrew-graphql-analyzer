class GraphqlAnalyzer < Formula
  desc "Fast, Rust-powered GraphQL validation and linting CLI"
  homepage "https://github.com/trevor-scheer/graphql-analyzer"
  version "0.1.9"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-apple-darwin.tar.xz"
      sha256 "12dfc28e614ff655a34b16d8181c9cc2fe3cd36b2913b29359227e335e3abad7"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-apple-darwin.tar.xz"
      sha256 "dc62e08a77bf9191f8bbd7f79c2348373deae91bc0a45da759db39066819f6bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-aarch64-unknown-linux-gnu.tar.xz"
      sha256 "988f36c95c660bfbd92664eb67f07f9527087961e963ba0c65a5e7095956c8c4"
    end
    on_intel do
      url "https://github.com/trevor-scheer/graphql-analyzer/releases/download/graphql-analyzer-cli/v#{version}/graphql-cli-x86_64-unknown-linux-gnu.tar.xz"
      sha256 "fe015531062df9d7b42b56bace57648f2e7798f716c19a2cdf0c20018ceecf35"
    end
  end

  def install
    bin.install "graphql"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/graphql --version")
  end
end
