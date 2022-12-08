Attribute VB_Name = "Portfolio_Optimization_Automation"

Sub Portfolio_Optimization_Automation()
Attribute Portfolio_Optimization_Automation.VB_Description = "In this Macro the portfolio optimization calculation for a period of 120 months, 10 years is going to be automated."
Attribute Portfolio_Optimization_Automation.VB_ProcData.VB_Invoke_Func = "P\n14"
'
' Portfolio_Optimization_Automation Makro
' In this Macro the portfolio optimization calculation for a period of 120 months, 10 years is going to be automated.
'
' Shortcut Key: Ctrl+Shift+P
' Tastenkombination: Strg+Umschalt+P
'
' Please pay attention that the name of the sheet must be "Sheet1" or "Tabelle1" depending on the language of your Excel.
'Step 1: To Provide the Sheet 1 as "E(Ri)" to calculate the rate of return for every individual asset
    
    
    Sheets("Sheet1").Select
    Range("B30").Select
    Sheets("Sheet1").Select
    Sheets("Sheet1").Name = "E(Ri)"
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "Total Period "
    Range("B1").Select
    ActiveCell.FormulaR1C1 = "120"
    Range("C1:Q1").Select
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Range("C1:Q3").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    With Selection
        .HorizontalAlignment = xlGeneral
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.UnMerge
    Range("C1:Q1").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("C2:Q2").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("C3:Q3").Select
    With Selection
        .HorizontalAlignment = xlCenter
        .VerticalAlignment = xlBottom
        .WrapText = False
        .Orientation = 0
        .AddIndent = False
        .IndentLevel = 0
        .ShrinkToFit = False
        .ReadingOrder = xlContext
        .MergeCells = False
    End With
    Selection.Merge
    Range("C1:Q1").Select
    
    Range("C1:Q1").Select
    ActiveCell.FormulaR1C1 = "Expected Share Return: E(Ri) = (1/T)S(Rit)"
    Range("C2:Q2").Select
    ActiveCell.FormulaR1C1 = "Rit: Return of one share in the time t    "
    Range("C3:Q3").Select
    ActiveCell.FormulaR1C1 = "T: The total time of the period"
    Range("A4").Select
    
    'Sheet E(Ri): From A4 To A11
    
    ActiveCell.FormulaR1C1 = "Summary Data"
    Range("A5").Select
    ActiveCell.FormulaR1C1 = "Total Return"
    Range("A6").Select
    ActiveCell.FormulaR1C1 = "Average Return"
    Range("A7").Select
    ActiveCell.FormulaR1C1 = "Standard Dev"
    Range("A8").Select
    ActiveCell.FormulaR1C1 = "Variance"
    Range("A9").Select
    ActiveCell.FormulaR1C1 = "Beta"
    Range("A10").Select
    ActiveCell.FormulaR1C1 = "Alpha (Intercept)"
    Range("A11").Select
    ActiveCell.FormulaR1C1 = "Time"
    
    'Sheet E(Ri): From C5 To C13
    
     Range("B11").Select
    ActiveCell.FormulaR1C1 = "Market Index"
    Range("C5").Select
    ActiveCell.FormulaR1C1 = "=SUM(R[9]C:R[128]C)"
    Range("C6").Select
    ActiveCell.FormulaR1C1 = "=R[-1]C/R1C2"
    Range("C7").Select
    ActiveCell.FormulaR1C1 = "=STDEV.P(R[7]C:R[126]C)"
    Range("C8").Select
    ActiveCell.FormulaR1C1 = "=R[-1]C^2"
    Range("C9").Select
    ActiveCell.FormulaR1C1 = "=SLOPE(R[5]C:R[124]C,R14C2:R133C2)"
    Range("C10").Select
    ActiveCell.FormulaR1C1 = "=INTERCEPT(R[4]C:R[123]C,R14C2:R133C2)"
    Range("C6:C10").Select
    With Selection.Font
        .Name = "Calibri"
        .Size = 11
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .ThemeColor = xlThemeColorLight1
        .TintAndShade = 0
        .ThemeFont = xlThemeFontMinor
    End With
    Rows("11:11").Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Rows("12:12").Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("C13").Select
    Rows("12:12").Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    Range("A11").Select
    ActiveCell.FormulaR1C1 = "Total Volume"
    Range("A12").Select
    ActiveCell.FormulaR1C1 = "Liquidity"
    Range("A21").Select
    
    'Sheet E(Ri): From C13 To Completion
    
    Range("A21").Select
    ActiveCell.FormulaR1C1 = "R1"
    Range("A23").Select
    ActiveCell.FormulaR1C1 = "R2"
    Range("A21:A24").Select
    ActiveWindow.SmallScroll Down:=15
    Selection.AutoFill Destination:=Range("A21:A50"), Type:=xlFillDefault
    Range("A21:A50").Select
    Selection.Cut
    ActiveWindow.SmallScroll Down:=-15
    Range("C4:AF4").Select
    ActiveWindow.ScrollColumn = 20
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Range("A21:A50").Select
    Application.CutCopyMode = False
    Selection.Cut
    ActiveWindow.SmallScroll Down:=-12
    Range("C4:AF4").Select
    ActiveWindow.ScrollColumn = 27
    ActiveWindow.ScrollColumn = 26
    ActiveWindow.ScrollColumn = 25
    ActiveWindow.ScrollColumn = 24
    ActiveWindow.ScrollColumn = 23
    ActiveWindow.ScrollColumn = 22
    ActiveWindow.ScrollColumn = 21
    ActiveWindow.ScrollColumn = 20
    ActiveWindow.ScrollColumn = 19
    ActiveWindow.ScrollColumn = 18
    ActiveWindow.ScrollColumn = 17
    ActiveWindow.ScrollColumn = 16
    ActiveWindow.ScrollColumn = 15
    ActiveWindow.ScrollColumn = 14
    ActiveWindow.ScrollColumn = 13
    ActiveWindow.ScrollColumn = 12
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 8
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 8
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    Range("A21:A50").Select
    Application.CutCopyMode = False
    Selection.Copy
    ActiveWindow.SmallScroll Down:=-18
    Range("C4:AF4").Select
    Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks:= _
        False, Transpose:=True
    Range("A21:A50").Select
    Application.CutCopyMode = False
    Selection.ClearContents
    ActiveWindow.SmallScroll Down:=-12
    Range("C15").Select
    ActiveCell.FormulaR1C1 = "Return"
    Range("D15").Select
    ActiveCell.FormulaR1C1 = "Volume"
    Range("C15:D15").Select
    Selection.AutoFill Destination:=Range("C15:AF15"), Type:=xlFillDefault
    Range("C15:AF15").Select
    ActiveWindow.LargeScroll ToRight:=-1
    ActiveWindow.ScrollColumn = 11
    ActiveWindow.ScrollColumn = 10
    ActiveWindow.ScrollColumn = 9
    ActiveWindow.ScrollColumn = 8
    ActiveWindow.ScrollColumn = 7
    ActiveWindow.ScrollColumn = 6
    ActiveWindow.ScrollColumn = 5
    ActiveWindow.ScrollColumn = 4
    ActiveWindow.ScrollColumn = 3
    ActiveWindow.ScrollColumn = 2
    ActiveWindow.ScrollColumn = 1
    ActiveWindow.SmallScroll Down:=-15
    Range("C11").Select
    ActiveCell.FormulaR1C1 = "=SUM(R[3]C[1]:R[124]C[1])"
    Range("C11").Select
    ActiveCell.FormulaR1C1 = "=SUM(R[5]C[1]:R[124]C[1])"
    Range("C12").Select
    Application.CutCopyMode = False
    ActiveCell.FormulaR1C1 = "=R[-1]C/R1C2"
   
    Range("C5").Select
    ActiveCell.FormulaR1C1 = "=SUM(R[11]C:R[130]C)"
    Range("C7").Select
    ActiveCell.FormulaR1C1 = "=STDEV.P(R[9]C:R[128]C)"
    Range("C9").Select
    ActiveCell.FormulaR1C1 = "=SLOPE(R[7]C:R[126]C,R16C2:R135C2)"
    Range("C10").Select
    ActiveCell.FormulaR1C1 = "=INTERCEPT(R[6]C:R[125]C,R16C2:R135C2)"
    Range("C5:D12").Select
    Selection.AutoFill Destination:=Range("C5:AF12"), Type:=xlFillDefault
    Range("C5:AF12").Select
    
        Range("A4:AF4").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = -0.149998474074526
        .PatternTintAndShade = 0
    End With
    Range("A15:AF15").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = -0.149998474074526
        .PatternTintAndShade = 0
    End With
    Range("A1").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = -0.149998474074526
        .PatternTintAndShade = 0
    End With
    Range("A5:A12").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorDark1
        .TintAndShade = -0.149998474074526
        .PatternTintAndShade = 0
    End With
    Range("C5:AF12").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorAccent1
        .TintAndShade = 0.599993896298105
        .PatternTintAndShade = 0
    End With
    Range("C1:Q3").Select
    With Selection.Font
        .ThemeColor = xlThemeColorAccent1
        .TintAndShade = -0.249977111117893
    End With
    Selection.Font.Bold = True
    Range("A4:AF4").Select
    Selection.Font.Bold = True
    Range("A15:AF15").Select
    Selection.Font.Bold = True
    
    Columns("A:A").EntireColumn.AutoFit
    Columns("B:B").EntireColumn.AutoFit
    
     Range("B5:B12").Select
    With Selection.Interior
        .Pattern = xlSolid
        .PatternColorIndex = xlAutomatic
        .ThemeColor = xlThemeColorAccent1
        .TintAndShade = 0.599993896298105
        .PatternTintAndShade = 0
    End With
    Range("B14").Select
    
End Sub
