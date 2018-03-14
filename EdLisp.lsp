(defun c:colorchange (/ c1 c2 )
    (vl-load-com)
    (setq c1 (getint " What is the original color: ") c2 (getint " What is the new color: "))
    (vlax-for layer (vla-get-Layers (vla-get-ActiveDocument (vlax-get-Acad-Object)))(if (= c1 (vla-get-Color layer))(vla-put-Color layer c2)))
    (prin1)
) 

(command "pdmode" "0")

;(command "model" "zoom" "extents")(princ)

;(command "-layer" "new" "01-Delete" "color" "red" "01-Delete" "freeze" "01-Delete" "plot" "no" "01-Delete" "")(princ)

;ZOOM TO 24X36 SHEET
(DEFUN C:ZS()(COMMAND "ZOOM" "0,0,0" "36,24")(PRINC))

;ZOOM TO 30X42 SHEET
(DEFUN C:Z1()(COMMAND "ZOOM" "0,0,0" "42,30")(PRINC))

;RECONCILE ALL LAYERS
(DEFUN C:LR()(COMMAND "-LAYER" "E" "*" "")(PRINC))

;ZOOM ALL LAYOUTS TO 24X36 SHEET, SAVE FILE, AND CLOSE.
(DEFUN C:ZC()(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "ZOOM" "0,0,0" "@36,24"))(COMMAND "QSAVE")(COMMAND "CLOSE")(PRINC))

;CHANGE LAYER TO 0 THEN START XREF COMMAND.
(DEFUN C:IX()(COMMAND "CLAYER" "0")(COMMAND "-XREF")(PRINC))
;CHANGE LAYER TO G-Anno-Nplt.
(DEFUN C:NP()(COMMAND "CLAYER" "G-Anno-Nplt")(PRINC))

;LOCK ALL VIEWPORTS IN CURRENT PAGE LAYOUT.
(DEFUN C:LV()(COMMAND "-VPORTS" "LOCK" "ON" "ALL" "")(PRINC))

;COPY WHATEVER IS SELECTED INTO CLIPBOARD WITH BASEPOINT 0,0,0.
(DEFUN C:C0()(COMMAND "COPYBASE" "0,0,0")(PRINC))

;PASTE WHATEVER IS IN CLIPBOARD TO INSERTION POINT 0,0,0.
(DEFUN C:00()(COMMAND "PASTECLIP" "0,0,0")(PRINC))

;RELOAD ALL XREFS.
(DEFUN C:RX()(COMMAND "-XREF" "RELOAD" "*")(PRINC))

;PURGE BLOCKS NAMED XX
(DEFUN C:PX()(COMMAND "-PURGE" "BLOCKS" "XX" "N")(PRINC))

;ENTER "LOCKVP" TO LOCK ALL VIEWPORTS IN ALL PAGE LAYOUTS
(DEFUN C:LOCKVP()(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "-VPORTS" "LOCK" "ON" "ALL" ""))(PRINC))

;ENTER "ULOCKVP" TO UNLOCK ALL VIEWPORTS IN ALL PAGE LAYOUTS
(DEFUN C:ULOCKVP()(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "-VPORTS" "LOCK" "OFF" "ALL" ""))(PRINC))

;SELECT PREVIOUSLY SELECTED OBJECTS
(DEFUN C:P()(COMMAND "SELECT" "PREVIOUS" "")(PRINC))

;VIWPORT FREEZE ANYTHING ON ADA LAYERS
(DEFUN C:RAD()(COMMAND "VPLAYER" "FREEZE" "*ADA*" "SELECT")(PRINC))

;VERTIAL XLINE
(DEFUN C:XV()(COMMAND "XLINE" "V")(PRINC))

;HORIZONTAL XLINE
(DEFUN C:XH()(COMMAND "XLINE" "H")(PRINC))

;VERTIAL AND HORIZONTAL XLINES AT 0,0,0
(DEFUN C:X0()(COMMAND "XLINE" "V" "0,0,0" "")(COMMAND "XLINE" "H" "0,0,0" "")(PRINC))

;SET PDMODE TO "0"
(DEFUN C:P0()(COMMAND "PDMODE" "0")(PRINC))

;SET PDMODE TO "3"
(DEFUN C:P3()(COMMAND "PDMODE" "3")(PRINC))

;SET IMAGEFRAME TO "0" and show plot preview
(DEFUN C:I0()(COMMAND "IMAGEFRAME" "0")(command "preview")(PRINC))

;SET IMAGEFRAME TO "2" and show plot preview
(DEFUN C:I2()(COMMAND "IMAGEFRAME" "2")(command "preview")(PRINC))

;DUPLICATE SELECTED OBJECT IS SAME LOCATION
;(DEFUN C:DP()(COMMAND "COPYBASE" "0,0,0")(COMMAND "PASTECLIP" "0,0,0")(PRINC))

;ZOOM EXTENTS, SAVE AND CLOSE
(DEFUN C:ZEC()(COMMAND "ZOOM" "EXTENTS" "QSAVE" "CLOSE")(PRINC))

;change "UCS" to "World" and rotate view to match
(defun c:RET()(command "ucs" "world")(command "plan" "current")(princ))

;CLOSE WITHOUT SAVING
(DEFUN C:CN()(COMMAND "_CLOSE" "_Y")(princ))

;PASTE WHATEVER IS IN CLIPBOARD AT 0,0,0 ON EACH PAGE LAYOUT
(defun c:99()(foreach layout(layoutlist)(setvar "ctab" layout)(c:00))(PRINC))

;PURGE AND SET UP NEW LAYERS FOR AS BUILT DRAWING
(defun c:asbl()(command "-purge" "layers" "*" "no")(command "-layer" "new" "AB-WALL" "color" "80" "AB-WALL" "new" "AB-HALFWALL" "color" "240" "AB-HALFWALL" "LTYPE" "DASHED" "AB-HALFWALL" "")(command "clayer" "AB-WALL")(princ))

(defun c:r9()(command "rotate" "all" "" "0,0,0" "90")(princ))

(defun c:sue()(command "-purge" "layers" "*" "no")(command "-purge" "blocks" "*" "no")(command "insert" "ELEC common layers.dwg" "0,0,0" "1" "1" "0")(princ))

;(command "zoom" "extents")(command "ucsicon" "origin")

;(command "scale" "all" "" "0,0,0" "1.33")(c:zec)

;(c:lockvp)(command "xrefoverride" "1")(command "-layer" "color" "8" "*|*" "")(princ)

;(command "scale" "all" "" "0,0,0" "4")(c:zec)
