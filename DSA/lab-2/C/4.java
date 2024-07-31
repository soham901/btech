class Main {
    public static void main(String[] args) {
        for(int i=1; i <= 1000; i++) {
            if(i < 10) {
                System.out.println(i);
            }
            else {
                int temp = i, pow=0, r2=0;
                while(temp != 0) {
                    temp /= 10;
                    pow++;
                }
                temp = i;
                for(int a=1; a<=pow; a++) {
                    int d = temp % 10;
                    temp /= 10;
                    int r1 = 1;
                    for(int b=1; b<=pow; b++){
                        r1 *= d;
                    }
                    r2 += r1;
                }
                if(i == r2) {
                System.out.println(i);
                }
            }
        }
    }
}