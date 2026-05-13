# bio-utils

Dockerised bioinformatics utilities stored at `ghcr.io/gregoryverghese`.

## Tools

| Tool | Version | Description |
|------|---------|-------------|
| gdc-client | 2.3 | GDC Data Transfer Tool for downloading TCGA/GDC data |

## gdc-client

Docker image for the [NCI GDC client](https://github.com/NCI-GDC/gdc-client), built for **arm64**.
Installed from source since no official arm64 binary is distributed.

```bash
docker pull ghcr.io/gregoryverghese/gdc-client:1.0.0

docker run --rm \
    -v /path/to/manifest:/manifest \
    -v /path/to/output:/output \
    ghcr.io/gregoryverghese/gdc-client:1.0.0 \
    download -m /manifest/manifest.txt -d /output
```
