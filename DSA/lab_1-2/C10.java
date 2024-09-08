/*
 * WAP to convert number of days into year, week & days
 * [e.g. 375 days mean 1 year, 1 week and 3 days].
 */

import java.util.Scanner;

public class C10 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int days = sc.nextInt();
        int year = days / 365;
        days %= 365;
        int week = days / 7;
        days %= 7;
        System.out.printf("%d year, %d week, %d days", year, week, days);
        sc.close();
    }
}
