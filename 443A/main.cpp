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
    set<char> s;
    string st;
    getline(cin, st);

    for(int i=0; i<st.length(); i++){
        char t = st[i];
        if(t >= 'a' && t <= 'z') s.insert(t);
    }
    cout << s.size();
}
