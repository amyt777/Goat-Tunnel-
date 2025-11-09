#!/bin/bash
set -e
echo "📦 Unzipping project..."
unzip GOAT_Tunnel_Pro_Lite.zip -d goat_tunnel_pro
cd goat_tunnel_pro
echo "⚙️ Getting packages..."
flutter pub get
echo "🏗️ Building APK..."
flutter build apk --release
cp build/app/outputs/flutter-apk/app-release.apk /app/
echo "✅ Build complete: /app/app-release.apk"
