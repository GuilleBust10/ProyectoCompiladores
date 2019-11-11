package Tools;

import java.io.File;

public class GeneradorLexico {

    public static void main(String[] args) {
        System.out.println(System.getProperty("user.dir"));
       jflex.Main.generate(new File("src"+File.separator+"Analizador_Lexico"+File.separator+"analizador.jflex"));
    }
    
}
