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
    printf("I hate ");
    foriu(1, n){
        if (i%2 == 0) printf("that I hate ");
        else printf("that I love ");
    }
    printf("it");
}
