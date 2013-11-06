//Maya ASCII 2013 scene
//Name: player.ma
//Last modified: Tue, Nov 05, 2013 06:28:29 PM
//Codeset: 1252
requires maya "2013";
requires "stereoCamera" "10.0";
currentUnit -l meter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2013";
fileInfo "version" "2013 x64";
fileInfo "cutIdentifier" "201202220241-825136";
fileInfo "osv" "Microsoft Windows 7 Business Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -2.019833695099146 1.8382612019774354 0.74075574458789761 ;
	setAttr ".r" -type "double3" -27.338416757279877 -73.799999995399531 5.7001004901878147e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 2.406267380530283;
	setAttr ".ow" 0.1;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" -35.592823028564453 64.930362701416016 3.0525093078613281 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.16997970975585028 1.001 -0.030905401773791023 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 1.4282507384492436;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.33622815206991363 1.2269191264577994 1.001 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 3.4164221140990634;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.001 1.1518450979913275 -0.12689702829161603 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.001;
	setAttr ".fcp" 100;
	setAttr ".fd" 0.05;
	setAttr ".coi" 1.001;
	setAttr ".ow" 0.75633874052258254;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "Rig";
createNode joint -n "hips" -p "Rig";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999999986 -13.9432252208571 -29.909210156408129 ;
	setAttr ".bps" -type "matrix" 0.84127583139270723 -0.48393502379338565 0.24096030432543142 0
		 -0.20886839342932301 0.12014933410909134 0.97053497193011828 0 -0.49862708484473922 -0.86681660705090169 3.3306690738754696e-016 0
		 0 73.947082354160059 -15.741128921508791 1;
createNode joint -n "upper_hip" -p "hips";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -1.0658141036401502e-016 1.4210854715202004e-016 ;
	setAttr ".r" -type "double3" 1.6287922126860891e-015 -2.1616094433527551e-014 -2.3498323448098226 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 160.37902799470268 58.037448626682931 143.2645596858593 ;
	setAttr ".bps" -type "matrix" -4.4408920985006262e-016 0.98633219095032898 0.16476895670945998 0
		 -2.9143354396410359e-016 -0.16476895670946004 0.98633219095032887 0 1 3.8857805861880479e-016 3.3352417999241503e-016 0
		 -4.8597682645769702e-015 73.947082354160045 -15.741128921508801 1;
createNode joint -n "spine" -p "upper_hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.19986452021047668 1.7763568394002446e-017 1.0081553152256954e-016 ;
	setAttr ".r" -type "double3" 5.1301768949255519e-015 9.9345014006381981e-016 -6.1286024897281042 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -22.837186157910185 ;
	setAttr ".bps" -type "matrix" -2.474000969530155e-016 0.94274645461725826 -0.33351030314907826 0
		 -4.70044603075462e-016 0.33351030314907826 0.94274645461725814 0 1 3.8857805861880479e-016 3.3352417999241503e-016 0
		 -3.6539827980532622e-015 93.660363365403626 -12.447982073677098 1;
createNode joint -n "chest" -p "spine";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.27329900075736013 -8.8817841970012525e-018 2.3092638912203257e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 46.09689307341673 ;
	setAttr ".bps" -type "matrix" -5.1023083276101086e-016 0.89403762908889362 0.44799187244090716 0
		 -1.4769304029891013e-016 -0.44799187244090716 0.8940376290888935 0 1 3.8857805861880479e-016 3.3352417999241503e-016 0
		 1.2677236185696679e-014 119.42552976684769 -21.562785332969831 1;
createNode joint -n "neck" -p "chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.21662453714202468 3.2529123521052116e-017 -1.8651746813702624e-016 ;
	setAttr ".r" -type "double3" -9.5416640443905503e-015 -2.6483437788300978e-031 -3.1805546814635168e-015 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -35.093352221667267 ;
	setAttr ".bps" -type "matrix" -3.3256899572643251e-016 0.98907142627693734 -0.14743715177154326 0
		 -4.1418184404225425e-016 0.14743715177154337 0.98907142627693734 0 1 3.8857805861880479e-016 3.3352417999241503e-016 0
		 -1.7027362426250324e-014 138.79257852574116 -11.858182131879781 1;
createNode joint -n "head" -p "neck";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.084659118652343962 -2.9283857042102711e-017 7.9936057773011268e-017 ;
	setAttr ".r" -type "double3" -1.9083328088781101e-014 6.3611093629270335e-015 -1.0593375115320388e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 0 -4.3819157733391245 ;
	setAttr ".bps" -type "matrix" -2.999515847352058e-016 0.97491545263876644 -0.2225755157382529 0
		 -4.3838086599162693e-016 0.22257551573825302 0.97491545263876644 0 1 3.8857805861880479e-016 3.3352417999241503e-016 0
		 -1.1849256455878689e-014 147.1659700490234 -13.106372064438856 1;
createNode joint -n "skull" -p "head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.4971915522221444 -1.9785827909710377e-016 1.4210854715202006e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -157.27182472985908 -57.275090495080647 157.91234315438584 ;
	setAttr ".bps" -type "matrix" 0.8412758313927069 -0.44311980324894157 0.30967695342587104 0
		 -0.20886839342932378 0.26192918520955516 0.94221393333027714 0 -0.49862708484473955 -0.85734353785637063 0.12780097165185819 0
		 -1.2551741141275577e-014 195.63794276730567 -24.172638680093506 1;
createNode joint -n "l_shoulder" -p "chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.074631746668390495 0.013979705605173105 0.14118132591247551 ;
	setAttr ".r" -type "double3" -1.9083328088781101e-014 1.272221872585407e-014 -2.1186750230640775e-030 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -71.758837152690447 -58.580813737432116 39.197724885893173 ;
	setAttr ".bps" -type "matrix" 0.8533762823384109 0.21358608196866632 0.47553118334295069 0
		 -0.49509898367811239 0.046538477106200321 0.8675892844598394 0 0.1631744989364855 -0.97581512374932478 0.14546108468905722 0
		 14.11813259124756 125.47160930244135 -16.969505454158089 1;
createNode joint -n "l_arm" -p "l_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.14906642222727745 -3.1278588363322745e-017 3.040952570178373e-017 ;
	setAttr ".r" -type "double3" 1.4230846213115894e-014 7.4580704734788111e-016 -6.0000000000000053 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 -17.011629016593943 -30.12080335288843 ;
	setAttr ".pa" -type "double3" 0 0 -6.0000000000000009 ;
	setAttr ".bps" -type "matrix" 0.98573860570375516 -0.14585337043661081 -0.083941619936105383 0
		 0.10360530232434789 0.13291946986088785 0.98569688843081027 0 -0.13260973778534244 -0.98033627335939244 0.14613503543066414 0
		 26.839107513427752 128.65546061010247 -9.8809322383143741 1;
createNode joint -n "l_elbow" -p "l_arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.30281654975021605 5.6474975821943895e-017 6.2539967653858688e-019 ;
	setAttr ".r" -type "double3" 3.3615269918415582e-014 -9.4551511194759988e-016 10.000000000000004 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0 7.6204252285976111 0 ;
	setAttr ".pa" -type "double3" 0 0 10 ;
	setAttr ".bps" -type "matrix" 0.99749861585564426 0.0087393646326821423 0.070143673070997989 0
		 -0.070682338082087875 0.13342898115549959 0.98853462967720818 0 -0.00072003425158526091 -0.99101984364271056 0.13371294274322959 0
		 56.688903866907729 124.238779169597 -12.422823411263906 1;
createNode joint -n "l_forearm" -p "l_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.14640179751330851 3.1055143265132178e-018 -3.8756372763008118e-017 ;
	setAttr ".r" -type "double3" 3.1842818939808566e-014 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99749861585564426 0.0087393646326821423 0.070143673070997989 0
		 -0.070682338082087875 0.13342898115549959 0.98853462967720818 0 -0.00072003425158526091 -0.99101984364271056 0.13371294274322959 0
		 71.292462904738088 124.36672503873189 -11.395907429085909 1;
createNode joint -n "l_wrist" -p "l_forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.084305086725263351 -1.4440022415637913e-016 2.911439135520689e-016 ;
	setAttr ".r" -type "double3" 0 3.975693351829394e-016 7.9513867036587939e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.99749861585564426 0.0087393646326821423 0.070143673070997989 0
		 -0.070682338082087875 0.13342898115549959 0.98853462967720818 0 -0.00072003425158526091 -0.99101984364271056 0.13371294274322959 0
		 79.701883636542107 124.44040232806005 -10.804560584938018 1;
createNode joint -n "l_hand" -p "l_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.076629899929097009 -7.8424603350660476e-017 -1.0854611903847875e-016 ;
	setAttr ".r" -type "double3" 0 -15.000000000000002 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.96332331616512867 -0.24805323160519085 0.10236104152870473 0
		 -0.070682338082087875 0.13342898115549959 0.98853462967720818 0 -0.25886713892626295 -0.95951357534848203 0.11100226622057781 0
		 87.345705547785187 124.50737199178469 -10.267050320129041 1;
createNode joint -n "l_fingers" -p "l_hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.075027655158041273 6.6700508855035189e-017 2.1512152189652873e-016 ;
	setAttr ".r" -type "double3" 0 -60.000000000000007 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.25747613956742493 -0.9549897473304152 0.14731130318901603 0
		 -0.070682338082087875 0.13342898115549959 0.98853462967720818 0 -0.96369603332000164 -0.26493638761332061 -0.033146129211403343 0
		 94.573294504878987 122.64628675961347 -9.4990594275856726 1;
createNode joint -n "l_tips" -p "l_fingers";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.066431173393795728 2.6771090118889439e-016 -4.7770476782317766e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000199 54.906647778332768 90.000000000000199 ;
	setAttr ".bps" -type "matrix" 0.74787591961095368 0.29348500302336922 0.59543946952351423 0
		 -0.61187224681262176 -0.043140879617417152 0.78977922110315746 0 0.25747613956742682 -0.95498974733041453 0.1473113031890167 0
		 96.283738712115905 116.30217781019309 -8.5204531550840912 1;
createNode joint -n "l_thumb" -p "l_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.067228695716314915 0.058000351839887346 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.9392333795734887e-017 9.9392333795734924e-017 89.999999999999886 ;
	setAttr ".bps" -type "matrix" -0.070682338082085766 0.13342898115549962 0.98853462967720829 0
		 -0.99749861585564437 -0.0087393646326818612 -0.070143673070995907 0 -0.00072003425158526091 -0.99101984364271056 0.13371294274322959 0
		 85.997976681059853 125.27304872189016 -4.5994581868874569 1;
createNode joint -n "l_thumb_tip" -p "l_thumb";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.072432846831368414 1.7805302665222502e-016 6.5357279248334885e-017 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999993534 54.90664777833274 0 ;
	setAttr ".bps" -type "matrix" -0.040046861882696821 0.88757841430739537 0.45891263581309022 0
		 -0.058247405259247716 -0.46057375300964332 0.88570822386335424 0 0.99749861585563804 0.008739364632629934 0.070143673071095911 0
		 85.486004384261562 126.23951281738034 2.5607795550038155 1;
createNode joint -n "r_shoulder" -p "chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.074631981342503206 0.013980038533380396 -0.14118099999999997 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -71.75883715269029 -58.580813737432052 -140.80227511410698 ;
	setAttr ".bps" -type "matrix" 0.8533762823384109 -0.13615940535353793 -0.50319930154566384 0
		 -0.49509898367811223 0.090455427979265451 -0.86411504552923302 0 0.163174498936486 0.98654874784921776 0.0097801336375226682 0
		 -14.118099999999988 125.47161536827699 -16.96946517591407 1;
createNode joint -n "r_arm" -p "r_shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.14906650798353366 5.4906910715857295e-007 5.7758849948186252e-007 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 1.3886410185539259e-013 -17.011629016594 -30.120803352888448 ;
	setAttr ".pa" -type "double3" 0 0 -6.0000000000000009 ;
	setAttr ".bps" -type "matrix" 0.37878829239972467 0.91953937612447934 0.10472232473309721 0
		 0.038531483586708118 0.097386935951807641 -0.99450043211580652 0 -0.92468089323480018 0.38074022700855015 0.0014578147927544124 0
		 -26.839099999999981 127.50135802534282 -9.468495786795927 1;
createNode joint -n "r_elbow" -p "r_arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.30281685182840795 -2.2204460492503131e-016 -3.5681951763422147e-006 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 9.9419634769115473e-016 7.6204252285976111 1.4928106441564538e-014 ;
	setAttr ".pa" -type "double3" 0 0 10 ;
	setAttr ".bps" -type "matrix" -0.0018018609874126401 0.99749861585564448 -0.070663036044710165 0
		 -0.015242908498154161 -0.070682338082087473 -0.99738240450880544 0 -0.99988219657992661 -0.00072003425158473355 0.01533213987601227 0
		 -38.309117877204002 99.656020268771357 -12.639664776155549 1;
createNode joint -n "r_forearm" -p "r_elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.14640200000000009 -1.1546319456101628e-016 -2.8421709430404008e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.0018018609874126401 0.99749861585564448 -0.070663036044710165 0
		 -0.015242908498154161 -0.070682338082087473 -0.99738240450880544 0 -0.99988219657992661 -0.00072003425158473355 0.01533213987601227 0
		 -38.282738271976058 85.052441032921536 -11.60514379585377 1;
createNode joint -n "r_wrist" -p "r_forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.084304999999999811 -7.105427357601002e-017 -2.8421709430404008e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.0018018609874126401 0.99749861585564448 -0.070663036044710165 0
		 -0.015242908498154161 -0.070682338082087473 -0.99738240450880544 0 -0.99988219657992661 -0.00072003425158473355 0.01533213987601227 0
		 -38.267547682921645 76.643028951950541 -11.009419070478836 1;
createNode joint -n "r_hand" -p "r_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.076630000000000115 -6.2172489379008772e-017 -2.8421709430404008e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.26052901939695222 0.96332331616512901 -0.0642870016774931 0
		 -0.015242908498154161 -0.070682338082087473 -0.99738240450880544 0 -0.96534568098302465 -0.25886713892626251 0.03309864939165362 0
		 -38.253740022175073 68.999197058648718 -10.467928225268215 1;
createNode joint -n "r_fingers" -p "r_hand";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.075027999999999942 -6.2172489379008772e-017 -2.8421709430404008e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" -0.96627839286336403 0.25747613956742549 -0.003479229634620145 0
		 -0.015242908498154161 -0.070682338082087473 -0.99738240450880544 0 -0.25704809127070277 -0.96369603332000164 0.07222350128166867 0
		 -36.299042895443591 61.771574882125002 -9.9855957090823146 1;
createNode joint -n "r_tips" -p "r_fingers";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.066431999999999936 -5.3290705182007512e-017 -1.4210854715202004e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 90.000000000000199 54.906647778332768 90.00000000000027 ;
	setAttr ".bps" -type "matrix" 0.20155766544266054 0.74787591961095357 -0.63249989436155263 0
		 -0.16025159901448724 -0.61187224681262165 -0.77455263126128127 0 -0.96627839286336359 0.2574761395674271 -0.0034792296346220449 0
		 -29.879862275973693 60.061109391750698 -9.9624824907736027 1;
createNode orientConstraint -n "r_wrist_orientConstraint1" -p "r_wrist";
	addAttr -ci true -k true -sn "w0" -ln "right_wristCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.121498445281773 0.04125492728545696 -4.0531804428924856 ;
	setAttr ".o" -type "double3" -89.119296956920749 4.0520706929420021 0.10349780532758836 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 -4.4139062980501586e-032 
		-7.9513867036587919e-016 ;
	setAttr -k on ".w0";
createNode joint -n "r_thumb" -p "r_wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.067229000000000094 -0.058000400000000049 -2.8421709430404008e-016 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 7.454425034680115e-017 -9.9392333795734887e-017 89.999999999999886 ;
	setAttr ".bps" -type "matrix" -0.015242908498154165 -0.070682338082085364 -0.99738240450880555 0
		 0.001801860987412608 -0.99749861585564459 0.070663036044708055 0 -0.99988219657992661 -0.00072003425158473355 0.01533213987601227 0
		 -38.167024472683707 70.346905895584243 -4.7495007040065973 1;
