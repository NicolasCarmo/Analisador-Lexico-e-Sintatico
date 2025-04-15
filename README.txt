# PROJETO: Analisador Léxico e Sintático com JFlex + CUP

### Para rodar no VS Code:

1. Gere o Lexer:
   java -jar lib/jflex-full-1.9.1.jar src/analisador/Lexer.flex

2. Gere o Parser:
   java -jar lib/java-cup-11.jar -parser Parser -symbols sym -destdir src/analisador src/analisador/Parser.cup

3. Compile:
   javac -cp lib/java-cup-11.jar src/analisador/*.java

4. Execute:
   java -cp lib/java-cup-11.jar;src analisador.Main
