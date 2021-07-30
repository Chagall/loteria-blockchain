// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Lottery
 * @dev Implementa a ideia de loteria atuomatiza do noso projeto
 */
contract Lottery {
    
    // Valor acumulado do premio do sorteio
    uint64 prize = 0; 
    
    // Dados armazenados de cada participante
    struct Participant {
        
    }
    
    // Essa é a lista de participantes do sorteio
    Participant[] public participans;
    
    
    // Aqui inicializamos e limpamos a lista de participantes
    // para cada novo sorteio
    function initParticipantsList() public {
        
    }
    
    // Aqui registramos um participante no sorteio
    function registerParticipant() public {
        
    }
    
    // Aqui selecionamos o vencedor do sorteio
    function selectWinner() public {
        
    }
    
    // Aqui o contrato envia o premio ao vencedor
    function sendWinnerPrize() public {
        
    }
    
    // Aqui retornamos o valor do sorteio acumulado até o momento
    function getPrizeAmount() public {
        
    }
}