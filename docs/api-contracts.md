# API contracts — Tutorial SemiScale Alpha (or SiliconStat)

The OpenAPI document is the authoritative contract: Swagger UI at `/docs`, raw document at `/openapi.json`. This table is the summary.

| Method | Path | Purpose | Response |
| --- | --- | --- | --- |
| `GET` | `/health` | Liveness probe used by the deploy pipeline | `{"status": "ok"}` |
| `GET` | `/api/siliconstats` | List siliconstats; `?status=` filters | `SiliconStat[]` |
| `POST` | `/api/siliconstats` | Create a siliconstat | `201` + `SiliconStat` |
| `GET` | `/api/siliconstats/{id}` | Fetch one siliconstat | `SiliconStat` or `404` |
| `PATCH` | `/api/siliconstats/{id}` | Partial update | `SiliconStat` or `404` |
| `DELETE` | `/api/siliconstats/{id}` | Remove a siliconstat | `204` or `404` |

## `SiliconStat`

| Field | Type | Notes |
| --- | --- | --- |
| `id` | integer | Server assigned |
| `title` | string | Required, 1–400 characters |
| `reference` | string | Optional, up to 200 characters |
| `status` | enum | `new`, `in-progress`, `complete` |
| `priority` | enum | `low`, `normal`, `high` |
