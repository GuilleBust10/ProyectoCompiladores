package Analizador_Lexico;

import java_cup.runtime.Symbol;

import java.util.ArrayList;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.BufferedReader;
import java.io.FileNotFoundException;

%%

%class Analizador_Lex

%line
%char
%column
%public
%cup
<<<<<<< HEAD

%{
/*-----------------------------LISTAS PARA LOS TOKENS----------------------*/
      ArrayList<String> numL = new ArrayList<>();
      ArrayList<String> operaL = new ArrayList<>();
      ArrayList<String> identL = new ArrayList<>();
      ArrayList<String> reserL = new ArrayList<>();
      ArrayList<String> signL = new ArrayList<>();
/*-------------------------------------------------------------------------*/
%}

=======
 
>>>>>>> Beta0.1
/*-------------------------------NUMEROS----------------------------------*/
Numero1 = 0 | [1-9][0-9]*
/*-------------------------------------------------------------------------*/
FinDeLinea = \r|\n|\r\n
Espacio = {FinDeLinea} | [ \t\f]

/*--------------------------------Identificadores--------------------------*/
Identificador = [a-zA-Z]([0-9]|[a-zA-Z]|\_)*
/*-------------------------------------------------------------------------*/

/*-------------------------------Indentacion--------------------------------*/
TAB = [\t]
/*--------------------------------------------------------------------------*/

/*----------------------------Palabras Reservadas--------------------------*/
<<<<<<< HEAD
INCLUIR  = "incluir"
CLASE    = "clase"
FUNCION  = "funcion"
SI       = "si"
SINO     = "sino"
ENTONCES = "entonces"
RETORNAR = "retornar"
ESCRIBIR = "escribir"
ABRIR    = "abrir"
=======
CLASE    = "clase"
SI       = "si"
SINO     = "sino"
ENTONCES = "entonces"
DEVOLVER = "devolver"
ESCRIBIR = "escribir"
LEER = "leer"
>>>>>>> Beta0.1
DESDE    = "desde"
MIENTRAS = "mientras"
HACER    = "hacer"
INCREMENTAR = "incrementar"
ITERAR   = "iterar"
<<<<<<< HEAD
PARACADA = "paracada"
PRINCIPAL = "principal"
NUMERO   = "numero"
=======
PRINCIPAL = "principal"
NUMER   = "numero"
>>>>>>> Beta0.1
CADENA   = "cadena"
BOOLEANO = "booleano"
NULO     = "nulo"
VERDADERO = "verdadero"
FALSO     = "falso"
<<<<<<< HEAD
TARCHIVO = "archivo"
=======
ELIMINAR  = "eliminar"
EXTIENDE  = "extiende"
ESTATICO  = "estatico"
FUNCION   = "funcion"
PROPIEDADES = "propiedades"
METODOS = "metodos"
ENTERO = "entero"
CONSTRUCTOR = "constructor"

>>>>>>> Beta0.1
/*-------------------------------------------------------------------------*/

/*---------------------------------- Operadores----------------------------*/
Suma = \+
Resta = \-
<<<<<<< HEAD
Mult = \*
Div = \/
=======
Mult = "*"
Div = "/"
>>>>>>> Beta0.1
Potencia = \^
Menor = \<
Mayor = \>
Igual = \=
MayorIgual = {Mayor}{Igual}
MenorIgual = {Menor}{Igual}
Disyuncion = OR
Conjuncion = AND
Modulo     = \%
/*------------------------------------------------------------------------------------------------------------*/

<<<<<<< HEAD
=======
/*-------------------------------Comentarios-------------------------------*/
Comentario1 = {Div}{2}([a-zA-Z0-9]*{Caracteres}*(\s)*[a-zA-Z0-9]*{Caracteres}*)
Comentario2 = {Div}{Mult}([a-zA-Z0-9]*{Caracteres}*(\s)*[a-zA-Z0-9]*{Caracteres}*){Div}{Mult}

Comentarios = {Comentario2}|{Comentario1}
/*---------------------------------------------------------------------------*/

>>>>>>> Beta0.1
/*-------------------------------SIGNOS----------------------------------*/
CorcheteIni = \[
CorcheteFin = \]
DosPuntos =   \:
PuntoComa =   \;
Coma      =   \,
Punto     =   \.
ParentesisIni= \(
ParentesisFin= \)
LlaveIni     = \{
LlaveFin     = \}
Comillas     = \"
igual        = \=
/*-------------------------------------------------------------------------*/

/*--------------------------------Errores--------------------------*/
Error = [0-9][a-zA-Z][a-zA-Z]*
/*-------------------------------------------------------------------------*/

<<<<<<< HEAD
/*--------------------------------Libreria--------------------------*/
slibreria = [a-zA-Z]*{Punto}[a-zA-Z]*
/*-------------------------------------------------------------------------*/

