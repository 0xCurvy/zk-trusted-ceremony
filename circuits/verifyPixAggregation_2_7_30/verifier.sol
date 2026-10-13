// SPDX-License-Identifier: GPL-3.0
/*
    Copyright 2021 0KIMS association.

    This file is generated with [snarkJS](https://github.com/iden3/snarkjs).

    snarkJS is a free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    snarkJS is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
    or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public
    License for more details.

    You should have received a copy of the GNU General Public License
    along with snarkJS. If not, see <https://www.gnu.org/licenses/>.
*/

pragma solidity >=0.7.0 <0.9.0;

contract Groth16Verifier {
    // Scalar field size
    uint256 constant r    = 21888242871839275222246405745257275088548364400416034343698204186575808495617;
    // Base field size
    uint256 constant q   = 21888242871839275222246405745257275088696311157297823662689037894645226208583;

    // Verification Key data
    uint256 constant alphax  = 16428432848801857252194528405604668803277877773566238944394625302971855135431;
    uint256 constant alphay  = 16846502678714586896801519656441059708016666274385668027902869494772365009666;
    uint256 constant betax1  = 3182164110458002340215786955198810119980427837186618912744689678939861918171;
    uint256 constant betax2  = 16348171800823588416173124589066524623406261996681292662100840445103873053252;
    uint256 constant betay1  = 4920802715848186258981584729175884379674325733638798907835771393452862684714;
    uint256 constant betay2  = 19687132236965066906216944365591810874384658708175106803089633851114028275753;
    uint256 constant gammax1 = 11559732032986387107991004021392285783925812861821192530917403151452391805634;
    uint256 constant gammax2 = 10857046999023057135944570762232829481370756359578518086990519993285655852781;
    uint256 constant gammay1 = 4082367875863433681332203403145435568316851327593401208105741076214120093531;
    uint256 constant gammay2 = 8495653923123431417604973247489272438418190587263600148770280649306958101930;
    uint256 constant deltax1 = 10414091936659755618579524865251782877329594205917979835813853646433182260942;
    uint256 constant deltax2 = 7376151419214265962440091762161348619670334773613766044100082407151878721209;
    uint256 constant deltay1 = 15499076069327709136827827574986360660247936107234504474090567128619297449198;
    uint256 constant deltay2 = 20234054290809279543318805500629315738588469068818089783599113263322309357672;

    
    uint256 constant IC0x = 5958278233484712146808004974436103986130324735300470826971983211977112103639;
    uint256 constant IC0y = 8535146188932015550823586272124320531542469760348994995738733730028359774761;
    
    uint256 constant IC1x = 17524624728777116191598508375088177618853684609080931061863924654897950834018;
    uint256 constant IC1y = 10152234739285533803380069314482648480601500177484975181136513985944855646054;
    
    uint256 constant IC2x = 5234399771531637337501352798193431896932510588102462359122743347284125742524;
    uint256 constant IC2y = 1869422233054850582613820490172950542856930684700287712170051691297746845340;
    
    uint256 constant IC3x = 14669669970413199042737477110764379211284279633758926193904953832368639815746;
    uint256 constant IC3y = 18956567285619065867057211481113019427512699702115796280559556801033898857359;
    
    uint256 constant IC4x = 699765947791038419505087579661053434219653681216469540756949698926823233928;
    uint256 constant IC4y = 9125955268543227326736735529757962693036449364421808627535233140821166871179;
    
    uint256 constant IC5x = 6944342555488459677113049777928901865182948151875781168451731435653404389177;
    uint256 constant IC5y = 4655606375967383520280757369562922861668143809616274627222318425647689514889;
    
    uint256 constant IC6x = 20527110217676146630030837844044657320392350513567603643081928884129100246082;
    uint256 constant IC6y = 3744649459406344505779981229638750787047658090670723673747344162097023436439;
    
    uint256 constant IC7x = 13692631292488639252805588028863090412650758410405227828052675062695140550415;
    uint256 constant IC7y = 17556075618791358581639672535253292173281614246288840758031895712065462954081;
    
    uint256 constant IC8x = 13034160994254218039787144498401086038975861011803164686996628992926681065988;
    uint256 constant IC8y = 13985818590186355049624230402956387588148991970280808966421799198513966677012;
    
    uint256 constant IC9x = 5804683736359893904464192931027946531988966908803853160272105822632680333761;
    uint256 constant IC9y = 3751440962280190453427307673513347529725844227809260982606168296747671635081;
    
    uint256 constant IC10x = 8444918160263717350373966168630026787914943599713916969799356557695558723959;
    uint256 constant IC10y = 21578991212770201112246172489848312529125282533825919212264418604059925858173;
    
    uint256 constant IC11x = 3558575681638346232351030253533682195224775824595470032432721211798061684001;
    uint256 constant IC11y = 5559220521234892155697796964012635393361661986165252702675255101056525448969;
    
    uint256 constant IC12x = 1107135478412911321348192829352507559153625506565606342995623513322419243679;
    uint256 constant IC12y = 8146229151121149561889429074948755647948259034303399291868781037369466142186;
    
    uint256 constant IC13x = 301672788330887755497741601045614528551424765607845337310270485889593814821;
    uint256 constant IC13y = 12149636574555994726933352288160260952853744341771692105925511847949210142753;
    
    uint256 constant IC14x = 2502013323172458129731128560702565642732307187219593137490188055274424530381;
    uint256 constant IC14y = 11564115066830794398931838046270213277449323526607524895395382765951175160119;
    
    uint256 constant IC15x = 15381165266274859628649851095563641112955111565157649029481806139365643506157;
    uint256 constant IC15y = 20795712377874993561454165205744211860681780662682016358051453828449907648546;
    
    uint256 constant IC16x = 8286253542667160032070588814088924795888596791194018784502863144294341173750;
    uint256 constant IC16y = 13057338245425077964579240267713752780089018064613689160397498643347470744431;
    
    uint256 constant IC17x = 14244986848576712031825786407022824835946313632195935571199206579615273275442;
    uint256 constant IC17y = 16536381708789875128170680555452832179088652537822954933297906222822573978748;
    
    uint256 constant IC18x = 19935127388957316041519780778970379848532413672429280944962977981485299465859;
    uint256 constant IC18y = 12885796574269173225453160504260190225944591831730807597401005459863449928059;
    
    uint256 constant IC19x = 4074088584018025271232369172412373405928201834428653574258740007869011080859;
    uint256 constant IC19y = 20912577872363633289158431617295151956969150101406437359204824494750915269028;
    
    uint256 constant IC20x = 3377412835920965010187976947353707771207197691746889763286745610844406536834;
    uint256 constant IC20y = 3286282849335624965459744420895240977460199375594113079624045483623235029566;
    
    uint256 constant IC21x = 1613405685969733381790454991697636913879386676114677800833633547914879280512;
    uint256 constant IC21y = 3163471546363498090536680997960710067613324371586328712756999321767317557051;
    
    uint256 constant IC22x = 409701065762128046516247207119245120578728321706867591218241807491567957667;
    uint256 constant IC22y = 14725543592571048994507966537513938527670496022005423733386806033481368430781;
    
    uint256 constant IC23x = 4360837444513541112755240996860646248961124398215799491992803399939756327312;
    uint256 constant IC23y = 11414389240965395357334737939412580974189228046803912554416608235255080758161;
    
    uint256 constant IC24x = 15235366261068555218520968274084316114365218191775841073629450983690068211108;
    uint256 constant IC24y = 3772396088709678142519158159434601631441176609420681240068068116832927546336;
    
    uint256 constant IC25x = 5575735102969822304554720491867167332830661468742920868086831606729794231340;
    uint256 constant IC25y = 16814916742644163312311096460183287702668473919049533659545766826364926435699;
    
    uint256 constant IC26x = 14972644188081224271897838864976538552967898290763595573716043882156892309882;
    uint256 constant IC26y = 338768727857290869326012285315042542252256395039128221145353884371471093565;
    
    uint256 constant IC27x = 21573954638052279853977224137171642547622499022156222787876039511236078421402;
    uint256 constant IC27y = 21618888079493807895766487787545002288987691864397735290221402290245038719078;
    
    uint256 constant IC28x = 19568767776702574176681821588935961198364023794908310646916348559111754995205;
    uint256 constant IC28y = 12240997297835850764089630929156119800728477191379902337238317841057727266231;
    
    uint256 constant IC29x = 16541192839623943822587994868383805448360255098136866830825949075819848402244;
    uint256 constant IC29y = 3405010660739060806363879669472166083059426723327231104709489936642151095011;
    
    uint256 constant IC30x = 767608673062259781207967705644446171811327112562235446496515299923284893621;
    uint256 constant IC30y = 16713328249966682888115381158871078834039536317464519882217702917414654778440;
    
    uint256 constant IC31x = 1001482462104462591692520005064656699720869423825861668359283191859822541855;
    uint256 constant IC31y = 7295921185568141832866160418075604621443023853886123127656030435837196706170;
    
    uint256 constant IC32x = 7854983972383266908665389603201091576545656781489698578194208409460174122443;
    uint256 constant IC32y = 10991743753525976352669947997318470645811018433753279535223152181735461356243;
    
    uint256 constant IC33x = 20086118563630805917659053381795090069086786067837068096509718114234400771824;
    uint256 constant IC33y = 5163355427552961554354288820925522547916377424340517592762127950281906745029;
    
    uint256 constant IC34x = 3435382564509770626956284209593334567063844785286224033514510018331843285211;
    uint256 constant IC34y = 18362781225845156466978254600864051826443995985563935244497811585649392842912;
    
    uint256 constant IC35x = 7766741155117366969636781932536346184107267303299518830310592800717419605853;
    uint256 constant IC35y = 2227290981268641532175952081641702270587672151174281048905137467433220893291;
    
    uint256 constant IC36x = 19095788109849445659638415140607933105857690191215276543764897563351149020995;
    uint256 constant IC36y = 6477220618403809446778113594914866458849362367764428960403042709324493182713;
    
    uint256 constant IC37x = 14375358517780428522048588125178143674450488068577612717323452604560329529922;
    uint256 constant IC37y = 19679120464805272852223068708056217510549651028750956460595877470878917841317;
    
    uint256 constant IC38x = 3256308918070795085807054578103565047396466404235875353451462855034601330104;
    uint256 constant IC38y = 9459840407691208003407486526198088520414074694748142113330789250775244588412;
    
    uint256 constant IC39x = 4316516806619784329290095768917511422508833303194379703276740306113262054303;
    uint256 constant IC39y = 8224159469013145741807278629167724166403368541428212721242350496416787450560;
    
    uint256 constant IC40x = 14870864986257555128925520609889089860612448727642443877090059841335866653373;
    uint256 constant IC40y = 4370100358923229734475026262980264924414260199252335614886044344810244998464;
    
    uint256 constant IC41x = 128163265867558865381036116786146705302024989313693672454378385640162111302;
    uint256 constant IC41y = 14210865574212953066580460079579123843594427032668966813523485810354256223457;
    
    uint256 constant IC42x = 1326354972291421230229364660496926798971944442408656752700253563686506468374;
    uint256 constant IC42y = 9713120244975820701297050972115282554814540829532242899821380100142237421535;
    
    uint256 constant IC43x = 17157032574439672187767289721920753079792373252575381320602601556324969953321;
    uint256 constant IC43y = 21362866414579763302448532509436285206807550319231730103207794131524007854964;
    
    uint256 constant IC44x = 12340703475260145457176857162303826311978885746605747327967111401096427706777;
    uint256 constant IC44y = 7506230411304874752640997469897717112095723433195859742061023350977774285559;
    
    uint256 constant IC45x = 4016342861075376532938523979786180216759366405818962766051499455039966858637;
    uint256 constant IC45y = 141693069118946219628326503721876326495066180662725748995904489806916112529;
    
    uint256 constant IC46x = 215732030806969047769057345200243154943744846028580149580790557813704727456;
    uint256 constant IC46y = 8527587460388184501895400878113358305784914029365760388316503346966520175788;
    
    uint256 constant IC47x = 7506010012656742700221900873402082449727451182728305523567413395463786684244;
    uint256 constant IC47y = 14839995658534746703775652347242767798040165523067749804349348264430432943683;
    
    uint256 constant IC48x = 20780596822787627172741302388261962033904150914563153309703817669125051687868;
    uint256 constant IC48y = 15858393390691058789218595224369786681115296268177771424489712126836659161984;
    
    uint256 constant IC49x = 21236596313553040733520379964787440993314220998055270800845382488429851857386;
    uint256 constant IC49y = 20757529179138034123674019115333801200128466366738722469605667682275785814182;
    
    uint256 constant IC50x = 20576987599342186772532381355000703330474541930347770465893742000207550652403;
    uint256 constant IC50y = 803043510876414824324332252762932708902445864333461096369399128542580746596;
    
    uint256 constant IC51x = 19647109027028058925270090045326238768287752928177698890635314007463583622126;
    uint256 constant IC51y = 3358125960794092231595894689632410672300149994319667119567503625527757715005;
    
    uint256 constant IC52x = 5038102204045926698153434637378281399976952209236319852037801727563775308802;
    uint256 constant IC52y = 7588244467311566546949404857934366264955547463755967867988870814335866041067;
    
    uint256 constant IC53x = 21843776355499705616377261645946873991376832429602983807770679841224756804802;
    uint256 constant IC53y = 15175781502001588003274514374059340584162829944417956104871164185009975968487;
    
    uint256 constant IC54x = 4151076495259181324362924696994794435272543026923192920608241480019790507308;
    uint256 constant IC54y = 9767531002784079752145166335532233181517503279619205517062798074082728673933;
    
    uint256 constant IC55x = 19497452220321200153311361539163672841421090753168344196101824216188055701720;
    uint256 constant IC55y = 16136223719621636599265362207000660457983268854897037217620514071548407441505;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[55] calldata _pubSignals) public view returns (bool) {
        assembly {
            function checkField(v) {
                if iszero(lt(v, r)) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }
            
            // G1 function to multiply a G1 value(x,y) to value in an address
            function g1_mulAccC(pR, x, y, s) {
                let success
                let mIn := mload(0x40)
                mstore(mIn, x)
                mstore(add(mIn, 32), y)
                mstore(add(mIn, 64), s)

                success := staticcall(sub(gas(), 2000), 7, mIn, 96, mIn, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }

                mstore(add(mIn, 64), mload(pR))
                mstore(add(mIn, 96), mload(add(pR, 32)))

                success := staticcall(sub(gas(), 2000), 6, mIn, 128, pR, 64)

                if iszero(success) {
                    mstore(0, 0)
                    return(0, 0x20)
                }
            }

            function checkPairing(pA, pB, pC, pubSignals, pMem) -> isOk {
                let _pPairing := add(pMem, pPairing)
                let _pVk := add(pMem, pVk)

                mstore(_pVk, IC0x)
                mstore(add(_pVk, 32), IC0y)

                // Compute the linear combination vk_x
                
                g1_mulAccC(_pVk, IC1x, IC1y, calldataload(add(pubSignals, 0)))
                
                g1_mulAccC(_pVk, IC2x, IC2y, calldataload(add(pubSignals, 32)))
                
                g1_mulAccC(_pVk, IC3x, IC3y, calldataload(add(pubSignals, 64)))
                
                g1_mulAccC(_pVk, IC4x, IC4y, calldataload(add(pubSignals, 96)))
                
                g1_mulAccC(_pVk, IC5x, IC5y, calldataload(add(pubSignals, 128)))
                
                g1_mulAccC(_pVk, IC6x, IC6y, calldataload(add(pubSignals, 160)))
                
                g1_mulAccC(_pVk, IC7x, IC7y, calldataload(add(pubSignals, 192)))
                
                g1_mulAccC(_pVk, IC8x, IC8y, calldataload(add(pubSignals, 224)))
                
                g1_mulAccC(_pVk, IC9x, IC9y, calldataload(add(pubSignals, 256)))
                
                g1_mulAccC(_pVk, IC10x, IC10y, calldataload(add(pubSignals, 288)))
                
                g1_mulAccC(_pVk, IC11x, IC11y, calldataload(add(pubSignals, 320)))
                
                g1_mulAccC(_pVk, IC12x, IC12y, calldataload(add(pubSignals, 352)))
                
                g1_mulAccC(_pVk, IC13x, IC13y, calldataload(add(pubSignals, 384)))
                
                g1_mulAccC(_pVk, IC14x, IC14y, calldataload(add(pubSignals, 416)))
                
                g1_mulAccC(_pVk, IC15x, IC15y, calldataload(add(pubSignals, 448)))
                
                g1_mulAccC(_pVk, IC16x, IC16y, calldataload(add(pubSignals, 480)))
                
                g1_mulAccC(_pVk, IC17x, IC17y, calldataload(add(pubSignals, 512)))
                
                g1_mulAccC(_pVk, IC18x, IC18y, calldataload(add(pubSignals, 544)))
                
                g1_mulAccC(_pVk, IC19x, IC19y, calldataload(add(pubSignals, 576)))
                
                g1_mulAccC(_pVk, IC20x, IC20y, calldataload(add(pubSignals, 608)))
                
                g1_mulAccC(_pVk, IC21x, IC21y, calldataload(add(pubSignals, 640)))
                
                g1_mulAccC(_pVk, IC22x, IC22y, calldataload(add(pubSignals, 672)))
                
                g1_mulAccC(_pVk, IC23x, IC23y, calldataload(add(pubSignals, 704)))
                
                g1_mulAccC(_pVk, IC24x, IC24y, calldataload(add(pubSignals, 736)))
                
                g1_mulAccC(_pVk, IC25x, IC25y, calldataload(add(pubSignals, 768)))
                
                g1_mulAccC(_pVk, IC26x, IC26y, calldataload(add(pubSignals, 800)))
                
                g1_mulAccC(_pVk, IC27x, IC27y, calldataload(add(pubSignals, 832)))
                
                g1_mulAccC(_pVk, IC28x, IC28y, calldataload(add(pubSignals, 864)))
                
                g1_mulAccC(_pVk, IC29x, IC29y, calldataload(add(pubSignals, 896)))
                
                g1_mulAccC(_pVk, IC30x, IC30y, calldataload(add(pubSignals, 928)))
                
                g1_mulAccC(_pVk, IC31x, IC31y, calldataload(add(pubSignals, 960)))
                
                g1_mulAccC(_pVk, IC32x, IC32y, calldataload(add(pubSignals, 992)))
                
                g1_mulAccC(_pVk, IC33x, IC33y, calldataload(add(pubSignals, 1024)))
                
                g1_mulAccC(_pVk, IC34x, IC34y, calldataload(add(pubSignals, 1056)))
                
                g1_mulAccC(_pVk, IC35x, IC35y, calldataload(add(pubSignals, 1088)))
                
                g1_mulAccC(_pVk, IC36x, IC36y, calldataload(add(pubSignals, 1120)))
                
                g1_mulAccC(_pVk, IC37x, IC37y, calldataload(add(pubSignals, 1152)))
                
                g1_mulAccC(_pVk, IC38x, IC38y, calldataload(add(pubSignals, 1184)))
                
                g1_mulAccC(_pVk, IC39x, IC39y, calldataload(add(pubSignals, 1216)))
                
                g1_mulAccC(_pVk, IC40x, IC40y, calldataload(add(pubSignals, 1248)))
                
                g1_mulAccC(_pVk, IC41x, IC41y, calldataload(add(pubSignals, 1280)))
                
                g1_mulAccC(_pVk, IC42x, IC42y, calldataload(add(pubSignals, 1312)))
                
                g1_mulAccC(_pVk, IC43x, IC43y, calldataload(add(pubSignals, 1344)))
                
                g1_mulAccC(_pVk, IC44x, IC44y, calldataload(add(pubSignals, 1376)))
                
                g1_mulAccC(_pVk, IC45x, IC45y, calldataload(add(pubSignals, 1408)))
                
                g1_mulAccC(_pVk, IC46x, IC46y, calldataload(add(pubSignals, 1440)))
                
                g1_mulAccC(_pVk, IC47x, IC47y, calldataload(add(pubSignals, 1472)))
                
                g1_mulAccC(_pVk, IC48x, IC48y, calldataload(add(pubSignals, 1504)))
                
                g1_mulAccC(_pVk, IC49x, IC49y, calldataload(add(pubSignals, 1536)))
                
                g1_mulAccC(_pVk, IC50x, IC50y, calldataload(add(pubSignals, 1568)))
                
                g1_mulAccC(_pVk, IC51x, IC51y, calldataload(add(pubSignals, 1600)))
                
                g1_mulAccC(_pVk, IC52x, IC52y, calldataload(add(pubSignals, 1632)))
                
                g1_mulAccC(_pVk, IC53x, IC53y, calldataload(add(pubSignals, 1664)))
                
                g1_mulAccC(_pVk, IC54x, IC54y, calldataload(add(pubSignals, 1696)))
                
                g1_mulAccC(_pVk, IC55x, IC55y, calldataload(add(pubSignals, 1728)))
                

                // -A
                mstore(_pPairing, calldataload(pA))
                mstore(add(_pPairing, 32), mod(sub(q, calldataload(add(pA, 32))), q))

                // B
                mstore(add(_pPairing, 64), calldataload(pB))
                mstore(add(_pPairing, 96), calldataload(add(pB, 32)))
                mstore(add(_pPairing, 128), calldataload(add(pB, 64)))
                mstore(add(_pPairing, 160), calldataload(add(pB, 96)))

                // alpha1
                mstore(add(_pPairing, 192), alphax)
                mstore(add(_pPairing, 224), alphay)

                // beta2
                mstore(add(_pPairing, 256), betax1)
                mstore(add(_pPairing, 288), betax2)
                mstore(add(_pPairing, 320), betay1)
                mstore(add(_pPairing, 352), betay2)

                // vk_x
                mstore(add(_pPairing, 384), mload(add(pMem, pVk)))
                mstore(add(_pPairing, 416), mload(add(pMem, add(pVk, 32))))


                // gamma2
                mstore(add(_pPairing, 448), gammax1)
                mstore(add(_pPairing, 480), gammax2)
                mstore(add(_pPairing, 512), gammay1)
                mstore(add(_pPairing, 544), gammay2)

                // C
                mstore(add(_pPairing, 576), calldataload(pC))
                mstore(add(_pPairing, 608), calldataload(add(pC, 32)))

                // delta2
                mstore(add(_pPairing, 640), deltax1)
                mstore(add(_pPairing, 672), deltax2)
                mstore(add(_pPairing, 704), deltay1)
                mstore(add(_pPairing, 736), deltay2)


                let success := staticcall(sub(gas(), 2000), 8, _pPairing, 768, _pPairing, 0x20)

                isOk := and(success, mload(_pPairing))
            }

            let pMem := mload(0x40)
            mstore(0x40, add(pMem, pLastMem))

            // Validate that all evaluations ∈ F
            
            checkField(calldataload(add(_pubSignals, 0)))
            
            checkField(calldataload(add(_pubSignals, 32)))
            
            checkField(calldataload(add(_pubSignals, 64)))
            
            checkField(calldataload(add(_pubSignals, 96)))
            
            checkField(calldataload(add(_pubSignals, 128)))
            
            checkField(calldataload(add(_pubSignals, 160)))
            
            checkField(calldataload(add(_pubSignals, 192)))
            
            checkField(calldataload(add(_pubSignals, 224)))
            
            checkField(calldataload(add(_pubSignals, 256)))
            
            checkField(calldataload(add(_pubSignals, 288)))
            
            checkField(calldataload(add(_pubSignals, 320)))
            
            checkField(calldataload(add(_pubSignals, 352)))
            
            checkField(calldataload(add(_pubSignals, 384)))
            
            checkField(calldataload(add(_pubSignals, 416)))
            
            checkField(calldataload(add(_pubSignals, 448)))
            
            checkField(calldataload(add(_pubSignals, 480)))
            
            checkField(calldataload(add(_pubSignals, 512)))
            
            checkField(calldataload(add(_pubSignals, 544)))
            
            checkField(calldataload(add(_pubSignals, 576)))
            
            checkField(calldataload(add(_pubSignals, 608)))
            
            checkField(calldataload(add(_pubSignals, 640)))
            
            checkField(calldataload(add(_pubSignals, 672)))
            
            checkField(calldataload(add(_pubSignals, 704)))
            
            checkField(calldataload(add(_pubSignals, 736)))
            
            checkField(calldataload(add(_pubSignals, 768)))
            
            checkField(calldataload(add(_pubSignals, 800)))
            
            checkField(calldataload(add(_pubSignals, 832)))
            
            checkField(calldataload(add(_pubSignals, 864)))
            
            checkField(calldataload(add(_pubSignals, 896)))
            
            checkField(calldataload(add(_pubSignals, 928)))
            
            checkField(calldataload(add(_pubSignals, 960)))
            
            checkField(calldataload(add(_pubSignals, 992)))
            
            checkField(calldataload(add(_pubSignals, 1024)))
            
            checkField(calldataload(add(_pubSignals, 1056)))
            
            checkField(calldataload(add(_pubSignals, 1088)))
            
            checkField(calldataload(add(_pubSignals, 1120)))
            
            checkField(calldataload(add(_pubSignals, 1152)))
            
            checkField(calldataload(add(_pubSignals, 1184)))
            
            checkField(calldataload(add(_pubSignals, 1216)))
            
            checkField(calldataload(add(_pubSignals, 1248)))
            
            checkField(calldataload(add(_pubSignals, 1280)))
            
            checkField(calldataload(add(_pubSignals, 1312)))
            
            checkField(calldataload(add(_pubSignals, 1344)))
            
            checkField(calldataload(add(_pubSignals, 1376)))
            
            checkField(calldataload(add(_pubSignals, 1408)))
            
            checkField(calldataload(add(_pubSignals, 1440)))
            
            checkField(calldataload(add(_pubSignals, 1472)))
            
            checkField(calldataload(add(_pubSignals, 1504)))
            
            checkField(calldataload(add(_pubSignals, 1536)))
            
            checkField(calldataload(add(_pubSignals, 1568)))
            
            checkField(calldataload(add(_pubSignals, 1600)))
            
            checkField(calldataload(add(_pubSignals, 1632)))
            
            checkField(calldataload(add(_pubSignals, 1664)))
            
            checkField(calldataload(add(_pubSignals, 1696)))
            
            checkField(calldataload(add(_pubSignals, 1728)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
