#include <stdint.h>
#include "system.h"

#define CMD_READ 0x11;
#define CMD_WRITE 0x18;
#define REG_CMD_ARG ((int*)(ALTERA_UP_SD_CARD_AVALON_INTERFACE_0_BASE + 556))	//4 bytes
#define REG_CMD ((short int*)(ALTERA_UP_SD_CARD_AVALON_INTERFACE_0_BASE + 560)) //2 bytes
#define REG_ASR ((short int*)(ALTERA_UP_SD_CARD_AVALON_INTERFACE_0_BASE + 564))	//2 bytes
#define REG_RXTX ((char*)(ALTERA_UP_SD_CARD_AVALON_INTERFACE_0_BASE))			//512 bytes
#define TAM_BLOCO 512 //bytes

volatile uint32_t *uart_base = (volatile uint32_t*) UART_BASE;

//escreve bloco de 512 bytes
void escreveBloco(char* dados, uint32_t n_bloco){

	int i;

	*REG_CMD_ARG = n_bloco * TAM_BLOCO;

	for (i = 0; i < TAM_BLOCO; i++){
		REG_RXTX[i] = dados[i];
	}

	*REG_CMD = CMD_WRITE;

	while ((*REG_ASR & 0x04)!=0); //espera terminar comando
}

//le bloco de 512 bytes
void leBloco(char* dados, uint32_t n_bloco){

	int i;

	*REG_CMD_ARG = n_bloco * TAM_BLOCO;
	*REG_CMD = CMD_READ;

	while ((*REG_ASR & 0x04)!=0); //espera terminar comando

	for (i = 0; i < TAM_BLOCO; i++){
		dados[i] = REG_RXTX[i];
	}
}

//só pra debug
void mandaBlocoUART(char* dados){
	int i;

	for (i = 0; i < TAM_BLOCO; i++){
		uart_base[1] = dados[i];
		while ((uart_base[2] & (1<<6)) == 0);
	}
	uart_base[1] = '\n';
	while ((uart_base[2] & (1<<6)) == 0);
	uart_base[1] = '\r';
	while ((uart_base[2] & (1<<6)) == 0);
}

int main(void) {

	char teste1[TAM_BLOCO] = "Teste sd card altera DE2 abc123456";
	char teste2[TAM_BLOCO] = "0123456789";
	char bloco_rd[TAM_BLOCO];

	while ((*REG_ASR & 0x02) == 0); // espera até sd card conectado

	//
	uart_base[1] = 'y';
	while ((uart_base[2] & (1<<6)) == 0);
	//

	//escreveBloco(&teste1, 21);
	//escreveBloco(&teste2, 40);

	leBloco(&bloco_rd, 10);
	mandaBlocoUART(&bloco_rd);

	leBloco(&bloco_rd, 21);
	mandaBlocoUART(&bloco_rd);

	leBloco(&bloco_rd, 30);
	mandaBlocoUART(&bloco_rd);

	leBloco(&bloco_rd, 40);
	mandaBlocoUART(&bloco_rd);

	return 1;
}

