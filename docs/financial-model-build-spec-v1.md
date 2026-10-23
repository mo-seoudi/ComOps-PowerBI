# Commercial financial model — build specification v1

## Dataset grain
One row per School × Revenue Stream × Revenue Metric × Academic Year × Month × Scenario, optionally Supplier/Contract where available.

Fields: SchoolCode, SchoolName, StreamCode, MetricCode, AcademicYear, Month, MonthIndex, Scenario, Amount. Academic year starts September (Sep=1, Aug=12). Preserve AY2025-26 formatting.

## Metric role
Sales/revenue → Sales; commission → Commission. Rental fees and EnrichME revenue are mapped to both reporting roles in the React source, but must not be added twice into a combined financial amount. Expose Sales and Commission as separate measures.

## Core DAX measures (design; not yet installed)
```dax
Amount = SUM ( FinancialRecords[Amount] )
Actual Amount = CALCULATE ( [Amount], FinancialRecords[Scenario] = "Actual" )
Budget Amount = CALCULATE ( [Amount], FinancialRecords[Scenario] = "Budget" )
Forecast Amount = CALCULATE ( [Amount], FinancialRecords[Scenario] = "Forecast" )
Budget Variance = [Actual Amount] - [Budget Amount]
Budget Variance % = DIVIDE ( [Budget Variance], [Budget Amount] )
Forecast Variance = [Actual Amount] - [Forecast Amount]
Forecast Variance % = DIVIDE ( [Forecast Variance], [Forecast Amount] )
```

## Initial report
Commercial Overview: academic-year, school, stream and scenario slicers; Sales and Commission KPI cards; monthly chart with Sep–Aug sorting; comparison table. Synthetic-only test data.

## Gate
This is a specification, not an imported semantic model. Only add TMDL to the verified native project and test it before building report visuals.
