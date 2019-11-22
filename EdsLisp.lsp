;makes the fillet command work again
(command "redefine" "fillet")

;makes the selectsimilar command work again
(command "redefine" "selectsimilar")

;change layer to 0 then choose file to xref and insert at 0,0,0 and zoom to extents.
(defun c:ix()
	(command "filedia" "0")
	(command "clayer" "0")
	(command "-xref" "o" pause "0,0,0" "1" "1" "0")
	(command "zoom" "extents")
	(command "filedia" "1")
(princ)
)

(defun c:dp0()
(command "-bedit")
(c:dp)
(command "point" "0,0,0")
(command "bclose" "")
(princ)
)

;delete current page layout
(defun c:ld()
(command "layout" "delete" "")
(princ)
)

;sets current layer to "0"
(defun c:L0()
(command "clayer" "0")
(princ)
)

;Load EdsLisp
;You'll need to change the filename to be yours. If it doesn't work you might have to change the folder it's in to be in Autocad's searchable path? Or you might be able to get away with making the filename include the complete path. 
(defun c:lel()
(load "edslisp.lsp")
(princ)
)

;change drawing units to decimal
(defun c:dec()
(command "-units" "2" "8" "1" "2" "0.00" "no")
(princ)
)

;change drawing units to architectural
(defun c:arch()
(command "-units" "4" "32" "1" "2" "0.00" "no")
(princ)
)

;sets the osnap and polar the way i usually like it
(defun c:65()
(command "snap" "off")
(command "osmode" "6591")
(command "autosnap" "63")
(princ)
)

;turns off osnap and polar
(defun c:66()
(command "snap" "off")
(command "osmode" "0")
(command "autosnap" "0")
(princ)
)

(defun c:gg()
(command "osmode" "0")
(command "autosnap" "0")
(command "snap" "on")
(command "snap" "aspect" "24" "24")
(princ)
)

(defun c:gh()
(command "osmode" "0")
(command "autosnap" "0")
(command "snap" "on")
(command "snap" "aspect" "12" "12")
(princ)
)

;allows you to change all layers of one color to another color
(defun c:colorchange (/ c1 c2 )
    (vl-load-com)
    (setq c1 (getint " what is the original color: ") c2 (getint " what is the new color: "))
    (vlax-for layer (vla-get-layers (vla-get-activedocument (vlax-get-acad-object)))(if (= c1 (vla-get-color layer))(vla-put-color layer c2)))
    (prin1)
)

;zoom to 24x36 sheet
(defun c:zs()
(command "zoom" "0,0,0" "36,24")
(princ)
)

;zoom to 30x42 sheet
(defun c:z1()
(command "zoom" "0,0,0" "42,30")
(princ)
)

;reconcile all layers
(defun c:lr()
(command "-layer" "e" "*" "")
(princ)
)

;turn on all the layers
;lock all the viewports
;rotate model space to be WCS
;turn attribute dialogs back on
;zoom all layouts to 24x36 sheet
;set pdmode to 3
;change current layer to 0
;save file, and close.
(defun c:zc()
(c:gn)
(command "layerclose")
(command "layon")
(c:lockvp)
(c:mz)
(c:ret)
(command "attdia" "1")
(command "filedia" "1")
(c:arch)
(foreach layout(layoutlist)(setvar "ctab" layout)(command "ucs" "world")(command "zoom" "0,0,0" "@36,24"))
(c:p0)
(c:l0)
(command "qsave")
(command "close")
(princ)
)

;change layer to g-anno-nplt.
(defun c:np()
(command "clayer" "g-anno-nplt")
(princ)
)


;lock all viewports in current page layout.
(defun c:lv()
(command "-vports" "lock" "on" "all" "")
(princ)
)

;copy whatever is selected into clipboard with basepoint 0,0,0.
(defun c:c0()
(command "copybase" "0,0,0")
(princ)
)

;paste whatever is in clipboard to insertion point 0,0,0.
(defun c:00()
(command "pasteclip" "0,0,0")
(princ)
)

;reload all xrefs.
(defun c:rx()
(command "-xref" "reload" "*")
(princ)
)

;purge blocks named xx
(defun c:px()
(command "-purge" "blocks" "xx" "n")
(princ)
)

;enter "lockvp" to lock all viewports in all page layouts
(defun c:lockvp()
	(foreach layout(layoutlist)
		(setvar "ctab" layout)
		(command "pspace")
		(command "-vports" "lock" "on" "all" "")
	)
(princ)
)

;enter "ulockvp" to unlock all viewports in all page layouts
(defun c:ulockvp()
	(foreach layout(layoutlist)
		(setvar "ctab" layout)
		(command "-vports" "lock" "off" "all" "")
	)
(princ)
)

;viwport freeze anything on ada layers in all viewports
(defun c:rad()
(command "vplayer" "freeze" "*ada*" "all" "")
(command "-layer" "freeze" "*ada*" "")
(princ)
)

