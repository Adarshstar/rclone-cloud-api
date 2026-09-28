# rclone-cloud-api

Scheduled rclone runner for Google Drive (Cloud-to-all-things remote).

- Runs every 4 hours via GitHub Actions
- Uses GitHub Secrets for the rclone config (token is never stored in the repo)
- Public repository

## Secrets required

| Secret name     | Description                          |
|-----------------|--------------------------------------|
| `RCLONE_CONF`   | Full content of `rclone.conf`        |

## Manual trigger

Go to **Actions** → **Rclone every 4 hours** → **Run workflow**
