/*
 * WAP to convert seconds into hours, minutes & seconds and print in HH:MM:SS
 * [e.g. 10000 seconds mean 2:46:40 (2 Hours, 46 Minutes, 40 Seconds)]
*/

import java.util.Scanner;

public class C9 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int s = sc.nextInt();

        int h = s / 3600;
        s %= 3600;
        int m = s / 60;
        s %= 60;

        System.out.printf("%02d:%02d:%02d", h, m, s);

        sc.close();
    }
}
