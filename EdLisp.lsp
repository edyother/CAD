
(defun c:65()
(command "osmode" "6591")
(princ))

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
(DEFUN C:ZC()(command "layon")(c:lockvp)(c:mz)(foreach layout(layoutlist)(setvar "ctab" layout)(COMMAND "ZOOM" "0,0,0" "@36,24"))(C:P0)(COMMAND "QSAVE")(COMMAND "CLOSE")(PRINC))

;CHANGE LAYER TO 0 THEN START XREF COMMAND.
(DEFUN C:IX()(COMMAND "CLAYER" "0")(COMMAND "-XREF")(PRINC))

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

;VIWPORT FREEZE ANYTHING ON ADA LAYERS IN ALL VIEWPORTS
(DEFUN C:RAD()(COMMAND "VPLAYER" "FREEZE" "*ADA*" "ALL" "")(COMMAND "-LAYER" "FREEZE" "*ADA*" "")(PRINC))

;VERTIAL XLINE
(DEFUN C:XV()(COMMAND "XLINE" "V")(PRINC))

;HORIZONTAL XLINE
(DEFUN C:XH()(COMMAND "XLINE" "H")(PRINC))

;VERTIAL AND HORIZONTAL XLINES AT 0,0,0
(DEFUN C:X0()(COMMAND "XLINE" "V" "0,0,0" "")(COMMAND "XLINE" "H" "0,0,0" "")(PRINC))

;SET PDMODE TO "0"
(DEFUN C:p0()(COMMAND "PDMODE" "0")(PRINC))

;SET PDMODE TO "3"
(DEFUN C:p3()(COMMAND "PDMODE" "3")(PRINC))

;Set pdmode to 3 and start POINT command
(defun c:po()(COMMAND "PDMODE" "3")(command "point")(princ))

;SET IMAGEFRAME TO "0" and show plot preview
(DEFUN C:i0()(COMMAND "IMAGEFRAME" "0")(command "preview")(PRINC))

;SET IMAGEFRAME TO "2" and show plot preview
(DEFUN C:i2()(COMMAND "IMAGEFRAME" "2")(command "preview")(PRINC))

;DUPLICATE SELECTED OBJECT IS SAME LOCATION
(DEFUN C:dup()
(COMMAND "copy" (ssget) "" "0,0,0" "0,0,0")
(PRINC))

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
(command "clayer" "AB-WALL")
(command "insert" "KJG North Arrow.dwg" #nil)
(princ))

;select everything in a drawing and rotate it 90 degrees counter clockwise
(defun c:r9()(command "rotate" "all" "" "0,0,0" "90")(princ))

