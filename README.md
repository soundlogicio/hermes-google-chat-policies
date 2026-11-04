# Hermes Google Chat policies

Public support and policy pages for the privately operated Hermes Google Chat app used by SoundLogic IO / Iovanne Music Academy.

## Live pages

After GitHub Pages is enabled, these are the URLs to enter in the Google Workspace Marketplace listing:

- Terms of Service: <https://soundlogicio.github.io/hermes-google-chat-policies/terms/>
- Privacy Policy: <https://soundlogicio.github.io/hermes-google-chat-policies/privacy/>
- Support: <https://soundlogicio.github.io/hermes-google-chat-policies/support/>
- Admin information: <https://soundlogicio.github.io/hermes-google-chat-policies/admin/>

The site is intentionally static. It has no backend, analytics, cookies, tracking scripts, or credentials.

## Local validation

```bash
bash scripts/check-site.sh
```

## Deployment

`.github/workflows/pages.yml` deploys the repository through GitHub Pages whenever `main` changes. The repository must have Pages configured to use **GitHub Actions**. The workflow publishes the repository root as the site artifact.

## Scope and accuracy

These pages describe the current internal Hermes deployment: Google Chat events are delivered through Google Workspace APIs and Pub/Sub to an operator-controlled Hermes host, which uses the configured model endpoint to decide whether and how to respond. Retention and memory behavior remain deployment-configurable and are not assigned a fixed period here.

The policy text is operational documentation, not legal advice. Review it before relying on it for legal or regulatory purposes.
