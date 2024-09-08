import java.util.Scanner;

public class B6 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt(), p = sc.nextInt(), a = 1;

        for (int i = 0; i < p; i++)
            a *= n;

        System.out.println(a);

        sc.close();
    }
}