createNode joint -n "r_thumb_tip" -p "r_thumb";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.072432800000000006 -2.8421709430404008e-016 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 89.999999999993591 54.906647778332776 2.212904907503626e-014 ;
	setAttr ".bps" -type "matrix" 0.80935673313469625 -0.040046861882696974 -0.5859504478903319 0
		 -0.58731459357529525 -0.05824740525924603 -0.80726006215720292 0 -0.0018018609874781658 0.99749861585563815 -0.070663036044798316 0
		 -38.0566158184172 70.858877861367475 2.4748193189239425 1;
createNode orientConstraint -n "r_forearm_orientConstraint1" -p "r_forearm";
	addAttr -ci true -k true -sn "w0" -ln "right_wristCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 89.121498445281773 0.04125492728545696 -4.0531804428924856 ;
	setAttr ".o" -type "double3" -89.119296956920749 4.0520706929420021 0.10349780532758836 ;
	setAttr ".rsrr" -type "double3" -6.3611093629270335e-015 -4.4139062980501586e-032 
		-7.9513867036587919e-016 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "r_elbow_orientConstraint1" -p "r_elbow";
	addAttr -ci true -k true -sn "w0" -ln "right_elbowCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 88.986041753244805 -29.954858432756694 6.4537789645119163 ;
	setAttr ".o" -type "double3" -89.119296956920778 4.0520706929419994 0.10349780532758757 ;
	setAttr ".rsrr" -type "double3" -1.2532702747651137e-014 2.9829344284856296e-016 
		10 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "r_humerous_orientConstraint1" -p "r_arm";
	addAttr -ci true -k true -sn "w0" -ln "right_shoulderCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 37.696158942981356 -3.3912682379814845 87.024115361976087 ;
	setAttr ".o" -type "double3" -89.91601152456839 -6.0111687411696311 7.6116378996241325 ;
	setAttr ".rsrr" -type "double3" 8.9690412986807998e-015 -2.1176995593865882e-015 
		-6.0000000000000044 ;
	setAttr -k on ".w0";
createNode aimConstraint -n "r_shoulder_aimConstraint1" -p "r_shoulder";
	addAttr -ci true -sn "w0" -ln "right_clavicleCTRLW0" -dv 1 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -71.758837152690248 -58.580813737432052 -15.624651974408948 ;
	setAttr ".rsrr" -type "double3" -3.1805546814635168e-015 3.1805546814635168e-015 
		1.272221872585407e-014 ;
	setAttr -k on ".w0";
createNode ikEffector -n "effector7" -p "spine";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode transform -n "baseSpine" -p "hips";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" -5.9776243076662689e-017 0.77725623410608835 -0.14625911297917207 ;
	setAttr ".rpt" -type "double3" -0.41138415451951615 -0.82581899925586655 -0.52747949867782862 ;
	setAttr ".sp" -type "double3" -5.9776243076662689e-017 0.77725623410608835 -0.14625911297917207 ;
createNode clusterHandle -n "baseSpineShape" -p "baseSpine";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -5.9776243076662689e-017 0.77725623410608835 -0.14625911297917207 ;
createNode parentConstraint -n "baseSpine_parentConstraint1" -p "baseSpine";
	addAttr -ci true -k true -sn "w0" -ln "hipsCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.2906301066013387e-018 0.037785410564487594 
		0.01115217623591571 ;
	setAttr ".tg[0].tor" -type "double3" -3.0243883089364575e-015 -2.6199790345899508e-017 
		9.5416640443905487e-015 ;
	setAttr ".lr" -type "double3" -89.999999999999986 29.909210156408136 -13.943225220857093 ;
	setAttr ".rst" -type "double3" 0.39578570273864516 0.063926234118224401 0.64098559027546642 ;
	setAttr ".rsrr" -type "double3" -89.999999999999986 29.909210156408136 -13.943225220857093 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "root_parentConstraint1" -p "hips";
	addAttr -ci true -k true -sn "w0" -ln "hipsCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -5.3290705182007512e-017 ;
	setAttr ".tg[0].tor" -type "double3" 89.999999999999986 -13.9432252208571 -29.909210156408129 ;
	setAttr ".rst" -type "double3" 0 0.73947082354160065 -0.1574112892150879 ;
	setAttr -k on ".w0";
createNode ikHandle -n "spineIK" -p "Rig";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.2677236185696679e-016 1.1942552976684768 -0.2156278533296983 ;
	setAttr ".r" -type "double3" 89.999999999999986 19.481975686287424 90.000000000000014 ;
	setAttr ".roc" yes;
createNode transform -n "spineCurve" -p "Rig";
	setAttr ".v" no;
createNode nurbsCurve -n "spineCurveShape" -p "spineCurve";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".tw" yes;
createNode nurbsCurve -n "spineCurveShape1Orig" -p "spineCurve";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".cc" -type "nurbsCurve" 
		3 2 0 no 3
		7 0 0 0 23.658176048391837 47.316352096783675 47.316352096783675 47.316352096783675
		
		5
		-5.9776243076662677e-017 0.73947082354160065 -0.15741128921508793
		-5.9776243076662701e-017 0.81504164467057605 -0.13510693674325619
		-1.0867347276187148e-016 0.97146842980421411 -0.092504486432220367
		1.1256972273904231e-016 1.1296537083090601 -0.14569028751698274
		1.1256972273904228e-016 1.2033621553193297 -0.16858939359527408
		;
createNode transform -n "topSpine" -p "Rig";
	setAttr ".v" no;
	setAttr ".rp" -type "double3" 1.1256972273904228e-016 1.1665079318141949 -0.1571398405561284 ;
	setAttr ".sp" -type "double3" 1.1256972273904228e-016 1.1665079318141949 -0.1571398405561284 ;
createNode clusterHandle -n "topSpineShape" -p "topSpine";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" 1.1256972273904228e-016 1.1665079318141949 -0.1571398405561284 ;
createNode parentConstraint -n "topSpine_parentConstraint1" -p "topSpine";
	addAttr -ci true -k true -sn "w0" -ln "shouldersCTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -3.2893454597839392e-017 -0.03702385054214602 
		-0.095411503118924351 ;
	setAttr -k on ".w0";
createNode transform -n "mainControl";
	setAttr ".rp" -type "double3" 2.8421709430404008e-016 1.4210854715202004e-016 2.8421709430404008e-016 ;
	setAttr ".sp" -type "double3" 2.8421709430404008e-016 1.4210854715202004e-016 2.8421709430404008e-016 ;
createNode nurbsCurve -n "mainControlShape" -p "mainControl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 52 1 no 3
		57 0 0 0 1 1 1 2 2 2 3 3 3 4 4 4 5 5 5 6 6 6 7 7 7 8 8 8 9 9 9 10 10 10 11
		 11 11 12 12 12 13 13 13 14 14 14 15 15 15 16 16 16 17 17 17 18 18 18
		55
		3.5277777786291159e-006 1.4210776382799706e-016 1.086535094444445
		0.044692499402111993 1.3218481877916602e-016 1.0273129212400005
		0.35751932282011156 6.2723310363363774e-017 0.61275237875999977
		0.40220829444444489 5.2800365314532733e-017 0.55353020555555532
		0.37907814118038952 5.7936291057905357e-017 0.55353020555555532
		0.21716498659738961 9.3888233499453074e-017 0.55353020555555532
		0.19403483333333385 9.9024159242825759e-017 0.55353020555555532
		0.19403483333333385 9.9024159242825759e-017 0.4957764355681667
		0.1940348333333336 9.9024159242825759e-017 0.091494847765167156
		0.1940348333333336 9.9024159242825759e-017 0.033741077777778516
		0.28514058646422258 7.8794618282480057e-017 0.033741077777778516
		0.92288905798022269 -6.2813989116832746e-017 0.033741077777778516
		1.0139948111111114 -8.3043530077178337e-017 0.033741077777778516
		0.98107148787850051 -7.5733083777174162e-017 0.012181945840389403
		0.75060526212150036 -2.4559301730397985e-017 -0.13873391806261054
		0.71768193888888898 -1.7248855430393724e-017 -0.16029304999999938
		0.75060526212150036 -2.4559301730397985e-017 -0.18185186836027725
		0.9810714878785004 -7.5733083777174162e-017 -0.33276553719527729
		1.0139948111111112 -8.3043530077178337e-017 -0.35432435555555514
		0.92288905798022258 -6.2813989116832746e-017 -0.35432435555555514
		0.28514058646422258 7.8794618282480057e-017 -0.35432435555555514
		0.1940348333333336 9.9024159242825759e-017 -0.35432435555555514
		0.1940348333333336 9.9024159242825759e-017 -0.43568029075349962
		0.1940348333333336 9.9024159242825759e-017 -1.0051791592464996
		0.1940348333333336 9.9024159242825759e-017 -1.0865350944444441
		0.17247562300166691 1.0381126558341632e-016 -1.0536117712118327
		0.021559210331666918 1.3732144081142947e-016 -0.82314554545483265
		2.8421709430404008e-016 1.4210854715202004e-016 -0.79022222222222172
		-0.021558818360277315 1.4689556645747842e-016 -0.82314554545483265
		-0.17247248719527733 1.8040513243173298e-016 -1.0536117712118327
		-0.19403130555555492 1.8519215173719136e-016 -1.0865350944444438
		-0.19403130555555492 1.8519215173719136e-016 -1.0051791592464994
		-0.19403130555555492 1.8519215173719136e-016 -0.43568029075349929
		-0.19403130555555492 1.8519215173719136e-016 -0.35432435555555486
		-0.28513745065783269 2.0542177973266921e-016 -0.35432435555555486
		-0.92288866600883268 3.4703099638574064e-016 -0.35432435555555486
		-1.0139948111111106 3.6726062438121845e-016 -0.35432435555555486
		-0.98107156627277692 3.5995019548824063e-016 -0.33276553719527696
		-0.75060588928277749 3.0877653529221616e-016 -0.18185186836027695
		-0.71768264444444418 3.0146610639923844e-016 -0.16029304999999908
		-0.75060588928277749 3.0877653529221616e-016 -0.13873391806261026
		-0.98107156627277692 3.5995019548824063e-016 0.012181945840389688
		-1.0139948111111106 3.6726062438121845e-016 0.033741077777778801
		-0.92288866600883268 3.4703099638574064e-016 0.033741077777778801
		-0.28513745065783269 2.0542177973266921e-016 0.033741077777778801
		-0.19403130555555492 1.8519215173719136e-016 0.033741077777778801
		-0.19403130555555492 1.8519215173719136e-016 0.091494847765167434
		-0.19403130555555465 1.8519215173719136e-016 0.49577643556816697
		-0.19403130555555465 1.8519215173719136e-016 0.55353020555555565
		-0.21716185079099912 1.9032816451569617e-016 0.55353020555555565
		-0.37907774920899928 2.2628071621100248e-016 0.55353020555555565
		-0.4022082944444435 2.3141672898950726e-016 0.55353020555555565
		-0.35751853887733231 2.2149360987041184e-016 0.6127523787600001
		-0.044686227789332518 1.5203088294709246e-016 1.0273129212400005
		3.5277777786291159e-006 1.4210776382799706e-016 1.086535094444445
		;
createNode transform -n "hipsCTRL" -p "mainControl";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 0.73947082354160065 -0.15741128921508785 ;
	setAttr ".sp" -type "double3" 0 0.73947082354160065 -0.15741128921508785 ;
createNode nurbsCurve -n "hipsCTRLShape" -p "hipsCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.47305276492029286 0.73947082354160065 -0.47790531896029576
		-7.6324631021430602e-017 0.73947082354160065 -0.61065829274036743
		-0.47305276492029252 0.73947082354160065 -0.47790531896029598
		-0.66899763586836924 0.73947082354160065 -0.15741128921508804
		-0.47305276492029263 0.73947082354160065 0.16308274053012017
		-2.0158204392417459e-016 0.73947082354160065 0.29583571431019173
		0.47305276492029225 0.73947082354160065 0.1630827405301202
		0.66899763586836924 0.73947082354160065 -0.15741128921508765
		0.47305276492029286 0.73947082354160065 -0.47790531896029576
		-7.6324631021430602e-017 0.73947082354160065 -0.61065829274036743
		-0.47305276492029252 0.73947082354160065 -0.47790531896029598
		;
createNode transform -n "hips_override" -p "hipsCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 0 0.73947082354160076 -0.15741128921508785 ;
	setAttr ".sp" -type "double3" 0 0.73947082354160076 -0.15741128921508785 ;
createNode nurbsCurve -n "hips_overrideShape" -p "hips_override";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.33837038530876257 0.73947082354160076 -0.3866577842700667
		-5.4594321653784563e-017 0.73947082354160076 -0.48161479164833582
		-0.33837038530876223 0.73947082354160076 -0.38665778427006686
		-0.4785279880090616 0.73947082354160076 -0.15741128921508801
		-0.33837038530876234 0.73947082354160076 0.071835205839891045
		-1.4418982179597619e-016 0.73947082354160076 0.16679221321816021
		0.33837038530876207 0.73947082354160076 0.0718352058398911
		0.4785279880090616 0.73947082354160076 -0.15741128921508774
		0.33837038530876257 0.73947082354160076 -0.3866577842700667
		-5.4594321653784563e-017 0.73947082354160076 -0.48161479164833582
		-0.33837038530876223 0.73947082354160076 -0.38665778427006686
		;
createNode transform -n "midSpine" -p "hipsCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -1.0867347276187148e-016 0.97146842980421411 -0.092504486432220367 ;
	setAttr ".sp" -type "double3" -1.0867347276187148e-016 0.97146842980421411 -0.092504486432220367 ;
createNode clusterHandle -n "midSpineShape" -p "midSpine";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".or" -type "double3" -1.0867347276187148e-016 0.97146842980421411 -0.092504486432220367 ;
createNode transform -n "shouldersCTRL" -p "hipsCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" 1.4546317733688168e-016 1.2035317823563407 -0.061728337437204045 ;
	setAttr ".sp" -type "double3" 1.4546317733688168e-016 1.2035317823563407 -0.061728337437204045 ;
createNode nurbsCurve -n "shouldersCTRLShape" -p "shouldersCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.1550976980373589 1.2035317823563407 -0.39220726914855614
		1.2043896132374987e-016 1.2035317823563407 -0.52909612474197043
		-0.15509769803735846 1.2035317823563407 -0.39220726914855625
		-0.21934126805727935 1.2035317823563407 -0.061728337437204246
		-0.15509769803735851 1.2035317823563407 0.26875059427414805
		7.9371372581077739e-017 1.2035317823563407 0.40563944986756234
		0.15509769803735865 1.2035317823563407 0.2687505942741481
		0.21934126805727969 1.2035317823563407 -0.061728337437203865
		0.1550976980373589 1.2035317823563407 -0.39220726914855614
		1.2043896132374987e-016 1.2035317823563407 -0.52909612474197043
		-0.15509769803735846 1.2035317823563407 -0.39220726914855625
		;
createNode transform -n "right_clavicleCTRL" -p "shouldersCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -0.14118099999999986 1.2564796382334189 -0.32857512894826474 ;
	setAttr ".sp" -type "double3" -0.14118099999999986 1.2564796382334189 -0.32857512894826474 ;
createNode nurbsCurve -n "right_clavicleCTRLShape" -p "right_clavicleCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.14118099999999983 1.4004688284323503 -0.39882899774521191
		-0.14118099999999989 1.2564796382334189 -0.43553016326712574
		-0.14118099999999989 1.112490448034487 -0.39882899774521202
		-0.14118099999999992 1.0528481726189705 -0.31022454618730783
		-0.14118099999999989 1.112490448034487 -0.2216200946294036
		-0.14118099999999983 1.2564796382334189 -0.38939913891104744
		-0.14118099999999983 1.4004688284323503 -0.2216200946294036
		-0.14118099999999981 1.4601111038478669 -0.31022454618730771
		-0.14118099999999983 1.4004688284323503 -0.39882899774521191
		-0.14118099999999989 1.2564796382334189 -0.43553016326712574
		-0.14118099999999989 1.112490448034487 -0.39882899774521202
		;
