# ⚙️ Setup Instructions

Quick setup guide to get your portfolio running.

## 🎯 Quick Start (3 Steps)

### Step 1: Clone Repository
```bash
git clone https://github.com/Mohitya06/mohitya-portfolio.git
cd mohitya-portfolio
```

### Step 2: Install & Run
```bash
npm install
npm run dev
```

### Step 3: Open in Browser
Visit: `http://localhost:5173`

---

## 📝 Customizing Your Portfolio

### 1. Update Personal Information

**File:** `src/data/portfolio.js`

```javascript
export const portfolio = {
  name: "Your Name",
  title: "Your Title",
  bio: "Your bio...",
  email: "your.email@example.com",
  // ... more fields
}
```

### 2. Change Profile Image

Replace the image at:
```
src/data/profile-image.jpg
```

With your own image (recommended size: 300x300px, format: JPG/PNG)

### 3. Update Skills

Edit skills section in `src/data/portfolio.js`:
```javascript
skills: [
  { category: "Frontend", items: ["React", "Vite", ...] },
  { category: "Backend", items: ["Node.js", ...] },
  // ...
]
```

### 4. Add Your Projects

```javascript
projects: [
  {
    title: "Project Name",
    description: "Project description",
    technologies: ["React", "Node.js"],
    link: "https://project-url.com",
    image: "project-image.jpg"
  },
  // ...
]
```

### 5. Update Contact Info

```javascript
contact: {
  email: "your.email@example.com",
  phone: "+91 XXXXXXXXXX",
  location: "Your City, Country",
  social: {
    github: "https://github.com/yourprofile",
    linkedin: "https://linkedin.com/in/yourprofile",
    twitter: "https://twitter.com/yourhandle"
  }
}
```

---

## 🎨 Customize Styling

### Change Color Scheme

**File:** `tailwind.config.js`

```javascript
theme: {
  colors: {
    primary: '#your-color',
    secondary: '#your-color',
    // ...
  }
}
```

### Modify Fonts

**File:** `index.html`

```html
<!-- Change Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=YourFont:wght@300;400;700&display=swap" rel="stylesheet" />
```

Then update in `index.css` or Tailwind config.

### Dark/Light Mode

The portfolio includes dark mode. Toggle in `App.jsx`:

```javascript
const [isDark, setIsDark] = useState(false);
```

---

## 📱 Sections to Edit

### Hero Section
**File:** `src/sections/Hero.jsx`
- Main headline
- Tagline
- Call-to-action buttons
- Background effects

### About Section
**File:** `src/sections/About.jsx`
- Your bio/description
- Key highlights
- Personal story

### Skills Section
**File:** `src/sections/Skills.jsx`
- Add/remove skill categories
- Update skill names
- Change proficiency levels

### Experience Section
**File:** `src/sections/Experience.jsx`
- Add work experience
- Education timeline
- Certifications

### Projects Section
**File:** `src/sections/Projects.jsx`
- Showcase your best work
- Add live links
- Include screenshots

### Contact Section
**File:** `src/sections/Contact.jsx`
- Contact form settings
- Email configuration
- Social links

---

## 🚀 Building for Production

```bash
npm run build
```

This creates an optimized `dist` folder ready for deployment.

### Preview Production Build
```bash
npm run preview
```

Visit: `http://localhost:4173`

---

## 📦 Available Dependencies

### React & Vite
- `react`: UI library
- `react-dom`: React DOM renderer
- `vite`: Build tool

### Styling
- `tailwindcss`: Utility-first CSS
- `postcss`: CSS post-processor
- `autoprefixer`: CSS vendor prefixes

### Animations
- `framer-motion`: React animation library

### Icons
- `react-icons`: Icon library

---

## ✅ Common Tasks

### Add a New Section
1. Create component: `src/sections/NewSection.jsx`
2. Import in `App.jsx`
3. Add to JSX
4. Style with Tailwind

### Change Colors
1. Update `tailwind.config.js`
2. Use color names in components
3. Or use inline Tailwind classes

### Add More Projects
1. Add to `portfolio.js` data
2. Component displays them automatically
3. Update with your projects

### Deploy to Vercel
1. Push to GitHub
2. Import repository in Vercel
3. Auto-deploy on push

### Add Custom Domain
1. Buy domain from registrar
2. Add DNS records
3. Configure in deployment platform

---

## 🧪 Testing

### Local Testing
```bash
npm run dev
```

### Build Testing
```bash
npm run build
npm run preview
```

### Mobile Testing
- Chrome DevTools (F12 → Ctrl+Shift+M)
- Test on real device
- Check responsiveness

---

## 📚 Project Structure

```
portfolio/
├── src/
│   ├── components/          # Reusable components
│   ├── sections/            # Page sections
│   ├── data/
│   │   └── portfolio.js      # YOUR DATA HERE
│   ├── App.jsx              # Main component
│   ├── main.jsx             # Entry point
│   └── index.css            # Global styles
├── dist/                    # Production build (generated)
├── index.html               # HTML template
├── vite.config.js           # Vite configuration
├── tailwind.config.js       # Tailwind configuration
├── package.json             # Dependencies
└── README.md                # Project docs
```

---

## 🐛 Troubleshooting

### Port Already in Use
```bash
npm run dev -- --port 3000
```

### Build Fails
```bash
rm -rf node_modules
npm install
npm run build
```

### Images Not Loading
- Check image path: `src/data/` should have images
- Use relative paths in code
- Ensure image extensions are correct

### Styles Not Applying
- Check Tailwind class names (no typos)
- Rebuild after Tailwind config changes
- Clear browser cache

---

## 📞 Support

- Check documentation: [DEPLOYMENT.md](./DEPLOYMENT.md)
- Review code comments
- Test locally with `npm run dev`

---

**Ready to customize? Edit `src/data/portfolio.js` to get started!**

Last Updated: 2026-11-20
