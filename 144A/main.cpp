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

    int up = 0;
    int down = 0;
    int t = 0;

    int *arr = new int[n];
    for(int i=0; i<n; i++){
        int t;
        cin >> arr[i];

    }

    int max_num = arr[n-1];
    int max_index = n-1;
    int min_num = arr[0];
    int min_index = 0;

    for(int i=0; i<n; i++){
        if (arr[i] <= min_num && i >= min_index){
            min_num = arr[i];
            min_index = i;
            }
        if (arr[n-i-1] >= max_num && n-i-1 <= max_index){
            max_num = arr[n-i-1];
            max_index = n-i-1;
            }
    }
    if (min_index < max_index)
        cout << (n - min_index - 2) + (max_index);
    else
        cout << (n - min_index - 1) + (max_index);
}
