package Analizador_Lexico;

import java.io.FileReader;

public class Principal {

    public static void main(String[] args) {
        try {
           
            Analizador_Lex lex = new Analizador_Lex(new FileReader("src/Analizador_Lexico/datos.txt"));
            Analizador_Cup parser = new Analizador_Cup(lex);
            parser.parse();
        } 
        catch (java.lang.Exception el)
        {
            System.out.println("error encontrado: "+el.getMessage()); 
        }
    }
    
}
