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
    int n, m;
    cin >>m >> n;

    int* arr = new int[n];

    foriu(0, n) cin >> arr[i];

    sort(&arr[0], &arr[n], less<>());
    int min = arr[n-1] - arr[0] ;

    foriu(0, n-m + 1) if(arr[i+m-1] - arr[i] < min) min = arr[i+m-1] - arr[i];
    cout << min;

}