=======
>>>>>>> Beta0.1
/*---------------------------- Espacios--------------------------------------*/
LineTerminator = \r|\n|\r\n
WhiteSpace = {LineTerminator} | [ \t\f] | [ ]
/*---------------------------------------------------------------------------*/

<<<<<<< HEAD
/*-------------------------------Comentarios-------------------------------*/

Comentarios = (\/\*(\s*|.*?)*\*\/)|(\/\/.*)
/*---------------------------------------------------------------------------*/

/*-------------------------------TEXTO---------------------------------------*/
Texto = {Comillas}(\/\*(\s*|.*?)*\*\/)|(\/\/.*){Comillas}  
=======
/*-------------------------------TEXTO---------------------------------------*/
Texto1 = {[a-zA-Z0-9][a-zA-Z0-9]*[WhiteSpace]}*

Texto = {Comillas}{Texto1}{Comillas} | {Comillas}{Comillas}
>>>>>>> Beta0.1
/*---------------------------------------------------------------------------*/

/*-------------------------------Caracteres----------------------------------*/
C1 =\#
C2 =\$
C3 =\%
C4 =\&
C5 =\'
C6 =\¿
C7 =\¡

Caracteres = {C1}|{C2}|{C3}|{C4}|{C5}|{C6}|{C7}
/*---------------------------------------------------------------------------*/



%%
<<<<<<< HEAD

{Texto}                 {
                          System.out.println("texto: ");
                          return new Symbol(sym.TXT,new Token(yycolumn,yyline,yytext()));
                        }
=======
{Comentarios}          {System.out.println("Comentario: "+yytext());
                        return new Symbol(sym.COMENT,new Token(yycolumn,yyline,yytext()));
                        } 
{Caracteres}          {System.out.println("Caracter: "+yytext());
                        return new Symbol(sym.CHAR,new Token(yycolumn,yyline,yytext()));
                        } 
{ENTERO}          {System.out.println("RESERVADA: "+yytext());
                        return new Symbol(sym.ENT,new Token(yycolumn,yyline,yytext()));
                        } 
{CONSTRUCTOR}          {System.out.println("RESERVADA: "+yytext());
                        return new Symbol(sym.CONST,new Token(yycolumn,yyline,yytext()));
                        } 

{Texto}                 {
                          System.out.println("TABULADOR: ");
                          return new Symbol(sym.TAB,new Token(yycolumn,yyline,yytext()));
                        }


>>>>>>> Beta0.1
{TAB}                   {  
                            System.out.println("TABULADOR: ");
                            return new Symbol(sym.TAB,new Token(yycolumn,yyline,yytext()));
                        }

<<<<<<< HEAD
{Comentarios}          {System.out.println("Comentario: "+yytext());} 

/*{libreria}            {System.out.println("LIBRERIA: "+yytext()); VerificarArchivo(yytext());}   */

=======
>>>>>>> Beta0.1
/*--------------------------------------- PALABRAS RESERVADAS -------------------------------------------------*/

{Numero1}                {
                            System.out.println("NUMERO: "+yytext());
                            return new Symbol(sym.NUMERO,new Token(yycolumn,yyline,yytext()));
                        }

<<<<<<< HEAD
{INCLUIR}               {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.INCLUIR,new Token(yycolumn,yyline,yytext()));
                        }
=======
>>>>>>> Beta0.1
{CLASE}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.CLASE,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD
=======
{PROPIEDADES}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.PROPIED,new Token(yycolumn,yyline,yytext()));
                        }
{METODOS}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.METD,new Token(yycolumn,yyline,yytext()));
                        }
>>>>>>> Beta0.1
{FUNCION}               {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.FUNCION,new Token(yycolumn,yyline,yytext()));
                        }
{SI}                    {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.SI,new Token(yycolumn,yyline,yytext()));
                        }
{SINO}                  {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.SINO,new Token(yycolumn,yyline,yytext()));
                        }
{ENTONCES}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ENTONCES,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD
{RETORNAR}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.RETORNAR,new Token(yycolumn,yyline,yytext()));
=======
{DEVOLVER}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.DEVOLVER,new Token(yycolumn,yyline,yytext()));
>>>>>>> Beta0.1
                        }
{ESCRIBIR}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ESCRIBIR,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD
{ABRIR}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ABRIR,new Token(yycolumn,yyline,yytext()));
=======
{LEER}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.LEER,new Token(yycolumn,yyline,yytext()));
>>>>>>> Beta0.1
                        }
{DESDE}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.DESDE,new Token(yycolumn,yyline,yytext()));
                        }
{MIENTRAS}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.MIENTRAS,new Token(yycolumn,yyline,yytext()));
                        }
{HACER}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.HACER,new Token(yycolumn,yyline,yytext()));
                        }
{INCREMENTAR}           {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.INCREMENTAR,new Token(yycolumn,yyline,yytext()));
                        }
{ITERAR}                {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ITERAR,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD
{PARACADA}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.PARACADA,new Token(yycolumn,yyline,yytext()));
                        }
