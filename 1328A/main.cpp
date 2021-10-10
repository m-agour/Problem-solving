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
    int n;
    cin >> n;
    while(n--){
        int a, b;
        cin >> a >> b;
        int t = ceil(float(a) / b);
        cout << t * b - a << endl;

    }
}
