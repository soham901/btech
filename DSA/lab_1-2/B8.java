import java.util.Scanner;

public class B8 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();

        for (int a = 2; a < n; a++) {
            if (n % a == 0) {
                System.out.println("is'nt prime");
                sc.close();
                return;
            }
        }

        System.out.println("is prime");

        sc.close();
    }
}