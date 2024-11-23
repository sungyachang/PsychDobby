;-------------------------------------------------------------------------------
; 時間日期
;-------------------------------------------------------------------------------

:*c:D''::  
{
    now := FormatTime(, "yyyyMMdd")
    Send now
}

:*c:D-''::  
{
    now := FormatTime(, "yyyy-MM-dd")
    Send now
}

:*c:D/''::  
{
    now := FormatTime(, "yyyy/MM/dd")
    Send now
}

:*c:T''::  
{
    now := FormatTime(, "HH:mm")
    Send now
}