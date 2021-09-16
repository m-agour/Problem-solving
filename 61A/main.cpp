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
    string a, b;
    cin >> a >> b;
    for(int i = 0; i< a.length(); i++)
        if (a[i] == b[i])  printf("0");
        else printf("1");
    }

