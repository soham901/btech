import java.util.Scanner;

public class C2 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        String[] arr = new String[n];

        for (int a = 0; a < n; a++)
            arr[a] = sc.next();

        System.out.println();

        for (String a : arr) {
            System.out.print(a + " ");
        }

        sc.close();
    }
}