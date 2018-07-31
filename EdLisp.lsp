(defun c:colorchange (/ c1 c2 )
    (vl-load-com)
    (setq c1 (getint " What is the original color: ") c2 (getint " What is the new color: "))
    (vlax-for layer (vla-get-Layers (vla-get-ActiveDocument (vlax-get-Acad-Object)))(if (= c1 (vla-get-Color layer))(vla-put-Color layer c2)))
    (prin1)
) 


;ZOOM TO 24X36 SHEET
(DEFUN C:ZS()(COMMAND "ZOOM" "0,0,0" "36,24")(PRINC))

;ZOOM TO 30X42 SHEET
(DEFUN C:Z1()(COMMAND "ZOOM" "0,0,0" "42,30")(PRINC))

;RECONCILE ALL LAYERS
(DEFUN C:LR()(COMMAND "-LAYER" "E" "*" "")(PRINC))

;ZOOM ALL LAYOUTS TO 24X36 SHEET, SAVE FILE, AND CLOSE.
(DEFUN C:ZC()(c:lockvp)(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "ZOOM" "0,0,0" "@36,24"))(C:P0)(COMMAND "QSAVE")(COMMAND "CLOSE")(PRINC))

;CHANGE LAYER TO 0 THEN START XREF COMMAND.
;(DEFUN C:IX()(COMMAND "CLAYER" "0")(COMMAND "-XREF")(PRINC))

;CHANGE LAYER TO 0 THEN CHOOSE FILE TO XREF AND INSERT AT 0,0,0 AND ZOOM TO EXTENTS.
(defun c:ix()
	(command "clayer" "0")
	(command "-xref" "o" 
		(getfiled "Choose File" "G:/" "dwg" 0)
	"0,0,0" "1" "1" "0")
	(command "zoom" "extents")
	(princ))

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
(DEFUN C:LOCKVP()(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "PSPACE")(COMMAND "-VPORTS" "LOCK" "ON" "ALL" ""))(PRINC))

;ENTER "ULOCKVP" TO UNLOCK ALL VIEWPORTS IN ALL PAGE LAYOUTS
(DEFUN C:ULOCKVP()(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "-VPORTS" "LOCK" "OFF" "ALL" ""))(PRINC))

;SELECT PREVIOUSLY SELECTED OBJECTS
(DEFUN C:P()(COMMAND "SELECT" "PREVIOUS" "")(PRINC))

;VIWPORT FREEZE ANYTHING ON ADA LAYERS IN A SELECTED VIWPORT
;(DEFUN C:RAD()(COMMAND "VPLAYER" "FREEZE" "*ADA*" "SELECT")(PRINC))

;VIWPORT FREEZE ANYTHING ON ADA LAYERS IN ALL VIEWPORTS
(DEFUN C:RAD()(COMMAND "VPLAYER" "FREEZE" "*ADA*" "ALL" "")(COMMAND "-LAYER" "FREEZE" "*ADA*" "")(PRINC))

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
(DEFUN C:ZEC()(C:P0)(COMMAND "ZOOM" "EXTENTS" "QSAVE" "CLOSE")(PRINC))

;change "UCS" to "World" and rotate view to match
(defun c:RET()(command "ucs" "world")(command "plan" "current")(princ))

;CLOSE WITHOUT SAVING
(DEFUN C:CN()(COMMAND "_CLOSE" "_Y")(princ))

;PASTE WHATEVER IS IN CLIPBOARD AT 0,0,0 ON EACH PAGE LAYOUT
(defun c:99()(foreach layout(layoutlist)(setvar "ctab" layout)(c:00))(PRINC))

;PURGE AND SET UP NEW LAYERS FOR AS BUILT DRAWING
(defun c:asbl()
	(command "-purge" "layers" "*" "no")
	(command "-purge" "blocks" "*" "no")
	(command "-layer" 
		"new" "AB-IMAGE" 
		"new" "AB-WALL" 
			"color" "80" "AB-WALL" 
		"new" "AB-DASHED" 
			"color" "RED" "AB-DASHED" 
			"LTYPE" "HIDDEN" "AB-DASHED" 
		"new" "AB-ELEC" 
			"color" "210" "AB-ELEC" 
		"new" "AB-STAIR-RAIL" 
			"color" "RED" "AB-STAIR-RAIL" 
		"new" "AB-DOOR" 
			"color" "RED" "AB-DOOR" 
		"new" "AB-FLOOR" 
			"color" "RED" "AB-FLOOR" 
		"new" "AB-WINDOW" 
			"color" "RED" "AB-WINDOW" 
		"new" "AB-ROOF" 
			"color" "MAGENTA" "AB-ROOF" 
		"new" "AB-FIXT" 
			"color" "RED" "AB-FIXT"
		"new" "AB-COLUMN" 
			"color" "CYAN" "AB-COLUMN"
		"new" "AB-BEAM" 
			"color" "RED" "AB-BEAM"
			"LTYPE" "CENTER" "AB-BEAM"
	"")
(command "clayer" "AB-WALL")(princ))

;select everything in a drawing and rotate it 90 degrees counter clockwise
(defun c:r9()(command "rotate" "all" "" "0,0,0" "90")(princ))

