# Clean start v3 — opening test

This branch starts from `main`, **not** the failed `code-first-report-v2` branch.

## Baseline test
Download the complete branch ZIP, extract it, and open `ComOps.pbip` with Power BI Desktop. This is an intentionally empty project: no synthetic tables, no relationships, no generated visual definitions, and no confidential financial workbook.

**Expected result:** Power BI Desktop opens a blank Commercial Overview page. This has NOT been verified in Power BI Desktop by the author.

## Gate before further development
Do not add a semantic model or visuals until the baseline opens. After confirmation, introduce one simple calculated table, then one measure, then a native visual, testing each stage. Build the full report only after these gates pass.

## Data security
The repo is public. Do not commit real school financial data or connection credentials.
