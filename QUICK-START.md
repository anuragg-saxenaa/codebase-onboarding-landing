# Landing Page Deployment - Quick Reference

## 🚀 Deploy Now (Choose One)

### Vercel (Fastest - 60 seconds)
```bash
cd projects/codebase-onboarding-agent/landing
npx vercel --prod
```

### Netlify (Drag & Drop - 30 seconds)
1. Go to https://app.netlify.com/drop
2. Drag the `landing` folder
3. Done!

### GitHub Pages (Free Forever)
```bash
cd projects/codebase-onboarding-agent/landing
git init
git add .
git commit -m "Launch landing page"
gh repo create codebase-onboarding-landing --public --source=. --push
```
Then enable Pages in repo settings.

## 📊 What's Included

✅ **Responsive Design** - Mobile-first, looks great everywhere
✅ **Plausible Analytics** - Privacy-friendly tracking ready
✅ **Waitlist Form** - Captures emails (needs backend hookup)
✅ **3 Pricing Tiers** - Starter (free), Pro ($99), Enterprise (custom)
✅ **Demo Section** - Video placeholder ready
✅ **SEO Optimized** - Meta tags, semantic HTML
✅ **Fast Load** - Single HTML file, Tailwind CDN

## 🔧 Next Steps After Deploy

1. **Connect Waitlist Form**
   - Option A: Formspree (5 min) - https://formspree.io
   - Option B: Mailchimp (10 min) - https://mailchimp.com
   - Option C: Custom API endpoint

2. **Setup Analytics**
   - Sign up at https://plausible.io
   - Add domain: codebase-onboarding.ai
   - Already configured in HTML!

3. **Add Custom Domain**
   ```bash
   vercel domains add codebase-onboarding.ai
   ```
   Update DNS:
   - A record → Vercel IP
   - CNAME www → your-site.vercel.app

4. **Replace Demo Video**
   - Record a 2-3 min product demo
   - Upload to YouTube/Vimeo
   - Replace placeholder in index.html (line 95)

## 📁 Files Created

```
landing/
├── index.html              # Main page (15KB)
├── vercel.json            # Vercel config
├── _redirects             # Netlify config
├── package.json           # Deploy scripts
├── DEPLOYMENT.md          # Full deployment guide
├── README.md              # Project overview
└── QUICK-START.md         # This file
```

## 🎯 Performance Targets

- Lighthouse Score: 95+
- Load Time: <1.5s
- Mobile Friendly: Yes
- SEO Score: 90+

## 💡 Tips

- Test on mobile before announcing
- A/B test pricing ($99 vs $79 vs $149)
- Add social proof when you get first users
- Monitor analytics daily for first week
- Respond to waitlist signups within 24h

## 🐛 Troubleshooting

**Form not submitting?**
- Check browser console for errors
- Verify form action URL is correct

**Analytics not tracking?**
- Verify domain in Plausible dashboard
- Check ad blockers aren't blocking script

**Page not loading?**
- Clear browser cache
- Check deployment logs
- Verify DNS propagation (can take 24h)

## 📞 Support

- Vercel: https://vercel.com/support
- Netlify: https://docs.netlify.com
- Plausible: https://plausible.io/docs

---

**Ready to launch?** Pick a deployment method above and ship it! 🚢
