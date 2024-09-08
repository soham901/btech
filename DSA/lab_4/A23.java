/*
 * Write a program to insert a number in an array that is already sorted in an ascending order
 */

import java.util.Scanner;

public class A23 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int i = 0; i < n; i++) {
            arr[i] = sc.nextInt();
        }

        int num = sc.nextInt();
        int i = 0;

        while (arr[i] < num) {
            i++;
        }

        for (int j = n - 1; j >= i; j--) {
            arr[j + 1] = arr[j];
        }
        arr[i] = num;

        // print arr
        for (int a : arr) {
            System.out.print(a + " ");
        }

        sc.close();
    }
}
