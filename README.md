# rclone-cloud-api

Long-running public rclone API for Google Drive (`Cloud-to-all-things`).

## Current setup (upgraded)

- Each run stays online for **~5 hours 50 minutes** (almost the maximum GitHub allows)
- New run starts every **6 hours**
- Public URL via Cloudflare Quick Tunnel (no account needed)
- Secrets stay private in GitHub Secrets

## How to use

1. Go to **Actions** → latest run
2. Open the job summary → copy the `https://xxxx.trycloudflare.com` URL
3. Use Basic Auth:
   - Username: `admin`
   - Password: `rclone-api-2026`

Example:
```bash
curl -u admin:rclone-api-2026 https://xxxx.trycloudflare.com/core/version
```
