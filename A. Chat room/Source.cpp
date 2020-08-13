#include<iostream>
#include<string.h>
using namespace std;
int main() {
	
	string s;
	cin >> s;
	bool b = 0;
	int c = 0;
	string temp = "hello";
	for (int i = 0; i < s.length(); i++) {
		if (s[i] == temp[c]) {
			c++;
			
		}
		if (c == 5) {
			b = 1;
			break;
		}
	}
	
theEnd:
	if (b)cout << "YES";
	else cout << "NO";
}