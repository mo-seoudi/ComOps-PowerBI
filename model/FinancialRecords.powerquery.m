let
    Source = Csv.Document(
        File.Contents("REPLACE_WITH_LOCAL_CSV_PATH"),
        [Delimiter = ",", Columns = 12, Encoding = 65001, QuoteStyle = QuoteStyle.Csv]
    ),
    Headers = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
    Types = Table.TransformColumnTypes(Headers, {
        {"record_id", Int64.Type},
        {"academic_year", type text},
        {"month", type date},
        {"term", type text},
        {"scenario", type text},
        {"amount", type number},
        {"school_code", type text},
        {"school_name", type text},
        {"stream_code", type text},
        {"stream_name", type text},
        {"metric_code", type text},
        {"metric_name", type text}
    }),
    AcademicMonthOrder = Table.AddColumn(Types, "academic_month_order",
        each if Date.Month([month]) >= 9 then Date.Month([month]) - 8 else Date.Month([month]) + 4,
        Int64.Type),
    AcademicMonthLabel = Table.AddColumn(AcademicMonthOrder, "academic_month_label",
        each Date.ToText([month], "MMM", "en-GB"), type text)
in
    AcademicMonthLabel
