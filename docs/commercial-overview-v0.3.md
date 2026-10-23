# Commercial Overview v0.3

A PBIR report page prototype has been generated as a downloadable ZIP based on the user-confirmed working Power BI Desktop project and the v0.2 FinancialRecords model.

It contains **10 report visuals**: three slicers (Academic Year, School, Revenue Stream), three KPI cards (Actual Sales, Actual Commission, Sales vs Budget %), monthly Actual/Budget clustered columns, revenue-stream Sales bars, school Commission bars, and a monthly detail table.

The original native project files are preserved except the page display name; 10 visual.json definitions are added. The visual JSON parses and its field names match the model. **Desktop rendering is not yet validated**. Monthly category sort must be checked against MonthIndex.

The v0.3 ZIP is a conversation artifact, not the GitHub project root. Do not use the older root ComOps.pbip for this test.

Next gate: user opens the v0.3 ZIP and verifies charts render. If visuals fail, repair against a Desktop-saved visual.json example rather than inventing report metadata.