createNode transform -n "right_shoulderCTRL" -p "shouldersCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr ".r" -type "double3" -8.5857412968223384e-015 85.006358188708631 60.000000000000071 ;
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -0.26839099999999982 1.2774095922429036 -0.039383098645670293 ;
	setAttr ".sp" -type "double3" -0.26839099999999982 1.2774095922429036 -0.039383098645670293 ;
createNode nurbsCurve -n "right_shoulderCTRLShape" -p "right_shoulderCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.26839099999999982 1.3859423337632155 -0.147915840165982
		-0.26839099999999982 1.2774095922429036 -0.19287157366522881
		-0.26839099999999982 1.168876850722592 -0.14791584016598208
		-0.26839099999999982 1.1239211172233452 -0.039383098645670349
		-0.26839099999999982 1.168876850722592 0.06914964287464144
		-0.26839099999999982 1.2774095922429036 0.11410537637388821
		-0.26839099999999977 1.3859423337632155 0.069149642874641495
		-0.26839099999999977 1.430898067262462 -0.039383098645670224
		-0.26839099999999982 1.3859423337632155 -0.147915840165982
		-0.26839099999999982 1.2774095922429036 -0.19287157366522881
		-0.26839099999999982 1.168876850722592 -0.14791584016598208
		;
createNode transform -n "right_elbowCTRL" -p "right_shoulderCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -0.56688878812750854 1.2375161720952494 -0.071094788539266734 ;
	setAttr ".sp" -type "double3" -0.56688878812750854 1.2375161720952494 -0.071094788539266734 ;
createNode nurbsCurve -n "right_elbowCTRLShape" -p "right_elbowCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.56688878812750854 1.3460489136155616 -0.17962753005957846
		-0.56688878812750854 1.2375161720952497 -0.22458326355882524
		-0.56688878812750854 1.128983430574938 -0.17962753005957854
		-0.56688878812750854 1.0840276970756912 -0.071094788539266804
		-0.56688878812750854 1.128983430574938 0.037437952981044978
		-0.56688878812750854 1.2375161720952497 0.082393686480291745
		-0.56688878812750843 1.3460489136155616 0.037437952981045033
		-0.56688878812750843 1.3910046471148081 -0.071094788539266679
		-0.56688878812750854 1.3460489136155616 -0.17962753005957846
		-0.56688878812750854 1.2375161720952497 -0.22458326355882524
		-0.56688878812750854 1.128983430574938 -0.17962753005957854
		;
createNode transform -n "right_wristCTRL" -p "right_elbowCTRL";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -0.79701870129571661 1.2371004701524264 -0.054792331482499616 ;
	setAttr ".sp" -type "double3" -0.79701870129571661 1.2371004701524264 -0.054792331482499616 ;
createNode nurbsCurve -n "right_wristCTRLShape" -p "right_wristCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.79701870129571661 1.3456332116727385 -0.16332507300281132
		-0.79701870129571661 1.2371004701524264 -0.2082808065020581
		-0.79701870129571661 1.1285677286321147 -0.16332507300281141
		-0.79701870129571661 1.083611995132868 -0.054792331482499679
		-0.79701870129571661 1.1285677286321147 0.05374041003781211
		-0.79701870129571661 1.2371004701524264 0.098696143537058884
		-0.79701870129571661 1.3456332116727385 0.053740410037812165
		-0.79701870129571661 1.3905889451719853 -0.054792331482499547
		-0.79701870129571661 1.3456332116727385 -0.16332507300281132
		-0.79701870129571661 1.2371004701524264 -0.2082808065020581
		-0.79701870129571661 1.1285677286321147 -0.16332507300281141
		;
createNode pointConstraint -n "right_shoulderCTRL_pointConstraint1" -p "right_shoulderCTRL";
	addAttr -ci true -k true -sn "w0" -ln "r_humerousW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" 0 0 1.7763568394002505e-017 ;
	setAttr -k on ".w0";
createNode transform -n "right_handCTRL" -p "mainControl";
	addAttr -ci true -sn "Curl" -ln "Curl" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "thumbCurl" -ln "thumbCurl" -min 0 -max 10 -at "double";
	addAttr -ci true -sn "thumbSpread" -ln "thumbSpread" -min 0 -max 10 -at "double";
	setAttr -k off -cb on ".v";
	setAttr -k off -cb on ".tx";
	setAttr -k off -cb on ".ty";
	setAttr -k off -cb on ".tz";
	setAttr -k off -cb on ".rx";
	setAttr -k off -cb on ".ry";
	setAttr -k off -cb on ".rz";
	setAttr -k off -cb on ".sx";
	setAttr -k off -cb on ".sy";
	setAttr -k off -cb on ".sz";
	setAttr ".rp" -type "double3" -0.87345702022873473 1.2369623935449603 -0.049377423030393379 ;
	setAttr ".sp" -type "double3" -0.87345702022873473 1.2369623935449603 -0.049377423030393379 ;
	setAttr -k on ".Curl";
	setAttr -k on ".thumbCurl";
	setAttr -k on ".thumbSpread" 10;
createNode nurbsCurve -n "right_handCTRLShape" -p "right_handCTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		-0.87345702022873473 1.3024069632523694 -0.18607169816777677
		-0.87345702022873473 1.2369623935449603 -0.2426923208284405
		-0.87345702022873473 1.1715178238375514 -0.18607169816777688
		-0.87345702022873473 1.1444097954810717 -0.049377423030393469
		-0.87345702022873473 1.1715178238375514 0.087316852106989987
		-0.87345702022873473 1.2369623935449603 0.14393747476765373
		-0.87345702022873473 1.3024069632523694 0.087316852106990042
		-0.87345702022873473 1.3295149916088496 -0.049377423030393296
		-0.87345702022873473 1.3024069632523694 -0.18607169816777677
		-0.87345702022873473 1.2369623935449603 -0.2426923208284405
		-0.87345702022873473 1.1715178238375514 -0.18607169816777688
		;
createNode parentConstraint -n "right_handCTRL_parentConstraint1" -p "right_handCTRL";
	addAttr -ci true -k true -sn "w0" -ln "r_handW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.4210854715202004e-016 -1.7763568394002505e-017 
		0 ;
	setAttr ".tg[0].tor" -type "double3" 89.12149844528173 0.041254927285470595 -4.05318044289249 ;
	setAttr ".lr" -type "double3" -96.389166945416235 135.22109054860798 -35.490525989067926 ;
	setAttr ".rst" -type "double3" 1.4210854715202004e-016 -1.4210854715202004e-016 
		-8.8817841970012525e-018 ;
	setAttr ".rsrr" -type "double3" 5.7026351515302923e-015 9.4967952693985446e-031 
		-1.9083328088781101e-014 ;
	setAttr -k on ".w0";
createNode transform -n "player_mesh";
	setAttr -l on ".tx";
	setAttr -l on ".ty";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
