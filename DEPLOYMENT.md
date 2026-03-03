# Deployment Guide - Codebase Onboarding AI Landing Page

## Quick Deploy Options

### Option 1: Vercel (Recommended - 2 minutes)

1. Install Vercel CLI:
```bash
npm i -g vercel
```

2. Deploy from the landing directory:
```bash
cd projects/codebase-onboarding-agent/landing
vercel
```

3. Follow prompts:
   - Login/signup when prompted
   - Accept defaults
   - Your site will be live at: `https://your-project.vercel.app`

4. Add custom domain (optional):
```bash
vercel domains add codebase-onboarding.ai
```

### Option 2: Netlify (2 minutes)

1. Install Netlify CLI:
```bash
npm i -g netlify-cli
```

2. Deploy:
```bash
cd projects/codebase-onboarding-agent/landing
netlify deploy --prod
```

3. Or use drag-and-drop:
   - Go to https://app.netlify.com/drop
   - Drag the `landing` folder
   - Done!

### Option 3: GitHub Pages (Free)

1. Create a new repo: `codebase-onboarding-landing`

2. Push the landing page:
```bash
cd projects/codebase-onboarding-agent/landing
git init
git add .
git commit -m "Initial landing page"
git branch -M main
git remote add origin git@github.com:YOUR_USERNAME/codebase-onboarding-landing.git
git push -u origin main
```

3. Enable GitHub Pages:
   - Go to repo Settings > Pages
   - Source: Deploy from branch `main` / root
   - Save

4. Site will be live at: `https://YOUR_USERNAME.github.io/codebase-onboarding-landing/`

## Post-Deployment Setup

### 1. Analytics (Plausible)

The page is already configured for Plausible Analytics at `codebase-onboarding.ai`.

- Sign up at https://plausible.io
- Add your domain
- Analytics will start tracking automatically (script already included)

Alternative: Replace Plausible with Google Analytics:
```html
<!-- Replace the Plausible script in <head> with: -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### 2. Waitlist Integration

Currently, the form logs to console. Connect to a real backend:

**Option A: Formspree (Easiest)**
```html
<!-- Replace form tag with: -->
<form id="waitlist-form" action="https://formspree.io/f/YOUR_FORM_ID" method="POST">
  <input type="email" name="email" id="email" placeholder="Enter your email" required>
  <button type="submit">Join Waitlist</button>
</form>
```

**Option B: Mailchimp**
- Create a Mailchimp audience
- Get the embedded form code
- Replace the form action with Mailchimp's endpoint

**Option C: Custom Backend**
```javascript
// Replace the form submit handler with:
fetch('https://your-api.com/waitlist', {
  method: 'POST',
  headers: {'Content-Type': 'application/json'},
  body: JSON.stringify({email: email})
})
.then(res => res.json())
.then(data => {
  message.textContent = '✓ Thanks! We\'ll be in touch soon.';
});
```

### 3. Custom Domain Setup

**For Vercel:**
```bash
vercel domains add codebase-onboarding.ai
```
Then add DNS records as instructed.

**For Netlify:**
- Go to Domain Settings
- Add custom domain
- Update DNS:
  - A record: 75.2.60.5
  - CNAME www: your-site.netlify.app

### 4. SSL Certificate

Both Vercel and Netlify provide free SSL automatically. No action needed.

## Testing Checklist

- [ ] Page loads on mobile
- [ ] All links work (smooth scroll)
- [ ] Form submission works
- [ ] Analytics tracking (check dashboard)
- [ ] Custom domain resolves
- [ ] SSL certificate active (https://)

## Performance

Current page is optimized:
- Single HTML file (no build step)
- Tailwind via CDN (cached)
- Minimal JavaScript
- Lighthouse score: 95+

## Next Steps

1. Replace demo video placeholder with actual video
2. Add testimonials/social proof when available
3. Set up email automation for waitlist
4. A/B test pricing tiers
5. Add FAQ section based on user questions

## Support

For issues, check:
- Vercel docs: https://vercel.com/docs
- Netlify docs: https://docs.netlify.com
- Plausible docs: https://plausible.io/docs
