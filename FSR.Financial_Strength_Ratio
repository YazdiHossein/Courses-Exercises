Sub Financial_Strength_Ratios()
'
' Financial_Strength_Ratios Macro
' This Macro calculates the three ratios related to financial strength of a company based on the data from its balance sheet; Working Capital, Current Ratio, Quick Ratio (Acid-Test).
'
' Keyboard Shortcut: Ctrl+Shift+F
'
    Range("A1").Select
    Sheets("Sheet1").Select
    Sheets("Sheet1").Name = "Financial Strength Ratios"
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Name/Date"
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "Working Capital"
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "Current Ratio"
    Range("A4").Select
    ActiveCell.FormulaR1C1 = "Quick Ratio (Acid-Test)"
    Range("B2").Select
        
    Sheets("Financial Strength Ratios").Select
    Range("B1").Select
    Selection.FormulaR1C1 = "='Table 1'!R[2]C[1]"
    Sheets("Financial Strength Ratios").Select
    Selection.AutoFill Destination:=Range("B1:M1"), Type:=xlFillDefault
    Range("B1:M1").Select
    Rows("1:1").Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("B1").Select
    Sheets("Table 1").Select
    Range("C2:D2").Select
    Sheets("Financial Strength Ratios").Select
    Range("B1:C1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlTop
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Selection.AutoFill Destination:=Range("B1:E1"), Type:=xlFillDefault
    Range("B1:E1").Select
    Range("D1:E1").Select
    Selection.AutoFill Destination:=Range("D1:G1"), Type:=xlFillDefault
    Range("D1:G1").Select
    Selection.AutoFill Destination:=Range("D1:I1"), Type:=xlFillDefault
    Range("D1:I1").Select
    Selection.AutoFill Destination:=Range("D1:K1"), Type:=xlFillDefault
    Range("D1:K1").Select
    Selection.AutoFill Destination:=Range("D1:M1"), Type:=xlFillDefault
    Range("D1:M1").Select
    Range("B1:C1").Select
    Sheets("Table 1").Select
    Selection.Copy
    Sheets("Financial Strength Ratios").Select
    ActiveSheet.Paste
    Sheets("Table 1").Select
    Range("E2:N2").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("Financial Strength Ratios").Select
    Range("D1:M1").Select
    ActiveSheet.Paste
    Range("B1:M1").Select
    Selection.Font.Size = 9
    Selection.Font.Size = 10
    With Selection
        .HorizontalAlignment = xlRight
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
    End With
    Rows("1:1").RowHeight = 27.6
    Rows("1:1").RowHeight = 33.6
    With Selection
        .HorizontalAlignment = xlRight
        .VerticalAlignment = xlBottom
        .WrapText = True
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
    End With
    Rows("1:1").RowHeight = 47.4
    Range("A3").Select
    ActiveCell.FormulaR1C1 = "Working Capital: Current Asset - Current Lib"
    Range("A4").Select
    ActiveCell.FormulaR1C1 = "Current Ratio: Current Asset/Current Lib"
    Range("A5").Select
    ActiveCell.FormulaR1C1 = _
        "Quick Ratio (Acid-Test): [Cash+ Cash Equivalent + Short-term Investment + Net Current Rec]/Current Lib "
    Range("B3").Select
    Selection.FormulaR1C1 = "='Table 1'!R[19]C[1]-'Table 1'!R[40]C[1]"
    Selection.AutoFill Destination:=Range("B3:M3"), Type:=xlFillDefault
    Range("B3:M3").Select
    Range("B4").Select
    Selection.FormulaR1C1 = "='Table 1'!R[18]C[1]/'Table 1'!R[39]C[1]"
    Selection.AutoFill Destination:=Range("B4:M4"), Type:=xlFillDefault
    Range("B4:M4").Select
    Range("B5").Select
    
    Sheets("Financial Strength Ratios").Select
    Rows("5:5").Select
    Selection.ClearContents
    
End Sub


    