createNode mesh -n "player_meshShape" -p "player_mesh";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".db" yes;
createNode mesh -n "player_meshShapeOrig" -p "player_mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 173 ".uvst[0].uvsp[0:172]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0 0.5625 0 0.5625 0.25 0.375 0.25 0.53150511
		 0.5 0.49999863 0.25 0.49999851 0.75 0.5 1 0.5 0 0.625 0 0.625 0.25 0.375 0.25 0.375
		 0 0.625 0.125 0.375 0.125 0.9150843 0.95355666 0.86270803 0.95355666 0.90280086 0.93406719
		 0.80074883 0.95355666 0.80074883 0.93742776 0.94197822 0.95355666 0.93466175 0.92429799
		 0.71651393 0.95355666 0.68147373 0.95355666 0.68589711 0.9300434 0.71470582 0.93073457
		 0.78769892 0.95355666 0.77733731 0.93059045 0.75065839 0.95355666 0.74287909 0.93225795
		 0.63827813 0.95355666 0.65368545 0.92011046 0.8544035 0.92543364 0.89803791 0.91531146
		 0.80074883 0.91959113 0.93316811 0.90651864 0.68744773 0.9063012 0.71346003 0.90760285
		 0.77441168 0.91424251 0.7391448 0.90953547 0.65470952 0.9038983 0.80074883 0.77604795
		 0.7718907 0.77645159 0.77289361 0.74848533 0.80074883 0.74801087 0.83523506 0.77388161
		 0.83359843 0.74579298 0.87001401 0.76972342 0.86709595 0.74237174 0.89914739 0.76426852
		 0.89612544 0.73599958 0.6952548 0.77138633 0.66644537 0.76803869 0.66904002 0.73654383
		 0.69773841 0.74272734 0.71783578 0.77353561 0.71970731 0.74529094 0.74015319 0.77513421
		 0.7415641 0.74705827 0.80074883 0.79065752 0.77164912 0.79084617 0.83629918 0.788225
		 0.87200028 0.78402305 0.90142912 0.77741754 0.69429201 0.78603584 0.66576219 0.78301984
		 0.71693408 0.78781688 0.73946065 0.78933662 0.80074883 0.80279773 0.77146834 0.80273914
		 0.83726579 0.80018216 0.87381607 0.79592401 0.90380919 0.78808004 0.69356 0.79797238
		 0.66557127 0.79462552 0.71626508 0.79954773 0.73897892 0.80102646 0.77743268 0.65776706
		 0.80074883 0.65777159 0.82816929 0.65685534 0.85449284 0.65614963 0.875301 0.65232664
		 0.69414294 0.6517697 0.71483225 0.65564525 0.73247159 0.65658242 0.75077897 0.65711904
		 0.73744619 0.87390584 0.77166599 0.87733126 0.80074883 0.8798334 0.84606427 0.87912899
		 0.88927007 0.87358761 0.92545569 0.86409289 0.65614694 0.86691242 0.68818301 0.87039393
		 0.71296358 0.87200445 0.82399327 0.64488286 0.8542105 0.64488286 0.80074883 0.64488286
		 0.87414438 0.64488286 0.71584976 0.64488286 0.7338298 0.64488286 0.77872205 0.64488286
		 0.75223666 0.64488286 0.69464582 0.64488286 0.81765282 0.63190824 0.8536092 0.63528228
		 0.80074883 0.6314171 0.87388086 0.63292772 0.716214 0.63398623 0.73320884 0.63424391
		 0.76756746 0.63107497 0.75140828 0.63342738 0.69433302 0.6331653 0.82200301 0.60671979
		 0.85377955 0.60900301 0.78988218 0.60937953 0.78770542 0.60735047 0.78955024 0.60445088
		 0.79126012 0.60615975 0.86942732 0.60526228 0.71640533 0.60659152 0.73214662 0.60688758
		 0.78629231 0.60541725 0.78852779 0.60318297 0.74781144 0.6060943 0.75907999 0.60492206
		 0.69957072 0.60484004 0.85197014 0.55552727 0.85470533 0.58501357 0.83035094 0.58337921
		 0.83798355 0.55411988 0.81818849 0.58056027 0.82385027 0.55829275 0.86488718 0.58231819
		 0.85479057 0.54872948 0.73176414 0.58152735 0.71732664 0.58120435 0.72048342 0.54605567
		 0.73192644 0.545452 0.80680537 0.57497787 0.82186145 0.55131358 0.74658233 0.55198526
		 0.74639624 0.58088481 0.75293595 0.5439508 0.76128763 0.57945579 0.70490408 0.57929337
		 0.71489549 0.53824848 0.73324233 0.53515005 0.83909601 0.5454517 0.81120145 0.60168391
		 0.79940361 0.59090811 0.79122555 0.61576653 0.79653937 0.61914104 0.80058169 0.60805023
		 0.79695129 0.60525566 0.78189784 0.61256188 0.77750665 0.60533959 0.79335862 0.60137075
		 0.78407872 0.60231006;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 146 ".vt[0:145]"  -0.36892509 0.6464951 0.072695978 -0.34293136 0.6464951 0.072695978
		 -0.36892509 0.67881835 0.072695978 -0.34293136 0.67881835 0.072695978 -0.36892509 0.67881835 -0.08918415
		 -0.34293136 0.67881835 -0.08918415 -0.36892509 0.6464951 -0.08918415 -0.34293136 0.6464951 -0.08918415
		 -0.36287197 0.61978889 0.093156487 -0.34898463 0.61978889 0.093156487 -0.34898463 0.67881835 0.093156487
		 -0.36287197 0.67881835 0.093156487 -0.35592839 0.67881835 0.072695978 -0.35592824 0.67881835 -0.08918415
		 -0.35592839 0.6464951 -0.08918415 -0.35592824 0.6464951 0.072695978 -0.35467112 0.63613439 0.28565681
		 -0.35467112 0.67881835 0.28565681 -0.3571856 0.67881835 0.28565681 -0.3571856 0.63613439 0.28565681
		 -0.3571856 0.6710996 0.34724617 -0.35467112 0.6710996 0.34724617 -0.26054871 1.12627375 -0.18290044
		 -0.277738 1.11334801 -0.03229351 -0.24021788 1.16323912 0.078004479 -0.22997497 1.23965144 -0.17849897
		 -0.22056499 1.25406253 0.086832389 -0.21856166 1.31519735 -0.1160357 -0.24434003 1.34390199 -0.040994029
		 -0.22076815 1.31414521 0.032335091 -0.22658347 1.17799354 -0.11798488 -0.18793711 1.21181059 0.050886746
		 -0.25630218 1.2373364 -0.12573594 -0.28503382 1.30383968 -0.10261282 -0.29250965 1.31681216 -0.040994029
		 -0.25349817 1.24618864 0.071417697 -0.28445369 1.30283475 0.02085717 -0.1817881 1.16646147 -0.03233945
		 -0.20463476 1.17084682 -0.11879747 -0.20770025 1.18185461 0.051584996 -0.26774028 1.21021557 -0.12661788
		 -0.32500568 1.24508226 -0.099011153 -0.33899966 1.25278902 -0.041117806 -0.27434534 1.21535778 0.072299629
		 -0.3289037 1.24596119 0.017629724 -0.32807142 0.96926636 0.030328326 -0.38495168 0.96926636 0.045451134
		 -0.38535267 0.91686028 0.049840994 -0.32503375 0.91686028 0.033803899 -0.30986258 0.96926636 -0.030941037
		 -0.30572417 0.91686028 -0.031169688 -0.32807142 0.96926636 -0.094060078 -0.32503375 0.91686028 -0.09810476
		 -0.38495168 0.96926636 -0.099769384 -0.38535267 0.91686028 -0.10415924 -0.43573499 0.96926636 -0.079614975
		 -0.43920651 0.91686028 -0.082786351 -0.44676328 0.96926636 -0.037349712 -0.4509016 0.91686028 -0.037965816
		 -0.43573499 0.96926636 0.0055391528 -0.43920651 0.91686028 0.0075160265 -0.32686192 0.99491578 0.031712014
		 -0.38546905 0.99549651 0.047198802 -0.30821517 0.99491578 -0.031032067 -0.32686192 0.99491578 -0.09567032
		 -0.38511142 0.99491578 -0.10151705 -0.43564647 1.0091868639 -0.08087755 -0.44654134 1.012162566 -0.037594993
		 -0.43566009 1.0091300011 0.0063261674 -0.32268989 1.00028526783 0.032861277 -0.37983754 1.016068101 0.048650429
		 -0.30436274 0.99530435 -0.031107672 -0.32266939 0.99993598 -0.097007789 -0.37692299 1.015351057 -0.10296866
		 -0.42950431 1.032287955 -0.081926242 -0.44127795 1.034614325 -0.037798721 -0.43057835 1.03084743 0.0069798683
		 -0.38317174 0.75700289 0.025983708 -0.34154165 0.75700289 0.014915466 -0.32821482 0.75700289 -0.029927073
		 -0.34279323 0.75776744 -0.076158427 -0.38320076 0.75700241 -0.080301479 -0.42153549 0.75627273 -0.065481104
		 -0.42841136 0.75700289 -0.034617528 -0.4203397 0.75700289 -0.0032275319 -0.37201759 1.17480016 0.01593994
		 -0.3192938 1.14758921 0.068547271 -0.25292435 1.1188786 0.048614159 -0.227268 1.104303 -0.032144006
		 -0.24337208 1.10784256 -0.11534017 -0.30460551 1.14050412 -0.12286551 -0.36307994 1.17401922 -0.096300334
		 -0.37896496 1.18135178 -0.040591173 -0.33350247 0.73949921 -0.021351114 -0.34636441 0.74021566 -0.070991658
		 -0.34542286 0.73949921 0.010474555 -0.38266051 0.73949915 -0.074692793 -0.41663784 0.73895246 -0.061448947
		 -0.42312336 0.73949921 -0.033830307 -0.38265896 0.73949921 0.020374563 -0.4159039 0.73949921 -0.005753479
		 -0.34469494 0.71826631 -0.01100729 -0.34151155 0.7243427 -0.078685261 -0.34848255 0.72197205 0.016996009
		 -0.38348848 0.72196889 -0.082928412 -0.42348605 0.72043973 -0.067324646 -0.43088847 0.72197205 -0.03498634
		 -0.40348285 0.72197205 0.019721406 -0.42241788 0.72197205 -0.0020441436 -0.35978031 0.67320502 -0.01099463
		 -0.35558909 0.67871886 -0.077647083 -0.3567937 0.70348167 0.074563704 -0.36732432 0.70564085 0.083790645
		 -0.37294209 0.68583035 0.083035603 -0.36364293 0.68798971 0.07461337 -0.38309211 0.66832662 -0.08126542
		 -0.41815728 0.65042907 -0.064904332 -0.42483729 0.66949922 -0.034754179 -0.37974834 0.70302147 0.086068079
		 -0.38151968 0.68844986 0.085114442 -0.41824025 0.66949922 -0.0027890729 -0.40543133 0.66949922 0.0183309
		 -0.29393682 0.60620332 -0.073138028 -0.3539854 0.63159865 -0.076672085 -0.35241172 0.63537008 -0.018334864
		 -0.28786927 0.61151224 -0.034865778 -0.36730534 0.61943334 0.01447125 -0.30127189 0.61273265 0.0039745765
		 -0.37184998 0.61417776 -0.079678029 -0.28540981 0.58953971 -0.072724983 -0.37144959 0.58592421 -0.032891739
		 -0.38668954 0.59863502 -0.064093113 -0.3002204 0.5805136 -0.06275332 -0.29705513 0.57833326 -0.036838092
		 -0.40084332 0.61943334 0.025422608 -0.29271486 0.59608305 0.0047604926 -0.30904824 0.5863387 -0.0043346984
		 -0.41425428 0.61943334 -0.0034802102 -0.28037679 0.59162664 -0.036692809 -0.36259747 0.66949922 0.013145187
		 -0.35704458 0.71246439 0.052576035 -0.34681112 0.70873696 0.03799554 -0.35643703 0.68273431 0.037819196
		 -0.3658694 0.67900693 0.051328067 -0.38136119 0.70695001 0.058611851 -0.38456616 0.68452132 0.057667542;
	setAttr -s 287 ".ed";
	setAttr ".ed[0:165]"  8 9 0 9 10 0 2 12 0 3 5 0 5 13 0 4 13 0 5 7 0 7 14 0
		 6 14 0 1 15 0 0 6 0 1 7 0 0 2 0 2 4 0 4 6 0 0 15 0 1 9 0 1 3 0 3 10 0 3 12 0 2 11 0
		 11 10 0 0 8 0 8 11 0 10 12 0 9 15 0 14 15 0 13 14 0 12 13 0 9 16 0 10 17 0 16 17 0
		 11 18 0 18 17 0 8 19 0 19 18 0 19 16 0 12 11 0 15 8 0 18 20 0 17 21 0 20 21 0 19 20 0
		 16 21 0 22 23 0 23 24 0 22 25 0 24 26 0 27 28 0 28 29 0 26 29 0 25 27 0 30 23 1 22 30 1
		 24 31 1 23 31 1 30 32 1 25 32 1 27 33 1 33 34 1 28 34 1 26 35 1 31 35 1 34 36 1 29 36 1
		 35 36 1 32 33 1 23 37 1 37 38 1 30 38 1 31 39 1 39 37 1 38 40 1 32 40 1 33 41 1 41 42 1
		 34 42 1 35 43 1 43 39 1 42 44 1 36 44 1 44 43 1 40 41 1 46 45 1 46 47 1 47 48 1 45 48 1
		 45 49 1 48 50 1 49 50 1 49 51 1 50 52 1 51 52 1 51 53 1 52 54 1 53 54 1 53 55 1 54 56 1
		 55 56 1 55 57 1 56 58 1 57 58 1 57 59 1 58 60 1 59 60 1 59 46 1 60 47 1 62 61 1 62 46 1
		 61 45 1 61 63 1 63 49 1 63 64 1 64 51 1 64 65 1 65 53 1 65 66 1 66 55 1 66 67 1 67 57 1
		 67 68 1 68 59 1 68 62 1 70 69 1 70 62 1 69 61 1 69 71 1 71 63 1 71 72 1 72 64 1 72 73 1
		 73 65 1 73 74 1 74 66 1 74 75 1 75 67 1 75 76 1 76 68 1 76 70 1 47 77 1 78 77 1 48 78 1
		 79 78 1 50 79 1 80 79 1 52 80 1 80 81 1 54 81 1 81 82 1 56 82 1 82 83 1 58 83 1 83 84 1
		 60 84 1 77 84 1 44 85 1 85 86 1 43 86 1 86 87 1 39 87 1 87 88 1 37 88 1 88 89 1 38 89 1
		 89 90 1 40 90 1;
	setAttr ".ed[166:286]" 90 91 1 41 91 1 91 92 1 42 92 1 92 85 1 85 76 1 86 70 1
		 87 69 1 88 71 1 89 72 1 90 73 1 91 74 1 92 75 1 79 93 1 94 93 1 80 94 1 78 95 1 93 95 1
		 94 96 1 81 96 1 82 97 1 97 98 1 83 98 1 77 99 1 95 99 1 98 100 1 84 100 1 99 100 1
		 96 97 1 93 101 1 102 101 1 94 102 1 95 103 1 101 103 1 102 104 1 96 104 1 97 105 1
		 105 106 1 98 106 1 99 107 1 103 107 1 106 108 1 100 108 1 107 108 1 104 105 1 101 109 1
		 109 110 1 102 110 1 111 112 1 112 113 1 113 114 1 111 114 1 110 115 1 104 115 1 105 116 1
		 116 117 1 106 117 1 112 118 1 118 119 1 119 113 1 117 120 1 108 120 1 120 121 1 107 121 1
		 115 116 1 123 122 1 123 124 1 124 125 1 122 125 1 124 126 1 126 127 1 125 127 1 123 128 1
		 122 129 1 128 129 1 131 130 1 131 132 1 132 133 1 130 133 1 126 134 1 134 135 1 127 135 1
		 137 136 1 130 137 1 133 136 1 134 137 1 135 136 1 128 131 1 129 132 1 129 138 1 133 138 1
		 138 135 1 125 138 1 116 131 1 117 130 1 120 137 1 121 134 1 121 139 1 139 126 1 139 109 1
		 109 124 1 110 123 1 115 128 1 103 140 1 141 140 1 101 141 1 109 142 1 143 142 1 139 143 1
		 141 142 1 107 144 1 140 144 1 121 145 1 144 145 1 145 143 1 140 112 1 141 111 1 142 114 1
		 143 113 1 144 118 1 145 119 1;
	setAttr -s 144 -ch 566 ".fc[0:143]" -type "polyFaces" 
		f 4 -29 -20 3 4
		mu 0 4 18 19 3 5
		f 4 -28 -5 6 7
		mu 0 4 20 18 5 7
		f 4 -27 -8 -12 9
		mu 0 4 21 20 7 9
		f 4 -18 11 -7 -4
		mu 0 4 3 1 10 11
		f 4 14 -11 12 13
		mu 0 4 13 12 0 2
		f 3 25 -10 16
		mu 0 3 15 22 1
		f 4 17 18 -2 -17
		mu 0 4 1 3 16 15
		f 3 -25 -19 19
		mu 0 3 19 16 3
		f 4 -21 -13 22 23
		mu 0 4 17 2 0 14
		f 3 24 37 21
		mu 0 3 16 19 17
		f 3 38 -23 15
		mu 0 3 22 14 0
		f 4 26 -16 10 8
		mu 0 4 20 21 8 6
		f 4 27 -9 -15 5
		mu 0 4 18 20 6 4
		f 4 28 -6 -14 2
		mu 0 4 19 18 4 2
		f 4 1 30 -32 -30
		mu 0 4 15 16 24 23
		f 4 -31 -22 32 33
		mu 0 4 24 16 17 25
		f 4 -24 34 35 -33
		mu 0 4 17 14 26 25
		f 4 -37 -35 0 29
		mu 0 4 23 26 14 15
		f 3 -38 -3 20
		mu 0 3 17 19 2
		f 3 -26 -1 -39
		mu 0 3 22 15 14
		f 4 -34 39 41 -41
		mu 0 4 24 25 28 27
		f 3 -36 42 -40
		mu 0 3 25 26 28
		f 4 36 43 -42 -43
		mu 0 4 26 23 27 28
		f 3 31 40 -44
		mu 0 3 23 24 27
		f 3 44 -53 -54
		mu 0 3 29 30 31
		f 3 45 54 -56
		mu 0 3 30 32 33
		f 4 -47 53 56 -58
		mu 0 4 34 29 31 35
		f 4 -49 58 59 -61
		mu 0 4 36 37 38 39
		f 4 47 61 -63 -55
		mu 0 4 32 40 41 33
		f 4 -50 60 63 -65
		mu 0 4 42 36 39 43
		f 4 50 64 -66 -62
		mu 0 4 40 42 43 41
		f 4 -52 57 66 -59
		mu 0 4 37 44 45 38
		f 4 52 67 68 -70
		mu 0 4 31 30 46 47
		f 4 55 70 71 -68
		mu 0 4 30 33 48 46
		f 4 -57 69 72 -74
		mu 0 4 35 31 47 49
		f 4 -60 74 75 -77
		mu 0 4 39 38 50 51
		f 4 62 77 78 -71
		mu 0 4 33 41 52 48
		f 4 -64 76 79 -81
		mu 0 4 43 39 51 53
		f 4 65 80 81 -78
		mu 0 4 41 43 53 52
		f 4 -67 73 82 -75
		mu 0 4 38 45 54 50
		f 4 -84 84 85 -87
		mu 0 4 55 56 57 58
		f 4 -88 86 88 -90
		mu 0 4 59 55 58 60
		f 4 -91 89 91 -93
		mu 0 4 61 59 60 62
		f 4 -94 92 94 -96
		mu 0 4 63 61 62 64
		f 4 -97 95 97 -99
		mu 0 4 65 66 67 68
		f 4 -100 98 100 -102
		mu 0 4 69 65 68 70
		f 4 -103 101 103 -105
		mu 0 4 71 69 70 72
		f 4 -106 104 106 -85
		mu 0 4 56 71 72 57
		f 4 -108 108 83 -110
		mu 0 4 73 74 56 55
		f 4 -111 109 87 -112
		mu 0 4 75 73 55 59
		f 4 -113 111 90 -114
		mu 0 4 76 75 59 61
		f 4 -115 113 93 -116
		mu 0 4 77 76 61 63
		f 4 -117 115 96 -118
		mu 0 4 78 79 66 65
		f 4 -119 117 99 -120
		mu 0 4 80 78 65 69
		f 4 -121 119 102 -122
		mu 0 4 81 80 69 71
		f 4 -123 121 105 -109
		mu 0 4 74 81 71 56
		f 4 -124 124 107 -126
		mu 0 4 82 83 74 73
		f 4 -127 125 110 -128
		mu 0 4 84 82 73 75
		f 4 -129 127 112 -130
		mu 0 4 85 84 75 76
		f 4 -131 129 114 -132
		mu 0 4 86 85 76 77
		f 4 -133 131 116 -134
		mu 0 4 87 88 79 78
		f 4 -135 133 118 -136
		mu 0 4 89 87 78 80
		f 4 -137 135 120 -138
		mu 0 4 90 89 80 81
		f 4 -139 137 122 -125
		mu 0 4 83 90 81 74
		f 4 -86 139 -141 -142
		mu 0 4 58 57 91 92
		f 4 -89 141 -143 -144
		mu 0 4 60 58 92 93
		f 4 -92 143 -145 -146
		mu 0 4 62 60 93 94
		f 4 -95 145 146 -148
		mu 0 4 64 62 94 95
		f 4 -98 147 148 -150
		mu 0 4 68 67 96 97
		f 4 -101 149 150 -152
		mu 0 4 70 68 97 98
		f 4 -104 151 152 -154
		mu 0 4 72 70 98 99
		f 4 -107 153 -155 -140
		mu 0 4 57 72 99 91
		f 4 -82 155 156 -158
		mu 0 4 52 53 100 101
		f 4 -79 157 158 -160
		mu 0 4 48 52 101 102
		f 4 -72 159 160 -162
		mu 0 4 46 48 102 103
		f 4 -69 161 162 -164
		mu 0 4 47 46 103 104
		f 4 -73 163 164 -166
		mu 0 4 49 47 104 105
		f 4 -83 165 166 -168
		mu 0 4 50 54 106 107
		f 4 -76 167 168 -170
		mu 0 4 51 50 107 108
		f 4 -80 169 170 -156
		mu 0 4 53 51 108 100
		f 4 -157 171 138 -173
		mu 0 4 101 100 90 83
		f 4 -159 172 123 -174
		mu 0 4 102 101 83 82
		f 4 -161 173 126 -175
		mu 0 4 103 102 82 84
		f 4 -163 174 128 -176
		mu 0 4 104 103 84 85
		f 4 -165 175 130 -177
		mu 0 4 105 104 85 86
		f 4 -167 176 132 -178
		mu 0 4 107 106 88 87
		f 4 -169 177 134 -179
		mu 0 4 108 107 87 89
		f 4 -171 178 136 -172
		mu 0 4 100 108 89 90
		f 4 144 179 -181 -182
		mu 0 4 94 93 109 110
		f 4 142 182 -184 -180
		mu 0 4 93 92 111 109
		f 4 -147 181 184 -186
		mu 0 4 95 94 110 112
		f 4 -151 186 187 -189
		mu 0 4 98 97 113 114
		f 4 140 189 -191 -183
		mu 0 4 92 91 115 111
		f 4 -153 188 191 -193
		mu 0 4 99 98 114 116
		f 4 154 192 -194 -190
		mu 0 4 91 99 116 115
		f 4 -149 185 194 -187
		mu 0 4 97 96 117 113
		f 4 180 195 -197 -198
		mu 0 4 110 109 118 119
		f 4 183 198 -200 -196
		mu 0 4 109 111 120 118
		f 4 -185 197 200 -202
		mu 0 4 112 110 119 121
		f 4 -188 202 203 -205
		mu 0 4 114 113 122 123
		f 4 190 205 -207 -199
		mu 0 4 111 115 124 120
		f 4 -192 204 207 -209
		mu 0 4 116 114 123 125
		f 4 193 208 -210 -206
		mu 0 4 115 116 125 124
		f 4 -195 201 210 -203
		mu 0 4 113 117 126 122
		f 4 196 211 212 -214
		mu 0 4 119 118 127 128
		f 4 214 215 216 -218
		mu 0 4 129 130 131 132
		f 4 -201 213 218 -220
		mu 0 4 121 119 128 133
		f 4 -204 220 221 -223
		mu 0 4 123 122 134 135
		f 4 223 224 225 -216
		mu 0 4 130 136 137 131
		f 4 -208 222 226 -228
		mu 0 4 125 123 135 138
		f 4 209 227 228 -230
		mu 0 4 124 125 138 139
		f 4 -211 219 230 -221
		mu 0 4 122 126 140 134
		f 4 -232 232 233 -235
		mu 0 4 141 142 143 144
		f 4 235 236 -238 -234
		mu 0 4 143 145 146 144
		f 4 -239 231 239 -241
		mu 0 4 147 142 141 148
		f 4 -242 242 243 -245
		mu 0 4 149 150 151 152
		f 4 245 246 -248 -237
		mu 0 4 145 153 154 146
		f 4 -249 -250 244 250
		mu 0 4 155 156 149 152
		f 4 -247 251 248 -253
		mu 0 4 157 158 156 155
		f 4 -254 240 254 -243
		mu 0 4 150 159 160 151
		f 4 255 -257 -244 -255
		mu 0 4 160 161 152 151
		f 4 257 252 -251 256
		mu 0 4 161 157 155 152
		f 4 -256 -240 234 258
		mu 0 4 162 148 141 144
		f 4 -258 -259 237 247
		mu 0 4 154 162 144 146
		f 4 -222 259 241 -261
		mu 0 4 135 134 150 149
		f 4 -227 260 249 -262
		mu 0 4 138 135 149 156
		f 4 -229 261 -252 -263
		mu 0 4 139 138 156 158
		f 4 -264 262 -246 -265
		mu 0 4 163 164 153 145
		f 4 -266 264 -236 -267
		mu 0 4 127 163 145 143
		f 4 -213 266 -233 -268
		mu 0 4 128 127 143 142
		f 4 -219 267 238 -269
		mu 0 4 133 128 142 147
		f 4 -231 268 253 -260
		mu 0 4 134 140 159 150
		f 4 199 269 -271 -272
		mu 0 4 118 120 165 166
		f 4 265 272 -274 -275
		mu 0 4 163 127 167 168
		f 4 -212 271 275 -273
		mu 0 4 127 118 166 167
		f 4 206 276 -278 -270
		mu 0 4 120 124 169 165
		f 4 229 278 -280 -277
		mu 0 4 124 139 170 169
		f 4 263 274 -281 -279
		mu 0 4 164 163 168 171
		f 4 270 281 -215 -283
		mu 0 4 166 165 130 129
		f 4 273 283 -217 -285
		mu 0 4 168 167 132 131
		f 4 -276 282 217 -284
		mu 0 4 167 166 129 132
		f 4 277 285 -224 -282
		mu 0 4 165 169 136 130
		f 4 279 286 -225 -286
		mu 0 4 169 170 172 136
		f 4 280 284 -226 -287
		mu 0 4 171 168 131 137;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".db" yes;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 5 ".lnk";
	setAttr -s 5 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 10;
	setAttr -s 18 ".dli[1:17]"  1 2 0 0 3 4 0 0 
		0 0 5 6 7 8 9 10 11;
	setAttr -s 5 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n"
		+ "                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                $editorName;\nstereoCameraView -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n"
		+ "                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n"
		+ "            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n"
		+ "            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n"
		+ "                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n"
		+ "                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n"
		+ "            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n"
		+ "            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n"
		+ "                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n"
		+ "                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n"
		+ "            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -shadows 0\n            $editorName;\n"
		+ "modelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 0\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n"
		+ "                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n"
		+ "                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n"
		+ "                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n"
		+ "                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n"
		+ "                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n"
		+ "                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -ignoreAssets 1\n                -additiveGraphingMode 0\n"
		+ "                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xpm\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 35 100 -ps 2 65 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n"
		+ "\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 0\\n    -showReferenceNodes 0\\n    -showReferenceMembers 0\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode displayLayer -n "items";
	setAttr ".do" 4;
