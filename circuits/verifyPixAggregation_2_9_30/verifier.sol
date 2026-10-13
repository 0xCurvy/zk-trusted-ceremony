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
    uint256 constant deltax1 = 5625869601136148731304720546758741673352419106667195221535357318470425407802;
    uint256 constant deltax2 = 11570333246850762530558566888930283207867162337491540630211792509375725845470;
    uint256 constant deltay1 = 6800407615530452088974384522319532198925844014492150591214409378941653986020;
    uint256 constant deltay2 = 6642618482106768225258003227252486256377467044800289201271514562475601602417;

    
    uint256 constant IC0x = 20026775118219808587338421514906247771370704527972216921351262470166561165038;
    uint256 constant IC0y = 8358998532801108747995228242506201211313711812867853016836890770633651087677;
    
    uint256 constant IC1x = 5764073587638723082917565255767101174605357626608858848900588769338861271093;
    uint256 constant IC1y = 14751003381435026190596028275863077139679440146001680118806860170188930662613;
    
    uint256 constant IC2x = 11620012505557207918628801227500166224090501263917702528511965721022689080012;
    uint256 constant IC2y = 4966465887183164503151546416144257261459586649658984865729877606050457627911;
    
    uint256 constant IC3x = 9741298487030719148749576910521413428569086257247615687594065004280058705709;
    uint256 constant IC3y = 10762450585209231213854522737731179827900954570069657147740290591723309224604;
    
    uint256 constant IC4x = 3838733258217067920981630448670175603086971076443488742739575768946496809264;
    uint256 constant IC4y = 14917957161445192309523294540717137220780411077734496819148916089970383704730;
    
    uint256 constant IC5x = 1807200465993983570540226156690513135176648757340729580365827189297254311677;
    uint256 constant IC5y = 7487071636761905320110259571169892402666247488120204706190875448150743318361;
    
    uint256 constant IC6x = 19301000944774092527464773330762825694578665807555807344238804031934204722733;
    uint256 constant IC6y = 4509586048613975820536132393919989749712690077481109465653629097769182576687;
    
    uint256 constant IC7x = 20964377644175622135488716706641566575559585364242769363941909179401755606016;
    uint256 constant IC7y = 14997582698959063052590334721709082663564690086866294339737100349245786515031;
    
    uint256 constant IC8x = 10873802354013711591639178752782048807481430502220313178888540369003910773662;
    uint256 constant IC8y = 8699880894143628903756891451343815372310987523396674974278848255725459685795;
    
    uint256 constant IC9x = 14329548380780031523516778587242080015519865277978426317334974888275292392780;
    uint256 constant IC9y = 3119662595975070798697781597034771779037183849638510906615445852131291488046;
    
    uint256 constant IC10x = 16628649275687463872309959266125114189777304365051520113279400666381503080668;
    uint256 constant IC10y = 3547436399458312533585700999011458550260933299772666461382427750727580763448;
    
    uint256 constant IC11x = 11164647287807956800179805618788504182348988447787578730086147695914306466315;
    uint256 constant IC11y = 6683353234177601785472434370658627977517938758819536490463441986526256789774;
    
    uint256 constant IC12x = 9203788039050350168316896137376340884499273899072442287335201451490419649068;
    uint256 constant IC12y = 12661197284211651275644653274701775495767719475865285968897727807707683257709;
    
    uint256 constant IC13x = 6834841334426564031125923282602422005615623823727170755104485686076772465153;
    uint256 constant IC13y = 10169985845602114922263386837596604283432380297231428467972225424222253839495;
    
    uint256 constant IC14x = 3159153033950423258271787055600966916754474746350159436484278390414121315912;
    uint256 constant IC14y = 2552906703529569619548029314102044258515943151526620666326151859001285838562;
    
    uint256 constant IC15x = 20571027533783891131406351787608359728799197139559048647673919052547921239550;
    uint256 constant IC15y = 4406852689317042758593967814502921553250707558358494936788822247321132121941;
    
    uint256 constant IC16x = 10838388909829481571070352645975212119930231175453378785657982644744935327011;
    uint256 constant IC16y = 15676924034619006256136565670615024905871116088269010693732175364268566252577;
    
    uint256 constant IC17x = 2315811047256817812844969044639282076008074165029814443366504975164825829489;
    uint256 constant IC17y = 2151055345058642646382081920795358494769743198042881052678905032424086191539;
    
    uint256 constant IC18x = 16253819077299598666728845363471500910183170483076856270088492403317722199521;
    uint256 constant IC18y = 7636138730793846968904803170162583117915180485641934871041535619534032388941;
    
    uint256 constant IC19x = 6399722113076321616946049292815045958747188571073609018163597039095315735865;
    uint256 constant IC19y = 275226544100410217074739438627719720127277462667895322812163553381631952640;
    
    uint256 constant IC20x = 3825438795955886079660967728520898311482149505110681332984444014220335978103;
    uint256 constant IC20y = 16231766286687162841189633735773499478117639882495892162852693981209845124780;
    
    uint256 constant IC21x = 6386738144502903605129337646262167438117804266353325254201257096151740505309;
    uint256 constant IC21y = 2164024133566127840143398264098091157506391901399222865135838553100230085439;
    
    uint256 constant IC22x = 13428688613129473693307503064773438287483833519050321392288294543817612623376;
    uint256 constant IC22y = 7269838602542609098470716690191035579748941604537388544622220267411497802551;
    
    uint256 constant IC23x = 8431136377438413953489288295254820408975753776871982532526430282560178781639;
    uint256 constant IC23y = 8868694501294119166536307282414259157524622915912306739889159194069731843595;
    
    uint256 constant IC24x = 15325377722800412068239881245868899959952957394191209338247100660997408322076;
    uint256 constant IC24y = 19309442163793336775181189479679915368949864895835734036561278849579741377531;
    
    uint256 constant IC25x = 15493528302410220370445506680526752237409758773931195319855097611605656151029;
    uint256 constant IC25y = 10343337102508184445162357012558301077230817178670720997247651857521155761637;
    
    uint256 constant IC26x = 5969170736469822579154369149919884077438800616232382511346345724625794890951;
    uint256 constant IC26y = 8499530058313990957763202860976489233221187721657878488422436408397457446835;
    
    uint256 constant IC27x = 7919348421499280514004938101521762291921980457566020995333447142343772467433;
    uint256 constant IC27y = 12519980734252783247659417273347011959660149906359356024131744632712669334478;
    
    uint256 constant IC28x = 19728605940413715827483606928942671721891572049581074066208622373384681339227;
    uint256 constant IC28y = 19333424768478883557218015058072921016548177354790310491163137258165980384663;
    
    uint256 constant IC29x = 6427519696443348134851523835871890609348022910539485110721564165271712293710;
    uint256 constant IC29y = 2965055895310091351881599532790437489800033610335288457534720132054524604284;
    
    uint256 constant IC30x = 12665341356745147966214404395672665995111811196783220478395447056971733105948;
    uint256 constant IC30y = 1112174299276225024898674635346379190781102519100969730581348885795460579766;
    
    uint256 constant IC31x = 6654518184225051676991653312016322841803771852002337464428496107565979750835;
    uint256 constant IC31y = 10063186257701936366822998075147975452264018396930131224383837642059105661231;
    
    uint256 constant IC32x = 12009574680855459055575543148043169271436865853056974338795180051540884517894;
    uint256 constant IC32y = 11238674961995118085009164163603864000304095997576430800530170323085356284000;
    
    uint256 constant IC33x = 13534074459037628961100771891104511088715666500035654783361901431595453779246;
    uint256 constant IC33y = 13210395237500374490945812971171479515236491187833161355776673012547892948400;
    
    uint256 constant IC34x = 17894753857599997420659441766250449859475703773657828989554576778941095379972;
    uint256 constant IC34y = 14867507925426595148595423845634123582131445027528466741697008508890739894992;
    
    uint256 constant IC35x = 16176997142154548788216616992600526371338899874472687469664600181735095503034;
    uint256 constant IC35y = 13174070314217836509454306888469907791209464193242430299055539100667162113308;
    
    uint256 constant IC36x = 21304895794877106350620414466902504827288877235195617517673928791968448229651;
    uint256 constant IC36y = 21458765915126070883953764127193029601836257756554143716023749386728710667989;
    
    uint256 constant IC37x = 8952719960667930979017807536312449259953704959914147162215676919830240266350;
    uint256 constant IC37y = 1807697439704482488820248013041562489632024983549247470981908657539091192942;
    
    uint256 constant IC38x = 7076101411422140403598677175747939878302120417067355196469489520096243027486;
    uint256 constant IC38y = 10616316492923497183028563492204896162366294181780287477504683077793988921222;
    
    uint256 constant IC39x = 900334630654032893886279147484843613124018290338851773742702432707007831202;
    uint256 constant IC39y = 916647941030756706091898792432115530552318180534853625852809928744786508484;
    
    uint256 constant IC40x = 16131639903228126768527684732071896045163008967957277763621128697068776798359;
    uint256 constant IC40y = 15116453224230835032406974827784523766890224761618678497596039107983900155660;
    
    uint256 constant IC41x = 1173395169583471247019353775486300092746699034609730644552941204431814657490;
    uint256 constant IC41y = 6932409282386573411743281728001843903472841026983410004292770223622441836034;
    
    uint256 constant IC42x = 9760576457779156975200653837756994312799020451632329802314365011209581363712;
    uint256 constant IC42y = 13306155858632803648726019650728869128422663537970807999459916350888658465633;
    
    uint256 constant IC43x = 171496713055628382206027692732881933615037524915802234065141304410698561033;
    uint256 constant IC43y = 21228895597559781522123355886795131415155414767769473091380201251540017048125;
    
    uint256 constant IC44x = 12177780816812868343254943366466680731131660285965099539535202669407200950278;
    uint256 constant IC44y = 7396412140936207905869719445029491895683661461515205760034047246902954723427;
    
    uint256 constant IC45x = 8359333587032692085137182275946166561104555252798116055853686090475719828119;
    uint256 constant IC45y = 20759170518733959775637588125997080607706700309078143457969526282444423277144;
    
    uint256 constant IC46x = 16062695673171399596942999185845288564829552037792702353013440695909477204047;
    uint256 constant IC46y = 14110756892272256458004557100524296640570843227474343865289077008162808973581;
    
    uint256 constant IC47x = 2243559218117699070607392769931490845492697541714342052610694474807382230626;
    uint256 constant IC47y = 18646508138140345355626130342856604939003778996909746610724540781227692619191;
    
    uint256 constant IC48x = 21478398006614769289552778057442999202479137214479748097795015800464100426794;
    uint256 constant IC48y = 6514191403300065064834049674618998225724006107339282218368905244482565633967;
    
    uint256 constant IC49x = 2386581501317652629994726012686255146107598282381084528814386374806767120190;
    uint256 constant IC49y = 13766419784234226799045952753730292069231492630939513257382238482062319723105;
    
    uint256 constant IC50x = 5273566514923351394730911425513391457873902692962032662944092346917732555128;
    uint256 constant IC50y = 496019026680108441506649408494428653216203033270783422688133525960243790359;
    
    uint256 constant IC51x = 19556537061559514834930238199467933394963600047745786813692514385624226690849;
    uint256 constant IC51y = 19538237111552407630225071306662326405504970277586310160751193266072740653977;
    
    uint256 constant IC52x = 5286879870897162796324783205602340756145279020316614541909547654762673141056;
    uint256 constant IC52y = 3443484510945564106089803344363746126729660129495501209519920142459613452949;
    
    uint256 constant IC53x = 1013526324466439530332295903806972633673817357450690492269026308292082522394;
    uint256 constant IC53y = 6036516997273808634446475099062429319483230076501672786277989928503386352634;
    
    uint256 constant IC54x = 20953014265493305909818619547362743255374323945865287995617505531432080550783;
    uint256 constant IC54y = 10043684676914909223625580407422156418486789185870559483116984422895460495526;
    
    uint256 constant IC55x = 13223891381304812372260470929362786946183356136907418948954999827127330434652;
    uint256 constant IC55y = 2668195026485008437394564969596402447055919433545545189266855929586070355728;
    
    uint256 constant IC56x = 8172231558537889848648409405986940477758970438162279563739248642322126216866;
    uint256 constant IC56y = 16223722141838151632587303646772868349668877275955719101259251194086310171182;
    
    uint256 constant IC57x = 9763684999424772155201161195467477471081076832642434911792921393552579256838;
    uint256 constant IC57y = 2029608344067580937608069556819898252514357713371532096897762012175309133613;
    
    uint256 constant IC58x = 19645218010701582480056567785383408091672794864289045040849058702078908698916;
    uint256 constant IC58y = 13778331334286332591418526933095220317285616014639462798988342783568439730575;
    
    uint256 constant IC59x = 8585830790887910080139219897487842923879884867691470827089106893652355585815;
    uint256 constant IC59y = 17591005980929901945261582260512394245536960779121947159594004288102747648674;
    
    uint256 constant IC60x = 7874485245559973059021196503260118665528630798646968634821630092046699245125;
    uint256 constant IC60y = 17177805021929949541314327385150429708390327812739961464338431597022861173025;
    
    uint256 constant IC61x = 6499352821644226880403647345223327918726030680776285871713794085504412993475;
    uint256 constant IC61y = 12034776071962935730320279152710378588690479014403766443442617872480815882284;
    
    uint256 constant IC62x = 6925803871717031974339182803283611466565384119970425213038492759800066370910;
    uint256 constant IC62y = 15908763851063717883121969543975754644026685464564539954278353705975078210873;
    
    uint256 constant IC63x = 6327610817316887884738128139974493899545181997888318974181131865099843390347;
    uint256 constant IC63y = 16692289488490541817272447295623520447667738544572125634153905965980661967854;
    
    uint256 constant IC64x = 13190575669827568294203461556064469688129490626378498111170506223269259257524;
    uint256 constant IC64y = 21254451061742848008091737404491417720799818520485262089813057775562641384162;
    
    uint256 constant IC65x = 3718974713070023103444177203484917170782196891294388765011726771593002908251;
    uint256 constant IC65y = 10643466467663081548773238562458237612782777016433720361639923941846671217027;
    
    uint256 constant IC66x = 1803588567583355170058521839298381782606479043834602398810451064445617449422;
    uint256 constant IC66y = 6140720295394038662483406244823956934116437730158967143951670549869214349475;
    
    uint256 constant IC67x = 16373113776496965771927677367563034494548261244380533301447712734463941208905;
    uint256 constant IC67y = 12610978043793411125657488959610739640727651610630029338581923413305558539172;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[67] calldata _pubSignals) public view returns (bool) {
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
                
                g1_mulAccC(_pVk, IC56x, IC56y, calldataload(add(pubSignals, 1760)))
                
                g1_mulAccC(_pVk, IC57x, IC57y, calldataload(add(pubSignals, 1792)))
                
                g1_mulAccC(_pVk, IC58x, IC58y, calldataload(add(pubSignals, 1824)))
                
                g1_mulAccC(_pVk, IC59x, IC59y, calldataload(add(pubSignals, 1856)))
                
                g1_mulAccC(_pVk, IC60x, IC60y, calldataload(add(pubSignals, 1888)))
                
                g1_mulAccC(_pVk, IC61x, IC61y, calldataload(add(pubSignals, 1920)))
                
                g1_mulAccC(_pVk, IC62x, IC62y, calldataload(add(pubSignals, 1952)))
                
                g1_mulAccC(_pVk, IC63x, IC63y, calldataload(add(pubSignals, 1984)))
                
                g1_mulAccC(_pVk, IC64x, IC64y, calldataload(add(pubSignals, 2016)))
                
                g1_mulAccC(_pVk, IC65x, IC65y, calldataload(add(pubSignals, 2048)))
                
                g1_mulAccC(_pVk, IC66x, IC66y, calldataload(add(pubSignals, 2080)))
                
                g1_mulAccC(_pVk, IC67x, IC67y, calldataload(add(pubSignals, 2112)))
                

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
            
            checkField(calldataload(add(_pubSignals, 1760)))
            
            checkField(calldataload(add(_pubSignals, 1792)))
            
            checkField(calldataload(add(_pubSignals, 1824)))
            
            checkField(calldataload(add(_pubSignals, 1856)))
            
            checkField(calldataload(add(_pubSignals, 1888)))
            
            checkField(calldataload(add(_pubSignals, 1920)))
            
            checkField(calldataload(add(_pubSignals, 1952)))
            
            checkField(calldataload(add(_pubSignals, 1984)))
            
            checkField(calldataload(add(_pubSignals, 2016)))
            
            checkField(calldataload(add(_pubSignals, 2048)))
            
            checkField(calldataload(add(_pubSignals, 2080)))
            
            checkField(calldataload(add(_pubSignals, 2112)))
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
