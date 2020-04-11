@echo off
SET st3Path=C:\Program Files\Sublime Text 3\sublime_text.exe

rem add it for all file types
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime-Text-3"         /t REG_SZ /v "" /d "Open w&ith Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime-Text-3"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\*\shell\Sublime-Text-3\command" /t REG_SZ /v "" /d "%st3Path% \"%%1\"" /f

rem add it for any background
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime-Text-3"         /t REG_SZ /v "" /d "Open w&ith Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime-Text-3"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime-Text-3\command" /t REG_SZ /v "" /d "%st3Path% \"%%V\"" /f

@reg add "HKEY_CLASSES_ROOT\Directory\shell\Sublime-Text-3"         /t REG_SZ /v "" /d "Open w&ith Sublime Text"   /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Sublime-Text-3"         /t REG_EXPAND_SZ /v "Icon" /d "%st3Path%,0" /f
@reg add "HKEY_CLASSES_ROOT\Directory\shell\Sublime-Text-3\command" /t REG_SZ /v "" /d "%st3Path% \"%%V\"" /f

pause
