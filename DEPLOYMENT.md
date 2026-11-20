# 🚀 Deployment Guide

Complete guide to deploy your portfolio website.

## Step 1: Push to GitHub

### Option A: Command Line (Recommended)

```bash
cd f:/Projects/portfolio/ui

# Initialize git if not already done
git init

# Add all files
git add .

# Configure git (use your info)
git config user.name "Mohitya06"
git config user.email "your-email@example.com"

# Create initial commit
git commit -m "Initial commit: Portfolio UI project"

# Rename branch to main
git branch -M main

# Add remote repository
git remote add origin https://github.com/Mohitya06/mohitya-portfolio.git

# Push to GitHub
git push -u origin main
```

### Option B: GitHub Web Interface
1. Create new repository: `mohitya-portfolio`
2. Upload files using GitHub's web interface
3. Commit changes

---

## Step 2: Choose a Deployment Platform

### 🥇 Option 1: Vercel (Recommended - Fastest)

**Why Vercel?**
- Optimized for React/Vite apps
- Instant deployments
- Free tier available
- Automatic HTTPS
- Performance analytics

**Steps:**

1. **Create Vercel Account**
   - Go to [vercel.com](https://vercel.com)
   - Sign up with GitHub account

2. **Connect Repository**
   - Click "New Project"
   - Select your `mohitya-portfolio` repository
   - Vercel auto-detects React + Vite

3. **Configure (if needed)**
   - Build Command: `npm run build` (auto-detected)
   - Output Directory: `dist` (auto-detected)
   - Install Command: `npm install` (auto-detected)

4. **Deploy**
   - Click "Deploy"
   - Wait for build to complete (~2-3 minutes)
   - Your site goes live at `https://mohitya-portfolio.vercel.app`

5. **Custom Domain (Optional)**
   - In Vercel dashboard → Settings → Domains
   - Add your custom domain
   - Update DNS records

---

### 🟡 Option 2: Netlify

**Why Netlify?**
- Easy drag-and-drop deployment
- Continuous deployment from GitHub
- Free tier with good limits
- CDN included

**Steps:**

1. **Build Locally**
   ```bash
   npm run build
   ```
   This creates a `dist` folder with production files

2. **Deploy via Netlify**
   - Go to [netlify.com](https://netlify.com)
   - Sign up / Login with GitHub
   - Click "New site from Git"
   - Select your repository
   - Netlify auto-detects settings
   - Click "Deploy"

3. **Site is Live**
   - Netlify assigns a domain
   - Updates automatically on GitHub pushes

4. **Custom Domain**
   - Domain settings in Netlify dashboard
   - Add your own domain

---

### 🔵 Option 3: GitHub Pages (Free)

**Why GitHub Pages?**
- Free hosting
- Integrated with GitHub
- Simple setup
- Good for portfolio projects

**Steps:**

1. **Update vite.config.js**
   ```javascript
   export default {
     base: '/mohitya-portfolio/',
     plugins: [react()],
   }
   ```

2. **Build Project**
   ```bash
   npm run build
   ```

3. **Deploy to GitHub Pages**
   - Go to GitHub repository Settings
   - Select Pages section
   - Choose "Deploy from a branch"
   - Select `main` branch
   - Choose `dist` folder
   - Save

4. **Your Site**
   - Available at: `https://Mohitya06.github.io/mohitya-portfolio`

---

### 🟢 Option 4: Railway, Render, or AWS

For more advanced deployments:

**Railway:**
- Go to [railway.app](https://railway.app)
- Connect GitHub
- Deploy

**Render:**
- Go to [render.com](https://render.com)
- Connect GitHub
- Deploy

**AWS:**
- Use S3 + CloudFront
- More complex setup
- Better for enterprise

---

## Step 3: Post-Deployment

### ✅ Verification
- [ ] Site is accessible at deployment URL
- [ ] All pages load correctly
- [ ] Navigation works
- [ ] Images display properly
- [ ] Animations are smooth
- [ ] Mobile responsive

### 📊 Setup Analytics
- Add Google Analytics (optional)
- Monitor performance metrics

### 🔧 Maintenance
- Update content regularly
- Keep dependencies updated
- Monitor for broken links
- Test new features before deployment

---

## 🎯 Recommended Deployment Flow

```
Local Development → Git Push → GitHub → Vercel Auto-Deploy → Live Website
```

### Setup Automatic Deployment

**Vercel:**
```bash
# Install Vercel CLI
npm i -g vercel

# Deploy with auto-updates
vercel
```

**Netlify:**
- Connect GitHub in Netlify dashboard
- Auto-deploys on every push to main

---

## 📋 Pre-Deployment Checklist

- [ ] All code committed to Git
- [ ] `.gitignore` file configured
- [ ] `README.md` is comprehensive
- [ ] `package.json` has correct scripts
- [ ] Build runs successfully locally: `npm run build`
- [ ] Preview works: `npm run preview`
- [ ] No console errors in dev
- [ ] All images optimized
- [ ] Meta tags are correct in `index.html`
- [ ] Contact information is current
- [ ] Links are working

---

## ⚡ Performance Tips

### Before Deployment

1. **Optimize Images**
   ```bash
   # Use image optimization tools
   # Consider WebP format
   ```

2. **Update Build Config**
   ```javascript
   // vite.config.js
   export default {
     build: {
       minify: 'terser',
       terserOptions: {
         compress: { drop_console: true }
       }
     }
   }
   ```

3. **Environment Variables** (if needed)
   ```bash
   # Create .env.production
   VITE_API_URL=https://api.example.com
   ```

---

## 🐛 Troubleshooting

### Build Fails
```bash
# Clean and rebuild
rm -rf node_modules dist
npm install
npm run build
```

### Deployment Stuck
- Check build logs in deployment platform
- Verify `package.json` scripts are correct
- Ensure all dependencies are listed

### Site Not Updating
- Clear browser cache (Ctrl+Shift+Delete)
- Hard refresh (Ctrl+F5)
- Check if GitHub push succeeded
- Verify CI/CD pipeline completed

---

## 📱 Test Deployment

After deploying, test on:

- ✅ Desktop browsers
- ✅ Mobile browsers
- ✅ Tablet devices
- ✅ Different internet speeds
- ✅ Network throttling

Use Chrome DevTools:
- F12 → Device Toolbar (Ctrl+Shift+M)
- Network tab → Throttle to "Slow 3G"

---

## 🎉 You're Done!

Your portfolio is now live! 

### Next Steps
1. Share your portfolio URL
2. Update LinkedIn with portfolio link
3. Add to resume
4. Keep content updated
5. Monitor analytics

---

**Questions?** Check the troubleshooting section or reach out via GitHub!

Last Updated: 2026-11-20
