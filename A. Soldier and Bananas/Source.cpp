#include<iostream>
using namespace std;
int main() {
	int k, w;
	long int n, price = 0;
	cin >> k >> n >> w;
	for (int i = 1; i <= w; i++) {
		price += i * k;
	}
	if (price - n > 0)cout << price - n;
	else cout << 0;
}