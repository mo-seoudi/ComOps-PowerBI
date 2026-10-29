# ComOps Power BI — code-first report v2

## Status
Code-generated PBIP with four native report pages, dimensions, DAX measures, and visual definitions. **Not validated in Power BI Desktop.**

## Important privacy decision
This GitHub repository is PUBLIC. The supplied school financial workbook has deliberately **not** been committed or embedded. The current fact table contains clearly synthetic demonstration values and only four example school codes. Do not interpret these as actual commercial performance.

## Open
Download this branch as a ZIP, extract all files, and open `ComOps.pbip` with an up-to-date Power BI Desktop. If it fails to load, send the first error screenshot. No manual report construction is required.

## Next steps
1. Validate PBIP/PBIR/TMDL compatibility in Desktop.
2. Replace demo data with the real workbook through a secure local or private source.
3. Confirm Sep–Aug sort by `DimMonth[MonthOrder]` and zero-month behavior.
4. Refine visuals, navigation and per-stream filtering.

Do not merge into main until Desktop validation is successful.
