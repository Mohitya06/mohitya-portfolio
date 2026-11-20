# 🚀 Deploy to GitHub Pages

Complete guide to deploy your portfolio to GitHub Pages using the `dist` folder.

## Prerequisites

✅ Code committed locally (already done)
✅ vite.config.js has correct base path (already set to `/mohitya-portfolio/`)
✅ GitHub repository created

## Step-by-Step Deployment

### Step 1: Build Your Project

```bash
cd f:/Projects/portfolio/ui
npm run build
```

This creates a `dist` folder with all optimized production files.

### Step 2: Create `gh-pages` Branch (Optional but Recommended)

```bash
cd f:/Projects/portfolio/ui
git checkout --orphan gh-pages
git rm -rf .
```

Or manually:
1. Go to GitHub repository
2. Create new branch called `gh-pages`

### Step 3: Push `dist` Folder to GitHub

**Option A: Using Subtree (Recommended)**

```bash
cd f:/Projects/portfolio/ui
git add dist -f
git commit -m "Deploy to GitHub Pages"
git subtree push --prefix dist origin gh-pages
```

**Option B: Manual Upload**

1. Build project: `npm run build`
2. Go to GitHub repository
3. Create `gh-pages` branch
4. Upload all files from `dist` folder to `gh-pages` branch
5. Go to Settings → Pages
6. Select `gh-pages` branch as source

### Step 4: Configure GitHub Pages Settings

1. Go to your repository: https://github.com/Mohitya06/mohitya-portfolio
2. Click **Settings**
3. Scroll to **Pages** section
4. Under "Source", select:
   - Branch: `gh-pages`
   - Folder: `/ (root)`
5. Click **Save**

### Step 5: Wait for Deployment

GitHub will automatically deploy in 1-2 minutes.

Your site will be available at:
```
https://Mohitya06.github.io/mohitya-portfolio
```

## Enable HTTPS (Automatic)

HTTPS is automatically enforced for GitHub Pages using the default domain (`github.io`).

✅ Your site is secure by default!

## Custom Domain (Optional)

If you want to use your own domain:

1. Get a domain from registrar (GoDaddy, Namecheap, etc.)
2. Point DNS records to GitHub Pages
3. Add custom domain in GitHub Pages settings:
   - Settings → Pages → Custom domain
   - Enter your domain
   - Enforce HTTPS (recommended)

More info: https://docs.github.com/en/pages/configuring-a-custom-domain-for-your-github-pages-site

## Updating Your Site

Every time you make changes:

```bash
# Make changes to your code
npm run dev  # Test locally

# Build for production
npm run build

# Deploy to GitHub Pages
git add dist -f
git commit -m "Update portfolio"
git subtree push --prefix dist origin gh-pages
```

## Troubleshooting

### Site Not Loading

1. Check GitHub Pages is enabled:
   - Settings → Pages
   - Verify `gh-pages` branch is selected

2. Wait 5 minutes for deployment

3. Hard refresh browser: `Ctrl+Shift+Delete` then `Ctrl+F5`

### Wrong Base Path

The `vite.config.js` already has:
```javascript
base: "/mohitya-portfolio/"
```

This is correct for: `https://Mohitya06.github.io/mohitya-portfolio`

### Images Not Loading

Make sure:
- Images are in `src/data/` folder
- `dist` folder was built: `npm run build`
- Hard refresh browser cache

### Styling Looks Broken

1. Rebuild project: `npm run build`
2. Redeploy: `git subtree push --prefix dist origin gh-pages`
3. Clear browser cache
4. Hard refresh: `Ctrl+F5`

## Compare Deployment Options

| Feature | GitHub Pages | Vercel | Netlify |
|---------|-------------|--------|---------|
| Cost | FREE | FREE tier | FREE tier |
| Setup Time | 10 min | 5 min | 5 min |
| Auto-Deploy | Manual | Auto | Auto |
| Performance | Good | Excellent | Very Good |
| Custom Domain | Yes | Yes | Yes |
| HTTPS | Auto | Auto | Auto |
| Best For | Simple projects | Modern apps | Easy setup |

## Recommended: Use Both!

- **GitHub Pages**: Free, integrated with repo
- **Vercel**: Faster, better performance

You can deploy to both and use Vercel as primary!

## Quick Commands Reference

```bash
# Build
npm run build

# Deploy to GitHub Pages
git add dist -f
git commit -m "Deploy"
git subtree push --prefix dist origin gh-pages

# Update local
npm run dev

# Rebuild and redeploy
npm run build
git add dist -f
git commit -m "Update"
git subtree push --prefix dist origin gh-pages
```

## Your GitHub Pages Site

**URL**: `https://Mohitya06.github.io/mohitya-portfolio`

**Settings**: https://github.com/Mohitya06/mohitya-portfolio/settings/pages

**Live Now**: After step 4-5 (2-3 minutes)

---

**Next**: Follow steps 1-5 above to go live!

Last Updated: 2026-11-20
