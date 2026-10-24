# Native-foundation rebuild (isolated branch)

## Baseline and provenance
The user created **ComOps-Base.pbip** with Power BI Desktop (October 2026). The complete native project ZIP supplied in conversation was reduced only by excluding the machine-local `.pbi` cache and settings folders. It contains **15 files** and was opened successfully by the user in Power BI Desktop.

**Important:** This branch is a staging branch; its inherited root `ComOps.pbip` is still the older unvalidated generated project. Do **not** treat that root project as working. The verified native baseline has been delivered as a byte-for-byte-preserved ZIP artifact in the conversation, not committed here. In particular, the native `StaticResources/SharedResources/BaseThemes/Fluent2-CY26SU10.json` (99,783 bytes) must be preserved rather than approximated.

## Rebuild rules
1. Replace the inherited root project with the complete native Power BI Desktop-generated project as a single atomic change. Do not manually reconstruct report metadata or theme resources.
2. First verify **no-change round trip**: extracted native project opens, closes and reopens.
3. Add one synthetic `FinancialRecords` table in TMDL and validate independently. Use the existing synthetic CSV only as source material, never real company data.
4. Add DAX measures only after the table validates; use Sales/Commission mapping and September–August academic years from the React source audit.
5. Add one report visual at a time using valid Power BI-generated PBIR examples.
6. Keep `mo-seoudi/Leasing` unchanged. Do not merge into `main` until Desktop confirms the rebuilt project opens.

## Validation status
- Native baseline ZIP: **user confirmed opens**.
- Current GitHub root project: **user confirmed fails to load**.
- Rebuilt GitHub project: **not yet published/validated**.
- Financial table, measures, visuals: **not yet validated in Desktop**.

This document explicitly separates working baseline evidence from untested development work.

## 2026-10-25 verified snapshot status

The user confirmed that the complete **ComOps-Base** PBIP v0.4.1 package opens in Power BI Desktop and renders both Commercial Overview and Catering Dashboard. Later v0.5 formatting changes are **not validated** and should not replace v0.4.1. The repository root still contains the earlier broken ComOps project and must not be used for testing.

A reproducible v0.4.1 ZIP was assembled with SHA-256 file manifest and accompanying baseline documentation. **It is a conversation artifact, not yet uploaded to GitHub**. The available GitHub connector only supports UTF-8 text file creation and cannot directly ingest this local ZIP or its binary/large theme resource. A full import is therefore still pending; do not claim this branch is working.
