#!/bin/bash

echo "🚀 Building Hassan Coffee APK..."

# Step 1: Create basic web assets
echo "📁 Creating web assets..."
mkdir -p out

# Step 2: Sync with Capacitor
echo "🔄 Syncing with Capacitor..."
npx cap sync

# Step 3: Build APK
echo "🔨 Building APK..."
cd android
./gradlew assembleDebug

# Step 4: Copy APK to root directory
echo "📦 Copying APK..."
cp app/build/outputs/apk/debug/app-debug.apk ../hassan-coffee.apk

echo "✅ APK built successfully!"
echo "📱 APK location: hassan-coffee.apk"
