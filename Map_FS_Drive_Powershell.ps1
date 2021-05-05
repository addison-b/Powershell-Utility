net use \\chi-fs01 /user:\rcs 7roppu$
New-PSDrive -Name "P" -PSProvider FileSystem -Root "\\chi-fs01" -Scope Global