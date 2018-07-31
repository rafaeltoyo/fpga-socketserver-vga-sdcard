#################################################################################################
# PROJETO FINAL DE LÓGICA RECONFIGURÁVEL							#
# Alunos:											#
#	Giovanni Luiz Zanetti	1729748								#
#	Rafael Gama Palone	1720449								#
#	Rafael Hideo Toyomoto	1722085								#
#################################################################################################

Os arquivos do projeto se encontram no Google Driver também:
	https://drive.google.com/drive/folders/1fO4uxA6P64ob_zwdKJK-oxmPT_8mOjCx?usp=sharing

Para baixar só o código fonte, utilize o seguinte link:
	https://drive.google.com/file/d/15vSGJ7qPZiwDrm0Nihhc89-9HVbCrr4z/view?usp=sharing

O texto abaixo pode ser encontrado melhor formatado no relatório (também disponível online):
	https://docs.google.com/document/d/1bm0m6e8O3AXssWZYM7kTTZDAjiLicfJBS4gjg5sTRS8/edit?usp=sharing

#################################################################################################

Compilação

1. 	Refazer a geração do .qip no QSYS (corrigir possíveis problemas de path com os arquivos 
	dos IPs)

2. 	Recompilar o projeto.

3. 	Abrir a janela Programmer e rodar o projeto.

4. 	Abrir o eclipse e selecionar o pasta software no diretório raiz como workspace (deverá 
	encontrar o projeto “PepinoBoris” e “PepinoBoris_bsp”).

5. 	Selecionar o projeto “PepinoBoris_bsp”, abrir o editor de opções de BSP do NIOS II e 
	regerar as referências (arrumar os paths para os arquivos de header e source dos IPs). 
	ATENÇÃO: A maioria dos arquivos já foram modificados para utilizar path relativo, como o 
	Makefile principal do projeto.

6. 	Executar o comando “build” no projeto “PepinoBoris_bsp” (possíveis erros em alguns 
	arquivos de biblioteca podem acabar ocorrendo, apenas ignorar).

7. 	No projeto “PepinoBoris”, encontrar o arquivo simples_socket_example.h e modificar seus 
	defines para se conectar a rede (IP fixo, gateway e máscara de rede).

8. 	Executar o comando “build” no projeto “PepinoBoris”. 

9. 	Executar o projeto. Recomenda-se utilizar o Debug para melhor visualização dos passos 
	iniciais de configuração do projeto.

10. 	No console do NIOS II, será solicitado um identificador de 9 dígitos. Pode se utilizar 
	“123123123”.
11. 	Esperar o DHCP atribuir um IP à placa. Pode ser que ocorra erro na inicialização do 
	componente DMA9000, sendo necessário refazer o processo de execução do projeto. Esse 
	problema pode ser observado pelo conector ethernet da placa, que deverá ter uma luz verde 
	acesa.

#################################################################################################

Teste

1. 	Junto a pasta do projeto no Google Drive, há um arquivo chamado ClienteSocket2.jar. 
	Baixar esse programa para se comunicar com a placa de testar o envio de amostras artificiais.

2. 	Executar o ClienteSocket2.jar. Ao abrir o programa, haverá 2 campos para preencher (IP e 
	porta). Colocar o IP atribuído a placa pelo DHCP e a porta 30.

3. 	Selecionar uma forma de onda ao lado direito.

4. 	Clicar em conectar.

5. 	Voltar ao eclipse e apertas F8 (Resume) caso esteja em modo Debug (Há um breakpoint logo 
	após a detecção de conexão).

6. 	Esperar alguns segundos para a placa recolher algumas amostras.

7. 	Utilizar o Switch SW0 para atualizar o gráfico pelo VGA (conectar a um monitor).

8. 	Utilizar o Switch SW1 para salvar o estado atual no SD Card (o SD Card deverá ser 
	introduzido antes de inicializar a execução do programa).

####################################################################################################