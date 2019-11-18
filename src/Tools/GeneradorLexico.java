package Tools;

<<<<<<< HEAD
import java.io.File;

public class GeneradorLexico {

    public static void main(String[] args) {
        System.out.println(System.getProperty("user.dir"));
       jflex.Main.generate(new File("src"+File.separator+"Analizador_Lexico"+File.separator+"analizador.jflex"));
=======
public class GeneradorLexico {

    public static void main(String[] args) {
        String params[] = new String[3];
        
        params[0] = "-d";
        params[1] = "src/Analizador_Lexico";
        params[2] = "src/Analizador_Lexico/analizador.jflex";
        jflex.Main.main(params);
>>>>>>> Beta0.1
    }
    
}
