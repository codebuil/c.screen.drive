#include <stdio.h>
#include <string.h>
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
void teste(){
	int n=0;
	for(n=0;n<80*26*2;n++){
		if(scr2[n]<32){
printf(" ");
		}
		else{		
			printf("%c",scr2[n]);
		}
	}
}
int main()
{
	char *src =scr2; //(char *)0x000b8000L;
	int x=0;
	int y=0;
	int n=0;
	char hello[]="hello world\n";
	copyb8000(y*80*2+x,hello);
	for(n=1;n<23;n++)copyb8000(n*80*2+n,"++++++");
scrollb8000();
	teste();
	
}