#include <bits/stdc++.h>

using namespace std;

#define foriu(x,y) for(int i=x; i<y; i++)
#define foriu(x,y) for(int i=x; i<y; i++)
#define forjd(x,y) for(int j=x; j>y; j--)
#define forjd(x,y) for(int j=x; j>y; j--)
// sort(&arr[0], &arr[n], greater<>());

typedef long long ll;
typedef pair<ll, ll> pll;

int main()
{
    int arr[3];

    foriu(0, 3) cin >> arr[i];
    //sort(&arr[0], &arr[3], less<>());

    int maxi1 = arr[0] * arr[1] * arr[2];

    int maxi2 = (arr[0] + arr[1]) * arr[2];

    int maxi3 =  arr[0] * (arr[1] + arr[2]);

    int maxi4 = arr[0] + arr[1] + arr[2];

    cout << max(max(maxi1, maxi2), max(maxi3, maxi4));


}
