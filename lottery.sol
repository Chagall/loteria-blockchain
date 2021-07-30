// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Lottery
 * @dev Implementa a ideia de loteria atuomatiza do noso projeto
 */
contract Lottery {
    
    uint64 public acumulatedPrize = 0;      // Valor acumulado do premio do sorteio
    address public winnerAddress;           // Esse é o endereço do vencedor do sorteio
    Participant[] public participants;      // Essa é a lista de participantes do sorteio
    
    
    // Dados armazenados de cada participante
    struct Participant {
        address ticketNumber;   // O endereço do usuário é o própnio ticket do sorteio
        bool isPaid;            // Variável de controle para saber se o ticket foi pago realmente
    }
    
    // Mapeamento para saber quanto ether uusário tem
    mapping(address => uint64) equity_ether;
    
    // Aqui inicializamos e limpamos a lista de participantes para cada novo sorteio
    function initParticipantsList() public {
        while(participants.length > 0) {
            participants.pop();
        }
    }
    
    // Aqui registramos um participante no sorteio
    function registerParticipant(address participantAddr) public {
        participants.push(Participant({ ticketNumber: participantAddr, isPaid: true }));
    }
    
    // Aqui selecionamos o vencedor do sorteio
    function selectWinner() public {
        
    }
    
    // Aqui o contrato envia o premio ao vencedor
    function sendWinnerPrize() public {
        // Agora que o premio foi pago, retorna o valor acumulado para 0
        acumulatedPrize = 0;
    }
    

}