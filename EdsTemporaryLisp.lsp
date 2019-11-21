;Set plot settings for 24x36 sheet, and pasteclip at 0,0,0. Handy for pasting titleblocks repeatedly.
;(defun c:88()(c:pts)(c:00)(princ))

;zoom to revision list
;(command "zoom" "31.85,3.48" "35.6,6.4")(princ)

;(c:lr)(command "qsave")(command "close")

;(foreach layout(layoutlist)(setvar "ctab" layout)(command "_script" "PlotSettings.scr"))(c:zc)(princ)

;(c:zc)

;(command "zoom" "extents")(command "ucsicon" "origin")

;(command "zoom" "extents")(command "ucsicon" "noorigin")

;(c:lockvp)(command "xrefoverride" "1")(command "-layer" "color" "8" "*|*" "")(princ)

;(command "model")(command "zoom" "extents")(command "ucsicon" "origin")(c:zec)(princ)

;(command "model")(command "zoom" "extents")(command "ucsicon" "origin")(princ)

;Scale from 1/4 to 1/8
;(command "scale" "all" "" "0,0,0" "2")(c:zec)

;Scale from 1/8 to 1/4 
;(command "scale" "all" "" "0,0,0" ".5")(c:zec)

;Scale from 1/4 to 3/16
;(command "scale" "all" "" "0,0,0" "1.33333")(c:zec)

;Scale from 1/4 to 3/32
;(command "scale" "all" "" "0,0,0" "2.666667")(c:zec)

;Scale from 1/4 to 1/2
;(command "scale" "all" "" "0,0,0" ".5")(c:zec)

;Scale from 1/4 to 1"=20'
;(command "scale" "all" "" "0,0,0" "5")(c:zec)

;Scale from 1/4 to 1/32
;(command "scale" "all" "" "0,0,0" "8")(c:zec)

;Scale from 1/4 to 1/16
;(command "scale" "all" "" "0,0,0" "4")(c:zec)

;(c:mz)(c:zec)

;(c:zec)

;(c:mz)(c:i2)(c:i0)(c:zc)

;(c:L0)

;(command "-layer" "color" "27" "Defpoints" "")(c:zc)

;(command "-layer" "color" "80" "*|Cotation" "")(c:zc)

;(c:mz)(c:front)(princ)

;(c:pts)(c:zc)

;(c:zc)

;(c:cn)

;(c:xgray)


;(c:xgray)(command "-layer" "color" "253" "*|a-mill,*|A-Eqpm-Service,*|A-FLOR,*|APPLIANCE,*|A-PFIX-NEW,*|P-Drain,*|S-Cols,*|S-Bolt,*|A-FLOR-GRAB BAR,*|s-metl" "")(command "vplayer" "freeze" "*|S-Grid,*|a-detl-patt" "all" "")(command "-layer" "freeze" "*|S-Grid,*|a-detl-patt" "")

;(c:dec)

;(c:65)

;(command "-layer" "new" "Defpoints" "color" "27" "Defpoints" "set" "defpoints" )(command "point" "0,0,0")(princ)

;(command "-layer" "new" "Defpoints" "color" "27" "Defpoints" "set" "defpoints")(princ)

;(command "layout" "delete")(c:mz)(c:zec)

;(c:sue)(c:zc)

;(c:tcn)(c:zc)

;(c:psiu)(c:zc)

;(command "pickstyle" "1")

;(command "-layer" "color" "27" "Defpoints" "")

;(command "-xref" "detach" "*")(c:zc)

;(command "-xref" "detach" "*seal*")(c:zc)

;(c:pts)(command "pdfframe" "0")(c:zc)

;(c:pts)(command "pdfframe" "0")(c:zc)

;(c:pts)(command "pdfframe" "0")(command "xclipframe" "0")(command "qsave")(command "close")

;(command "pdfframe" "0")(c:00)(c:zc)

;(c:dec)(c:65)(command "-layer" "color" "27" "Defpoints" "")(c:L0)(command "pickstyle" "1")(princ)

;(c:p3)(princ)

;(c:mz)(c:front)(princ)

;(c:mz)

;(command "-layer" "color" "253" "*|*F-EQPT-FEC" "")(princ)(c:zc)

;(command "wipeoutframe" "0")(c:zc)

; *A-Flor-TPar

;(command "-layer" "color" "253" "lnwk column grid*|*" "")(princ)

;(command "-layer" "color" "4" "*|*anno-temp*" "")(princ)

;"*temp 1-4"

;(command "wipeoutframe" "0")(c:zc)

;(command "-layer" "color" "253" "*patt" "")(c:zc)

;(c:00)

;(command "-layer" "off" "*" "y" "on" "*rev*" "")(princ)

;(command "-layer" "color" "250" "*|*" "")(princ)

;(c:pe1)(c:zc)


