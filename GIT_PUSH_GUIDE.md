# 🔐 How to Push Code to GitHub

Your code is ready to push! Follow one of these methods to authenticate with GitHub.

## ⚡ Quickest Method: GitHub CLI

### 1. Install GitHub CLI
Download from: https://cli.github.com

### 2. Authenticate
```bash
gh auth login
# Select: GitHub.com
# Select: HTTPS
# Select: Y (Authenticate with a web browser)
# Follow browser instructions
```

### 3. Push Code
```bash
cd f:/Projects/portfolio/ui
git push -u origin main
```

Done! ✅

---

## 🔑 Alternative: Personal Access Token (PAT)

### 1. Create Token
1. Go to: https://github.com/settings/tokens
2. Click: **Generate new token** (classic)
3. Add these scopes:
   - ☑️ repo (full control)
   - ☑️ workflow
4. Click: **Generate token**
5. **Copy the token immediately** (you won't see it again)

### 2. Push Using Token
```bash
cd f:/Projects/portfolio/ui
git push -u origin main
# When prompted for password, paste your token (not your GitHub password)
```

---

## 🔒 Best: SSH Keys

### 1. Generate SSH Key
```bash
ssh-keygen -t ed25519 -C "your-email@example.com"
# Press Enter to accept default location
# Create a passphrase (or leave empty)
```

### 2. Add SSH Key to GitHub
1. Copy key:
   ```bash
   type %USERPROFILE%\.ssh\id_ed25519.pub
   # Copy the output
   ```

2. Add to GitHub:
   - Go to: https://github.com/settings/ssh/new
   - Paste key
   - Click: **Add SSH key**

### 3. Update Remote URL
```bash
cd f:/Projects/portfolio/ui
git remote set-url origin git@github.com:Mohitya06/mohitya-portfolio.git
```

### 4. Push Code
```bash
git push -u origin main
```

---

## ✅ What Happens When You Push

```
$ git push -u origin main

Enumerating objects: 28, done.
Counting objects: 100% (28/28), done.
Delta compression using up to X threads
Compressing objects: 100% (20/20), done.
Writing objects: 100% (28/28), X KiB | X KiB/s, done.
Total 28 (delta 0), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (0/0), done.
remote: 
remote: Create a pull request for 'main' on GitHub by visiting:
remote:      https://github.com/Mohitya06/mohitya-portfolio/pull/new/main
remote:
To github.com:Mohitya06/mohitya-portfolio.git
 * [new branch]      main -> main
Branch 'main' set up to track remote branch 'main' from 'origin'.
```

✅ Your code is now on GitHub!

---

## 🎯 Which Method to Choose?

**GitHub CLI** (Recommended)
- ✅ Easiest
- ✅ Secure
- ✅ One-time setup
- Best for: Most users

**SSH Keys** (Most Secure)
- ✅ Very secure
- ✅ No passwords needed
- ✅ Professional approach
- Best for: Advanced users

**Personal Access Token** (Quick)
- ✅ Simple
- ✅ Works immediately
- ⚠️ Token acts like password
- Best for: Quick setup

---

## 🐛 Troubleshooting

### "fatal: Authentication failed"

**Solution**: Use GitHub CLI - it handles auth automatically
```bash
gh auth login
git push -u origin main
```

### "Permission denied (publickey)"

**Solution**: Check SSH key is added
```bash
ssh -T git@github.com
```

Should output:
```
Hi Mohitya06! You've successfully authenticated, but GitHub does not provide shell access.
```

### "Repository not found"

Check:
1. Repository exists: https://github.com/Mohitya06/mohitya-portfolio
2. URL is correct in remote:
   ```bash
   git remote -v
   # Should show: https://github.com/Mohitya06/mohitya-portfolio.git
   ```

---

## ✨ After Successfully Pushing

Your code is now on GitHub! Next steps:

1. ✅ Verify on GitHub: https://github.com/Mohitya06/mohitya-portfolio
2. ✅ Deploy to GitHub Pages: See `GITHUB_PAGES_DEPLOY.md`
3. ✅ Or deploy to Vercel: See `DEPLOYMENT.md`

---

## 📋 Quick Reference

```bash
# Check what's ready to push
git status

# See all commits
git log

# Check remote URL
git remote -v

# Push code
git push -u origin main
```

---

**Recommended**: Use GitHub CLI for easiest setup!

Download: https://cli.github.com

Then:
```bash
gh auth login
git push -u origin main
```

That's it! 🎉

Last Updated: 2026-11-20
