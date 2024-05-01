SERIE 2: 
Implementar una máquina de estados finitos (FSM).
La maquina es el controlador de semaforos previamente analizado agregando una señal 
auxiliar llamada E (Emergencia) la cual sin importar el estado en que se encuentre, retorna 
al estado S0.

<img width="162" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/d7c3c22e-a20e-4dc5-aaeb-663ee05b725a">

Se debe de agregar una característica única al diagrama de estados, la cual es la siguiente:
- Se agrega un nuevo estado que es S4.
- Se tiene una nueva entrada la cual se llama W, cuando se acciona sin importar que 
en que estado se encuentre se ira a al estado 4.
- Cuando este en el estado 4, se activará la luz amarilla en la avenida y la luz amarilla 
en el boulevard.

<img width="175" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/8c61e199-3703-4555-b929-c9c59c843c77">

Esta es la maquina de estados finitos implementada en Logisim.

<img width="442" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/87a84767-b881-4c3f-8611-2d674c8a3937">

Esta es la maquina de estados finitos implementado en SystemVerilog.

<img width="454" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/975c3f58-fe5f-4a8d-8f01-74aec70296e5">

SERIE 3:
Detalle los 5 pasos del Development Flow standard descritos por el Doctor Chu utilizando 
el proyecto realizado en la serie 2.
1. RTL Code: en este paso se escribe el código de la FSM y de sus condiciones del reloj 
en un lenguaje HDL, en este caso es SystemVerilog. Es decir, en este paso se 
describe el comportamiento de la FSM en software.
También en este apartado se tiene las constraints de la Basys3.

<img width="465" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/0a2eab85-2838-41d3-ac45-a277b82ea99f">

<img width="552" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/dd5a54fe-de4f-4c30-b6c5-773d0a82bd9d">

2. RTL Simulation: cuando se realiza la simulación RTL se puede obtener el diagrama 
esquemático, como está programado de forma estructural se puede observar de la 
siguiente forma.
También es esta parte se realiza un archivo de simulación el cual permite describir 
el funcionamiento en diferentes estados de la FSM y su comportamiento

<img width="538" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/e9ebdd7f-5da8-45cb-a9f6-c14e2f2a8165">

<img width="563" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/a4593df3-5a44-41a0-b57e-c56c33f9d21d">

<img width="557" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/11a47bf7-2cbc-4398-931b-444531de3fcc">

3. Synthesis: en este paso el código RTL va a describir como se puede implementar la 
FSM que se diseño en el hardware físico, es decir que componentes de la Basys3 se 
van a utilizar para implementar la FSM.

<img width="557" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/843325a5-6f20-4d03-8ae6-83e0e448d367">

4. Implementation: este paso lo que se realiza es la implementación real de la FSM, 
es decir, en la síntesis indica que componentes de la Basys3 se van a utilizar y en la 
implementación lo que realiza es el enrutamiento de cada uno de los 
componentes.

<img width="561" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/cb34fdb6-570d-4110-8a59-82eeb2d4444f">

5. Static Timing Analysis: en este paso lo que se realiza es un análisis que permite 
verificar las señales que están dentro del circuito cumplan con los requisitos 
necesarios de sincronización y temporización cruciales para el funcionamiento de
la FSM.

<img width="553" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/04a9485b-09a1-4737-b1dc-17fc7710c2c6">

6. Device Programming: una vez realizado todos los pasos, se procede a a la 
programacion de la placa Basys3, es decir, que implementa todas las LUT, los 
componenetes de logica combinacional y los buses que se van a utilizar que sean 
implementados en la placa.

<img width="436" alt="image" src="https://github.com/Joshua3013/FSM_SystemVerilog/assets/161919875/b7f4ec32-89f1-4d8a-8526-c573d16a3a9f">

DOCUMENTO EN PDF Y SIMULACIÓN DE LOGISIM EN EL SIGUIENTE LINK: https://drive.google.com/drive/folders/1p5g8VHNykO0cl4fq49l-Qn8iRILCalR1?usp=sharing
VIDEO EN YOUTUBE DE LA DEMOSTRACIÓN EN EL SISGUIENTE LINK: https://youtu.be/6aysVPerclg 
