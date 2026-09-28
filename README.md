# rclone-cloud-api

Scheduled rclone runner + temporary public API for Google Drive (`Cloud-to-all-things`).

## Features

- Runs every 4 hours (or manually)
- Starts `rclone rcd` (Remote Control API)
- Exposes it publicly using **Cloudflare Quick Tunnel** (no account / no login required)
- Public URL appears in the Actions log and job summary
- Secrets are stored only in GitHub Secrets (never in the repo)

## Secrets required

| Secret        | Description                     |
|---------------|---------------------------------|
| `RCLONE_CONF` | Full content of rclone.conf     |

## How to use the temporary public API

1. Go to **Actions** → latest run → open the job
2. Look in the job summary or the "Keep API alive" step for the URL  
   (looks like `https://xxxx.trycloudflare.com`)
3. Use Basic Auth:
   - Username: `admin`
   - Password: `rclone-api-2026`

Example:
```bash
curl -u admin:rclone-api-2026 https://xxxx.trycloudflare.com/core/version
```

The public URL is only alive while the GitHub Actions job is running (~45 minutes).
