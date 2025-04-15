package analisador;

import java.io.FileReader;
import java_cup.runtime.Symbol;

public class Main {
    public static void main(String[] args) throws Exception {
        String path = "codigo_teste.txt";
        Lexer lexer = new Lexer(new FileReader(path));
        Parser parser = new Parser(lexer);

        try {
            parser.parse();
            System.out.println("✅ Análise concluída com sucesso!");
        } catch (Exception e) {
            System.err.println("❌ Erro durante a análise: " + e.getMessage());
        }
    }
}
