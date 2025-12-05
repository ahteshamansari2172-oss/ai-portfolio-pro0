#!/bin/bash

# Backend Environment Variables Setup Script
# Generated from Vly for Git Sync
# Run this script to set up your Convex backend environment variables

echo 'Setting up Convex backend environment variables...'

# Check if Convex CLI is installed
if ! command -v npx &> /dev/null; then
    echo 'Error: npx is not installed. Please install Node.js and npm first.'
    exit 1
fi

echo "Setting JWKS..."
npx convex env set "JWKS" -- "{\"keys\":[{\"use\":\"sig\",\"kty\":\"RSA\",\"n\":\"4aP4LfrsiAx0oB6x_MBYzb5vM-5CyST5cSFdshhUkrVgmQGO7TseoPNCo9DLxU-LxPasMRScUr8jtdpsgjMi3INBR4Nb3sarWqXueT49NwHSg6H8y-s8SxfQ9qV01Yt1yL6ZQkAdMoFiNtdhXla97SvyfxAjv9eigBIsOa7DZmEM-hNjajfmlsUXGOIlKWOYd-kmvMPvjeFWcRBm8oVz_wlEm8l6O0EFw5_zTacC6LbuGMpneQp75xy331lMHmQHxlGTgC1kX54a_-nSKGMYDRixYyXz2ZwLKncX7UqnzU7B67-9jheztT68CaqNJn3hi7reE9mbHvlYFuAYN3Uytw\",\"e\":\"AQAB\"}]}"

echo "Setting JWT_PRIVATE_KEY..."
npx convex env set "JWT_PRIVATE_KEY" -- "-----BEGIN PRIVATE KEY----- MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDho/gt+uyIDHSg HrH8wFjNvm8z7kLJJPlxIV2yGFSStWCZAY7tOx6g80Kj0MvFT4vE9qwxFJxSvyO1 2myCMyLcg0FHg1vexqtape55Pj03AdKDofzL6zxLF9D2pXTVi3XIvplCQB0ygWI2 12FeVr3tK/J/ECO/16KAEiw5rsNmYQz6E2NqN+aWxRcY4iUpY5h36Sa8w++N4VZx EGbyhXP/CUSbyXo7QQXDn/NNpwLotu4Yymd5CnvnHLffWUweZAfGUZOALWRfnhr/ 6dIoYxgNGLFjJfPZnAsqdxftSqfNTsHrv72OF7O1PrwJqo0mfeGLut4T2Zse+VgW 4Bg3dTK3AgMBAAECggEAJOQlIIdlAr1emAtMuHFOU50uG0R6QN69tcRpyEN4GGB1 Qa7iimDfGhuLqrLpjgH6bSKTdpbTFChSE1p54TOxIHKJSsLsU1kSDQkSG1qUsZin rYPfjAuS2Qg0zw6wMnXRtReMgStwWqCSyTqfncf613sW87VU0vnThLLz7h5nriYj VkHwtqAKBmVrY96KwEuFhPrnFM5FLVjuFRpOGXz6UleLn1YbRd0yIkExQedD04OG 4vGgZtgsNFJv62aiXk+hoZf4yFeLYcCmcxBKIazo1T9sbej0eeCNZFXPdxJIFosJ 0lsdt+6QvpZXqvbR5Dzp0FCLReuZ3Lse1O3YTwNNkQKBgQD2jlD+W6AkmdE3KpP5 2MLJVccBCF7jYbUJmEzsndczYdGyNoD6UQ5ER/PXYkcLiAhKIeXxf2jIIJi+NCWv DylFF1fU48ehXMfURiHHFWVUOuMeXTgH1DXoQKpCRkvxH1Fhm/JPa9YneeAmOLEO uRMHlpd6jBrTiWysMljFJcSwXwKBgQDqSI9pFMljpzHOpnbp5zw0lu4V8W4B4mSO EgXYInt2jdV/QtyXCvFQ/XHG7ylCvMzgu9f7KQsEEFNfqp1vf86zE6ozMfO1jY08 AVHMYhJrTGjOUIKda9iYZEOtRzH1IwhJOQ8bWQh0SerfFb9MCdFACqHbjR+2r04i Ibkb9Em8qQKBgQCx3iOiDBmwreLXyHiuQujq9F23agGCSieff2bnQEtSvxvXVCih 7L29Fqdb14NnV0Cbsm6/VOoTjiiC9v3El8xvEpMDezu2NkfW5K1TgSTzqfPVIOze AQLOxW/OlgYNMkm0gBtDnokFO5AwIq/g7jVDQSmQd+iWeMqUQ1H1D/UgQwKBgCeQ Bz+sdfGxGzUVYUFQfhc3YY8tDPGehHKFUp1T/VtgyivKY6vR+jw+AEeivWn6rfJJ ZkiQfr657wpZqmpYv9P3vycUCV6gP7hhVKnZ6dhat9wXNmdU/eeGDvOk8Se/Obf7 vbRVjZrtnI79gidaBQ72fKyxoShdZClZXoP89bK5AoGBAM11e7lvCKmAQeJP8xf0 K9kN9ucbWRrZcjrSCmaEFIRgiKGaL0G3AnOwDVu5UgUKu3AUb4uEOyfG1JFHO6nK /aHf7NAOxIoNKpmSeBsXFc+oTBXCN6UPX5nO2C+i1Fh9bAh5Jgph668vb4K8MAiG vgBtwR52Ap7kIJabXmUNdd6a -----END PRIVATE KEY-----"

echo "Setting SITE_URL..."
npx convex env set "SITE_URL" -- "http://localhost:5173"

echo "Setting VLY_APP_NAME..."
npx convex env set "VLY_APP_NAME" -- "AI Portfolio Pro"

echo "✅ All backend environment variables have been set!"
echo "You can now run: pnpm dev:backend"
