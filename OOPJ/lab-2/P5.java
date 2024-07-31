// WAP to find the largest num from user input

import java.util.Scanner;

class P5 {
    public static void main(String[] args) {
        Scanner sc = new Scanner (System.in);
        int a = sc.nextInt(), b = sc.nextInt(), c = sc.nextInt();
        
        // int a = 10, b = 20, c = 35; // 35
        // int a = 10, b = 20, c = 5; // 20
        // int a = 10, b = 20, c = 15; // 20
        // int a = 20, b = 10, c = 5; // 20
        // int a = 10, b = 20, c = 5; // 20

        int max = a > b ? a > c ? a : c : b > c ? b : c;
        System.out.println(max);
    }
}