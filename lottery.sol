// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Lottery
 * @dev Implementa a ideia de loteria atuomatiza do noso projeto
 */
contract Lottery {
    
    // Valor acumulado do premio do sorteio
    uint64 acumulatedPrize = 0; 
    
    // Dados armazenados de cada participante
    struct Participant {
        uint64 number;
    }
    
    // Essa é a lista de participantes do sorteio
    Participant[] public participans;
    
    // Mapeamento para saber quanto ether ususário possui
    mapping(address => uint64) equity_ether;
    
    // Aqui inicializamos e limpamos a lista de participantes
    // para cada novo sorteio
    function initParticipantsList() public {
        
    }
    
    // Aqui registramos um participante no sorteio
    function registerParticipant(address participant) public {
        
    }
    
    // Aqui selecionamos o vencedor do sorteio
    function selectWinner() public {
        
    }
    
    // Aqui o contrato envia o premio ao vencedor
    function sendWinnerPrize() public {
        
    }
    
    // Aqui retornamos o valor do sorteio acumulado até o momento
    function getAcumulatedPrizeAmount() external view returns (uint64) {
        return acumulatedPrize;
    }
    
    function getParticipantsList() external view returns (Participant[]) {
        return participans;
    }
}