#include<iostream>
using namespace std;
int main() {

	int n;
	int in[3];
	cin >> n;
	int x = 0, y = 0, z = 0;
	while (n--) {
		cin >> in[1] >> in[2] >> in[3];
		x += in[1];
		y += in[2];
		z += in[3];
	}
	if (x == 0 && y == 0 && z == 0)cout << "YES";
	else cout << "NO";
}