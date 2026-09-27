/*                                                                                                  
                                       @@%#=#@  @@@@@@@@@@@@@@@@@@@@@@@@@@@@                   
                          @@@@@@@@@@@@@%*****%@%#*****##############*******#%%@@@              
                @@@@@@%%#***+***##%%@@@@%%%%%@@@@@@@%%%%################*#*#***#%@             
          @@@@%%*+**###########%@@@@@ @@%%%%#%@       @@@@@@@@@@@@%%%%%%%%@@@@@@@              
      @@@%**##############%%@@@@     @%=======#@                                               
    @@##############%%@@@@@      @@@@@@%*====@%%%#%@@@@@                                       
    @@@@%%%%@@@@@@@@@@       @@@@@%=--------@%%%%%%#=..:=%@@                                   
       @@@@@@            @@@%**@*----------*@%%%%%%%%%#=.  :*@@                                
                      @@@%***@*------------%%%%%%%%%%%%%#*: .-:*@@                             
                    @@%****#@=-------------@%%%%%%%%%%%%%%#*- =**%@@                           
                  @@%*****%#--------------+@%%%%%%%%%%%%%%%#**-:***@@                          
                 @@=*****%%:--------------@%%%%%%%%%%%%%%%%%#***=***%@                         
               @@*=++***%%:---------------@%%%%%%%%%%%%%%%%%%%*******%@@                       
              @@++++****@-----------------@%%%%%%%%%%%%%%%%%%%#*******#@@                      
             @@====****%*:---------------=@%%%%%%%%%%%%%@%@%%%%%##*****%@@                     
            @@====*****@:----------------=@%%%%%@@@%%%%%%%%%%%%##*#%%%%%@@                     
           @@+===*****%@:----------------=@@@@@%%%%%%%%%%%%%%%%%%%%####**%@@                   
           @*===+*****%%:-----:---------==@@%%@@@@@@@@%%%%%%%%@@@@@@@@@@@@@%@@                 
          @%====******%%:-----:-:--===+@@@@@*-::::::..........::::::*@@@@@@@@@                 
         @@#===+******%@:------===%@@%=:::...... . .... . . .. . ....*@@@@@@                   
         @@*+==+******#@-:---=%@@+-::... .. . . . . . .. . . . .. .  -@@@                      
         @@++++********@%:*%@@@@=.. . . .. .. .. .. .. . .. ... ...:==@@@@@@@@                 
         @@++++********%@@@%@%%+. .. ...-==*%%@@@@@%%*==.. ...+@@@%%%@@@@@@%%%%%@@             
         @@+++******#@@@%@%@%%=. .=%@@%%%@@@@@@@@@@%%@@@%@@%%%%@@@@@@@@@@%+%*@@@@@             
         @@*++****%@@%@%@%%%%.:+@%@%%+@@@@@@@@@@@@%+%#%%@@@@@@@@@@@@@@@@@*%#%#@@@@             
         @@#+***%@@%@%%%%@%@%%%@%@@%@@@@@@@@@@@@@@#%%%#%@@#:-@@@@@@@@@@@#%%%%%@@               
         @@%+*@@@%%%%%%@%%@%@%@@@#-:#@@@@@@@@@@@%#%%#%%%@+.. *@@@@@@@@@%%%##%@@@               
          @@%@@%@@@@@%@%@%@@#=:.:..::@@@@@@@@@@%%%%#%#%@@: . .%@@@@@@@%%%%%%%@@                
          @@@%@@=:.:*@@@@@@@:::::::::+@@@@@@@@%%%#%#%%%@*. . .:@@@@@@%%%%%%%@@@                
        @@@%%@#. .. ..#@@**-. . . ..::%@@@@@@%%%%#%##%@%... . . %@@%%%%%%%%@@@                 
       @@%%@@%. ::::.. .. . .. ... ..::@@%@@%%%####%%@%. . . ...:=%%@%%%%@@@@                  
      @@@@@@@% .::: . . .. . .. . . . .:#@@%%%%%%%@@@=.. ...:**+=======***                     
            @@: .::... . .. . . .. ... .:::=#%@%#=:.  . ..*+========-   :=+**                  
             @@:..:: .. . .. ... .. . . .  ..... . ... .=*===========-.   .=**                 
              @@= ... . . . . . . . .. . .. . . ... . .+================:   ==*                
               @@@+.. .... .. .. ... .. . . . .. . . .++====================-:+*               
                 @@@@@%*.. . . .. . . .. . ... . .. .:*===================-:=.=**              
                 @@@:::::  . .. . .. . .. . . ... .. :+=======================-**              
                  @@:::::.. . .. . .. . .. . . . . ..=+========================**              
                  @@-::..:.. . .. . .. . .. .. .. . .:*+=======================**              
                  @@-:: .... .. .. . .. . .. .. .. . .+++=====================+*               
                  @@:::. . ....:. ... .. . .. .. ... ..*++====================*                
                  @@::: . . . ...:. .. .. . .. . . . . :++++================+*                 
                  @#:::. .. .. . .. . .. ... . .. .. . . :+++++===========+**                  
                 @@-::.. .. . ... . .. .:#%+:::... . . ..:=%#**++++++++***                     
              @@@@::::. . . .. . .. ... ..:=@@@@@@@@@@@@@@@@    ******                         
           @@@@@  -:.:.... .. . . . . .. ..:::=@@@@@@@@                                        
          @@@        :. . . .. .. .. . .. . .::::=%@@@                                         
                        .... . .. . .. . ... ..::::-@@                                         
                                . . . . .. .. . .::=@@                                         
                                         . . . . ..-@
+------------------------------------------------------------------+
|                            CHICLE.LOL                            |
+------------------------------------------------------------------+
| Community-owned token focused on providing Decentraland tooling  |
| and delivering MANA rewards to ecosystem holders.                |
+-----------------------+------------------------------------------+
| Feature / Metadata    | Details                                  |
+-----------------------+------------------------------------------+
| Token Name            | Chicle.LOL (CHICLE)                      |
| Total Supply          | 1,000,000,000,000 CHICLE (1 Trillion)    |
| Liquidity             | 100% of supply as Uniswap v4 liquidity   |
| Ecosystem Utility     | Decentraland tooling & MANA rewards      |
| Governance            | Community DAO (ChicleGovernor)           |
| Timelock Controller   | Autonomous governance execution          |
| Voting Standard       | ERC20Votes (on-chain checkpoints)        |
| Gasless Approvals     | EIP-2612 permit signatures               |
+-----------------------+------------------------------------------+
| Resource              | URL                                      |
+-----------------------+------------------------------------------+
| Official Website      | https://chicle.lol                       |
| X                     | https://x.com/chiclelol                  |
| GitHub                | https://github.com/chiclelol             |
+-----------------------+------------------------------------------+
*/
// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.37;

