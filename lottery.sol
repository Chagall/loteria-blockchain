// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

/** 
 * @title Lottery
 * @dev Implementa a ideia de loteria atuomatiza do noso projeto
 */
contract Lottery {
    
    address lotteryAddress;
    uint256 acumulatedPrize = 0;        // Valor acumulado do premio do sorteio
    address payable winnerAddress;           // Esse é o endereço do vencedor do sorteio
    uint64 public ticketPrice = 1;
    Participant[] public participants;      // Essa é a lista de participantes do sorteio
    
    
    // Dados armazenados de cada participante
    struct Participant {
        address ticketNumber;   // O endereço do usuário é o própnio ticket do sorteio
        bool isPaid;            // Variável de controle para saber se o ticket foi pago realmente
    }
    
    
    // Aqui inicializamos e limpamos a lista de participantes para cada novo sorteio
    function initParticipantsList() private {
        while(participants.length > 0) {
            participants.pop();
        }
    }
    
    // Aqui registramos um participante no sorteio
    function registerParticipant(address participantAddress) public {
        participants.push(Participant({ ticketNumber: participantAddress, isPaid: true }));
    }
    
    // Aqui selecionamos o vencedor do sorteio
    function selectWinner() public {
        //uint participantsListLen = participants.length;
    }
    
    // Aqui o contrato envia o premio ao vencedor
    function sendPrize() public {
        // Envia o valor acumulado ao vencedor
        winnerAddress.transfer(acumulatedPrize);
        // Agora que o premio foi pago, retorna o valor acumulado para 0
        acumulatedPrize = 0;
    }
    
    function getAcumulatedPrize() public view returns (uint256) {
        return acumulatedPrize;
    }
}