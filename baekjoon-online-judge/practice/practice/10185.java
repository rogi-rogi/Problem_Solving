import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {
        // Init
        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        StringTokenizer st;
        StringBuilder sb = new StringBuilder();

        // Input
        int T = Integer.parseInt(br.readLine());
        while (T-- > 0) {
            st = new StringTokenizer(br.readLine());
            final int P = Integer.parseInt(st.nextToken());
            final int Q = Integer.parseInt(st.nextToken());

            // Solve
            sb.append(String.format("f = %.1f\n", P * (double) Q / (P + Q)));
        }

        // Output
        System.out.println(sb);

    }
}
