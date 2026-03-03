#!/bin/bash

# Quick deployment script for codebase-onboarding.ai landing page
# Usage: ./deploy.sh [vercel|netlify|preview]

set -e

COMMAND=${1:-preview}

case $COMMAND in
  vercel)
    echo "🚀 Deploying to Vercel..."
    if ! command -v vercel &> /dev/null; then
      echo "Installing Vercel CLI..."
      npm i -g vercel
    fi
    vercel --prod
    echo "✅ Deployed to Vercel!"
    ;;
    
  netlify)
    echo "🚀 Deploying to Netlify..."
    if ! command -v netlify &> /dev/null; then
      echo "Installing Netlify CLI..."
      npm i -g netlify-cli
    fi
    netlify deploy --prod --dir=.
    echo "✅ Deployed to Netlify!"
    ;;
    
  preview)
    echo "👀 Starting local preview server..."
    echo "📍 Open http://localhost:8000 in your browser"
    echo "Press Ctrl+C to stop"
    if command -v python3 &> /dev/null; then
      python3 -m http.server 8000
    elif command -v python &> /dev/null; then
      python -m http.server 8000
    else
      echo "❌ Python not found. Install Python or use: npx serve ."
      exit 1
    fi
    ;;
    
  *)
    echo "Usage: ./deploy.sh [vercel|netlify|preview]"
    echo ""
    echo "Commands:"
    echo "  vercel   - Deploy to Vercel (production)"
    echo "  netlify  - Deploy to Netlify (production)"
    echo "  preview  - Start local preview server"
    exit 1
    ;;
esac
