#include <bits/stdc++.h>

using namespace std;

#define foriu(x,y) for(int i=x; i<y; i++)
#define forid(x,y) for(int i=x; i>y; i--)
#define forju(x,y) for(int j=x; j<y; j++)
#define forjd(x,y) for(int j=x; j>y; j--)
// sort(&arr[0], &arr[n], greater<>());

typedef long long ll;
typedef pair<ll, ll> pll;


int main()
{
    int n;
    int tax = 0;


    cin >> n;


    int* arr = new int[n];

    for(int i=0; i<n; i++){
        cin >> arr[i];
    }

    sort(&arr[0], &arr[n], greater<>());

     for(int i=0; i<n; i++){
        if(arr[i] == 0) continue;
        if (arr[i] < 4){
             for(int j = n-1; j>i; j--){
                if (arr[i] + arr[j] <= 4){
                    arr[i] += arr[j];
                    n--;
                }
                else break;
            }
        }

        tax ++;
    }

    cout << tax;
}
