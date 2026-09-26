# Tutorial SemiScale Alpha (or SiliconStat) — API

FastAPI service. Owns validation, authorization, and all database access.

| Path | Purpose |
| --- | --- |
| `/health` | Liveness probe |
| `/docs` | Swagger UI |
| `/openapi.json` | OpenAPI document |
| `/api/siliconstats` | SiliconStats collection (GET, POST) |
| `/api/siliconstats/{id}` | Single siliconstat (GET, PATCH, DELETE) |