;SetUp Electrical layers purge all unused layers. purge all unused blocks. insert all the Electrical Common Layers. Insert the version of the KJG North Arrow that I fixed.
(defun c:sue()(command "-purge" "layers" "*" "no")(command "-purge" "blocks" "*" "no")(c:mz)(command "insert" "ELEC common layers.dwg" "0,0,0" "1" "1" "0")(command "insert" "KJG North Arrow.dwg" #nil)(princ))

;Insert Note Spacing Block
(defun c:nl()
(command "insert" "NoteSpacing.dwg" pause "1" "1" "0")
(princ))

;Move Note Spacing Block
(defun c:nn()
(command "osmode" "9")
(command "erase" (ssget)"")
(command "insert" "NoteSpacing.dwg" "@" "1" "1" "0")
(command "move" (ssget)"")
(princ))

(defun c:r1()
(command "rotate" (ssget)"" pause "180")
(princ))


;LOCK ALL THE VIEWPORTS, SET XREFOVERRIDE TO "1" AND MAKE ALL THE XREF LAYERS GRAY
(defun c:xgray()(c:lockvp)(command "xrefoverride" "1")(command "-layer" "color" "8" "*|*" "color" "253" "*furn*" "color" "253" "*fix*" "")(princ))

;Switch to MODEL tab and ZOOM to EXTENTS
(defun c:mz()(command "model" "zoom" "extents")(princ))

;Set current layer to Defpoints
(defun c:dp()(command "clayer" "defpoints")(princ))

;(defun c:o0()(command "xline" "offset" "1.5")(princ))

;(defun c:o9()(command "xline" "offset" ".95")(princ))

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
(defun c:d1()
(command "chprop" (ssget)"" "la" "01-Delete" "")
(princ))

;turn off osnap, start move command, then set osmode back 6591
(defun c:mf()
(command "osmode" "0")
(command "move" (ssget)"")
(c:65)
)

;Pick UCS, set snap to midpoint and pasteclip 
(defun c:11()
(command "osmode" "1")
(command "ucs" pause pause "")
(command "osmode" "2")
(command "pasteclip" pause)
(command "osmode" "6591")
(command "ucs" "world")
(princ))

(defun c:22()
(command "osmode" "0")
(command "ucs" "world")
(command "-insert" "SiteMeter" pause "1" "1" "0")
(command "-insert" "SiteTransformer" pause "1" "1" "0")
(command "osmode" "6591")
(princ))

(defun c:33()
(command "osmode" "2")
(command "point" "m2p" pause)
(command "osmode" "6591")
(princ))

(defun c:44()
(command "ucs" "ob" pause)
(c:00)
(command "trim" "" pause "")
(command "ucs" "world")
(princ))

;Create lines for for electrical notes placement
;(defun c:nl()
;(setq oldlayer(getvar "clayer"))
;(setq placepoint (getpoint))
;(setvar "clayer" "g-anno-nplt")
;(command "line" placepoint "@-.5,0" ""
;	"line" "@.5,-.24586147" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;	"line" "@.5,-.15625" "@-.5,0" ""
;)
;(setvar "clayer" oldlayer)
;(princ))

;(defun c:ad()
;(setq hinge (getpoint "Hinge Point?"))
;(setq latch (getpoint "Latch Point?"))
;(setq direction (getpoint "Direction?"))
;(command "circle" hinge latch)
;(command "rectang" latch 
;(princ))

;(defun c:ssp()(command "select" "previous"))

;(defun c:sz()
;(setq z1 (getpoint "FIRST POINT?"))
;(setq z2 (getpoint "SECOND POINT?"))
;(command "zoom" z1 z2)
;(princ))

;(defun c:zag()
;(command "zoom" z1 z2)
;(princ))


;Set ucs to World 0,0,0, but facing current view direction
(defun c:csv()(command "ucs" "world")(command "ucs" "view")(princ))


;set offset for door frames
(defun c:o2()(command "offset" "erase" "yes" "2")(princ))

;set offset erase to NO
(defun c:o0()(command "offset" "erase" "no" "" "")(princ))

;Unload an xref
(defun c:xru()(command "xrefunload")(princ))

;(defun c:88()(c:pts)(c:00)(princ))

;(defun c:88()(c:pts)(princ))

;(command "-layer" "color" "27" "defpoints" "")(c:zc)

;(c:mz)

;(c:dpl)(c:zc)

(defun c:cl0()
(command "clayer" "0")
(princ))

(defun c:dpl()
(command "vplayer" "thaw" "defpoints" "current" "")
(princ))

;Layer settings for electrical sheets using the Clubhouse Plan Xrefs. From Bloomington.
(defun c:clubla()
(setq gfreeze
"\"*|*A-Patt-160,*|*A-Wall-Patt-1Hr,*|*A-Flor-ADA,*|*wipeout,*|*s-grid,*|*A-FURN-SITE-PATT,*|*A-Wall-Patt,*|*A-Flor-Patt,*|*A-FLOR-MILL-BELO,*|*A-WALL-FILL-120,*|*A-Anno-Note,*|*A-ANNO-IDEN-CLNG\"")
(setq vfreeze
"\"defpoints\"")
(setq color80
"\"*|*E-NOTE\"")
(setq color50
"\"*|*E-LITE-EQPM-N-D,*|*E-LITE-CLNG-N-D\"")
(setq color240
"\"*|*E-FIRE-EQPM-N-D\"")
(setq color210
"\"*|*E-POWR-EQPM-N-D\"")
(setq color253
"\"*|*A-Conc-Patt,*|*A-FLOR-Flor,*|*A-ROOF-LINE,*|*Site-Lscp-Plnt,*|*A-FLOR-FNSH,*|*F-EQPT-FEC\"")
(command "vplayer" "freeze" gfreeze "all" "freeze" vfreeze "x" "")
(command "-layer" "freeze" gfreeze "")
(command "-layer" "color" "80" color80
"color" "240" color240
"color" "210" color210
"color" "253" color253
"color" "50" color50 "")
(princ))

(defun c:sitela()
(setq gfreeze
"\"*|*A-Anno-Note,*|*A-Patt-160,*|*A-Wall-Patt-1Hr,*|*A-Flor-ADA,*|*wipeout,*|*s-grid,*|*A-FURN-SITE-PATT,*|*A-Wall-Patt,*|*A-Flor-Patt,*|*A-FLOR-MILL-BELO,*|*A-WALL-FILL-120,*|*A-Anno-Note,*|*A-ANNO-IDEN-CLNG,*|*E-NOTE,*|*E-LITE-EQPM-N-D,*|*E-POWR-EQPM-N-D,*|*A-Conc-Patt,*|*A-ROOF-LINE,*|*Site-Lscp-Plnt,*|*F-EQPT-FEC,*|*A-Site-Hatch,*|*furn*,*|*fixt*,*|*fire*\"")
(setq vfreeze
"\"defpoints\"")
(command "vplayer" "freeze" gfreeze "all" "freeze" vfreeze "x" "")
(command "-layer" "freeze" gfreeze "")
(princ))

;ZOOM TO THE PAPERSPACE SECTION OF THE SYMBOLS LIBRARY
(defun c:zp()
(command "zoom" "-3679,-117,0" "@77,134,0")
(princ))

(defun c:dpf()
(command "-layer" "color" "27" "Defpoints" "")
(command "vplayer" "freeze" "defpoints" "all" "")
(command "vplayer" "thaw" "defpoints" "current" "")
(princ))

(defun c:oe()
(command "offset" "erase" "yes" "" "")
(princ))

;COPIES NAME OF CURRENT LAYER TO CLIPBOARD
(defun c:cpla()
(vlax-invoke
    (vlax-get (vlax-get (vlax-create-object "htmlfile") 'ParentWindow) 'ClipBoardData)
    'setData
    "TEXT"
    (getvar 'clayer)
)
(princ))



;;
(defun c:vpfrzlist ()
(setq ent ( car (entsel "\nSelect the viewport ")))
(setq en (entget ent))
(setq layerlist1 nil)
(setq itm (assoc 331 en))
(setq en (cdr (member (assoc 331 en) en)))
(while itm
(setq txtitm (cdr (assoc 2 (entget (cdr itm)))))
(setq layerlist1 (append layerlist1 (list txtitm)))
(setq itm (assoc 331 en))
(setq en (cdr (member (assoc 331 en) en)))
)
(if layerlist1
(princ layerlist1)
)
(princ)
)