;vertial xline
(defun c:xv()
(command "xline" "v")
(princ)
)

;horizontal xline
(defun c:xh()
(command "xline" "h")
(princ)
)

;vertial and horizontal xlines at 0,0,0
(defun c:x0()
(command "xline" "ver" "0,0,0" "")
(command "xline" "hor" "0,0,0" "")
(princ)
)

;set pdmode to "0"
(defun c:p0()
(command "pdmode" "0")
(princ)
)

;set pdmode to "3"
(defun c:p3()
(command "pdmode" "3")
(princ)
)

;set pdmode to 3 and start point command
(defun c:po()
(command "pdmode" "3")
(command "point")
(princ)
)

;set imageframe to "0" and show plot preview
(defun c:i0()
(command "imageframe" "0")
(princ)
)

;set imageframe to "2" and show plot preview
(defun c:i2()
(command "imageframe" "2")
(princ)
)

;duplicate selected object is same location
(defun c:dup()
(command "copy" (ssget) "" "0,0,0" "0,0,0")
(princ)
)

;switch to model tab, zoom extents, save and close
(defun c:zec()
(command "layerclose")
(command "layon")
(command "attdia" "1")
(command "filedia" "1")
(c:ret)
(c:arch)
(c:p0)
(c:l0)
(command "model")
(command "zoom" "extents" "qsave" "close")
(princ)
)

;change "ucs" to "world" and rotate view to match
(defun c:ret()
(command "ucs" "world")
(command "plan" "current")
(princ)
)

;close without saving
(defun c:cn()
(command "_close" "_y")
(princ)
)

;paste whatever is in clipboard at 0,0,0 on each page layout
(defun c:99()
	(foreach layout(layoutlist)
		(setvar "ctab" layout)
		(c:00)
	)
(princ)
)

