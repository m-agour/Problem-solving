#pragma GCC optimize ("O3")
#pragma GCC target ("sse4")

#include <bits/stdc++.h>

using namespace std;

typedef long long ll;
typedef long double ld;
typedef unsigned int ui;
typedef complex<ld> cd;

typedef pair<int, int> pi;
typedef pair<ll, ll> pl;
typedef pair<ld, ld> pd;

typedef vector<int> vi;
typedef vector<ld> vd;
typedef vector<ll> vl;
typedef vector<pi> vpi;
typedef vector<pl> vpl;
typedef vector<cd> vcd;

#define FOR(i, a, b) for (int i=a; i<(b); i++)
#define F0R(i, a) for (int i=0; i<(a); i++)
#define FORd(i,a,b) for (int i = (b)-1; i >= a; i--)
#define F0Rd(i,a) for (int i = (a)-1; i >= 0; i--)
#define trav(a,x) for (auto& a : x)

#define sz(x) (int)(x).size()
#define mp make_pair
#define pb push_back
#define f first
#define s second
#define lb lower_bound
#define ub upper_bound
#define all(x) x.begin(), x.end()
#define ins insert

template<class T> bool ckmin(T & a, const T & b) { return b < a ? a = b, 1 : 0; }
template<class T> bool ckmax(T& a, const T& b) { return a < b ? a = b, 1 : 0; }


const int MOD = 1000000007;
const char nl = '\n';
const int MX = 100001; //check the limits, dummy

int main() {
	ios_base::sync_with_stdio(0); cin.tie(0);

	int n;
	string temp;
	bool b=0;
	cin >> n;
	FOR(j, 1, n+1)
		if (n % j == 0) {
			temp = to_string(j);
			
			FOR(i, 0, temp.length()) {
				if (!(temp[i] == '7' || temp[i] == '4')) {
					b = 0;
					break;
				}
				b = 1;
			}
			if (b == 1)break;
		}
	
	if(b)cout << "YES";
	else cout << "NO";
	return 0;
}
// read the question correctly (ll vs int)
// template by bqi343