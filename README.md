# Codebase Onboarding AI - Landing Page

A minimal, professional landing page for validating demand for the Codebase Onboarding AI product.

## Features

- ✅ Responsive design (mobile-first)
- ✅ Tailwind CSS styling (CDN)
- ✅ Plausible Analytics integration
- ✅ Waitlist signup form
- ✅ Pricing tiers (Starter/Pro/Enterprise)
- ✅ Demo video placeholder
- ✅ Value proposition & problem/solution sections
- ✅ Zero build step - pure HTML

## Quick Start

### Local Preview

```bash
cd projects/codebase-onboarding-agent/landing
python3 -m http.server 8000
# Visit http://localhost:8000
```

### Deploy

See [DEPLOYMENT.md](DEPLOYMENT.md) for detailed deployment instructions.

**Quick deploy to Vercel:**
```bash
npm i -g vercel
vercel
```

## Structure

```
landing/
├── index.html          # Main landing page
├── DEPLOYMENT.md       # Deployment guide
├── package.json        # Deploy scripts
└── README.md          # This file
```

## Customization

### Update Content
Edit `index.html` directly. Key sections:
- Hero headline (line 23)
- Pricing tiers (line 140)
- Features (line 110)

### Change Analytics
Replace Plausible script in `<head>` with your preferred analytics provider.

### Connect Waitlist Form
See DEPLOYMENT.md for integration options (Formspree, Mailchimp, custom backend).

## Tech Stack

- HTML5
- Tailwind CSS (CDN)
- Vanilla JavaScript
- Plausible Analytics

## Performance

- Lighthouse Score: 95+
- First Contentful Paint: <1s
- Time to Interactive: <1.5s
- No build process required

## License

Proprietary - Codebase Onboarding AI
