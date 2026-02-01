# Antoine Camerlo - Systems Engineer Portfolio

This is a Jekyll-based personal portfolio website using the cover-card theme.

## 🚀 Quick Start

### Prerequisites
- Docker (for local development)
- Make (for build automation)

### Build the Site
```bash
make build
```

### Clean Build Artifacts
```bash
make clean
```

### Local Development Server
```bash
make serve
```

### Available Make Commands
```bash
make help
```

## 📁 Project Structure

```
.
├── _includes/          # Theme partials (head, header, social, etc.)
├── _layouts/           # Theme layouts (default.html)
├── _site/              # Generated static site (build output)
├── assets/             # CSS, JS, and other assets
├── _config.yml         # Site configuration
├── index.md            # Main content
├── Gemfile             # Ruby dependencies
├── Makefile            # Build automation
├── README.md           # This file
└── ...                 # Other static files
```

## 🔧 Configuration

Edit `_config.yml` to customize:
- Site title and description
- Social media links
- SEO settings
- Theme colors and branding

## 🎨 Theme

This site uses a local copy of the **cover-card** theme:
- Clean, minimalist design
- Responsive layout
- Social media integration
- Accessibility features
- Font Awesome icons

## 📦 Dependencies

- Jekyll (via github-pages gem)
- Ruby 3.1 (via Docker)
- Bundler for dependency management

## 🔄 Deployment

The site is designed to work with GitHub Pages:
1. Push to GitHub repository
2. GitHub Actions will automatically build and deploy
3. Site will be available at `https://username.github.io`

## 🛠 Development

### Local Development
```bash
make serve
```
This will start a local server at `http://localhost:4000` with live reload.

### Build for Production
```bash
make build
```
This generates the static site in the `_site/` directory.

### Clean Up
```bash
make clean
```
Removes build artifacts and cache files.

## 📝 Content Management

- Edit `index.md` for main content
- Update `_config.yml` for site settings
- Add assets to the `assets/` directory
- Customize theme files in `_layouts/` and `_includes/`

## 🔒 License

This project is open source and available under the MIT License.

## 📬 Contact

Antoine Camerlo - [antoine@camerlo.org](mailto:antoine@camerlo.org)

Project Link: [https://github.com/aca2328/aca2328.github.io](https://github.com/aca2328/aca2328.github.io)