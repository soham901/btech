/*
 * Write a program to find position of the smallest number & the largest number from given n numbers.
 */

import java.util.Scanner;

public class A16 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int n = sc.nextInt();
        int[] arr = new int[n];

        for (int a = 0; a < n; a++) {
            arr[a] = sc.nextInt();
        }

        int max = arr[0], min = arr[0], i1 = 0, i2 = 0;

        for (int a = 0; a < n; a++) {
            if (max < arr[a]) {
                max = arr[a];
                i1 = a;
            }
            if (min > arr[a]) {
                min = arr[a];
                i2 = a;
            }
        }

        System.out.println(max + " " + i1);
        System.out.println(min + " " + i2);

        sc.close();
    }
}