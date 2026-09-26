## Code Generation Agent – Build Stage Proposal

**Project:** Tutorial SemiScale Alpha (or SiliconStat)  
**Environment:** Dev  
**Proposal Status:** Reviewable Draft  
**Traceability:** All source changes and tests will reference requirements and epics from the approved artifacts.

---

### 1. Scope of Build Stage

This proposal covers the initial implementation of the core dashboard skeleton, data model, and interactive UI scaffolding. The focus is on traceable, reviewable source changes that enable:

- Data ingestion and processing for top 10 semiconductor manufacturers (stubbed/mock data for Dev)
- Interactive chart and data matrix components with time-series filter toggling (UI/UX scaffolding)
- Responsive, accessible single-page layout (desktop/tablet)
- Unit tests for all core modules and UI state transitions

---

### 2. Proposed Source Changes

#### A. Project Structure

```
/src
  /components
    Chart.tsx
    DataMatrix.tsx
    TimeIntervalToggle.tsx
    Layout.tsx
  /data
    manufacturers.mock.json
    dataService.ts
  /hooks
    useMarketData.ts
    useInterval.ts
  /styles
    tailwind.config.js
    globals.css
  App.tsx
  index.tsx
/tests
  Chart.test.tsx
  DataMatrix.test.tsx
  TimeIntervalToggle.test.tsx
  useMarketData.test.ts
  useInterval.test.ts
```

#### B. Key Implementation Details

**1. Data Ingestion and Processing (Epic 1, Feature 1.1)**
- `dataService.ts`: Loads manufacturer data (mocked for Dev), with error handling and refresh logic.
- `manufacturers.mock.json`: Contains sample data for the top 10 manufacturers.
- `useMarketData.ts`: React hook for fetching and updating market data, supports interval-based queries.

**2. Interactive Chart Visualization (Epic 1, Feature 1.2)**
- `Chart.tsx`: Renders a multi-series time-series chart (using Chart.js or similar), supports zoom/pan/tooltips.
- Chart updates reactively to interval and manufacturer selection.

**3. Data Matrix with Time-Series Filters (Epic 1, Feature 1.3)**
- `DataMatrix.tsx`: Tabular view of manufacturer performance, updates within 500ms of interval toggle.
- `TimeIntervalToggle.tsx`: UI for selecting among 8 intervals, with visual indication of selection.
- `useInterval.ts`: Hook for managing interval state and propagating changes.

**4. Responsive, Accessible Layout (Epic 2, Features 2.1 & 2.2)**
- `Layout.tsx` and `globals.css`: Implements responsive grid/flex layout, no horizontal scrolling, ARIA roles/labels.
- Uses Tailwind CSS for rapid prototyping and accessibility.

---

### 3. Unit Test Plan

- **Chart.test.tsx**: Renders with all 10 manufacturers, verifies tooltips, zoom/pan, and reactive updates.
- **DataMatrix.test.tsx**: Verifies correct data for each interval, update speed, and visual selection.
- **TimeIntervalToggle.test.tsx**: Ensures all 8 intervals are present, selection state is correct, and ARIA compliance.
- **useMarketData.test.ts**: Mocks data fetch, tests error handling and refresh logic.
- **useInterval.test.ts**: Tests state transitions and callback propagation.

---

### 4. Traceability Matrix

| Requirement/User Story           | Source Change(s)                                   | Unit Test(s)                |
|----------------------------------|----------------------------------------------------|-----------------------------|
| 1.1.1 (Data ingestion)           | dataService.ts, useMarketData.ts, manufacturers.mock.json | useMarketData.test.ts       |
| 1.2.1 (Chart visualization)      | Chart.tsx, useMarketData.ts                        | Chart.test.tsx              |
| 1.3.1 (Matrix & interval toggle) | DataMatrix.tsx, TimeIntervalToggle.tsx, useInterval.ts | DataMatrix.test.tsx, TimeIntervalToggle.test.tsx, useInterval.test.tsx |
| 2.1.1 (Responsive layout)        | Layout.tsx, globals.css, tailwind.config.js        | (Visual/manual, see guidance)|
| 2.2.1 (Accessibility)            | All UI components (ARIA, keyboard nav)             | TimeIntervalToggle.test.tsx (ARIA), others (manual/axe-core) |

---

### 5. Code Review Guidance

- **Traceability:** Confirm all source changes reference the mapped requirements and user stories.
- **Mock Data:** Ensure all data ingestion is stubbed/mocked for Dev; no production API calls.
- **Performance:** Data matrix updates within 500ms; verify with test timing.
- **Accessibility:** All interactive elements must have ARIA labels and keyboard navigation.
- **Responsiveness:** Test layout on desktop and tablet widths; no horizontal scroll.
- **Security:** No secrets, credentials, or external API keys in code or config.
- **Test Coverage:** All core logic and UI state transitions must have unit tests; accessibility and layout require manual/axe-core review.

---

### 6. Next Steps

- On approval, generate the initial source files and unit tests as outlined.
- All code will be submitted as a pull request for human review before merge.

---

**References:**  
- [Requirements summary](https://caldova37587778.sharepoint.com/sites/sdlc-tutorial-semiscale-alpha-or-siliconstat-5bbe3b7b/Shared%20Documents/SDLC%20Artifacts/Requirements/tutorial-semiscale-alpha-or-siliconstat-requirements.md)  
- Cost and time estimate artifact  
- Requirements Agent output

---

**Please review this proposal for completeness, traceability, and alignment with requirements.**  
**Indicate approval or request changes before code generation proceeds.**