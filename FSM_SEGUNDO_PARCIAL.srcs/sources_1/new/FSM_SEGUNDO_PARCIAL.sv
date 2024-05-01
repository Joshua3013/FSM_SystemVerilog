`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.04.2024 21:03:41
// Design Name: 
// Module Name: FSM_SEGUNDO_PARCIAL
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FSM_SEGUNDO_PARCIAL(
        input logic clk,                //señal de reloj
        input logic reset,              //señal de reset
        input logic TA,                 //sensor de la ave.
        input logic TB,                 //snesor del blvd.
        input logic E,                  //entrada de emergencia
        input logic W,                  //entrada de warning
        output logic [2:0] salida,      //variable de vector de salidas
        output logic verdeA,            //luz verde de la ave.
        output logic amarilloA,         //luz amarillo de la ave.
        output logic rojoA,             //luz roja de la ave.
        output logic verdeB,            //luz verde del blvd.
        output logic amarilloB,         //luz amarillo del blvd.
        output logic rojoB              //luz rojo del blvd.
    );
    
    typedef enum logic [2:0] {          //typedef es un alias, enum define el conjunto de constantes.
        S0 = 3'b000,                    //SO se define como un estado de tres bits como 000
        S1 = 3'b001,                    //S1 se define como un estado de tres bits como 001
        S2 = 3'b010,                    //S2 se define como un estado de tres bits como 010
        S3 = 3'b011,                    //S3 se define como un estado de tres bits como 011
        S4 = 3'b100                     //S4 se define como un estado de tres bits como 100
        } state;                        //esta variable puede tomar los diferentes valores de los estados definidos en el typedef
     
     state current_state, next_state;               //las variables current_state y next_state pueden obtener los valores definidos en la variable state.
     
     always_ff @(posedge clk or posedge reset)      //se define el flip-flop y que sera accionado con un flanco de subida del reloj, y tambien sera accionado con un flanco de subida para el reset
     begin
        if(reset)
            current_state <= S0;                    //si reset esta en un 1 lógico el estado sera S0
        else
            current_state <= next_state;            //si reset es un 0 lógico el estado sera el siguiente estado en el que se encontraba
      end
      
      always_comb                                   //en esta función se declara la lógica de la maquina de estados finitos
      begin
        case(current_state)                                             //se realizan diferentes casos para el current_state
            S0: begin                                                   //se describe el caso 1
                next_state = (TA) ? S0 : S1;                            //evalua la condicion inicial que es TA donde si es positiva su estado siguiente sera S0, si TA es 0 su estado siguiente sera S1
                if(E) next_state = S0;                                  //si E es 1 pasa al estado 0
                if(W) next_state = S4;                                  //si W es 1 pasa al estado 4
            end
            
            S1: begin                                                   //se describe el caso 2
                next_state = S2;                                        //si se encuentra en el estado 1 su siguiente estado sera el estado 2
                if(E) next_state = S0;                                  //si E es 1 pasa al estado 0
                if(W) next_state = S4;                                  //si W es 1 pasa al estado 4      
            end
            
            S2: begin                                                   //se descrbe el caso 3
                next_state = (TB) ? S2 : S3;                            //evalua la condicion inicial que es TB donde si es positiva su estado siguiente sera S2, si TB es 0 si estado siguiente sera S3
                if(E) next_state = S0;                                  //si E es 1 pasa al estado 0
                if(W) next_state = S4;                                  //si W es 1 pasa al estado 4      
            end
            
            S3: begin                                                   //se describe el caso 4                           
                next_state = S0;                                        //si se encuentra en el estado 3 su siguiente estado sera el estado 0
                if(E) next_state = S0;                                  //si E es 1 pasa al estado 0
                if(W) next_state = S4;                                  //si W es 1 pasa al estado 4      
            end
           
            S4: begin
                next_state = (W) ? S4 : ((TA || TB) ? S0 : S4);         //si W esta en 1 el siguiente estado sera S4, si W es 0 sus condiciones iniciales seran TA y TB para sus siguientes estados.
                if(E) next_state = S0;                                  //si E es 1 pasa al estado 0
                if(W) next_state = S4;                                  //si W es 1 pasa al estado 4      
            end 
            
            default: next_state = S0;                                   //estado por defecto
         endcase
       end
       
       assign salida = current_state;                                       //la salida del estado es el estado actual
       
       assign verdeA = (current_state == S0);                               //la luz verde de la avenida se va a encender cuando este en el estado S0
       assign amarilloA = (current_state == S1) || (current_state == S4);   //la luz amarilla de la avenida se va a encender cuando este en el estado S1 y S4
       assign rojoA = (current_state == S3) || (current_state == S2);       //la luz roja de la avenida se va a encender cuando este en el estado S3 y S2
       assign verdeB = (current_state == S2);                               //la luz verde del blvd se va a encende cuando este en el estado S2
       assign amarilloB = (current_state == S3) || (current_state == S4);   //la luz amarillo del blvd. se va a encender cuando este en el esatdo S3 y S4
       assign rojoB = (current_state == S1) || (current_state == S0);       //la luz roja del blvd. se va a encender cuando este en el estado S1 y S0
      
endmodule