;purge and set up new layers for as built drawing
(defun c:asbl
()
	;(command "-xref" "detach" "*")
	(command "-purge" "layers" "*" "no")
	(command "-purge" "blocks" "*" "no")
	(command "-layer" 
		"new" "ab-image" 
		"new" "ab-wall" 
			"color" "80" "ab-wall" 
		"new" "ab-above" 
			"color" "14" "ab-above" 
			"ltype" "hidden" "ab-above" 
		"new" "ab-below" 
			"color" "10" "ab-below" 
			"ltype" "hidden" "ab-below" 
		"new" "ab-elec" 
			"color" "9" "ab-elec" 
		"new" "ab-stair-rail" 
			"color" "2" "ab-stair-rail" 
		"new" "ab-door" 
			"color" "1" "ab-door" 
		"new" "ab-floor" 
			"color" "11" "ab-floor" 
		"new" "ab-window" 
			"color" "12" "ab-window" 
		"new" "ab-roof" 
			"color" "magenta" "ab-roof" 
		"new" "ab-fixt" 
			"color" "190" "ab-fixt"
		"new" "ab-column" 
			"color" "4" "ab-column"
		"new" "ab-beam" 
			"color" "13" "ab-beam"
			"ltype" "center" "ab-beam"
		"new" "ab-iden" 
			"color" "4" "ab-iden"
			"plot" "no" "ab-iden"
		"new" "ab-anno" 
			"color" "51" "ab-anno"
	"")
(command "clayer" "ab-wall")
(command "insert" "kjg north arrow=kjg north arrow.dwg" #nil)
(princ)
)

;select everything in a drawing and rotate it 90 degrees counter clockwise
(defun c:r9()
(command "rotate" "all" "" "0,0,0" "90")
(princ)
)

(defun c:r4()
(command "rotate" (ssget)"" pause "90")
(command "move" (command "select" pause) pause pause)
(princ)
)

(defun c:r5()
(command "rotate" (ssget)"" pause "270")
(command "move" (command "select" pause) pause pause)
(princ)
)


;setup electrical layers purge all unused layers. purge all unused blocks. insert all the electrical common layers. insert the version of the kjg north arrow that i fixed.
(defun c:sue()
	(command "-purge" "layers" "*" "no")
	(command "-purge" "blocks" "*" "no")
	(c:mz)
	(command "insert" "elec common layers=elec common layers.dwg" #nil)
	(command "insert" "kjg north arrow=kjg north arrow.dwg" #nil)
	(command "insert" "h21=h21.dwg" #nil)
	(command "insert" "c-notewheel=c-notewheel.dwg" #nil)
(princ)
)

;For IU Projects 
;setup electrical layers purge all unused layers. purge all unused blocks. insert all the electrical common layers. insert the version of the kjg north arrow that i fixed.
(defun c:suiu()
	(command "-purge" "layers" "*" "no")
	(command "-purge" "blocks" "*" "no")
	(c:mz)
	(command "insert" "IU_Electrical=IU_Electrical.dwg" #nil)
	(command "insert" "kjg north arrow=kjg north arrow.dwg" #nil)
	(command "insert" "h21=h21.dwg" #nil)
	(command "insert" "c-notewheel=c-notewheel.dwg" #nil)
(princ)
)

;setup elevation layers. purge all unused layers. purge all unused blocks. insert all the elevation layers.
(defun c:elevla()
	(command "-purge" "layers" "*" "no")
	(command "-purge" "blocks" "*" "no")
	(c:mz)
	(command "insert" "eElevationLayers=ElevationLayers.dwg" #nil)
(princ)
)

;insert note spacing block
(defun c:nl()
(c:dpl)
(command "insert" "notespacing=notespacing.dwg" pause "1" "1" "0")
(princ)
)

;move note spacing block
(defun c:nn()
(command "osmode" "9")
(command "erase" (ssget)"")
(command "insert" "notespacing.dwg" "@" "1" "1" "0")
(command "move" (ssget)"")
(princ)
)

;move note spacing block
(defun c:nb()
(command "osmode" "1")
(command "ucs" pause "")
(command "erase" (ssget)"")
(command "osmode" "0")
(command "insert" "notespacing=notespacing.dwg" "0,0,0" "1" "1" "0")
(command "osmode" "65")
(princ)
)

(defun c:r1()
(command "rotate" (ssget)"" pause "180")
(princ)
)


;lock all the viewports, set xrefoverride to "1" and make all the xref layers gray except for Seal and Logos
(defun c:xgray()
(c:lockvp)
(command "xrefoverride" "1")
(command "-layer" "color" "8" "*|*" "color" "253" "*furn*" "color" "253" "*fix*" "")
(command "visretain" "0")
(command "-xref" "reload" "*seal*")
(command "visretain" "1")
(princ)
)

;lock all the viewports, set xrefoverride to "1" and make all the xref layers color 150 except for Seal and Logos
(defun c:iugray()
(c:lockvp)
(command "xrefoverride" "1")
(command "-layer" "color" "150" "*|*" "color" "7" "*area*iden*" "")
(command "visretain" "0")
(command "-xref" "reload" "*seal*")
(command "visretain" "1")
(princ)
)

;switch to model tab
(defun c:mm()
(command "model")
(princ)
)

;switch to model tab and zoom to extents
(defun c:mz()
(command "model" "zoom" "extents")
(princ)
)

;set current layer to defpoints
(defun c:dp()
(command "clayer" "defpoints")
(princ)
)

;isolate chosen layers by turning off all others
(defun c:lio()
(command "layiso" "settings" "off" "off")
(princ)
)

;isolate chosen layers by locking and fading
(defun c:lil()
(command "layiso" "settings" "lock" "65")
(princ)
)

;set plot setting for current layout
(defun c:pts()
(command "-layer" "color" "7" "G-Anno-Ttlb" "")
(command "_script" "plotsettings.scr")
(princ)
)

;set plot setting for current layout
(defun c:psiu()
(command "_script" "PlotSettingsIU.scr")
(princ)
)


;zoom to revision list
(defun c:zr()
(command "zoom" "31.85,3.48" "35.6,6.4")
(princ)
)

;zoom to project name
(defun c:zt()
(command "zoom" "32.6,10.1" "35.24,17.21")
(princ)
)

;zoom to project name
(defun c:zn()
(command "zoom" "27.5,16" "32.5,23.2")
(princ)
)

;viwport freeze 0 layer in a selected viwport
(defun c:t0()
(command "vplayer" "freeze" "0" "select")
(princ)
)

;change layer to g-anno-nplt and start mview command
(defun c:vs()
(command "-layer" "new" "g-anno-nplt" "color" "4" "g-anno-nplt" "set" "g-anno-nplt" "")
(command "mview")
(princ)
)

;set pdmode to 3 then run divide command
(defun c:ddv()
(command "pdmode" "3")
(command "divide")
(princ)
)

;create 01-delete layer
(defun c:md()
(command "-layer" "new" "01-delete" "color" "1" "01-delete" "freeze" "01-delete" "plot" "no" "01-delete" "")
(princ)
)

;thaw 01-delete layer
(defun c:t1()
(command "-layer" "thaw" "01-delete" "")
(princ)
)

;freeze 01-delete layer
(defun c:f1()
(command "-layer" "freeze" "01-delete" "")
(princ)
)

;turn off all the xref layers
(defun c:xro()
(command "-layer" "off" "*|*" "")
(princ)
)

;select all and move to "0" layer
(defun c:a0()
(command "chprop" "all" "" "layer" "0" "")
(princ)
)

;move selection to "01-delete" layer
(defun c:d1()
(command "chprop" (ssget)"" "la" "01-delete" "")
(princ)
)

(defun c:vf()
(command "chprop" (ssget)"" "la" "C-SITE-CURB-N" "")
(princ)
)

(defun c:vd()
(command "chprop" (ssget)"" "la" "C-SITE-STRIPE" "")
(princ)
)

(defun c:w1()
(command "chprop" (ssget)"" "la" "a-wall-opening" "")
(princ)
)

(defun c:pe()
(command "chprop" (ssget)"" "la" "e-powr-eqpm-e" "")
(princ)
)

;turn off osnap, start move command, then set osmode back 6591
(defun c:mf()
(command "osmode" "0")
(command "orthomode" "0")
(command "autosnap" "0")
(command "move" (ssget)"")
(princ)
)

(defun c:mo()
(command "osmode" "6591")
(command "move" (ssget)"")
(princ)
)

;move an object by picking it's center and placing it in the mid of two chosen points
(defun c:m,()
(command "osmode" "10")
(command "move" (ssget)"" "m2p" pause "m2p" pause)
(princ)
)

;Pick UCS and place meter location at mid of chosen points 
(defun c:11()
(command "osmode" "1")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "ucs" "3p" p1 p2 "")
(command "-insert" "FilledSemi" "m2p" (trans p1 0 1) (trans p2 0 1)"1" "1" "0")
(command "osmode" "6591")
(command "ucs" "world")
(princ)
)

;Pick UCS and place meter bank location at mid of chosen points 
(defun c:121()
(command "osmode" "1")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "ucs" "3p" p1 p2 "")
(command "-insert" "mct1" "m2p" (trans p1 0 1) (trans p2 0 1)"1" "1" "0")
(command "osmode" "6591")
(command "ucs" "world")
(princ)
)

;Pick UCS and place meter bank location at mid of chosen points 
(defun c:122()
(command "osmode" "1")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "ucs" "3p" p1 p2 "")
(command "-insert" "mct2" "m2p" (trans p1 0 1) (trans p2 0 1)"1" "1" "0")
(command "osmode" "6591")
(command "ucs" "world")
(princ)
)

;places meter and transformer on trinitas site plans
(defun c:22()
(command "osmode" "0")
(command "ucs" "world")
(command "-insert" "SiteMeter" pause "1" "1" "0")
;(command "-insert" "SiteTransformer" pause "1" "1" "0")
;(command "osmode" "8")
;(command "pline" pause pause pause "")
;(command "trim" pause)
(princ)(c:65)
)

;places a point "between two points"
(defun c:33()
(command "osmode" "139")
(command "point" "m2p" pause)
(command "osmode" "6591")
(princ)
)

;places pointers for meters on trinitas site plans
(defun c:45()
(command "osmode" "8")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "ucs" "3p"(trans p1 0 1)(trans p2 0 1)"")
(command "-insert" "MeterPoint" "0,0,0" "1" "1" "0")
(command "line" "127,0,0" (trans p2 0 1) "")
(command "ucs" "world")
(c:65)
(princ)
)

;creates guidlines for placing conduit lines on trinitas site plans
(defun c:55()
(command "osmode" "3")
(setq pa (getpoint))
(setq pb (getpoint))
(setq pc (getpoint))
(setq pd (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(setq p3 (trans pc 1 0))
(setq p4 (trans pd 1 0))
(command "ucs" "3p" "m2p"(trans p1 0 1)(trans p2 0 1) "m2p"(trans p3 0 1)(trans p4 0 1)"")
(command "xline" "h" "m2p" (trans p1 0 1)(trans p2 0 1)"")
(command "xline" "v" (trans p1 0 1)(trans p3 0 1)(trans p4 0 1)"")
(command "osmode" "168")
(command "pline" (trans p4 0 1) pause)
(command "ucs" "world")
(princ)
)

;set ucs to 0,0,0 but oriented to current view, and sets osmode to 6591
(defun c:cd()
(c:csv)
(c:65)
(princ)
)

;set radius to 48" and fillet
(defun c:f2()
(command "filletrad" "48")
(command "fillet" "polyline" pause)
(princ)
)

;set radius to 0 and fillet
(defun c:f3()
(command "filletrad" "0")
(command "fillet" "polyline" pause)
(princ)
)

;Set ucs to World 0,0,0, but facing current view direction
(defun c:csv()
(command "ucs" "world")
(command "ucs" "view")
(princ)
)

;set offset for door frames
(defun c:o2()
(command "offset" "erase" "yes" "2" pause pause pause pause "")
(c:o0)
(princ)
)

;set offset erase to NO
(defun c:o0()
(command "offset" "erase" "no" "" "")
(princ)
)

;Unload a chosen xref
(defun c:xru()
(command "xrefunload")
(princ)
)

;sets current layer to "E-LITE-EQPM-N-D"
(defun c:L1()
(command "clayer" "E-LITE-EQPM-N-D")
(princ)
)

;sets current layer to "E-POWR-CIRC-N-D"
(defun c:L2()
(command "clayer" "E-POWR-CIRC-N-D")
(princ)
)

;sets current layer to "E-POWR-CIRC-NUMB"
(defun c:L3()
(command "clayer" "E-POWR-CIRC-NUMB")
(princ)
)

;sets current layer to "E-POWR-CIRC-NUMB"
(defun c:L4()
(command "clayer" "E-POWR-IDEN-N-D")
(princ)
)

;thaws defpoints layer in current viewport
(defun c:dpl()
(command "vplayer" "thaw" "defpoints" "current" "")
(princ)
)

;Layer settings for electrical sheets using the Clubhouse Plan Xrefs. From Bloomington.
(defun c:clubla()
(setq gfreeze
"\"*|A-Patt-160,*|A-Wall-Patt-1Hr,*|A-Flor-ADA,*|wipeout,*|s-grid,*|A-FURN-SITE-PATT,*|A-Wall-Patt,*|A-Flor-Patt,*|A-FLOR-MILL-BELO,*|A-WALL-FILL-120,*|A-Anno-Note,*|A-ANNO-IDEN-CLNG,*|A-Patt-110,*|A-FLOR-ADA_\"")
(setq vfreeze
"\"defpoints\"")
(setq color80
"\"*|E-NOTE\"")
(setq color50
"\"*|E-LITE-EQPM-N-D,*|*E-LITE-CLNG-N-D\"")
(setq color240
"\"*|E-FIRE-EQPM-N-D\"")
(setq color210
"\"*|E-POWR-EQPM-N-D\"")
(setq color252
"\"*|A-Conc-Patt,*|A-FLOR-Flor,*|A-ROOF-LINE,*|Site-Lscp-Plnt,*|A-FLOR-FNSH,*|F-EQPT-FEC,*|A-FURN-SITE,*|3DTERRAIN\"")
(command "vplayer" "freeze" gfreeze "all" "freeze" vfreeze "x" "")
(command "-layer" "freeze" gfreeze "")
(command "-layer" "color" "80" color80
"color" "240" color240
"color" "210" color210
"color" "252" color252
"color" "50" color50 "")
(princ)
)

;Layer settings for electrical site plan using the Clubhouse Plan Xrefs. From Bloomington.
(defun c:sitela()
(setq gfreeze
"\"*|*A-Anno-Note,*|*A-Patt-160,*|*A-Wall-Patt-1Hr,*|*A-Flor-ADA,*|*wipeout,*|*s-grid,*|*A-FURN-SITE-PATT,*|*A-Wall-Patt,*|*A-Flor-Patt,*|*A-FLOR-MILL-BELO,*|*A-WALL-FILL-120,*|*A-Anno-Note,*|*A-ANNO-IDEN-CLNG,*|*E-NOTE,*|*E-LITE-EQPM-N-D,*|*E-POWR-EQPM-N-D,*|*A-Conc-Patt,*|*A-ROOF-LINE,*|*Site-Lscp-Plnt,*|*F-EQPT-FEC,*|*A-Site-Hatch,*|*furn*,*|*fixt*,*|*fire*\"")
(setq vfreeze
"\"defpoints\"")
(command "vplayer" "freeze" gfreeze "all" "freeze" vfreeze "x" "")
(command "-layer" "freeze" gfreeze "")
(princ)
)

;Layer settings for electrical sheets using the Unit Plan Xrefs. From Bloomington.
(defun c:unitla()
	(setq gfreeze
		"\"*|A-Mill-Cabs-Hidn,*|SCREEN-B,*|PLAN NORTH,*|A-Clng-Bkhd,*|A-FLOR-ADA\"")
	(setq vfreeze
		"\"defpoints,*|M-Hvac-Duct-Retn\"")
	(setq color80
		"\"*|E-NOTE\"")
	(setq color50
		"\"*|E-LITE-EQPM-N-D,*|*E-LITE-CLNG-N-D,*|E-LITE-WALL-N-D\"")
	(setq color240
		"\"*|E-FIRE-EQPM-N-D\"")
	(setq color210
		"\"*|E-POWR-EQPM-N-D\"")
	(setq color252
		"\"*|A-Wall-Hidn,*|A-Wall-Hidn-GypB,*|A-APPL,*|A-APPL-ANNO,*|M-HVAC-EQPT,*|A-Flor-Stair-Riser,*|A-ABOVE,*|A-MILL-UPPR\"")
	(setq color250
		"\"*|M-Hvac-Duct-Retn\"")
	(command "vplayer" "freeze" gfreeze "all" "freeze" vfreeze "x" "")
	(command "-layer" "freeze" gfreeze "")
	(command "-layer" "color" "80" color80
		"color" "240" color240
		"color" "210" color210
		"color" "252" color252
		"color" "250" color250
		"color" "50" color50 "")
(princ)
)

;ZOOM TO THE PAPERSPACE SECTION OF THE SYMBOLS LIBRARY
(defun c:zp()
(command "zoom" "-3679,-117,0" "@77,134,0")
(princ)
)

;freezes defpoints layer in all viewports except current page layout
(defun c:dpf()
(command "-layer" "color" "27" "Defpoints" "")
(command "vplayer" "freeze" "defpoints" "all" "")
(command "vplayer" "thaw" "defpoints" "current" "")
(princ)
)

;sets offset erase to yes
(defun c:oe()
(command "offset" "erase" "yes" "" "")
(princ)
)

;COPIES NAME OF CURRENT LAYER TO CLIPBOARD
(defun c:cpla()
(command "laymcur")
	(vlax-invoke
		(vlax-get (vlax-get (vlax-create-object "htmlfile") 'ParentWindow) 'ClipBoardData)
		'setData
		"TEXT"
		(getvar 'clayer)
	)
(command "clayer" "0")
(princ)
)

;inserts blocks for electrical plan note placement
(defun c:ew()
(command "-insert" "*ElecNoteWheel.dwg" pause "1" "0")
(princ)
)

;inserts block of electrical nots that allows e1 - e6 to work
(defun c:we()
(command "-insert" "*ElecNoteWheel-2.dwg")
(princ)
)

;the nex few are for placing electical note pointers. Must use "we" first.
(defun c:e1()
(c:66)
(command "-insert" "*Enote1" pause "1" "0")
(c:65)
(c:pn)
(princ)
)

(defun c:e2()
(c:66)
(command "-insert" "*Enote2" pause "1" "0")
(c:65)
(c:pn)
(princ)
)

(defun c:e3()
(c:66)
(command "-insert" "*Enote3" pause "1" "0")
(c:65)
(c:pn)
(princ)
)

(defun c:e4()
(c:66)
(command "-insert" "*Enote4" pause "1" "0")
(c:65)
(c:pn)
(princ)
)

(defun c:e5()
(c:66)
(command "-insert" "*Enote5" pause "1" "0")
(c:65)
(c:pn)
(princ)
)

(defun c:e6()
(c:66)
(command "-insert" "*Enote6" pause "1" "0")
(c:65)
(c:pn)
(princ)
)


;divides a pline that I use for finding locations of receptacles in a room
;so far I still have to select the pline twice
(defun c:dvr()
(c:p3)
(setq Wall_Length (vla-get-length (vlax-ename->vla-object (car (entsel)))))
(setq ByX (/ Wall_Length 36))
(setq R_Space (1+(fix ByX)))
(command "divide" pause R_Space)
(princ)
)


;divides a line or polyline into equial sections that are less than 12.5' each. for the purpose of place objects less than 25' apart. 
;so far I still have to select the object twice
(defun c:dv25()
(c:p3)
(setq Wall_Length (vla-get-length (vlax-ename->vla-object (car (entsel)))))
(setq ByX (/ Wall_Length 150))
(setq R_Space (1+(fix ByX)))
(command "divide" pause R_Space)
(princ)
)

;freeze a layer both in viewport and in modelspace
(defun c:kl()
(setq kill-layer (getstring "What Layer?"))
(command "vplayer" "freeze" kill-layer "all" "")
(command "-layer" "freeze" kill-layer "")
(princ)
)

;unlock all layers
(defun c:ula()
(command "-layer" "unlock" "*" "")
(princ)
)

;rotates model space view to FRONT but leaves the UCS to WORLD.
;Handy for finding objects in a 2D drawing that are in a plane other the "Z" elevation of "0"
(defun c:front()
(command "-view" "front")
(command "ucs" "world")
(princ)
)

;Returns the view and UCS to the normal TOP view. 
(defun c:top()
(command "ucs" "world")
(command "plan" "current")
(princ)
)

;rotates the model space view to SOUTHWEST ISOMETRIC but leaves the UCS to WORLD. 
;Handy for finding objects in a 2D drawing that are in a plane other the "Z" elevation of "0"
(defun c:iso()
(command "-view" "swiso")
(command "ucs" "world")
(princ)
)

;insert H21 note number block and asks to manually input the attribute number.
(defun c:pn()
(command "clayer" "e-note")
(command "attreq" "1")
(command "attdia" "0")
(command "-insert" "h21=h21.dwg" pause "1" "1" "0")
(princ)
)

;moves a chosen object to the circuit number layer
(defun c:df()
(command "chprop" (ssget)"" "la" "E-POWR-CIRC-NUMB" "")
(princ)
)

;places selected object onto E-LITE-IDEN layer
(defun c:ci()
(command "chprop" "la" "E-LITE-IDEN" "")
(princ)
)

;changes the color of a chosen object's layer to cyan. I dont' remember why I made this.
(defun c:gf()
(command "laymcur")
(command "-layer" "color" "4" "" "")
(princ)
)

;opens Block Editor and changes all the layers of the block to "0". Then saves and closes the block.
(defun c:dx()
(command "-bedit")
(c:a0)
(command "bclose" "")
(princ)
)

;For use in block editor. places all objects on "0" layer and saves and closes block editor.
(defun c:bv()
(c:a0)
(command "bclose" "")
(princ)
)

;inserts "qsym" block. I dont' remember what qsym block is.
(defun c:iu()
(command "attdia" "0")
(command "-insert" "qsym" pause "1" "1" "0")
(princ)
)

;insert note location block
(defun c:n0()
(command "insert" "*NoteLocation.dwg" "0,0,0" "" "" "")
(princ)
)

;insert my note location guidelines block
(defun c:ng()
(command "ucs" "world")
(c:65)
(command "insert" "NoteGuides=NoteGuides.dwg" "0,0,0" "" "" "")
(princ)
)



(defun C:P9(/ I LW P1 P2 P3)
 (vl-load-com)
 (or doc (setq doc (vla-get-ActiveDocument (vlax-get-acad-object))))
 (if (and (setq lw (entsel "\n Select segment in a polyline. "))
          (= (cdr (assoc 0 (entget (car lw)))) "LWPOLYLINE")
     ) ;_  and
  (progn
   (setq i  (fix (vlax-curve-getParamAtPoint
                  (car lw)
                  (vlax-curve-getClosestPointTo (car lw) (cadr lw))
                 ) ;_  vlax-curve-getParamAtPoint
            ) ;_  fix
         p1 (vlax-curve-getPointAtParam (car lw) i)
         p3 (vlax-curve-getPointAtParam (car lw) (1+ i))
         lw (vlax-ename->vla-object (car lw))
   ) ;_  setq
   (princ "\n Set visually curvature of a segment. ")
   (vla-StartUndoMark doc)
   (while (and (setq p2 (grread 5)) (= (car p2) 5))
    (vla-SetBulge
     lw
     i
     ((lambda (a) (/ (sin a) (cos a)))
      (/ (- (angle (cadr p2) p3) (angle p1 (cadr p2))) 2.)
     )
    ) ;_  vla-SetBulge
   ) ;_  while
   (vla-EndUndoMark doc)
  ) ;_  progn
  (princ "\n It is select nothing or object not a polyline. ")
 ) ;_  if
) ;_  defun

;explode all groups
(defun c:gn()
(command "ungroup" "all" "yes")
(princ)
)

;freeze the circuit number layer
(defun c:fcn()
(command "-layer" "freeze" "e-powr-circ-numb*" "")
(princ)
)

;thaw the circuit number layer
(defun c:tcn()
(command "-layer" "thaw" "e-powr-circ-numb*" "")
(princ)
)

;choose a piece of text to be justified "left"
(defun c:jl()
(command "justifytext" pause pause "tl")
(princ)
)

;choose a piece of text to be justified "right"
(defun c:jr()
(command "justifytext" pause pause "right")
(princ)
)

;choose a piece of text to be justified "middle center"
(defun c:jm()
(command "justifytext" pause pause "mc")
(princ)
)

;change a chosen layer to color 253
(defun c:253()
(setq c253 (getstring "What Layer?"))
(command "-layer" "color" "253" c253 "")
(princ)
)

;paste object at the "middle between two points"
(defun c:pm()
(command "pasteclip" "m2p" pause pause)
(princ)
)

(defun c:lk()
(command "zoom" "extents")
(command "laywalk")
(princ)
)

;start changeblock command
(defun c:cb()
(command "changeblock")
(princ)
)

;selectsimilar and erase what was selected
(defun c:se()
(command "SELECTSIMILAR")
(command "erase")
(princ)
)

;detach all xrefs
(defun c:det()
(command "-xref" "detach" "*")
(princ)
)

;detach seal/logos xref
(defun c:dex()
(command "-xref" "detach" "*seal-logos*")
(princ)
)

;close xref pallet
(defun c:cxr()
(command "EXTERNALREFERENCESCLOSE")
(princ)
)

;place everything at an elevation of "0"
(defun c:0p()
(command "change" "all" "" "properties" "elev" "0" "")
(princ)
)

;place everything at an elevation of "0" and close block editor
(defun c:0p0()
(command "change" "all" "" "properties" "elev" "0" "")
(command "bclose" "")
(princ)
)

;SELECTSIMILAR
(defun c:ss()
(command "selectsimilar")
(princ)
)

;Switch to Model Tab
(defun c:mm()
(command "model")
(princ)
)

;Revcloud Command
(defun c:rvc()
(command "revcloud" "a" ".0625" ".1875" #nil)
(command "revcloud" "object" (ssget) "no")
(princ)
)

;Revcloud Command
(defun c:rvcx()
(command "revcloud" "a" ".25" ".75" #nil)
(command "revcloud" "object" (ssget) "no")
(princ)
)

;Draw Window
(defun c:dw()
(command "osmode" "3")
(command "clayer" "ab-window")
(command "rectang" pause pause)
(command "rectang" "@" pause)
(command "clayer" "ab-wall")
(c:65)
(princ)
)

;paste from clipboard at 90 degrees
(defun c:x1()
(command "pasteclip" "R" "90")
(princ)
)

;paste from clipboard at 180 degrees
(defun c:x2()
(command "pasteclip" "R" "180")
(princ)
)

;paste from clipboard at 270 degrees
(defun c:x3()
(command "pasteclip" "R" "270")
(princ)
)

(defun c:fxb()
(c:a0)
(c:0p)
(command "explode" "all" "")
(command "justifytext" "all" "" "" "tl")
(command "pasteclip" pause)
(command "matchprop" pause)
(princ)
)

;Block Editor
(defun c:be()
(command "-bedit")
(princ)
)

;image attach
(defun c:iat()
(command "clayer" "ab-image")
(command "imageattach")
(princ)
)

(defun c:ff()
(command "fillet")
)

(defun c:wf()
(command "wipeoutframe")
(princ)
)

(defun c:sb()
(command "setbylayer" "yes" "yes")
(princ)
)

(defun c:prg()
(command "-purge" "all" "*" "no")
(princ)
)

; 
(defun c:tg()
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "ucs" "3p" p1 p2 "")
(command "-insert" "TIC120_4" "0,0,0" "1" "1" "0")
(command "ucs" "world")
(princ)
)

(defun c:ty()
(setq pb (getpoint))
(setq pa (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(command "-insert" "TIC120_4" "r" p1 p2 p1 "1" "1" "0")
(princ)
)


;set ucs and view to predetermined UCS named S1
(defun c:s1()
(command "ucs" "named" "restore" "s1")
(command "plan" "current")
(princ)
)

;starts Solidedit command
(defun c:sed()
(command "solidedit" "face" "extrude")
(princ)
)

;Sets visual style to 2d Wireframe
(defun c:2d()
(command "-visualstyles" "c" "2")
(princ)
)

;Sets visual style to 3d Hidden
(defun c:3h()
(command "-visualstyles" "c" "h")
(princ)
)

;Sets all the xref layer colors to 250
(defun c:x25()
(command "-layer" "color" "250" "*|*")
(princ)
)

;Sets the grid and snap for lining up electrical sheet notes
(defun c:tset()
(command "snap" "aspect" ".3" ".05")
(command "grid" "aspect" ".3" ".05")
(princ)
)

;turns off grid and snap and sets Osnap back to 6591
(defun c:trt()
(command "snap" "off")
(command "grid" "off")
(c:65)
(princ)
)

;starts REFEDIT, moves everything to 0 elevation and closes REFEDIT
(defun c:r0()
(command "refedit")
(c:0p)
(command "refclose")
(princ)
)

(defun c:bb()
(command "_pasteblock" "@")
(princ)
)

(defun c:at()
(command "attsync" "select" pause "")
(princ)
)

;draws a door on the AB-Door layer by picking the two corners of the door opening
(defun c:fd()
(command "clayer" "ab-door")
(command "osmode" "1")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(setq r1 (distance p1 p2))
(setq p3 (list 0 r1))
(setq p4 (list r1 0))
(setq p5 (list p4 2 0))
(command "ucs" "3p" p1 p2 "")
(command "rectangle" "0,0" (list 2 r1)"")
(command "mirror" (entlast) "m2p" "0,0" p4 "@0,1")
(command "arc" p4 "c" "0,0" "angle" "90")
(command "mirror" (entlast) "m2p" "0,0" p4 "@0,1")
(command "osmode" "6591")
(command "ucs" "world")
(command "clayer" "ab-wall")
(princ)
)

;inserts door frame blocks into door openings
(defun c:ffd()
(command "clayer" "ab-door")
(command "osmode" "2")
(setq pa (getpoint))
(setq pb (getpoint))
(setq p1 (trans pa 1 0))
(setq p2 (trans pb 1 0))
(setq r1 (distance p1 p2))
(setq p3 (list 0 r1))
(setq p4 (list r1 0))
(command "ucs" "3p" p1 p2)
(command "-insert" "HM_FRAME" "0,0,0" 1 1 0)
(command "mirror" (entlast) "m2p" "0,0" p4 "@0,1")
(command "osmode" "6591")
(command "ucs" "world")
(command "clayer" "ab-wall")
(princ)
)

(defun c:pb()
(command "-purge" "blocks" "*" "no")
(princ)
)

(defun c:q1()
(c:be)
(c:00)
(command "bclose" "")
(princ)
)

(defun c:3c()
(command "3dclip")
(command "pspace")
(princ)
)

(defun c:w2()
(c:be)
(command "erase" "all" "")
(c:00)
(command "bclose" "")
(princ)
)