# Source audit — Phase 1 (read-only)

Source: `mo-seoudi/Leasing`, branch `main`.

## Verified source files
- `src/pages/dashboard/DashboardPage.jsx`: executive dashboard with academic-year and school filters, revenue mix, school performance, monthly trends, provider contract health.
- `src/pages/reporting/CommercialReportingPage.jsx`: Reporting Centre with academic-year, school, stream, measure, and comparison-scenario filters; Actual vs Forecast/Budget; YoY/MoM; monthly breakdown; CSV export.
- `src/lib/commercialOverviewData.js`: paged Supabase retrieval from `financial_records`, excluding soft-deleted rows, joining `schools`, `revenue_streams`, `revenue_metrics`.
- `src/lib/commercialReportingData.js`: **requires full audit before implementing DAX**.

## Data fields verified
`id, academic_year, month, term, scenario, amount, school(code,name), stream(code,name), metric(code,name)`.

## Critical financial logic
The React dashboard maps metric codes `sales` and `revenue` to commercial revenue, `commission` to income, and `rental_fees` / `enrich_me_revenue` to **both**. This means naive sums of Sales and Commission will not match the source. Power BI measures must reproduce this mapping exactly and avoid double-counting in combined metrics.

## Initial report scope
1. Executive overview: academic year, school, revenue and income KPIs, monthly trend, revenue stream mix, school breakdown.
2. Reporting Centre: actual vs forecast/budget, prior-year comparisons, filters, export.
3. Additional stream pages after validation.

## Constraints
- No live database access or confidential exports during prototype.
- No secrets or financial data committed to this public repository.
- React source stays unchanged.
- This is an audit document, **not** yet a working PBIP report.

## Next engineering gate
Read `commercialReportingData.js` and remaining dashboard component; build deterministic synthetic fixture and expected-result tests; generate valid PBIP/PBIR/TMDL structure; open in Power BI Desktop and verify.
