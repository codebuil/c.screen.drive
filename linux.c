#include <stdio.h>
#include <string.h>
int xxx=0;
int yyy=0;
int zzz=0;
char scr2[80*26*2];

void scrollb8000()
{
	int n=0;
	int nn=0;
	
	char *src = scr2;//(char *)0x000b8000L;
	 
	for(n=0;n<80*24*2;n++)src[n]=src[n+160];
}
void copyb8000(int address,char *s)
{
	int n=0;
	int nn=0;
	
	char *src = scr2;//(char *)0x000b8000L;
	 
	while(s[n]!=0){
		src[address+nn]=s[n];
		nn++;
		nn++;
		n++;
	}
}
void locate(int x,int y){

	xxx=x;
	yyy=y;
	if(x>79)x=79;
	if(y>24)y=24;
	zzz=y*80*2+x*2;
}
void print(char* s){
	copyb8000(zzz,s);
	xxx=0;
	yyy++;
	if (yyy>24){
		yyy=24;
		scrollb8000();
	}
	locate(xxx,yyy);
}
void teste(){
	int n=0;
	int nn=0;

for(n=0;n<80*26*2;n=n+2){
		if(scr2[n]<32){
printf(" ");
		}
		else{		
			printf("%c",scr2[n]);
		}
nn=n/160;
if(n==nn*160 && n!=0)printf("\r\n");
	}
}

int main()
{
	char *src =scr2; //(char *)0x000b8000L;
	printf("\033c\033[44;37m");
	int x=0;
	int y=0;
	int n=0;
	char *hello[10];
	hello[0]="x86";
	hello[1]="8086";
	hello[2]="80186";
	hello[3]="80286";
	hello[4]="80386";
	hello[5]="80486";
	hello[6]="ARM";
	hello[7]="ARM7";
	locate(0,0);
	
	for(n=0;n<8;n++){
		locate(n+1,n+1);
		print(hello[n]);
		
}

	teste();
	
}