# Deployment Guide

## GitHub Pages Deployment

This presentation site is automatically deployed to GitHub Pages via GitHub Actions.

### Why We Use `lib/` Instead of `node_modules/`

GitHub Pages has restrictions on serving certain directories. The `node_modules` directory, even when included in Jekyll config, may not be reliably served. To fix this:

1. **reveal.js files are copied to `lib/reveal.js/`** during build
2. **All presentations reference `../../lib/reveal.js/`** instead of `../../node_modules/reveal.js/`
3. **The build process automatically sets up the `lib` directory**

### Build Process

The GitHub Actions workflow:

1. Installs dependencies with `npm ci`
2. Runs `npm run build` which copies reveal.js files to `lib/`
3. Deploys the site to GitHub Pages

### Local Development

For local development:

```bash
# Install dependencies and set up lib directory
npm install

# Start local server
npm run serve

# Or use the task runner
task install
task serve
```

### Creating New Presentations

Use the task runner to create presentations:

```bash
task new -- my-presentation-name
```

This automatically creates presentations that use the correct `lib/reveal.js/` paths.

### If You Get 404 Errors

If presentations show 404 errors on GitHub Pages:

1. Check that the `lib/` directory exists and contains reveal.js files
2. Ensure presentations reference `../../lib/reveal.js/` paths
3. Verify the GitHub Actions build completed successfully
4. Check that `_config.yml` includes the `lib` directory

### Manual Build

To manually rebuild the lib directory:

```bash
npm run build
# or
task setup-lib
```

