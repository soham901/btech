// WAP to convert temp from farenhit to celc
// formula: c = f - 32 * 5 / 9

import java.util.Scanner;

class P4 {
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        double f = sc.nextDouble();
        double c = (f - 32) * 5 / 9;
        System.out.println(c);
        System.out.println((9/5) * c + 32);
    }
}