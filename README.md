# rclone-cloud-api

Public rclone Remote Control API for Google Drive.

## Deployed on Render (free tier)

- Sleeps when idle (only runs when needed)
- Wakes automatically on the first request
- Uses GitHub Secrets + Render environment variables for the token

## Auth

- Username: `admin`
- Password: `rclone-api-2026` (or the value set in Render env)

## GitHub Actions

Still available for temporary long runs (almost 6 hours).
