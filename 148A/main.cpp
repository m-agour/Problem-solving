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
    int t[5];
    for(int i=0; i<5; i++) cin >> t[i];

    set<int> s;



    for(int i=0; i<4; i++){
        for(int j=0; j <= t[4]; j+=t[i]){
            s.insert(j);
        }
    }

    cout << s.size() - 1;

}
