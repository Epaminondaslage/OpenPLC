# OpenPLC
OpenPLC, o primeiro CLP de código aberto padronizado e totalmente funcional
O OpenPLC, projeto criado por Thiago Rodrigues Alves (estudante de doutorado na Universidade do Alabama), surgiu através do objetivo de encontrar vulnerabilidade em PLCs (Programmable Logic Controller ou Controlador Lógico Programável - CLP). Entretanto, dificilmente algum fabricante de CLP disponibilizaria seu código fonte para que o estudante pudesse realizar uma análise mais profunda, a fim de validar seus estudos. Devido a isto, ele resolveu criar o seu próprio CLP de hardware e software livres, que pode ser programado nas 5 principais linguagens definidas conforme a norma IEC 61131-3, que estabelece a arquitetura básica de software e as linguagens de programação para CLPs. Dentre as linguagens suportadas pelo OpenPLC, estão:

* LD (Ladder Diagram ou Diagrama Ladder), 
* FBD (Function Block Diagram ou Diagramas de Blocos Funcionais), 
* ST (Structured Text ou Texto Estruturado),
* IL (Instruction List ou Lista de Instruções) e 
* SFC (Sequential Function Chart ou Sequenciamento Gráfico de Funções).

O projeto do OpenPLC possui um ambiente de desenvolvimento de programas, é compatível com praticamente qualquer software SCADA existente, utiliza o protocolo Modbus/TCP para comunicação e inclui um editor de Interface Homem Máquina (IHM) de código aberto, denominado SCADA BR. Outro ponto interessante a se destacar condiz a compatibilidade do OpenPLC com o PLCopen Editor, sendo esse um software que permite escrever programas para CLP de acordo com a IEC 61131-3, estando em conformidade com o PLCopen XML. A figura abaixo ilustra a linguagem Ladder sendo aplicada sobre o PLCopen Editor. 


<img src="https://github.com/Epaminondaslage/OpenPLC/Figura_1.png" height="600" width="600">