createNode displayLayer -n "base";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode lambert -n "checkers";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Users/Brian/Dropbox/3D/Checkers-Dull.jpg";
createNode place2dTexture -n "place2dTexture1";
createNode lambert -n "baseNPC";
createNode shadingEngine -n "lambert3SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
createNode file -n "file2";
	setAttr ".ftn" -type "string" "C:/Users/Brian/Dropbox/Homework/GameDev/3/textures/base.png";
createNode place2dTexture -n "place2dTexture2";
createNode displayLayer -n "joints";
	setAttr ".dt" 2;
	setAttr ".v" no;
	setAttr ".c" 12;
	setAttr ".do" 2;
createNode displayLayer -n "Controls";
	setAttr ".c" 17;
	setAttr ".do" 3;
createNode ikSplineSolver -n "ikSplineSolver";
createNode cluster -n "baseSpineCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode tweak -n "tweak1";
createNode objectSet -n "cluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[0:1]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*]";
createNode cluster -n "topSpineCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[3:4]";
createNode cluster -n "midSpineCluster";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
createNode objectSet -n "cluster3Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[2]";
createNode objectSet -n "Controls_Set";
	setAttr ".ihi" 0;
	setAttr -s 10 ".dsm";
	setAttr ".an" -type "string" "gCharacterSet";
createNode animCurveUA -n "r_hand_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -29.999999999999996;
createNode animCurveUA -n "r_fingers_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -119.99999999999999;
createNode animCurveUA -n "r_thumb_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -90 10 0;
createNode animCurveUA -n "r_thumb_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 10 -119.99999999999999;
createNode animCurveTL -n "hipsCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "shouldersCTRL_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTL -n "shouldersCTRL_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.05;
createNode animCurveTA -n "hips_override_rotateY";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "hips_override_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "shouldersCTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "right_shoulderCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 85.006358188708631;
	setAttr -s 2 ".kit[1]"  3;
	setAttr -s 2 ".kot[1]"  5;
createNode animCurveTA -n "right_shoulderCTRL_rotateZ";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 59.999999999999993;
createNode animCurveTA -n "right_elbowCTRL_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "right_elbowCTRL_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode animCurveTA -n "right_elbowCTRL_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.999999999999996;
createNode animCurveTU -n "right_handCTRL_Curl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5;
createNode animCurveTU -n "right_handCTRL_thumbCurl";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0;
createNode groupId -n "groupId6";
	setAttr ".ihi" 0;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode lambert -n "tex_inkay";
createNode shadingEngine -n "lambert4SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
createNode file -n "file3";
	setAttr ".ftn" -type "string" "C:/Users/Brian/Dropbox/Homework/GameDev/3/textures/inkay.png";
