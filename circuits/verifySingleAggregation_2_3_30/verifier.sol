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
    uint256 constant deltax1 = 11990263065148662611755987796750364538234107696090070803542406086700109929953;
    uint256 constant deltax2 = 19943074736497923395625094038356315913722254334575881937708834310957439124919;
    uint256 constant deltay1 = 6663107013479256501971794247451021846252028949814388140096127668018560894592;
    uint256 constant deltay2 = 3886596383097769701561451877880024573793164039076322510256086550190113681796;

    
    uint256 constant IC0x = 19154609095720324944699062975522287762248406685699136147446509088783111857772;
    uint256 constant IC0y = 15559801271619941852979580211141727122825269996471008765628775265226192316062;
    
    uint256 constant IC1x = 17361032875375352195587539375011670445210514189420352118680013771521340670657;
    uint256 constant IC1y = 17899650314034103433587430205839784081035683283274309450892207840848002047856;
    
    uint256 constant IC2x = 2630810700360270513816457295659597591602884598062957125606016561877534373527;
    uint256 constant IC2y = 2213690456141833723051173074156605229373138154570696022508193876383534009300;
    
    uint256 constant IC3x = 11754050905690895176685836858493705400973384187880035984954364572436494495117;
    uint256 constant IC3y = 6214576441683187122121733844188786251614323691186375289770649014511496618107;
    
    uint256 constant IC4x = 17193577729406812775099890722150667186284653374318562345491931770947650940076;
    uint256 constant IC4y = 4906172990263031114458113071402641495069499056879614439651525394448255931118;
    
    uint256 constant IC5x = 4078658198517233854781855939464306432734696585485807485250545577480611528929;
    uint256 constant IC5y = 3524099716199531835145074249628960954326089320032758777834824818507596145125;
    
    uint256 constant IC6x = 21437971660027084728374610385458592710351205062714179706672278765322987777763;
    uint256 constant IC6y = 8793231811169107176209180886159324042445053359691058510146226911128303137451;
    
    uint256 constant IC7x = 20299043468709345504211550918590169546295098504125632684208565347171974866288;
    uint256 constant IC7y = 4872714718672659518439566808585229154003094824445366296151407832094672178724;
    
    uint256 constant IC8x = 12095527427403363432270784557722756964045215116248609592804968836671606247371;
    uint256 constant IC8y = 18664100223388492877039415315439654681300710421760745135410572981995486801600;
    
    uint256 constant IC9x = 696952563226469114077601715244970541697199641164283069415666060222343515040;
    uint256 constant IC9y = 18203815116241611234337930890639768446214742973452551416976185884574306107312;
    
    uint256 constant IC10x = 5005173014138486345197165300072324699486761672696400693016936412675461258209;
    uint256 constant IC10y = 1641315714404867865832400178355364575813690426312667091167694661053974001249;
    
    uint256 constant IC11x = 12562511218207313259714015020202311264516912693452660203228554840478211792083;
    uint256 constant IC11y = 19278460930522964671919232910274460590792230614363174999347701061686795540348;
    
    uint256 constant IC12x = 6689162943979210141365457043318419838895591136704089732737024595902325917613;
    uint256 constant IC12y = 6364554223811275934280613440647417788835701438207875460422545693574035410606;
    
    uint256 constant IC13x = 13420075077377714544784319500107798701211273397999158694458804303004578966100;
    uint256 constant IC13y = 16128446688738635323020412445981126080231532188874684938936712234686948033196;
    
    uint256 constant IC14x = 177810665185687164894304963445873224870943674744715686516913210526113944008;
    uint256 constant IC14y = 14535268695374640147686147827003528961434030743031585338831003553802458559085;
    
    uint256 constant IC15x = 8557172793584778082053625253416403027637558180923913266209406700800556545753;
    uint256 constant IC15y = 1861464797605016552008839494772326071046988019964896487028396400719129672253;
    
    uint256 constant IC16x = 18994681396004577849129448377769045788148775680671367035784471550349717492772;
    uint256 constant IC16y = 1173403911419541646271606485786669059897534022849561835326451756677501958606;
    
    uint256 constant IC17x = 469482765852483615685080178186660152052185915594569515142396167225006074130;
    uint256 constant IC17y = 18541080528398887086022978230468410015257483315638487538562762522059005290103;
    
    uint256 constant IC18x = 14733266233196932653296951592116366616370905687812152172160933325745637337881;
    uint256 constant IC18y = 11710570356431076017464087830229843780189101189604310038906193096738178415559;
    
    uint256 constant IC19x = 17516146277487109025779235081412376617203074626113898292298470960741277203415;
    uint256 constant IC19y = 7176816719290238986732818536939525425083000137365949147594680914312821966258;
    
    uint256 constant IC20x = 8813278027577819189022815890131563890887200222109109504185423726141811681118;
    uint256 constant IC20y = 14100736046338167720745353491492909235292095015611270127299355099101560620838;
    
    uint256 constant IC21x = 1011704165914952628536378489962672574557410935847253600140899970974788629100;
    uint256 constant IC21y = 1275655695320374297364668120092169549686266115536905353940249818708142637708;
    
    uint256 constant IC22x = 4636841228965726410561889787632717494913668451909625658175131226080032544565;
    uint256 constant IC22y = 18616022758042867710848656141014279577211762332162105868428751154211474310247;
    
    uint256 constant IC23x = 3599232090626997512480282519991626618579043811006913323630869018912629903495;
    uint256 constant IC23y = 19008528452996512694521248138819577662529482915091180957306916258159716300495;
    
    uint256 constant IC24x = 8687269422527635031178390013175766354812407839594273503366003745928280002117;
    uint256 constant IC24y = 8953074145360410862921137043585746849937845010830085594058102760370793446661;
    
    uint256 constant IC25x = 18107865351050432025742468123543193215535379535270925746405794218934723303415;
    uint256 constant IC25y = 14274145709249809896554183478214182756056212731296731236046145121198989255603;
    
    uint256 constant IC26x = 19191146961993924569647903017929587746713604526263536689401808178258389227245;
    uint256 constant IC26y = 17605265061816567579152474846050486739350238941562375742424592914212438318490;
    
    uint256 constant IC27x = 11857579018655700838376108952626461886898120303717333913431331389110905134550;
    uint256 constant IC27y = 21744143020112386419304314015767511915225746438405665272673050482354913780705;
    
    uint256 constant IC28x = 6140798447056997021199045762549334682772031668951471855591201959723650891702;
    uint256 constant IC28y = 1774824039918766353732987578217489264480896866153441899583880044352616233875;
    
    uint256 constant IC29x = 9179852713930934987526195171053488355070046288209711461943884237036217221631;
    uint256 constant IC29y = 17195110552228327110270500594965843252104550431596334882648028778287441195877;
    
    uint256 constant IC30x = 20469201235547338162929677887857467618289866834573217389208274062130437271345;
    uint256 constant IC30y = 10308879445690280429313869062807775248215835686019893102398895835042363140581;
    
    uint256 constant IC31x = 17472572855348697574063048272437162854002989438375522518329811702591002076467;
    uint256 constant IC31y = 10484039273422429409877841199344774679312197192896648673005511284427974394105;
    
 
    // Memory data
    uint16 constant pVk = 0;
    uint16 constant pPairing = 128;

    uint16 constant pLastMem = 896;

    function verifyProof(uint[2] calldata _pA, uint[2][2] calldata _pB, uint[2] calldata _pC, uint[31] calldata _pubSignals) public view returns (bool) {
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
            

            // Validate all evaluations
            let isValid := checkPairing(_pA, _pB, _pC, _pubSignals, pMem)

            mstore(0, isValid)
             return(0, 0x20)
         }
     }
 }
