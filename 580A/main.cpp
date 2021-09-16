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
    int maxi = 0;
    cin >> n;

    int* arr = new int[n];

    foriu(0, n) cin >> arr[i];

    int temp = 1;

    foriu(0, n-1){
        if ( arr[i+1] >= arr[i]) temp++;
        else{
            if(maxi < temp) maxi = temp;
            temp = 1;

        }

    }
    if(maxi < temp) maxi = temp;


    cout << maxi;
}
