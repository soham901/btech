import java.util.Scanner;

public class B7 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();

        System.out.println(1);
        for (int a = 2; a < n; a++)
            if (n % a == 0)
                System.out.println(a);

        System.out.println(n);

        sc.close();
    }
}