createNode place2dTexture -n "place2dTexture3";
createNode skinCluster -n "skinCluster1";
	setAttr ".skm" 1;
	setAttr -s 146 ".wl";
	setAttr -s 2 ".wl[0].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[1].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[2].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[3].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[4].w[22:23]"  0.99342125432983686 0.0065787456701631624;
	setAttr -s 2 ".wl[5].w[22:23]"  0.89562643797582808 0.10437356202417188;
	setAttr -s 2 ".wl[6].w[22:23]"  0.97379840677257146 0.026201593227428571;
	setAttr -s 2 ".wl[7].w[22:23]"  0.65622007298513207 0.34377992701486793;
	setAttr -s 2 ".wl[8].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[9].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[13].w[22:23]"  0.96667716218223154 0.033322837817768493;
	setAttr -s 2 ".wl[14].w[22:23]"  0.88529595905363745 0.11470404094636258;
	setAttr -s 2 ".wl[15].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[16].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[17].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[20].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[21].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[22].w[18:19]"  0.93142272140546145 0.068577278594538535;
	setAttr -s 2 ".wl[23].w[18:19]"  0.93445150375426955 0.065548496245730517;
	setAttr -s 2 ".wl[24].w[18:19]"  0.85113073763415381 0.14886926236584616;
	setAttr -s 2 ".wl[25].w[17:18]"  0.87678674035851967 0.12321325964148035;
	setAttr -s 2 ".wl[26].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[27].w[17:18]"  0.80106996615179837 0.1989300338482016;
	setAttr -s 2 ".wl[28].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[29].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[30].w[18:19]"  0.98938130343173614 0.010618696568263869;
	setAttr -s 2 ".wl[31].w[18:19]"  0.93113547179263789 0.068864528207362108;
	setAttr -s 2 ".wl[32].w[18:19]"  0.99963253025149756 0.0003674697485024744;
	setAttr -s 2 ".wl[33].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[34].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[35].w[18:19]"  0.94461445253686804 0.055385547463131901;
	setAttr -s 2 ".wl[36].w[17:18]"  0.5 0.5;
	setAttr -s 2 ".wl[37].w[18:19]"  0.94144241358874392 0.0585575864112561;
	setAttr -s 2 ".wl[38].w[17:18]"  0.55341637822852641 0.44658362177147354;
	setAttr -s 2 ".wl[39].w[18:19]"  0.90412083957499911 0.095879160425000914;
	setAttr -s 2 ".wl[40].w[18:19]"  0.99952154448275932 0.00047845551724072163;
	setAttr -s 2 ".wl[41].w[18:19]"  0.9993522520650816 0.00064774793491841726;
	setAttr -s 2 ".wl[42].w[18:19]"  0.99224078215595823 0.0077592178440418188;
	setAttr -s 2 ".wl[43].w[18:19]"  0.91664291917942919 0.083357080820570834;
	setAttr -s 2 ".wl[44].w[18:19]"  0.96771653047770378 0.032283469522296278;
	setAttr -s 2 ".wl[45].w[19:20]"  0.67289506214270545 0.3271049378572945;
	setAttr -s 2 ".wl[46].w[19:20]"  0.66176853291096227 0.33823146708903779;
	setAttr -s 2 ".wl[47].w[19:20]"  0.54858016344773586 0.45141983655226414;
	setAttr -s 2 ".wl[48].w[19:20]"  0.55354114040034053 0.44645885959965947;
	setAttr -s 2 ".wl[49].w[19:20]"  0.7825781014752563 0.21742189852474364;
	setAttr -s 2 ".wl[50].w[19:20]"  0.61294516405274213 0.38705483594725792;
	setAttr -s 2 ".wl[51].w[19:20]"  0.95215673902829578 0.04784326097170423;
	setAttr -s 2 ".wl[52].w[19:20]"  0.81322851499752391 0.18677148500247612;
	setAttr -s 2 ".wl[53].w[19:20]"  0.99819875949302483 0.0018012405069752482;
	setAttr -s 2 ".wl[54].w[19:20]"  0.99623252127819484 0.0037674787218051108;
	setAttr -s 2 ".wl[55].w[19:20]"  0.93568642298041782 0.064313577019582235;
	setAttr -s 2 ".wl[56].w[19:20]"  0.78097195242623962 0.2190280475737604;
	setAttr -s 2 ".wl[57].w[19:20]"  0.81509277232077249 0.18490722767922754;
	setAttr -s 2 ".wl[58].w[19:20]"  0.63637650546942393 0.36362349453057607;
	setAttr -s 2 ".wl[59].w[19:20]"  0.72333609519297615 0.27666390480702391;
	setAttr -s 2 ".wl[60].w[19:20]"  0.57763947655339898 0.42236052344660113;
	setAttr -s 2 ".wl[61].w[18:19]"  0.52103625233093032 0.47896374766906968;
	setAttr -s 2 ".wl[62].w[18:19]"  0.50147375436070163 0.49852624563929837;
	setAttr -s 2 ".wl[63].w[18:19]"  0.54581164323622355 0.45418835676377639;
	setAttr -s 2 ".wl[64].w[18:19]"  0.56667604816156192 0.43332395183843808;
	setAttr -s 2 ".wl[65].w[19:20]"  0.99915044247667339 0.00084955752332664246;
	setAttr -s 2 ".wl[66].w[18:19]"  0.5 0.5;
	setAttr -s 2 ".wl[67].w[18:19]"  0.5 0.5;
	setAttr -s 2 ".wl[68].w[18:19]"  0.5007493117422156 0.49925068825778435;
	setAttr -s 2 ".wl[69].w[18:19]"  0.53183123247433461 0.46816876752566533;
	setAttr -s 2 ".wl[70].w[18:19]"  0.52317311199839689 0.47682688800160317;
	setAttr -s 2 ".wl[71].w[18:19]"  0.54909975322642512 0.45090024677357488;
	setAttr -s 2 ".wl[72].w[18:19]"  0.60187873473457409 0.39812126526542591;
	setAttr -s 2 ".wl[73].w[18:19]"  0.81154712323447842 0.18845287676552158;
	setAttr -s 2 ".wl[74].w[18:19]"  0.5380665569560994 0.4619334430439006;
	setAttr -s 2 ".wl[75].w[18:19]"  0.51986171832820671 0.48013828167179334;
	setAttr -s 2 ".wl[76].w[18:19]"  0.51814883569271297 0.48185116430728703;
	setAttr -s 2 ".wl[77].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[78].w[25:26]"  0.5042471434841066 0.4957528565158934;
	setAttr -s 2 ".wl[79].w";
	setAttr ".wl[79].w[21]" 0.69026305799106757;
	setAttr ".wl[79].w[26]" 0.30973694200893237;
	setAttr -s 2 ".wl[80].w[21:22]"  0.93209005059926586 0.067909949400734165;
	setAttr -s 2 ".wl[81].w[21:22]"  0.99829139468640016 0.0017086053135998782;
	setAttr -s 2 ".wl[82].w[21:22]"  0.92357930391163334 0.076420696088366685;
	setAttr -s 2 ".wl[83].w";
	setAttr ".wl[83].w[21]" 0.77848138797678479;
	setAttr ".wl[83].w[26]" 0.22151861202321529;
	setAttr -s 2 ".wl[84].w[25:26]"  0.57125143778157539 0.42874856221842467;
	setAttr -s 2 ".wl[85].w[18:19]"  0.88647610577296299 0.11352389422703706;
	setAttr -s 2 ".wl[86].w[18:19]"  0.81193819421829405 0.188061805781706;
	setAttr -s 2 ".wl[87].w[18:19]"  0.81194817756197868 0.18805182243802132;
	setAttr -s 2 ".wl[88].w[18:19]"  0.87966054237602387 0.12033945762397616;
	setAttr -s 2 ".wl[89].w[18:19]"  0.94717506419366659 0.052824935806333372;
	setAttr -s 2 ".wl[90].w[18:19]"  0.99965622488656192 0.00034377511343804893;
	setAttr -s 2 ".wl[91].w[18:19]"  0.99398094950966753 0.006019050490332468;
	setAttr -s 2 ".wl[92].w[18:19]"  0.95554508254777815 0.044454917452221805;
	setAttr -s 2 ".wl[93].w[25:26]"  0.70324508923367757 0.29675491076632243;
	setAttr -s 2 ".wl[94].w[21:22]"  0.92963864109455929 0.070361358905440707;
	setAttr -s 2 ".wl[95].w[25:26]"  0.52845984373174926 0.47154015626825085;
	setAttr -s 2 ".wl[96].w[21:22]"  0.99987375241212029 0.00012624758787971706;
	setAttr -s 2 ".wl[97].w[21:22]"  0.93564980458893365 0.06435019541106643;
	setAttr -s 2 ".wl[98].w";
	setAttr ".wl[98].w[21]" 0.81685309116064264;
	setAttr ".wl[98].w[26]" 0.18314690883935736;
	setAttr -s 2 ".wl[99].w[25:26]"  0.50249907383251113 0.49750092616748898;
	setAttr -s 2 ".wl[100].w[25:26]"  0.6487379079386062 0.35126209206139386;
	setAttr -s 2 ".wl[101].w[25:26]"  0.76507486668193991 0.23492513331806009;
	setAttr -s 2 ".wl[102].w[21:22]"  0.8123312741031532 0.18766872589684683;
	setAttr -s 2 ".wl[103].w[25:26]"  0.51587229198114437 0.48412770801885557;
	setAttr -s 2 ".wl[104].w[21:22]"  0.99032222642082768 0.0096777735791722889;
	setAttr -s 2 ".wl[105].w[21:22]"  0.84264668871148618 0.15735331128851382;
	setAttr -s 2 ".wl[106].w[25:26]"  0.83894789153609706 0.161052108463903;
	setAttr -s 2 ".wl[107].w[25:26]"  0.51354971288852225 0.48645028711147781;
	setAttr -s 2 ".wl[108].w[25:26]"  0.64828640965118367 0.35171359034881633;
	setAttr -s 2 ".wl[109].w[25:26]"  0.78928398197037375 0.21071601802962628;
	setAttr -s 2 ".wl[110].w[22:23]"  0.92687898518201006 0.073121014817989924;
	setAttr -s 2 ".wl[111].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[112].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[113].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[114].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[115].w[22:23]"  0.97559800971749733 0.024401990282502575;
	setAttr -s 2 ".wl[116].w[22:23]"  0.7074558454405665 0.29254415455943344;
	setAttr -s 2 ".wl[117].w[25:26]"  0.83832348900397413 0.16167651099602592;
	setAttr -s 2 ".wl[118].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[119].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[120].w[25:26]"  0.64371702390817176 0.35628297609182824;
	setAttr -s 2 ".wl[121].w[25:26]"  0.52124663333437893 0.47875336666562107;
	setAttr -s 2 ".wl[122].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[123].w[22:23]"  0.54235542205323739 0.45764457794676272;
	setAttr -s 2 ".wl[124].w[25:26]"  0.66125065009408901 0.33874934990591105;
	setAttr -s 2 ".wl[125].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[126].w[25:26]"  0.51650325865394331 0.48349674134605664;
	setAttr -s 2 ".wl[127].w[23:24]"  0.50121988911190429 0.49878011088809571;
	setAttr -s 2 ".wl[128].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[129].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[130].w[23:24]"  0.76152835132482388 0.23847164867517612;
	setAttr -s 2 ".wl[131].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[132].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[133].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[134].w[25:26]"  0.50211331614856924 0.49788668385143087;
	setAttr -s 2 ".wl[135].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[136].w[23:24]"  0.50185571889726688 0.49814428110273307;
	setAttr -s 2 ".wl[137].w[25:26]"  0.56568054111276544 0.43431945888723456;
	setAttr -s 2 ".wl[138].w[23:24]"  0.5 0.5;
	setAttr -s 2 ".wl[139].w[25:26]"  0.55225960783443495 0.44774039216556505;
	setAttr -s 2 ".wl[140].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[141].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[142].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[143].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[144].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[145].w[25:26]"  0.5 0.5;
	setAttr -s 27 ".pm";
	setAttr ".pm[0]" -type "matrix" 0.84127583139270723 -0.20886839342932301 -0.49862708484473928 -0
		 -0.48393502379338565 0.12014933410909136 -0.86681660705090169 0 0.24096030432543142 0.97053497193011828 3.0531133177191805e-016 -0
		 39.5785702738645 6.3926234118224361 64.098559027546628 1;
	setAttr ".pm[1]" -type "matrix" -4.3822147908743947e-016 -2.6494003386802278e-016 1 -0
		 0.98633219095032887 -0.16476895670945998 3.9000028233970674e-016 0 0.16476895670946004 0.98633219095032898 3.6062240172745658e-016 -0
		 -70.34273836293697 27.710165788386835 -1.8303011014166966e-014 1;
	setAttr ".pm[2]" -type "matrix" -2.5509683672811723e-016 -4.4402352434401534e-016 1 -0
		 0.94274645461725792 0.3335103031490782 3.9000028233970669e-016 -0 -0.3335103031490782 0.94274645461725803 3.6062240172745658e-016 -0
		 -92.449505775884731 -19.50140521195031 -2.8384564166423915e-014 1;
	setAttr ".pm[3]" -type "matrix" -4.9681952814264144e-016 -1.2410335505414519e-016 1 -0
		 0.8940376290888935 -0.44799187244090716 3.9000028233970679e-016 0 0.44799187244090716 0.89403762908889362 3.6062240172745667e-016 -0
		 -97.110964909079087 72.779608173138513 -5.1477203078627171e-014 1;
	setAttr ".pm[4]" -type "matrix" -3.3515759951300327e-016 -3.8717007860661617e-016 1 -0
		 0.98907142627693712 0.14743715177154323 3.9000028233970664e-016 -0 -0.14743715177154335 0.98907142627693712 3.6062240172745653e-016 -0
		 -139.02411019782119 -8.7345933506335047 -3.2825456264924548e-014 1;
	setAttr ".pm[5]" -type "matrix" -3.0459643753085542e-016 -4.1164583870492819e-016 1 -0
		 0.97491545263876622 0.22257551573825285 3.9000028233970664e-016 -0 -0.22257551573825296 0.97491545263876622 3.6062240172745658e-016 -0
		 -146.39153582506668 -19.977937029127165 -4.0819062042225681e-014 1;
	setAttr ".pm[6]" -type "matrix" 0.84127583139270679 -0.20886839342932376 -0.49862708484473944 -0
		 -0.44311980324894157 0.26192918520955499 -0.8573435378563703 0 0.30967695342587104 0.94221393333027703 0.12780097165185833 -0
		 94.176755809791942 -28.467489975371429 170.81821270176923 1;
	setAttr ".pm[7]" -type "matrix" 0.85337628233841079 -0.49509898367811217 0.16317449893648547 -0
		 0.21358608196866627 0.04653847710620037 -0.97581512374932433 0 0.47553118334295064 0.86758928445983907 0.14546108468905714 -0
		 -30.777539924130849 15.873176574970065 122.60177741699169 1;
	setAttr ".pm[8]" -type "matrix" 0.98573860570375504 0.10360530232434791 -0.13260973778534232 -0
		 -0.14585337043661092 0.13291946986088787 -0.98033627335939233 0 -0.083941619936105341 0.98569688843080994 0.14613503543066403 -0
		 -8.5209333221243639 -10.141885304945367 131.12869219432628 1;
	setAttr ".pm[9]" -type "matrix" 0.99749861585564403 -0.070682338082087848 -0.00072003425158518079 -0
		 0.0087393646326820677 0.13342898115549959 -0.99101984364271034 0 0.070143673070997989 0.98853462967720773 0.13371294274322951 -0
		 -56.761488670318059 -0.28975831557956944 124.82500573498379 1;
	setAttr ".pm[10]" -type "matrix" 0.99749861585564403 -0.070682338082087848 -0.00072003425158518079 -0
		 0.0087393646326820677 0.13342898115549959 -0.99101984364271034 0 0.070143673070997989 0.98853462967720773 0.13371294274322951 -0
		 -71.401668421648935 -0.28975831557957032 124.82500573498382 1;
	setAttr ".pm[11]" -type "matrix" 0.99749861585564403 -0.070682338082087848 -0.00072003425158518079 -0
		 0.0087393646326820677 0.13342898115549959 -0.99101984364271034 0 0.070143673070997989 0.98853462967720773 0.13371294274322951 -0
		 -79.83217709417525 -0.28975831557955789 124.82500573498376 1;
	setAttr ".pm[12]" -type "matrix" 0.96332331616512845 -0.070682338082087848 -0.25886713892626284 -0
		 -0.24805323160519085 0.13342898115549959 -0.9595135753484817 0 0.10236104152870469 0.98853462967720773 0.11100226622057774 -0
		 -52.206752775647431 -0.28975831557954723 143.21711240266674 1;
	setAttr ".pm[13]" -type "matrix" 0.25747613956742493 -0.070682338082087889 -0.96369603332000142 -0
		 -0.95498974733041475 0.13342898115549962 -0.26493638761332045 0 0.14731130318901595 0.98853462967720807 -0.033146129211403343 -0
		 94.17489845163503 -0.28975831557955434 123.31851588946202 1;
	setAttr ".pm[14]" -type "matrix" 0.74787591961095301 -0.61187224681262142 0.25747613956742676 -0
		 0.29348500302336894 -0.043140879617417013 -0.95498974733041386 0 0.59543946952351379 0.78977922110315713 0.14731130318901656 -0
		 -101.0678205323901 70.660002645722969 87.531781112255189 1;
	setAttr ".pm[15]" -type "matrix" -0.070682338082085752 -0.99749861585564437 -0.00072003425158518274 0
		 0.13342898115549962 -0.0087393646326817884 -0.99101984364271045 0 0.98853462967720807 -0.070143673070995921 0.13371294274322956 -0
		 -6.0897934995684748 86.555046665806756 124.82500573498379 1;
	setAttr ".pm[16]" -type "matrix" -0.040046861882696939 -0.058247405259247716 0.99749861585563748 -0
		 0.88757841430739515 -0.46057375300964287 0.0087393646326298386 0 0.45891263581309027 0.88570822386335391 0.0701436730710958 -0
		 -109.79919449423146 60.85384062640567 -86.555046665799836 1;
	setAttr ".pm[17]" -type "matrix" 0.85337628233841079 -0.49509898367811217 0.16317449893648611 -0
		 -0.13615940535353774 0.090455427979265313 0.9865487478492172 0 -0.50319930154566372 -0.86411504552923291 0.0097801336375226786 -0
		 20.593169204850884 -33.003015801944926 -121.31418750157934 1;
	setAttr ".pm[18]" -type "matrix" 0.37878829239972484 0.03853148358670809 -0.92468089323479985 -0
		 0.91953937612447889 0.097386935951807599 0.38074022700854976 -0 0.10472232473309719 -0.9945004321158063 0.0014578147927543702 -0
		 -106.08461946458331 -20.799239398105776 -73.348695646862382 1;
	setAttr ".pm[19]" -type "matrix" -0.0018018609874124328 -0.015242908498154207 -0.9998821965799265 -0
		 0.99749861585564381 -0.070682338082087445 -0.0007200342515849427 0 -0.070663036044710137 -0.99738240450880533 0.015332139876012233 0
		 -100.36892707241707 -6.1466011085218417 -38.039056075793994 1;
	setAttr ".pm[20]" -type "matrix" -0.0018018609874124328 -0.015242908498154207 -0.9998821965799265 -0
		 0.99749861585564381 -0.070682338082087445 -0.0007200342515849427 0 -0.070663036044710137 -0.99738240450880533 0.015332139876012233 0
		 -85.728727072417058 -6.1466011085218284 -38.039056075793958 1;
	setAttr ".pm[21]" -type "matrix" -0.0018018609874124328 -0.015242908498154207 -0.9998821965799265 -0
		 0.99749861585564381 -0.070682338082087445 -0.0007200342515849427 0 -0.070663036044710137 -0.99738240450880533 0.015332139876012233 0
		 -77.298227072417063 -6.1466011085218231 -38.03905607579393 1;
	setAttr ".pm[22]" -type "matrix" -0.26052901939695194 -0.015242908498154212 -0.96534568098302442 -0
		 0.96332331616512834 -0.070682338082087445 -0.25886713892626262 0 -0.0642870016774931 -0.99738240450880533 0.033098649391653578 0
		 -77.107696418889574 -6.1466011085218168 -18.719983694887237 1;
	setAttr ".pm[23]" -type "matrix" -0.96627839286336359 -0.015242908498154217 -0.25704809127070294 -0
		 0.2574761395674251 -0.070682338082087459 -0.9636960333200012 0 -0.0034792296346201797 -0.99738240450880544 0.072223501281668642 0
		 -51.014429647647574 -6.1466011085218106 50.919616679099271 1;
	setAttr ".pm[24]" -type "matrix" 0.20155766544266071 -0.16025159901448729 -0.96627839286336314 -0
		 0.74787591961095323 -0.61187224681262142 0.25747613956742671 0 -0.63249989436155252 -0.77455263126128115 -0.0034792296346219786 0
		 -45.197011258109242 24.244963214408553 -44.371229647647674 1;
	setAttr ".pm[25]" -type "matrix" -0.015242908498154214 0.0018018609874124009 -0.99988219657992661 -0
		 -0.07068233808208535 -0.99749861585564414 -0.00072003425158494291 0 -0.99738240450880566 0.070663036044708041 0.015332139876012237 -0
		 -0.3465611085219677 70.575327072417068 -38.039056075793908 1;
	setAttr ".pm[26]" -type "matrix" 0.80935673313469603 -0.58731459357529514 -0.0018018609874780036 -0
		 -0.040046861882696884 -0.058247405259246168 0.99749861585563759 0 -0.5859504478903319 -0.80726006215720303 -0.070663036044798219 -0
		 35.089175436204542 -16.226037280015959 -70.575327072418901 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 10 ".ma";
	setAttr -s 27 ".dpf[0:26]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4;
	setAttr -s 10 ".lw";
	setAttr -s 10 ".lw";
	setAttr ".ucm" yes;
	setAttr ".nw" 2;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts3";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:23]";
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[24:143]";
createNode tweak -n "tweak2";
createNode objectSet -n "skinCluster1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose5";
	setAttr -s 25 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 28 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 73.947082354160059 -15.741128921508791 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.65595855381335177 -0.26404237477930687 -0.098202386043061279 0.70025444759419397 1
		 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 2.8427786942216007e-017 -3.772720192870743e-016
		 -0.041012311286790094 0 0 -1.0658141036401503e-014 1.4210854715202004e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.19308145657334075 0.84382053397027912 -0.0092168869143481602 0.50060114519768961 1
		 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 8.9538478026190056e-017 1.7338975898512486e-017
		 -0.10696429199167738 0 19.986452021047668 1.7763568394002445e-015 1.0081553152256954e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.19797543820211944 0.98020698113647342 1
		 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 27.329900075736013 -8.8817841970012523e-016
		 2.3092638912203256e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.39150932304870883 0.92017414110913909 1
		 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 -1.6653345369377348e-016 -4.6222318665293708e-033
		 -5.5511151231257827e-017 0 21.662453714202467 3.2529123521052116e-015 -1.8651746813702624e-014 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.30148264688144538 0.95347166377892834 1
		 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-016 1.1102230246251565e-016
		 -1.8488927466117478e-032 0 8.4659118652343963 -2.9283857042102712e-015 7.9936057773011271e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 -0.038230110283774744 0.9992689621256583 1
		 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 49.71915522221444 -1.9785827909710376e-014
		 1.4210854715202007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.072142717730075925 -0.86261751124173724 0.079727378537364696 0.49429748400046497 1
		 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 -3.3306690738754696e-016 2.2204460492503136e-016
		 -3.6977854932234956e-032 0 7.4631746668390493 1.3979705605173105 14.118132591247551 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.34857029177088739 -0.54489586365333686 -0.033082442378604998 0.76190078190963217 1
		 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 2.4837512176383899e-016 1.3016788560797769e-017
		 -0.10471975511965986 0 14.906642222727745 -3.1278588363322746e-015 3.0409525701783731e-015 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.038432460782543483 -0.14282943808027293 -0.25697920188294687 0.95503109236059724 1
		 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 5.8669713902295758e-016 -1.6502351830848394e-017
		 0.174532925199433 0 30.281654975021606 5.6474975821943894e-015 6.2539967653858686e-017 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.066451751216495727 0 0.99778963953343436 1
		 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 5.5576203361606957e-016 0 0 0 14.640179751330852
		 3.1055143265132179e-016 -3.8756372763008116e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 6.9388939039072253e-018 1.387778780781446e-017 0 8.4305086725263347
		 -1.4440022415637913e-014 2.9114391355206887e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 0 -0.26179938779914946 0 0 7.6629899929097007
		 -7.8424603350660474e-015 -1.0854611903847875e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -1.0471975511965979 0 0 7.5027655158041275
		 6.6700508855035191e-015 2.1512152189652873e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.6431173393795726 2.677109011888944e-014
		 -4.7770476782317769e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.2131804240199392 0.67420627912730102 0.21318042401993922 0.67420627912729958 1
		 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 6.7228695716314917 5.8000351839887347
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.7071067811865468 0.70710678118654824 1
		 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.2432846831368414 1.7805302665222501e-014
		 6.5357279248334886e-015 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.62747715533015147 0.32599450844875988 -0.32599450844872307 0.6274771553302223 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0.13399971122320758 -0.079662989210955326
		 0.020467578999642872 0 7.4631981342503204 1.3980038533380394 -14.118099999999997 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.54489586365333609 0.3485702917708875 -0.76190078190963273 -0.033082442378604943 1
		 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0.16185532467959099 -1.0395403507596341
		 -0.18984469988259223 0 -14.906650798353366 5.4906910715857293e-005 5.7758849948186253e-005 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.038432460782543636 -0.1428294380802734 -0.25697920188294698 0.95503109236059702 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -0.043134662880217493 -0.52192071325815914
		 0.19427012395952195 0 -30.281685182840796 -2.2204460492503131e-014 -0.00035681951763422148 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0.066451751216495727 0 0.99778963953343436 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 3.3697003520849483e-016 0 0 0 -14.640200000000009
		 -1.1546319456101628e-014 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 1.0408340855860844e-016 1.7536494923307217e-032 0 -8.4304999999999808
		 -7.1054273576010019e-015 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 -0.26179938779914946 0 0 -7.6630000000000118
		 -6.2172489379008774e-015 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 -1.0471975511965979 0 0 -7.5027999999999944
		 -6.2172489379008774e-015 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6431999999999931 -5.3290705182007514e-015
		 -1.4210854715202004e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.21318042401993881 0.67420627912730102 0.21318042401993959 0.67420627912729936 1
		 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.7229000000000099 -5.8000400000000045
		 -2.8421709430404007e-014 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0.7071067811865468 0.70710678118654824 1
		 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.2432800000000004 -2.8421709430404007e-014
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0.62747715533015158 0.32599450844875993 -0.32599450844872346 0.62747715533022175 1
		 1 1 yes;
	setAttr -s 25 ".m";
	setAttr -s 25 ".p";
	setAttr -s 28 ".g[0:27]" yes yes yes yes yes yes yes no yes yes yes 
		yes yes yes yes no yes no no no no no no no no no no no;
	setAttr ".bp" yes;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 5 ".st";
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :defaultTextureList1;
	setAttr -s 3 ".tx";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "joints.di" "hips.do";
