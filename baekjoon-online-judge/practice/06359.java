import java.io.*;

public class Main {
    public static void main(String[] args) throws IOException {
        // Init
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringBuilder sb = new StringBuilder();

        // Input
        int T = Integer.parseInt(br.readLine());
        while (T-- > 0) {
            // Solve
            sb.append((int)Math.sqrt(Integer.parseInt(br.readLine()))).append('\n');
        }

        // Output
        System.out.println(sb);
    }
}
