# ComOps Power BI

Power BI reporting project based on the original `main` branch of [mo-seoudi/Leasing](https://github.com/mo-seoudi/Leasing).

## Development approach
- Power BI Project (PBIP) with source-controlled report and semantic-model definitions.
- Reproduce the original Commercial Operations reporting experience, validating all business rules against source code.
- Begin with Commercial Overview, then revenue-stream reports.
- Use synthetic data during development. Never commit confidential school financial data, credentials, access tokens, or connection secrets.
- Keep the source React repository unchanged.
- Validate generated PBIP/PBIR/TMDL files in Power BI Desktop before treating the report as usable.
- Publish only to an approved corporate workspace, subject to IT/security and licensing approvals.

## Status
Repository initialized. Source audit and PBIP report generation pending.

## Source
https://github.com/mo-seoudi/Leasing/tree/main
