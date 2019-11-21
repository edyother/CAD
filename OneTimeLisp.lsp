(command vplayer freeze xbase 3|e-fence,xbase 3|p-roof,xbase 3|p-gutter,xbase 3|e-gutter,xbase 3|e-roof,xbase 3|e-gutter-off,xbase 3|e-roof-off,xbase 3|e-ridge,xbase 3|p-pipe,xbase 3|r-demo-mech,xbase 3|p-sanitary,xbase 3|e-flex,xbase 3|p-cl,xbase 3|p-col# all )


(command vplayer freeze *revision*,*e-flex*,*sanitary*,*pipe*,*ductwork*,*p-clg*,*p-mech*,*r-demo-mech*,*p-cl*,*p-col#*,*ada*,*e-clg*,*e-ftg*,*e-wall-below* all )(princ)

(command -layer color 240 rev )(princ)

(command -layer color 8 *|* )(princ)

(command -layer color 251 *|* )(princ)

(command xrefoverride 1)(command -layer color 250 *|* )(princ)

(command xrefoverride 1)(command -layer color 8 *|* )(princ)

(command xrefoverride 1)(command -layer color 8 *|* )(command -layer color 253 *|*furn* )(princ)

(command -layer color 8 *|* color 80 *e-lite-fixt )(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command _script ploteastview.scr))(command qsave)(command close)(princ)

(command -layer color 250 defpoints )(command ltscale .5)(princ)

(command -layer color 240 xbase|pwall )(princ)

(command vplayer freeze *a-wall-fill-120 all )(princ)

(command vplayer freeze *a-wall-patt all )(princ)

(command vplayer freeze lnwk ltg site|prbldg-t,lnwk ltg site|prbldg-type all )(princ)

(command xrefoverride 1)(command -layer color 251 *|* )(command -layer color 80 *seal* )(princ)

(command xrefoverride 1)(command -layer color 251 *|* )(command -layer color red *seal* )(princ)

(command -layer color 80 *seal* )(princ)

(command xrefoverride 1)(command -layer color 251 *|* )(command -layer color 80 *seal* )(c:zc)(princ)

(command xrefoverride 1)(command -layer color 251 *|* )(command -layer color red *seal* )(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command _script plotsettings.scr))(c:zc)(princ)

(command -layer new rev color 240 rev )(command clayer rev)(princ)

(command -layer new wipeout )(princ)

(command vplayer freeze *wipeout* all )(princ)

(command vplayer freeze *fill* all )(princ)

(command vplayer freeze *zfurn* all )(princ)

(command -layer color 50 *e-lite-clng-n-d )(princ)

(command -layer color 210 *e-powr-eqpm-n-d )(princ)

(command -layer color 210 *e-powr )(princ)

(command -layer color 80 *e-note )(princ)

(command -layer color 240 *e-fire-eqpm-n-d )(princ)

(command -layer color 50 *e-lite-eqpm-n-d )(princ)

(command -layer color 210 *e-powr-eqpm-n-d )(command -layer color 80 *e-note )(command -layer color 50 *e-lite-eqpm-n-d )(command -layer color 240 *e-fire-eqpm-n-d )(command vplayer freeze *wipeout* all )(princ)

(command -layer color 254 *shrub* )(princ)

(command vplayer freeze *hat* all )(princ)

(command -layer color 254 *site-furn* )(princ)

(command vplayer freeze *furn-site-patt* all )(princ)

(command vplayer freeze *a-clng-bkhd all )(princ)

(command vplayer freeze *flor-flor* all )(princ)

(command vplayer freeze *grid* all )(princ)

(command vplayer freeze *a-flor-patt* all )(princ)

(command vplayer freeze *stud*patt* all )(princ)

(command vplayer freeze *a-floor-pattern* all )(princ)

(command vplayer freeze *centerline* all )(princ)

(command vplayer freeze *fnd* all )(princ)

(command vplayer freeze *a-elev-red all )(princ)

(command -layer color 253 *a-wall-patt )(princ)

(command -layer color 253 *a-wall-patt )(command vplayer freeze *grid* all )(command vplayer thaw *a-clng-grid all )(command vplayer freeze *a-flor-patt* all )(command vplayer freeze *stud*patt* all )(command vplayer freeze *a-floor-pattern* all )(command vplayer freeze *centerline* all )(command vplayer freeze *fnd* all )(command vplayer freeze *a-elev-red all )(command vplayer freeze *a-wall-patt all )(princ)

(command -layer color 253 *a-wall-patt )(command vplayer freeze *grid* all )(command vplayer freeze *a-flor-patt* all )(command vplayer freeze *stud*patt* all )(command vplayer freeze *a-floor-pattern* all )(command vplayer freeze *centerline* all )(command vplayer freeze *fnd* all )(command vplayer freeze *a-elev-red all )(command vplayer freeze *a-wall-patt all )(princ)

(command -layer new a-wall-patt color red *a-wall-patt )(princ)

(command layer new e-note-l new e-note-s color 80 *e-note* )(princ)

