# Makefile for Jekyll site building using Docker

.PHONY: build clean serve help

# Build the Jekyll site using Docker
build:
	@echo "Building Jekyll site with Docker..."
	docker run --rm \
	  -v $(PWD):/srv/jekyll \
	  -w /srv/jekyll \
	  ruby:3.1 \
	  bash -c "gem install bundler && bundle install && bundle exec jekyll build"
	@echo "✅ Site built successfully in _site/ directory"

# Clean the build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf _site/.jekyll-cache .sass-cache
	@echo "✅ Cleaned build artifacts"

# Serve the site locally (for development)
serve:
	@echo "Serving Jekyll site locally..."
	docker run --rm \
	  -v $(PWD):/srv/jekyll \
	  -w /srv/jekyll \
	  -p 4000:4000 \
	  ruby:3.1 \
	  bash -c "gem install bundler && bundle install && bundle exec jekyll serve --host 0.0.0.0 --port 4000 --livereload"
	@echo "🚀 Server running at http://localhost:4000"

# Show help information
help:
	@echo "Available commands:"
	@echo "  make build    - Build the Jekyll site using Docker"
	@echo "  make clean    - Clean build artifacts"
	@echo "  make serve    - Serve the site locally with live reload"
	@echo "  make help     - Show this help message"

# Default target
all: build