# Delivery plan — Tutorial SemiScale Alpha (or SiliconStat)

Sprints are two weeks. Each sprint closes with a demo and an approval gate.

| Sprint | Focus | Exit criteria |
| --- | --- | --- |
| Sprint 1 | Foundation: repo, pipelines, schema | CI green, API deployed |
| Sprint 2 | Core scope | Approved user stories delivered |
| Sprint 3 | Hardening and release | Tests pass, release gate approved |

## Approved scope

- Data ingestion and processing for top 10 semiconductor manufacturers (stubbed/mock data for Dev)
- Interactive chart and data matrix components with time-series filter toggling (UI/UX scaffolding)
- Responsive, accessible single-page layout (desktop/tablet)
- Unit tests for all core modules and UI state transitions
- `dataService.ts`: Loads manufacturer data (mocked for Dev), with error handling and refresh logic.
- `manufacturers.mock.json`: Contains sample data for the top 10 manufacturers.
- `useMarketData.ts`: React hook for fetching and updating market data, supports interval-based queries.
- `Chart.tsx`: Renders a multi-series time-series chart (using Chart.js or similar), supports zoom/pan/tooltips.
- Chart updates reactively to interval and manufacturer selection.
- `DataMatrix.tsx`: Tabular view of manufacturer performance, updates within 500ms of interval toggle.
- `TimeIntervalToggle.tsx`: UI for selecting among 8 intervals, with visual indication of selection.
- `useInterval.ts`: Hook for managing interval state and propagating changes.
