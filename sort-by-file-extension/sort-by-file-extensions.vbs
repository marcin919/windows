'Script to sort the data by file extension

Option Explicit
Dim fso, strSource, strTarget
Dim oFolder, oSubFolders, oFiles, item
Dim strType, iPos


strSource = "D:\Experiment\Source\3"
strTarget = "D:\Experiment\Target"

On Error Resume Next

Set fso = CreateObject("Scripting.FileSystemObject")

Set oFolder     = fso.GetFolder(strSource)
Set oSubFolders = oFolder.SubFolders
Set oFiles      = oFolder.Files

For Each item in oFiles
  iPos = InstrRev(item, ".", -1, 1)
  If iPos > 0 Then
    strType = Trim(Right(item, Len(item) - iPos))
    If Not fso.FolderExists(strTarget & "\" & strType) Then
      fso.CreateFolder(strTarget & "\" & strType)
    End If
    
    If Not fso.FileExists(strTarget & "\" & strType & "\" & item.Name) Then
      fso.MoveFile item, strTarget & "\" & strType & "\" & item.Name
    End If
  End If
Next

WScript.Echo "Beendet"  