import {Governor} from "@openzeppelin/contracts/governance/Governor.sol";
import {GovernorSettings} from "@openzeppelin/contracts/governance/extensions/GovernorSettings.sol";
import {GovernorCountingSimple} from "@openzeppelin/contracts/governance/extensions/GovernorCountingSimple.sol";
import {GovernorVotes} from "@openzeppelin/contracts/governance/extensions/GovernorVotes.sol";
import {GovernorVotesQuorumFraction} from "@openzeppelin/contracts/governance/extensions/GovernorVotesQuorumFraction.sol";
import {GovernorTimelockControl} from "@openzeppelin/contracts/governance/extensions/GovernorTimelockControl.sol";
import {IVotes} from "@openzeppelin/contracts/governance/utils/IVotes.sol";
import {TimelockController} from "@openzeppelin/contracts/governance/TimelockController.sol";

contract ChicleGovernor is
    Governor,
    GovernorSettings,
    GovernorCountingSimple,
    GovernorVotes,
    GovernorVotesQuorumFraction,
    GovernorTimelockControl
{
    constructor(
        IVotes _token,
        TimelockController _timelock,
        uint48 _initialVotingDelay,
        uint32 _initialVotingPeriod,
        uint256 _initialProposalThreshold,
        uint256 _initialQuorumNumerator
    )
        Governor("ChicleGovernor")
        GovernorSettings(_initialVotingDelay, _initialVotingPeriod, _initialProposalThreshold)
        GovernorVotes(_token)
        GovernorVotesQuorumFraction(_initialQuorumNumerator)
        GovernorTimelockControl(_timelock)
    {}

    function votingDelay() public view override(Governor, GovernorSettings) returns (uint256) {
        return super.votingDelay();
    }

    function votingPeriod() public view override(Governor, GovernorSettings) returns (uint256) {
        return super.votingPeriod();
    }

    function quorum(uint256 timepoint) public view override(Governor, GovernorVotesQuorumFraction) returns (uint256) {
        return super.quorum(timepoint);
    }

    function state(uint256 proposalId) public view override(Governor, GovernorTimelockControl) returns (ProposalState) {
        return super.state(proposalId);
    }

    function proposalNeedsQueuing(uint256 proposalId) public view override(Governor, GovernorTimelockControl) returns (bool) {
        return super.proposalNeedsQueuing(proposalId);
    }

    function proposalThreshold() public view override(Governor, GovernorSettings) returns (uint256) {
        return super.proposalThreshold();
    }

    function _queueOperations(
        uint256 proposalId,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(Governor, GovernorTimelockControl) returns (uint48) {
        return super._queueOperations(proposalId, targets, values, calldatas, descriptionHash);
    }

    function _executeOperations(
        uint256 proposalId,
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(Governor, GovernorTimelockControl) {
        super._executeOperations(proposalId, targets, values, calldatas, descriptionHash);
    }

    function _cancel(
        address[] memory targets,
        uint256[] memory values,
        bytes[] memory calldatas,
        bytes32 descriptionHash
    ) internal override(Governor, GovernorTimelockControl) returns (uint256) {
        return super._cancel(targets, values, calldatas, descriptionHash);
    }

    function _executor() internal view override(Governor, GovernorTimelockControl) returns (address) {
        return super._executor();
    }
}
