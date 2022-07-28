<td style="width: 20%;"><img src="/img/Logo_CEFET-MG.png" width="20%" /></td>

# Open PLC com OrangePi One
<p><strong><span style="color: #0000ff;">Internet das Coisas - Kit de desenvolvimento SBC com Linux- OpenPLC com OrangePi One</span></strong></p>
<p><strong><span style="color: #0000ff;">Prof Epaminondas Lage</span></strong></p>
<a href="http://lattes.cnpq.br/7787341723868111"> Currículo Lattes LAGE, E. S.</a> 

# Índice deste Repositório
* [Introdução](#Introdução)
* [O que é o OpenPLC](#O-que-é-o-OpenPLC)
* [A IEC 6113](#A-IEC-6113)
* [Porque usar este software?](#Porque-usar-este-software) 
* [Plataformas de Hardware para o OpenPLC](#Plataformas-de-Hardware-para-o-OpenPLC)
* [OpenPLC no OrangePi One](#OpenPLC-no-OrangePi-One)
* [Status do Projeto](#Status-do-Projeto)
* [Referências](#Referências)


# Introdução 

Um controlador monitora o estado real do processo de uma planta através de um número de transdutores, definido de acordo com a aplicação. Os transdutores convertem as grandezas físicas em sinais normalmente elétricos, os quais são conectados com as entradas dos controladores. Transdutores digitais (discretos) medem variáveis com estados distintos, tais como ligado/desligado ou alto/baixo, enquanto os transdutores analógicos medem variáveis com uma faixa contínua, tais como pressão, temperatura, vazão ou nível.

<td style="width: 50%;"><img src="/img/sistemas industriais.png" width="50%" /></td>
<p>Figura 1 - Sistemas Industriais.</p>

Com base nos estados das suas entradas (variáveis de processo - PV), o controlador utiliza um algoritmo de controle embutido para calcular os estados das suas saídas (variáveis manipuladas - MV). Os sinais elétricos das saídas são convertidos para o processo através dos atuadores. Muitos atuadores geram movimentos como válvulas, motores, bombas e outros e utilizam a energia potencial pneumática para o acionamento.

O operador interage com o controlador através dos parâmetros de controle (ex: Set Point, Kp, Ki, Kd). Alguns controladores podem mostrar os estados do processo através de um display ou tela, que é chamado de IHM (Interface Homem Máquina).

Atualmente, os Controladores Programáveis aplicam-se tanto ao controle discreto (I/O) quanto para o controle de malhas analógicas. Diferentes computadores são conectados via rede local (LAN), redes de longas distâncias (WAN) a um computador supervisório central, o qual gerencia os alarmes, receitas e relatórios.

## Motivação para Sistemas Abertos

Os PLC's são um dos componentes mais críticos da indústria atual. Com a utilização dos sistemas de controle na maioria das indústrias, incluindo aplicações que exigem segurança, é muito importante que os programas possam ser facilmente entendidos por uma grande parte dos profissionais do chão de fábrica. Além do programador, o programa de controle deve ser de fácil entendimento para todos os técnicos, engenheiros e gerentes de processo.

Por décadas o mercado tem sido dominado por poucos fabricantes que oferecem soluções muito parecidas, porém com particularidades nos dialetos de programação. Muitos usuários têm decidido eleger no mínimo três fornecedores, com o objetivo principal de minimizar o risco. Em aplicações reais, isto implica em um maior custo devido ao retrabalho e problemas de comunicação entre produtos de diferentes fabricantes.

# O que é o OpenPLC 

OpenPLC, o primeiro CLP de código aberto padronizado e totalmente funcional. O OpenPLC, projeto criado por Thiago Rodrigues Alves (estudante de doutorado na Universidade do Alabama), surgiu através do objetivo de encontrar vulnerabilidade em PLCs (Programmable Logic Controller ou Controlador Lógico Programável - CLP). Entretanto, dificilmente algum fabricante de CLP disponibilizaria seu código fonte para que o estudante pudesse realizar uma análise mais profunda, a fim de validar seus estudos. Devido a isto, ele resolveu criar o seu próprio CLP de hardware e software livres, que pode ser programado nas 5 principais linguagens definidas conforme a norma IEC 61131-3 (https://pt.wikipedia.org/wiki/IEC_61131-3), que estabelece a arquitetura básica de software e as linguagens de programação para CLPs. Dentre as linguagens suportadas pelo OpenPLC, a parte três da IEC 61131 estabelece critérios para linguagens de programação e define duas linguagens gráficas e duas linguagens textuais para CLPs:

<img src="./img/ling_plc.jpg"><BR>
Figura 2 - Linguagens de programação de PLC's.

* Diagrama Ladder (LD), Gráfica.
* Diagrama de Blocos (FBD), Gráfica.
* Texto Estruturado (ST), textual.
* Lista de Instruções (IL), textual.
* Diagrama de Funções Sequenciais (SFC).
  
O projeto do OpenPLC possui um ambiente de desenvolvimento de programas, é compatível com praticamente qualquer software SCADA existente, utiliza o protocolo Modbus/TCP para comunicação e inclui um editor de Interface Homem Máquina (IHM) de código aberto, denominado SCADA BR (https://sourceforge.net/p/scadabr/wiki/Manual%20ScadaBR%20English%200%20Summary/). Outro ponto interessante a se destacar condiz a compatibilidade do OpenPLC com o OpenPLC Editor, sendo esse um software que permite escrever programas para CLP de acordo com a IEC 61131-3, estando em conformidade com o PLCopen XML (https://beremiz.org/doc). A figura abaixo ilustra a linguagem Ladder sendo aplicada sobre o OpenPLC Editor. 

<img src="./img/Figura_1.png"><BR>
Figura 3 - Linguagem Ladder sendo aplicada sobre o OpenPLC Editor.

O Projeto OpenPLC consiste em duas partes: Runtime e Editor. O Runtime é um software portátil projetado para rodar desde o menor de todos os microcontroladores (compatível com Arduino) até poderosos servidores nas nuvens. Ele é responsável por executar os programas PLC que você cria usando o Editor.

  A programação do hardware é realizada por meio do Editor, onde são gerados arquivos ST. O aplicativo OpenPLC possui um servidor Web baseado em NodeJs (https://nodejs.org/en/) que controla se o OpenPLC está de fato sendo executado ou não, e permite que o usuário faça upload do arquivo ST. Durante a execução do servidor, basta abrir o navegador, que haverá uma interface Web, possibilitando o envio de novos programas ao OpenPLC.

# A IEC 6113
  
A International Electrotechnical Commission (Comissão Eletrotécnica Internacional), normalmente conhecida como IEC, é o organismo de normalização internacional não lucrativo independente líder mundial para as tecnologias elétrica, eletrónica e relacionadas. A IEC 61131 traz requisitos de hardware e software para sistemas que envolvam CLPs é dividida em cinco partes:
  
* Parte 1: IEC 61131-1 Informações gerais. Definição da informação geral, da terminologia básica e dos conceitos; Publicado em 1992 está na Versão 2.0 desde 2003.;
* Parte 2: IEC 61131-2 Requisitos de hardware . Exigências de equipamento e testes eletrônicos e testes mecânicos de construção e verificação; Publicado em 1992 encontra-se na Versão 4.0 desde 2017.;
* Parte 3: IEC 61131-3 Linguagens de programação. Estrutura do Software do CLP, execução do programa e linguagens de programação; Publicado em 1993 está na Versão 3.0 desde 2013.;
* Parte 4: IEC 61131-4 Guia de orientação ao usuário. Guia de orientação ao usuário na seleção, instalação e manutenção de CLP's. Publicado em 1995 está na Versão 2.0 from 2004.;
* Parte 5: IEC 61131-5 Comunicação.Facilidade do Software em especificação de mensagens de serviços a comunicar-se com outros dispositivos usando as comunicações baseadas em MAP (Manufacturing Messaging Services). Publicado em 1998 apresenta-se naVersão 1.0 desde 2000.;
* Parte 6: IEC 61131-6 Segurança Funcional.Comunicação via facilidade do Software fieldbus para comunicação de PLC s utilizando IEC fieldbus. Edição 1.0 - 2012.;
* Parte 7: IEC 61131-7 Programação de Controle Fuzzy  Programação utilizando Lógica Nebulosa (Fuzzy).Edição 1.0 - 2000;
* Parte 8: IEC 61131-8 Guia para implementação das linguagens: Diretrizes para aplicação e implementação de linguagens de programação. Edição 3.0 - 2017.
* Parte 9: IEC 61131-9: Interface de comunicação digital single-drop para pequenos sensores e atuadores (SDCI).Especifica uma tecnologia de interface de comunicação digital single-drop para pequenos sensores e atuadores SDCI.A edição atual é 1.0 de 2013.
* Parte 10: IEC 61131-10: PLC aberto XML Exchange Format.Este novo padrão IEC é baseado na especificação original PLCopen XML. Com o lançamento da 3ª edição da IEC 61131-3 em 2013, uma grande reformulação foi necessária para incluir as mudanças e extensões como recursos orientados a objetos. Lançado em abril de 2019.
  
## IEC 61131-3 – Linguagens de Programação
  
Foco de nosso objeto de trabalho, a norma IEC 61131 em sua parte 3, tem por objetivo:
  
Fornecer metodologias de construção de lógicas de programação de forma estruturada e modular, permitindo a quebra dos programas em partes gerenciáveis;
Definir 5 linguagens de programação, cada uma com suas características, de forma a cobrir a maioria das necessidades de controle atuais;
Permite o uso de outras linguagens de programação, desde que obedecidas as mesmas formas de chamadas e trocas de dados (Visual Basic, Flow Chart, C++, etc);

Abordagem e estruturação top-down e bottom-up, fundamentada em 3 princípios:

* Modularização;
* Estruturação;
* Reutilização.

Dentro destes aspectos, a IEC 61131-3 define cinco linguagens de programação:

* ST (Structured Text) Texto Estruturado
* IL (Instruction List) Lista de Instruções
* LD (Ladder) Linguagem ladder
* FBD (Function Block Diagram) Diagrama de bloco
* SFC (Sequential Flow Chart) Diagrama de Fluxo

As duas primeiras linguagens acima (ST e IL) são ditas textuais por conterem instruções na forma de texto. As duas seguintes (LD e FBD) são ditas gráficas por possuírem representação na forma de símbolos. A linguagem SFC é normalmente tida como linguagem gráfica, porém também permite programações textuais.

É comum em alguns ambientes de programação que atendem à IEC 61131-3 como o CODESYS, a presença de uma sexta linguagem de programação, conhecida como CFC (do inglês Continuous Function Chart) que não faz parte das definições da norma. 
  
O software de programação  compatíveis IEC 61131-3 permite que os usuários criem programas em um ambiente padrão global compatível com IEC. Projetos podem ser criados com uma variedade de linguagens de programação em qualquer combinação.

* Ambiente de programação aberto e flexível com portabilidade de código.
* Versões Express (gratuita) e Pro (paga) disponíveis.
* Biblioteca de modelos de programação para aplicativos de processo comuns, reduzindo o tempo de lançamento no mercado
* A biblioteca de blocos de funções para dispositivos e instrumentos MKS permite "plug & play"

# Porque usar este software? 
  
Por ser uma ferramenta totalmente aberta, o OpenPLC possibilita que qualquer pessoa tenha acesso a todos os arquivos e informações relativas ao projeto, o que resulta em uma colaboração significativa para disseminação de conhecimentos voltados principalmente para aplicações industriais que utilizam CLPs. Se comparado a um CLP tradicional, o OpenPLC apresenta componentes relativamente baratos, o que abre muitas portas dentro do cenário de automação.

Sites de Referência sobre o projeto
  
* <p><a href="https://openplcproject.com/">Site do Projeto openplc</a></p>
* <p><a href="https://github.com/thiagoralves/OpenPLC_v3">Projeto Openplc Runtime no Github</a></p> 
* <p><a href="https://github.com/thiagoralves/OpenPLC_Editor">Projeto Openplc Editor no Github</a></p>  
* <p><a href="https://plcopen.org/">Site do PLC Open</a></p>
* <p><a href="https://beremiz.org/">Site do Editor Beremiz</a></p> 

# Plataformas de Hardware para o OpenPLC

O OpenPLC run time é compativel com algumas plataformas livres, como Arduino, Raspberry Pi e ESP8266. É oficialmente suportada nas seguintes plataformas:
  
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
  
  runtime
  http://172.16.10.143:8080
  
  user=openplc
  passwd=openplc
  
  
# Referências

* FREITAS, C. M. Conheça o OpenPLC - O primeiro CLP de Código Aberto Padronizado Disponível em:https://www.embarcados.com.br/openplc-o-primeiro-clp-de-codigo-aberto/ Acesso em Março de 2019.

* ALVES, T.R. What is OpenPLC?. OpenPLC Project, 2017. Disponível em: http://www.openplcproject.com/. Acesso em novembro de 2017.

* ALVES, T.R.; BURATTO, M.; SOUZA, F.M.; RODRIGUES, T, V. OpenPLC: An Open Source Alternative to Automation. In IEEE 2014 Global Humanitarian Technology Conference (GHTC 2014), San Jose, CA, 2014, pp. 585-589.

* JOHN, K.H.; TIEGELKAMP, M. IEC 61131-3: Programming Industrial Automation Systems,” 2nd ed. Springer, 2010 pp.147-168.
  
* https://crushtymks.com/pt/industrial-automation/1102-goals-and-benefits-of-the-iec-61131-standard-plcs-8211-programmable-logic-controllers.html

* https://beremiz.org/usecases 
  
* NORMA IEC 61131-3 PARA PROGRAMAÇÃO DE CONTROLADORES PROGRAMÁVEIS: ESTUDO E APLICAÇÃO HUGO CASATI FERREIRA GUIMARÃES , VITÓRIA ES SETEMBRO/2005 UNIVERSIDADE FEDERAL DO ESPÍRITO SANTO CENTRO TECNOLÓGICO DEPARTAMENTO DE ENGENHARIA ELÉTRICA PROJETO DE GRADUAÇÃO 
  
 * E. V. Easwaran et al., "Programmable Logic Controller: Open Source Hardware and Software for Massive Training," IECON 2018 - 44th Annual Conference of the IEEE Industrial Electronics Society, 2018, pp. 2422-2427, doi: 10.1109/IECON.2018.8592772.
  
* https://inductiveautomation.com/scada-software/?gclid=Cj0KCQjwxIOXBhCrARIsAL1QFCbenQ37JpOXbF0VmaAw2WL0hdSYVrTHSdwi_yRkBgwWPkQzpkb-aH0aAhIREALw_wcB
  
