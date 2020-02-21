cd C:\Users\admin
color a
cd C:\Users\admin 
dir/s
color c
cd C:\Users\admin
dir/s
color b
cd C:\Users\admin
dir/s

@echo off
if A equ A (
       GOTO :EXAMPLE_LABEL
       :EXAMPLE_LABEL
  
	   cd C:\Users\admin

color a
cd C:\Users\admin 
dir/s
color c
cd C:\Users\admin
dir/s
color b
cd C:\Users\admin
dir/s
    rem
) else (
   echo You didn't expected to see this,did you?
)
