# OpenPLC

OpenPLC, o primeiro CLP de código aberto padronizado e totalmente funcional
O OpenPLC, projeto criado por Thiago Rodrigues Alves (estudante de doutorado na Universidade do Alabama), surgiu através do objetivo de encontrar vulnerabilidade em PLCs (Programmable Logic Controller ou Controlador Lógico Programável - CLP). Entretanto, dificilmente algum fabricante de CLP disponibilizaria seu código fonte para que o estudante pudesse realizar uma análise mais profunda, a fim de validar seus estudos. Devido a isto, ele resolveu criar o seu próprio CLP de hardware e software livres, que pode ser programado nas 5 principais linguagens definidas conforme a norma IEC 61131-3, que estabelece a arquitetura básica de software e as linguagens de programação para CLPs. Dentre as linguagens suportadas pelo OpenPLC, estão:
<P>
* LD (Ladder Diagram ou Diagrama Ladder), 
* FBD (Function Block Diagram ou Diagramas de Blocos Funcionais), 
* ST (Structured Text ou Texto Estruturado),
* IL (Instruction List ou Lista de Instruções) e 
* SFC (Sequential Function Chart ou Sequenciamento Gráfico de Funções).
<P>
O projeto do OpenPLC possui um ambiente de desenvolvimento de programas, é compatível com praticamente qualquer software SCADA existente, utiliza o protocolo Modbus/TCP para comunicação e inclui um editor de Interface Homem Máquina (IHM) de código aberto, denominado SCADA BR. Outro ponto interessante a se destacar condiz a compatibilidade do OpenPLC com o PLCopen Editor, sendo esse um software que permite escrever programas para CLP de acordo com a IEC 61131-3, estando em conformidade com o PLCopen XML. A figura abaixo ilustra a linguagem Ladder sendo aplicada sobre o PLCopen Editor. 
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_1.png" height="400" width="600">
Figura 1 - Linguagem Ladder sendo aplicada sobre o PLCopen Editor.
<P>
A programação do hardware é realizada por meio do PLCOpen Editor, onde são gerados arquivos ST. O aplicativo OpenPLC possui um servidor Web baseado em NodeJs que controla se o OpenPLC está de fato sendo executado ou não, e permite que o usuário faça upload do arquivo ST. Durante a execução do servidor, basta abrir o navegador, que haverá uma interface Web, possibilitando o envio de novos programas ao OpenPLC.
<P>
# Plataformas para o OpenPLC
<P>
O OpenPLC é compativel com algumas plataformas livres, como Arduino, Raspberry Pi e ESP8266. Adicionalmente, o projeto dá suporte à UniPI e PiXtend. Além disso, o OpenPLC fornece os esquemas elétricos para que o usuário crie seu próprio hardware, caso não deseje utilizar nenhuma dessas plataformas para suas aplicações.
<P>
No que diz respeito ao suporte fornecido para a plataforma Arduino, o OpenPLC disponibiliza mapeamentos de pinos para diferentes tipos de placas, como, por exemplo, Arduino UNO, Pro, Pro Mini, Nano, Micro, Lilypad, Zero, Mega, ADK e Due. A figura 2 demonstra o mapeamento de pinos para o Arduino Uno, Pro, Pro Mini, Nano, Micro, Lilypad e Zero. Vale destacar que para a plataforma Arduino, o OpenPLC não funciona como um aplicativo autônomo, isto é, depende de um sistema host para execução da lógica no núcleo. O sistema host pode ser Windows, Linux ou uma Raspberry Pi.
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_2.png" height="400" width="600">
<P>
Com relação à Raspberry Pi, o dispositivo deve estar executando o Raspbian Jessie para que seja possível a instalação do OpenPLC. Para saber mais sobre o processo de instalação do OpenPLC em um modelo de Raspberry Pi, clique aqui. Seguindo a mesma linha de mapeamentos de pinos citados no parágrafo anterior, o OpenPLC compatibiliza seus I/Os para as versões de Raspberry Pi. A figura 3 demonstra o mapeamento de pinos do OpenPLC para a Raspberry Pi.
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_3.png" height="400" width="600">
Figura 3 - Mapeamento de pinos do OpenPLC para Raspberry Pi.
<P>
No caso do ESP8266 o procedimento de instalação do OpenPLC é similar ao Arduino, onde é necessário um sistema host para execução da lógica. O mapeamento de pinos para esse dispositivo depende do DEVICE_ID. Existem 4 entradas digitais, 4 saídas digitais, 1 entrada analógica e 1 saída analógica disponível na placa ESP8266. Portanto, se o seu DEVICE_ID for zero, o vars localizado% IX0.0 para% IX0.3 será ligado às suas 4 entradas digitais. Se o seu DEVICE_ID for 2, o vars localizado para o seu dispositivo seria então% IX2.0 para% IX2.3, e assim por diante, conforme relatado no site oficial do OpenPLC. A figura 4 retrata o mapeamento de pinos, onde n deve ser substituído pelo DEVICE_ID.
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_4.png" height="400" width="600">
Figura 4 - Mapeamento de pinos do OpenPLC para ESP8266.
<P>
Em se tratando da UniPi e da PiXtend, ambos os hardwares baseados em Raspberry Pi, o procedimento de instalação do OpenPLC é similar ao da Raspberry Pi. Para UniPi, ao término do processo de compilação, o usuário deverá carregar o módulo I2C no Kernel, pois isso permitirá que o OpenPLC se comunique com os periféricos da placa UniPi. Já para a PiXtend, o usuário deverá se certificar que está ativada a interface SPI na plataforma embarcada. Os mapeamentos de pinos do OpenPLC para a Uni Pie e PiXtend são ilustrados conforme as figuras 5 e 6.
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_5.png" height="400" width="600">
Figura 5 - Mapeamento de pinos do OpenPLC para Uni Pi.
<P>
<img src="https://github.com/Epaminondaslage/OpenPLC/blob/master/Figura_6.png" height="400" width="600">
Figura 6 - Mapeamento de pinos do OpenPLC para PiXtend.
<P>
O OpenPLC oferece um hardware padrão livre que possa ser acessado através do Kicad. São fornecidos também arquivos pdf contendo os respectivos esquemas elétricos de tal hardware. Esses esquemas elétricos fornecem as ligações de circuitos de comunicação RS485, CPU, USB, proteção, Ethernet, entre outros.
<P>
# Conclusão
<P>
Por ser uma ferramenta totalmente aberta, o OpenPLC possibilita que qualquer pessoa tenha acesso a todos os arquivos e informações relativas ao projeto, o que resulta em uma colaboração significativa para disseminação de conhecimentos voltados principalmente para aplicações industriais que utilizam CLPs. Se comparado a um CLP tradicional, o OpenPLC apresenta componentes relativamente baratos, o que abre muitas portas dentro do cenário de automação.
<P>
# Referências
<P>
* ALVES, T.R. What is OpenPLC?. OpenPLC Project, 2017. Disponível em: http://www.openplcproject.com/. Acesso em novembro de 2017.

* ALVES, T.R.; BURATTO, M.; SOUZA, F.M.; RODRIGUES, T, V. OpenPLC: An Open Source Alternative to Automation. In IEEE 2014 Global Humanitarian Technology Conference (GHTC 2014), San Jose, CA, 2014, pp. 585-589.

* JOHN, K.H.; TIEGELKAMP, M. IEC 61131-3: Programming Industrial Automation Systems,” 2nd ed. Springer, 2010 pp.147-168.