connectAttr "root_parentConstraint1.ctx" "hips.tx";
connectAttr "root_parentConstraint1.cty" "hips.ty";
connectAttr "root_parentConstraint1.ctz" "hips.tz";
connectAttr "root_parentConstraint1.crx" "hips.rx";
connectAttr "root_parentConstraint1.cry" "hips.ry";
connectAttr "root_parentConstraint1.crz" "hips.rz";
connectAttr "hips.s" "upper_hip.is";
connectAttr "upper_hip.s" "spine.is";
connectAttr "chest.s" "neck.is";
connectAttr "neck.s" "head.is";
connectAttr "head.s" "skull.is";
connectAttr "chest.s" "l_shoulder.is";
connectAttr "l_shoulder.s" "l_arm.is";
connectAttr "l_arm.s" "l_elbow.is";
connectAttr "l_elbow.s" "l_forearm.is";
connectAttr "l_forearm.s" "l_wrist.is";
connectAttr "l_wrist.s" "l_hand.is";
connectAttr "l_hand.s" "l_fingers.is";
connectAttr "l_wrist.s" "l_thumb.is";
connectAttr "l_thumb.s" "l_thumb_tip.is";
connectAttr "chest.s" "r_shoulder.is";
connectAttr "r_shoulder_aimConstraint1.crx" "r_shoulder.rx";
connectAttr "r_shoulder_aimConstraint1.cry" "r_shoulder.ry";
connectAttr "r_shoulder_aimConstraint1.crz" "r_shoulder.rz";
connectAttr "r_shoulder.s" "r_arm.is";
connectAttr "r_humerous_orientConstraint1.crx" "r_arm.rx";
connectAttr "r_humerous_orientConstraint1.cry" "r_arm.ry";
connectAttr "r_humerous_orientConstraint1.crz" "r_arm.rz";
connectAttr "r_arm.s" "r_elbow.is";
connectAttr "r_elbow_orientConstraint1.crx" "r_elbow.rx";
connectAttr "r_elbow_orientConstraint1.cry" "r_elbow.ry";
connectAttr "r_elbow_orientConstraint1.crz" "r_elbow.rz";
connectAttr "r_elbow.s" "r_forearm.is";
connectAttr "r_forearm_orientConstraint1.crx" "r_forearm.rx";
connectAttr "r_forearm.s" "r_wrist.is";
connectAttr "r_wrist_orientConstraint1.cry" "r_wrist.ry";
connectAttr "r_wrist_orientConstraint1.crz" "r_wrist.rz";
connectAttr "r_wrist.s" "r_hand.is";
connectAttr "r_hand_rotateY.o" "r_hand.ry";
connectAttr "r_hand.s" "r_fingers.is";
connectAttr "r_fingers_rotateY.o" "r_fingers.ry";
connectAttr "r_wrist.ro" "r_wrist_orientConstraint1.cro";
connectAttr "r_wrist.pim" "r_wrist_orientConstraint1.cpim";
connectAttr "r_wrist.jo" "r_wrist_orientConstraint1.cjo";
connectAttr "right_wristCTRL.r" "r_wrist_orientConstraint1.tg[0].tr";
connectAttr "right_wristCTRL.ro" "r_wrist_orientConstraint1.tg[0].tro";
connectAttr "right_wristCTRL.pm" "r_wrist_orientConstraint1.tg[0].tpm";
connectAttr "r_wrist_orientConstraint1.w0" "r_wrist_orientConstraint1.tg[0].tw";
connectAttr "r_wrist.s" "r_thumb.is";
connectAttr "r_thumb_rotateZ.o" "r_thumb.rz";
connectAttr "r_thumb_rotateY.o" "r_thumb.ry";
connectAttr "r_thumb.s" "r_thumb_tip.is";
connectAttr "r_forearm.ro" "r_forearm_orientConstraint1.cro";
connectAttr "r_forearm.pim" "r_forearm_orientConstraint1.cpim";
connectAttr "r_forearm.jo" "r_forearm_orientConstraint1.cjo";
connectAttr "right_wristCTRL.r" "r_forearm_orientConstraint1.tg[0].tr";
connectAttr "right_wristCTRL.ro" "r_forearm_orientConstraint1.tg[0].tro";
connectAttr "right_wristCTRL.pm" "r_forearm_orientConstraint1.tg[0].tpm";
connectAttr "r_forearm_orientConstraint1.w0" "r_forearm_orientConstraint1.tg[0].tw"
		;
connectAttr "r_elbow.ro" "r_elbow_orientConstraint1.cro";
connectAttr "r_elbow.pim" "r_elbow_orientConstraint1.cpim";
connectAttr "r_elbow.jo" "r_elbow_orientConstraint1.cjo";
connectAttr "right_elbowCTRL.r" "r_elbow_orientConstraint1.tg[0].tr";
connectAttr "right_elbowCTRL.ro" "r_elbow_orientConstraint1.tg[0].tro";
connectAttr "right_elbowCTRL.pm" "r_elbow_orientConstraint1.tg[0].tpm";
connectAttr "r_elbow_orientConstraint1.w0" "r_elbow_orientConstraint1.tg[0].tw";
connectAttr "r_arm.ro" "r_humerous_orientConstraint1.cro";
connectAttr "r_arm.pim" "r_humerous_orientConstraint1.cpim";
connectAttr "r_arm.jo" "r_humerous_orientConstraint1.cjo";
connectAttr "right_shoulderCTRL.r" "r_humerous_orientConstraint1.tg[0].tr";
connectAttr "right_shoulderCTRL.ro" "r_humerous_orientConstraint1.tg[0].tro";
connectAttr "right_shoulderCTRL.pm" "r_humerous_orientConstraint1.tg[0].tpm";
connectAttr "r_humerous_orientConstraint1.w0" "r_humerous_orientConstraint1.tg[0].tw"
		;
connectAttr "r_shoulder.pim" "r_shoulder_aimConstraint1.cpim";
connectAttr "r_shoulder.t" "r_shoulder_aimConstraint1.ct";
connectAttr "r_shoulder.rp" "r_shoulder_aimConstraint1.crp";
connectAttr "r_shoulder.rpt" "r_shoulder_aimConstraint1.crt";
connectAttr "r_shoulder.ro" "r_shoulder_aimConstraint1.cro";
connectAttr "r_shoulder.jo" "r_shoulder_aimConstraint1.cjo";
connectAttr "right_clavicleCTRL.t" "r_shoulder_aimConstraint1.tg[0].tt";
connectAttr "right_clavicleCTRL.rp" "r_shoulder_aimConstraint1.tg[0].trp";
connectAttr "right_clavicleCTRL.rpt" "r_shoulder_aimConstraint1.tg[0].trt";
connectAttr "right_clavicleCTRL.pm" "r_shoulder_aimConstraint1.tg[0].tpm";
connectAttr "r_shoulder_aimConstraint1.w0" "r_shoulder_aimConstraint1.tg[0].tw";
connectAttr "chest.tx" "effector7.tx";
connectAttr "chest.ty" "effector7.ty";
connectAttr "chest.tz" "effector7.tz";
connectAttr "baseSpine_parentConstraint1.ctx" "baseSpine.tx";
connectAttr "baseSpine_parentConstraint1.cty" "baseSpine.ty";
connectAttr "baseSpine_parentConstraint1.ctz" "baseSpine.tz";
connectAttr "baseSpine_parentConstraint1.crx" "baseSpine.rx";
connectAttr "baseSpine_parentConstraint1.cry" "baseSpine.ry";
connectAttr "baseSpine_parentConstraint1.crz" "baseSpine.rz";
connectAttr "baseSpine.ro" "baseSpine_parentConstraint1.cro";
connectAttr "baseSpine.pim" "baseSpine_parentConstraint1.cpim";
connectAttr "baseSpine.rp" "baseSpine_parentConstraint1.crp";
connectAttr "baseSpine.rpt" "baseSpine_parentConstraint1.crt";
connectAttr "hipsCTRL.t" "baseSpine_parentConstraint1.tg[0].tt";
connectAttr "hipsCTRL.rp" "baseSpine_parentConstraint1.tg[0].trp";
connectAttr "hipsCTRL.rpt" "baseSpine_parentConstraint1.tg[0].trt";
connectAttr "hipsCTRL.r" "baseSpine_parentConstraint1.tg[0].tr";
connectAttr "hipsCTRL.ro" "baseSpine_parentConstraint1.tg[0].tro";
connectAttr "hipsCTRL.s" "baseSpine_parentConstraint1.tg[0].ts";
connectAttr "hipsCTRL.pm" "baseSpine_parentConstraint1.tg[0].tpm";
connectAttr "baseSpine_parentConstraint1.w0" "baseSpine_parentConstraint1.tg[0].tw"
		;
connectAttr "hips.ro" "root_parentConstraint1.cro";
connectAttr "hips.pim" "root_parentConstraint1.cpim";
connectAttr "hips.rp" "root_parentConstraint1.crp";
connectAttr "hips.rpt" "root_parentConstraint1.crt";
connectAttr "hips.jo" "root_parentConstraint1.cjo";
connectAttr "hipsCTRL.t" "root_parentConstraint1.tg[0].tt";
connectAttr "hipsCTRL.rp" "root_parentConstraint1.tg[0].trp";
connectAttr "hipsCTRL.rpt" "root_parentConstraint1.tg[0].trt";
connectAttr "hipsCTRL.r" "root_parentConstraint1.tg[0].tr";
connectAttr "hipsCTRL.ro" "root_parentConstraint1.tg[0].tro";
connectAttr "hipsCTRL.s" "root_parentConstraint1.tg[0].ts";
connectAttr "hipsCTRL.pm" "root_parentConstraint1.tg[0].tpm";
connectAttr "root_parentConstraint1.w0" "root_parentConstraint1.tg[0].tw";
connectAttr "upper_hip.msg" "spineIK.hsj";
connectAttr "effector7.hp" "spineIK.hee";
connectAttr "ikSplineSolver.msg" "spineIK.hsv";
connectAttr "spineCurveShape.ws" "spineIK.ic";
connectAttr "midSpineCluster.og[0]" "spineCurveShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "spineCurveShape.twl";
connectAttr "cluster1GroupId.id" "spineCurveShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "spineCurveShape.iog.og[0].gco";
connectAttr "groupId2.id" "spineCurveShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "spineCurveShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "spineCurveShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "spineCurveShape.iog.og[2].gco";
connectAttr "cluster3GroupId.id" "spineCurveShape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "spineCurveShape.iog.og[3].gco";
connectAttr "topSpine_parentConstraint1.ctx" "topSpine.tx";
connectAttr "topSpine_parentConstraint1.cty" "topSpine.ty";
connectAttr "topSpine_parentConstraint1.ctz" "topSpine.tz";
connectAttr "topSpine_parentConstraint1.crz" "topSpine.rz";
connectAttr "topSpine_parentConstraint1.crx" "topSpine.rx";
connectAttr "topSpine_parentConstraint1.cry" "topSpine.ry";
connectAttr "topSpine.ro" "topSpine_parentConstraint1.cro";
connectAttr "topSpine.pim" "topSpine_parentConstraint1.cpim";
connectAttr "topSpine.rp" "topSpine_parentConstraint1.crp";
connectAttr "topSpine.rpt" "topSpine_parentConstraint1.crt";
connectAttr "shouldersCTRL.t" "topSpine_parentConstraint1.tg[0].tt";
connectAttr "shouldersCTRL.rp" "topSpine_parentConstraint1.tg[0].trp";
connectAttr "shouldersCTRL.rpt" "topSpine_parentConstraint1.tg[0].trt";
connectAttr "shouldersCTRL.r" "topSpine_parentConstraint1.tg[0].tr";
connectAttr "shouldersCTRL.ro" "topSpine_parentConstraint1.tg[0].tro";
connectAttr "shouldersCTRL.s" "topSpine_parentConstraint1.tg[0].ts";
connectAttr "shouldersCTRL.pm" "topSpine_parentConstraint1.tg[0].tpm";
connectAttr "topSpine_parentConstraint1.w0" "topSpine_parentConstraint1.tg[0].tw"
		;
connectAttr "Controls.di" "mainControl.do";
connectAttr "hipsCTRL_translateY.o" "hipsCTRL.ty";
connectAttr "Controls.di" "hipsCTRL.do";
connectAttr "hips_override_rotateY.o" "hips_override.ry";
connectAttr "hips_override_rotateZ.o" "hips_override.rz";
connectAttr "Controls.di" "hips_override.do";
connectAttr "Controls.di" "midSpine.do";
connectAttr "shouldersCTRL_translateY.o" "shouldersCTRL.ty";
connectAttr "shouldersCTRL_translateZ.o" "shouldersCTRL.tz";
connectAttr "shouldersCTRL_rotateZ.o" "shouldersCTRL.rz";
connectAttr "Controls.di" "shouldersCTRL.do";
connectAttr "Controls.di" "right_clavicleCTRL.do";
connectAttr "right_shoulderCTRL_pointConstraint1.ctx" "right_shoulderCTRL.tx";
connectAttr "right_shoulderCTRL_pointConstraint1.cty" "right_shoulderCTRL.ty";
connectAttr "right_shoulderCTRL_pointConstraint1.ctz" "right_shoulderCTRL.tz";
connectAttr "right_shoulderCTRL_rotateY.o" "right_shoulderCTRL.ry";
connectAttr "right_shoulderCTRL_rotateZ.o" "right_shoulderCTRL.rz";
connectAttr "Controls.di" "right_shoulderCTRL.do";
connectAttr "right_elbowCTRL_rotateX.o" "right_elbowCTRL.rx";
connectAttr "right_elbowCTRL_rotateY.o" "right_elbowCTRL.ry";
connectAttr "right_elbowCTRL_rotateZ.o" "right_elbowCTRL.rz";
connectAttr "Controls.di" "right_elbowCTRL.do";
connectAttr "Controls.di" "right_wristCTRL.do";
connectAttr "right_shoulderCTRL.pim" "right_shoulderCTRL_pointConstraint1.cpim";
connectAttr "right_shoulderCTRL.rp" "right_shoulderCTRL_pointConstraint1.crp";
connectAttr "right_shoulderCTRL.rpt" "right_shoulderCTRL_pointConstraint1.crt";
connectAttr "r_arm.t" "right_shoulderCTRL_pointConstraint1.tg[0].tt";
connectAttr "r_arm.rp" "right_shoulderCTRL_pointConstraint1.tg[0].trp";
connectAttr "r_arm.rpt" "right_shoulderCTRL_pointConstraint1.tg[0].trt";
connectAttr "r_arm.pm" "right_shoulderCTRL_pointConstraint1.tg[0].tpm";
connectAttr "right_shoulderCTRL_pointConstraint1.w0" "right_shoulderCTRL_pointConstraint1.tg[0].tw"
		;
