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

    int even_index = -1;
    int odd_index = -1;
    int odd_ind = 0;
    int even_ind = 0;
    int* arr = new int[n];
    for(int i=0; i<n; i++) cin >> arr[i];
    for(int i=0; i<n; i++) {
        if(arr[i]%2==0){
            even_ind ++;
            even_index = i;
            }
        else{
            odd_ind ++;
            odd_index = i;
        }
        if (odd_ind > 1 && even_index >=0){cout << even_index + 1; return 0;}
        if (even_ind > 1 && odd_index >=0){cout << odd_index + 1; return 0;}


    }


}
