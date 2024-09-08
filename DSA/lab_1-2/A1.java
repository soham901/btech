import java.util.Scanner;

public class A1 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double rad = sc.nextDouble();
        double area = Math.PI * rad * rad;
        System.out.println(area);
        sc.close();
    }
}