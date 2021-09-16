#include <bits/stdc++.h>

using namespace std;

#define foriu(x,y) for(int i=x; i<y; i++)
#define foriu(x,y) for(int i=x; i<y; i++)
#define forjd(x,y) for(int j=x; j>y; j--)
#define forjd(x,y) for(int j=x; j>y; j--)


typedef long long ll;
typedef pair<ll, ll> pll;


int main()
{
    double sum = 0;
    int n, inp;
    cin >> n;
    int s = n;
    while(s--) {
        cin >> inp;
        sum += inp;
    }
    cout << double(sum / n)s;
}
