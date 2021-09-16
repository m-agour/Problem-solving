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


    set<int> data;
    int x;

    int n1;
    cin >> n1;
    while(n1--) {
        cin >> x;
        data.insert(x);
        }

    int n2;
    cin >> n2;
    while(n2--) {
        cin >> x;
        data.insert(x);
        }
    if(!(n - data.size())) cout <<  "I become the guy.";
    else cout << "Oh, my keyboard!";

}
