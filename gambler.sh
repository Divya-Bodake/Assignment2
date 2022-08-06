Public class GamblerStars {

    Public static void main(String[] args) {
        int stake = Integer.parseInt(args[0]); 
        int goal = Integer.parseInt(args[1]); 
        int trials = Integer.parseInt(args[2]);

        int bets = 0;
        int wins = 0;

        for (int t = 0; t < trials; t++) {
            int cash = stake;
            int star = 0;

            while (cash > 0 && cash < goal) {
                bets++;

                if (Math.random() < 0.5) {
                    cash++; // win $1

                    while (star <= cash) {
                        star++;
                        System.out.print("*");
                    }
} else {
                    cash--; $1

                    while (star <= cash) {
                        star--;
                        System.out.print("*");
                    }
                }
                System.out.println("");
            }
            if (cash == goal)
                wins++;
        }
        System.out.println(wins);
    }
}