(command -layer new image color white image )(command vplayer freeze *image all )(princ)

(command vplayer freeze *topo* all )(princ)

(command vplayer freeze *rip* all )(princ)

(command vplayer freeze *cont* all )(princ)

(command vplayer freeze *lnwk-unit* all )(princ)

(command vplayer freeze *defpoints* all )(princ)

(command vplayer freeze *defpoints* except )(princ)

(command vplayer thaw *defpoints* current )(princ)

(command vplayer freeze *wall-patt all )(princ)

(command vplayer freeze *roof* all )(princ)

(command vplayer freeze *clubhouse plan*site-furn* all )(command vplayer freeze *clubhouse plan*p-fixt-flor* all )(command vplayer freeze *clubhouse plan*i-furn* all )(princ)

(command vplayer freeze *a7* all )(command vplayer freeze *wht* all )(princ)

(command vplayer freeze *freeze* all )(command vplayer freeze *phase line* all )(princ)

(command vplayer freeze *deed* all )(princ)

(command vplayer freeze *a-anno-text all )(princ)

(command vplayer freeze *cntl-prop* all )(princ)

(command -layer new 01-delete color red 01-delete freeze 01-delete plot no 01-delete )(princ)

(command -layer new 01-delete color red 01-delete plot no 01-delete )(princ)

(command -layer new 01-delete color red 01-delete freeze 01-delete plot no 01-delete )(c:zec)(princ)

(command -layer color red 01-delete )(princ)

(command -layer color 240 *c-prop-plat boundary collegiate at lawrence )(princ)

(command vplayer freeze *a-furn-site* all )(princ)

(command vplayer freeze *1hr* all )(princ)

(command vplayer freeze *p-fix* all )(princ)

(command vplayer freeze *a-conc-patt* all )(princ)

(command vplayer thaw *defpoints* current )(princ)

(command vplayer freeze *flor-mil* all )(princ)

(command -layer color 240 *f-fire panel n )(princ)

(command vplayer freeze *g-anno-nplt all )(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw g-anno-nplt current ))(princ)

(command vplayer freeze defpoints all )(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw defpoints current ))(princ)

(command vplayer freeze defpoints all )(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw defpoints current ))(c:mz)(c:zc)(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw g-anno-nplt current ))(princ)

(command -layer color 250 *a-wall-intr )(princ)

(command -layer color 250 *strs* )(princ)

e-

(command vplayer freeze *visual* all )(princ)

(command vplayer freeze e-powr-circ-n all )(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command _script plotsettings.scr))(c:zc)(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command _script plotsettings.scr))(princ)

(command _script plotsettings.scr)(princ)

(command -layer new e-powr-eqpm-n-d_4 color 210 e-powr-eqpm-n-d_4 )(princ)

(command -layer new e-powr-circ-numb color 80 e-powr-circ-numb )(princ)

(command -layer new e-powr-circ-numb_4 color 80 e-powr-circ-numb_4 )(princ)

(command -layer new e-note_4 color 80 e-note_4 )(princ)

(c:p0)(command model)(command zoom extents)(c:zc)(princ)

(command -layer color 254 *a-flor-fnsh )(princ)

(command -layer color 8 *m-fan )(princ)

(command xrefoverride 1)(command -layer color 8 *|* color 80 *e-lite-fixt color 253 *furn* color green *a-sign* color 120 *a-sign-fill color 210 *e-powr-eqpm-n-d color 240 *e-fire-eq* )(command vplayer freeze *wipeout* all freeze *a-wall-htch all freeze *a-sect-insl all )(princ)

(command -layer new e-powr-eqpm-n-d color 210 e-powr-eqpm-n-d )(princ)

(command -layer color 210 *e-powr-eqpm-n-d color 240 *e-fire-eq* )(princ)

(command wipeoutframe 0)

(command -layer color cyan a-area-spce-iden )(princ)

(command vplayer freeze *a-clng-gypb* all )(princ)

(command vplayer freeze *a-patt-160* all )(princ)

(command -layer color 8 *fire* )(princ)

(command vplayer freeze defpoints all )(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw defpoints current ))(princ)

(command vplayer freeze *a-flor-furn all )(princ)

(command vplayer freeze *p-fixt all )(princ)

(command vplayer freeze *p-fixt all )(command vplayer freeze *a-flor-furn all )(command vplayer freeze *a-elev-red all )(command vplayer freeze *a-flor-pfix all )(princ)

(command vplayer freeze *p-fixt current )(command vplayer freeze *a-flor-furn current )(command vplayer freeze *a-elev-red current )(command vplayer freeze *a-flor-pfix current )(princ)

(command vplayer freeze defpoints all )(foreach layout(layoutlist)(setvar ctab layout)(command vplayer thaw defpoints current ))(princ)

(command rotate all  0,0,0 90)(princ)

(command insert elec common layers.dwg 0,0,0 1 1 0)(princ)

(command -purge blocks kjg north arrow no)(princ)

