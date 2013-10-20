#include <stdio.h>
int toBinary(long n,int *pm);
long nghich_dao(long x,long n);
long luy_thua(long x, long n,int *pm , int l);
long sinh_so_nt(long pp);
void main()
{
	long l,e,n;
	long p,g,Xa,Xb,Ka,M,Ya,Yb,R,C,Z,M2;
	int m[16];
	char ch;
do {
printf("\n NHAP THAM SO:");
printf("\n Chon dac so cua nhom: n = ");scanf("%d",&n);
p=sinh_so_nt(n);
printf("\n Dac so cua nhom: p = %d",p);
do{
printf("\n Chon phan tu sinh: g = ");scanf("%d",&g);
l = toBinary(p-1,m);
n=luy_thua(g,p,m,l);
if (n==1)
{
  printf("\n g = %d la phan tu sinh cua nhom Z%d",g,p);
  break;
}
else
{
 printf("\n g = %d khong la phan tu sinh cua nhom Z%d, chon lai!",g,p);
}
}while(n != 1);
printf("\n Khoa bi mat cua A: Xa = ");scanf("%d",&Xa);
printf("\n Khoa bi mat cua B: Xb = ");scanf("%d",&Xb);
//**********************************
printf("\n TINH KHOA CONG KHAI:");
l = toBinary(Xa,m);
Ya=luy_thua(g,p,m,l);
printf("\n Khoa cong khai cua A: Ya = %d",Ya);

l = toBinary(Xb,m);
Yb=luy_thua(g,p,m,l);
printf("\n Khoa cong khai cua B: Yb = %d",Yb);
//**************************************
printf("\n MA HOA:");
printf("\n Ban tin: M = ");scanf("%d",&M);
printf("\n A chon: Ka = ");scanf("%d",&Ka);

l = toBinary(Ka,m);
R=luy_thua(g,p,m,l);
printf("\n R = %d",R);

e = Xa + Ka;
l = toBinary(e,m);
C=luy_thua(Yb,p,m,l);
C=(C*M)% p;
printf("\n C = %d",C);

Z=R*Ya;
Z=nghich_dao(Z,p);
l = toBinary(Xb,m);
M2=luy_thua(Z,p,m,l);
M2=(M2*C)%p;
printf("\n M2= %d",M2);

//*******************************************
      printf("\n Ket thuc hay khong (C/k)?");
      //ch = getchar();  
   } while((ch=getchar()) != 'c');
}
//******************************************
int toBinary(long n,int *pm)
{
int i,j,t,t1,l1;
   i=0;
   t=n;
while(t !=0)
{
	pm[i]=t%2;
	i++;
	t=t/2;
}
 l1=i;
return l1;
}
//**************************************
long nghich_dao(long x,long n)
{
int k;
long t;
k=1;
while((k*n+1)%x != 0)
{
	k++;
}
t=(k*n+1)/x;
return t;
}
//********************************************
long luy_thua(long xx, long nn,int *pm , int ll)
{
int i;
long bb,cc;
 cc=1;
 bb=xx;
for(i=0; i<ll;i++)
{
 
 if (pm[i]==1)
 {
	 cc=(cc*bb)%nn;
 }
bb=(bb*bb)%nn;
}
return cc;
}
//****************************************************
long sinh_so_nt(long pp)
{
 long i,r,pn;
 pn=pp;
 if ((pp%2)==0)pp++;
 i=0;
 while(i != pn/2)
  {
    if ((pp%2)==0)pp++;
    for(i=2;i<pn/2;i++)
      {
       r=pp%i;
       if (r==0) 
        {
		  pp++;
		  break;
        }
      }//for
  }
 return pp;
}
