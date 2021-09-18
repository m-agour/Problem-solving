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
    string s;
    cin >> s;
    string k = "";


    for (int i=0; i<s.length(); i++){
        if (s[i] == 'W' && s[i+1] == 'U' && s[i+2] == 'B'){
            i += 2;
            if (k.length() > 0 && k[k.length()-1] != ' ') k += " ";
        }
        else k += s[i];
    }

    if (k[k.length()-1] == ' ')    k.erase(k.begin() + k.length()-1);
    cout << k;

}
