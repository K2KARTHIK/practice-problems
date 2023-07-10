A widget manufacturer is facing unexpectedly high demand for its new product,. They would like to satisfy as many customers as possible. Given a number of widgets available and
a list of customer orders, what is the maximum number of orders the manufacturer can fulfill in full?Function DescriptionComplete the function filled Orders in the editor below.
The function must return a single integer denoting the maximum possible number of fulfilled orders. has the following parameter(s): order: an array of integers listing the orders
k: an integer denoting widgets available for shipment write a code 
#include <stdio.h>

int main() {
    int n, k;
    printf("Enter the number of orders: ");
    scanf("%d", &n);

    int orders[n];
    printf("Enter the orders: ");
    for (int i = 0; i < n; i++) {
        scanf("%d", &orders[i]);
    }

    printf("Enter the number of widgets available: ");
    scanf("%d", &k);
    for (int i = 0; i < n - 1; i++) {
        for (int j = 0; j < n - i - 1; j++) {
            if (orders[j] > orders[j + 1]) {
                int temp = orders[j];
                orders[j] = orders[j + 1];
                orders[j + 1] = temp;
            }
        }
    }

    int fulfilledOrders = 0;
    for (int i = 0; i < n; i++) {
        if (orders[i] <= k) {
            k -= orders[i];
            fulfilledOrders++;
        } else {
            break;
        }
    }

    printf("Maximum number of fulfilled orders: %d\n", fulfilledOrders);

    return 0;
}
