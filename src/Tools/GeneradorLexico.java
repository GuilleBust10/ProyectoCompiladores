package Tools;

public class GeneradorLexico {

    public static void main(String[] args) {
        String params[] = new String[3];
        
        params[0] = "-d";
        params[1] = "src/Analizador_Lexico";
        params[2] = "src/Analizador_Lexico/analizador.jflex";
        jflex.Main.main(params);
    }
    
}
