public class QuadraticEquation {

    public static void main(String[] args) {
//        Scanner sc = new Scanner(System.in);
//
//        System.out.print("Nhập a: ");
//        double a = sc.nextDouble();
//
//        System.out.print("Nhập b: ");
//        double b = sc.nextDouble();
//
//        System.out.print("Nhập c: ");
//        double c = sc.nextDouble();
//
//        solveQuadraticEquation(a, b, c);
    }

    public static void solveQuadraticEquation(double a, double b, double c) {
        if (a == 0) {
            if (b == 0) {
                if (c == 0) {
                    System.out.println("Phương trình vô số nghiệm");
                } else {
                    System.out.println("Phương trình vô nghiệm");
                }
            } else {
                double x = -c / b;
                System.out.println("Phương trình có một nghiệm: x = " + x);
            }
            return;
        }

        double delta = b * b - 4 * a * c;

        if (delta > 0) {
            double x1 = (-b + Math.sqrt(delta)) / (2 * a);
            double x2 = (-b - Math.sqrt(delta)) / (2 * a);
            System.out.println("Phương trình có 2 nghiệm phân biệt:");
            System.out.println("x1 = " + x1);
            System.out.println("x2 = " + x2);
        } else if (delta == 0) {
            double x = -b / (2 * a);
            System.out.println("Phương trình có nghiệm kép: x = " + x);
        } else {
            System.out.println("Phương trình vô nghiệm (không có nghiệm thực)");
        }
    }
}