=======
>>>>>>> Beta0.1
{PRINCIPAL}             {
                            System.out.println("RESERVADA: "+yytext()); 
                            return new Symbol(sym.PRINCIPAL,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD
{NUMERO}                {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.TNUMERO,new Token(yycolumn,yyline,yytext()));
                        }
=======
>>>>>>> Beta0.1
{CADENA}                {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.CADENA,new Token(yycolumn,yyline,yytext()));
                        }
{BOOLEANO}              {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.BOOLEANO,new Token(yycolumn,yyline,yytext()));
                        }
{NULO}                  {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.NULO,new Token(yycolumn,yyline,yytext()));
                        }
{VERDADERO}             {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.VERDADERO,new Token(yycolumn,yyline,yytext()));
                        }
{FALSO}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.FALSO,new Token(yycolumn,yyline,yytext()));
                        }
<<<<<<< HEAD

=======
{ELIMINAR}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ELIMINAR,new Token(yycolumn,yyline,yytext()));
                        }
{EXTIENDE}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.EXTIENDE,new Token(yycolumn,yyline,yytext()));
                        }
{ESTATICO}                 {
                            System.out.println("RESERVADA: "+yytext());
                            return new Symbol(sym.ESTATICO,new Token(yycolumn,yyline,yytext()));
                        }
>>>>>>> Beta0.1
{Disyuncion}          {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.DISY,new Token(yycolumn,yyline,yytext()));
                      }
{Conjuncion}          {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.CONJ,new Token(yycolumn,yyline,yytext()));
                      }
<<<<<<< HEAD
  
/*------------------------------------------------------------------------------------------------------------*/
{Identificador}        {
                           System.out.println("Identificador: "+identL.add(yytext()));
=======
/*------------------------------------------------------------------------------------------------------------*/
{Identificador}        {
                           System.out.println("Identificador: "+yytext());
>>>>>>> Beta0.1
                           return new Symbol(sym.ID,new Token(yycolumn,yyline,yytext()));
                       }

/*----------------------------------------------OPERADORES ---------------------------------------------------*/

{Suma}                {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.SUMA,new Token(yycolumn,yyline,yytext()));
                      }
{Resta}               {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.RESTA,new Token(yycolumn,yyline,yytext()));
                      }
{Mult}                {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.MULT,new Token(yycolumn,yyline,yytext()));
                      }
{Div}                 {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.DIV,new Token(yycolumn,yyline,yytext()));
                      }
{Potencia}            {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.POTENCIA,new Token(yycolumn,yyline,yytext()));
                      }
{Menor}               {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.MENOR,new Token(yycolumn,yyline,yytext()));
                      }
{Mayor}               {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.MAYOR,new Token(yycolumn,yyline,yytext()));
                      }
{MayorIgual}          {System.out.println("Operador: "+yytext());}
{MenorIgual}          {System.out.println("Operador: "+yytext());}

{Modulo}              {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.MODULO,new Token(yycolumn,yyline,yytext()));
                      }

{igual}               {
                            System.out.println("Operador: "+yytext());
                            return new Symbol(sym.IGUAL,new Token(yycolumn,yyline,yytext()));
                      }

/*------------------------------------------------------------------------------------------------------------*/

/*----------------------------------------------SIGNOS--------------------------------------------------------*/

{CorcheteIni}         {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.CORCHETEINI,new Token(yycolumn,yyline,yytext()));
                      }
{CorcheteFin}         {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.CORCHETEFIN,new Token(yycolumn,yyline,yytext()));
                      }
{DosPuntos}           {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.DOSP,new Token(yycolumn,yyline,yytext()));
                      }
{PuntoComa}           {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.PCOMA,new Token(yycolumn,yyline,yytext()));
                      }
{Coma}                {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.COMA,new Token(yycolumn,yyline,yytext()));
                      }
{Punto}               {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.PUNTO,new Token(yycolumn,yyline,yytext()));
                      }
{ParentesisIni}       {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.PARINI,new Token(yycolumn,yyline,yytext()));
                      }
{ParentesisFin}       {
                            System.out.println("SIGNO: "+yytext());
                            return new Symbol(sym.PARFIN,new Token(yycolumn,yyline,yytext()));
                      }
{LlaveIni}            {System.out.println("SIGNO: "+yytext());}
{LlaveFin}            {System.out.println("SIGNO: "+yytext());}

{Espacio}             { }
/*------------------------------------------------------------------------------------------------------------*/

. {System.out.println("Error lexico:" +yytext());}