import java.util.Scanner;

public class A3 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        char ch = sc.next().charAt(0);
        if (ch == 'a' || ch == 'e' || ch == 'i' || ch == 'u' || ch == 'o') {
            System.out.println("is vowel");
        } else {
            System.out.println("is'nt vowel");
        }
        sc.close();
    }
}