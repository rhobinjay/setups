@echo off
SET st3Path=C:\Program Files\Sublime Text 3\sublime_text.exe

@reg delete "HKEY_CLASSES_ROOT\*\shell\Sublime-Text-3" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\Background\shell\Sublime-Text-3" /f
@reg delete "HKEY_CLASSES_ROOT\Directory\shell\Sublime-Text-3" /f
@reg delete "HKEY_CLASSES_ROOT\Drive\shell\Sublime-Text-3" /f

pause
