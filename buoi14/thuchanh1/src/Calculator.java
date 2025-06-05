import java.security.NoSuchAlgorithmException;
import java.util.Scanner;

public class Calculator {

    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//        System.out.println("a: ");
//        int a = sc.nextInt();
//        System.out.println("b: ");
//        int b = sc.nextInt();
//
//        System.out.println("Tổng: " + sum(a,b));
//        System.out.println("Hiệu: " + sub(a,b));
//        System.out.println("Tích: " + mul(a,b));
//        try {
//            int divide = divide(a,b);
//            System.out.println("Thương: " + divide);
//        } catch (NoSuchAlgorithmException e) {
//            System.err.println("Không thể chia một số với 0");
//        }

    }

    public static int sum(int a, int b) {
        return a + b;
    }

    public static int sub(int a, int b) {
        return a - b;
    }

    public static int mul(int a, int b) {
        return a * b;
    }

    public static int divide(int a, int b) throws NoSuchAlgorithmException {
        if (b == 0) {
            throw new NoSuchAlgorithmException();
        }
        return a / b;
    }
}