connectAttr "right_handCTRL_parentConstraint1.ctx" "right_handCTRL.tx";
connectAttr "right_handCTRL_parentConstraint1.cty" "right_handCTRL.ty";
connectAttr "right_handCTRL_parentConstraint1.ctz" "right_handCTRL.tz";
connectAttr "right_handCTRL_parentConstraint1.crx" "right_handCTRL.rx";
connectAttr "right_handCTRL_parentConstraint1.cry" "right_handCTRL.ry";
connectAttr "right_handCTRL_parentConstraint1.crz" "right_handCTRL.rz";
connectAttr "right_handCTRL_Curl.o" "right_handCTRL.Curl";
connectAttr "right_handCTRL_thumbCurl.o" "right_handCTRL.thumbCurl";
connectAttr "Controls.di" "right_handCTRL.do";
connectAttr "right_handCTRL.ro" "right_handCTRL_parentConstraint1.cro";
connectAttr "right_handCTRL.pim" "right_handCTRL_parentConstraint1.cpim";
connectAttr "right_handCTRL.rp" "right_handCTRL_parentConstraint1.crp";
connectAttr "right_handCTRL.rpt" "right_handCTRL_parentConstraint1.crt";
connectAttr "r_hand.t" "right_handCTRL_parentConstraint1.tg[0].tt";
connectAttr "r_hand.rp" "right_handCTRL_parentConstraint1.tg[0].trp";
connectAttr "r_hand.rpt" "right_handCTRL_parentConstraint1.tg[0].trt";
connectAttr "r_hand.r" "right_handCTRL_parentConstraint1.tg[0].tr";
connectAttr "r_hand.ro" "right_handCTRL_parentConstraint1.tg[0].tro";
connectAttr "r_hand.s" "right_handCTRL_parentConstraint1.tg[0].ts";
connectAttr "r_hand.pm" "right_handCTRL_parentConstraint1.tg[0].tpm";
connectAttr "r_hand.jo" "right_handCTRL_parentConstraint1.tg[0].tjo";
connectAttr "right_handCTRL_parentConstraint1.w0" "right_handCTRL_parentConstraint1.tg[0].tw"
		;
connectAttr "skinCluster1.og[0]" "player_meshShape.i";
connectAttr "groupId24.id" "player_meshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "player_meshShape.iog.og[0].gco";
connectAttr "groupId25.id" "player_meshShape.iog.og[1].gid";
connectAttr "lambert3SG.mwc" "player_meshShape.iog.og[1].gco";
connectAttr "skinCluster1GroupId.id" "player_meshShape.iog.og[2].gid";
connectAttr "skinCluster1Set.mwc" "player_meshShape.iog.og[2].gco";
connectAttr "groupId27.id" "player_meshShape.iog.og[3].gid";
connectAttr "tweakSet2.mwc" "player_meshShape.iog.og[3].gco";
connectAttr "tweak2.vl[0].vt[0]" "player_meshShape.twl";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "lambert4SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "layerManager.dli[13]" "items.id";
connectAttr "layerManager.dli[14]" "base.id";
connectAttr "file1.oc" "checkers.c";
connectAttr "checkers.oc" "lambert2SG.ss";
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "checkers.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "file2.oc" "baseNPC.c";
connectAttr "baseNPC.oc" "lambert3SG.ss";
connectAttr "player_meshShape.iog.og[1]" "lambert3SG.dsm" -na;
connectAttr "groupId25.msg" "lambert3SG.gn" -na;
connectAttr "lambert3SG.msg" "materialInfo2.sg";
connectAttr "baseNPC.msg" "materialInfo2.m";
connectAttr "file2.msg" "materialInfo2.t" -na;
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "layerManager.dli[15]" "joints.id";
connectAttr "layerManager.dli[16]" "Controls.id";
connectAttr "cluster1GroupParts.og" "baseSpineCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "baseSpineCluster.ip[0].gi";
connectAttr "baseSpine.wm" "baseSpineCluster.ma";
connectAttr "baseSpineShape.x" "baseSpineCluster.x";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "spineCurveShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "baseSpineCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak1.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "spineCurveShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "spineCurveShape1Orig.ws" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "cluster2GroupParts.og" "topSpineCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "topSpineCluster.ip[0].gi";
connectAttr "topSpine.wm" "topSpineCluster.ma";
connectAttr "topSpineShape.x" "topSpineCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "spineCurveShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "topSpineCluster.msg" "cluster2Set.ub[0]";
connectAttr "baseSpineCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "midSpineCluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "midSpineCluster.ip[0].gi";
connectAttr "midSpine.wm" "midSpineCluster.ma";
connectAttr "midSpineShape.x" "midSpineCluster.x";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "spineCurveShape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "midSpineCluster.msg" "cluster3Set.ub[0]";
connectAttr "topSpineCluster.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "right_handCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "right_wristCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "right_elbowCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "right_shoulderCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "right_clavicleCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "shouldersCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "midSpine.iog" "Controls_Set.dsm" -na;
connectAttr "hips_override.iog" "Controls_Set.dsm" -na;
connectAttr "hipsCTRL.iog" "Controls_Set.dsm" -na;
connectAttr "mainControl.iog" "Controls_Set.dsm" -na;
connectAttr "right_handCTRL.Curl" "r_hand_rotateY.i";
connectAttr "right_handCTRL.Curl" "r_fingers_rotateY.i";
connectAttr "right_handCTRL.thumbSpread" "r_thumb_rotateZ.i";
connectAttr "right_handCTRL.thumbCurl" "r_thumb_rotateY.i";
connectAttr "file3.oc" "tex_inkay.c";
connectAttr "file3.ot" "tex_inkay.it";
connectAttr "tex_inkay.oc" "lambert4SG.ss";
connectAttr "lambert4SG.msg" "materialInfo3.sg";
connectAttr "tex_inkay.msg" "materialInfo3.m";
connectAttr "file3.msg" "materialInfo3.t" -na;
connectAttr "place2dTexture3.c" "file3.c";
connectAttr "place2dTexture3.tf" "file3.tf";
connectAttr "place2dTexture3.rf" "file3.rf";
connectAttr "place2dTexture3.mu" "file3.mu";
connectAttr "place2dTexture3.mv" "file3.mv";
connectAttr "place2dTexture3.s" "file3.s";
connectAttr "place2dTexture3.wu" "file3.wu";
connectAttr "place2dTexture3.wv" "file3.wv";
connectAttr "place2dTexture3.re" "file3.re";
connectAttr "place2dTexture3.of" "file3.of";
connectAttr "place2dTexture3.r" "file3.ro";
connectAttr "place2dTexture3.n" "file3.n";
connectAttr "place2dTexture3.vt1" "file3.vt1";
connectAttr "place2dTexture3.vt2" "file3.vt2";
connectAttr "place2dTexture3.vt3" "file3.vt3";
connectAttr "place2dTexture3.vc1" "file3.vc1";
connectAttr "place2dTexture3.o" "file3.uv";
connectAttr "place2dTexture3.ofs" "file3.fs";
connectAttr "skinCluster1GroupParts.og" "skinCluster1.ip[0].ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1.ip[0].gi";
connectAttr "bindPose5.msg" "skinCluster1.bp";
connectAttr "r_shoulder.wm" "skinCluster1.ma[17]";
connectAttr "r_arm.wm" "skinCluster1.ma[18]";
connectAttr "r_elbow.wm" "skinCluster1.ma[19]";
connectAttr "r_forearm.wm" "skinCluster1.ma[20]";
connectAttr "r_wrist.wm" "skinCluster1.ma[21]";
connectAttr "r_hand.wm" "skinCluster1.ma[22]";
connectAttr "r_fingers.wm" "skinCluster1.ma[23]";
connectAttr "r_tips.wm" "skinCluster1.ma[24]";
connectAttr "r_thumb.wm" "skinCluster1.ma[25]";
connectAttr "r_thumb_tip.wm" "skinCluster1.ma[26]";
connectAttr "r_shoulder.liw" "skinCluster1.lw[17]";
connectAttr "r_arm.liw" "skinCluster1.lw[18]";
connectAttr "r_elbow.liw" "skinCluster1.lw[19]";
connectAttr "r_forearm.liw" "skinCluster1.lw[20]";
connectAttr "r_wrist.liw" "skinCluster1.lw[21]";
connectAttr "r_hand.liw" "skinCluster1.lw[22]";
connectAttr "r_fingers.liw" "skinCluster1.lw[23]";
connectAttr "r_tips.liw" "skinCluster1.lw[24]";
connectAttr "r_thumb.liw" "skinCluster1.lw[25]";
connectAttr "r_thumb_tip.liw" "skinCluster1.lw[26]";
connectAttr "player_meshShapeOrig.w" "groupParts3.ig";
connectAttr "groupId24.id" "groupParts3.gi";
connectAttr "groupParts3.og" "groupParts4.ig";
connectAttr "groupId25.id" "groupParts4.gi";
connectAttr "groupParts6.og" "tweak2.ip[0].ig";
connectAttr "groupId27.id" "tweak2.ip[0].gi";
connectAttr "skinCluster1GroupId.msg" "skinCluster1Set.gn" -na;
connectAttr "player_meshShape.iog.og[2]" "skinCluster1Set.dsm" -na;
connectAttr "skinCluster1.msg" "skinCluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "skinCluster1GroupParts.ig";
connectAttr "skinCluster1GroupId.id" "skinCluster1GroupParts.gi";
connectAttr "groupId27.msg" "tweakSet2.gn" -na;
connectAttr "player_meshShape.iog.og[3]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "groupParts4.og" "groupParts6.ig";
connectAttr "groupId27.id" "groupParts6.gi";
connectAttr "Rig.msg" "bindPose5.m[0]";
connectAttr "hips.msg" "bindPose5.m[1]";
connectAttr "upper_hip.msg" "bindPose5.m[2]";
connectAttr "spine.msg" "bindPose5.m[3]";
connectAttr "chest.msg" "bindPose5.m[4]";
connectAttr "neck.msg" "bindPose5.m[5]";
connectAttr "head.msg" "bindPose5.m[6]";
connectAttr "l_shoulder.msg" "bindPose5.m[8]";
connectAttr "l_arm.msg" "bindPose5.m[9]";
connectAttr "l_elbow.msg" "bindPose5.m[10]";
connectAttr "l_forearm.msg" "bindPose5.m[11]";
connectAttr "l_wrist.msg" "bindPose5.m[12]";
connectAttr "l_hand.msg" "bindPose5.m[13]";
connectAttr "l_fingers.msg" "bindPose5.m[14]";
connectAttr "l_thumb.msg" "bindPose5.m[16]";
connectAttr "r_shoulder.msg" "bindPose5.m[18]";
connectAttr "r_arm.msg" "bindPose5.m[19]";
connectAttr "r_elbow.msg" "bindPose5.m[20]";
connectAttr "r_forearm.msg" "bindPose5.m[21]";
connectAttr "r_wrist.msg" "bindPose5.m[22]";
connectAttr "r_hand.msg" "bindPose5.m[23]";
connectAttr "r_fingers.msg" "bindPose5.m[24]";
connectAttr "r_tips.msg" "bindPose5.m[25]";
connectAttr "r_thumb.msg" "bindPose5.m[26]";
connectAttr "r_thumb_tip.msg" "bindPose5.m[27]";
connectAttr "bindPose5.w" "bindPose5.p[0]";
connectAttr "bindPose5.m[0]" "bindPose5.p[1]";
connectAttr "bindPose5.m[1]" "bindPose5.p[2]";
connectAttr "bindPose5.m[2]" "bindPose5.p[3]";
connectAttr "bindPose5.m[3]" "bindPose5.p[4]";
connectAttr "bindPose5.m[4]" "bindPose5.p[5]";
connectAttr "bindPose5.m[5]" "bindPose5.p[6]";
connectAttr "bindPose5.m[4]" "bindPose5.p[8]";
connectAttr "bindPose5.m[8]" "bindPose5.p[9]";
connectAttr "bindPose5.m[9]" "bindPose5.p[10]";
connectAttr "bindPose5.m[10]" "bindPose5.p[11]";
connectAttr "bindPose5.m[11]" "bindPose5.p[12]";
connectAttr "bindPose5.m[12]" "bindPose5.p[13]";
connectAttr "bindPose5.m[13]" "bindPose5.p[14]";
connectAttr "bindPose5.m[12]" "bindPose5.p[16]";
connectAttr "bindPose5.m[4]" "bindPose5.p[18]";
connectAttr "bindPose5.m[18]" "bindPose5.p[19]";
connectAttr "bindPose5.m[19]" "bindPose5.p[20]";
connectAttr "bindPose5.m[20]" "bindPose5.p[21]";
connectAttr "bindPose5.m[21]" "bindPose5.p[22]";
connectAttr "bindPose5.m[22]" "bindPose5.p[23]";
connectAttr "bindPose5.m[23]" "bindPose5.p[24]";
connectAttr "bindPose5.m[24]" "bindPose5.p[25]";
connectAttr "bindPose5.m[22]" "bindPose5.p[26]";
connectAttr "bindPose5.m[26]" "bindPose5.p[27]";
connectAttr "hips.bps" "bindPose5.wm[1]";
connectAttr "upper_hip.bps" "bindPose5.wm[2]";
connectAttr "spine.bps" "bindPose5.wm[3]";
connectAttr "chest.bps" "bindPose5.wm[4]";
connectAttr "neck.bps" "bindPose5.wm[5]";
connectAttr "head.bps" "bindPose5.wm[6]";
connectAttr "l_shoulder.bps" "bindPose5.wm[8]";
connectAttr "l_arm.bps" "bindPose5.wm[9]";
connectAttr "l_elbow.bps" "bindPose5.wm[10]";
connectAttr "l_forearm.bps" "bindPose5.wm[11]";
connectAttr "l_wrist.bps" "bindPose5.wm[12]";
connectAttr "l_hand.bps" "bindPose5.wm[13]";
connectAttr "l_fingers.bps" "bindPose5.wm[14]";
connectAttr "l_thumb.bps" "bindPose5.wm[16]";
connectAttr "r_shoulder.bps" "bindPose5.wm[18]";
connectAttr "r_arm.bps" "bindPose5.wm[19]";
connectAttr "r_elbow.bps" "bindPose5.wm[20]";
connectAttr "r_forearm.bps" "bindPose5.wm[21]";
connectAttr "r_wrist.bps" "bindPose5.wm[22]";
connectAttr "r_hand.bps" "bindPose5.wm[23]";
connectAttr "r_fingers.bps" "bindPose5.wm[24]";
connectAttr "r_tips.bps" "bindPose5.wm[25]";
connectAttr "r_thumb.bps" "bindPose5.wm[26]";
connectAttr "r_thumb_tip.bps" "bindPose5.wm[27]";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert3SG.pa" ":renderPartition.st" -na;
connectAttr "lambert4SG.pa" ":renderPartition.st" -na;
connectAttr "player_meshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId24.msg" ":initialShadingGroup.gn" -na;
connectAttr "checkers.msg" ":defaultShaderList1.s" -na;
connectAttr "baseNPC.msg" ":defaultShaderList1.s" -na;
connectAttr "tex_inkay.msg" ":defaultShaderList1.s" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "file3.msg" ":defaultTextureList1.tx" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture3.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "ikSplineSolver.msg" ":ikSystem.sol" -na;
// End of player.ma