;SetUp Electrical layers
;purge all unused layers. purge all unused blocks. insert all the Electrical Common Layers. Insert the version of the KJG North Arrow that I fixed.
(defun c:sue()(command "-purge" "layers" "*" "no")(command "-purge" "blocks" "*" "no")(command "insert" "ELEC common layers.dwg" "0,0,0" "1" "1" "0")(command "insert" "KJG North Arrow.dwg" #nil)(princ))

;LOCK ALL THE VIEWPORTS, SET XREFOVERRIDE TO "1" AND MAKE ALL THE XREF LAYERS GRAY
(defun c:xgray()(c:lockvp)(command "xrefoverride" "1")(command "-layer" "color" "8" "*|*" "color" "253" "*furn*" "color" "253" "*fix*" "")(princ))

;Switch to MODEL tab and ZOOM to EXTENTS
(defun c:mz()(command "model" "zoom" "extents")(princ))

;Change layer to Defpoints
(defun c:dp()(command "clayer" "defpoints")(princ))

(defun c:o0()(command "xline" "offset" "1.5")(princ))

(defun c:o9()(command "xline" "offset" ".95")(princ))

;Isolate chosen layers by turning off all others
(defun c:lio()(command "layiso" "settings" "off" "off")(princ))

;Isolate chosen layers by locking and fading
(defun c:lil()(command "layiso" "settings" "lock" "65")(princ))

;Set Plot setting for current layout
(defun c:pts()(command "_script" "PlotSettings.scr")(princ))

;zoom to revision list
(defun c:zr()(command "zoom" "31.85,3.48" "35.6,6.4")(princ))

;VIWPORT FREEZE 0 LAYER IN A SELECTED VIWPORT
(DEFUN C:T0()(COMMAND "VPLAYER" "FREEZE" "0" "SELECT")(PRINC))

;CHANGE LAYER TO G-Anno-Nplt AND START MVIEW COMMAND
(defun c:vs()(command "clayer" "G-Anno-Nplt")(command "mview"))

;SET PDMODE TO 3 THEN RUN DIVIDE COMMAND
(defun c:ddv()(command "pdmode" "3")(command "divide")(princ))

;CREATE 01-DELETE LAYER
(defun c:md()(command "-layer" "new" "01-Delete" "color" "red" "01-Delete" "freeze" "01-Delete" "plot" "no" "01-Delete" "")(princ))

;TURN OFF ALL THE XREF LAYERS
(defun c:xro()(command "-layer" "off" "*|*" "")(PRINC))

;SELECT ALL AND MOVE TO "0" LAYER
(defun c:a0()(command "chprop" "all" "" "layer" "0" "")(princ))

;MOVE SELECTION TO "01-DELETE" LAYER
(defun c:D1()(command "chprop" pause "" "layer" "01-delete" "")(princ))

;Create lines for for electrical notes placement
(defun c:nl()
(setq oldlayer(getvar "clayer"))
(setq placepoint (getpoint))
(setvar "clayer" "g-anno-nplt")
(command "line" placepoint "@-.5,0" ""
	"line" "@.5,-.25" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
	"line" "@.5,-.15" "@-.5,0" ""
)
(setvar "clayer" oldlayer)
(princ))

;(defun c:ad()
;(setq hinge (getpoint "Hinge Point?"))
;(setq latch (getpoint "Latch Point?"))
;(setq direction (getpoint "Direction?"))
;(command "circle" hinge latch)
;(command "rectang" latch 
;(princ))

(defun c:ssp()(command "select" "previous"))

(defun c:sz()
(setq z1 (getpoint "FIRST POINT?"))
(setq z2 (getpoint "SECOND POINT?"))
(command "zoom" z1 z2)
(princ))

(defun c:zag()
(command "zoom" z1 z2)
(princ))

;Create "01-Delete" layer
(defun c:1d()(command "-layer" "new" "01-Delete" "color" "red" "01-Delete" "freeze" "01-Delete" "plot" "no" "01-Delete" "")(princ))

;Set ucs to World 0,0,0, but facing current view direction
(defun c:csv()(command "ucs" "world")(command "ucs" "view")(princ))

;zoom to revision list
;(command "zoom" "31.85,3.48" "35.6,6.4")(princ)

;(c:lr)(command "qsave")(command "close")

;(foreach layout(layoutlist)(setvar "ctab" layout)(command "_script" "PlotSettings.scr"))(c:mz)(c:zc)(princ)

;(c:lockvp)(c:mz)(c:zc)

;(c:mz)(c:zc)

;(command "zoom" "extents")(command "ucsicon" "origin")

;(command "zoom" "extents")(command "ucsicon" "noorigin")

;(c:lockvp)(command "xrefoverride" "1")(command "-layer" "color" "8" "*|*" "")(princ)

;(command "model")(command "zoom" "extents")(command "ucsicon" "origin")(c:zec)(princ)

;Scale from 1/4 to 1/8
;(command "scale" "all" "" "0,0,0" "2")(c:zec)

;Scale from 1/8 to 1/4 
;(command "scale" "all" "" "0,0,0" ".5")(c:zec)

;Scale from 1/4 to 3/16
;(command "scale" "all" "" "0,0,0" "1.33333")(c:zec)

;Scale from 1/4 to 3/32
;(command "scale" "all" "" "0,0,0" "2.666667")(c:zec)

;(c:p0)(c:mz)(c:zc)

;(c:zs)
