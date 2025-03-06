import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.CharStreams;
import org.antlr.v4.runtime.CommonTokenStream;
import org.antlr.v4.runtime.Token;
import parser.generated.AlphaLexer;
import parser.generated.AlphaParser;

import java.util.List;

public class Main {

    public static void main(String[] args) {


        AlphaLexer s;
        AlphaParser p;
        CharStream file;
        CommonTokenStream tokens;
        System.out.println("Working Directory: " + System.getProperty("user.dir"));

        try{
            file = CharStreams.fromFileName("test.txt");
            s = new AlphaLexer(file);
            tokens = new CommonTokenStream(s);
            p = new AlphaParser(tokens);


            p.program();
            System.out.println("Compilation complete.");

            List<Token> lista = (List<Token>) s.getAllTokens();

            for (Token t : lista)

                System.out.println(s.getVocabulary().getSymbolicName(t.getType() )+ ":" + t.getText()+ "\n");



        }catch (Exception e){

        }
    }
}