(command insert kjg north arrow.dwg #nil)(princ)

(command -purge blocks kjg north arrow no)(command insert kjg north arrow.dwg 0,0,0 1 0)(princ)

(command -purge blocks kjg north arrow no)(command insert kjg north arrow.dwg #nil)(princ)

;scale from 1/4 to 1/8
(command scale all  0,0,0 2)(c:zec)

;scale from 1/8 to 1/4 
(command scale all  0,0,0 .5)(c:zec)

;scale from 1/4 to 3/16
(command scale all  0,0,0 1.33333)(c:zec)

(command select -0.68933,0.82821 0.76096,-0.63516)(princ)

;scale from 1/4 to 1/16
(command scale all  0,0,0 4)(c:zec)

;scale from 1/4 to 1/32
(command scale all  0,0,0 8)(c:zec)

;scale from 1/4 to 1/8
(command scale all  0,0,0 2)(c:zec)

;scale from 1/4 to 3/16
(command scale all  0,0,0 1.33333)(c:zec)

(command -layer new a-elev-110 new a-elev-120 new a-elev-130 new a-elev-140 new a-elev-150 color 110 a-elev-110 color 120 a-elev-120 color 130 a-elev-130 color 140 a-elev-140 color 150 a-elev-150 )

(command -layer new 00-obsolete color 40 00-obsolete plot )(command clayer 00-obsolete)(princ)

(command -layer new 00-obsolete color 40 00-obsolete freeze 00-obsolete plot no 00-obsolete )(princ)

(c:lr)(command model)(command zoom extents)(c:zc)(princ)

(c:lockvp)(command model)(command zoom extents)(c:zc)(princ)

(command vplayer freeze *a-flor-patt all freeze *furn all )(princ)

(command model)(command zoom extents)(foreach layout(layoutlist)(setvar ctab layout)(c:z1))(command qsave)(command close)(princ)

(command model)(command zoom extents)(command ucsicon origin)(command qsave)(princ)

(command vplayer thaw *defpoints* all )(princ)

(command vplayer freeze *|e-powr-clng all )(princ)

(command vplayer freeze *area* all )(princ)

(foreach layout(layoutlist)(setvar ctab layout)(command _script plotsettings.scr))(c:mz)(c:zc)(princ)

(command _script plotsettings.scr)(c:mz)(c:zc)

(command -layer freeze 01-delete )(princ)

(command -layer color 251 *lnwk-plan-* color 1 *|*lite* )(princ)

(command vplayer freeze *lnwk-rcp* all thaw *e-lite-clng-n-d* all )(command xclipframe 0)(princ)

(command clayer defpoints point 0,0,0)(command bclose )

(command -purge layers * no)(command -layer new defpoints )(c:p0)(command clayer defpoints point 0,0,0)(c:zec)

(command -purge all * no)(command clayer 0)(c:zec)

(command vplayer freeze *area* all freeze *property* all freeze defpoints all thaw defpoints current )(princ)

(command -layer color 253 *mill* color 253 *appliance* color 253 *fixture* color 253 *a-wall-hidden* color 253 *screen-b* color 253 *m-hvac-eqpt* color 253 *p-fixt* )(princ)

(command vplayer freeze *0-block* all )(command -layer freeze *0-block* )(princ)

(command vplayer freeze *|*g-anno-nplt* all )(command -layer freeze *|*g-anno-nplt* )(princ)

(command -layer new xref )(princ)

(command -layer freeze 0 )(c:mz)(c:zc)

(command vplayer thaw *0-block* all )(command -layer thaw *0-block* )(command -layer color 253 *0-block )(princ)

(command -layer color 251 *stair* color 253 *a-roof* )(princ)

(command -layer color 253 *a-detl-patt* color 253 *kice* color 253 *s-metl*  )(princ)

(command -layer color 253 *fix* )(princ)

(command -layer color 253 *furn* color 253 *fix* )(princ)

(c:xgray)(command vplayer freeze defpoints all freeze *grid* all )(command -layer color 253 *furn* color 253 *fix* color 253 *eqpm* color 253 *patt* )(princ)

(command -layer color 210 *e-panel* )(princ)

(command vplayer freeze *e-panel* all freeze *ada* all )(princ)

(command -layer color 8 *future* )(princ)

(command -layer color 8 *a-flor-elevator-eqip* )(princ)

(command vplayer freeze *below* all )(princ)

(command vplayer freeze *a-grid* all )(command -layer freeze *a-grid* )(princ)

(command vplayer freeze *m-eqpt-hvac* all )(command -layer freeze *m-eqpt-hvac* )(princ)

(command -layer color 210 *m-eqpt-hvac* )(princ)

(command vplayer freeze *pipe* all )(command -layer freeze *pipe* )(princ)

(command vplayer freeze *|*a-detl-patt* all )(command -layer freeze *|*a-detl-patt* )(princ)

(command -layer color 8 *s-cols* )(princ)

(command -layer color 8 *a-detl-wide* )(princ)

(command -layer color 253 *pipe* )(princ)

(command -layer color 8 *a-ac-compressor* )(princ)

(command vplayer freeze *|*dims* all freeze *|*area-iden* all  freeze *|*a-genm* all freeze *|*a-wall-patt* all freeze *|*g-anno-revc* all freeze *|*g-anno-text* all freeze *|*q-spcq-iden* all freeze *|*s-grid* all )(princ)

(command -layer freeze *|*dims* freeze *|*area-iden* freeze *|*a-genm* freeze *|*a-wall-patt* freeze *|*g-anno-revc* freeze *|*g-anno-text* freeze *|*q-spcq-iden* freeze *|*s-grid* freeze *|*a-detl )(princ)

(command -layer color 253 *|*i-furn* color 253 *|*p-sanr-fixt* color 253 *|*q-case* color 253 *|*q-spcq* color 253 *|* m-eqpm* )(princ)

(command vplayer freeze *|*p-chase* all *|*p-pipe-sans* all *p-drain all )(command -layer freeze *|*p-chase* freeze *|*p-pipe-sans* freeze *p-drain )(command -layer color 253 *|*p-dnspt* )(princ)

(command vplayer freeze *p-drain all )(command -layer freeze *p-drain )(princ)

(command vplayer freeze *a-clng-patt* all )(command -layer freeze *a-clng-patt* )(princ)

(command -layer color 8 *gyp* )(command vplayer freeze *m-exhs-arrow* all )(command -layer freeze *m-exhs-arrow* )(princ)
(command vplayer freeze *a-above* all )(command -layer freeze *a-above* )(princ)

(command -layer color 8 *exhs* )(princ)

(command vplayer freeze *m-duct-exhs all )(command -layer freeze *m-duct-exhs )(princ)

(command vplayer freeze *m-hvac-duct all )(command -layer freeze *m-hvac-duct )(princ)

(command vplayer freeze *object all )(command -layer freeze *object )(princ)

(command vplayer freeze *a-clng-hatch all )(command -layer freeze *a-clng-hatch )(princ)

(command vplayer freeze *e-lite-eqpm-n-d all )(command -layer freeze *|*e-lite-eqpm-n-d )(princ)

(command vplayer freeze *a-clng-grid all )(command -layer freeze *a-clng-grid )(princ)

(command vplayer freeze *e-panel all )(command -layer freeze *e-panel )(princ)

(command vplayer freeze *a-ada all )(command -layer freeze *a-ada )(princ)

(command vplayer freeze *0_area all )(command -layer freeze *0_area )(princ)

(command vplayer freeze *roof-pitch all )(command -layer freeze *roof-pitch )(princ)

(command vplayer freeze *roof-drain all )(command -layer freeze *roof-drain )(princ)

(command vplayer freeze *numb* all )(princ)

(command vplayer freeze lnwk-grid*detl* all )(command -layer freeze lnwk-grid*detl* )(princ)

(command -layer color 8 *|*a-flor-fixture* )(command -layer color 253 *|*a-eqpm* )(princ)

(command -layer color 253 *|*a-eqpm* )(princ)

(command vplayer freeze *m105* all )(command -layer freeze *m105* )(command vplayer thaw *m-anno-iden all )(command -layer thaw *m-anno-iden )(princ)

(command vplayer freeze *|*overhead all )(command -layer freeze *|*overhead )(princ)

(command vplayer freeze *m-anno*,*e-powr-circ-n-d* all )(command -layer freeze *m-anno*,*e-powr-circ-n-d* )(princ)

(command vplayer freeze *|*s-grid*,*|*s-joist*,*|*nplt* all )(command -layer freeze *|*s-grid*,*|*s-joist,*|*nplt** color 8 *|*s-cols* )(c:rad)(princ)

(command -layer color 8 *a-roof-lower roof* )(princ)

(command vplayer freeze *|*s-grid*,*|*s-joist*,*|*nplt* all )(command -layer freeze *|*s-grid*,*|*s-joist,*|*nplt* )(princ)

(command vplayer freeze defpoints,*|*g-anno-symb*,*|*a-wall-brick-patt*,*|*a-wall-patt*,*|*a-wall-interior-patt,*|*s-grid*,*|*s-grid-iden*, all )(command -layer freeze *|*g-anno-symb*,*|*a-wall-brick-patt*,*|*a-wall-patt*,*|*a-wall-interior-patt,*|*s-grid*,*|*s-grid-iden* )(princ)

(command vplayer freeze *a-wall-interior-patt all )(command -layer freeze *a-wall-interior-patt )(princ)
 
(command vplayer freeze defpoints,*cexprop,*a-rcp-patt*,*a-rcp-bulkhead*,*s-grid-iden*,*s-grid*,*ada*,*a-wall-patt*,*a-wall-interior-patt*,*a-wall-brick-patt*,*a-detl-patt*,*q-spcq-hdln*,*a-genm-sill,*a-genm-hdln all )(command -layer freeze defpoints,*cexprop,*a-rcp-patt*,*a-rcp-bulkhead*,*s-grid-iden*,*s-grid*,*ada*,*a-wall-patt*,*a-wall-interior-patt*,*a-wall-brick-patt*,*a-detl-patt*,*q-spcq-hdln*,*a-genm-sill,*a-genm-hdln )(princ)

(command -layer color 253 *p-fixt-flor )

;makes an astrix that is aligned with the arrows of an electrical plan notes symbol
(command line 0,0,0 @1<0 )(command line 0,0,0 @1<30 )(command line 0,0,0 @1<60 )(command line 0,0,0 @1<90 )(command line 0,0,0 @1<120 )(command line 0,0,0 @1<150 )(command line 0,0,0 @1<180 )(command line 0,0,0 @1<210 )(command line 0,0,0 @1<240 )(command line 0,0,0 @1<270 )(command line 0,0,0 @1<300 )(command line 0,0,0 @1<330 )(princ)

;choose location of center and makes an astrix that is aligned with the arrows of an electrical plan notes symbol
(setq placepoint (getpoint))(command line placepoint @1<0 )(command line placepoint @1<30 )(command line placepoint @1<60 )(command line placepoint @1<90 )(command line placepoint @1<120 )(command line placepoint @1<150 )(command line placepoint @1<180 )(command line placepoint @1<210 )(command line placepoint @1<240 )(command line placepoint @1<270 )(command line placepoint @1<300 )(command line placepoint @1<330 )(princ)

(command -layer color 251 *|*a-detl-patt,*|*m-eqpm,*|*a-glaz-cwmg,*|*a-glaz,*|*a-glaz pane,*|*a-glaz frame, color 8 *|*a-wall-interior-half,*|*a-wall-interior-half-patt )(princ)

(command -layer color 8 *|*a-wall-interior-half,*|*a-wall-interior-half-patt )(princ)

(setq oblayer(getvar clayer))(command -layer new (strcat oblayer _4) off oblayer )(princ)

(setq oblayer(getvar clayer))(command -layer new (strcat oblayer _8) off oblayer  )(princ)

(command -layer color 252 *|*m-hvac-return,*|*h-hvac-supply )

(command vplayer freeze *|*m-hvac-duct-retn,*|*m-hvac-duct-supp all )(command -layer freeze *|*m-hvac-duct-retn,*|*m-hvac-duct-supp )(princ)

(command -layer color 251 *|*a-equip )

(command -layer color 252 *|*furn* )

(command -layer color 253 *|*m-hvac-duct-retn,*|*m-hvac-duct-supp )

;electrical sheet setup for holiday inn patel
(command vplayer freeze *|*s-grid-iden,*|*s-grid,*|*a-wall-patt,*|*g-anno-symb,*|*q-spcq-hdln,*|*a-floor-patt,*|*a-clng-patt,*|*a-flor-patt,*|*a-wall-interior-patt,*|*a-wall-brick-patt,*|*a-detl-hdln,*|*a-rcp-patt,*|*01-delete,*|*a-clng all )(command -layer freeze *|*s-grid-iden,*|*s-grid,*|*a-wall-patt,*|*g-anno-symb,*|*q-spcq-hdln,*|*a-floor-patt,*|*a-clng-patt,*|*a-flor-patt,*|*a-wall-interior-patt,*|*a-wall-brick-patt,*|*a-detl-hdln,*|*a-rcp-patt,*|*01-delete,*|*a-clng )(command -layer color 251 *|*a-rcp-grid,*|*a-rcp-bulkhead,*|*m-eqpm,*|*q-spcq )(command vplayer freeze *|*fire* all )(command -layer freeze *|*fire* )(princ)

(command vplayer freeze *|*fire* all )(command -layer freeze *|*fire* )(princ)

(command vplayer freeze *a-clng-bulkhead all )(command -layer freeze *a-clng-bulkhead )(princ)

(command vplayer freeze *g-cntr all )(command -layer freeze *g-cntr )(princ)

(command vplayer freeze *center all )(command -layer freeze *center )(princ)

(command vplayer freeze *zfurn* all )(command -layer freeze *zfurn* )(princ)

(command vplayer freeze *a-furn-site-patt,*a-flor-patt all )(command -layer freeze *a-furn-site-patt,*a-flor-patt )(princ)

(command vplayer freeze *a-flor-patt all )(command -layer freeze *a-flor-patt )(princ)

(command -layer color 8 *a-door-extr )(princ)

;pullman electrical site plan new layers
(command vplayer freeze *a-abov,*a-flor-slab,*m-hvac-eqpt,*a-wall all )(command -layer freeze *a-abov,*a-flor-slab,*m-hvac-eqpt,*a-wall )(princ)

(command -layer color 8 *a-flor-slab )(princ)

(command -layer color 8 *fire* )(princ)

(command vplayer thaw defpoints all )(princ)

(command -layer color 27 defpoints )(command vplayer freeze defpoints all )(command vplayer thaw defpoints current )(princ)

(command -layer color 27 defpoints )(princ)

(command -layer color 253 *|*site-lscp-plnt,*|*a-flor-fnsh, )(princ)

(command -layer color 8 *|*a-flor-tpar )(princ)

(command -layer plot no rev-7 )(princ)

(command vplayer freeze e-powr-circ-numb all )(princ)

(command vplayer freeze *cont-m all )(command -layer freeze *cont-m )(princ)

|a-demo-door,|a-demo-misc,|a-demo-pfix,|a-demo-wall,|a-demo-wndw,|hidden2

(command -layer color 252 *|*appl* )(princ)

;electrical layer setting from pfcu downtown project
(command vplayer freeze *a-wall-interior-patt,*|*a-demo*,*|*e*demo*,*a-eqpt-abov-exst,*|a-anno-note,*|i-ceiling-patt,defpoints all )(command -layer freeze *a-wall-interior-patt,*|*a-demo*,*|*e*demo*,*a-eqpt-abov-exst,*|a-anno-note,*|i-ceiling-patt )(c:rad)(princ)

(command insert h21= #nil)(princ)

(command insert c-notewheel= #nil)(princ)

(command insert cwte298= #nil)(princ)

(c:dp)(command point 0,0,0)(command zoom extents)(command bclose)(princ)

(command vplayer freeze *a-wall-interior-patt all )(command -layer freeze *a-wall-interior-patt )(princ)

(command -layer color 8 *|A-FLOR-STAIR-TREAD,*|A-Anno-Dims,*|A-ELEV-CAB )(princ)

(command -layer unlock * )(princ)

;KILL IN GREENHOUSE
*|Revshade,*|REDLTS,*|recepts,*|Project XREF$0$Piperack,*|Project XREF$0$BabyLeaf,*|Project XREF$0$10 - SPINACH,*|Project XREF$0$10 - ROMAINE,*|Project XREF$0$10 - KALE,*|Project XREF$0$10 - GREEN LEAF,*|Project XREF$0$10 - BASIL,*|Project XREF$0$10 - ARUGULA,*|05 - Cotation,*|03 - Axe,*|s-iden

;GREENHOUSE COLORS
(command -layer color 80 *|PUMP,*|E-POWR-HAF-IDEN,*|E-POWR-EQPM-IDEN,*|03 - HAF color 4 *|E-POWR-CIRC-N-D )(princ)

;COLOR 4 IN GREENHOUSE
*|E-POWR-CIRC-N-D

;COLOR 8 UPPER
*|PUMP,*|E-POWR-EQPM-IDEN

;COLOR 8 LOWER
*|E-POWR-HAF-IDEN,*|03 - HAF

(command -layer color 80 *|Cotation )(princ)

(command -layer color 8 *|E-HAF-CIRC-N-D )(princ)

(command chprop pause layer E-POWR-CIRC-DIM)

(command vplayer freeze *BEAMS-TO-REMAIN all )(command -layer freeze *BEAMS-TO-REMAIN )(princ)

(command vplayer thaw *|M-Hvac-Duct,*|M-Hvac-Eqpm,*|M-Eqpt,*|M-ANNO-TEXT all )(command -layer thaw *|M-Hvac-Duct,*|M-Hvac-Eqpm,*|M-Eqpt,*|M-ANNO-TEXT )(princ)

(command -layer color 8 *|A-BEAMS-TO-REMAIN )(princ)

(command vplayer freeze 000* all )(princ)

(c:ret)(c:zec)

(command -layer color 253 *|F-EQPT-FEC )(princ)

(command layout delete )(princ)

(command -bedit)(c:a0)(command bclose )(princ)

(command -layer off * yes )(command -layer on *KEYN* on e-note )(princ)

(command vplayer freeze *daylight* all )(princ)

(command vplayer freeze e-powr-circ-n-d all )(princ)

(command vplayer freeze a-anno-note x )(princ)

(command vplayer freeze REPLACE-ME all )(command -layer freeze REPLACE-ME )(princ)

(command -layer color 253 *|A-FLOR-GRAB BAR,*|A-Eqpm-Service,*|S-Cols,*|A-FLOR,*|A-Roof-Below,*|S-Metl,*|S-Bolt )(princ)

*|A-Anno-Note,*|A-Center,*|A-Wall-Patt,*|A-Detl-Patt,*|A-Grid

*|A-Clng-Hatch


*|A-Demo-HVAC,*|A-Demo-Wall

*|A-Demo-Wndw,*|A-Demo-Door,*|A-Demo-Misc,*|A-Demo-Pfix,*|E-POWR-DEMO,*|E-EXIST-NOTE,*|E-Powr-Exst




;(DEFUN C:dlx()(COMMAND clayer A-Anno-Dims)(command osmode 3)(command DIMLINEAR pause)(command osmode 47)(PRINC))

*|F-EQPT-FEC

(command -layer color 253 *|F-EQPT-FEC,*|*p-fixt-flor )

(command vplayer thaw e-powr-circ-numb all )(princ)

(command -insert H21=H21.dwg #nil)(princ)

(command -layer color 253 *|A-FLOR-FURN )(princ)

*TREE-COLR*

*V-WATR,*V-TOPO-TBTS,*V-TOPO-FALT,*V-SWLK-CONC,*V-STRM-UNDR,*V-ROAD-CURB-BACK,*V-PROP-TEXT,*V-NGAS,*V-COMM-UNDR,*C-TOPO-MINR-N,*C-TOPO-MAJR-N,*C-STRM-SSDS-ANNO,*C-STRM-SSDS,*C-PROP-BNDY,*C-PLAT-SQFT-ANNO,*C-PLAT-SBCK-ANNO,*C-PLAT-SBCK,*C-PLAT-RWAY-ANNO,*C-PLAT-LINE-DIMS,*C-PLAT-ESMT-ANNO,*C-PLAT-ESMT,*C-DRAN,*ACAD-7671012BS_2015-0422 - V-TOPO-MINR,*ACAD-7671012BS_2015-0422 - V-TOPO-MAJR,*ACAD-7671012BS_2015-0422 - V-STRM-TEXT,*ACAD-7671012BS_2015-0422 - V-PVMT-ASPH,*ACAD-7671012BS_2015-0422 - C-TOPO-MINR,*ACAD-7671012BS_2015-0422 - C-TOPO-MAJR,*ACAD-7671012BS_2015-0422 - C-STRM-PIPE,*C-ROAD-ANNO,*C-PROP-SBCK-ANNO,*C-PROP-SBCK,*C-PROP-ESMT-ANNO,*C-PRKG-ANNO,*C-DIMS-PROP LINE,*C-DIMS-OTHER,*C-DIMS,*C-CONC-WARN,*C-CONC-JNTS,*C-CONC-HTCH,*C-CONC,*C-BLDG-DIMS,*C-BLDG-ANNO,*0-JUNK,*01-delete

(command -insert kjg north arrow=kjg north arrow.dwg #nil)(princ)

(command


(command -layer color 253 *|Pale_Hidden,*|Pale,*|HatchTank,*|Hachurage,*|A-FURN,*|2018-06-20 - Project$0$Zwarts Pumping System,*|2018-06-20 - Project$0$Water_Tank,*|2018-06-20 - Project$0$Recirc_Skid,*|2018-06-20 - Project$0$Piperack,*|2018-06-20 - Project$0$PHE Skid,*|2018-06-20 - Project$0$Pale_Hidden,*|2018-06-20 - Project$0$Pale,*|2018-06-20 - Project$0$Micro100_Tank,*|2018-06-20 - Project$0$Lettuce_Production,*|2018-06-20 - Project$0$Lettuce_Nursery,*|2018-06-20 - Project$0$HatchTank,*|2018-06-20 - Project$0$Hachurage,*|2018-06-20 - Project$0$Germination_Table_Phase1_Tray,*|2018-06-20 - Project$0$Germination_Cart_Phase1,*|2018-06-20 - Project$0$Germination_Cart_Expansion,*|2018-06-20 - Project$0$Fertilization_Tank,*|2018-06-20 - Project$0$Drying_Cart_Phase1,*|2018-06-20 - Project$0$Drying_Cart_Expansion,*|2018-06-20 - Project$0$Dryin_Cart_Zone,*|2018-06-20 - Project$0$Dosatron System,*|2018-06-20 - Project$0$Buffer_Tank,*|2018-06-20 - Project$0$Acid_Tank )(princ)

(command -layer color 210 *|E-POWR-EQPM-N-D,*|02 - HAFText71 )(princ)

(command -layer color 80 *|S-GRID-IDEN,*|E-MOTOR-IDEN,*|E-HVAC-IDEN,*|E-HAF-IDEN,*|A-POOL-IDEN )(princ)

(command -layer color 50 *|E-MOTOR )(princ)


(command -layer color 8 *|Zone,*|Water,*|Sidebox,*|Shade40,*|Shade30,*|Shade_Building,*|Separation,*|SBGreenhouse,*|S-COLUMN,*|Rouge,*|Radius_Turn,*|Post,*|Panneau,*|Ohlson,*|Mview,*|M-EXHAUST,*|LIMIT,*|LANDLIMIT,*|L1,*|Hidden,*|GreenhouseBuilding,*|Gen-Texte,*|Gen-Magenta,*|Fishpool,*|FishBuilding,*|DASHED,*|Cotation,*|CoolingPad,*|COOLER,*|ConcreteSlabMesh,*|ConcreteNotch,*|Bordure,*|Blue,*|Biodigestor,*|BabyLeaf,*|Axe,*|Asphalt,*|A-GLAZ,*|2018-06-20 - Project$0$Zone,*|2018-06-20 - Project$0$YELLOW,*|2018-06-20 - Project$0$Water_Tunnel,*|2018-06-20 - Project$0$Water,*|2018-06-20 - Project$0$Waste,*|2018-06-20 - Project$0$T2_Schematic_Conveyor,*|2018-06-20 - Project$0$SPACER,*|2018-06-20 - Project$0$Sidebox,*|2018-06-20 - Project$0$SHOPVAC,*|2018-06-20 - Project$0$Shell,*|2018-06-20 - Project$0$Shade40,*|2018-06-20 - Project$0$Shade30,*|2018-06-20 - Project$0$Shade_Building,*|2018-06-20 - Project$0$Seeding_Table,*|2018-06-20 - Project$0$SBGreenhouse,*|2018-06-20 - Project$0$Rouge,*|2018-06-20 - Project$0$RoofPanel,*|2018-06-20 - Project$0$REPROD,*|2018-06-20 - Project$0$Radius_Turn,*|2018-06-20 - Project$0$Q-SPCQ,*|2018-06-20 - Project$0$Post,*|2018-06-20 - Project$0$Panneau,*|2018-06-20 - Project$0$Ohlson,*|2018-06-20 - Project$0$OASIS,*|2018-06-20 - Project$0$Micro200,*|2018-06-20 - Project$0$MAN,*|2018-06-20 - Project$0$LIMIT,*|2018-06-20 - Project$0$Layer1,*|2018-06-20 - Project$0$LANDLIMIT,*|2018-06-20 - Project$0$Labatte Unit,*|2018-06-20 - Project$0$L1,*|2018-06-20 - Project$0$HOSE,*|2018-06-20 - Project$0$Hidden,*|2018-06-20 - Project$0$GreenhouseBuilding,*|2018-06-20 - Project$0$Greenhouse Back$0$POST,*|2018-06-20 - Project$0$Germination_Table_Phase1,*|2018-06-20 - Project$0$Germination_Table_Expansion,*|2018-06-20 - Project$0$Germination Room,*|2018-06-20 - Project$0$Gen-Texte,*|2018-06-20 - Project$0$Gen-Magenta )(princ))


(command -layer color 8 *|2018-06-20 - Project$0$Fishpool,*|2018-06-20 - Project$0$FishBuilding,*|2018-06-20 - Project$0$Fertilization_Room_Wall,*|2018-06-20 - Project$0$EZ-Seeder,*|2018-06-20 - Project$0$Doors_Hidden,*|2018-06-20 - Project$0$Doors,*|2018-06-20 - Project$0$DASHED,*|2018-06-20 - Project$0$Cotation,*|2018-06-20 - Project$0$CoolingPad,*|2018-06-20 - Project$0$Cooling_Equip_Expansion,*|2018-06-20 - Project$0$COOLER,*|2018-06-20 - Project$0$ConcreteNotch,*|2018-06-20 - Project$0$Chiller_Hidden,*|2018-06-20 - Project$0$Chiller,*|2018-06-20 - Project$0$Bordure,*|2018-06-20 - Project$0$Blue,*|2018-06-20 - Project$0$Bleu,*|2018-06-20 - Project$0$Biodigestor,*|2018-06-20 - Project$0$BabyLeaf,*|2018-06-20 - Project$0$Axe,*|2018-06-20 - Project$0$Asphalt,*|2018-06-20 - Project$0$A-GLAZ,*|2018-06-20 - Project$0$32,*|2018-06-20 - Project$0$05 - Cotation White,*|2018-06-20 - Project$0$05 - Cotation,*|2018-06-20 - Project$0$04 - Thin Lines,*|2018-06-20 - Project$0$03 - Hidden,*|2018-06-20 - Project$0$03 - Cooler Expansion,*|2018-06-20 - Project$0$03 - Axe,*|2018-06-20 - Project$0$02 - Inside Lines,*|2018-06-20 - Project$0$01 - WasteConv,*|2018-06-20 - Project$0$01 - SUPPLY,*|2018-06-20 - Project$0$01 - Olhson Packager,*|2018-06-20 - Project$0$01 - Daros WashingMachine,*|2018-06-20 - Project$0$01 - Daros Seeder,*|2018-06-20 - Project$0$01 - Daros Harvester,*|2018-06-20 - Project$0$01 - Daros Flipper,*|2018-06-20 - Project$0$01 - Contour Lines,*|2018-06-20 - Project$0$01 - Air Dryer Produce Washing,*|32,*|05 - Cotation White,*|05 - Cotation (mview,*|05 - Cotation,*|04 - Thin Lines,*|03 - Hidden,*|03 - HAF,*|03 - Axe,*|02 - Irrigation,*|02 - Inside Lines,*|01 - Oxygen Duratec,*|01 - Contour Lines,*|01 - Air Dryer Produce Washing )(princ))

(command -layer color 253 *cooling* )(c:zc)

"*|M-DUCT-RETN,*|M-DUCT-SUPP,*|M-HVAC-EQP"


"G:\General KJG\Standards\Electrical\Drawings\Make Layers\Make IU Layers\IU_Electrical.dwg"

(command "-layer" "color" "8" "" "")(princ)

(command "-layer" "color" "253" "" "")(princ)

(command "-layout" "rename" "e101" "e201")(command "-layout" "rename" "e102" "e202")(command "-layout" "rename" "e103" "e203")(command "-layout" "rename" "e104" "e204")(command "-layout" "rename" "e105" "e205")

(command "insert" "kjg north arrow=kjg north arrow.dwg" pause "1" "0")

((command "-layer" "color" "8" "*|*s-*" "")(princ)