#!/bin/bash
# 🚀 Portfolio Deployment Commands
# Copy and paste these commands in your terminal to deploy

echo "╔════════════════════════════════════════════════════════════════╗"
echo "║           PORTFOLIO DEPLOYMENT COMMANDS                       ║"
echo "║           Run commands one by one in terminal                 ║"
echo "╚════════════════════════════════════════════════════════════════╝"

# ============================================
# PHASE 1: LOCAL TESTING (5 min)
# ============================================
echo ""
echo "📋 PHASE 1: LOCAL TESTING"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Step 1: Build project"
echo "$ npm run build"
echo ""
echo "Step 2: Preview production"
echo "$ npm run preview"
echo ""
echo "✓ If both commands work without errors, proceed to Phase 2"
echo ""

# ============================================
# PHASE 2: GITHUB SETUP (10 min)
# ============================================
echo "📋 PHASE 2: GITHUB SETUP"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Step 1: Navigate to project"
echo "$ cd f:/Projects/portfolio/ui"
echo ""
echo "Step 2: Initialize git"
echo "$ git init"
echo ""
echo "Step 3: Add all files"
echo "$ git add ."
echo ""
echo "Step 4: Configure git user"
echo "$ git config user.name \"Mohitya06\""
echo "$ git config user.email \"your-email@example.com\""
echo ""
echo "Step 5: Create initial commit"
echo "$ git commit -m \"Initial portfolio project\""
echo ""
echo "Step 6: Rename branch to main"
echo "$ git branch -M main"
echo ""
echo "Step 7: Add GitHub remote"
echo "$ git remote add origin https://github.com/Mohitya06/mohitya-portfolio.git"
echo ""
echo "Step 8: Push to GitHub"
echo "$ git push -u origin main"
echo ""
echo "✓ Repository is now on GitHub"
echo ""

# ============================================
# PHASE 3: DEPLOY TO VERCEL (5 min)
# ============================================
echo "📋 PHASE 3: DEPLOY TO VERCEL"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "⭐ EASIEST & FASTEST METHOD ⭐"
echo ""
echo "1. Visit: https://vercel.com/dashboard"
echo "2. Sign in with GitHub"
echo "3. Click 'New Project'"
echo "4. Select 'mohitya-portfolio' repository"
echo "5. Vercel auto-detects everything"
echo "6. Click 'Deploy'"
echo "7. Wait 1-2 minutes"
echo ""
echo "✓ Your site is LIVE!"
echo ""
echo "Your URL: https://mohitya-portfolio.vercel.app"
echo ""

# ============================================
# ALTERNATIVE: DEPLOY TO NETLIFY
# ============================================
echo "📋 ALTERNATIVE: DEPLOY TO NETLIFY"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Step 1: Build project"
echo "$ npm run build"
echo ""
echo "Step 2: Go to https://netlify.com"
echo "Step 3: Sign in with GitHub"
echo "Step 4: Click 'New site from Git'"
echo "Step 5: Select repository"
echo "Step 6: Netlify auto-configures"
echo "Step 7: Click 'Deploy'"
echo ""
echo "✓ Deployed to Netlify!"
echo ""

# ============================================
# PHASE 4: UPDATE CONTENT (15 min)
# ============================================
echo "📋 PHASE 4: CUSTOMIZE CONTENT"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Edit: src/data/portfolio.js"
echo ""
echo "Update these sections:"
echo "  • name (your full name)"
echo "  • title (your job title)"
echo "  • bio (your bio)"
echo "  • email (your email)"
echo "  • skills (your skills)"
echo "  • projects (your projects)"
echo "  • experience (your experience)"
echo ""

# ============================================
# PHASE 5: FUTURE UPDATES
# ============================================
echo "📋 PHASE 5: FOR FUTURE UPDATES"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Every time you make changes:"
echo ""
echo "$ git add ."
echo "$ git commit -m \"Update portfolio\""
echo "$ git push"
echo ""
echo "✓ Vercel auto-deploys! No additional steps needed."
echo ""

# ============================================
# SUMMARY
# ============================================
echo "╔════════════════════════════════════════════════════════════════╗"
echo "║                     SUMMARY                                   ║"
echo "╚════════════════════════════════════════════════════════════════╝"
echo ""
echo "✅ What you need to do:"
echo "   1. Test locally (npm run build, npm run preview)"
echo "   2. Push to GitHub (follow Phase 2 commands)"
echo "   3. Deploy to Vercel (visit their dashboard)"
echo "   4. Update content (edit portfolio.js)"
echo ""
echo "⏱️ Total time: ~40 minutes"
echo ""
echo "🎉 Result: Live portfolio on the internet!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Questions? Check NEXT_STEPS.md or DEPLOYMENT.md"
echo ""
echo "Happy deploying! 🚀"
