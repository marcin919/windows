Windows batch files: .bat vs .cmd?
==========

1. `command.com` is the 16-bit command processor introduced in MS-DOS and was also used in the Win9x series of operating systems.
2. `cmd.exe` is the 32-bit command processor in Windows NT (64-bit Windows OSes also have a 64-bit version). `cmd.exe` was never part of Windows 9x. It originated in OS/2 version 1.0, and the OS/2 version of `cmd` began 16-bit (but was nonetheless a fully fledged protected mode program with commands like `start`). Windows NT inherited `cmd` from OS/2, but Windows NT's Win32 version started off 32-bit. Although OS/2 went 32-bit in 1992, its `cmd` remained a 16-bit OS/2 1.x program.
3. The `ComSpec` env variable defines which program is launched by `.bat` and `.cmd` scripts. (Starting with WinNT this defaults to `cmd.exe`.)
4. `cmd.exe` is backward compatible with `command.com`.
5. A script that is designed for `cmd.exe` can be named `.cmd` to prevent accidental execution on Windows 9x. This filename extension also dates back to OS/2 version 1.0 and 1987.

Here is a list of `cmd.exe` features that are not supported by `command.com`:

Long filenames (exceeding the 8.3 format)
Command history
Tab completion
Escape character: `^` (Use for: `\ & | > < ^`)
Directory stack: `PUSHD/POPD`
Integer arithmetic: `SET /A i+=1`
Search/Replace/Substring: `SET %varname:expression%`
Command substitution: `FOR /F` (existed before, has been enhanced)
Functions: `CALL :label`
Order of Execution:

If both `.bat` and `.cmd` versions of a script (`test.bat`, `test.cmd`) are in the same folder and you run the script without the extension (test), by default the `.bat` version of the script will run, even on 64-bit Windows 7. The order of execution is controlled by the PATHEXT environment variable. See Order in which [Command Prompt executes files](https://stackoverflow.com/questions/605101/order-in-which-command-prompt-executes-files-with-the-same-name-a-bat-vs-a-cmd-v) for more details.

References:

[cmd.exe] (http://www.ss64.com/ntsyntax/)
[command.com] (http://gregvogl.net/courses/os/handouts/doscmdref.pdf)
wikipedia: [Comparison of command shells] (https://en.wikipedia.org/wiki/Comparison_of_command_shells)
stackoverflow: [Windows Batch Files bat vs cmd] (https://stackoverflow.com/questions/148968/windows-batch-files-bat-vs-cmd)
