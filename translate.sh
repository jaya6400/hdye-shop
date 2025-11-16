#!/bin/sh

echo "🌍 Starting Lingo.dev translations..."

# Set API key
npx lingo.dev@latest config set llm.googleApiKey $GOOGLE_API_KEY

# Translate to each language
echo "📝 Translating to Spanish..."
npx lingo.dev@latest translate messages/en.json --to es --output messages/es.json

echo "📝 Translating to French..."
npx lingo.dev@latest translate messages/en.json --to fr --output messages/fr.json

echo "📝 Translating to German..."
npx lingo.dev@latest translate messages/en.json --to de --output messages/de.json

echo "📝 Translating to Italian..."
npx lingo.dev@latest translate messages/en.json --to it --output messages/it.json

echo "✅ All translations complete!"