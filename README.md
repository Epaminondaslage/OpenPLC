<td style="width: 20%;"><img src="/img/Logo_CEFET-MG.png" width="20%" /></td>

# Open PLC com OrangePi One
<p><strong><span style="color: #0000ff;">Internet das Coisas - Kit de desenvolvimento SBC com Linux- OpenPLC com OrangePi One</span></strong></p>
<p><strong><span style="color: #0000ff;">Prof Epaminondas Lage</span></strong></p>
<a href="http://lattes.cnpq.br/7787341723868111"> Currículo Lattes LAGE, E. S.</a> 

# Índice deste Repositório
Meet OpenPLC: The first open source, muti-hardware Programmable Logic Controller Suite
* [O que é o OpenPLC](#O-que-é-o-OpenPLC)
* [Porque usar este software?](#Porque-usar-este-software) 
* [Plataformas para o OpenPLC](#Plataformas-para-o-OpenPLC)
* [Status do Projeto](#Status-do-Projeto)
* [Referências](#Referências)


# O que é o OpenPLC 
https://www.openplcproject.com/

OpenPLC, o primeiro CLP de código aberto padronizado e totalmente funcional. O OpenPLC, projeto criado por Thiago Rodrigues Alves (estudante de doutorado na Universidade do Alabama), surgiu através do objetivo de encontrar vulnerabilidade em PLCs (Programmable Logic Controller ou Controlador Lógico Programável - CLP). Entretanto, dificilmente algum fabricante de CLP disponibilizaria seu código fonte para que o estudante pudesse realizar uma análise mais profunda, a fim de validar seus estudos. Devido a isto, ele resolveu criar o seu próprio CLP de hardware e software livres, que pode ser programado nas 5 principais linguagens definidas conforme a norma IEC 61131-3 (https://pt.wikipedia.org/wiki/IEC_61131-3), que estabelece a arquitetura básica de software e as linguagens de programação para CLPs. Dentre as linguagens suportadas pelo OpenPLC, estão:
<BR>
* LD (Ladder Diagram ou Diagrama Ladder), 
* FBD (Function Block Diagram ou Diagramas de Blocos Funcionais), 
* ST (Structured Text ou Texto Estruturado),
* IL (Instruction List ou Lista de Instruções) e 
* SFC (Sequential Function Chart ou Sequenciamento Gráfico de Funções).
  
O projeto do OpenPLC possui um ambiente de desenvolvimento de programas, é compatível com praticamente qualquer software SCADA existente, utiliza o protocolo Modbus/TCP para comunicação e inclui um editor de Interface Homem Máquina (IHM) de código aberto, denominado SCADA BR (https://sourceforge.net/p/scadabr/wiki/Manual%20ScadaBR%20English%200%20Summary/). Outro ponto interessante a se destacar condiz a compatibilidade do OpenPLC com o OpenPLC Editor, sendo esse um software que permite escrever programas para CLP de acordo com a IEC 61131-3, estando em conformidade com o PLCopen XML (https://beremiz.org/doc). A figura abaixo ilustra a linguagem Ladder sendo aplicada sobre o OpenPLC Editor. 

<img src="./img/Figura_1.png"><BR>
Figura 1 - Linguagem Ladder sendo aplicada sobre o OpenPLC Editor.

The OpenPLC Project consists of two parts: Runtime and Editor. The Runtime is a portable software designed to run from the smallest of all microcontrollers (Arduino-compatible) to powerful servers in the cloud. It is responsible for executing the PLC programs you create using the Editor. Currently, 

  A programação do hardware é realizada por meio do PLCOpen Editor, onde são gerados arquivos ST. O aplicativo OpenPLC possui um servidor Web baseado em NodeJs (https://nodejs.org/en/) que controla se o OpenPLC está de fato sendo executado ou não, e permite que o usuário faça upload do arquivo ST. Durante a execução do servidor, basta abrir o navegador, que haverá uma interface Web, possibilitando o envio de novos programas ao OpenPLC.

# Porque usar este software? 
  
Por ser uma ferramenta totalmente aberta, o OpenPLC possibilita que qualquer pessoa tenha acesso a todos os arquivos e informações relativas ao projeto, o que resulta em uma colaboração significativa para disseminação de conhecimentos voltados principalmente para aplicações industriais que utilizam CLPs. Se comparado a um CLP tradicional, o OpenPLC apresenta componentes relativamente baratos, o que abre muitas portas dentro do cenário de automação.

O OpenPLC oferece um hardware padrão livre que possa ser acessado através do Kicad (https://www.openplcproject.com/concept-hardware). São fornecidos também arquivos pdf contendo os respectivos esquemas elétricos de tal hardware. Esses esquemas elétricos fornecem as ligações de circuitos de comunicação RS485, CPU, USB, proteção, Ethernet, entre outros.

# Plataformas para o OpenPLC

O OpenPLC rnn time é compativel com algumas plataformas livres, como Arduino, Raspberry Pi e ESP8266. É oficialmente suportada nas seguintes plataformas:
  
* Arduino Uno / Nano / Leonardo / Micro
* Arduino Mega / Due
* Arduino Nano Every / IoT / BLE
* Arduino RB2040 Connect
* Arduino Mkr / Zero / WiFi
* Arduino Pro (Machine Control and EDGE)
* Controllino Maxi / Automation / Mega / Mini
* Productivity Open P1AM
* ESP8266 (nodemcu)
* ESP32
* Raspberry Pi 2 / 3 / 4
* PiXtend
* UniPi Industrial Platform
* Neuron PLC
* FreeWave Zumlink
* FreeWave ZumIQ
* Windows (generic target as a soft-PLC)
* Linux (generic target as a soft-PLC)

# OpenPLC no orangePi One
  
# Referências

* FREITAS, C. M. Conheça o OpenPLC - O primeiro CLP de Código Aberto Padronizado Disponível em:https://www.embarcados.com.br/openplc-o-primeiro-clp-de-codigo-aberto/ Acesso em Março de 2019.

* ALVES, T.R. What is OpenPLC?. OpenPLC Project, 2017. Disponível em: http://www.openplcproject.com/. Acesso em novembro de 2017.

* ALVES, T.R.; BURATTO, M.; SOUZA, F.M.; RODRIGUES, T, V. OpenPLC: An Open Source Alternative to Automation. In IEEE 2014 Global Humanitarian Technology Conference (GHTC 2014), San Jose, CA, 2014, pp. 585-589.

* JOHN, K.H.; TIEGELKAMP, M. IEC 61131-3: Programming Industrial Automation Systems,” 2nd ed. Springer, 2010 pp.147-168.

