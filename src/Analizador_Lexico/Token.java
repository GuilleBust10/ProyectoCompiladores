package Analizador_Lexico;

<<<<<<< HEAD
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import javax.swing.table.DefaultTableModel;

public class Token {
     private int col;
    private int row;
    private String lexema;
    int cont = 0;
    MenuCompilador m = new MenuCompilador();
    
    public Token(int col, int row, String lexema) {
        this.col = col;
        this.row = row;
        this.lexema = lexema;
        EscribirArchivo(lexema);
        
    }
    String ruta = "src"+File.separator+"Analizador_Lexico"+File.separator+"tokens.txt";
    public void EscribirArchivo(String cadena) {
        try {
            FileWriter fw = new FileWriter(ruta, true);
            fw.write(cadena+"\r\n");
            fw.close();
        } catch (IOException ex) {
     
        }
    }
    public int getCol() {
        return col;
    }

    public int getRow() {
        return row;
    }

    public String getLexema() {
        return lexema;
    }

    public void setCol(int col) {
        this.col = col;
    }

    public void setRow(int row) {
        this.row = row;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }
    
}
=======
public class Token {
    private final int col; // columnas y fila de cada token encontrado
    private final int row;
    private final String cadena; //cadenas de texto devuletas por el analizador léxico
    private int entero; // el valor encontrado.
    
    public Token(int col, int row, String cadena, boolean esDigito ) {
        this.col = col;
        this.row = row;
        this.cadena = cadena;
        if (esDigito){
        this.entero = Integer.parseInt(cadena);
        }
    }
    
    public Token(int col, int row, String cadena ) {
        this.col = col;
        this.row = row;
        this.cadena = cadena;
    }
    
    public int getCol() {
        return this.col;
    }
    
    public int getRow() {
        return this.row;
    }
    
    public String getCadena() {
        return this.cadena;
    }
    
    public int getEntero() {
        return this.entero;
    }
}
>>>>>>> Beta0.1
